///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: University of Michigan
//
// File: adc_controller.v
//
// Description:
//  Controller for the TI ADCXX1S101 reading stonyman pixel data
//
// Targeted device: <Family::SmartFusion> <Die::A2F500M3G> <Package::484 FBGA>
// Author: Branden Ghena
//
///////////////////////////////////////////////////////////////////////////////////////////////////

// States
`define IDLE      0
`define TRACK     1
`define ZEROS     2
`define READ_BITS 3
`define WAIT_FIFO 4
`define STATE_BITS 3

// Timers
// Note that these are running at 40 MHz, while the adc is running at 20 MHz
//`define TRACK_COUNTS (14)
`define ZEROS_COUNTS (6)
// Number of bits to be read, not number of cycles
`define READ_BITS_COUNTS (12)
`define TIMER_BITS 8

// Bit offset
// Number of bits to offset the reading by. This is important because we read a
//  12 bit value and then only use 8 bits of it. The 8 MSbs of valid data should
//  be what we are using
// Probably don't need to modify unless you aren't running at 5v
`define BIT_OFFSET 1

module adc_controller (
    input wire clk,
    input wire reset,

    // Control signals
    input wire adc_capture_start,
    input wire fifo_full,

    // Timing signal
    input wire [7:0] track_counts,

    // Pixel offset signal
    input wire [11:0] val_offset,

    // ADC Data
    input wire sdata,

    // Status signal
    output reg adc_capture_done,
    output reg fifo_write_enable,
    output reg [7:0] fifo_write_data,

    // ADC Control
    output reg sclk,
    output reg cs_n
    );

    reg [`STATE_BITS-1:0] adc_state;
    reg [`STATE_BITS-1:0] adc_state_nxt;

    reg [`TIMER_BITS-1:0] timer;
    reg [`TIMER_BITS-1:0] timer_nxt;

    reg capture_requested;
    reg capture_requested_nxt;
    reg [11:0] adc_data;
    reg [11:0] adc_data_nxt;
	reg [11:0] tmp_data;

    // Register thine outputs
    reg fifo_write_enable_nxt;
    reg adc_capture_done_nxt;
    reg sclk_nxt;
    reg cs_n_nxt;

    task FIFO;
    begin
        if (~fifo_full) begin
            fifo_write_enable_nxt = 1;
            sclk_nxt = 1;
            cs_n_nxt = 1;

            if (capture_requested || adc_capture_start) begin
                // Skip the idle state if there is a new request already
                adc_state_nxt = `TRACK;
                timer_nxt = 0;
                capture_requested_nxt = 0; // Reset request
            end else begin
                adc_state_nxt = `IDLE;
            end
        end else begin
            // Wait until the FIFO is ready before giving it data
            adc_state_nxt = `WAIT_FIFO;
        end
    end
    endtask

    always @(*) begin
        adc_state_nxt = adc_state;

        // Remove the voltage offset from the data, and limit to 8 bits
        //if (tmp_data < val_offset) begin
        //    tmp_data = 12'h000;
        //end else if (tmp_data > (val_offset+512)) begin
        //    tmp_data = 12'hFFF;
        //end else begin
        //    tmp_data = adc_data - val_offset;
        //end

        tmp_data = (adc_data - val_offset);
        fifo_write_data = ~(tmp_data[7+`BIT_OFFSET:0+`BIT_OFFSET]);

        //tmp_data = adc_data - 485;
        //fifo_write_data = ~(tmp_data[8:1]);

        adc_capture_done_nxt = 0;
        cs_n_nxt = 1;
        sclk_nxt = 1;

        timer_nxt = timer;

        capture_requested_nxt = capture_requested;
        adc_data_nxt = adc_data;
        fifo_write_enable_nxt = 0;

        if (adc_capture_start) begin
            capture_requested_nxt = 1;
        end

        case (adc_state)
            `IDLE: begin
                if (adc_capture_start || capture_requested) begin
                    adc_state_nxt = `TRACK;
                    timer_nxt = 0;
                    capture_requested_nxt = 0; // Reset request
                end else begin
                    adc_state_nxt = `IDLE;
                end
            end
            `TRACK: begin
                // Track state allows us to sample the signal without
                //  crosstalk from the SCLK line
                timer_nxt = timer+1;
                //if (timer >= (`TRACK_COUNTS-1)) begin
                if (timer >= (track_counts-1)) begin
                    adc_state_nxt = `ZEROS;
                    timer_nxt = 0;
                    cs_n_nxt = 0;
                    sclk_nxt = 0; // Need to start the clock off with a
                                     //     falling edge
                    adc_capture_done_nxt = 1; // Allow stonyman controller to access
                                          //    the next pixel
                end else begin
                    adc_state_nxt = `TRACK;
                end
            end
            `ZEROS: begin
                cs_n_nxt = 0;
                sclk_nxt = ~sclk;
                timer_nxt = timer+1;
                if (timer >= (`ZEROS_COUNTS-1)) begin
                    adc_state_nxt = `READ_BITS;
                    timer_nxt = 0;
                end else begin
                    adc_state_nxt = `ZEROS;
                end
            end
            `READ_BITS: begin
                cs_n_nxt = 0;
                sclk_nxt = ~sclk;

                if (sclk == 1) begin
                    timer_nxt = timer+1;
                    adc_data_nxt[(11-timer)] = sdata;

                    if (timer >= (`READ_BITS_COUNTS-1)) begin
                        // Try to hand data off to FIFO
                        FIFO();
                    end else begin
                        adc_state_nxt = `READ_BITS;
                    end
                end else begin
                    timer_nxt = timer; // don't increment
                    adc_state_nxt = `READ_BITS;
                end
            end
            `WAIT_FIFO: begin
                // Note: time spent waiting for the FIFO could be taken out of
                //  track time for an immediately requested capture. This
                //  seems to be an unusual case though as the FIFO shouldn't
                //  be filling up...

                FIFO();
            end
        endcase
    end

    always @(posedge clk) begin
        if (reset) begin
            adc_state <= `IDLE;

            timer <= 0;

            capture_requested <= 0;
            adc_data <= 12'b0;

            fifo_write_enable <= 0;
            adc_capture_done <= 0;
            sclk <= 1;
            cs_n <= 1;

        end else begin
            adc_state <= adc_state_nxt;

            capture_requested <= capture_requested_nxt;

            timer <= timer_nxt;
            adc_data <= adc_data_nxt;

            fifo_write_enable <= fifo_write_enable_nxt;
            adc_capture_done <= adc_capture_done_nxt;
            sclk <= sclk_nxt;
            cs_n <= cs_n_nxt;
        end
    end

endmodule

