# 
# Synthesis run script generated by Vivado
# 

create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir E:/COD/lab4/lab4.cache/wt [current_project]
set_property parent.project_path E:/COD/lab4/lab4.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
set_property ip_repo_paths e:/COD/lab4/ip_repo/my_dma_1.0 [current_project]
set_property ip_output_repo e:/COD/lab4/lab4.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib E:/COD/lab4/lab4.srcs/sources_1/bd/lab4/hdl/lab4_wrapper.v
add_files E:/COD/lab4/lab4.srcs/sources_1/bd/lab4/lab4.bd
set_property used_in_implementation false [get_files -all e:/COD/lab4/lab4.srcs/sources_1/bd/lab4/ip/lab4_processing_system7_0_0/lab4_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all e:/COD/lab4/lab4.srcs/sources_1/bd/lab4/ip/lab4_rst_ps7_0_100M_0/lab4_rst_ps7_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all e:/COD/lab4/lab4.srcs/sources_1/bd/lab4/ip/lab4_rst_ps7_0_100M_0/lab4_rst_ps7_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all e:/COD/lab4/lab4.srcs/sources_1/bd/lab4/ip/lab4_rst_ps7_0_100M_0/lab4_rst_ps7_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/COD/lab4/lab4.srcs/sources_1/bd/lab4/ip/lab4_auto_pc_1/lab4_auto_pc_1_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/COD/lab4/lab4.srcs/sources_1/bd/lab4/ip/lab4_auto_pc_0/lab4_auto_pc_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all e:/COD/lab4/lab4.srcs/sources_1/bd/lab4/ip/lab4_auto_us_0/lab4_auto_us_0_clocks.xdc]
set_property used_in_implementation false [get_files -all e:/COD/lab4/lab4.srcs/sources_1/bd/lab4/ip/lab4_auto_us_0/lab4_auto_us_0_clocks.xdc]
set_property used_in_implementation false [get_files -all e:/COD/lab4/lab4.srcs/sources_1/bd/lab4/ip/lab4_auto_us_0/lab4_auto_us_0_ooc.xdc]
set_property used_in_implementation false [get_files -all E:/COD/lab4/lab4.srcs/sources_1/bd/lab4/lab4_ooc.xdc]
set_property is_locked true [get_files E:/COD/lab4/lab4.srcs/sources_1/bd/lab4/lab4.bd]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc E:/COD/lab4/lab4.srcs/constrs_1/new/lab4_wrapper.xdc
set_property used_in_implementation false [get_files E:/COD/lab4/lab4.srcs/constrs_1/new/lab4_wrapper.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top lab4_wrapper -part xc7z020clg484-1


write_checkpoint -force -noxdef lab4_wrapper.dcp

catch { report_utilization -file lab4_wrapper_utilization_synth.rpt -pb lab4_wrapper_utilization_synth.pb }
