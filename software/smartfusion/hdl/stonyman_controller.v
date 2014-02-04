////////////////////////////////////////////////////////////////////////////////
// Company: University of Michigan
//
// File: stonyman_controller.v
//
// Description: 
//      Controller for the CentEye Stonyman imager.
//      Note: the on-chip amplifier is slow and this code does not use it
//
// Targeted device: <Family::SmartFusion> <Die::A2F500M3G> <Package::484 FBGA>
// Author: Branden Ghena
//
////////////////////////////////////////////////////////////////////////////////

// Stonyman definitions
`define COLSEL_PTR 0
`define ROWSEL_PTR 1
`define VSW_PTR    2
`define HSW_PTR    3
`define VREF_PTR   4
`define CONFIG_PTR 5
`define NBIAS_PTR  6
`define AOBIAS_PTR 7
`define ROW_RESOLUTION 112
`define COL_RESOLUTION 112

// State definitions
`define INIT_RESET  0
`define INIT_PTR    1
`define INIT_COL    2
`define INIT_ROW    3
`define INIT_VSW    4
`define INIT_HSW    5
`define INIT_VREF   6
`define INIT_NBIAS  7
`define INIT_AOBIAS 8
`define INIT_CONFIG 9
`define IDLE        10
`define CAPTURE     11
`define STATE_BITS 4

`define START 0
`define WAIT  1
`define PIN_STATE_BITS 1

`define SET_PTR   0
`define RESET_VAL 1
`define SET_VAL   2

`define SET_ROW_PTR 0
`define SET_ROW_VAL 1
`define SET_COL_PTR 2
`define SET_COL_VAL 3
`define WAIT_ADC    4

// Timing definitions
//TODO: define me based on clock and nanoseconds...
//`define COUNTS_PIN_HIGH 100
`define TIMER_BITS 8


module stonyman (
    input wire clk,
    input wire reset,
    
    // Control signals
    input wire frame_capture_start,
    input wire adc_capture_done,

    // Timing
    input wire [7:0] pulse_counts,

    // Register settings
    //  settings are configured by the user through a kernel ioctl, but are
    //  only read on reset
    input wire [7:0] vsw_value,
    input wire [7:0] hsw_value,
    input wire [5:0] vref_value,
    input wire [5:0] config_value,
    input wire [5:0] nbias_value,
    input wire [5:0] aobias_value,

    // Frame mask input
    input wire mask_capture_pixel,

    // Status signals
    output reg controller_busy,
    output reg frame_capture_done,
    output reg adc_capture_start,
    
    // Digital control lines
    output reg resp,
    output reg incp,
    output reg resv,
    output reg incv,
    output reg inphi,

    // Frame mask address
    output reg [6:0] mask_pixel_row,
    output reg [6:0] mask_pixel_col
    );

    // State registers
    reg [`STATE_BITS-1:0] main_state;
    reg [`STATE_BITS-1:0] main_state_nxt;
    reg [`STATE_BITS-1:0] sub_state;
    reg [`STATE_BITS-1:0] sub_state_nxt;
    reg [`PIN_STATE_BITS-1:0] pulse_pin_state;
    reg [`PIN_STATE_BITS-1:0] pulse_pin_state_nxt;

    //TODO: If this stays unused, remove it
    reg [`TIMER_BITS-1:0] timer;
    reg [`TIMER_BITS-1:0] timer_nxt;

    // Frame mask signals
    reg [6:0] mask_pixel_row_nxt;
    reg [6:0] mask_pixel_col_nxt;

    // Stonyman model
    reg [2:0] ptr_value;
    reg [2:0] ptr_value_nxt;
    reg [7:0] reg_value [7:0];
    reg [7:0] reg_value_nxt [7:0];

    // Register thine outputs
    reg frame_capture_done_nxt;
    reg adc_capture_start_nxt;
    reg resp_nxt;
    reg incp_nxt;
    reg resv_nxt;
    reg incv_nxt;
    reg inphi_nxt;
    
    // Signal Error task
    task SIGNAL_ERROR;
    begin
        // Set output signals so that the error can be probed and narowed down
        resp_nxt  = main_state[0];
        incp_nxt  = main_state[1];
        resv_nxt  = main_state[2];
        incv_nxt  = sub_state[0];
        inphi_nxt = sub_state[1];
    end
    endtask

    // Pulse Pin task
    task PULSE_PIN;
        input  [`STATE_BITS-1:0] cur_state;
        input  [`STATE_BITS-1:0] new_state;
        output [`STATE_BITS-1:0] state_nxt;
        output pin;
    begin
        case (pulse_pin_state)
            `START: begin
                // Begin pulse
                pin = 1;
                //timer_nxt = `COUNTS_PIN_HIGH;
                timer_nxt = pulse_counts;
                pulse_pin_state_nxt = `WAIT;
                state_nxt = cur_state;
            end
            `WAIT: begin
                timer_nxt = timer-1;
                if (timer == 0) begin
                    // Pulse complete
                    pin = 0;
                    pulse_pin_state_nxt = `START;
                    state_nxt = new_state;
                end else begin
                    // Hold signal high
                    pin = 1;
                    pulse_pin_state_nxt = `WAIT;
                    state_nxt = cur_state;
                end
            end
            default: begin
                // Something has gone wrong
                SIGNAL_ERROR();
            end
        endcase
    end
    endtask

    // Reset Pointer task
    task RESET_PTR;
        input  [`STATE_BITS-1:0] cur_state;
        input  [`STATE_BITS-1:0] new_state;
        output [`STATE_BITS-1:0] state_nxt;
    begin
        PULSE_PIN(cur_state, new_state, state_nxt, resp_nxt);
        if (state_nxt != cur_state) begin
            ptr_value_nxt = 0;
        end
    end
    endtask

    // Reset Value task
    task RESET_VAL;
        input  [`STATE_BITS-1:0] cur_state;
        input  [`STATE_BITS-1:0] new_state;
        output [`STATE_BITS-1:0] state_nxt;
    begin
        PULSE_PIN(cur_state, new_state, state_nxt, resv_nxt);
        if (state_nxt != cur_state) begin
            reg_value_nxt[ptr_value] = 0;
        end
    end
    endtask

    // Increment Pointer task
    task INCR_PTR;
        input  [`STATE_BITS-1:0] cur_state;
        input  [`STATE_BITS-1:0] new_state;
        output [`STATE_BITS-1:0] state_nxt;
    begin
        PULSE_PIN(cur_state, new_state, state_nxt, incp_nxt);
        if (state_nxt != cur_state) begin
            ptr_value_nxt = ptr_value+1;
        end
    end
    endtask

    // Increment Value task
    task INCR_VAL;
        input  [`STATE_BITS-1:0] cur_state;
        input  [`STATE_BITS-1:0] new_state;
        output [`STATE_BITS-1:0] state_nxt;
    begin
        PULSE_PIN(cur_state, new_state, state_nxt, incv_nxt);
        if (state_nxt != cur_state) begin
            reg_value_nxt[ptr_value] = reg_value[ptr_value]+1;
        end
    end
    endtask
    
    // Set Pointer task
    task SET_PTR;
        input  [2:0] new_ptr_val;
        input  [`STATE_BITS-1:0] cur_state;
        input  [`STATE_BITS-1:0] new_state;
        output [`STATE_BITS-1:0] state_nxt;
    begin
        if (ptr_value < new_ptr_val) begin
            // Increment the ptr
            INCR_PTR(cur_state, new_state, state_nxt);
        end else if (ptr_value > new_ptr_val) begin
            // Ptr needs to be reset, this will automatically transition us to
            //  incrementing the ptr
            RESET_PTR(cur_state, new_state, state_nxt);
        end else begin
            // They are already equal!
            ptr_value_nxt = ptr_value;
            state_nxt = new_state;
        end

        // Don't exit SET_PTR until we reach the desired value
        if (ptr_value_nxt != new_ptr_val) begin
            state_nxt = cur_state;
        end
    end
    endtask

    // Set Value task
    task SET_VAL;
        input  [7:0] new_reg_val;
        input  [`STATE_BITS-1:0] cur_state;
        input  [`STATE_BITS-1:0] new_state;
        output [`STATE_BITS-1:0] state_nxt;
    begin
        if (reg_value[ptr_value] < new_reg_val) begin
            // Increment the val
            INCR_VAL(cur_state, new_state, state_nxt);
        end else if (reg_value[ptr_value] > new_reg_val) begin
            // Val needs to be reset, this will automatically transition us to
            //  incrementing the val
            RESET_VAL(cur_state, new_state, state_nxt);
        end else begin
            // They are already equal!
            reg_value_nxt[ptr_value] = reg_value[ptr_value];
            state_nxt = new_state;
        end

        // Don't exit SET_VAL until we reach the desired value
        if (reg_value_nxt[ptr_value] != new_reg_val) begin
            state_nxt = cur_state;
        end
    end
    endtask

    // Next Pixel task
    task NEXT_PIXEL;
    begin
        if (reg_value_nxt[`COLSEL_PTR] < (`COL_RESOLUTION-1)) begin
            // Continue iterating across the row
            mask_pixel_col_nxt = mask_pixel_col+1;
            sub_state_nxt = `SET_COL_VAL;
        end else begin
            if (reg_value_nxt[`ROWSEL_PTR] < (`ROW_RESOLUTION-1)) begin
                // Move to next row
                mask_pixel_col_nxt = 0;
                mask_pixel_row_nxt = mask_pixel_row+1;
                sub_state_nxt = `SET_ROW_PTR;
            end else begin
                // Finished!
                mask_pixel_col_nxt = 0;
                mask_pixel_row_nxt = 0;
                main_state_nxt = `IDLE;
                frame_capture_done_nxt = 1;
            end
        end
    end
    endtask

    always @(*) begin
        main_state_nxt = main_state;
        sub_state_nxt  = sub_state;
        pulse_pin_state_nxt = pulse_pin_state;

        timer_nxt = timer;

        mask_pixel_row_nxt = mask_pixel_row;
        mask_pixel_col_nxt = mask_pixel_col;

        ptr_value_nxt = ptr_value;
        reg_value_nxt[0] = reg_value[0];
        reg_value_nxt[1] = reg_value[1];
        reg_value_nxt[2] = reg_value[2];
        reg_value_nxt[3] = reg_value[3];
        reg_value_nxt[4] = reg_value[4];
        reg_value_nxt[5] = reg_value[5];
        reg_value_nxt[6] = reg_value[6];
        reg_value_nxt[7] = reg_value[7];

        frame_capture_done_nxt = 0;
        adc_capture_start_nxt  = 0;
        resp_nxt  = 0;
        incp_nxt  = 0;
        resv_nxt  = 0;
        incv_nxt  = 0;
        inphi_nxt = 0;

        controller_busy = (main_state != `IDLE);
    
        case (main_state)
            `INIT_RESET: begin
                // Do nothing until we are out of reset
                main_state_nxt = `INIT_PTR;
            end
            `INIT_PTR: begin
                RESET_PTR(`INIT_PTR, `INIT_COL, main_state_nxt);
            end
            `INIT_COL: begin
                case (sub_state)
                    `SET_PTR:   SET_PTR(`COLSEL_PTR, `SET_PTR, `RESET_VAL, sub_state_nxt);
                    `RESET_VAL: RESET_VAL(`INIT_COL, `INIT_ROW, main_state_nxt);
                endcase
            end
            `INIT_ROW: begin
                case (sub_state)
                    `SET_PTR:   SET_PTR(`ROWSEL_PTR, `SET_PTR, `RESET_VAL, sub_state_nxt);
                    `RESET_VAL: RESET_VAL(`INIT_ROW, `INIT_VSW, main_state_nxt);
                endcase
            end
            `INIT_VSW: begin
                case (sub_state)
                    `SET_PTR:   SET_PTR(`VSW_PTR, `SET_PTR, `RESET_VAL, sub_state_nxt);
                    `RESET_VAL: RESET_VAL(`RESET_VAL, `SET_VAL, sub_state_nxt);
                    `SET_VAL:   SET_VAL(vsw_value, `INIT_VSW, `INIT_HSW, main_state_nxt);
                endcase
            end
            `INIT_HSW: begin
                case (sub_state)
                    `SET_PTR:   SET_PTR(`HSW_PTR, `SET_PTR, `RESET_VAL, sub_state_nxt);
                    `RESET_VAL: RESET_VAL(`RESET_VAL, `SET_VAL, sub_state_nxt);
                    `SET_VAL:   SET_VAL(hsw_value, `INIT_HSW, `INIT_VREF, main_state_nxt);
                endcase
            end
            `INIT_VREF: begin
                case (sub_state)
                    `SET_PTR:   SET_PTR(`VREF_PTR, `SET_PTR, `RESET_VAL, sub_state_nxt);
                    `RESET_VAL: RESET_VAL(`RESET_VAL, `SET_VAL, sub_state_nxt);
                    `SET_VAL:   SET_VAL(vref_value, `INIT_VREF, `INIT_NBIAS, main_state_nxt);
                endcase
            end
            `INIT_NBIAS: begin
                case (sub_state)
                    `SET_PTR:   SET_PTR(`NBIAS_PTR, `SET_PTR, `RESET_VAL, sub_state_nxt);
                    `RESET_VAL: RESET_VAL(`RESET_VAL, `SET_VAL, sub_state_nxt);
                    `SET_VAL:   SET_VAL(nbias_value, `INIT_NBIAS, `INIT_AOBIAS, main_state_nxt);
                endcase
            end
            `INIT_AOBIAS: begin
                case (sub_state)
                    `SET_PTR:   SET_PTR(`AOBIAS_PTR, `SET_PTR, `RESET_VAL, sub_state_nxt);
                    `RESET_VAL: RESET_VAL(`RESET_VAL, `SET_VAL, sub_state_nxt);
                    `SET_VAL:   SET_VAL(aobias_value, `INIT_AOBIAS, `INIT_CONFIG, main_state_nxt);
                endcase
            end
            `INIT_CONFIG: begin
                case (sub_state)
                    `SET_PTR:   SET_PTR(`CONFIG_PTR, `SET_PTR, `RESET_VAL, sub_state_nxt);
                    `RESET_VAL: RESET_VAL(`RESET_VAL, `SET_VAL, sub_state_nxt);
                    `SET_VAL:   SET_VAL(config_value, `INIT_CONFIG, `IDLE, main_state_nxt);
                endcase
            end
            `IDLE: begin
                if (frame_capture_start) begin
                    mask_pixel_col_nxt = 0;
                    mask_pixel_row_nxt = 0;
                    main_state_nxt = `CAPTURE;
                end else begin
                    frame_capture_done_nxt = 0;
                    main_state_nxt = `IDLE;
                end
            end
            `CAPTURE: begin
                case (sub_state)
                    `SET_ROW_PTR: SET_PTR(`ROWSEL_PTR, `SET_ROW_PTR, `SET_ROW_VAL, sub_state_nxt);
                    `SET_ROW_VAL: SET_VAL(mask_pixel_row, `SET_ROW_VAL, `SET_COL_PTR, sub_state_nxt);
                    `SET_COL_PTR: SET_PTR(`COLSEL_PTR, `SET_COL_PTR, `SET_COL_VAL, sub_state_nxt);
                    `SET_COL_VAL: begin
                        SET_VAL(mask_pixel_col, `SET_COL_VAL, `WAIT_ADC, sub_state_nxt);
                        if (sub_state_nxt == `WAIT_ADC) begin
                            if (mask_capture_pixel) begin
                                // Signal ADC to being capture
                                adc_capture_start_nxt = 1;
                            end else begin
                                // This pixel doesn't need to be captured,
                                //  move on
                                NEXT_PIXEL();
                            end
                        end
                    end
                    `WAIT_ADC: begin
                        // Wait until the ADC has captured the data
                        //  If the FIFO is full, the ADC will stall and so
                        //      will we
                        adc_capture_start_nxt = 0;
                        if (adc_capture_done) begin
                            // Completed ADC capture, go to next pixel
                            NEXT_PIXEL();
                        end
                    end
                    default: begin
                        // Something has gone wrong
                        SIGNAL_ERROR();
                    end
                endcase
            end
            default: begin
                // Something has gone wrong
                SIGNAL_ERROR();
            end
        endcase

        // Since tasks just move us from state to state, substate needs to be
        //  reset automatically
        if (main_state != main_state_nxt) begin
            sub_state_nxt = 0;
        end
    end
    
    always @(posedge clk) begin
        if (reset) begin
            // Initialize states
            main_state      <= `INIT_RESET;
            sub_state       <= 0;
            pulse_pin_state <= `START;

            timer <= 0;
        
            frame_capture_done <= 0;
            adc_capture_start  <= 0;
            resp  <= 0;
            incp  <= 0;
            resv  <= 0;
            incv  <= 0;
            inphi <= 0;

            mask_pixel_row <= 0;
            mask_pixel_col <= 0;

            ptr_value <= 0;
            reg_value[0] <= 0;
            reg_value[1] <= 0;
            reg_value[2] <= 0;
            reg_value[3] <= 0;
            reg_value[4] <= 0;
            reg_value[5] <= 0;
            reg_value[6] <= 0;
            reg_value[7] <= 0;
        end else begin
            // Update states
            main_state      <= main_state_nxt;
            sub_state       <= sub_state_nxt;
            pulse_pin_state <= pulse_pin_state_nxt;
            
            timer <= timer_nxt;

            frame_capture_done <= frame_capture_done_nxt;
            adc_capture_start  <= adc_capture_start_nxt;
            resp  <= resp_nxt;
            incp  <= incp_nxt;
            resv  <= resv_nxt;
            incv  <= incv_nxt;
            inphi <= inphi_nxt;
            
            mask_pixel_row <= mask_pixel_row_nxt;
            mask_pixel_col <= mask_pixel_col_nxt;

            ptr_value <= ptr_value_nxt;
            reg_value[0] <= reg_value_nxt[0];
            reg_value[1] <= reg_value_nxt[1];
            reg_value[2] <= reg_value_nxt[2];
            reg_value[3] <= reg_value_nxt[3];
            reg_value[4] <= reg_value_nxt[4];
            reg_value[5] <= reg_value_nxt[5];
            reg_value[6] <= reg_value_nxt[6];
            reg_value[7] <= reg_value_nxt[7];
        end
    end

endmodule

