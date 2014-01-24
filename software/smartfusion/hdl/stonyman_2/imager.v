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

    // Bus interface
    input wire         PSEL,
    input wire         PENABLE,
    input wire         PWRITE,
    input wire  [31:0] PADDR,
    input wire  [31:0] PWDATA,
    output wire        PREADY,
    output wire [31:0] PRDATA,
    output wire        PSLVERR,

    // Input pins
    input wire cam0_sdata,

    // Output pins
    output wire cam0_sclk,
    output wire cam0_cs_n,
    output wire cam0_resp,
    output wire cam0_incp,
    output wire cam0_resv,
    output wire cam0_incv,
    output wire cam0_inphi,

    // Interrupts
    output wire cam0_fifo_afull,
    output wire cam0_frame_capture_done
    );

    // Control signals
    wire cam0_reset;
    wire cam0_adc_capture_start;
    wire cam0_adc_capture_done;
    wire cam0_frame_capture_start;
    //wire cam0_frame_capture_done;
    
    // FIFO control
    wire cam0_fifo_empty;
    //wire cam0_fifo_afull;
    wire cam0_fifo_full;
    wire cam0_fifo_overflow;
    wire cam0_fifo_write_enable;
    wire [7:0] cam0_fifo_write_data;
    wire [31:0] cam0_fifo_read_data;
    wire cam0_fifo_data_valid;
    wire cam0_fifo_read_enable;

    // Stonyman settings
    wire [7:0] cam0_vsw_value;
    wire [7:0] cam0_hsw_value;
    wire [5:0] cam0_vref_value;
    wire [5:0] cam0_config_value;
    wire [5:0] cam0_nbias_value;
    wire [5:0] cam0_aobias_value;
    
    // Framemask signals
    wire [6:0] cam0_mask_pixel_row;
    wire [6:0] cam0_mask_pixel_col;
    wire cam0_mask_capture_pixel;
    wire cam0_mask_write_enable;
    wire [9:0]  cam0_mask_addr;
    wire [15:0] cam0_mask_data;

    // ADC controller
    adc_controller adc0 (
        .clk                (clk),
        .reset              (reset | cam0_reset),
        .adc_capture_start  (cam0_adc_capture_start),
        .fifo_full          (cam0_fifo_full),
        .sdata              (cam0_sdata),
        .adc_capture_done   (cam0_adc_capture_done),
        .fifo_write_enable  (cam0_fifo_write_enable),
        .fifo_write_data    (cam0_fifo_write_data),
        .sclk               (cam0_sclk),
        .cs_n               (cam0_cs_n)
    );

    // Stonyman controller
    stonyman stonyman0 (
        .clk                    (clk),
        .reset                  (reset | cam0_reset),
        .frame_capture_start    (cam0_frame_capture_start),
        .adc_capture_done       (cam0_adc_capture_done),
        .vsw_value              (cam0_vsw_value),
        .hsw_value              (cam0_hsw_value),
        .vref_value             (cam0_vref_value),
        .config_value           (cam0_config_value),
        .nbias_value            (cam0_nbias_value),
        .aobias_value           (cam0_aobias_value),
        .mask_capture_pixel     (cam0_mask_capture_pixel),
        .frame_capture_done     (cam0_frame_capture_done),
        .adc_capture_start      (cam0_adc_capture_start),
        .resp                   (cam0_resp),
        .incp                   (cam0_incp),
        .resv                   (cam0_resv),
        .incv                   (cam0_incv),
        .inphi                  (cam0_inphi),
        .mask_pixel_row         (cam0_mask_pixel_row),
        .mask_pixel_col         (cam0_mask_pixel_col)
    );

    // Framemask
    framemask framemask0 (
        .clk            (clk),
        .reset          (reset | cam0_reset),
        .write_enable   (cam0_mask_write_enable),
        .addr           (cam0_mask_addr),
        .data           (cam0_mask_data),
        .pixel_row      (cam0_mask_pixel_row),
        .pixel_col      (cam0_mask_pixel_col),
        .capture_pixel  (cam0_mask_capture_pixel)
        );

    // FIFO
    //TODO: Play with depth and almost full threshold
    //TODO: Attempt to add fifo internally...
    fifo_pixel_data fifo_pixel_data_0(
        .clk                    (clk),
        .reset                  (reset | cam0_reset),
        .cam0_fifo_write_data   (cam0_fifo_write_data),
        .cam0_fifo_write_enable (cam0_fifo_write_enable),
        .cam0_fifo_read_enable  (cam0_fifo_read_enable),
        .cam0_fifo_read_data    (cam0_fifo_read_data),
        .cam0_fifo_data_valid   (cam0_fifo_data_valid),
        .cam0_fifo_empty        (cam0_fifo_empty),
        .cam0_fifo_afull        (cam0_fifo_afull),
        .cam0_fifo_full         (cam0_fifo_full),
        .cam0_fifo_overflow     (cam0_fifo_overflow) 
        );

    // Bus Interface
    imager_apb_interface img_apb0 (
    .clk                    (clk),
    .reset                  (reset),
    .PSEL                   (PSEL),
    .PENABLE                (PENABLE),
    .PWRITE                 (PWRITE),
    .PADDR                  (PADDR),
    .PWDATA                 (PWDATA),
    .PREADY                 (PREADY),
    .PRDATA                 (PRDATA),
    .PSLVERR                (PSLVERR),
    
    .cam0_frame_capture_done    (cam0_frame_capture_done),
    .cam0_frame_capture_start   (cam0_frame_capture_start),
    .cam0_reset                 (cam0_reset),
    .cam0_vsw_value             (cam0_vsw_value),
    .cam0_hsw_value             (cam0_hsw_value),
    .cam0_vref_value            (cam0_vref_value),
    .cam0_config_value          (cam0_config_value),
    .cam0_nbias_value           (cam0_nbias_value),
    .cam0_aobias_value          (cam0_aobias_value),
    .cam0_fifo_empty            (cam0_fifo_empty),
    .cam0_fifo_afull            (cam0_fifo_afull),
    .cam0_fifo_full             (cam0_fifo_full),
    .cam0_fifo_overflow         (cam0_fifo_overflow),
    .cam0_fifo_read_data        (cam0_fifo_read_data),
    .cam0_fifo_data_valid       (cam0_fifo_data_valid),
    .cam0_fifo_read_enable      (cam0_fifo_read_enable),
    .cam0_mask_write_enable     (cam0_mask_write_enable),
    .cam0_mask_addr             (cam0_mask_addr),
    .cam0_mask_data             (cam0_mask_data),

    .cam1_frame_capture_done    (),
    .cam1_frame_capture_start   (),
    .cam1_reset                 (),
    .cam1_vsw_value             (),
    .cam1_hsw_value             (),
    .cam1_vref_value            (),
    .cam1_config_value          (),
    .cam1_nbias_value           (),
    .cam1_aobias_value          (),
    .cam1_fifo_empty            (),
    .cam1_fifo_afull            (),
    .cam1_fifo_full             (),
    .cam1_fifo_overflow         (),
    .cam1_fifo_read_data        (),
    .cam1_fifo_data_valid       (),
    .cam1_fifo_read_enable      (),
    .cam1_mask_write_enable     (),
    .cam1_mask_addr             (),
    .cam1_mask_data             ()
    );

    
endmodule

