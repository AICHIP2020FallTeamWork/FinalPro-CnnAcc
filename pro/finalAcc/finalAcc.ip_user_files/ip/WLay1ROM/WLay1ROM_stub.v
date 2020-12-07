// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Mon Dec  7 12:39:34 2020
// Host        : LAPTOP-PD9C7IFG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/pro/finalAcc/finalAcc.srcs/sources_1/ip/WLay1ROM/WLay1ROM_stub.v
// Design      : WLay1ROM
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z035ffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2017.4" *)
module WLay1ROM(clka, addra, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,addra[7:0],douta[39:0]" */;
  input clka;
  input [7:0]addra;
  output [39:0]douta;
endmodule
