///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: University of Michigan
//
// File: imager_apb_interface_tb.v
//
// Description:
//  APB interface for the Stonyman controller
//  Note: CAM0 is the eye-tracker. CAM1 is field of view
//
// Targeted device: <Family::SmartFusion> <Die::A2F500M3G> <Package::484 FBGA>
// Author: Branden Ghena
//
///////////////////////////////////////////////////////////////////////////////////////////////////

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

module imager_apb_interface_tb ();
    reg        clk;
    reg        reset;
    
    /* APB SIGNALS */
    reg         PSEL;
    reg         PENABLE;
    reg         PWRITE;
    reg [31:0]  PADDR;
    reg [31:0]  PWDATA;
    
    wire        PREADY;
    wire [31:0] PRDATA;
    wire        PSLVERR;

    /* CAM0 Interface */
    reg cam0_frame_capture_done;
    wire cam0_frame_capture_start;
    wire cam0_reset;
    wire [7:0] cam0_vsw_value;
    wire [7:0] cam0_hsw_value;
    wire [5:0] cam0_vref_value;
    wire [5:0] cam0_config_value;
    wire [5:0] cam0_nbias_value;
    wire [5:0] cam0_aobias_value;

    /* CAM0 FIFO */
    reg cam0_fifo_empty;
    reg cam0_fifo_afull;
    reg cam0_fifo_full;
    reg cam0_fifo_overflow;
    reg [31:0] cam0_fifo_read_data;
    reg cam0_fifo_data_valid;
    wire cam0_fifo_read_enable;

    /* CAM0 Framemask */
    wire cam0_mask_write_enable;
    wire [9:0] cam0_mask_addr;
    wire [15:0] cam0_mask_data;

    /* CAM1 Interface */
    reg cam1_frame_capture_done;
    wire cam1_frame_capture_start;
    wire cam1_reset;
    wire [7:0] cam1_vsw_value;
    wire [7:0] cam1_hsw_value;
    wire [5:0] cam1_vref_value;
    wire [5:0] cam1_config_value;
    wire [5:0] cam1_nbias_value;
    wire [5:0] cam1_aobias_value;

    /* CAM1 FIFO */
    reg cam1_fifo_empty;
    reg cam1_fifo_afull;
    reg cam1_fifo_full;
    reg cam1_fifo_overflow;
    reg [31:0] cam1_fifo_read_data;
    reg cam1_fifo_data_valid;
    wire cam1_fifo_read_enable;

    /* CAM1 Framemask */
    wire cam1_mask_write_enable;
    wire [9:0] cam1_mask_addr;
    wire [15:0] cam1_mask_data;


    imager_apb_interface uut (
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

        initial begin
            // creates data file for gtkwave
            $dumpfile("imager_apb_interface.vcd");
            $dumpvars(0, uut);
        end

        integer timer;

        initial begin
            timer = 0;

            clk = 1;
            reset = 1;

            PSEL = 0;
            PENABLE = 0;
            PWRITE = 0;
            PADDR = 32'b0;
            PWDATA = 32'b0;

            cam0_frame_capture_done = 0;
            cam0_fifo_empty = 0;
            cam0_fifo_afull = 0;
            cam0_fifo_full = 0;
            cam0_fifo_overflow = 0;
            cam0_fifo_read_data = 32'b0;
            cam0_fifo_data_valid = 0;

            cam1_frame_capture_done = 0;
            cam1_fifo_empty = 0;
            cam1_fifo_afull = 0;
            cam1_fifo_full = 0;
            cam1_fifo_overflow = 0;
            cam1_fifo_read_data = 0;
            cam1_fifo_data_valid = 0;
        end

        always begin
            #5 clk = ~clk;
        end

        task DISPLAY_CAM0_SETTINGS;
        begin
            $display("**************************************************");
            $display(" VSW\tHSW\tVREF\tCONFIG\tNBIAS\tAOBIAS");
            $display(" %d\t%d\t%d\t%d\t%d\t%d",
                    cam0_vsw_value, cam0_hsw_value, cam0_vref_value,
                    cam0_config_value, cam0_nbias_value, cam0_aobias_value);
            $display("**************************************************");
        end
        endtask

        task BUS_WRITE;
            input  [7:0] address;
            input [31:0] data;
        begin
            @(posedge clk);
            #1;
            //$display("SEL");
            PSEL = 1;
            PWRITE = 1;
            PADDR[7:0] = address;
            PWDATA = data;

            @(posedge clk);
            #1;
            //$display("Enable");
            PENABLE = 1;

            @(posedge clk);
            #1;
            //$display("Complete");
            PSEL = 0;
            PENABLE = 0;
            PWRITE = 0;
            PADDR = 32'b0;
            PWDATA = 32'b0;
        end
        endtask

        task BUS_READ;
            input  [7:0] address;
        begin
            @(posedge clk);
            #1;
            //$display("SEL");
            PSEL = 1;
            PWRITE = 0;
            PADDR[7:0] = address;

            @(posedge clk);
            #1;
            //$display("Enable");
            PENABLE = 1;

            @(posedge clk);
            #1;
            while (~PREADY) begin
                //$display("Waiting");
                @(posedge clk);
                #1;
            end

            //$display("Complete");
            PSEL = 0;
            PENABLE = 0;
            PWRITE = 0;
            PADDR = 32'b0;
        end
        endtask

        always begin
            #10 if ($time > 10000) $finish;
        end

        // Simulate delayed FIFO
        always @(posedge clk) begin
            if (timer > 0) begin
                timer = timer-1;

                if (timer == 0) begin
                    cam0_fifo_read_data = 32'h7FA5A5F7;
                    cam0_fifo_data_valid = 1;
                    cam0_fifo_read_data <= #15 32'b0;
                    cam0_fifo_data_valid <= #15 0;
                end
            end
        end

        always @(posedge clk) begin
            $display("\t%4d\t%b\t%b\t0x%X\t%b\t%b\t%b\t%b\t0x%X\t\t0x%X\t\t%b\t%b",
                    $time, reset, PREADY, PRDATA,
                    cam0_frame_capture_start, cam0_reset, cam0_fifo_read_enable,
                    cam0_mask_write_enable, cam0_mask_addr, cam0_mask_data,
                    uut.cam0_have_data, uut.cam0_requested_data);
        end

        initial begin
            $display("\ttime\treset\tPREADY\tPRDATA\t\tstart\trst\tfifo\tmask_en\tmask_addr\tmask_data\thave\treqd");
            #50;
            reset = 0;
            DISPLAY_CAM0_SETTINGS();

            #10;
            // Test out Bus Writes
            BUS_WRITE(`GLOB_START, 32'h00000001);
            BUS_WRITE(`GLOB_RESET, 32'h00000001);
            
            BUS_WRITE(`CAM0_FRAMEMASK, 32'h7F071234);
            
            BUS_WRITE(`CAM0_SETTINGS1, 32'h3F3F3F3F);
            BUS_WRITE(`CAM0_SETTINGS2, 32'h0000FFFF);
            DISPLAY_CAM0_SETTINGS();
            
            BUS_WRITE(`CAM0_SETTINGS1, 32'h29113232);
            BUS_WRITE(`CAM0_SETTINGS2, 32'h00000000);
            DISPLAY_CAM0_SETTINGS();
            
            BUS_WRITE(`CAM1_FRAMEMASK, 32'h7F071234);
            BUS_WRITE(`CAM1_SETTINGS1, 32'h3F3F3F3F);
            BUS_WRITE(`CAM1_SETTINGS2, 32'h0000FFFF);
            BUS_WRITE(`CAM1_SETTINGS1, 32'h29113232);
            BUS_WRITE(`CAM1_SETTINGS2, 32'h00000000);

            // Test out Bus Reads
            BUS_READ(`GLOB_STATUS);
            BUS_WRITE(`GLOB_START, 32'h00000001);
            BUS_READ(`GLOB_STATUS);
            BUS_READ(`CAM0_STATUS);
            cam0_fifo_empty = 0;
            cam0_fifo_afull = 1;
            cam0_fifo_full = 0;
            cam0_fifo_overflow = 0;
            BUS_READ(`CAM0_STATUS);
            cam0_fifo_read_data = 32'hDEADBEEF;
            cam0_fifo_data_valid = 1;
            #20;
            cam0_fifo_data_valid = 0;
            cam0_fifo_read_data = 32'b0;
            BUS_READ(`CAM0_PXDATA);
            timer = 10;
            BUS_READ(`CAM0_PXDATA);


            #100;
            DISPLAY_CAM0_SETTINGS();
            $finish;
        end

endmodule

