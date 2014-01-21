///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: University of Michigan
//
// File: imager.v
//
// Description: 
//  Toplevel connections for the imager subsystem
//
// Targeted device: <Family::SmartFusion> <Die::A2F500M3G> <Package::484 FBGA>
// Author: Branden Ghena
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 


module imager (
    input wire clk,
    input wire reset,

    // Input pins
    input wire sdata,

    // Output pins
    output reg sclk,
    output reg cs_n,
    output reg resp,
    output reg incp,
    output reg resv,
    output reg incv,
    output reg inphi
    );

    // Control signals
    wire adc_capture_start;
    wire adc_capture_done;
    wire frame_capture_start;
    wire frame_capture_done;
    
    // FIFO control
    wire fifo_full;
    wire write_enable;
    wire [7:0] pixel_data;

    // Stonyman settings
    wire [7:0] vsw_value;
    wire [7:0] hsw_value;
    wire [5:0] vref_value;
    wire [5:0] config_value;
    wire [5:0] nbias_value;
    wire [5:0] aobias_value;
    
    // Framemask signals
    wire [6:0] pixel_row;
    wire [6:0] pixel_col;
    wire capture_pixel;

    // ADC controller
    adc_controller adc0 (
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

    // Stonyman controller
    stonyman stonyman0 (
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
        .capture_pixel          (capture_pixel),
        .frame_capture_done     (frame_capture_done),
        .adc_capture_start      (adc_capture_start),
        .resp                   (resp),
        .incp                   (incp),
        .resv                   (resv),
        .incv                   (incv),
        .inphi                  (inphi),
        .pixel_row              (pixel_row),
        .pixel_col              (pixel_col)
    );

    // Framemask

    // Bus Interface

    
endmodule

