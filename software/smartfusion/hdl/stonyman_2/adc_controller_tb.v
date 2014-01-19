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

module adc_controller_tb ();
    reg clk;
    reg reset;
    reg adc_capture_start;
    reg fifo_full;
    reg sdata;

    wire adc_capture_done;
    wire write_enable;
    wire [7:0] pixel_data;
    wire sclk;
    wire cs_n;

    adc_controller uut (
        .clk                (clk),
        .reset              (reset),
        .adc_capture_start  (adc_capture_start),
        .fifo_full          (fifo_full),
        .sdata              (sdata),
        .adc_capture_done   (adc_capture_done),
        .write_enable       (write_enable),
        .pixel_data         (pixel_data),
        .sclk               (sclk),
        .cs_n               (cs_n)
    );

    initial begin
        // creates data file for gtkwave
        $dumpfile("adcxx1s101.vcd");
        $dumpvars(0, uut);
    end

    initial begin
        clk = 1;
        reset = 1;

        adc_capture_start = 0;
        fifo_full = 0;
        sdata = 1;
    end

    always begin
        #5 clk = ~clk;
    end

    always @(posedge clk) begin
        $display ("\t%4d\t%b\t%b\t%b\t%b\t%b\t%d\t%d",
            $time, reset, sclk, cs_n, adc_capture_done, write_enable, pixel_data, uut.adc_state);
    end

    initial begin
        $display ("\ttime\treset\tsclk\tcs_n\tdone\tw_en\tdata\tstate");

        #50;
        reset = 0;

        #50;
        adc_capture_start = 1;
        #10;
        adc_capture_start = 0;
        
        @(posedge adc_capture_done);
        #10;
        adc_capture_start = 1;
        #10; 
        adc_capture_start = 0;

        @(posedge write_enable);
        sdata = 0;

        @(posedge write_enable);
        #10;
        $finish;
    end
endmodule

