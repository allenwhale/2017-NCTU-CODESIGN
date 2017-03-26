connect -url tcp:127.0.0.1:3121
source C:/Users/shlab_89/Desktop/lab1/lab1.sdk/lab1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248763397"} -index 0
loadhw C:/Users/shlab_89/Desktop/lab1/lab1.sdk/lab1_wrapper_hw_platform_0/system.hdf
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248763397"} -index 0
stop
ps7_init
ps7_post_config
