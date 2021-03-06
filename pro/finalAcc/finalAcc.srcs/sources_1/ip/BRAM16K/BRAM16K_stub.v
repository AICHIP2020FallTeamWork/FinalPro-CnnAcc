// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Dec 22 23:18:04 2020
// Host        : LAPTOP-PD9C7IFG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/pro/finalAcc/finalAcc.srcs/sources_1/ip/BRAM16K/BRAM16K_stub.v
// Design      : BRAM16K
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z035ffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2017.4" *)
module BRAM16K(clka, wea, addra, dina, douta, clkb, web, addrb, dinb, 
  doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[10:0],dina[63:0],douta[63:0],clkb,web[0:0],addrb[10:0],dinb[63:0],doutb[63:0]" */;
  input clka;
  input [0:0]wea;
  input [10:0]addra;
  input [63:0]dina;
  output [63:0]douta;
  input clkb;
  input [0:0]web;
  input [10:0]addrb;
  input [63:0]dinb;
  output [63:0]doutb;
endmodule
