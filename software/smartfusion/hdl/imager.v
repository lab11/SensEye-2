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

    // Cam0
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
    output wire cam0_frame_capture_done,
    output wire cam0_fifo_afull,
    // Test points
    output wire cam0_adc_capture_start,
    output wire cam0_adc_capture_done,
    output wire cam0_fifo_empty,
    output wire cam0_fifo_full,
    output wire cam0_fifo_overflow,

    // Cam1
    // Input pins
    input wire cam1_sdata,
    // Output pins
    output wire cam1_sclk,
    output wire cam1_cs_n,
    output wire cam1_resp,
    output wire cam1_incp,
    output wire cam1_resv,
    output wire cam1_incv,
    output wire cam1_inphi,
    // Interrupts
    output wire cam1_frame_capture_done,
    output wire cam1_fifo_afull,
    // Test points
    output wire cam1_adc_capture_start,
    output wire cam1_adc_capture_done,
    output wire cam1_fifo_empty,
    output wire cam1_fifo_full,
    output wire cam1_fifo_overflow,

    // Bus interface
    input wire         PSEL,
    input wire         PENABLE,
    input wire         PWRITE,
    input wire  [31:0] PADDR,
    input wire  [31:0] PWDATA,
    output wire        PREADY,
    output wire [31:0] PRDATA,
    output wire        PSLVERR
    );

    // Control signals
    wire cam0_reset;
    //wire cam0_adc_capture_start;
    //wire cam0_adc_capture_done;
    wire cam0_frame_capture_start;
    //wire cam0_frame_capture_done;

    // Timing signals
    wire [7:0] pulse_counts;
    wire [7:0] track_counts;

    // FIFO control
    //wire cam0_fifo_empty;
    //wire cam0_fifo_afull;
    //wire cam0_fifo_full;
    //wire cam0_fifo_overflow;
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

    // ADC settings
    wire [11:0] cam0_offset_val;

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
        .track_counts       (track_counts),
        .val_offset         (cam0_offset_val),
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
        .pulse_counts           (pulse_counts),
        .frame_capture_start    (cam0_frame_capture_start),
        .adc_capture_done       (cam0_adc_capture_done),
        .vsw_value              (cam0_vsw_value),
        .hsw_value              (cam0_hsw_value),
        .vref_value             (cam0_vref_value),
        .config_value           (cam0_config_value),
        .nbias_value            (cam0_nbias_value),
        .aobias_value           (cam0_aobias_value),
        .mask_capture_pixel     (cam0_mask_capture_pixel),
        .controller_busy        (cam0_controller_busy),
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

    // Control signals
    wire cam1_reset;
    //wire cam1_adc_capture_start;
    //wire cam1_adc_capture_done;
    wire cam1_frame_capture_start;
    //wire cam1_frame_capture_done;

    // FIFO control
    //wire cam1_fifo_empty;
    //wire cam1_fifo_afull;
    //wire cam1_fifo_full;
    //wire cam1_fifo_overflow;
    wire cam1_fifo_write_enable;
    wire [7:0] cam1_fifo_write_data;
    wire [31:0] cam1_fifo_read_data;
    wire cam1_fifo_data_valid;
    wire cam1_fifo_read_enable;

    // Stonyman settings
    wire [7:0] cam1_vsw_value;
    wire [7:0] cam1_hsw_value;
    wire [5:0] cam1_vref_value;
    wire [5:0] cam1_config_value;
    wire [5:0] cam1_nbias_value;
    wire [5:0] cam1_aobias_value;

    // ADC settings
    wire [11:0] cam1_val_offset;
    wire [11:0] cam1_offset_val;

    // Framemask signals
    wire [6:0] cam1_mask_pixel_row;
    wire [6:0] cam1_mask_pixel_col;
    wire cam1_mask_capture_pixel;
    wire cam1_mask_write_enable;
    wire [9:0]  cam1_mask_addr;
    wire [15:0] cam1_mask_data;

    // ADC controller
    adc_controller adc1 (
        .clk                (clk),
        .reset              (reset | cam1_reset),
        .adc_capture_start  (cam1_adc_capture_start),
        .fifo_full          (cam1_fifo_full),
        .track_counts       (track_counts),
        .val_offset         (cam1_val_offset),
        .sdata              (cam1_sdata),
        .adc_capture_done   (cam1_adc_capture_done),
        .fifo_write_enable  (cam1_fifo_write_enable),
        .fifo_write_data    (cam1_fifo_write_data),
        .sclk               (cam1_sclk),
        .cs_n               (cam1_cs_n)
    );

    // Stonyman controller
    stonyman stonyman1 (
        .clk                    (clk),
        .reset                  (reset | cam1_reset),
        .pulse_counts           (pulse_counts),
        .frame_capture_start    (cam1_frame_capture_start),
        .adc_capture_done       (cam1_adc_capture_done),
        .vsw_value              (cam1_vsw_value),
        .hsw_value              (cam1_hsw_value),
        .vref_value             (cam1_vref_value),
        .config_value           (cam1_config_value),
        .nbias_value            (cam1_nbias_value),
        .aobias_value           (cam1_aobias_value),
        .mask_capture_pixel     (cam1_mask_capture_pixel),
        .controller_busy        (cam1_controller_busy),
        .frame_capture_done     (cam1_frame_capture_done),
        .adc_capture_start      (cam1_adc_capture_start),
        .resp                   (cam1_resp),
        .incp                   (cam1_incp),
        .resv                   (cam1_resv),
        .incv                   (cam1_incv),
        .inphi                  (cam1_inphi),
        .mask_pixel_row         (cam1_mask_pixel_row),
        .mask_pixel_col         (cam1_mask_pixel_col)
    );

    // Framemask
    framemask framemask1 (
        .clk            (clk),
        .reset          (reset | cam1_reset),
        .write_enable   (cam1_mask_write_enable),
        .addr           (cam1_mask_addr),
        .data           (cam1_mask_data),
        .pixel_row      (cam1_mask_pixel_row),
        .pixel_col      (cam1_mask_pixel_col),
        .capture_pixel  (cam1_mask_capture_pixel)
    );

    // FIFO
    //TODO: Play with depth and almost full threshold
    fifo_pixel_data fifo_pixel_data_1(
        .clk                    (clk),
        .reset                  (reset | cam1_reset),
        .cam0_fifo_write_data   (cam1_fifo_write_data),
        .cam0_fifo_write_enable (cam1_fifo_write_enable),
        .cam0_fifo_read_enable  (cam1_fifo_read_enable),
        .cam0_fifo_read_data    (cam1_fifo_read_data),
        .cam0_fifo_data_valid   (cam1_fifo_data_valid),
        .cam0_fifo_empty        (cam1_fifo_empty),
        .cam0_fifo_afull        (cam1_fifo_afull),
        .cam0_fifo_full         (cam1_fifo_full),
        .cam0_fifo_overflow     (cam1_fifo_overflow)
    );

    // Bus Interface
    imager_apb_interface img_apb (
        .clk        (clk),
        .reset      (reset),
        .PSEL       (PSEL),
        .PENABLE    (PENABLE),
        .PWRITE     (PWRITE),
        .PADDR      (PADDR),
        .PWDATA     (PWDATA),
        .PREADY     (PREADY),
        .PRDATA     (PRDATA),
        .PSLVERR    (PSLVERR),

        .pulse_counts   (pulse_counts),
        .track_counts   (track_counts),

        .cam0_controller_busy       (cam0_controller_busy),
        .cam0_frame_capture_done    (cam0_frame_capture_done),
        .cam0_frame_capture_start   (cam0_frame_capture_start),
        .cam0_reset                 (cam0_reset),
        .cam0_vsw_value             (cam0_vsw_value),
        .cam0_hsw_value             (cam0_hsw_value),
        .cam0_vref_value            (cam0_vref_value),
        .cam0_config_value          (cam0_config_value),
        .cam0_nbias_value           (cam0_nbias_value),
        .cam0_aobias_value          (cam0_aobias_value),
        .cam0_val_offset            (cam0_offset_val),
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

        .cam1_controller_busy       (cam1_controller_busy),
        .cam1_frame_capture_done    (cam1_frame_capture_done),
        .cam1_frame_capture_start   (cam1_frame_capture_start),
        .cam1_reset                 (cam1_reset),
        .cam1_vsw_value             (cam1_vsw_value),
        .cam1_hsw_value             (cam1_hsw_value),
        .cam1_vref_value            (cam1_vref_value),
        .cam1_config_value          (cam1_config_value),
        .cam1_nbias_value           (cam1_nbias_value),
        .cam1_aobias_value          (cam1_aobias_value),
        .cam1_val_offset            (cam1_offset_val),
        .cam1_fifo_empty            (cam1_fifo_empty),
        .cam1_fifo_afull            (cam1_fifo_afull),
        .cam1_fifo_full             (cam1_fifo_full),
        .cam1_fifo_overflow         (cam1_fifo_overflow),
        .cam1_fifo_read_data        (cam1_fifo_read_data),
        .cam1_fifo_data_valid       (cam1_fifo_data_valid),
        .cam1_fifo_read_enable      (cam1_fifo_read_enable),
        .cam1_mask_write_enable     (cam1_mask_write_enable),
        .cam1_mask_addr             (cam1_mask_addr),
        .cam1_mask_data             (cam1_mask_data)
    );

endmodule

