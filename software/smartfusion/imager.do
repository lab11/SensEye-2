##################################
# A very simple modelsim do file #
##################################

# 1) Create a library for working in
mkdir imagerSim
cd imagerSim
vlib work

# 2) Compile the imager
#vcom -check_synthesis ../hdl/imager_apb_interface.v
vcom -check_synthesis ../hdl/fifo_pixel_data.v
vcom -check_synthesis ../hdl/framemask.v
vcom -check_synthesis ../hdl/stonyman_controller.v
vcom -check_synthesis ../hdl/adc_controller.v
vcom -check_synthesis ../hdl/pupil_detect.v
vcom -check_synthesis ../hdl/imager.v
vcom -check_synthesis ../hdl/stonyman_2_testbench/imager_tb.v

# 3) Load it for simulation
vsim &

# 4) Open some selected windows for viewing
view objects
view locals
view source
view wave

# 5) Show some of the signals in the wave window
add wave -noupdate -divider -height 32 Inputs
add wave -noupdate a
add wave -noupdate b
add wave -noupdate -divider -height 32 Outputs
add wave -noupdate s
add wave -noupdate c
