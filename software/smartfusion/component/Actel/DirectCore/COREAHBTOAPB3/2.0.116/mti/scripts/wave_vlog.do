onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /testbench/COREAHBTOAPB3/HRESETN
add wave -noupdate -format Logic /testbench/COREAHBTOAPB3/HCLK
add wave -noupdate -format Literal -radix hexadecimal /testbench/COREAHBTOAPB3/HADDR
add wave -noupdate -format Logic /testbench/COREAHBTOAPB3/HREADY
add wave -noupdate -format Literal /testbench/COREAHBTOAPB3/HRESP
add wave -noupdate -format Logic /testbench/COREAHBTOAPB3/HSEL
add wave -noupdate -format Logic /testbench/COREAHBTOAPB3/HTRANS
add wave -noupdate -format Literal -radix hexadecimal /testbench/COREAHBTOAPB3/HRDATA
add wave -noupdate -format Logic /testbench/COREAHBTOAPB3/HREADYOUT
add wave -noupdate -format Literal -radix hexadecimal /testbench/COREAHBTOAPB3/HWDATA
add wave -noupdate -format Logic /testbench/COREAHBTOAPB3/HWRITE
add wave -noupdate -format Literal -radix hexadecimal /testbench/COREAHBTOAPB3/PADDR
add wave -noupdate -format Logic /testbench/COREAHBTOAPB3/PENABLE
add wave -noupdate -format Literal -radix hexadecimal /testbench/COREAHBTOAPB3/PRDATA
add wave -noupdate -format Logic /testbench/COREAHBTOAPB3/PREADY
add wave -noupdate -format Logic /testbench/COREAHBTOAPB3/PSEL
add wave -noupdate -format Logic /testbench/COREAHBTOAPB3/PSLVERR
add wave -noupdate -format Literal -radix hexadecimal /testbench/COREAHBTOAPB3/PWDATA
add wave -noupdate -format Logic /testbench/COREAHBTOAPB3/PWRITE
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {147441 ps} 0}
configure wave -namecolwidth 267
configure wave -valuecolwidth 264
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {81797 ps} {158853 ps}
