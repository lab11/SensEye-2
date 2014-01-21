///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: University of Michigan
//
// File: imager_apb_interface.v
//
// Description:
//  APB interface for the Stonyman controller
//  Note: CAM0 is the eye-tracker. CAM1 is field of view
//
// Targeted device: <Family::SmartFusion> <Die::A2F500M3G> <Package::484 FBGA>
// Author: Branden Ghena
//
///////////////////////////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////
// REGISTER LAYOUT
/////////////////////////////////////////////////
// offset       behavior  name           fields (msb...lsb)
// -----------  --------  -------------  ----------------------------
// 0x0000_0000  w         GLOB_START     xxxxxxxx _ xxxxxxxx _ xxxxxxxx _ xxxxxx cam1_start cam0_start
// 0x0000_0000  r         GLOB_STATUS    00000000 _ 00000000 _ 00000000 _ 00000000
// 0x0000_0004  w         GLOB_RESET     xxxxxxxx _ xxxxxxxx _ xxxxxxxx _ xxxxxx cam1_reset cam0_reset
// 0x0000_0004  r         RESERVED
// ...          n/a       RESERVED
// 0x0000_007C  n/a       RESERVED
// 0x0000_0080  w         CAM0_FRAMEMASK x row[6:0] _ xxxxx col[2:0] _ data[15:0]
// 0x0000_0080  r         CAM0_STATUS    00000000 _ 00000000 _ 00000000 _ 0000 overflow afull full empty
// 0x0000_0084  w         CAM0_SETTINGS1 xx vref[5:0] _ xx config[5:0] _ xx nbias[5:0] _ xx aobias[5:0]
// 0x0000_0084  r         CAM0_PXDATA    data[31:0]
// 0x0000_0088  w         CAM0_SETTINGS2 xxxxxxxx _ xxxxxxxx _ vsw[7:0] _ hsw[7:0]
// 0x0000_0088  r         RESERVED
// 0x0000_008C  n/a       RESERVED
// 0x0000_0090  w         CAM1_FRAMEMASK x row[6:0] _ xxxxx col[2:0] _ data[15:0]
// 0x0000_0090  r         CAM1_STATUS    00000000 _ 00000000 _ 00000000 _ 0000 overflow afull full empty
// 0x0000_0094  w         CAM1_SETTINGS1 xx vref[5:0] _ xx config[5:0] _ xx nbias[5:0] _ xx aobias[5:0]
// 0x0000_0094  r         CAM1_PXDATA    data[31:0]
// 0x0000_0098  w         CAM1_SETTINGS2 xxxxxxxx _ xxxxxxxx _ vsw[7:0] _ hsw[7:0]
// 0x0000_0098  r         RESERVED
// 0x0000_009C  n/a       RESERVED
// 0x0000_00A0  n/a       RESERVED
// ...          n/a       RESERVED
// 0x0000_00FC  n/a       RESERVED
///////////////////////////////////////////////////////////////////////////////

// Default camera settings
`define VIN_3V3
//`define VIN_5V0

`define VAL_VREF_5V0   (40)
`define VAL_NBIAS_5V0  (55)
`define VAL_AOBIAS_5V0 (55)

`define VAL_VREF_3V3   (41)
`define VAL_NBIAS_3V3  (50)
`define VAL_AOBIAS_3V3 (50)

`ifdef VIN_5V0
 `define CAM0_VREF_VALUE   (`VAL_VREF_5V0)
 `define CAM0_NBIAS_VALUE  (`VAL_NBIAS_5V0)
 `define CAM0_AOBIAS_VALUE (`VAL_AOBIAS_5V0)
 `define CAM1_VREF_VALUE   (`VAL_VREF_5V0)
 `define CAM1_NBIAS_VALUE  (`VAL_NBIAS_5V0)
 `define CAM1_AOBIAS_VALUE (`VAL_AOBIAS_5V0)
`endif // VIN_5V0
`ifdef VIN_3V3
 `define CAM0_VREF_VALUE   (`VAL_VREF_3V3)
 `define CAM0_NBIAS_VALUE  (`VAL_NBIAS_3V3)
 `define CAM0_AOBIAS_VALUE (`VAL_AOBIAS_3V3)
 `define CAM1_VREF_VALUE   (`VAL_VREF_3V3)
 `define CAM1_NBIAS_VALUE  (`VAL_NBIAS_3V3)
 `define CAM1_AOBIAS_VALUE (`VAL_AOBIAS_3V3)
`endif // VIN_3V3

`define CAM0_VSW_VALUE    (0)
`define CAM0_HSW_VALUE    (0)
`define CAM0_CONFIG_VALUE (17)
`define CAM1_VSW_VALUE    (0)
`define CAM1_HSW_VALUE    (0)
`define CAM1_CONFIG_VALUE (17)

// Register Map Definitions
// writing
`define GLOB_START     8'h00
`define GLOB_RESET     8'h04
`define CAM0_FRAMEMASK 8'h80
`define CAM0_SETTINGS1 8'h84
`define CAM0_SETTINGS2 8'h88
`define CAM1_FRAMEMASK 8'h90
`define CAM1_SETTINGS1 8'h94
`define CAM1_SETTINGS2 8'h98
// reading
`define GLOB_STATUS    8'h00
`define CAM0_STATUS    8'h80
`define CAM0_PXDATA    8'h84
`define CAM1_STATUS    8'h90
`define CAM1_PXDATA    8'h94

module imager_apb_interface (
    /* APB SIGNALS */
    input wire        PCLK,
    input wire        PRESERN,
    input wire        PSEL,
    input wire        PENABLE,
    input wire        PWRITE,
    input wire [31:0] PADDR,
    input wire [31:0] PWDATA,
    
    output wire       PREADY,
    output reg [31:0] PRDATA,
    output reg        PSLVERR,

    /* CAM0 Interface */
    input wire cam0_done,
    output reg cam0_start,
    output reg cam0_reset,
    output reg [7:0] cam0_vsw_value,
    output reg [7:0] cam0_hsw_value,
    output reg [5:0] cam0_vref_value,
    output reg [5:0] cam0_config_value,
    output reg [5:0] cam0_nbias_value,
    output reg [5:0] cam0_aobias_value,

    /* CAM0 FIFO */
    input wire cam0_fifo_empty,
    input wire cam0_fifo_afull,
    input wire cam0_fifo_full,
    input wire cam0_fifo_overflow,
    input wire [31:0] cam0_fifo_data,
    input wire cam0_fifo_data_valid,
    output reg cam0_fifo_read_enable,

    /* CAM0 Framemask */
    output reg cam0_mask_write_enable,
    output reg [9:0] cam0_mask_addr,
    output reg [15:0] cam0_mask_data,

    /* CAM1 Interface */
    input wire cam1_done,
    output reg cam1_start,
    output reg cam1_reset,
    output reg [7:0] cam1_vsw_value,
    output reg [7:0] cam1_hsw_value,
    output reg [5:0] cam1_vref_value,
    output reg [5:0] cam1_config_value,
    output reg [5:0] cam1_nbias_value,
    output reg [5:0] cam1_aobias_value,

    /* CAM1 FIFO */
    input wire cam1_fifo_empty,
    input wire cam1_fifo_afull,
    input wire cam1_fifo_full,
    input wire cam1_fifo_overflow,
    input wire [31:0] cam1_fifo_data,
    input wire cam1_fifo_data_valid,
    output reg cam1_fifo_read_enable,

    /* CAM1 Framemask */
    output reg cam1_mask_write_enable,
    output reg [9:0] cam1_mask_addr,
    output reg [15:0] cam1_mask_data
    );

    reg cam0_busy;
    reg cam1_busy;

    reg [31:0] cam0_pixel_data;
    reg [31:0] cam1_pixel_data;
    reg cam0_have_data;
    reg cam1_have_data;
    reg cam0_requested_data;
    reg cam1_requested_data;

    wire bus_write;
    wire bus_read;
    assign bus_write = (PENABLE && PWRITE && PSEL); // read data now
    assign bus_read  = (~PWRITE && PSEL); // have data ready for next cycle

    wire cam0_request_data;
    wire cam1_request_data;
    assign cam0_request_data = ((!cam0_have_data && !cam0_requested_data) ||
                                (bus_read && (PADDR[7:0] == `CAM0_PXDATA) &&
                                (cam0_have_data || cam0_fifo_data_valid)));
    assign cam1_request_data = ((!cam1_have_data && !cam1_requested_data) ||
                                (bus_read && (PADDR[7:0] == `CAM1_PXDATA) &&
                                (cam1_have_data || cam1_fifo_data_valid)));

    wire waiting_on_fifo;
    assign waiting_on_fifo = (bus_read &&
            (((PADDR[7:0] == `CAM0_PXDATA) && !(cam0_have_data || cam0_fifo_data_valid)) ||
             ((PADDR[7:0] == `CAM1_PXDATA) && !(cam1_have_data || cam1_fifo_data_valid))));
    
    // Ready unless waiting for pixel data from the FIFOs
    assign PREADY = (PENABLE && !waiting_on_fifo);

    always @(posedge PCLK) begin
        if (~PRESERN) begin
            PSLVERR <= 0;
            PRDATA <= 32'b0;
            
            cam0_start <= 0;
            cam1_start <= 0;
            cam0_reset <= 0;
            cam1_reset <= 0;
            cam0_busy  <= 0;
            cam1_busy  <= 0;
            
            cam0_vsw_value    <= `CAM0_VSW_VALUE;
            cam0_hsw_value    <= `CAM0_HSW_VALUE;
            cam0_vref_value   <= `CAM0_VREF_VALUE;
            cam0_config_value <= `CAM0_CONFIG_VALUE;
            cam0_nbias_value  <= `CAM0_NBIAS_VALUE;
            cam0_aobias_value <= `CAM0_AOBIAS_VALUE;
            cam1_vsw_value    <= `CAM1_VSW_VALUE;
            cam1_hsw_value    <= `CAM1_HSW_VALUE;
            cam1_vref_value   <= `CAM1_VREF_VALUE;
            cam1_config_value <= `CAM1_CONFIG_VALUE;
            cam1_nbias_value  <= `CAM1_NBIAS_VALUE;
            cam1_aobias_value <= `CAM1_AOBIAS_VALUE;
            
            cam0_fifo_read_enable <= 0;
            cam1_fifo_read_enable <= 0;

            cam0_mask_write_enable <= 0;
            cam0_mask_addr <= 0;
            cam0_mask_data <= 0;
            cam1_mask_write_enable <= 0;
            cam1_mask_addr <= 0;
            cam1_mask_data <= 0;

            cam0_pixel_data <= 32'b0;
            cam1_pixel_data <= 32'b0;
            cam0_have_data <= 0;
            cam1_have_data <= 0;
            cam0_requested_data <= 0;
            cam1_requested_data <= 0;

        end else begin
            PSLVERR <= 0; // No errors
            PRDATA <= 32'b0;
            
            cam0_start <= 0;
            cam1_start <= 0;
            cam0_reset <= 0;
            cam1_reset <= 0;
            cam0_fifo_read_enable <= 0;
            cam1_fifo_read_enable <= 0;
            cam0_mask_write_enable <= 0;
            cam0_mask_addr <= 0;
            cam0_mask_data <= 0;
            cam1_mask_write_enable <= 0;
            cam1_mask_addr <= 0;
            cam1_mask_data <= 0;

            cam0_busy <= cam0_busy;
            cam1_busy <= cam1_busy;
            cam0_vsw_value    <= cam0_vsw_value;
            cam0_hsw_value    <= cam0_hsw_value;
            cam0_vref_value   <= cam0_vref_value;
            cam0_config_value <= cam0_config_value;
            cam0_nbias_value  <= cam0_nbias_value;
            cam0_aobias_value <= cam0_aobias_value;
            cam1_vsw_value    <= cam1_vsw_value;
            cam1_hsw_value    <= cam1_hsw_value;
            cam1_vref_value   <= cam1_vref_value;
            cam1_config_value <= cam1_config_value;
            cam1_nbias_value  <= cam1_nbias_value;
            cam1_aobias_value <= cam1_aobias_value;
            cam0_pixel_data <= cam0_pixel_data;
            cam1_pixel_data <= cam1_pixel_data;
            cam0_have_data  <= cam0_have_data;
            cam1_have_data  <= cam1_have_data;
            cam0_requested_data <= cam0_requested_data;
            cam1_requested_data <= cam1_requested_data;

            // Monitor the stonyman controller
            if (cam0_done) begin
                cam0_busy <= 0;
            end
            if (cam1_done) begin
                cam1_busy <= 1;
            end

            // Read data from the FIFO
            if (cam0_fifo_data_valid) begin
                cam0_pixel_data <= cam0_fifo_data;
                cam0_have_data <= 1;
                cam0_requested_data <= 0;
            end
            if (cam1_fifo_data_valid) begin
                cam1_pixel_data <= cam1_fifo_data;
                cam1_have_data <= 1;
                cam1_requested_data <= 0;
            end

            // Interact with bus
            if (bus_write) begin
                case (PADDR[7:0])
                    `GLOB_START: begin
                        cam0_start <= PWDATA[0];
                        if (PWDATA[0]) begin
                            cam0_busy <= 1;
                        end

                        cam1_start <= PWDATA[1];
                        if (PWDATA[1]) begin
                            cam1_busy <= 1;
                        end
                    end
                    `GLOB_RESET: begin
                        cam0_reset <= PWDATA[0];
                        if (PWDATA[0]) begin
                            cam0_busy <= 0;
                            cam0_have_data <= 0;
                            cam0_requested_data <= 0;
                        end

                        cam1_reset <= PWDATA[1];
                        if (PWDATA[1]) begin
                            cam1_busy <= 0;
                            cam1_have_data <= 0;
                            cam1_requested_data <= 0;
                        end
                    end
                    `CAM0_FRAMEMASK: begin
                        cam0_mask_write_enable <= 1;
                        cam0_mask_addr <= {PWDATA[30:24], PWDATA[18:16]};
                        cam0_mask_data <= PWDATA[15:0];
                    end
                    `CAM0_SETTINGS1: begin
                        cam0_vref_value   <= PWDATA[29:24];
                        cam0_config_value <= PWDATA[21:16];
                        cam0_nbias_value  <= PWDATA[13:8];
                        cam0_aobias_value <= PWDATA[5:0];
                    end
                    `CAM0_SETTINGS2: begin
                        cam0_vsw_value <= PWDATA[15:8];
                        cam0_hsw_value <= PWDATA[7:0];
                    end
                    `CAM1_FRAMEMASK: begin
                        cam1_mask_write_enable <= 1;
                        cam1_mask_addr <= {PWDATA[30:24], PWDATA[18:16]};
                        cam1_mask_data <= PWDATA[15:0];
                    end
                    `CAM1_SETTINGS1: begin
                        cam1_vref_value   <= PWDATA[29:24];
                        cam1_config_value <= PWDATA[21:16];
                        cam1_nbias_value  <= PWDATA[13:8];
                        cam1_aobias_value <= PWDATA[5:0];
                    end
                    `CAM1_SETTINGS2: begin
                        cam1_vsw_value <= PWDATA[15:8];
                        cam1_hsw_value <= PWDATA[7:0];
                    end
                    default: begin
                        // Do nothing!!
                    end
                endcase
            end else if (bus_read) begin
                case (PADDR[7:0])
                    `GLOB_STATUS: begin
                        PRDATA[1:0] <= {cam1_busy, cam0_busy};
                    end
                    `CAM0_STATUS: begin
                        PRDATA[0] <= cam0_fifo_empty;
                        PRDATA[1] <= cam0_fifo_afull;
                        PRDATA[2] <= cam0_fifo_full;
                        PRDATA[3] <= cam0_fifo_overflow;
                    end
                    `CAM0_PXDATA: begin
                        if (cam0_have_data) begin
                            PRDATA <= cam0_pixel_data;
                            cam0_have_data <= 0;
                            cam0_requested_data <= 0;
                        end else if (cam0_fifo_data_valid) begin
                            PRDATA <= cam0_fifo_data;
                            cam0_have_data <= 0;
                            cam0_requested_data <= 0;
                        end
                    end
                    `CAM1_STATUS: begin
                        PRDATA[0] <= cam1_fifo_empty;
                        PRDATA[1] <= cam1_fifo_afull;
                        PRDATA[2] <= cam1_fifo_full;
                        PRDATA[3] <= cam1_fifo_overflow;
                    end
                    `CAM1_PXDATA: begin
                        if (cam1_have_data) begin
                            PRDATA <= cam1_pixel_data;
                            cam1_have_data <= 0;
                            cam1_requested_data <= 0;
                        end else if (cam1_fifo_data_valid) begin
                            PRDATA <= cam1_fifo_data;
                            cam1_have_data <= 0;
                            cam1_requested_data <= 0;
                        end
                    end
                    default : begin
                        // Do nothing!!
                    end
                endcase
            end
        end

        // Request more data from FIFO
        if (cam0_request_data && !cam0_fifo_empty) begin
            cam0_fifo_read_enable <= 1;
            cam0_requested_data <= 1;
        end
        if (cam1_request_data && !cam1_fifo_empty) begin
            cam1_fifo_read_enable <= 1;
            cam1_requested_data <= 1;
        end
    end

endmodule

