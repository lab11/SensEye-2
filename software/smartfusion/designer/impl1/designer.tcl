# Actel Tcl Script
# Designer


new_design \
    -name "TOPLEVEL" \
    -family "SmartFusion" \
    -path {.} \
    -block "off" 

set_device \
    -die "A2F500M3G" \
    -package "484 FBGA" \
    -speed "STD" \
    -voltage "1.5" \
    -iostd "LVTTL" \
    -jtag "yes" \
    -probe "yes" \
    -trst "yes" \
    -temprange "-40 25 100" \
    -voltrange "COM" \
    -vcci_1.5_voltrange "COM" \
    -vcci_1.8_voltrange "COM" \
    -vcci_2.5_voltrange "COM" \
    -vcci_3.3_voltrange "COM" \
    -vcci_3.3_widerange "no" 

set_defvar "BA_NAME" {TOPLEVEL_ba} 

import_source \
    -format "edif" -edif_flavor "GENERIC" {../../synthesis/TOPLEVEL.edn} \
    -format "sdc" -scenario "Primary" {../../constraint/designer.sdc} \
    -format "pdc" -abort_on_error "yes" {../../constraint/designer.pdc} \
    -merge_physical "no" -merge_timing "no" 

compile \
    -pdc_abort_on_error "on" \
    -pdc_eco_display_unmatched_objects "on" \
    -pdc_eco_max_warnings 10000 \
    -demote_globals "off" \
    -demote_globals_max_fanout 12 \
    -promote_globals "off" \
    -promote_globals_min_fanout 200 \
    -promote_globals_max_limit 0 \
    -localclock_max_shared_instances 12 \
    -localclock_buffer_tree_max_fanout 12 \
    -combine_register "off" \
    -delete_buffer_tree "off" \
    -delete_buffer_tree_max_fanout 12 \
    -report_high_fanout_nets_limit 10 

st_set_options \
    -interclockdomain_analysis yes

st_commit

layout -timing_driven \
    -mindel_repair "on"

export -format "FDB" \
 {./TOPLEVEL.fdb}

save_design \
    {./TOPLEVEL.adb} 
