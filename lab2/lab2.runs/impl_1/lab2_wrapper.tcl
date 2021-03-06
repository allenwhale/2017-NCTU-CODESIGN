proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  create_project -in_memory -part xc7z020clg484-1
  set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir E:/COD/lab2/lab2.cache/wt [current_project]
  set_property parent.project_path E:/COD/lab2/lab2.xpr [current_project]
  set_property ip_repo_paths E:/COD/lab2/ip_repo/compute_sad_1.0 [current_project]
  set_property ip_output_repo E:/COD/lab2/lab2.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  set_property XPM_LIBRARIES XPM_CDC [current_project]
  add_files -quiet E:/COD/lab2/lab2.runs/synth_1/lab2_wrapper.dcp
  add_files -quiet e:/COD/lab2/lab2.srcs/sources_1/bd/lab2/ip/lab2_processing_system7_0_0/lab2_processing_system7_0_0.dcp
  set_property netlist_only true [get_files e:/COD/lab2/lab2.srcs/sources_1/bd/lab2/ip/lab2_processing_system7_0_0/lab2_processing_system7_0_0.dcp]
  add_files -quiet e:/COD/lab2/lab2.srcs/sources_1/bd/lab2/ip/lab2_compute_sad_0_0/lab2_compute_sad_0_0.dcp
  set_property netlist_only true [get_files e:/COD/lab2/lab2.srcs/sources_1/bd/lab2/ip/lab2_compute_sad_0_0/lab2_compute_sad_0_0.dcp]
  add_files -quiet e:/COD/lab2/lab2.srcs/sources_1/bd/lab2/ip/lab2_rst_ps7_0_100M_0/lab2_rst_ps7_0_100M_0.dcp
  set_property netlist_only true [get_files e:/COD/lab2/lab2.srcs/sources_1/bd/lab2/ip/lab2_rst_ps7_0_100M_0/lab2_rst_ps7_0_100M_0.dcp]
  add_files -quiet e:/COD/lab2/lab2.srcs/sources_1/bd/lab2/ip/lab2_auto_pc_0/lab2_auto_pc_0.dcp
  set_property netlist_only true [get_files e:/COD/lab2/lab2.srcs/sources_1/bd/lab2/ip/lab2_auto_pc_0/lab2_auto_pc_0.dcp]
  read_xdc -ref lab2_processing_system7_0_0 -cells inst e:/COD/lab2/lab2.srcs/sources_1/bd/lab2/ip/lab2_processing_system7_0_0/lab2_processing_system7_0_0.xdc
  set_property processing_order EARLY [get_files e:/COD/lab2/lab2.srcs/sources_1/bd/lab2/ip/lab2_processing_system7_0_0/lab2_processing_system7_0_0.xdc]
  read_xdc -prop_thru_buffers -ref lab2_rst_ps7_0_100M_0 -cells U0 e:/COD/lab2/lab2.srcs/sources_1/bd/lab2/ip/lab2_rst_ps7_0_100M_0/lab2_rst_ps7_0_100M_0_board.xdc
  set_property processing_order EARLY [get_files e:/COD/lab2/lab2.srcs/sources_1/bd/lab2/ip/lab2_rst_ps7_0_100M_0/lab2_rst_ps7_0_100M_0_board.xdc]
  read_xdc -ref lab2_rst_ps7_0_100M_0 -cells U0 e:/COD/lab2/lab2.srcs/sources_1/bd/lab2/ip/lab2_rst_ps7_0_100M_0/lab2_rst_ps7_0_100M_0.xdc
  set_property processing_order EARLY [get_files e:/COD/lab2/lab2.srcs/sources_1/bd/lab2/ip/lab2_rst_ps7_0_100M_0/lab2_rst_ps7_0_100M_0.xdc]
  link_design -top lab2_wrapper -part xc7z020clg484-1
  write_hwdef -file lab2_wrapper.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force lab2_wrapper_opt.dcp
  catch { report_drc -file lab2_wrapper_drc_opted.rpt }
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force lab2_wrapper_placed.dcp
  catch { report_io -file lab2_wrapper_io_placed.rpt }
  catch { report_utilization -file lab2_wrapper_utilization_placed.rpt -pb lab2_wrapper_utilization_placed.pb }
  catch { report_control_sets -verbose -file lab2_wrapper_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force lab2_wrapper_routed.dcp
  catch { report_drc -file lab2_wrapper_drc_routed.rpt -pb lab2_wrapper_drc_routed.pb -rpx lab2_wrapper_drc_routed.rpx }
  catch { report_methodology -file lab2_wrapper_methodology_drc_routed.rpt -rpx lab2_wrapper_methodology_drc_routed.rpx }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file lab2_wrapper_timing_summary_routed.rpt -rpx lab2_wrapper_timing_summary_routed.rpx }
  catch { report_power -file lab2_wrapper_power_routed.rpt -pb lab2_wrapper_power_summary_routed.pb -rpx lab2_wrapper_power_routed.rpx }
  catch { report_route_status -file lab2_wrapper_route_status.rpt -pb lab2_wrapper_route_status.pb }
  catch { report_clock_utilization -file lab2_wrapper_clock_utilization_routed.rpt }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force lab2_wrapper_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

