////////////////////////////////////////////////////////////////////////////////
// Company: University of Michigan
//
// File: stonyman_conroller_tb.v
//
// Description:
//  TESTBENCH
//      Controller for the CentEye Stonyman imager.
//
// Targeted device: <Family::SmartFusion> <Die::A2F500M3G> <Package::484 FBGA>
// Author: Branden Ghena
//
//////////////////////////////////////////////////////////////////////////////// 

module stonyman_tb();
    reg clk;
    reg reset;
    reg frame_capture_start;
    reg adc_capture_done;

    reg [7:0] vsw_value;
    reg [7:0] hsw_value;
    reg [5:0] vref_value;
    reg [5:0] config_value;
    reg [5:0] nbias_value;
    reg [5:0] aobias_value;

    reg mask_capture_pixel;
    
    wire frame_capture_done;
    wire adc_capture_start;
    
    wire resp;
    wire incp;
    wire resv;
    wire incv;
    wire inphi;
    
    wire [6:0] mask_pixel_row;
    wire [6:0] mask_pixel_col;

    integer adc_count;

    stonyman uut (
        .clk                    (clk),
        .reset                  (reset),
        .frame_capture_start    (frame_capture_start),
        .adc_capture_done       (adc_capture_done),
        .vsw_value              (vsw_value),
        .hsw_value              (hsw_value),
        .vref_value             (vref_value),
        .config_value           (config_value),
        .nbias_value            (nbias_value),
        .aobias_value           (aobias_value),
        .mask_capture_pixel     (mask_capture_pixel),
        .frame_capture_done     (frame_capture_done),
        .adc_capture_start      (adc_capture_start),
        .resp                   (resp),
        .incp                   (incp),
        .resv                   (resv),
        .incv                   (incv),
        .inphi                  (inphi),
        .mask_pixel_row         (mask_pixel_row),
        .mask_pixel_col         (mask_pixel_col)
    );

    initial begin
        // creates data file for gtkwave
        $dumpfile("stonyman.vcd");
        $dumpvars(0, uut);
    end

    initial begin
        adc_count = 0;

        clk = 1;
        reset = 1;
        frame_capture_start = 0;
        adc_capture_done = 0;

        mask_capture_pixel = 1;

        vsw_value = 1;
        hsw_value = 2;
        vref_value = 3;
        config_value = 4;
        nbias_value = 5;
        aobias_value = 6;
    end

    always begin
        #5 clk = ~clk;
    end

    task SHOW_MODEL;
    begin
        $display ("[%d] [%d %d %d %d %d %d %d %d]",
                uut.ptr_value, uut.reg_value[0], uut.reg_value[1], uut.reg_value[2],
                uut.reg_value[3], uut.reg_value[4], uut.reg_value[5], uut.reg_value[6],
                uut.reg_value[7]);
    end
    endtask

    integer i;
    always @(posedge adc_capture_start) begin
        adc_count = adc_count+1;
        for (i=0; i<0+1; i=i+1) begin
            @(posedge clk);
        end
        adc_capture_done = 1;
        @(posedge clk);
        adc_capture_done = 0;
    end

    always @(posedge clk) begin
        $display ("\t%4d\t%b\t%b\t%b\t%b\t%b\t%d\t%d",
                $time, reset, resp, incp, resv, incv, uut.main_state, uut.sub_state);
    end

    initial begin
        $display ("\ttime\treset\tresp\tincp\tresv\tincv\tstate\tsub_state");
        #50;
        reset = 0;

        #1000;
        SHOW_MODEL();

        frame_capture_start = 1;
        #10;
        frame_capture_start = 0;

        @(negedge frame_capture_done);
        //#1000;
        #12;
        SHOW_MODEL();
        $display("ADC Count: %d", adc_count);
        $finish;
    end

endmodule

