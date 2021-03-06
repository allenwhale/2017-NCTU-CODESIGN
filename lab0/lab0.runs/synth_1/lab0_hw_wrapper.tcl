# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir E:/COD/lab0/lab0.cache/wt [current_project]
set_property parent.project_path E:/COD/lab0/lab0.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
set_property ip_output_repo e:/COD/lab0/lab0.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib E:/COD/lab0/lab0.srcs/sources_1/bd/lab0_hw/hdl/lab0_hw_wrapper.v
add_files E:/COD/lab0/lab0.srcs/sources_1/bd/lab0_hw/lab0_hw.bd
set_property used_in_implementation false [get_files -all e:/COD/lab0/lab0.srcs/sources_1/bd/lab0_hw/ip/lab0_hw_processing_system7_0_0/lab0_hw_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all E:/COD/lab0/lab0.srcs/sources_1/bd/lab0_hw/lab0_hw_ooc.xdc]
set_property is_locked true [get_files E:/COD/lab0/lab0.srcs/sources_1/bd/lab0_hw/lab0_hw.bd]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top lab0_hw_wrapper -part xc7z020clg484-1


write_checkpoint -force -noxdef lab0_hw_wrapper.dcp

catch { report_utilization -file lab0_hw_wrapper_utilization_synth.rpt -pb lab0_hw_wrapper_utilization_synth.pb }
