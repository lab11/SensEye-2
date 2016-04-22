///////////////////////////////////////////////////////////////////////////////
// Company: University of Michigan
//
// File: pupil_detect.v
//
// Description:
//  searches image from inward facing camera to determine where pupil is
//
// Targeted device: <Family::SmartFusion> <Die::A2F500M3G> <Package::484 FBGA>
// Author: Samuel Rohrer
//
///////////////////////////////////////////////////////////////////////////////

// NOTES: black is 0, white is 255 grayscale

//Max Resolution (used for sending lines)
`define MAX_RESOLUTION 112

//Threshold (used to determine if pixels different colors)
`define THRESHOLD 64
// notes: seems stange at threshold of 62 becomes unstable and incorrect 
//   at threshold of 62, but performs normally at 64

//define states
`define WAIT 0
`define COMPARE_PIXELS 1`define BLOB_INCREMENT 2
`define WRITE_COORDINATES 3

module pupil_detect(

	//INPUTS
	//top bit img_buf_newline is set to 0xFF when
	//  line capture complete
	input wire [(`MAX_RESOLUTION-1)*8 + 1 :0] img_buf_newline ,
	input wire frame_capture_done,
	//from system
	input wire clock,
	input wire reset,

	//OUTPUTs
	output reg [7:0] pupil_location_horizontal,
	output reg [7:0] pupil_location_vertical

	);

	//INTERNAL WIRES
	// states for state machine
	reg [2:0] state = `WAIT;
	reg [2:0] next_state = `WAIT;
	//regs for writing coordinates (chose 8 bit as 2^7 = 128 > MAX_RESOLUTION)
	reg [7:0] line_number = -1;
	reg [7:0] begin_blob = -1;
	reg [7:0] end_blob = -1;
	reg [7:0] glob_begin_blob = -1;
	reg [7:0] glob_end_blob = -1;
	reg [7:0] max_length = 0;
	reg [7:0] pixel_inc = 0;
	//regs to keep track of begin/end blob found
	reg found_begin_blob = 0;
	reg found_end_blob = 0;


	//state machine
	always @(posedge clock)
	begin
		if(reset) begin
			state = `WAIT;
			next_state = `WAIT;
			pupil_location_vertical = -1;
			pupil_location_horizontal = -1;
			line_number = -1;
			begin_blob = -1;
			end_blob = -1;
			glob_begin_blob = -1;
			glob_end_blob = -1;
			max_length = 0;
			pixel_inc = 0;
			found_begin_blob = 0;
			found_end_blob = 0;
		end else begin
			state = next_state;
		end
		case (state)
		//wait for cam_frame_capture_start
		`WAIT: begin
			if(frame_capture_done) begin
				next_state = `COMPARE_PIXELS;
			end else begin
				next_state = `WAIT;
			end
		end

		//check entire line first to find begin/end of blob
		`COMPARE_PIXELS: begin
			if(pixel_inc == `MAX_RESOLUTION-1) begin
				next_state = `BLOB_INCREMENT;
			end
			//look for beginning of blob
			else if(!found_begin_blob) begin
				//subtract second pixel from first because of grayscale values
				if((img_buf_newline[(pixel_inc)*8 -: 8] - 
					img_buf_newline[8*(pixel_inc+1) -: 8] > `THRESHOLD)) begin
					
					found_begin_blob = 1;
					begin_blob = pixel_inc;
					pixel_inc = pixel_inc + 1;
				end else begin
					pixel_inc = pixel_inc + 1;
				end
			end
			//look for end of blob
			else if(found_begin_blob && !found_end_blob) begin
				//subtract first pixel from second because of grayscale values
				if((img_buf_newline[8*(pixel_inc+1) -: 8] - 
					img_buf_newline[8*(pixel_inc) -: 8]) > `THRESHOLD) begin
					
					found_end_blob = 1;
					end_blob = pixel_inc;
					pixel_inc = pixel_inc + 1;
				end	else begin
					pixel_inc = pixel_inc + 1 ;
				end
			end 
			//has not found beginning/end continue looking  
			else begin
				pixel_inc = pixel_inc + 1;
				next_state = `COMPARE_PIXELS;
			end
		end

		//continue to increment line numbers until blob stops growing
		`BLOB_INCREMENT: begin
			//has found max value 
			if(line_number < 1) begin
				//increment line number and set pixel_inc to 0 (newline);
				line_number = line_number + 1;
				pixel_inc = 0;
				//set new max_length as it is greater now
				max_length = (end_blob - begin_blob);
				glob_begin_blob = begin_blob;
				glob_end_blob = end_blob;
				//reset found_begin and found_end flags
				found_begin_blob = 0;
				found_end_blob = 0;
				next_state = `COMPARE_PIXELS;
			end	else if(max_length > (end_blob - begin_blob)) begin
				next_state = `WRITE_COORDINATES;
			//has not found max_length
			end else begin
				//increment line number and set pixel_inc to 0 (newline);
				line_number = line_number + 1;
				pixel_inc = 0;
				//set new max_length as it is greater now
				max_length = (end_blob - begin_blob);
				glob_begin_blob = begin_blob;
				glob_end_blob = end_blob;
				//reset found_begin and found_end flags
				found_begin_blob = 0;
				found_end_blob = 0;
				next_state = `COMPARE_PIXELS;
			end
			
		end

		//write line number to vertical
		// add begin and end of blob then divide by 2
		`WRITE_COORDINATES: begin
			//write coordinates to output regs
			pupil_location_vertical = line_number;
			//divide by 2 to find center with >> 1
			// this assumes that the blob is in the center..
			pupil_location_horizontal = ( glob_begin_blob + glob_end_blob) >> 1; 
			
			//reset signals
			line_number = 0;

			//move to wait state
			next_state = `WAIT;	
		end

	endcase 
	end


endmodule
