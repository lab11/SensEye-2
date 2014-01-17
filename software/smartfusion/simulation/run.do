quietly set ACTELLIBNAME smartfusion
quietly set PROJECT_DIR "Z:/russ/private/research/senseye/git/sw/smartfusion/impl/libero/insight"
source "${PROJECT_DIR}/simulation/bfmtovec_compile.tcl";source "${PROJECT_DIR}/simulation/CompileDssBfm.tcl";

if {[file exists ../designer/impl1/simulation/postlayout/_info]} {
   echo "INFO: Simulation library ../designer/impl1/simulation/postlayout already exists"
} else {
   vlib ../designer/impl1/simulation/postlayout
}
vmap postlayout ../designer/impl1/simulation/postlayout
vmap smartfusion "C:/Microsemi/Libero_v10.1/Designer/lib/modelsim/precompiled/vlog/smartfusion"
vmap proasic3 "C:/Microsemi/Libero_v10.1/Designer/lib/modelsim/precompiled/vlog/smartfusion"
vmap MSS_BFM_LIB "../component/Actel/SmartFusionMSS/MSS/2.5.106/mti/user_verilog/MSS_BFM_LIB"
vcom -work MSS_BFM_LIB -force_refresh
vlog -work MSS_BFM_LIB -force_refresh
vmap COREAPB3_LIB "../component/Actel/DirectCore/CoreAPB3/3.0.103/mti/user_vlog/COREAPB3_LIB"
vcom -work COREAPB3_LIB -force_refresh
vlog -work COREAPB3_LIB -force_refresh
vmap COREAHBLITE_LIB "../component/Actel/DirectCore/CoreAHBLite/3.1.102/mti/user_vlog/COREAHBLITE_LIB"
vcom -work COREAHBLITE_LIB -force_refresh
vlog -work COREAHBLITE_LIB -force_refresh

vlog  -work postlayout "${PROJECT_DIR}/designer/impl1/TOPLEVEL_ba.v"
vlog "+incdir+${PROJECT_DIR}/component/work/TOPLEVEL"  -work postlayout "${PROJECT_DIR}/component/work/TOPLEVEL/testbench.v"

vsim -L smartfusion -L postlayout -L MSS_BFM_LIB -L COREAPB3_LIB -L COREAHBLITE_LIB  -t 1ps -sdfmax /TOPLEVEL_0=${PROJECT_DIR}/designer/impl1/TOPLEVEL_ba.sdf postlayout.testbench
add wave /testbench/*
run 1000ns
