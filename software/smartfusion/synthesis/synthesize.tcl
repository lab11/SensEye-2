add_file ../constraint/synthesis.sdc
set_option -part A2F500M3G
set_option -package FBGA484
set_option -fanout_limit 3000
set_option -frequency 80
project -run synthesis
