///////////////////////////////////////////////////////////////////////////////////////////////////
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
///////////////////////////////////////////////////////////////////////////////////////////////////


module pupil_detect(

	input img_buf;



	output reg [8:0] pupil_location;



	);


endmodule