///////////////////////////////////////////////////////////////////////////////
// Company: University of Michigan
//
// File: pupilDetect_tb.v
//
// Description:
//  testbench for pupil_detect.v to test if pupil_detect is working
//
// Targeted device: <Family::SmartFusion> <Die::A2F500M3G> <Package::484 FBGA>
// Author: Samuel Rohrer
//
///////////////////////////////////////////////////////////////////////////////
`define MAX_RESOLUTION 112

`timescale 1 ns / 100 ps

module pupilDetect_tb ();

	reg [(`MAX_RESOLUTION-1)*8 + 1 :0] img_buf_newline; 
	reg frame_capture_done;

	reg clock;
	reg reset;

	wire [7:0] pupil_location_horizontal;
	wire [7:0] pupil_location_vertical;

	pupil_detect dut(

		.img_buf_newline			  (img_buf_newline),
		.frame_capture_done           (frame_capture_done),

		.clock						  (clock),
		.reset						  (reset),

		.pupil_location_horizontal	  (pupil_location_horizontal),
		.pupil_location_vertical	  (pupil_location_vertical)

	);

	initial begin
        // creates data file for gtkwave
        $dumpfile("pupilDetectWave.vcd");
        $dumpvars(0, dut);
        $display ("\ttime\treset\tclock\tframe_capture_done
        	\tpupil_location_vertical\tpupil_location_horizontal");
    end

    initial begin
    	img_buf_newline = 0;
    	frame_capture_done = 1;
    	clock = 0;
    	reset = 1;
    	#100;
    	reset = 0;
    	frame_capture_done = 0;


    	img_buf_newline = 0;
    	#10;
    	img_buf_newline[888 : 0] = 889'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F;
    	#10;
    	img_buf_newline[ 500 -: 100] = 100'hFFFFFFFFFFFFFFFFFFFFFFFFF;
    	#1130;
    	//img_buf_newline = 0;
    	img_buf_newline[888 : 0] = 889'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F;    	
 		#10;
    	img_buf_newline[ 650 -: 400 ] = 400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    	#1130;
    	//img_buf_newline = 0;
    	img_buf_newline[888 : 0] = 889'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F;    	  
    	#10;
    	img_buf_newline[ 600 -: 300] = 300'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    	#1130;
    	//img_buf_newline = 0;
    	img_buf_newline[888 : 0] = 889'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F;    		
    	#10;
    	img_buf_newline[ 550 -: 200] = 200'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    	#1130;
    //	img_buf_newline = 0;
    	img_buf_newline[888 : 0] = 889'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F;   
    	#10;
    	img_buf_newline[ 500 -: 100] = 100'hFFFFFFFFFFFFFFFFFFFFFFFFF;
    	#1130;


    	img_buf_newline = 0;
    	frame_capture_done = 1;
    	clock = 0;
    	reset = 1;
    	#100;
    	reset = 0;
    	frame_capture_done = 0;

    	img_buf_newline = 0;
    	#10;
    	img_buf_newline[ 500 -: 100] = 100'hFFFFFFFFFFFFFFFFFFFFFFFFF;
    	#1130;
    	img_buf_newline = 0;
    	#10;
    	img_buf_newline[ 550 -: 200] = 200'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    	#1130;
        img_buf_newline = 0;
    	#10;
    	img_buf_newline[ 600 -: 300] = 300'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    	#1130;	
    	img_buf_newline = 0;
    	#10;
    	img_buf_newline[ 750 -: 400 ] = 400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    	#1130;
    	img_buf_newline = 0;
    	#10;
    	img_buf_newline[ 600 -: 300] = 300'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    	#1130;
    	img_buf_newline = 0;
    	#10;
    	img_buf_newline[ 550 -: 200] = 200'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    	#1130;
    	img_buf_newline = 0;
    	#10;
    	img_buf_newline[ 500 -: 100] = 100'hFFFFFFFFFFFFFFFFFFFFFFFFF;
    	#1130;

    	$stop;
    end

    always @(posedge clock) begin
        $display ("\t%4d\t%b\t%b\t%b\t%d\t%d",
            $time, reset, clock, frame_capture_done, 
            pupil_location_vertical, pupil_location_horizontal);
    end

    always begin
        #5 clock = ~clock;
    end

endmodule

