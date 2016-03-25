///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: University of Michigan
//
// File: adc_controller_tb.v
//
// Description: 
//  TESTBENCH
//  Controller for the TI ADCXX1S101 reading stonyman pixel data
//
// Targeted device: <Family::SmartFusion> <Die::A2F500M3G> <Package::484 FBGA>
// Author: Branden Ghena
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 
`define MAX_RESOLUTION 112

module adc_controller_tb ();
    reg clk;
    reg reset;
    reg adc_capture_start;
    reg fifo_full;
    reg sdata;

    wire adc_capture_done;
    wire fifo_write_enable;
    wire [7:0] fifo_write_data;
    wire sclk;
    wire cs_n;

    reg  newline_sample;
    wire [(`MAX_RESOLUTION-1)*8 + 1 : 0 ] img_buf_newline ;
    reg [11:0] val_offset;
    reg [7:0]  track_counts;

    adc_controller dut (
        .clk                (clk),
        .reset              (reset),
        .adc_capture_start  (adc_capture_start),
        .fifo_full          (fifo_full),
        .sdata              (sdata),
        .adc_capture_done   (adc_capture_done),
        .fifo_write_enable  (fifo_write_enable),
        .fifo_write_data    (fifo_write_data),
        .sclk               (sclk),
        .cs_n               (cs_n),
        .img_buf_newline    (img_buf_newline),
        .newline_sample     (newline_sample),
        .val_offset         (val_offset),
        .track_counts       (track_counts)
    );

    initial begin
        // creates data file for gtkwave
        $dumpfile("adcxx1s101.vcd");
        $dumpvars(0, dut);
    end

    initial begin
        clk = 1;
        reset = 1;
        #10;
        reset = 0;

        adc_capture_start = 0;
        fifo_full = 0;
        sdata = 1;

        val_offset = 1;
        track_counts = 14; //same as define in adc_controller.v
        
        newline_sample = 0;
    end

    always begin
        #5 clk = ~clk;
    end

    always begin
        #20 newline_sample = 0;
        #1120 newline_sample = 1;
    end

    always begin
        #10 sdata = ~sdata;
        #30 sdata = ~sdata;
        #10 sdata = ~sdata;
        #15 sdata = ~sdata;
    end

    always @(posedge clk) begin
        $display ("\t%4d\t%b\t%b\t%b\t%b\t%b\t%d\t%d",
            $time, reset, sclk, cs_n, adc_capture_done, fifo_write_enable, fifo_write_data, dut.adc_state);
    end

    always @(posedge newline_sample) begin
        $display ("\ttime\treset\tsclk\tcs_n\tdone\tw_en\tdata\tstate");

        #50;
        adc_capture_start = 1;
        #10;
        adc_capture_start = 0;
        
        @(posedge adc_capture_done);
        #10;
        adc_capture_start = 1;
        #10; 
        adc_capture_start = 0;

        @(posedge fifo_write_enable);
        #100;


    end
endmodule

