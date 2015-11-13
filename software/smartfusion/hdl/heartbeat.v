///////////////////////////////////////////////////////////////////////////////////////////////////
// File: heartbeat.v
//
// Description: Heartbeat pulse on a clock input. Meant to be connected to an LED output
//
// Author: Branden Ghena
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 
`timescale 1ns / 1ps

`define CLK_FREQ (32'd10000000)

module heartbeat (
    input wire clk_in,
    input wire reset_in,
    output reg pulse_out
    );

    wire [32:0] count_nxt;
    reg  [32:0] count;

    // Results in a pulse of ON one half second, OFF one half second.
    assign count_nxt = (count == `CLK_FREQ)? 32'd0 : count+32'd1;
    assign pulse_nxt = (count == `CLK_FREQ)? ~pulse_out : pulse_out;

    always @(posedge clk_in) begin
        if (~reset_in) begin
            count <= 32'd0;
            pulse_out <= 1'b0;
        end else begin
            count <= count_nxt;
            pulse_out <= pulse_nxt;
        end
    end
endmodule