///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: University of Michigan
//
// File: adcxx1s101.v
// File history:
//      0.01: 2013-02-05: created
//      1.00: 2013-02-10: driver for TI ADC081S101 complete and working
//      1.01: 2013-08-19: controller supports 8, 10 or 12 bits with only the
//                        change of the ADC_RES define value.
//
// Description: 
//
// Controller for the TI ADCXX1S101 family of low-power 1Msps serial ADCs.
//
// Targeted device: <Family::SmartFusion> <Die::A2F500M3G> <Package::484 FBGA>
// Author: Russ Bielawski
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 


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

