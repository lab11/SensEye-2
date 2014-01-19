///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: University of Michigan
//
// File: adc_controller.v
//
// Description: 
//  Controller for the TI ADCXX1S101 reading stonyman pixel data
//
// Targeted device: <Family::SmartFusion> <Die::A2F500M3G> <Package::484 FBGA>
// Author: Branen Ghena
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
`define TRACK_COUNTS (14)
`define ZEROS_COUNTS (6)
// Number of bits to be read, not number of cycles
`define READ_BITS_COUNTS (12)
`define TIMER_BITS 4

module adc_controller (
    input wire clk,
    input wire reset,

    // Control signal
    input wire adc_capture_start,
    input wire fifo_full,
 
    // ADC Data
    input wire sdata,

    // Status signal
    output reg adc_capture_done,
    output reg write_enable,
    output reg [7:0] pixel_data,

    // ADC Control
    output reg sclk,
    output reg cs_n
    );

    reg [`STATE_BITS-1:0] adc_state;
    reg [`STATE_BITS-1:0] adc_state_nxt;

    reg [`TIMER_BITS-1:0] timer;
    reg [`TIMER_BITS-1:0] timer_nxt;

    reg adc_clk;
    reg adc_clk_nxt;
    reg capture_requested;
    reg capture_requested_nxt;
    reg [11:0] adc_data;
    reg [11:0] adc_data_nxt;

    reg write_enable_nxt;

    task FIFO;
    begin
        if (~fifo_full) begin
            write_enable_nxt = 1;

            if (capture_requested) begin
                // Skip the idle state if there is a new request already
                adc_state_nxt = `TRACK;
                timer_nxt = `TRACK_COUNTS-1;
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

    // TRACK Time, 350 ns
    //  want to perform sample with CS high and SCLK off
    // HOLD Time, ?16 SCLK cycles?
    //  grab all the data here, then send CS high and SCLK off
    //  signal capture_done at the start of hold (allows pixel iteration to
    //      overlab with sampling time)

    always @(*) begin
        adc_state_nxt = adc_state;

        adc_capture_done = 0;
        pixel_data = adc_data[7:0];
        cs_n = 1;
        sclk = 1;

        capture_requested_nxt = capture_requested;
        adc_data_nxt = adc_data;
        adc_clk_nxt = ~adc_clk;
        write_enable_nxt = 0;

        if (adc_capture_start) begin
            capture_requested_nxt = 1;
        end

        case (adc_state) 
            `IDLE: begin
                if (adc_capture_start) begin
                    adc_state_nxt = `TRACK;
                    timer_nxt = `TRACK_COUNTS-1;
                    capture_requested_nxt = 0; // Reset request
                end else begin
                    adc_state_nxt = `IDLE;
                end
            end
            `TRACK: begin
                // Track state allows us to sample the signal without
                //  crosstalk from the SCLK line
                timer_nxt = timer-1;
                if (timer == 0) begin
                    adc_state_nxt = `ZEROS;
                    timer_nxt = `ZEROS_COUNTS-1;
                    adc_clk_nxt = 0; // Need to start the clock off with a
                                     //     falling edge
                    adc_capture_done = 1; // Allow stonyman controller to access
                                          //    the next pixel
                end else begin
                    adc_state_nxt = `TRACK;
                end
            end
            `ZEROS: begin
                cs_n = 0;
                sclk = adc_clk;
                timer_nxt = timer-1;
                if (timer == 0) begin
                    adc_state_nxt = `READ_BITS;
                    timer_nxt = `READ_BITS_COUNTS-1;
                end else begin
                    adc_state_nxt = `ZEROS;
                end
            end
            `READ_BITS: begin
                cs_n = 0;
                sclk = adc_clk;

                if (adc_clk == 1) begin
                    timer_nxt = timer-1;
                    adc_data_nxt[timer] = sdata;
                    
                    if (timer == 0) begin
                        // Try to hand data off to FIFO
                        FIFO();
                    end else begin
                        adc_state_nxt = `READ_BITS;
                    end
                end else begin
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

            adc_clk <= 1;
            capture_requested <= 0;
            adc_data <= 12'b0;

            write_enable <= 0;

        end else begin
            adc_state <= adc_state_nxt;
            
            adc_clk <= adc_clk_nxt;
            capture_requested <= capture_requested_nxt;

            timer <= timer_nxt;
            adc_data <= adc_data_nxt;

            write_enable <= write_enable_nxt;
        end
    end

endmodule


/*
`define CLK_FREQ             (20000000)  // 20MHz -> 1Msps operation
// alter this to choose the ADC resolution
`define ADC_RES              (8)         // bits

// The entire TI ADCXXS101 family requires 16 cycles to perform a conversion,
// plus 4 cycles of "quiet time" before a new conversion can be initiated.
// The maximum clock speed is 20MHz, at which the ADC achieves its maximum
// rate of 1Msps.
`define CONVERSION_CYCLES    (16)
`define HOLD_TIME_CYCLES     (3)
`define QUIET_TIME_CYCLES    (4)

// FIXME: currently using last 8 bits of 12-bit ADC, so this code is wonky
`define TICKS_WAIT_LEADING   (7) // FIXME: currently ignoring first 4 bits of 12-bit ADC
                                 // to emulate an 8-bit ADC
//`define TICKS_WAIT_LEADING   (`HOLD_TIME_CYCLES)
`define TICKS_WAIT_TRAILING  (`CONVERSION_CYCLES-`TICKS_WAIT_LEADING-`ADC_RES)
`define TICKS_WAIT_QUIET     (`QUIET_TIME_CYCLES)


module adcxx1s101( clk, reset, startCapture, miso, cs, dataout, conversionComplete );

input clk;
input reset;
input startCapture;                   // active low
input miso;
output reg cs;
output reg [(`ADC_RES-1):0] dataout;
output reg conversionComplete;        // active low

reg [2:0] cntrWaitLeading;
reg [2:0] cntrWaitTrailing;
reg [2:0] cntrWaitQuiet;
reg [3:0] bitsRead;


always@ (posedge clk or negedge reset)
begin
   if(0 == reset)
   begin
      cs <= 1;
      cntrWaitQuiet <= 7; // just a guess
      conversionComplete <= 1;
      bitsRead <= 0;
   end
   else
   begin
      // state: idle
      if((1 == cs) && (0 == cntrWaitQuiet))
      begin
         // start conversion
         if(0 == startCapture)
         begin
            cs <= 0;
            cntrWaitLeading <= `TICKS_WAIT_LEADING;
            cntrWaitTrailing <= `TICKS_WAIT_TRAILING;
            cntrWaitQuiet <= `TICKS_WAIT_QUIET;
            conversionComplete <= 1;
            bitsRead <= 0;
         end
      end

      // state: waiting (leading)
      if((0 == cs) && (0 < cntrWaitLeading))
      begin
         cntrWaitLeading <= cntrWaitLeading - 1;
      end

      // state: reading data
      if((0 == cs) && (0 == cntrWaitLeading) && (`ADC_RES > bitsRead))
      begin
         // shift in data
         dataout <= {dataout[(`ADC_RES-1):0],~miso};
         bitsRead <= bitsRead + 1;
      end

      // conversion is complete after the data is clocked out of the ADC
      // (but the line won't be released until CS rises, preventing another
      // conversion from starting)
      if((`ADC_RES == bitsRead) && (0 == startCapture))
      begin
         conversionComplete <= 0;
      end

      // state: waiting (trailing)
      if((0 == cs) && (`ADC_RES == bitsRead) && (0 < cntrWaitTrailing))
      begin
         cntrWaitTrailing <= cntrWaitTrailing - 1;
      end

      // state: trailing wait finished
      if((0 == cs) && (`ADC_RES == bitsRead) && (0 == cntrWaitTrailing))
      begin
         cs <= 1;
         bitsRead <= 0;
      end

      // need to raise the conversion complete when the start capture line rises
      // (like an ACK)
      if( (1 == cs) && (0 == conversionComplete) && (1 == startCapture) )
      begin
         conversionComplete <= 1;
      end

      // state: quiet time
      // (counting while the conversion acknowledgement stuff goes on
      // simultaneously)
      if((1 == cs) && (0 < cntrWaitQuiet))
      begin
         cntrWaitQuiet <= cntrWaitQuiet - 1;
      end
   end
end

endmodule

*/
