# Synopsys, Inc. constraint file
# C:/Actelprj/SDRv2_Linux_AHB/constraint/synthesis.sdc
# Written on Thu Sep 13 14:32:03 2012
# by Synplify Pro, E-2010.09A-1 Scope Editor

#
# Collections
#

#
# Clocks
#
define_clock   {n:MSS_CORE2_0.MSS_CCC_0.FAB_CLK} -name {n:MSS_CORE2_0.MSS_CCC_0.FAB_CLK}  -freq 40 -clockgroup default_clkgroup_0
define_clock -disable   {n:psram_cr_0.cr_int_i0.un1_ac_counter_4} -name {n:psram_cr_0.cr_int_i0.un1_ac_counter_4}  -clockgroup default_clkgroup_1

#
# Clock to Clock
#

#
# Inputs/Outputs
#
define_input_delay -disable      -default -improve 0.00 -route 0.00
define_output_delay -disable     -default -improve 0.00 -route 0.00
define_output_delay -disable     {led_d2} -improve 0.00 -route 0.00
define_output_delay -disable     {led_d3} -improve 0.00 -route 0.00
define_output_delay -disable     {led_d1} -improve 0.00 -route 0.00
define_input_delay -disable      {CLK50} -improve 0.00 -route 0.00
define_output_delay -disable     {Phy_RMII_CLK} -improve 0.00 -route 0.00
define_output_delay -disable     {psram_ncs0} -improve 0.00 -route 0.00
define_output_delay -disable     {psram_nwe} -improve 0.00 -route 0.00
define_output_delay -disable     {psram_ncs1} -improve 0.00 -route 0.00
define_output_delay -disable     {psram_noe1} -improve 0.00 -route 0.00
define_output_delay -disable     {psram_noe0} -improve 0.00 -route 0.00
define_output_delay -disable     {led_d4} -improve 0.00 -route 0.00
define_input_delay -disable      {switch_sw1} -improve 0.00 -route 0.00
define_input_delay -disable      {switch_sw2} -improve 0.00 -route 0.00
define_input_delay -disable      {switch_sw3} -improve 0.00 -route 0.00
define_input_delay -disable      {switch_sw4} -improve 0.00 -route 0.00
define_input_delay -disable      {switch_sw5} -improve 0.00 -route 0.00
define_input_delay -disable      {switch_dip1} -improve 0.00 -route 0.00
define_input_delay -disable      {switch_dip2} -improve 0.00 -route 0.00
define_input_delay -disable      {switch_dip3} -improve 0.00 -route 0.00
define_input_delay -disable      {switch_dip4} -improve 0.00 -route 0.00
define_output_delay -disable     {rs485_nre} -improve 0.00 -route 0.00
define_output_delay -disable     {rs485_de} -improve 0.00 -route 0.00
define_input_delay -disable      {psram_data[15:0]} -improve 0.00 -route 0.00
define_output_delay -disable     {psram_data[15:0]} -improve 0.00 -route 0.00
define_output_delay -disable     {psram_nbyte_en[1:0]} -improve 0.00 -route 0.00
define_output_delay -disable     {psram_address[24:0]} -improve 0.00 -route 0.00
define_output_delay -disable     {UART_1_TXD} -improve 0.00 -route 0.00
define_input_delay -disable      {UART_1_RXD} -improve 0.00 -route 0.00
define_output_delay -disable     {UART_0_TXD} -improve 0.00 -route 0.00
define_input_delay -disable      {UART_0_RXD} -improve 0.00 -route 0.00
define_input_delay -disable      {I2C_0_SCL} -improve 0.00 -route 0.00
define_output_delay -disable     {I2C_0_SCL} -improve 0.00 -route 0.00
define_input_delay -disable      {I2C_0_SDA} -improve 0.00 -route 0.00
define_output_delay -disable     {I2C_0_SDA} -improve 0.00 -route 0.00
define_output_delay -disable     {SPI_1_DO} -improve 0.00 -route 0.00
define_input_delay -disable      {SPI_1_SS} -improve 0.00 -route 0.00
define_output_delay -disable     {SPI_1_SS} -improve 0.00 -route 0.00
define_input_delay -disable      {SPI_1_CLK} -improve 0.00 -route 0.00
define_output_delay -disable     {SPI_1_CLK} -improve 0.00 -route 0.00
define_input_delay -disable      {SPI_1_DI} -improve 0.00 -route 0.00
define_output_delay -disable     {SPI_0_DO} -improve 0.00 -route 0.00
define_input_delay -disable      {SPI_0_CLK} -improve 0.00 -route 0.00
define_output_delay -disable     {SPI_0_CLK} -improve 0.00 -route 0.00
define_input_delay -disable      {SPI_0_SS} -improve 0.00 -route 0.00
define_output_delay -disable     {SPI_0_SS} -improve 0.00 -route 0.00
define_input_delay -disable      {SPI_0_DI} -improve 0.00 -route 0.00
define_input_delay -disable      {I2C_1_SDA} -improve 0.00 -route 0.00
define_output_delay -disable     {I2C_1_SDA} -improve 0.00 -route 0.00
define_input_delay -disable      {I2C_1_SCL} -improve 0.00 -route 0.00
define_output_delay -disable     {I2C_1_SCL} -improve 0.00 -route 0.00
define_input_delay -disable      {MAC_MDIO} -improve 0.00 -route 0.00
define_output_delay -disable     {MAC_MDIO} -improve 0.00 -route 0.00
define_output_delay -disable     {MAC_MDC} -improve 0.00 -route 0.00
define_input_delay -disable      {MAC_RXD[1:0]} -improve 0.00 -route 0.00
define_output_delay -disable     {MAC_TXD[1:0]} -improve 0.00 -route 0.00
define_input_delay -disable      {MAC_CRSDV} -improve 0.00 -route 0.00
define_input_delay -disable      {MAC_RXER} -improve 0.00 -route 0.00
define_output_delay -disable     {MAC_TXEN} -improve 0.00 -route 0.00
define_input_delay -disable      {MSS_RESET_N} -improve 0.00 -route 0.00
define_input_delay -disable      {MAINXIN} -improve 0.00 -route 0.00

#
# Registers
#

#
# Delay Paths
#

#
# Attributes
#

#
# I/O Standards
#
define_io_standard -disable      -default_input -delay_type input
define_io_standard -disable      -default_output -delay_type output
define_io_standard -disable      -default_bidir -delay_type bidir
define_io_standard -disable      {led_d2} -delay_type output
define_io_standard -disable      {led_d3} -delay_type output
define_io_standard -disable      {led_d1} -delay_type output
define_io_standard -disable      {CLK50} -delay_type input
define_io_standard -disable      {Phy_RMII_CLK} -delay_type output
define_io_standard -disable      {psram_ncs0} -delay_type output
define_io_standard -disable      {psram_nwe} -delay_type output
define_io_standard -disable      {psram_ncs1} -delay_type output
define_io_standard -disable      {psram_noe1} -delay_type output
define_io_standard -disable      {psram_noe0} -delay_type output
define_io_standard -disable      {led_d4} -delay_type output
define_io_standard -disable      {switch_sw1} -delay_type input
define_io_standard -disable      {switch_sw2} -delay_type input
define_io_standard -disable      {switch_sw3} -delay_type input
define_io_standard -disable      {switch_sw4} -delay_type input
define_io_standard -disable      {switch_sw5} -delay_type input
define_io_standard -disable      {switch_dip1} -delay_type input
define_io_standard -disable      {switch_dip2} -delay_type input
define_io_standard -disable      {switch_dip3} -delay_type input
define_io_standard -disable      {switch_dip4} -delay_type input
define_io_standard -disable      {rs485_nre} -delay_type output
define_io_standard -disable      {rs485_de} -delay_type output
define_io_standard -disable      {psram_data[15:0]} -delay_type bidir
define_io_standard -disable      {psram_nbyte_en[1:0]} -delay_type output
define_io_standard -disable      {psram_address[24:0]} -delay_type output
define_io_standard -disable      {UART_1_TXD} -delay_type output
define_io_standard -disable      {UART_1_RXD} -delay_type input
define_io_standard -disable      {UART_0_TXD} -delay_type output
define_io_standard -disable      {UART_0_RXD} -delay_type input
define_io_standard -disable      {I2C_0_SCL} -delay_type bidir
define_io_standard -disable      {I2C_0_SDA} -delay_type bidir
define_io_standard -disable      {SPI_1_DO} -delay_type output
define_io_standard -disable      {SPI_1_SS} -delay_type bidir
define_io_standard -disable      {SPI_1_CLK} -delay_type bidir
define_io_standard -disable      {SPI_1_DI} -delay_type input
define_io_standard -disable      {SPI_0_DO} -delay_type output
define_io_standard -disable      {SPI_0_CLK} -delay_type bidir
define_io_standard -disable      {SPI_0_SS} -delay_type bidir
define_io_standard -disable      {SPI_0_DI} -delay_type input
define_io_standard -disable      {I2C_1_SDA} -delay_type bidir
define_io_standard -disable      {I2C_1_SCL} -delay_type bidir
define_io_standard -disable      {MAC_MDIO} -delay_type bidir
define_io_standard -disable      {MAC_MDC} -delay_type output
define_io_standard -disable      {MAC_RXD[1:0]} -delay_type input
define_io_standard -disable      {MAC_TXD[1:0]} -delay_type output
define_io_standard -disable      {MAC_CRSDV} -delay_type input
define_io_standard -disable      {MAC_RXER} -delay_type input
define_io_standard -disable      {MAC_TXEN} -delay_type output
define_io_standard -disable      {MSS_RESET_N} -delay_type input
define_io_standard -disable      {MAINXIN} -delay_type input

#
# Compile Points
#

#
# Other
#
