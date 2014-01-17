///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: University of Michigan
//
// File: stonyman_2.v
// File history:
//      0.01: 2014-01-15: created
//
// Description: 
//      Controller for the CentEye Stonyman imager.
//
// Targeted device: <Family::SmartFusion> <Die::A2F500M3G> <Package::484 FBGA>
// Author: Branden Ghena
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

// State definitions
`define INIT_RESET  0
`define INIT_COL    1
`define INIT_ROW    2
`define INIT_VSW    3
`define INIT_HSW    4
`define INIT_VREF   5
`define INIT_NBIAS  6
`define INIT_AOBIAS 7
`define INIT_CONFIG 8
`define IDLE        9
`define CAPTURE     10
`define STATE_BITS $clog2(`CAPTURE)

`define START 0
`define WAIT  1
`define PIN_STATE_BITS 1



// Timing definitions
//TODO: define me based on clock...
`define COUNTS_PIN_HIGH 1
//XXX: This probably won't work...
`define TIMER_BITS $clog2(`COUNTS_PIN_HIGH)

//

module stonyman (
    input wire clk,
    input wire reset,
    
    // Control signals
    input wire frame_capture_start,
    input wire adc_capture_done,

    // Register settings
    //  settings are configured by the user through a kernel ioctl, but are
    //  only read on reset
    input wire [7:0] vsw_value,
    input wire [7:0] hsw_value,
    input wire [5:0] vref_value,
    input wire [5:0] config_value,
    input wire [5:0] nbias_value,
    input wire [5:0] aobias_value,

    // Digital control lines
    output reg resp,
    output reg incp,
    output reg resv,
    output reg incv,
    output reg inphi,
    
    // Status signals
    output reg frame_capture_done,
    output reg adc_capture_start
    );

    // State registers
    reg [`STATE_BITS-1:0] main_state;
    reg [`STATE_BITS-1:0] main_state_nxt;
    reg [`STATE_BITS-1:0] sub_state;
    reg [`STATE_BITS-1:0] sub_state_nxt;
    reg [`PIN_STATE_BITS-1:0] reset_ptr_state;
    reg [`PIN_STATE_BITS-1:0] reset_ptr_state_nxt;
    reg [`PIN_STATE_BITS-1:0] incr_ptr_state;
    reg [`PIN_STATE_BITS-1:0] incr_ptr_state_nxt;
    reg [`PIN_STATE_BITS-1:0] reset_val_state;
    reg [`PIN_STATE_BITS-1:0] reset_val_state_nxt;
    reg [`PIN_STATE_BITS-1:0] incr_val_state;
    reg [`PIN_STATE_BITS-1:0] incr_val_state_nxt;

    reg resp_nxt;
    reg incp_nxt;
    reg resv_nxt;
    reg incv_nxt;
    reg inphi_nxt;
    reg [`TIMER_BITS-1:0] timer;
    reg [`TIMER_BITS-1:0] timer_nxt;

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

    // Reset Pointer task
    task RESET_PTR;
        input  [`STATE_BITS-1:0] cur_state;
        input  [`STATE_BITS-1:0] new_state;
        output [`STATE_BITS-1:0] state_nxt;
    begin
        case (reset_ptr_state)
            `START: begin
                // Begin pulse
                resp_nxt = 1;
                timer_nxt = `COUNTS_PIN_HIGH;
                reset_ptr_state_nxt = `WAIT;
                state_nxt = cur_state;
            end
            `WAIT: begin
                timer_nxt = timer-1;
                if (timer == 0) begin
                    // Pulse complete
                    resp_nxt = 0;
                    reset_ptr_state_nxt = `START;
                    state_nxt = new_state;
                end else begin
                    // Hold signal high
                    resp_nxt = 1;
                    reset_ptr_state_nxt = `WAIT;
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


    always @(*) begin
        case (main_state)
            `INIT_RESET: begin
                RESET_PTR(`INIT_RESET, `INIT_COL, main_state_nxt);
            end
            `INIT_COL: begin
                // Set pointer
                //RESET_VAL(INIT_ROW);
            end
            `INIT_ROW: begin
                // Set pointer
                // Reset value
            end
            `INIT_VSW: begin
                // Set pointer
                // Reset value
                // Set value
            end
            `INIT_HSW: begin
                // Set pointer
                // Reset value
                // Set value
            end
            `INIT_VREF: begin
                // Set pointer
                // Reset value
                // Set value
            end
            `INIT_NBIAS: begin
                // Set pointer
                // Reset value
                // Set value
            end
            `INIT_AOBIAS: begin
                // Set pointer
                // Reset value
                // Set value
            end
            `INIT_CONFIG: begin
                // Set pointer
                // Reset value
                // Set value
            end
            `IDLE: begin
            end
            `CAPTURE: begin
            end
        endcase

        if (main_state != main_state_nxt) begin
            sub_state_nxt = 0;
        end
    end
    
    always @(posedge clk) begin
        if (reset) begin
            // Initialize states
            main_state      <= `INIT_RESET;
            reset_ptr_state <= `START;
            incr_ptr_state  <= `START;
            reset_val_state <= `START;
            incr_val_state  <= `START;

            timer <= 0;
        end else begin
            // Update states
            main_state      <= main_state_nxt;
            reset_ptr_state <= reset_ptr_state_nxt;
            incr_ptr_state  <= incr_ptr_state_nxt;
            reset_val_state <= reset_val_state_nxt;
            incr_val_state  <= incr_val_state_nxt;

            timer <= timer_nxt;
        end
    end


endmodule





/*
`define CLK_FREQ                   (40_000_000)  // FIXME (shouldn't be) hardcoded to 20MHz
`define CLK_FREQ_ADC               (20_000_000)  // FIXME (shouldn't be) hardcoded to 20MHz
`define MS_PER_SECOND              (1000)
`define NS_PER_SECOND              (1_000_000_000)
`define RESOLUTION_ROWS            (112)
`define RESOLUTION_COLS            (112)

`define ADC_RES_IN                 (8)
`define PX_WIDTH_OUT               (8)

`define PX_SUBTRACT_VAL            (8'h000)

`define NUM_CHANNELS               4           // number of cameras which can be simultaneously controlled


// TIMING CONSTANTS
// Pulse Time:  200-300 ns has worked
`define TIME_PULSE_WAIT            (200)       // ns
`define TICKS_PULSE_WAIT           (4)         // FIXME: should be: ((`TIME_PULSE_WAIT*`CLK_FREQ_ADC)/`NS_PER_SECOND)
`define TIME_PULSE_WAIT_AFTER      (200)       // ns
`define TICKS_PULSE_WAIT_AFTER     (4)         // FIXME: should be: ((`TIME_PULSE_WAIT_AFTER*`CLK_FREQ_ADC)/`NS_PER_SECOND)
`define TIME_PULSE_INPHI           (1000)      // ns
`define TICKS_PULSE_INPHI          (20)        // FIXME: should be: ((`TIME_PULSE_INPHI*`CLK_FREQ_ADC)/`NS_PER_SECOND)
`define TIME_PULSE_INPHI_AFTER     (1000)      // ns
`define TICKS_PULSE_INPHI_AFTER    (20)        // FIXME: should be: ((`TIME_PULSE_INPHI_AFTER*`CLK_FREQ_ADC)/`NS_PER_SECOND)
// TODO: is this a reasonable value?
`define TIME_STARTCAP_WAIT_AFTER   (100)       // ns (arbitrarily chosen)
// TICKS_STARTCAP_WAIT_AFTER must be at least 2
`define TICKS_STARTCAP_WAIT_AFTER  (2)         // FIXME: should be: ((`TIME_STARTCAP_WAIT_AFTER*`CLK_FREQ_ADC)/`NS_PER_SECOND)
`define TIME_WAIT_BETWEEN_FRAMES   (50)        // ns (arbitrarily chosen)
`define TICKS_WAIT_BETWEEN_FRAMES  (1)         // FIXME: should be: ((`TIME_WAIT_BETWEEN_FRAMES*`CLK_FREQ_ADC)/`NS_PER_SECOND)
`define TIME_WAIT_STARTUP          (500)       // ms (arbitrarily chosen)
`define TICKS_WAIT_STARTUP         (10000000)  // FIXME: should be: ((`TIME_WAIT_START*`CLK_FREQ_ADC)/`MS_PER_SECOND)

`define REG_COLSEL                 (0)
`define REG_ROWSEL                 (1)
`define REG_VSW                    (2)
`define REG_HSW                    (3)
`define REG_VREF                   (4)
`define REG_CONFIG                 (5)
`define REG_NBIAS                  (6)
`define REG_AOBIAS                 (7)
`define REG_CNT                    (8)


//`define VIN_3V3
//`define VIN_5V0
`define VIN_3V3_NOAMP

//`define VAL_VREF_5V0               (30)
`define VAL_VREF_5V0               (40)
`define VAL_NBIAS_5V0              (55)
`define VAL_AOBIAS_5V0             (55)

`define VAL_VREF_3V3               (41)
`define VAL_NBIAS_3V3              (50)
`define VAL_AOBIAS_3V3             (37)

`define VAL_VREF_3V3_NOAMP         (41)
`define VAL_NBIAS_3V3_NOAMP        (50)
`define VAL_AOBIAS_3V3_NOAMP       (50)

`ifdef VIN_5V0
 `define VAL_VREF                  (`VAL_VREF_5V0)
 `define VAL_NBIAS                 (`VAL_NBIAS_5V0)
 `define VAL_AOBIAS                (`VAL_AOBIAS_5V0)
 `define VAL_USE_AMP               (0)
 `define VAL_GAIN                  (1) // this value is likely ignored when the amp is disabled
`endif // VIN_5V0
`ifdef VIN_3V3
 `define VAL_VREF                  (`VAL_VREF_3V3)
 `define VAL_NBIAS                 (`VAL_NBIAS_3V3)
 `define VAL_AOBIAS                (`VAL_AOBIAS_3V3)
 `define USE_AMP
 `define VAL_USE_AMP               (1)
 `define VAL_GAIN                  (2) // set gain here
`endif // VIN_3V3
`ifdef VIN_3V3_NOAMP
 `define VAL_VREF                  (`VAL_VREF_3V3_NOAMP)
 `define VAL_NBIAS                 (`VAL_NBIAS_3V3_NOAMP)
 `define VAL_AOBIAS                (`VAL_AOBIAS_3V3_NOAMP)
 `define VAL_USE_AMP               (0)
 `define VAL_GAIN                  (1) // this value is likely ignored when the amp is disabled
`endif

`define VAL_CVDDA                  (16) // constant comes from manual: 10b shifted right 3
`define VAL_CONFIG                 (`VAL_GAIN + (`VAL_USE_AMP<<3) + `VAL_CVDDA)

`define S_INIT_FRESH               (4'd0)
`define S_INIT_REG_CLEARALL        (4'd1)
// !! --> order of setting these config registers during init matters!
`define S_INIT_REG_SET_VREF        (4'd2)
`define S_INIT_REG_SET_NBIAS       (4'd3)
`define S_INIT_REG_SET_AOBIAS      (4'd4)
`define S_INIT_REG_SET_CONFIG      (4'd5)
`define S_IDLE                     (4'd6)
`define S_CAP_SET_ROW              (4'd7)
`define S_CAP_SET_COL              (4'd8)
`define S_CAP_PULSE_INPHI          (4'd9)
`define S_CAP_ACQUIRE_PIXEL        (4'd10)
`define S_CAP_INC_COL              (4'd11)
`define S_CAP_INC_ROW              (4'd12)

// russ: ordered this way because I'm more likely to add states than registers
`define SUB_S_RESP_RAISE           (5'd0)
`define SUB_S_INCP_RAISE           (5'd1)
`define SUB_S_RESV_RAISE           (5'd2)
`define SUB_S_INCV_RAISE           (5'd3)
`define SUB_S_INPHI_RAISE          (5'd4)
`define SUB_S_RESP_WAIT            (5'd5)
`define SUB_S_INCP_WAIT            (5'd6)
`define SUB_S_RESV_WAIT            (5'd7)
`define SUB_S_INCV_WAIT            (5'd8)
`define SUB_S_INPHI_WAIT           (5'd9)
`define SUB_S_RESP_WAIT_AFTER      (5'd10)
`define SUB_S_INCP_WAIT_AFTER      (5'd11)
`define SUB_S_RESV_WAIT_AFTER      (5'd12)
`define SUB_S_INCV_WAIT_AFTER      (5'd13)
`define SUB_S_INPHI_WAIT_AFTER     (5'd14)
`define SUB_S_STARTCAP_LOWER       (5'd15)
`define SUB_S_STARTCAP_WAIT        (5'd16)
`define SUB_S_STARTCAP_WAIT_AFTER  (5'd17)

// when we don't use the amp, we can skip the pulse INPHI step
`ifdef USE_AMP
 `define S__SPECIAL__INPHI_OR_ACQUIRE      (`S_CAP_PULSE_INPHI)
 `define SUB_S__SPECIAL__INPHI_OR_ACQUIRE  (`SUB_S_INPHI_RAISE)
 `define INPHI_OR_ACQUIRE__WAIT_VAL        (0)
`else
 `define S__SPECIAL__INPHI_OR_ACQUIRE      (`S_CAP_PULSE_INPHI)
 `define SUB_S__SPECIAL__INPHI_OR_ACQUIRE  (`SUB_S_INPHI_WAIT_AFTER)
 `define INPHI_OR_ACQUIRE__WAIT_VAL        (`TICKS_PULSE_INPHI_AFTER-1)
`endif


module stonyman
(
input wire clk,
input wire reset,
input wire startCapture,     // active low
input wire [(`ADC_RES_IN-1):0] px0_in,
input wire [(`ADC_RES_IN-1):0] px1_in,
input wire [(`ADC_RES_IN-1):0] px2_in,
input wire [(`ADC_RES_IN-1):0] px3_in,
input wire adcConvComplete,  // active low
output reg resp,
output reg incp,
output reg resv,
output reg incv,
output reg inphi,
output reg writeEnable,      // active low
output reg [(`PX_WIDTH_OUT-1):0] px0_out,
output reg [(`PX_WIDTH_OUT-1):0] px1_out,
output reg [(`PX_WIDTH_OUT-1):0] px2_out,
output reg [(`PX_WIDTH_OUT-1):0] px3_out,
output reg clkAdc,
output reg startAdcCapture,  // active low

output reg busy,

output wire [3:0] tp_stateout,
output wire [3:0] tp_substateout,

output wire tp_writePending
);

reg [31:0] counterWait;
reg [15:0] counterPixelsCaptured;

reg [2:0] cachedPOINTER;
reg [7:0] cachedValue [0:`REG_CNT];
reg [3:0] state;
reg [4:0] substate;

reg writePending;

wire [(`PX_WIDTH_OUT-1):0] px0_subtracted;
wire [(`PX_WIDTH_OUT-1):0] px1_subtracted;
wire [(`PX_WIDTH_OUT-1):0] px2_subtracted;
wire [(`PX_WIDTH_OUT-1):0] px3_subtracted;
wire [(`PX_WIDTH_OUT-1):0] px0_processed;
wire [(`PX_WIDTH_OUT-1):0] px1_processed;
wire [(`PX_WIDTH_OUT-1):0] px2_processed;
wire [(`PX_WIDTH_OUT-1):0] px3_processed;

assign px0_subtracted = px0_in - (`PX_SUBTRACT_VAL);
assign px1_subtracted = px1_in - (`PX_SUBTRACT_VAL);
assign px2_subtracted = px2_in - (`PX_SUBTRACT_VAL);
assign px3_subtracted = px3_in - (`PX_SUBTRACT_VAL);
assign px0_processed = px0_subtracted[(`PX_WIDTH_OUT-1):0];
assign px1_processed = px1_subtracted[(`PX_WIDTH_OUT-1):0];
assign px2_processed = px2_subtracted[(`PX_WIDTH_OUT-1):0];
assign px3_processed = px3_subtracted[(`PX_WIDTH_OUT-1):0];

assign tp_stateout = ~state;
assign tp_substateout = ~substate;
assign tp_writePending = writePending;


always@ (posedge clk or negedge reset)
begin
   if(0 == reset)
   begin
      clkAdc <= 0;
      writeEnable <= 1'b1;
   end
   else
   begin
      // generate ADC clk (1/2 of 40MHz -> 20MHz)
      clkAdc <= clkAdc^1;


      // writeEnable must be operated on the 40MHz clock
      if(1'b1 == writePending)
      begin
         writeEnable <= 1'b0;
      end
      if(1'b0 == writeEnable)
      begin
         writeEnable <= 1'b1;
      end
   end
end


always@ (posedge clkAdc or negedge reset)
begin
   if(0 == reset)
   begin
      busy <= 1'b1;
      state <= `S_INIT_FRESH;
      substate <= 0; // unused in fresh init state
      counterWait <= `TICKS_WAIT_STARTUP;
      cachedPOINTER <= 0;
      resp <= 1'b0;
      incp <= 1'b0;
      resv <= 1'b0;
      incv <= 1'b0;
      inphi <= 1'b0;
      startAdcCapture <= 1'b1;
      writePending <= 1'b0;
   end
   else
   begin

//////////////////////////////////////////////////////////////////////
// case  -  state
      case(state)

         `S_INIT_FRESH:
         begin
            if(0 < counterWait)
            begin
               counterWait <= counterWait-1;
            end
            else
            begin
               state <= `S_INIT_REG_CLEARALL;
               substate <= `SUB_S_RESP_RAISE;
            end
         end

         `S_INIT_REG_CLEARALL:

//////////////////////////////////////////////////////////////////////
// case  -  substate
         begin
            case(substate)
        ////////////////////////////////////////////////////////////
        // RESP - reset pointer
               `SUB_S_RESP_RAISE:
               begin
                  resp <= 1'b1;
                  counterWait <= `TICKS_PULSE_WAIT-1;
                  substate <= `SUB_S_RESP_WAIT;
               end
               `SUB_S_RESP_WAIT:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     resp <= 1'b0;
                     cachedPOINTER <= 0;
                     substate <= `SUB_S_RESP_WAIT_AFTER;
                     counterWait <= `TICKS_PULSE_WAIT_AFTER-2;
                  end
               end
               `SUB_S_RESP_WAIT_AFTER:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     substate <= `SUB_S_RESV_RAISE;
                  end
               end
        ////////////////////////////////////////////////////////////
        // RESV - reset value: loops over all registers
               `SUB_S_RESV_RAISE:
               begin
                  resv <= 1'b1;
                  counterWait <= `TICKS_PULSE_WAIT-1;
                  substate <= `SUB_S_RESV_WAIT;
               end
               `SUB_S_RESV_WAIT:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     resv <= 1'b0;
                     cachedValue[cachedPOINTER] <= 8'd0;
                     counterWait <= `TICKS_PULSE_WAIT_AFTER-2;
                     substate <= `SUB_S_RESV_WAIT_AFTER;
                  end
               end
               `SUB_S_RESV_WAIT_AFTER:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     // have we covered all of our registers?
                     if((`REG_CNT-1) == cachedPOINTER)
                     begin
                        // yes: go on to the next state
                        state <= `S_INIT_REG_SET_VREF;
                        substate <= `SUB_S_RESP_RAISE;
                     end
                     else
                     begin
                        // no: keep going
                        substate <= `SUB_S_INCP_RAISE;
                     end
                  end
               end
        ////////////////////////////////////////////////////////////
        // INCP - increment pointer: loops over all registers with RESV
               `SUB_S_INCP_RAISE:
               begin
                  incp <= 1'b1;
                  counterWait <= `TICKS_PULSE_WAIT-1;
                  substate <= `SUB_S_INCP_WAIT;
               end
               `SUB_S_INCP_WAIT:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     incp <= 1'b0;
                     cachedPOINTER <= cachedPOINTER+1;
                     counterWait <= `TICKS_PULSE_WAIT_AFTER-2;
                     substate <= `SUB_S_INCP_WAIT_AFTER;
                  end
               end
               `SUB_S_INCP_WAIT_AFTER:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     substate <= `SUB_S_RESV_RAISE;
                  end
               end
               default:
               begin
                  // badness!
               end
            endcase
         end
// endcase  -  substate
//////////////////////////////////////////////////////////////////////

         `S_INIT_REG_SET_VREF:

//////////////////////////////////////////////////////////////////////
// case  -  substate
         begin
            case(substate)
        ////////////////////////////////////////////////////////////
        // RESP - reset pointer
               `SUB_S_RESP_RAISE:
               begin
                  resp <= 1'b1;
                  counterWait <= `TICKS_PULSE_WAIT-1;
                  substate <= `SUB_S_RESP_WAIT;
               end
               `SUB_S_RESP_WAIT:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     resp <= 1'b0;
                     cachedPOINTER <= 0;
                     counterWait <= `TICKS_PULSE_WAIT_AFTER-2;
                     substate <= `SUB_S_RESP_WAIT_AFTER;
                  end
               end
               `SUB_S_RESP_WAIT_AFTER:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     substate <= `SUB_S_INCP_RAISE;
                  end
               end
        ////////////////////////////////////////////////////////////
        // INCP - increment until you get to the VREF register
            `SUB_S_INCP_RAISE:
               begin
                  incp <= 1'b1;
                  counterWait <= `TICKS_PULSE_WAIT-1;
                  substate <= `SUB_S_INCP_WAIT;
               end
               `SUB_S_INCP_WAIT:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     incp <= 1'b0;
                     cachedPOINTER <= cachedPOINTER+1;
                     counterWait <= `TICKS_PULSE_WAIT_AFTER-2;
                     substate <= `SUB_S_INCP_WAIT_AFTER;
                  end
               end
               `SUB_S_INCP_WAIT_AFTER:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     // have we incremented the pointer enough times?
                     if(`REG_VREF == cachedPOINTER)
                     begin
                        // yes: go to setting the value with INCV
                        substate <= `SUB_S_INCV_RAISE;
                     end
                     else
                     begin
                        // no: keep incrementing
                        substate <= `SUB_S_INCP_RAISE;
                     end
                  end
               end
        ////////////////////////////////////////////////////////////
        // INCV - increment until we have the value we want
               `SUB_S_INCV_RAISE:
               begin
                  incv <= 1'b1;
                  counterWait <= `SUB_S_INCV_WAIT-1;
                  substate <= `SUB_S_INCV_WAIT;
               end
               `SUB_S_INCV_WAIT:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     incv <= 1'b0;
                     cachedValue[cachedPOINTER] <= cachedValue[cachedPOINTER]+1;
                     counterWait <= `TICKS_PULSE_WAIT_AFTER-2;
                     substate <= `SUB_S_INCV_WAIT_AFTER;
                  end
               end
               `SUB_S_INCV_WAIT_AFTER:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     // have we incremented the value enough times?
                     if(`VAL_VREF == cachedValue[cachedPOINTER])
                     begin
                        // yes: go on to the next state
                        state <= `S_INIT_REG_SET_NBIAS;
                        substate <= `SUB_S_INCP_RAISE;
                     end
                     else
                     begin
                        // no: keep incrementing
                        substate <= `SUB_S_INCV_RAISE;
                     end
                  end
               end
               default:
               begin
                  // badness!
               end
            endcase
         end
// endcase  -  substate
//////////////////////////////////////////////////////////////////////

         `S_INIT_REG_SET_NBIAS:

//////////////////////////////////////////////////////////////////////
// case  -  substate
         begin
            case(substate)
        ////////////////////////////////////////////////////////////
        // INCP - increment until you get to the NBIAS register
               `SUB_S_INCP_RAISE:
               begin
                  incp <= 1'b1;
                  counterWait <= `TICKS_PULSE_WAIT-1;
                  substate <= `SUB_S_INCP_WAIT;
               end
               `SUB_S_INCP_WAIT:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     incp <= 1'b0;
                     cachedPOINTER <= cachedPOINTER+1;
                     counterWait <= `TICKS_PULSE_WAIT_AFTER-2;
                     substate <= `SUB_S_INCP_WAIT_AFTER;
                  end
               end
               `SUB_S_INCP_WAIT_AFTER:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     // have we incremented the pointer enough times?
                     if(`REG_NBIAS == cachedPOINTER)
                     begin
                        // yes: go to setting the value with INCV
                        substate <= `SUB_S_INCV_RAISE;
                     end
                     else
                     begin
                        // no: keep incrementing
                        substate <= `SUB_S_INCP_RAISE;
                     end
                  end
               end
        ////////////////////////////////////////////////////////////
        // INCV - increment until we have the value we want
               `SUB_S_INCV_RAISE:
               begin
                  incv <= 1'b1;
                  counterWait <= `TICKS_PULSE_WAIT-1;
                  substate <= `SUB_S_INCV_WAIT;
               end
               `SUB_S_INCV_WAIT:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     incv <= 1'b0;
                     cachedValue[cachedPOINTER] <= cachedValue[cachedPOINTER]+1;
                     counterWait <= `TICKS_PULSE_WAIT_AFTER-2;
                     substate <= `SUB_S_INCV_WAIT_AFTER;
                  end
               end
               `SUB_S_INCV_WAIT_AFTER:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     // have we incremented the value enough times?
                     if(`VAL_NBIAS == cachedValue[cachedPOINTER])
                     begin
                        // yes: go on to the next state
                        state <= `S_INIT_REG_SET_AOBIAS;
                        substate <= `SUB_S_INCP_RAISE;
                     end
                     else
                     begin
                        // no: keep incrementing
                        substate <= `SUB_S_INCV_RAISE;
                     end
                  end
               end
               default:
               begin
                  // badness!
               end
            endcase
         end
// endcase  -  substate
//////////////////////////////////////////////////////////////////////

         `S_INIT_REG_SET_AOBIAS:

//////////////////////////////////////////////////////////////////////
// case  -  substate
         begin
            case(substate)
        ////////////////////////////////////////////////////////////
        // INCP - increment until you get to the AOBIAS register
               `SUB_S_INCP_RAISE:
               begin
                  incp <= 1'b1;
                  counterWait <= `TICKS_PULSE_WAIT-1;
                  substate <= `SUB_S_INCP_WAIT;
               end
               `SUB_S_INCP_WAIT:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     incp <= 1'b0;
                     cachedPOINTER <= cachedPOINTER+1;
                     counterWait <= `TICKS_PULSE_WAIT_AFTER-2;
                     substate <= `SUB_S_INCP_WAIT_AFTER;
                  end
               end
               `SUB_S_INCP_WAIT_AFTER:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     // have we incremented the pointer enough times?
                     if(`REG_AOBIAS == cachedPOINTER)
                     begin
                        // yes: go to setting the value with INCV
                        substate <= `SUB_S_INCV_RAISE;
                     end
                     else
                     begin
                        // no: keep incrementing
                        substate <= `SUB_S_INCP_RAISE;
                     end
                  end
               end
        ////////////////////////////////////////////////////////////
        // INCV - increment until we have the value we want
               `SUB_S_INCV_RAISE:
               begin
                  incv <= 1'b1;
                  counterWait <= `TICKS_PULSE_WAIT-1;
                  substate <= `SUB_S_INCV_WAIT;
               end
               `SUB_S_INCV_WAIT:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     incv <= 1'b0;
                     cachedValue[cachedPOINTER] <= cachedValue[cachedPOINTER]+1;
                     counterWait <= `TICKS_PULSE_WAIT_AFTER-2;
                     substate <= `SUB_S_INCV_WAIT_AFTER;
                  end
               end
               `SUB_S_INCV_WAIT_AFTER:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     // have we incremented the value enough times?
                     if(`VAL_AOBIAS == cachedValue[cachedPOINTER])
                     begin
                        // yes: go on to the next state
                        state <= `S_INIT_REG_SET_CONFIG;
                        substate <= `SUB_S_RESP_RAISE;
                     end
                     else
                     begin
                        // no: keep incrementing
                        substate <= `SUB_S_INCV_RAISE;
                     end
                  end
               end
               default:
               begin
                  // badness!
               end
            endcase
         end
// endcase  -  substate
//////////////////////////////////////////////////////////////////////

         `S_INIT_REG_SET_CONFIG:

//////////////////////////////////////////////////////////////////////
// case  -  substate
         begin
            case(substate)
        ////////////////////////////////////////////////////////////
        // RESP - reset pointer
               `SUB_S_RESP_RAISE:
               begin
                  resp <= 1'b1;
                  counterWait <= `TICKS_PULSE_WAIT-1;
                  substate <= `SUB_S_RESP_WAIT;
               end
               `SUB_S_RESP_WAIT:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     resp <= 1'b0;
                     cachedPOINTER <= 0;
                     counterWait <= `TICKS_PULSE_WAIT_AFTER-2;
                     substate <= `SUB_S_RESP_WAIT_AFTER;
                  end
               end
               `SUB_S_RESP_WAIT_AFTER:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     substate <= `SUB_S_INCP_RAISE;
                  end
               end
        ////////////////////////////////////////////////////////////
        // INCP - increment until you get to the CONFIG register
               `SUB_S_INCP_RAISE:
               begin
                  incp <= 1'b1;
                  counterWait <= `TICKS_PULSE_WAIT-1;
                  substate <= `SUB_S_INCP_WAIT;
               end
               `SUB_S_INCP_WAIT:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     incp <= 1'b0;
                     cachedPOINTER <= cachedPOINTER+1;
                     counterWait <= `TICKS_PULSE_WAIT_AFTER-2;
                     substate <= `SUB_S_INCP_WAIT_AFTER;
                  end
               end
               `SUB_S_INCP_WAIT_AFTER:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     // have we incremented the pointer enough times?
                     if(`REG_CONFIG == cachedPOINTER)
                     begin
                        // yes: go to setting the value with INCV
                        substate <= `SUB_S_INCV_RAISE;
                     end
                     else
                     begin
                        // no: keep incrementing
                        substate <= `SUB_S_INCP_RAISE;
                     end
                  end
               end
        ////////////////////////////////////////////////////////////
        // INCV - increment until we have the value we want
               `SUB_S_INCV_RAISE:
               begin
                  incv <= 1'b1;
                  counterWait <= `TICKS_PULSE_WAIT-1;
                  substate <= `SUB_S_INCV_WAIT;
               end
               `SUB_S_INCV_WAIT:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     incv <= 1'b0;
                     cachedValue[cachedPOINTER] <= cachedValue[cachedPOINTER]+1;
                     counterWait <= `TICKS_PULSE_WAIT_AFTER-2;
                     substate <= `SUB_S_INCV_WAIT_AFTER;
                  end
               end
               `SUB_S_INCV_WAIT_AFTER:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     // have we incremented the value enough times?
                     if(`VAL_CONFIG == cachedValue[cachedPOINTER])
                     begin
                        // yes: go on to the next state
                        // inited!  finally!
                        state <= `S_IDLE;
                        substate <= 0; // unnecessary
                     end
                     else
                     begin
                        // no: keep incrementing
                        substate <= `SUB_S_INCV_RAISE;
                     end
                  end
               end
               default:
               begin
                  // badness!
               end
            endcase
         end
// endcase  -  substate
//////////////////////////////////////////////////////////////////////

         `S_IDLE:
         begin
            if(0 < counterWait)
            begin
               counterWait <= counterWait-1;
            end
            else
            begin
               if(1'b1 == busy)
               begin
                  busy <= 1'b0;
               end
               if(1'b0 == startCapture)
               begin
                  counterPixelsCaptured <= 0;
                  state <= `S_CAP_SET_ROW;
                  substate <= `SUB_S_RESP_RAISE;
                  busy <= 1'b1;
               end
            end
         end

         // TODO: setting column before row makes more sense given the order of
         // COLSEL(->reg[0]) and ROWSEL(->reg[1]) register numbers.
         `S_CAP_SET_ROW:

//////////////////////////////////////////////////////////////////////
// case  -  substate
         begin
            case(substate)
        ////////////////////////////////////////////////////////////
        // RESP - reset pointer
               `SUB_S_RESP_RAISE:
               begin
                  // don't reset the pointer with RESP if it's not necessary
                  if(`REG_ROWSEL >= cachedPOINTER)
                  begin
                     substate <= `SUB_S_INCP_RAISE;
                  end
                  else
                  begin
                     resp <= 1'b1;
                     counterWait <= `TICKS_PULSE_WAIT-1;
                     substate <= `SUB_S_RESP_WAIT;
                  end
               end
               `SUB_S_RESP_WAIT:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     resp <= 1'b0;
                     cachedPOINTER <= 0;
                     counterWait <= `TICKS_PULSE_WAIT_AFTER-2;
                     substate <= `SUB_S_RESP_WAIT_AFTER;
                  end
               end
               `SUB_S_RESP_WAIT_AFTER:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     substate <= `SUB_S_INCP_RAISE;
                  end
               end
        ////////////////////////////////////////////////////////////
        // INCP - increment until you get to the ROWSEL register
               `SUB_S_INCP_RAISE:
               begin
                  // we need to check here because we might already be at the
                  // desired register
                  if(`REG_ROWSEL == cachedPOINTER)
                  begin
                     substate <= `SUB_S_RESV_RAISE;
                  end
                  else
                  begin
                     incp <= 1'b1;
                     counterWait <= `TICKS_PULSE_WAIT-1;
                     substate <= `SUB_S_INCP_WAIT;
                  end
               end
               `SUB_S_INCP_WAIT:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     incp <= 1'b0;
                     cachedPOINTER <= cachedPOINTER+1;
                     counterWait <= `TICKS_PULSE_WAIT_AFTER-2;
                     substate <= `SUB_S_INCP_WAIT_AFTER;
                  end
               end
               `SUB_S_INCP_WAIT_AFTER:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     // have we incremented the pointer enough times?
                     if(`REG_ROWSEL == cachedPOINTER)
                     begin
                        // yes: go to (re)setting the value with RESV/INCV
                        substate <= `SUB_S_RESV_RAISE;
                     end
                     else
                     begin
                        // no: keep incrementing
                        substate <= `SUB_S_INCP_RAISE;
                     end
                  end
               end
        ////////////////////////////////////////////////////////////
        // RESV - reset value: loops over all registers
               `SUB_S_RESV_RAISE:
               begin
                  // don't reset the value with RESV if it's not necessary
                  if(0 == cachedValue[cachedPOINTER])
                  begin
                     state <= `S_CAP_SET_COL;
                     substate <= `SUB_S_RESP_RAISE;
                  end
                  else
                  begin
                     resv <= 1'b1;
                     counterWait <= `TICKS_PULSE_WAIT-1;
                     substate <= `SUB_S_RESV_WAIT;
                  end
               end
               `SUB_S_RESV_WAIT:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     resv <= 1'b0;
                     cachedValue[cachedPOINTER] <= 0;
                     counterWait <= `TICKS_PULSE_WAIT_AFTER-2;
                     substate <= `SUB_S_RESV_WAIT_AFTER;
                  end
               end
               `SUB_S_RESV_WAIT_AFTER:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     state <= `S_CAP_SET_COL;
                     substate <= `SUB_S_RESP_RAISE;
                  end
               end
               default:
               begin
                  // badness!
               end
            endcase
         end
// endcase  -  substate
//////////////////////////////////////////////////////////////////////

         `S_CAP_SET_COL:

//////////////////////////////////////////////////////////////////////
// case  -  substate
         begin
            case(substate)
        ////////////////////////////////////////////////////////////
        // RESP - reset pointer
               `SUB_S_RESP_RAISE:
               begin
                  // don't reset the pointer with RESP if it's not necessary
                  if(`REG_COLSEL >= cachedPOINTER)
                  begin
                     substate <= `SUB_S_INCP_RAISE;
                  end
                  else
                  begin
                     resp <= 1'b1;
                     counterWait <= `TICKS_PULSE_WAIT-1;
                     substate <= `SUB_S_RESP_WAIT;
                  end
               end
               `SUB_S_RESP_WAIT:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     resp <= 1'b0;
                     cachedPOINTER <= 0;
                     counterWait <= `TICKS_PULSE_WAIT_AFTER-2;
                     substate <= `SUB_S_RESP_WAIT_AFTER;
                  end
               end
               `SUB_S_RESP_WAIT_AFTER:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     substate <= `SUB_S_INCP_RAISE;
                  end
               end
        ////////////////////////////////////////////////////////////
        // INCP - increment until you get to the COLSEL register
               // TODO russ remove all INCP logic, COLSEL is reg 0
               `SUB_S_INCP_RAISE:
               begin
                  // we need to check here because we might already be at the
                  // desired register
                  if(`REG_COLSEL == cachedPOINTER)
                  begin
                     substate <= `SUB_S_RESV_RAISE;
                  end
                  else
                  begin
                     incp <= 1'b1;
                     counterWait <= `TICKS_PULSE_WAIT-1;
                     substate <= `SUB_S_INCP_WAIT;
                  end
               end
               `SUB_S_INCP_WAIT:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     incp <= 1'b0;
                     cachedPOINTER <= cachedPOINTER+1;
                     counterWait <= `TICKS_PULSE_WAIT_AFTER-2;
                     substate <= `SUB_S_INCP_WAIT_AFTER;
                  end
               end
               `SUB_S_INCP_WAIT_AFTER:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     // have we incremented the pointer enough times?
                     if(`REG_ROWSEL == cachedPOINTER)
                     begin
                        // yes: go to (re)setting the value with RESV/INCV
                        substate <= `SUB_S_RESV_RAISE;
                     end
                     else
                     begin
                        // no: keep incrementing
                        substate <= `SUB_S_INCP_RAISE;
                     end
                  end
               end
        ////////////////////////////////////////////////////////////
        // RESV - reset value: loops over all registers
               `SUB_S_RESV_RAISE:
               begin
                  // don't reset the value with RESV if it's not necessary
                  if(0 == cachedValue[cachedPOINTER])
                  begin
                     state <= `S__SPECIAL__INPHI_OR_ACQUIRE;
                     substate <= `SUB_S__SPECIAL__INPHI_OR_ACQUIRE;
                     counterWait <= `INPHI_OR_ACQUIRE__WAIT_VAL;
                  end
                  else
                  begin
                     resv <= 1'b1;
                     counterWait <= `TICKS_PULSE_WAIT-1;
                     substate <= `SUB_S_RESV_WAIT;
                  end
               end
               `SUB_S_RESV_WAIT:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     resv <= 1'b0;
                     cachedValue[cachedPOINTER] <= 0;
                     counterWait <= `TICKS_PULSE_WAIT_AFTER-2;
                     substate <= `SUB_S_RESV_WAIT_AFTER;
                  end
               end
               `SUB_S_RESV_WAIT_AFTER:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     state <= `S__SPECIAL__INPHI_OR_ACQUIRE;
                     substate <= `SUB_S__SPECIAL__INPHI_OR_ACQUIRE;
                     counterWait <= `INPHI_OR_ACQUIRE__WAIT_VAL;
                  end
               end
               default:
               begin
                  // badness!
               end
            endcase
         end
// endcase  -  substate
//////////////////////////////////////////////////////////////////////

         `S_CAP_PULSE_INPHI:

//////////////////////////////////////////////////////////////////////
// case  -  substate
         begin
            case(substate)
        ////////////////////////////////////////////////////////////
        // INPHI - pulse the INPHI line to operate the preamp
               `SUB_S_INPHI_RAISE:
               begin
                  inphi <= 1'b1;
                  counterWait <= `TICKS_PULSE_INPHI-1;
                  substate <= `SUB_S_INPHI_WAIT;
               end
               `SUB_S_INPHI_WAIT:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     inphi <= 1'b0;
                     counterWait <= `TICKS_PULSE_INPHI_AFTER-1;
                     substate <= `SUB_S_INPHI_WAIT_AFTER;
                  end
               end
               `SUB_S_INPHI_WAIT_AFTER:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     state <= `S_CAP_ACQUIRE_PIXEL;
                     substate <= `SUB_S_STARTCAP_LOWER;
                  end
               end
               default:
               begin
                  // badness!
               end
            endcase
         end
// endcase  -  substate
//////////////////////////////////////////////////////////////////////

         `S_CAP_ACQUIRE_PIXEL:

//////////////////////////////////////////////////////////////////////
// case  -  substate
         begin
            case(substate)
               `SUB_S_STARTCAP_LOWER:
               begin
                  startAdcCapture <= 1'b0;
                  // wait on conversion complete flag from ADC driver
                  substate <= `SUB_S_STARTCAP_WAIT;
               end
               `SUB_S_STARTCAP_WAIT:
               begin
                  // there should be sufficient space between raising of
                  // startAdcCapture line and lowering of this line (by the ADC
                  // driver)
                  if(0 == adcConvComplete)
                  begin
                     startAdcCapture <= 1'b1;
                     px0_out <= px0_processed;
                     px1_out <= px1_processed;
                     px2_out <= px2_processed;
                     px3_out <= px3_processed;
                     writePending <= 1'b1;
                     counterPixelsCaptured <= counterPixelsCaptured+1;
                     // TODO: is this a reasonable value?
                     counterWait <= `TICKS_STARTCAP_WAIT_AFTER;
                     substate <= `SUB_S_STARTCAP_WAIT_AFTER;
                  end
               end
               `SUB_S_STARTCAP_WAIT_AFTER:
               begin
                  // immediately lower the pending line (it's only held high
                  // for one ADC clock period)
                  writePending <= 1'b0;
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else if(1'b0 == writePending)
                  begin
                     if((`RESOLUTION_ROWS*`RESOLUTION_COLS) == counterPixelsCaptured)
                     begin
                        // we've captured all the pixels
                        state <= `S_IDLE;
                        substate <= 0; // unnecessary
                        // FIXME russ: remove this!  it's only here for when
                        // the "button press"
                        counterWait <= `TICKS_WAIT_BETWEEN_FRAMES;
                     end
                     else if(0 == (counterPixelsCaptured%`RESOLUTION_COLS))
                     begin
                        // upon incrementing the row, the logic will also reset the
                        // COLSEL val
                        state <= `S_CAP_INC_ROW;
                        // OPTIMIZATION
                        substate <= `SUB_S_INCP_RAISE;
                     end
                     else
                     begin
                        state <= `S_CAP_INC_COL;
                        substate <= `SUB_S_RESP_RAISE;
                     end
                  end
                  else
                  begin
                     // do nothing (writePending still active)
                  end
               end
               default:
               begin
                  // badness!
               end
            endcase
         end
// endcase  -  substate
//////////////////////////////////////////////////////////////////////

         `S_CAP_INC_COL:

//////////////////////////////////////////////////////////////////////
// case  -  substate
         begin
            case(substate)
        ////////////////////////////////////////////////////////////
        // RESP - reset pointer
               `SUB_S_RESP_RAISE:
               begin
                  // don't reset the pointer with RESP if it's not necessary
                  if(`REG_COLSEL >= cachedPOINTER)
                  begin
                     substate <= `SUB_S_INCP_RAISE;
                  end
                  else
                  begin
                     resp <= 1'b1;
                     counterWait <= `TICKS_PULSE_WAIT-1;
                     substate <= `SUB_S_RESP_WAIT;
                  end
               end
               `SUB_S_RESP_WAIT:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     resp <= 1'b0;
                     cachedPOINTER <= 0;
                     counterWait <= `TICKS_PULSE_WAIT_AFTER-2;
                     substate <= `SUB_S_RESP_WAIT_AFTER;
                  end
               end
               `SUB_S_RESP_WAIT_AFTER:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     substate <= `SUB_S_INCP_RAISE;
                  end
               end
        ////////////////////////////////////////////////////////////
        // INCP - increment until you get to the COLSEL register
               // TODO russ remove all INCP logic, COLSEL is reg 0
               `SUB_S_INCP_RAISE:
               begin
                  // we need to check here because we might already be at the
                  // desired register
                  if(`REG_COLSEL == cachedPOINTER)
                  begin
                     substate <= `SUB_S_INCV_RAISE;
                  end
                  else
                  begin
                     incp <= 1'b1;
                     counterWait <= `TICKS_PULSE_WAIT-1;
                     substate <= `SUB_S_INCP_WAIT;
                  end
               end
               `SUB_S_INCP_WAIT:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     incp <= 1'b0;
                     cachedPOINTER <= cachedPOINTER+1;
                     counterWait <= `TICKS_PULSE_WAIT_AFTER-2;
                     substate <= `SUB_S_INCP_WAIT_AFTER;
                  end
               end
               `SUB_S_INCP_WAIT_AFTER:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     // have we incremented the pointer enough times?
                     if(`REG_ROWSEL == cachedPOINTER)
                     begin
                        // yes: go to (re)setting the value with RESV/INCV
                        substate <= `SUB_S_INCV_RAISE;
                     end
                     else
                     begin
                        // no: keep incrementing
                        substate <= `SUB_S_INCP_RAISE;
                     end
                  end
               end
        ////////////////////////////////////////////////////////////
        // INCV - increment ONCE
               `SUB_S_INCV_RAISE:
               begin
                  incv <= 1'b1;
                  counterWait <= `TICKS_PULSE_WAIT-1;
                  substate <= `SUB_S_INCV_WAIT;
               end
               `SUB_S_INCV_WAIT:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     incv <= 1'b0;
                     cachedValue[cachedPOINTER] <= cachedValue[cachedPOINTER]+1;
                     counterWait <= `TICKS_PULSE_WAIT_AFTER-2;
                     substate <= `SUB_S_INCV_WAIT_AFTER;
                  end
               end
               `SUB_S_INCV_WAIT_AFTER:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     // one increment is all we want
                     // we don't need to change the ROW value
                     state <= `S__SPECIAL__INPHI_OR_ACQUIRE;
                     substate <= `SUB_S__SPECIAL__INPHI_OR_ACQUIRE;
                     counterWait <= `INPHI_OR_ACQUIRE__WAIT_VAL;
                  end
               end
               default:
               begin
                  // badness!
               end
            endcase
         end
// endcase  -  substate
//////////////////////////////////////////////////////////////////////

         `S_CAP_INC_ROW:

//////////////////////////////////////////////////////////////////////
// case  -  substate
         begin
            case(substate)
               // OPTIMIZATION: we can only get here from the COLSEL logic, so no
               // need to pulse RESP
        ////////////////////////////////////////////////////////////
        // INCP - increment until you get to the ROWSEL register
               `SUB_S_INCP_RAISE:
               begin
                  // we need to check here because we might already be at the
                  // desired register (in actuality, our optimization assumptions
                  // also assumpes that we WON'T be at the ROWSEL register)
                  if(`REG_ROWSEL == cachedPOINTER)
                  begin
                     substate <= `SUB_S_INCV_RAISE;
                  end
                  else
                  begin
                     incp <= 1'b1;
                     counterWait <= `TICKS_PULSE_WAIT-1;
                     substate <= `SUB_S_INCP_WAIT;
                  end
               end
               `SUB_S_INCP_WAIT:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     incp <= 1'b0;
                     cachedPOINTER <= cachedPOINTER+1;
                     counterWait <= `TICKS_PULSE_WAIT_AFTER-2;
                     substate <= `SUB_S_INCP_WAIT_AFTER;
                  end
               end
               `SUB_S_INCP_WAIT_AFTER:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     // have we incremented the pointer enough times?
                     if(`REG_ROWSEL == cachedPOINTER)
                     begin
                        // yes: go to (re)setting the value with RESV/INCV
                        substate <= `SUB_S_INCV_RAISE;
                     end
                     else
                     begin
                        // SHOULD NEVER GET HERE!
                        // no: keep incrementing
                        substate <= `SUB_S_INCP_RAISE;
                     end
                  end
               end
        ////////////////////////////////////////////////////////////
        // INCV - increment ONCE
               `SUB_S_INCV_RAISE:
               begin
                  incv <= 1'b1;
                  counterWait <= `TICKS_PULSE_WAIT-1;
                  substate <= `SUB_S_INCV_WAIT;
               end
               `SUB_S_INCV_WAIT:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     incv <= 1'b0;
                     cachedValue[cachedPOINTER] <= cachedValue[cachedPOINTER]+1;
                     counterWait <= `TICKS_PULSE_WAIT_AFTER-2;
                     substate <= `SUB_S_INCV_WAIT_AFTER;
                  end
               end
               `SUB_S_INCV_WAIT_AFTER:
               begin
                  if(0 < counterWait)
                  begin
                     counterWait <= counterWait-1;
                  end
                  else
                  begin
                     // one increment is all we want
                     // need to (re)set col val
                     state <= `S_CAP_SET_COL;
                     substate <= `SUB_S_RESP_RAISE;
                  end
               end
               default:
               begin
                  // badness!
               end
            endcase
         end
// endcase  -  substate
//////////////////////////////////////////////////////////////////////

      endcase
// endcase  -  state
//////////////////////////////////////////////////////////////////////

   end
end

endmodule
*/
