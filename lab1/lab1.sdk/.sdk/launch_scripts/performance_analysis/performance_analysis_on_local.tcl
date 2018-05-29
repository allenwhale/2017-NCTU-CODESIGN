connect -url tcp:127.0.0.1:3121
source C:/Users/shlab_89/Desktop/lab1/lab1.sdk/lab1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248763397"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248763397" && level==0} -index 1
fpga -file C:/Users/shlab_89/Desktop/lab1/lab1.sdk/lab1_wrapper_hw_platform_0/lab1_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248763397"} -index 0
loadhw C:/Users/shlab_89/Desktop/lab1/lab1.sdk/lab1_wrapper_hw_platform_0/system.hdf
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248763397"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248763397"} -index 0
dow C:/Users/shlab_89/Desktop/lab1/lab1.sdk/find_motion/Release/find_motion.elf
bpadd -addr &main
