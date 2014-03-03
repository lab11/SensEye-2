///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: University of Michigan
//
// File: framemask.v
//
// Description:
//  Controller for selecting which pixels of an image frame to grab
//
// Targeted device: <Family::SmartFusion> <Die::A2F500M3G> <Package::484 FBGA>
// Author: Branden Ghena
//
///////////////////////////////////////////////////////////////////////////////////////////////////

`define RESOLUTION 112

module framemask (
    input wire clk,
    input wire reset,

    input wire write_enable,
    input wire [9:0] addr,
    input wire [15:0] data,

    input wire [6:0] pixel_row,
    input wire [6:0] pixel_col,
    output reg capture_pixel
    );

    always @(posedge clk) begin
        if (reset) begin
            capture_pixel <= 0;
        end else begin
            capture_pixel <= 1;
        end
    end

    /*

    // NOTE: there are two ways to create this module
    // the desired way is to keep an array of 112x112 bits internally
    //  this would allow the outputs to the stonyman controller to be
    //  the next row and column desired
    //  this would also take up A LOT of space. And is probably unrealistic
    // the realistic way is to create a two-ported ram and allow data to enter
    //  it from the apb controller and to be read from this module. This is
    //  slower, but probably acceptable

    integer i, j;
    genvar k;

    reg [(`RESOLUTION*`RESOLUTION-1):0] mask;
    reg [(`RESOLUTION*`RESOLUTION-1):0] mask_nxt;

    // Set mask data
    always @(*) begin
        mask_nxt = mask;

        if (mask_write) begin
            mask_nxt = mask | ({12544{1'b1}} & (mask_data << mask_row*`RESOLUTION+32*mask_col));
        end
    end

    // Determine capture locations
    always @(*) begin
        pixel_valid = 0;

        for (i=(`RESOLUTION-1); i>pixel_row; i=i-1) begin
            for (j=(`RESOLUTION-1); j>=0; j=j-1) begin
                if (mask[i*`RESOLUTION+j]) begin
                    pixel_valid = 1;
                    next_row = i;
                    next_col = j;
                end
            end
        end

        for (j=(`RESOLUTION-1); j>pixel_col; j=j-1) begin
            if (mask[pixel_row*`RESOLUTION+j]) begin
                pixel_valid = 1;
                next_row = pixel_row;
                next_col = j;
            end
        end
    end

    always @(posedge clk) begin
        if (reset) begin
            mask <= 0;
        end else begin
            mask <= mask_nxt;
        end
    end
    */
endmodule

