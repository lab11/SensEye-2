///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: University of Michigan
//
// File: img_search.v
//
// Description:
//  using hint from pupil_detect.v, determines depth of image where user looking
//
// Targeted device: <Family::SmartFusion> <Die::A2F500M3G> <Package::484 FBGA>
// Author: Samuel Rohrer
//
///////////////////////////////////////////////////////////////////////////////////////////////////



module img_search ( 

	input img_buf;
	input reg [8:0] pupil_location;

	output reg [90: 0] depth;



	//only store ~100 pixels of each image and do compare all at one
	//then sum up and quickly find the disparity??  -- pass that value up

	);



endmodule 