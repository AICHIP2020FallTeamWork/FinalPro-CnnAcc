// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Fri Dec 11 09:43:53 2020
// Host        : LAPTOP-PD9C7IFG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/pro/finalAcc/finalAcc.srcs/sources_1/ip/weightROM/weightROM_stub.v
// Design      : weightROM
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z035ffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2017.4" *)
module weightROM(clka, addra, douta, clkb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,addra[13:0],douta[71:0],clkb,addrb[13:0],doutb[71:0]" */;
  input clka;
  input [13:0]addra;
  output [71:0]douta;
  input clkb;
  input [13:0]addrb;
  output [71:0]doutb;
endmodule
