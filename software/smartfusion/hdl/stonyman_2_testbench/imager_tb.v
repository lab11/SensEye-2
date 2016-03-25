///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: University of Michigan
//
// File: imager_tb.v
//
// Description:
//  testbench for imager.v to test if pupil_detect is working
//
// Targeted device: <Family::SmartFusion> <Die::A2F500M3G> <Package::484 FBGA>
// Author: Samuel Rohrer
//
///////////////////////////////////////////////////////////////////////////////////////////////////
`define MAX_RESOLUTION 112

`timescale 1 ns / 100 ps

module imager_tb ();
	//global clock and reset signals
	reg         clk;
	reg         reset;

	//cam0 initialization
	reg         cam0_sdata;
	wire        cam0_sclk;
	wire        cam0_cs_n;
	wire        cam0_resp;
	wire        cam0_incp;
	wire        cam0_resv;
	wire        cam0_incv;
	wire        cam0_inphi;
	wire        cam0_frame_capture_done;
        reg         cam0_frame_capture_start;
	wire        cam0_fifo_afull;
        reg         cam0_adc_capture_start;
	wire        cam0_adc_capture_done;
	wire        cam0_fifo_empty;
	wire         cam0_fifo_full;
	wire        cam0_fifo_overflow;

	//cam1 initialization
	reg         cam1_sdata;
	wire        cam1_sclk;
	wire        cam1_cs_n;
	wire        cam1_resp;
	wire        cam1_incp;
	wire        cam1_resv;
	wire        cam1_incv;
	wire        cam1_inphi;
	wire        cam1_frame_capture_done;
	wire        cam1_fifo_afull;
	wire        cam1_adc_capture_start;
	wire        cam1_adc_capture_done;
	wire        cam1_fifo_empty;
	wire        cam1_fifo_full;
	wire        cam1_fifo_overflow;

	//Bus interface
	reg         PSEL;
	reg         PENABLE;
	reg         PWRITE;
	reg  [31:0] PADDR;
	reg  [31:0] PWDATA;
	wire        PREADY;
	wire [31:0] PRDATA;
	wire        PSLVERR;

	//pupil detect results
	wire [7:0]  pupil_loc_h;
	wire [7:0]  pupil_loc_v;

	//used for simulation
	integer line_num = 0;
	integer pixel_num = 0;

//---------------- Imager DUT initialization -----------------//
	imager dut(
		.clk                       (clk),
		.reset                     (reset),
		
		//cam0 connections
		.cam0_sdata                (cam0_sdata),
		.cam0_sclk                 (cam0_sclk),
		.cam0_cs_n                 (cam0_cs_n),
		.cam0_resp                 (cam0_resp),
		.cam0_incp                 (cam0_incp),
		.cam0_resv                 (cam0_resv),
		.cam0_incv                 (cam0_incv),
		.cam0_inphi                (cam0_inphi),
		.cam0_frame_capture_done   (cam0_frame_capture_done),
		.cam0_fifo_afull           (cam0_fifo_afull),
		.cam0_adc_capture_start    (cam0_adc_capture_start),
		.cam0_adc_capture_done     (cam0_adc_capture_done),
		.cam0_fifo_empty           (cam0_fifo_empty),
		.cam0_fifo_full            (cam0_fifo_full),
		.cam0_fifo_overflow	       (cam0_fifo_overflow),
		//added for debgugging usually controlled by apb
                .cam0_frame_capture_start  (cam0_frame_capture_start),

		//cam1 connections
		.cam1_sdata                (cam1_sdata),
		.cam1_sclk                 (cam1_sclk),
		.cam1_cs_n                 (cam1_cs_n),
		.cam1_resp                 (cam1_resp),
		.cam1_incp                 (cam1_incp),
		.cam1_resv                 (cam1_resv),
		.cam1_incv                 (cam1_incv),
		.cam1_inphi                (cam1_inphi),
		.cam1_frame_capture_done   (cam1_frame_capture_done),
		.cam1_fifo_afull           (cam1_fifo_afull),
		.cam1_adc_capture_start    (cam1_adc_capture_start),
		.cam1_adc_capture_done     (cam1_adc_capture_done),
		.cam1_fifo_empty           (cam1_fifo_empty),
		.cam1_fifo_full            (cam1_fifo_full),
		.cam1_fifo_overflow	       (cam1_fifo_overflow),

		//bus interface
		.PSEL                      (PSEL),
		.PENABLE                   (PENABLE),
		.PWRITE			           (PWRITE),
		.PADDR                     (PADDR),
		.PWDATA                    (PWDATA),
		.PREADY                    (PREADY),
		.PRDATA                    (PRDATA),
		.PSLVERR                   (PSLVERR),

		//pupil detect results
		.pupil_loc_h               (pupil_loc_h),
		.pupil_loc_v               (pupil_loc_v)
	);
//---------------- End Imager initialization ------------- //


//------------------ Simulation -------------------------- //
    initial begin
        // creates data file for gtkwave
        $dumpfile("imagerWave.vcd");
        $dumpvars(0, dut);
    end

    initial begin
    	//set clk to 1 to begin
    	clk = 1;
    	//reset system
    	reset = 1;
    	//set initial data to 0
    	cam0_sdata = 0;
    	cam1_sdata = 0;
    	//set bus interface to 0 -- not needed for this simulation
    	PSEL = 0;
    	PENABLE = 0;
    	PWRITE = 0;
    	PADDR = 0;
    	PWDATA = 0;
        //add in controls for adc/stonyman to enable here
        //adc controls
        cam0_adc_capture_start = 0;
        //cam0_fifo_full = 0;
        //stonyman controls
        cam0_frame_capture_start = 0;
        //cam0_adc_capture_done = 0;
    
    end

    always begin
    	//creates a 20 MHz clock
    	#50 clk = ~clk;
    end
    
    /*integer i;
    always @(posedge cam0_adc_capture_start) begin
        for(i = 0; i < 0+1; i = i+1 ) begin
            @(posedge clk);
        end
        cam0_adc_capture_done = 1;
        @(posedge clk);
        cam0_adc_capture_done = 0;
    end*/

    initial begin
    	$display ("\ttime\treset\tclock\tcam0_sdata\t\tcam1_sdata\t\tpupil_vert\t\tpupil_horiz");

    	//loops through line numbers (vertical)
        //
        //add in enabling adc /(stonyman!!!) here
    	reset = 0;
        
        for(line_num = 0; line_num < `MAX_RESOLUTION; line_num = line_num + 1) begin
    		//loops through pixel numbers (horizontal)
    		for(pixel_num = 0; pixel_num < `MAX_RESOLUTION; pixel_num = pixel_num + 1) begin
    			//checks if line num in range to make centered black square
    			if(line_num > 45 && line_num < 65) begin
    				//check if pixel num in range 
    				if(pixel_num > 40 && pixel_num < 70) begin
    					cam0_sdata = 0; //black pixel
    				end
    			//if not in range set to white
    			end else begin
   					cam0_sdata = 255; //white pixel
   				end
    		    //print output
                    $display ("\t%4d\t%b\t%b\t%b\t\t%b\t\t%d\t\t%d", $time, reset,
                        clk, cam0_sdata, cam1_sdata, pupil_loc_v, pupil_loc_h);

                end
    		cam0_adc_capture_start = 1;
                cam0_frame_capture_start = 1;
                #100;
                cam0_adc_capture_start = 0; //tells adc to capture data and convert
                cam0_frame_capture_start = 0;
                #(1000-100); //wait at each pixel for 1000 ns (about same as imager) 
    	end 
    	$finish;
    end

endmodule

