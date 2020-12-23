# 
# Synthesis run script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7z035ffg676-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/pro/finalAcc/finalAcc.cache/wt [current_project]
set_property parent.project_path D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/pro/finalAcc/finalAcc.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo d:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/pro/finalAcc/finalAcc.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/data/im1/conv1input.coe
add_files D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/data/parameters/conv1.coe
add_files D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/data/im1/conv1.output.coe
add_files D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/data/mydata/conv4.input.coe
add_files D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/data/mydata/conv4.coe
add_files D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/data/mydata/conv3.input.coe
add_files D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/data/mydata/conv3.coe
add_files d:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/data/mydata/conv2.input.coe
add_files d:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/data/mydata/conv2.coe
read_verilog -library xil_defaultlib {
  D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/srcs/defines.v
  D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/srcs/channelBuf.v
  D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/srcs/pe1.v
  D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/srcs/pe_group2.v
  D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/srcs/writeback.v
  D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/srcs/top.v
}
read_ip -quiet D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/pro/finalAcc/finalAcc.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xci
set_property used_in_implementation false [get_files -all d:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/pro/finalAcc/finalAcc.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/pro/finalAcc/finalAcc.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc]
set_property used_in_implementation false [get_files -all d:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/pro/finalAcc/finalAcc.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_ooc.xdc]

read_ip -quiet D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/pro/finalAcc/finalAcc.srcs/sources_1/ip/weightROM/weightROM.xci
set_property used_in_implementation false [get_files -all d:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/pro/finalAcc/finalAcc.srcs/sources_1/ip/weightROM/weightROM_ooc.xdc]

read_ip -quiet D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/pro/finalAcc/finalAcc.srcs/sources_1/ip/BRAM4k/BRAM4k.xci
set_property used_in_implementation false [get_files -all d:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/pro/finalAcc/finalAcc.srcs/sources_1/ip/BRAM4k/BRAM4k_ooc.xdc]

read_ip -quiet D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/pro/finalAcc/finalAcc.srcs/sources_1/ip/BRAM32k/BRAM32k.xci
set_property used_in_implementation false [get_files -all d:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/pro/finalAcc/finalAcc.srcs/sources_1/ip/BRAM32k/BRAM32k_ooc.xdc]

read_ip -quiet D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/pro/finalAcc/finalAcc.srcs/sources_1/ip/WLay1ROM/WLay1ROM.xci
set_property used_in_implementation false [get_files -all d:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/pro/finalAcc/finalAcc.srcs/sources_1/ip/WLay1ROM/WLay1ROM_ooc.xdc]

read_ip -quiet D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/pro/finalAcc/finalAcc.srcs/sources_1/ip/BRAM8K/BRAM8K.xci
set_property used_in_implementation false [get_files -all d:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/pro/finalAcc/finalAcc.srcs/sources_1/ip/BRAM8K/BRAM8K_ooc.xdc]

read_ip -quiet D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/pro/finalAcc/finalAcc.srcs/sources_1/ip/BRAM16K/BRAM16K.xci
set_property used_in_implementation false [get_files -all d:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/pro/finalAcc/finalAcc.srcs/sources_1/ip/BRAM16K/BRAM16K_ooc.xdc]

read_ip -quiet D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/pro/finalAcc/finalAcc.srcs/sources_1/ip/weightRomLayer4/weightRomLayer4.xci
set_property used_in_implementation false [get_files -all d:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/pro/finalAcc/finalAcc.srcs/sources_1/ip/weightRomLayer4/weightRomLayer4_ooc.xdc]

read_ip -quiet d:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/pro/finalAcc/finalAcc.srcs/sources_1/ip/weightRomLayer3/weightRomLayer3.xci
set_property used_in_implementation false [get_files -all d:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/pro/finalAcc/finalAcc.srcs/sources_1/ip/weightRomLayer3/weightRomLayer3_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/pro/finalAcc/finalAcc.srcs/io/constraint01.xdc
set_property used_in_implementation false [get_files D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/pro/finalAcc/finalAcc.srcs/io/constraint01.xdc]


synth_design -top top -part xc7z035ffg676-2


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef top.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb"
