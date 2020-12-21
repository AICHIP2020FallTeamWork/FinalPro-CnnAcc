// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Mon Dec 21 13:22:41 2020
// Host        : LAPTOP-PD9C7IFG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/GradeFour/AICHIP/ref/project/repo/FinalPro-CnnAcc/pro/finalAcc/finalAcc.srcs/sources_1/ip/weightROM/weightROM_sim_netlist.v
// Design      : weightROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z035ffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "weightROM,blk_mem_gen_v8_4_1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module weightROM
   (clka,
    addra,
    douta,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [13:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [71:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [13:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [71:0]doutb;

  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire clkb;
  wire [71:0]douta;
  wire [71:0]doutb;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [13:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [13:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [71:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "14" *) 
  (* C_ADDRB_WIDTH = "14" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "28" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     35.475972 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "weightROM.mem" *) 
  (* C_INIT_FILE_NAME = "weightROM.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "4" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "14000" *) 
  (* C_READ_DEPTH_B = "14000" *) 
  (* C_READ_WIDTH_A = "72" *) 
  (* C_READ_WIDTH_B = "72" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "14000" *) 
  (* C_WRITE_DEPTH_B = "14000" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "72" *) 
  (* C_WRITE_WIDTH_B = "72" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  weightROM_blk_mem_gen_v8_4_1 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[13:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[13:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[71:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule

(* ORIG_REF_NAME = "bindec" *) 
module weightROM_bindec
   (ena_array,
    addra);
  output [0:0]ena_array;
  input [2:0]addra;

  wire [2:0]addra;
  wire [0:0]ena_array;

  LUT3 #(
    .INIT(8'h08)) 
    \ENOUT_inferred__5/i_ 
       (.I0(addra[1]),
        .I1(addra[2]),
        .I2(addra[0]),
        .O(ena_array));
endmodule

(* ORIG_REF_NAME = "bindec" *) 
module weightROM_bindec_0
   (enb_array,
    addrb);
  output [0:0]enb_array;
  input [2:0]addrb;

  wire [2:0]addrb;
  wire [0:0]enb_array;

  LUT3 #(
    .INIT(8'h08)) 
    \ENOUT_inferred__5/i_ 
       (.I0(addrb[1]),
        .I1(addrb[2]),
        .I2(addrb[0]),
        .O(enb_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module weightROM_blk_mem_gen_generic_cstr
   (douta,
    doutb,
    clka,
    clkb,
    addra,
    addrb);
  output [71:0]douta;
  output [71:0]doutb;
  input clka;
  input clkb;
  input [13:0]addra;
  input [13:0]addrb;

  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire clkb;
  wire [71:0]douta;
  wire [71:0]doutb;
  wire [6:6]ena_array;
  wire [6:6]enb_array;
  wire [8:0]ram_douta;
  wire [8:0]ram_doutb;
  wire \ramloop[10].ram.r_n_0 ;
  wire \ramloop[10].ram.r_n_1 ;
  wire \ramloop[10].ram.r_n_10 ;
  wire \ramloop[10].ram.r_n_11 ;
  wire \ramloop[10].ram.r_n_12 ;
  wire \ramloop[10].ram.r_n_13 ;
  wire \ramloop[10].ram.r_n_14 ;
  wire \ramloop[10].ram.r_n_15 ;
  wire \ramloop[10].ram.r_n_16 ;
  wire \ramloop[10].ram.r_n_17 ;
  wire \ramloop[10].ram.r_n_18 ;
  wire \ramloop[10].ram.r_n_19 ;
  wire \ramloop[10].ram.r_n_2 ;
  wire \ramloop[10].ram.r_n_20 ;
  wire \ramloop[10].ram.r_n_21 ;
  wire \ramloop[10].ram.r_n_22 ;
  wire \ramloop[10].ram.r_n_23 ;
  wire \ramloop[10].ram.r_n_24 ;
  wire \ramloop[10].ram.r_n_25 ;
  wire \ramloop[10].ram.r_n_26 ;
  wire \ramloop[10].ram.r_n_27 ;
  wire \ramloop[10].ram.r_n_28 ;
  wire \ramloop[10].ram.r_n_29 ;
  wire \ramloop[10].ram.r_n_3 ;
  wire \ramloop[10].ram.r_n_30 ;
  wire \ramloop[10].ram.r_n_31 ;
  wire \ramloop[10].ram.r_n_32 ;
  wire \ramloop[10].ram.r_n_33 ;
  wire \ramloop[10].ram.r_n_34 ;
  wire \ramloop[10].ram.r_n_35 ;
  wire \ramloop[10].ram.r_n_4 ;
  wire \ramloop[10].ram.r_n_5 ;
  wire \ramloop[10].ram.r_n_6 ;
  wire \ramloop[10].ram.r_n_7 ;
  wire \ramloop[10].ram.r_n_8 ;
  wire \ramloop[10].ram.r_n_9 ;
  wire \ramloop[11].ram.r_n_0 ;
  wire \ramloop[11].ram.r_n_1 ;
  wire \ramloop[11].ram.r_n_10 ;
  wire \ramloop[11].ram.r_n_11 ;
  wire \ramloop[11].ram.r_n_12 ;
  wire \ramloop[11].ram.r_n_13 ;
  wire \ramloop[11].ram.r_n_14 ;
  wire \ramloop[11].ram.r_n_15 ;
  wire \ramloop[11].ram.r_n_16 ;
  wire \ramloop[11].ram.r_n_17 ;
  wire \ramloop[11].ram.r_n_2 ;
  wire \ramloop[11].ram.r_n_3 ;
  wire \ramloop[11].ram.r_n_4 ;
  wire \ramloop[11].ram.r_n_5 ;
  wire \ramloop[11].ram.r_n_6 ;
  wire \ramloop[11].ram.r_n_7 ;
  wire \ramloop[11].ram.r_n_8 ;
  wire \ramloop[11].ram.r_n_9 ;
  wire \ramloop[12].ram.r_n_0 ;
  wire \ramloop[12].ram.r_n_1 ;
  wire \ramloop[12].ram.r_n_10 ;
  wire \ramloop[12].ram.r_n_11 ;
  wire \ramloop[12].ram.r_n_12 ;
  wire \ramloop[12].ram.r_n_13 ;
  wire \ramloop[12].ram.r_n_14 ;
  wire \ramloop[12].ram.r_n_15 ;
  wire \ramloop[12].ram.r_n_16 ;
  wire \ramloop[12].ram.r_n_17 ;
  wire \ramloop[12].ram.r_n_2 ;
  wire \ramloop[12].ram.r_n_3 ;
  wire \ramloop[12].ram.r_n_4 ;
  wire \ramloop[12].ram.r_n_5 ;
  wire \ramloop[12].ram.r_n_6 ;
  wire \ramloop[12].ram.r_n_7 ;
  wire \ramloop[12].ram.r_n_8 ;
  wire \ramloop[12].ram.r_n_9 ;
  wire \ramloop[13].ram.r_n_0 ;
  wire \ramloop[13].ram.r_n_1 ;
  wire \ramloop[13].ram.r_n_10 ;
  wire \ramloop[13].ram.r_n_11 ;
  wire \ramloop[13].ram.r_n_12 ;
  wire \ramloop[13].ram.r_n_13 ;
  wire \ramloop[13].ram.r_n_14 ;
  wire \ramloop[13].ram.r_n_15 ;
  wire \ramloop[13].ram.r_n_16 ;
  wire \ramloop[13].ram.r_n_17 ;
  wire \ramloop[13].ram.r_n_2 ;
  wire \ramloop[13].ram.r_n_3 ;
  wire \ramloop[13].ram.r_n_4 ;
  wire \ramloop[13].ram.r_n_5 ;
  wire \ramloop[13].ram.r_n_6 ;
  wire \ramloop[13].ram.r_n_7 ;
  wire \ramloop[13].ram.r_n_8 ;
  wire \ramloop[13].ram.r_n_9 ;
  wire \ramloop[14].ram.r_n_0 ;
  wire \ramloop[14].ram.r_n_1 ;
  wire \ramloop[14].ram.r_n_10 ;
  wire \ramloop[14].ram.r_n_11 ;
  wire \ramloop[14].ram.r_n_12 ;
  wire \ramloop[14].ram.r_n_13 ;
  wire \ramloop[14].ram.r_n_14 ;
  wire \ramloop[14].ram.r_n_15 ;
  wire \ramloop[14].ram.r_n_16 ;
  wire \ramloop[14].ram.r_n_17 ;
  wire \ramloop[14].ram.r_n_2 ;
  wire \ramloop[14].ram.r_n_3 ;
  wire \ramloop[14].ram.r_n_4 ;
  wire \ramloop[14].ram.r_n_5 ;
  wire \ramloop[14].ram.r_n_6 ;
  wire \ramloop[14].ram.r_n_7 ;
  wire \ramloop[14].ram.r_n_8 ;
  wire \ramloop[14].ram.r_n_9 ;
  wire \ramloop[15].ram.r_n_0 ;
  wire \ramloop[15].ram.r_n_1 ;
  wire \ramloop[15].ram.r_n_10 ;
  wire \ramloop[15].ram.r_n_11 ;
  wire \ramloop[15].ram.r_n_12 ;
  wire \ramloop[15].ram.r_n_13 ;
  wire \ramloop[15].ram.r_n_14 ;
  wire \ramloop[15].ram.r_n_15 ;
  wire \ramloop[15].ram.r_n_16 ;
  wire \ramloop[15].ram.r_n_17 ;
  wire \ramloop[15].ram.r_n_2 ;
  wire \ramloop[15].ram.r_n_3 ;
  wire \ramloop[15].ram.r_n_4 ;
  wire \ramloop[15].ram.r_n_5 ;
  wire \ramloop[15].ram.r_n_6 ;
  wire \ramloop[15].ram.r_n_7 ;
  wire \ramloop[15].ram.r_n_8 ;
  wire \ramloop[15].ram.r_n_9 ;
  wire \ramloop[16].ram.r_n_0 ;
  wire \ramloop[16].ram.r_n_1 ;
  wire \ramloop[16].ram.r_n_10 ;
  wire \ramloop[16].ram.r_n_11 ;
  wire \ramloop[16].ram.r_n_12 ;
  wire \ramloop[16].ram.r_n_13 ;
  wire \ramloop[16].ram.r_n_14 ;
  wire \ramloop[16].ram.r_n_15 ;
  wire \ramloop[16].ram.r_n_16 ;
  wire \ramloop[16].ram.r_n_17 ;
  wire \ramloop[16].ram.r_n_2 ;
  wire \ramloop[16].ram.r_n_3 ;
  wire \ramloop[16].ram.r_n_4 ;
  wire \ramloop[16].ram.r_n_5 ;
  wire \ramloop[16].ram.r_n_6 ;
  wire \ramloop[16].ram.r_n_7 ;
  wire \ramloop[16].ram.r_n_8 ;
  wire \ramloop[16].ram.r_n_9 ;
  wire \ramloop[17].ram.r_n_0 ;
  wire \ramloop[17].ram.r_n_1 ;
  wire \ramloop[17].ram.r_n_10 ;
  wire \ramloop[17].ram.r_n_11 ;
  wire \ramloop[17].ram.r_n_12 ;
  wire \ramloop[17].ram.r_n_13 ;
  wire \ramloop[17].ram.r_n_14 ;
  wire \ramloop[17].ram.r_n_15 ;
  wire \ramloop[17].ram.r_n_16 ;
  wire \ramloop[17].ram.r_n_17 ;
  wire \ramloop[17].ram.r_n_18 ;
  wire \ramloop[17].ram.r_n_19 ;
  wire \ramloop[17].ram.r_n_2 ;
  wire \ramloop[17].ram.r_n_20 ;
  wire \ramloop[17].ram.r_n_21 ;
  wire \ramloop[17].ram.r_n_22 ;
  wire \ramloop[17].ram.r_n_23 ;
  wire \ramloop[17].ram.r_n_24 ;
  wire \ramloop[17].ram.r_n_25 ;
  wire \ramloop[17].ram.r_n_26 ;
  wire \ramloop[17].ram.r_n_27 ;
  wire \ramloop[17].ram.r_n_28 ;
  wire \ramloop[17].ram.r_n_29 ;
  wire \ramloop[17].ram.r_n_3 ;
  wire \ramloop[17].ram.r_n_30 ;
  wire \ramloop[17].ram.r_n_31 ;
  wire \ramloop[17].ram.r_n_32 ;
  wire \ramloop[17].ram.r_n_33 ;
  wire \ramloop[17].ram.r_n_34 ;
  wire \ramloop[17].ram.r_n_35 ;
  wire \ramloop[17].ram.r_n_4 ;
  wire \ramloop[17].ram.r_n_5 ;
  wire \ramloop[17].ram.r_n_6 ;
  wire \ramloop[17].ram.r_n_7 ;
  wire \ramloop[17].ram.r_n_8 ;
  wire \ramloop[17].ram.r_n_9 ;
  wire \ramloop[18].ram.r_n_0 ;
  wire \ramloop[18].ram.r_n_1 ;
  wire \ramloop[18].ram.r_n_10 ;
  wire \ramloop[18].ram.r_n_11 ;
  wire \ramloop[18].ram.r_n_12 ;
  wire \ramloop[18].ram.r_n_13 ;
  wire \ramloop[18].ram.r_n_14 ;
  wire \ramloop[18].ram.r_n_15 ;
  wire \ramloop[18].ram.r_n_16 ;
  wire \ramloop[18].ram.r_n_17 ;
  wire \ramloop[18].ram.r_n_2 ;
  wire \ramloop[18].ram.r_n_3 ;
  wire \ramloop[18].ram.r_n_4 ;
  wire \ramloop[18].ram.r_n_5 ;
  wire \ramloop[18].ram.r_n_6 ;
  wire \ramloop[18].ram.r_n_7 ;
  wire \ramloop[18].ram.r_n_8 ;
  wire \ramloop[18].ram.r_n_9 ;
  wire \ramloop[19].ram.r_n_0 ;
  wire \ramloop[19].ram.r_n_1 ;
  wire \ramloop[19].ram.r_n_10 ;
  wire \ramloop[19].ram.r_n_11 ;
  wire \ramloop[19].ram.r_n_12 ;
  wire \ramloop[19].ram.r_n_13 ;
  wire \ramloop[19].ram.r_n_14 ;
  wire \ramloop[19].ram.r_n_15 ;
  wire \ramloop[19].ram.r_n_16 ;
  wire \ramloop[19].ram.r_n_17 ;
  wire \ramloop[19].ram.r_n_2 ;
  wire \ramloop[19].ram.r_n_3 ;
  wire \ramloop[19].ram.r_n_4 ;
  wire \ramloop[19].ram.r_n_5 ;
  wire \ramloop[19].ram.r_n_6 ;
  wire \ramloop[19].ram.r_n_7 ;
  wire \ramloop[19].ram.r_n_8 ;
  wire \ramloop[19].ram.r_n_9 ;
  wire \ramloop[1].ram.r_n_0 ;
  wire \ramloop[1].ram.r_n_1 ;
  wire \ramloop[1].ram.r_n_10 ;
  wire \ramloop[1].ram.r_n_11 ;
  wire \ramloop[1].ram.r_n_12 ;
  wire \ramloop[1].ram.r_n_13 ;
  wire \ramloop[1].ram.r_n_14 ;
  wire \ramloop[1].ram.r_n_15 ;
  wire \ramloop[1].ram.r_n_16 ;
  wire \ramloop[1].ram.r_n_17 ;
  wire \ramloop[1].ram.r_n_2 ;
  wire \ramloop[1].ram.r_n_3 ;
  wire \ramloop[1].ram.r_n_4 ;
  wire \ramloop[1].ram.r_n_5 ;
  wire \ramloop[1].ram.r_n_6 ;
  wire \ramloop[1].ram.r_n_7 ;
  wire \ramloop[1].ram.r_n_8 ;
  wire \ramloop[1].ram.r_n_9 ;
  wire \ramloop[20].ram.r_n_0 ;
  wire \ramloop[20].ram.r_n_1 ;
  wire \ramloop[20].ram.r_n_10 ;
  wire \ramloop[20].ram.r_n_11 ;
  wire \ramloop[20].ram.r_n_12 ;
  wire \ramloop[20].ram.r_n_13 ;
  wire \ramloop[20].ram.r_n_14 ;
  wire \ramloop[20].ram.r_n_15 ;
  wire \ramloop[20].ram.r_n_16 ;
  wire \ramloop[20].ram.r_n_17 ;
  wire \ramloop[20].ram.r_n_2 ;
  wire \ramloop[20].ram.r_n_3 ;
  wire \ramloop[20].ram.r_n_4 ;
  wire \ramloop[20].ram.r_n_5 ;
  wire \ramloop[20].ram.r_n_6 ;
  wire \ramloop[20].ram.r_n_7 ;
  wire \ramloop[20].ram.r_n_8 ;
  wire \ramloop[20].ram.r_n_9 ;
  wire \ramloop[21].ram.r_n_0 ;
  wire \ramloop[21].ram.r_n_1 ;
  wire \ramloop[21].ram.r_n_10 ;
  wire \ramloop[21].ram.r_n_11 ;
  wire \ramloop[21].ram.r_n_12 ;
  wire \ramloop[21].ram.r_n_13 ;
  wire \ramloop[21].ram.r_n_14 ;
  wire \ramloop[21].ram.r_n_15 ;
  wire \ramloop[21].ram.r_n_16 ;
  wire \ramloop[21].ram.r_n_17 ;
  wire \ramloop[21].ram.r_n_18 ;
  wire \ramloop[21].ram.r_n_19 ;
  wire \ramloop[21].ram.r_n_2 ;
  wire \ramloop[21].ram.r_n_3 ;
  wire \ramloop[21].ram.r_n_4 ;
  wire \ramloop[21].ram.r_n_5 ;
  wire \ramloop[21].ram.r_n_6 ;
  wire \ramloop[21].ram.r_n_7 ;
  wire \ramloop[21].ram.r_n_8 ;
  wire \ramloop[21].ram.r_n_9 ;
  wire \ramloop[22].ram.r_n_0 ;
  wire \ramloop[22].ram.r_n_1 ;
  wire \ramloop[22].ram.r_n_10 ;
  wire \ramloop[22].ram.r_n_11 ;
  wire \ramloop[22].ram.r_n_12 ;
  wire \ramloop[22].ram.r_n_13 ;
  wire \ramloop[22].ram.r_n_14 ;
  wire \ramloop[22].ram.r_n_15 ;
  wire \ramloop[22].ram.r_n_16 ;
  wire \ramloop[22].ram.r_n_17 ;
  wire \ramloop[22].ram.r_n_18 ;
  wire \ramloop[22].ram.r_n_19 ;
  wire \ramloop[22].ram.r_n_2 ;
  wire \ramloop[22].ram.r_n_3 ;
  wire \ramloop[22].ram.r_n_4 ;
  wire \ramloop[22].ram.r_n_5 ;
  wire \ramloop[22].ram.r_n_6 ;
  wire \ramloop[22].ram.r_n_7 ;
  wire \ramloop[22].ram.r_n_8 ;
  wire \ramloop[22].ram.r_n_9 ;
  wire \ramloop[23].ram.r_n_0 ;
  wire \ramloop[23].ram.r_n_1 ;
  wire \ramloop[23].ram.r_n_10 ;
  wire \ramloop[23].ram.r_n_11 ;
  wire \ramloop[23].ram.r_n_12 ;
  wire \ramloop[23].ram.r_n_13 ;
  wire \ramloop[23].ram.r_n_14 ;
  wire \ramloop[23].ram.r_n_15 ;
  wire \ramloop[23].ram.r_n_16 ;
  wire \ramloop[23].ram.r_n_17 ;
  wire \ramloop[23].ram.r_n_18 ;
  wire \ramloop[23].ram.r_n_19 ;
  wire \ramloop[23].ram.r_n_2 ;
  wire \ramloop[23].ram.r_n_3 ;
  wire \ramloop[23].ram.r_n_4 ;
  wire \ramloop[23].ram.r_n_5 ;
  wire \ramloop[23].ram.r_n_6 ;
  wire \ramloop[23].ram.r_n_7 ;
  wire \ramloop[23].ram.r_n_8 ;
  wire \ramloop[23].ram.r_n_9 ;
  wire \ramloop[24].ram.r_n_0 ;
  wire \ramloop[24].ram.r_n_1 ;
  wire \ramloop[24].ram.r_n_10 ;
  wire \ramloop[24].ram.r_n_11 ;
  wire \ramloop[24].ram.r_n_12 ;
  wire \ramloop[24].ram.r_n_13 ;
  wire \ramloop[24].ram.r_n_14 ;
  wire \ramloop[24].ram.r_n_15 ;
  wire \ramloop[24].ram.r_n_16 ;
  wire \ramloop[24].ram.r_n_17 ;
  wire \ramloop[24].ram.r_n_18 ;
  wire \ramloop[24].ram.r_n_19 ;
  wire \ramloop[24].ram.r_n_2 ;
  wire \ramloop[24].ram.r_n_20 ;
  wire \ramloop[24].ram.r_n_21 ;
  wire \ramloop[24].ram.r_n_22 ;
  wire \ramloop[24].ram.r_n_23 ;
  wire \ramloop[24].ram.r_n_24 ;
  wire \ramloop[24].ram.r_n_25 ;
  wire \ramloop[24].ram.r_n_26 ;
  wire \ramloop[24].ram.r_n_27 ;
  wire \ramloop[24].ram.r_n_28 ;
  wire \ramloop[24].ram.r_n_29 ;
  wire \ramloop[24].ram.r_n_3 ;
  wire \ramloop[24].ram.r_n_30 ;
  wire \ramloop[24].ram.r_n_31 ;
  wire \ramloop[24].ram.r_n_32 ;
  wire \ramloop[24].ram.r_n_33 ;
  wire \ramloop[24].ram.r_n_34 ;
  wire \ramloop[24].ram.r_n_35 ;
  wire \ramloop[24].ram.r_n_4 ;
  wire \ramloop[24].ram.r_n_5 ;
  wire \ramloop[24].ram.r_n_6 ;
  wire \ramloop[24].ram.r_n_7 ;
  wire \ramloop[24].ram.r_n_8 ;
  wire \ramloop[24].ram.r_n_9 ;
  wire \ramloop[25].ram.r_n_0 ;
  wire \ramloop[25].ram.r_n_1 ;
  wire \ramloop[25].ram.r_n_10 ;
  wire \ramloop[25].ram.r_n_11 ;
  wire \ramloop[25].ram.r_n_12 ;
  wire \ramloop[25].ram.r_n_13 ;
  wire \ramloop[25].ram.r_n_14 ;
  wire \ramloop[25].ram.r_n_15 ;
  wire \ramloop[25].ram.r_n_16 ;
  wire \ramloop[25].ram.r_n_17 ;
  wire \ramloop[25].ram.r_n_2 ;
  wire \ramloop[25].ram.r_n_3 ;
  wire \ramloop[25].ram.r_n_4 ;
  wire \ramloop[25].ram.r_n_5 ;
  wire \ramloop[25].ram.r_n_6 ;
  wire \ramloop[25].ram.r_n_7 ;
  wire \ramloop[25].ram.r_n_8 ;
  wire \ramloop[25].ram.r_n_9 ;
  wire \ramloop[26].ram.r_n_0 ;
  wire \ramloop[26].ram.r_n_1 ;
  wire \ramloop[26].ram.r_n_10 ;
  wire \ramloop[26].ram.r_n_11 ;
  wire \ramloop[26].ram.r_n_12 ;
  wire \ramloop[26].ram.r_n_13 ;
  wire \ramloop[26].ram.r_n_14 ;
  wire \ramloop[26].ram.r_n_15 ;
  wire \ramloop[26].ram.r_n_16 ;
  wire \ramloop[26].ram.r_n_17 ;
  wire \ramloop[26].ram.r_n_2 ;
  wire \ramloop[26].ram.r_n_3 ;
  wire \ramloop[26].ram.r_n_4 ;
  wire \ramloop[26].ram.r_n_5 ;
  wire \ramloop[26].ram.r_n_6 ;
  wire \ramloop[26].ram.r_n_7 ;
  wire \ramloop[26].ram.r_n_8 ;
  wire \ramloop[26].ram.r_n_9 ;
  wire \ramloop[27].ram.r_n_0 ;
  wire \ramloop[27].ram.r_n_1 ;
  wire \ramloop[27].ram.r_n_10 ;
  wire \ramloop[27].ram.r_n_11 ;
  wire \ramloop[27].ram.r_n_12 ;
  wire \ramloop[27].ram.r_n_13 ;
  wire \ramloop[27].ram.r_n_14 ;
  wire \ramloop[27].ram.r_n_15 ;
  wire \ramloop[27].ram.r_n_16 ;
  wire \ramloop[27].ram.r_n_17 ;
  wire \ramloop[27].ram.r_n_2 ;
  wire \ramloop[27].ram.r_n_3 ;
  wire \ramloop[27].ram.r_n_4 ;
  wire \ramloop[27].ram.r_n_5 ;
  wire \ramloop[27].ram.r_n_6 ;
  wire \ramloop[27].ram.r_n_7 ;
  wire \ramloop[27].ram.r_n_8 ;
  wire \ramloop[27].ram.r_n_9 ;
  wire \ramloop[2].ram.r_n_0 ;
  wire \ramloop[2].ram.r_n_1 ;
  wire \ramloop[2].ram.r_n_10 ;
  wire \ramloop[2].ram.r_n_11 ;
  wire \ramloop[2].ram.r_n_12 ;
  wire \ramloop[2].ram.r_n_13 ;
  wire \ramloop[2].ram.r_n_14 ;
  wire \ramloop[2].ram.r_n_15 ;
  wire \ramloop[2].ram.r_n_16 ;
  wire \ramloop[2].ram.r_n_17 ;
  wire \ramloop[2].ram.r_n_2 ;
  wire \ramloop[2].ram.r_n_3 ;
  wire \ramloop[2].ram.r_n_4 ;
  wire \ramloop[2].ram.r_n_5 ;
  wire \ramloop[2].ram.r_n_6 ;
  wire \ramloop[2].ram.r_n_7 ;
  wire \ramloop[2].ram.r_n_8 ;
  wire \ramloop[2].ram.r_n_9 ;
  wire \ramloop[3].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_1 ;
  wire \ramloop[3].ram.r_n_10 ;
  wire \ramloop[3].ram.r_n_11 ;
  wire \ramloop[3].ram.r_n_12 ;
  wire \ramloop[3].ram.r_n_13 ;
  wire \ramloop[3].ram.r_n_14 ;
  wire \ramloop[3].ram.r_n_15 ;
  wire \ramloop[3].ram.r_n_16 ;
  wire \ramloop[3].ram.r_n_17 ;
  wire \ramloop[3].ram.r_n_18 ;
  wire \ramloop[3].ram.r_n_19 ;
  wire \ramloop[3].ram.r_n_2 ;
  wire \ramloop[3].ram.r_n_20 ;
  wire \ramloop[3].ram.r_n_21 ;
  wire \ramloop[3].ram.r_n_22 ;
  wire \ramloop[3].ram.r_n_23 ;
  wire \ramloop[3].ram.r_n_24 ;
  wire \ramloop[3].ram.r_n_25 ;
  wire \ramloop[3].ram.r_n_26 ;
  wire \ramloop[3].ram.r_n_27 ;
  wire \ramloop[3].ram.r_n_28 ;
  wire \ramloop[3].ram.r_n_29 ;
  wire \ramloop[3].ram.r_n_3 ;
  wire \ramloop[3].ram.r_n_30 ;
  wire \ramloop[3].ram.r_n_31 ;
  wire \ramloop[3].ram.r_n_32 ;
  wire \ramloop[3].ram.r_n_33 ;
  wire \ramloop[3].ram.r_n_34 ;
  wire \ramloop[3].ram.r_n_35 ;
  wire \ramloop[3].ram.r_n_4 ;
  wire \ramloop[3].ram.r_n_5 ;
  wire \ramloop[3].ram.r_n_6 ;
  wire \ramloop[3].ram.r_n_7 ;
  wire \ramloop[3].ram.r_n_8 ;
  wire \ramloop[3].ram.r_n_9 ;
  wire \ramloop[4].ram.r_n_0 ;
  wire \ramloop[4].ram.r_n_1 ;
  wire \ramloop[4].ram.r_n_10 ;
  wire \ramloop[4].ram.r_n_11 ;
  wire \ramloop[4].ram.r_n_12 ;
  wire \ramloop[4].ram.r_n_13 ;
  wire \ramloop[4].ram.r_n_14 ;
  wire \ramloop[4].ram.r_n_15 ;
  wire \ramloop[4].ram.r_n_16 ;
  wire \ramloop[4].ram.r_n_17 ;
  wire \ramloop[4].ram.r_n_2 ;
  wire \ramloop[4].ram.r_n_3 ;
  wire \ramloop[4].ram.r_n_4 ;
  wire \ramloop[4].ram.r_n_5 ;
  wire \ramloop[4].ram.r_n_6 ;
  wire \ramloop[4].ram.r_n_7 ;
  wire \ramloop[4].ram.r_n_8 ;
  wire \ramloop[4].ram.r_n_9 ;
  wire \ramloop[5].ram.r_n_0 ;
  wire \ramloop[5].ram.r_n_1 ;
  wire \ramloop[5].ram.r_n_10 ;
  wire \ramloop[5].ram.r_n_11 ;
  wire \ramloop[5].ram.r_n_12 ;
  wire \ramloop[5].ram.r_n_13 ;
  wire \ramloop[5].ram.r_n_14 ;
  wire \ramloop[5].ram.r_n_15 ;
  wire \ramloop[5].ram.r_n_16 ;
  wire \ramloop[5].ram.r_n_17 ;
  wire \ramloop[5].ram.r_n_2 ;
  wire \ramloop[5].ram.r_n_3 ;
  wire \ramloop[5].ram.r_n_4 ;
  wire \ramloop[5].ram.r_n_5 ;
  wire \ramloop[5].ram.r_n_6 ;
  wire \ramloop[5].ram.r_n_7 ;
  wire \ramloop[5].ram.r_n_8 ;
  wire \ramloop[5].ram.r_n_9 ;
  wire \ramloop[6].ram.r_n_0 ;
  wire \ramloop[6].ram.r_n_1 ;
  wire \ramloop[6].ram.r_n_10 ;
  wire \ramloop[6].ram.r_n_11 ;
  wire \ramloop[6].ram.r_n_12 ;
  wire \ramloop[6].ram.r_n_13 ;
  wire \ramloop[6].ram.r_n_14 ;
  wire \ramloop[6].ram.r_n_15 ;
  wire \ramloop[6].ram.r_n_16 ;
  wire \ramloop[6].ram.r_n_17 ;
  wire \ramloop[6].ram.r_n_2 ;
  wire \ramloop[6].ram.r_n_3 ;
  wire \ramloop[6].ram.r_n_4 ;
  wire \ramloop[6].ram.r_n_5 ;
  wire \ramloop[6].ram.r_n_6 ;
  wire \ramloop[6].ram.r_n_7 ;
  wire \ramloop[6].ram.r_n_8 ;
  wire \ramloop[6].ram.r_n_9 ;
  wire \ramloop[7].ram.r_n_0 ;
  wire \ramloop[7].ram.r_n_1 ;
  wire \ramloop[7].ram.r_n_10 ;
  wire \ramloop[7].ram.r_n_11 ;
  wire \ramloop[7].ram.r_n_12 ;
  wire \ramloop[7].ram.r_n_13 ;
  wire \ramloop[7].ram.r_n_14 ;
  wire \ramloop[7].ram.r_n_15 ;
  wire \ramloop[7].ram.r_n_16 ;
  wire \ramloop[7].ram.r_n_17 ;
  wire \ramloop[7].ram.r_n_2 ;
  wire \ramloop[7].ram.r_n_3 ;
  wire \ramloop[7].ram.r_n_4 ;
  wire \ramloop[7].ram.r_n_5 ;
  wire \ramloop[7].ram.r_n_6 ;
  wire \ramloop[7].ram.r_n_7 ;
  wire \ramloop[7].ram.r_n_8 ;
  wire \ramloop[7].ram.r_n_9 ;
  wire \ramloop[8].ram.r_n_0 ;
  wire \ramloop[8].ram.r_n_1 ;
  wire \ramloop[8].ram.r_n_10 ;
  wire \ramloop[8].ram.r_n_11 ;
  wire \ramloop[8].ram.r_n_12 ;
  wire \ramloop[8].ram.r_n_13 ;
  wire \ramloop[8].ram.r_n_14 ;
  wire \ramloop[8].ram.r_n_15 ;
  wire \ramloop[8].ram.r_n_16 ;
  wire \ramloop[8].ram.r_n_17 ;
  wire \ramloop[8].ram.r_n_2 ;
  wire \ramloop[8].ram.r_n_3 ;
  wire \ramloop[8].ram.r_n_4 ;
  wire \ramloop[8].ram.r_n_5 ;
  wire \ramloop[8].ram.r_n_6 ;
  wire \ramloop[8].ram.r_n_7 ;
  wire \ramloop[8].ram.r_n_8 ;
  wire \ramloop[8].ram.r_n_9 ;
  wire \ramloop[9].ram.r_n_0 ;
  wire \ramloop[9].ram.r_n_1 ;
  wire \ramloop[9].ram.r_n_10 ;
  wire \ramloop[9].ram.r_n_11 ;
  wire \ramloop[9].ram.r_n_12 ;
  wire \ramloop[9].ram.r_n_13 ;
  wire \ramloop[9].ram.r_n_14 ;
  wire \ramloop[9].ram.r_n_15 ;
  wire \ramloop[9].ram.r_n_16 ;
  wire \ramloop[9].ram.r_n_17 ;
  wire \ramloop[9].ram.r_n_2 ;
  wire \ramloop[9].ram.r_n_3 ;
  wire \ramloop[9].ram.r_n_4 ;
  wire \ramloop[9].ram.r_n_5 ;
  wire \ramloop[9].ram.r_n_6 ;
  wire \ramloop[9].ram.r_n_7 ;
  wire \ramloop[9].ram.r_n_8 ;
  wire \ramloop[9].ram.r_n_9 ;

  weightROM_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[13:11]),
        .ena_array(ena_array));
  weightROM_bindec_0 \bindec_b.bindec_inst_b 
       (.addrb(addrb[13:11]),
        .enb_array(enb_array));
  weightROM_blk_mem_gen_mux \has_mux_a.A 
       (.\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 ,\ramloop[3].ram.r_n_7 ,\ramloop[3].ram.r_n_8 ,\ramloop[3].ram.r_n_9 ,\ramloop[3].ram.r_n_10 ,\ramloop[3].ram.r_n_11 ,\ramloop[3].ram.r_n_12 ,\ramloop[3].ram.r_n_13 ,\ramloop[3].ram.r_n_14 ,\ramloop[3].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ({\ramloop[3].ram.r_n_32 ,\ramloop[3].ram.r_n_33 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 ({\ramloop[7].ram.r_n_0 ,\ramloop[7].ram.r_n_1 ,\ramloop[7].ram.r_n_2 ,\ramloop[7].ram.r_n_3 ,\ramloop[7].ram.r_n_4 ,\ramloop[7].ram.r_n_5 ,\ramloop[7].ram.r_n_6 ,\ramloop[7].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 ({\ramloop[10].ram.r_n_0 ,\ramloop[10].ram.r_n_1 ,\ramloop[10].ram.r_n_2 ,\ramloop[10].ram.r_n_3 ,\ramloop[10].ram.r_n_4 ,\ramloop[10].ram.r_n_5 ,\ramloop[10].ram.r_n_6 ,\ramloop[10].ram.r_n_7 ,\ramloop[10].ram.r_n_8 ,\ramloop[10].ram.r_n_9 ,\ramloop[10].ram.r_n_10 ,\ramloop[10].ram.r_n_11 ,\ramloop[10].ram.r_n_12 ,\ramloop[10].ram.r_n_13 ,\ramloop[10].ram.r_n_14 ,\ramloop[10].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_12 ({\ramloop[9].ram.r_n_0 ,\ramloop[9].ram.r_n_1 ,\ramloop[9].ram.r_n_2 ,\ramloop[9].ram.r_n_3 ,\ramloop[9].ram.r_n_4 ,\ramloop[9].ram.r_n_5 ,\ramloop[9].ram.r_n_6 ,\ramloop[9].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_13 (\ramloop[8].ram.r_n_16 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_14 (\ramloop[7].ram.r_n_16 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_15 ({\ramloop[10].ram.r_n_32 ,\ramloop[10].ram.r_n_33 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_16 (\ramloop[9].ram.r_n_16 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_17 ({\ramloop[12].ram.r_n_0 ,\ramloop[12].ram.r_n_1 ,\ramloop[12].ram.r_n_2 ,\ramloop[12].ram.r_n_3 ,\ramloop[12].ram.r_n_4 ,\ramloop[12].ram.r_n_5 ,\ramloop[12].ram.r_n_6 ,\ramloop[12].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_18 ({\ramloop[11].ram.r_n_0 ,\ramloop[11].ram.r_n_1 ,\ramloop[11].ram.r_n_2 ,\ramloop[11].ram.r_n_3 ,\ramloop[11].ram.r_n_4 ,\ramloop[11].ram.r_n_5 ,\ramloop[11].ram.r_n_6 ,\ramloop[11].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_19 ({\ramloop[13].ram.r_n_0 ,\ramloop[13].ram.r_n_1 ,\ramloop[13].ram.r_n_2 ,\ramloop[13].ram.r_n_3 ,\ramloop[13].ram.r_n_4 ,\ramloop[13].ram.r_n_5 ,\ramloop[13].ram.r_n_6 ,\ramloop[13].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 (\ramloop[2].ram.r_n_16 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_20 (\ramloop[12].ram.r_n_16 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_21 (\ramloop[11].ram.r_n_16 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_22 (\ramloop[13].ram.r_n_16 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_23 ({\ramloop[15].ram.r_n_0 ,\ramloop[15].ram.r_n_1 ,\ramloop[15].ram.r_n_2 ,\ramloop[15].ram.r_n_3 ,\ramloop[15].ram.r_n_4 ,\ramloop[15].ram.r_n_5 ,\ramloop[15].ram.r_n_6 ,\ramloop[15].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_24 ({\ramloop[14].ram.r_n_0 ,\ramloop[14].ram.r_n_1 ,\ramloop[14].ram.r_n_2 ,\ramloop[14].ram.r_n_3 ,\ramloop[14].ram.r_n_4 ,\ramloop[14].ram.r_n_5 ,\ramloop[14].ram.r_n_6 ,\ramloop[14].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_25 ({\ramloop[17].ram.r_n_0 ,\ramloop[17].ram.r_n_1 ,\ramloop[17].ram.r_n_2 ,\ramloop[17].ram.r_n_3 ,\ramloop[17].ram.r_n_4 ,\ramloop[17].ram.r_n_5 ,\ramloop[17].ram.r_n_6 ,\ramloop[17].ram.r_n_7 ,\ramloop[17].ram.r_n_8 ,\ramloop[17].ram.r_n_9 ,\ramloop[17].ram.r_n_10 ,\ramloop[17].ram.r_n_11 ,\ramloop[17].ram.r_n_12 ,\ramloop[17].ram.r_n_13 ,\ramloop[17].ram.r_n_14 ,\ramloop[17].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_26 ({\ramloop[16].ram.r_n_0 ,\ramloop[16].ram.r_n_1 ,\ramloop[16].ram.r_n_2 ,\ramloop[16].ram.r_n_3 ,\ramloop[16].ram.r_n_4 ,\ramloop[16].ram.r_n_5 ,\ramloop[16].ram.r_n_6 ,\ramloop[16].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_27 (\ramloop[15].ram.r_n_16 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_28 (\ramloop[14].ram.r_n_16 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_29 ({\ramloop[17].ram.r_n_32 ,\ramloop[17].ram.r_n_33 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_30 (\ramloop[16].ram.r_n_16 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_31 ({\ramloop[19].ram.r_n_0 ,\ramloop[19].ram.r_n_1 ,\ramloop[19].ram.r_n_2 ,\ramloop[19].ram.r_n_3 ,\ramloop[19].ram.r_n_4 ,\ramloop[19].ram.r_n_5 ,\ramloop[19].ram.r_n_6 ,\ramloop[19].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_32 ({\ramloop[18].ram.r_n_0 ,\ramloop[18].ram.r_n_1 ,\ramloop[18].ram.r_n_2 ,\ramloop[18].ram.r_n_3 ,\ramloop[18].ram.r_n_4 ,\ramloop[18].ram.r_n_5 ,\ramloop[18].ram.r_n_6 ,\ramloop[18].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_33 ({\ramloop[20].ram.r_n_0 ,\ramloop[20].ram.r_n_1 ,\ramloop[20].ram.r_n_2 ,\ramloop[20].ram.r_n_3 ,\ramloop[20].ram.r_n_4 ,\ramloop[20].ram.r_n_5 ,\ramloop[20].ram.r_n_6 ,\ramloop[20].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_34 (\ramloop[19].ram.r_n_16 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_35 (\ramloop[18].ram.r_n_16 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_36 (\ramloop[20].ram.r_n_16 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_37 ({\ramloop[22].ram.r_n_0 ,\ramloop[22].ram.r_n_1 ,\ramloop[22].ram.r_n_2 ,\ramloop[22].ram.r_n_3 ,\ramloop[22].ram.r_n_4 ,\ramloop[22].ram.r_n_5 ,\ramloop[22].ram.r_n_6 ,\ramloop[22].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_38 ({\ramloop[21].ram.r_n_0 ,\ramloop[21].ram.r_n_1 ,\ramloop[21].ram.r_n_2 ,\ramloop[21].ram.r_n_3 ,\ramloop[21].ram.r_n_4 ,\ramloop[21].ram.r_n_5 ,\ramloop[21].ram.r_n_6 ,\ramloop[21].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_39 ({\ramloop[24].ram.r_n_0 ,\ramloop[24].ram.r_n_1 ,\ramloop[24].ram.r_n_2 ,\ramloop[24].ram.r_n_3 ,\ramloop[24].ram.r_n_4 ,\ramloop[24].ram.r_n_5 ,\ramloop[24].ram.r_n_6 ,\ramloop[24].ram.r_n_7 ,\ramloop[24].ram.r_n_8 ,\ramloop[24].ram.r_n_9 ,\ramloop[24].ram.r_n_10 ,\ramloop[24].ram.r_n_11 ,\ramloop[24].ram.r_n_12 ,\ramloop[24].ram.r_n_13 ,\ramloop[24].ram.r_n_14 ,\ramloop[24].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_40 ({\ramloop[23].ram.r_n_0 ,\ramloop[23].ram.r_n_1 ,\ramloop[23].ram.r_n_2 ,\ramloop[23].ram.r_n_3 ,\ramloop[23].ram.r_n_4 ,\ramloop[23].ram.r_n_5 ,\ramloop[23].ram.r_n_6 ,\ramloop[23].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_41 (\ramloop[22].ram.r_n_16 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_42 (\ramloop[21].ram.r_n_16 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_43 ({\ramloop[24].ram.r_n_32 ,\ramloop[24].ram.r_n_33 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_44 (\ramloop[23].ram.r_n_16 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_45 ({\ramloop[26].ram.r_n_0 ,\ramloop[26].ram.r_n_1 ,\ramloop[26].ram.r_n_2 ,\ramloop[26].ram.r_n_3 ,\ramloop[26].ram.r_n_4 ,\ramloop[26].ram.r_n_5 ,\ramloop[26].ram.r_n_6 ,\ramloop[26].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_46 ({\ramloop[25].ram.r_n_0 ,\ramloop[25].ram.r_n_1 ,\ramloop[25].ram.r_n_2 ,\ramloop[25].ram.r_n_3 ,\ramloop[25].ram.r_n_4 ,\ramloop[25].ram.r_n_5 ,\ramloop[25].ram.r_n_6 ,\ramloop[25].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_47 ({\ramloop[27].ram.r_n_0 ,\ramloop[27].ram.r_n_1 ,\ramloop[27].ram.r_n_2 ,\ramloop[27].ram.r_n_3 ,\ramloop[27].ram.r_n_4 ,\ramloop[27].ram.r_n_5 ,\ramloop[27].ram.r_n_6 ,\ramloop[27].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_48 (\ramloop[26].ram.r_n_16 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_49 (\ramloop[25].ram.r_n_16 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 ({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\ramloop[6].ram.r_n_2 ,\ramloop[6].ram.r_n_3 ,\ramloop[6].ram.r_n_4 ,\ramloop[6].ram.r_n_5 ,\ramloop[6].ram.r_n_6 ,\ramloop[6].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_50 (\ramloop[27].ram.r_n_16 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6 (\ramloop[5].ram.r_n_16 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 (\ramloop[4].ram.r_n_16 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_8 (\ramloop[6].ram.r_n_16 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 ({\ramloop[8].ram.r_n_0 ,\ramloop[8].ram.r_n_1 ,\ramloop[8].ram.r_n_2 ,\ramloop[8].ram.r_n_3 ,\ramloop[8].ram.r_n_4 ,\ramloop[8].ram.r_n_5 ,\ramloop[8].ram.r_n_6 ,\ramloop[8].ram.r_n_7 }),
        .DOADO({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 }),
        .DOPADOP(\ramloop[1].ram.r_n_16 ),
        .addra(addra[13:11]),
        .clka(clka),
        .douta(douta),
        .ram_douta(ram_douta));
  weightROM_blk_mem_gen_mux__parameterized0 \has_mux_b.B 
       (.\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ({\ramloop[3].ram.r_n_16 ,\ramloop[3].ram.r_n_17 ,\ramloop[3].ram.r_n_18 ,\ramloop[3].ram.r_n_19 ,\ramloop[3].ram.r_n_20 ,\ramloop[3].ram.r_n_21 ,\ramloop[3].ram.r_n_22 ,\ramloop[3].ram.r_n_23 ,\ramloop[3].ram.r_n_24 ,\ramloop[3].ram.r_n_25 ,\ramloop[3].ram.r_n_26 ,\ramloop[3].ram.r_n_27 ,\ramloop[3].ram.r_n_28 ,\ramloop[3].ram.r_n_29 ,\ramloop[3].ram.r_n_30 ,\ramloop[3].ram.r_n_31 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ({\ramloop[2].ram.r_n_8 ,\ramloop[2].ram.r_n_9 ,\ramloop[2].ram.r_n_10 ,\ramloop[2].ram.r_n_11 ,\ramloop[2].ram.r_n_12 ,\ramloop[2].ram.r_n_13 ,\ramloop[2].ram.r_n_14 ,\ramloop[2].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ({\ramloop[3].ram.r_n_34 ,\ramloop[3].ram.r_n_35 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 ({\ramloop[7].ram.r_n_8 ,\ramloop[7].ram.r_n_9 ,\ramloop[7].ram.r_n_10 ,\ramloop[7].ram.r_n_11 ,\ramloop[7].ram.r_n_12 ,\ramloop[7].ram.r_n_13 ,\ramloop[7].ram.r_n_14 ,\ramloop[7].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 ({\ramloop[10].ram.r_n_16 ,\ramloop[10].ram.r_n_17 ,\ramloop[10].ram.r_n_18 ,\ramloop[10].ram.r_n_19 ,\ramloop[10].ram.r_n_20 ,\ramloop[10].ram.r_n_21 ,\ramloop[10].ram.r_n_22 ,\ramloop[10].ram.r_n_23 ,\ramloop[10].ram.r_n_24 ,\ramloop[10].ram.r_n_25 ,\ramloop[10].ram.r_n_26 ,\ramloop[10].ram.r_n_27 ,\ramloop[10].ram.r_n_28 ,\ramloop[10].ram.r_n_29 ,\ramloop[10].ram.r_n_30 ,\ramloop[10].ram.r_n_31 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_12 ({\ramloop[9].ram.r_n_8 ,\ramloop[9].ram.r_n_9 ,\ramloop[9].ram.r_n_10 ,\ramloop[9].ram.r_n_11 ,\ramloop[9].ram.r_n_12 ,\ramloop[9].ram.r_n_13 ,\ramloop[9].ram.r_n_14 ,\ramloop[9].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_13 (\ramloop[8].ram.r_n_17 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_14 (\ramloop[7].ram.r_n_17 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_15 ({\ramloop[10].ram.r_n_34 ,\ramloop[10].ram.r_n_35 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_16 (\ramloop[9].ram.r_n_17 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_17 ({\ramloop[12].ram.r_n_8 ,\ramloop[12].ram.r_n_9 ,\ramloop[12].ram.r_n_10 ,\ramloop[12].ram.r_n_11 ,\ramloop[12].ram.r_n_12 ,\ramloop[12].ram.r_n_13 ,\ramloop[12].ram.r_n_14 ,\ramloop[12].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_18 ({\ramloop[11].ram.r_n_8 ,\ramloop[11].ram.r_n_9 ,\ramloop[11].ram.r_n_10 ,\ramloop[11].ram.r_n_11 ,\ramloop[11].ram.r_n_12 ,\ramloop[11].ram.r_n_13 ,\ramloop[11].ram.r_n_14 ,\ramloop[11].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_19 ({\ramloop[13].ram.r_n_8 ,\ramloop[13].ram.r_n_9 ,\ramloop[13].ram.r_n_10 ,\ramloop[13].ram.r_n_11 ,\ramloop[13].ram.r_n_12 ,\ramloop[13].ram.r_n_13 ,\ramloop[13].ram.r_n_14 ,\ramloop[13].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 (\ramloop[2].ram.r_n_17 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_20 (\ramloop[12].ram.r_n_17 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_21 (\ramloop[11].ram.r_n_17 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_22 (\ramloop[13].ram.r_n_17 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_23 ({\ramloop[15].ram.r_n_8 ,\ramloop[15].ram.r_n_9 ,\ramloop[15].ram.r_n_10 ,\ramloop[15].ram.r_n_11 ,\ramloop[15].ram.r_n_12 ,\ramloop[15].ram.r_n_13 ,\ramloop[15].ram.r_n_14 ,\ramloop[15].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_24 ({\ramloop[14].ram.r_n_8 ,\ramloop[14].ram.r_n_9 ,\ramloop[14].ram.r_n_10 ,\ramloop[14].ram.r_n_11 ,\ramloop[14].ram.r_n_12 ,\ramloop[14].ram.r_n_13 ,\ramloop[14].ram.r_n_14 ,\ramloop[14].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_25 ({\ramloop[17].ram.r_n_16 ,\ramloop[17].ram.r_n_17 ,\ramloop[17].ram.r_n_18 ,\ramloop[17].ram.r_n_19 ,\ramloop[17].ram.r_n_20 ,\ramloop[17].ram.r_n_21 ,\ramloop[17].ram.r_n_22 ,\ramloop[17].ram.r_n_23 ,\ramloop[17].ram.r_n_24 ,\ramloop[17].ram.r_n_25 ,\ramloop[17].ram.r_n_26 ,\ramloop[17].ram.r_n_27 ,\ramloop[17].ram.r_n_28 ,\ramloop[17].ram.r_n_29 ,\ramloop[17].ram.r_n_30 ,\ramloop[17].ram.r_n_31 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_26 ({\ramloop[16].ram.r_n_8 ,\ramloop[16].ram.r_n_9 ,\ramloop[16].ram.r_n_10 ,\ramloop[16].ram.r_n_11 ,\ramloop[16].ram.r_n_12 ,\ramloop[16].ram.r_n_13 ,\ramloop[16].ram.r_n_14 ,\ramloop[16].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_27 (\ramloop[15].ram.r_n_17 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_28 (\ramloop[14].ram.r_n_17 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_29 ({\ramloop[17].ram.r_n_34 ,\ramloop[17].ram.r_n_35 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 ({\ramloop[5].ram.r_n_8 ,\ramloop[5].ram.r_n_9 ,\ramloop[5].ram.r_n_10 ,\ramloop[5].ram.r_n_11 ,\ramloop[5].ram.r_n_12 ,\ramloop[5].ram.r_n_13 ,\ramloop[5].ram.r_n_14 ,\ramloop[5].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_30 (\ramloop[16].ram.r_n_17 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_31 ({\ramloop[19].ram.r_n_8 ,\ramloop[19].ram.r_n_9 ,\ramloop[19].ram.r_n_10 ,\ramloop[19].ram.r_n_11 ,\ramloop[19].ram.r_n_12 ,\ramloop[19].ram.r_n_13 ,\ramloop[19].ram.r_n_14 ,\ramloop[19].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_32 ({\ramloop[18].ram.r_n_8 ,\ramloop[18].ram.r_n_9 ,\ramloop[18].ram.r_n_10 ,\ramloop[18].ram.r_n_11 ,\ramloop[18].ram.r_n_12 ,\ramloop[18].ram.r_n_13 ,\ramloop[18].ram.r_n_14 ,\ramloop[18].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_33 ({\ramloop[20].ram.r_n_8 ,\ramloop[20].ram.r_n_9 ,\ramloop[20].ram.r_n_10 ,\ramloop[20].ram.r_n_11 ,\ramloop[20].ram.r_n_12 ,\ramloop[20].ram.r_n_13 ,\ramloop[20].ram.r_n_14 ,\ramloop[20].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_34 (\ramloop[19].ram.r_n_17 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_35 (\ramloop[18].ram.r_n_17 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_36 (\ramloop[20].ram.r_n_17 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_37 ({\ramloop[22].ram.r_n_8 ,\ramloop[22].ram.r_n_9 ,\ramloop[22].ram.r_n_10 ,\ramloop[22].ram.r_n_11 ,\ramloop[22].ram.r_n_12 ,\ramloop[22].ram.r_n_13 ,\ramloop[22].ram.r_n_14 ,\ramloop[22].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_38 ({\ramloop[21].ram.r_n_8 ,\ramloop[21].ram.r_n_9 ,\ramloop[21].ram.r_n_10 ,\ramloop[21].ram.r_n_11 ,\ramloop[21].ram.r_n_12 ,\ramloop[21].ram.r_n_13 ,\ramloop[21].ram.r_n_14 ,\ramloop[21].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_39 ({\ramloop[24].ram.r_n_16 ,\ramloop[24].ram.r_n_17 ,\ramloop[24].ram.r_n_18 ,\ramloop[24].ram.r_n_19 ,\ramloop[24].ram.r_n_20 ,\ramloop[24].ram.r_n_21 ,\ramloop[24].ram.r_n_22 ,\ramloop[24].ram.r_n_23 ,\ramloop[24].ram.r_n_24 ,\ramloop[24].ram.r_n_25 ,\ramloop[24].ram.r_n_26 ,\ramloop[24].ram.r_n_27 ,\ramloop[24].ram.r_n_28 ,\ramloop[24].ram.r_n_29 ,\ramloop[24].ram.r_n_30 ,\ramloop[24].ram.r_n_31 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 ({\ramloop[4].ram.r_n_8 ,\ramloop[4].ram.r_n_9 ,\ramloop[4].ram.r_n_10 ,\ramloop[4].ram.r_n_11 ,\ramloop[4].ram.r_n_12 ,\ramloop[4].ram.r_n_13 ,\ramloop[4].ram.r_n_14 ,\ramloop[4].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_40 ({\ramloop[23].ram.r_n_8 ,\ramloop[23].ram.r_n_9 ,\ramloop[23].ram.r_n_10 ,\ramloop[23].ram.r_n_11 ,\ramloop[23].ram.r_n_12 ,\ramloop[23].ram.r_n_13 ,\ramloop[23].ram.r_n_14 ,\ramloop[23].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_41 (\ramloop[22].ram.r_n_17 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_42 (\ramloop[21].ram.r_n_17 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_43 ({\ramloop[24].ram.r_n_34 ,\ramloop[24].ram.r_n_35 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_44 (\ramloop[23].ram.r_n_17 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_45 ({\ramloop[26].ram.r_n_8 ,\ramloop[26].ram.r_n_9 ,\ramloop[26].ram.r_n_10 ,\ramloop[26].ram.r_n_11 ,\ramloop[26].ram.r_n_12 ,\ramloop[26].ram.r_n_13 ,\ramloop[26].ram.r_n_14 ,\ramloop[26].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_46 ({\ramloop[25].ram.r_n_8 ,\ramloop[25].ram.r_n_9 ,\ramloop[25].ram.r_n_10 ,\ramloop[25].ram.r_n_11 ,\ramloop[25].ram.r_n_12 ,\ramloop[25].ram.r_n_13 ,\ramloop[25].ram.r_n_14 ,\ramloop[25].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_47 ({\ramloop[27].ram.r_n_8 ,\ramloop[27].ram.r_n_9 ,\ramloop[27].ram.r_n_10 ,\ramloop[27].ram.r_n_11 ,\ramloop[27].ram.r_n_12 ,\ramloop[27].ram.r_n_13 ,\ramloop[27].ram.r_n_14 ,\ramloop[27].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_48 (\ramloop[26].ram.r_n_17 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_49 (\ramloop[25].ram.r_n_17 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 ({\ramloop[6].ram.r_n_8 ,\ramloop[6].ram.r_n_9 ,\ramloop[6].ram.r_n_10 ,\ramloop[6].ram.r_n_11 ,\ramloop[6].ram.r_n_12 ,\ramloop[6].ram.r_n_13 ,\ramloop[6].ram.r_n_14 ,\ramloop[6].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_50 (\ramloop[27].ram.r_n_17 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6 (\ramloop[5].ram.r_n_17 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 (\ramloop[4].ram.r_n_17 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_8 (\ramloop[6].ram.r_n_17 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 ({\ramloop[8].ram.r_n_8 ,\ramloop[8].ram.r_n_9 ,\ramloop[8].ram.r_n_10 ,\ramloop[8].ram.r_n_11 ,\ramloop[8].ram.r_n_12 ,\ramloop[8].ram.r_n_13 ,\ramloop[8].ram.r_n_14 ,\ramloop[8].ram.r_n_15 }),
        .DOBDO({\ramloop[1].ram.r_n_8 ,\ramloop[1].ram.r_n_9 ,\ramloop[1].ram.r_n_10 ,\ramloop[1].ram.r_n_11 ,\ramloop[1].ram.r_n_12 ,\ramloop[1].ram.r_n_13 ,\ramloop[1].ram.r_n_14 ,\ramloop[1].ram.r_n_15 }),
        .DOPBDOP(\ramloop[1].ram.r_n_17 ),
        .addrb(addrb[13:11]),
        .clkb(clkb),
        .doutb(doutb),
        .ram_doutb(ram_doutb));
  weightROM_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra[11:0]),
        .\addra[13] (\ramloop[21].ram.r_n_18 ),
        .addrb(addrb[11:0]),
        .\addrb[13] (\ramloop[21].ram.r_n_19 ),
        .clka(clka),
        .clkb(clkb),
        .ram_douta(ram_douta),
        .ram_doutb(ram_doutb));
  weightROM_blk_mem_gen_prim_width__parameterized9 \ramloop[10].ram.r 
       (.addra(addra[10:0]),
        .addrb(addrb[10:0]),
        .clka(clka),
        .clkb(clkb),
        .\douta[34] ({\ramloop[10].ram.r_n_0 ,\ramloop[10].ram.r_n_1 ,\ramloop[10].ram.r_n_2 ,\ramloop[10].ram.r_n_3 ,\ramloop[10].ram.r_n_4 ,\ramloop[10].ram.r_n_5 ,\ramloop[10].ram.r_n_6 ,\ramloop[10].ram.r_n_7 ,\ramloop[10].ram.r_n_8 ,\ramloop[10].ram.r_n_9 ,\ramloop[10].ram.r_n_10 ,\ramloop[10].ram.r_n_11 ,\ramloop[10].ram.r_n_12 ,\ramloop[10].ram.r_n_13 ,\ramloop[10].ram.r_n_14 ,\ramloop[10].ram.r_n_15 }),
        .\douta[35] ({\ramloop[10].ram.r_n_32 ,\ramloop[10].ram.r_n_33 }),
        .\doutb[34] ({\ramloop[10].ram.r_n_16 ,\ramloop[10].ram.r_n_17 ,\ramloop[10].ram.r_n_18 ,\ramloop[10].ram.r_n_19 ,\ramloop[10].ram.r_n_20 ,\ramloop[10].ram.r_n_21 ,\ramloop[10].ram.r_n_22 ,\ramloop[10].ram.r_n_23 ,\ramloop[10].ram.r_n_24 ,\ramloop[10].ram.r_n_25 ,\ramloop[10].ram.r_n_26 ,\ramloop[10].ram.r_n_27 ,\ramloop[10].ram.r_n_28 ,\ramloop[10].ram.r_n_29 ,\ramloop[10].ram.r_n_30 ,\ramloop[10].ram.r_n_31 }),
        .\doutb[35] ({\ramloop[10].ram.r_n_34 ,\ramloop[10].ram.r_n_35 }),
        .ena_array(ena_array),
        .enb_array(enb_array));
  weightROM_blk_mem_gen_prim_width__parameterized10 \ramloop[11].ram.r 
       (.addra(addra[11:0]),
        .\addra[13] (\ramloop[21].ram.r_n_18 ),
        .addrb(addrb[11:0]),
        .\addrb[13] (\ramloop[21].ram.r_n_19 ),
        .clka(clka),
        .clkb(clkb),
        .\douta[34] ({\ramloop[11].ram.r_n_0 ,\ramloop[11].ram.r_n_1 ,\ramloop[11].ram.r_n_2 ,\ramloop[11].ram.r_n_3 ,\ramloop[11].ram.r_n_4 ,\ramloop[11].ram.r_n_5 ,\ramloop[11].ram.r_n_6 ,\ramloop[11].ram.r_n_7 }),
        .\douta[35] (\ramloop[11].ram.r_n_16 ),
        .\doutb[34] ({\ramloop[11].ram.r_n_8 ,\ramloop[11].ram.r_n_9 ,\ramloop[11].ram.r_n_10 ,\ramloop[11].ram.r_n_11 ,\ramloop[11].ram.r_n_12 ,\ramloop[11].ram.r_n_13 ,\ramloop[11].ram.r_n_14 ,\ramloop[11].ram.r_n_15 }),
        .\doutb[35] (\ramloop[11].ram.r_n_17 ));
  weightROM_blk_mem_gen_prim_width__parameterized11 \ramloop[12].ram.r 
       (.addra(addra[11:0]),
        .\addra[12] (\ramloop[22].ram.r_n_18 ),
        .addrb(addrb[11:0]),
        .\addrb[12] (\ramloop[22].ram.r_n_19 ),
        .clka(clka),
        .clkb(clkb),
        .\douta[34] ({\ramloop[12].ram.r_n_0 ,\ramloop[12].ram.r_n_1 ,\ramloop[12].ram.r_n_2 ,\ramloop[12].ram.r_n_3 ,\ramloop[12].ram.r_n_4 ,\ramloop[12].ram.r_n_5 ,\ramloop[12].ram.r_n_6 ,\ramloop[12].ram.r_n_7 }),
        .\douta[35] (\ramloop[12].ram.r_n_16 ),
        .\doutb[34] ({\ramloop[12].ram.r_n_8 ,\ramloop[12].ram.r_n_9 ,\ramloop[12].ram.r_n_10 ,\ramloop[12].ram.r_n_11 ,\ramloop[12].ram.r_n_12 ,\ramloop[12].ram.r_n_13 ,\ramloop[12].ram.r_n_14 ,\ramloop[12].ram.r_n_15 }),
        .\doutb[35] (\ramloop[12].ram.r_n_17 ));
  weightROM_blk_mem_gen_prim_width__parameterized12 \ramloop[13].ram.r 
       (.addra(addra[11:0]),
        .\addra[13] (\ramloop[23].ram.r_n_18 ),
        .addrb(addrb[11:0]),
        .\addrb[13] (\ramloop[23].ram.r_n_19 ),
        .clka(clka),
        .clkb(clkb),
        .\douta[34] ({\ramloop[13].ram.r_n_0 ,\ramloop[13].ram.r_n_1 ,\ramloop[13].ram.r_n_2 ,\ramloop[13].ram.r_n_3 ,\ramloop[13].ram.r_n_4 ,\ramloop[13].ram.r_n_5 ,\ramloop[13].ram.r_n_6 ,\ramloop[13].ram.r_n_7 }),
        .\douta[35] (\ramloop[13].ram.r_n_16 ),
        .\doutb[34] ({\ramloop[13].ram.r_n_8 ,\ramloop[13].ram.r_n_9 ,\ramloop[13].ram.r_n_10 ,\ramloop[13].ram.r_n_11 ,\ramloop[13].ram.r_n_12 ,\ramloop[13].ram.r_n_13 ,\ramloop[13].ram.r_n_14 ,\ramloop[13].ram.r_n_15 }),
        .\doutb[35] (\ramloop[13].ram.r_n_17 ));
  weightROM_blk_mem_gen_prim_width__parameterized13 \ramloop[14].ram.r 
       (.addra(addra[11:0]),
        .\addra[13] (\ramloop[21].ram.r_n_18 ),
        .addrb(addrb[11:0]),
        .\addrb[13] (\ramloop[21].ram.r_n_19 ),
        .clka(clka),
        .clkb(clkb),
        .\douta[43] ({\ramloop[14].ram.r_n_0 ,\ramloop[14].ram.r_n_1 ,\ramloop[14].ram.r_n_2 ,\ramloop[14].ram.r_n_3 ,\ramloop[14].ram.r_n_4 ,\ramloop[14].ram.r_n_5 ,\ramloop[14].ram.r_n_6 ,\ramloop[14].ram.r_n_7 }),
        .\douta[44] (\ramloop[14].ram.r_n_16 ),
        .\doutb[43] ({\ramloop[14].ram.r_n_8 ,\ramloop[14].ram.r_n_9 ,\ramloop[14].ram.r_n_10 ,\ramloop[14].ram.r_n_11 ,\ramloop[14].ram.r_n_12 ,\ramloop[14].ram.r_n_13 ,\ramloop[14].ram.r_n_14 ,\ramloop[14].ram.r_n_15 }),
        .\doutb[44] (\ramloop[14].ram.r_n_17 ));
  weightROM_blk_mem_gen_prim_width__parameterized14 \ramloop[15].ram.r 
       (.addra(addra[11:0]),
        .\addra[12] (\ramloop[22].ram.r_n_18 ),
        .addrb(addrb[11:0]),
        .\addrb[12] (\ramloop[22].ram.r_n_19 ),
        .clka(clka),
        .clkb(clkb),
        .\douta[43] ({\ramloop[15].ram.r_n_0 ,\ramloop[15].ram.r_n_1 ,\ramloop[15].ram.r_n_2 ,\ramloop[15].ram.r_n_3 ,\ramloop[15].ram.r_n_4 ,\ramloop[15].ram.r_n_5 ,\ramloop[15].ram.r_n_6 ,\ramloop[15].ram.r_n_7 }),
        .\douta[44] (\ramloop[15].ram.r_n_16 ),
        .\doutb[43] ({\ramloop[15].ram.r_n_8 ,\ramloop[15].ram.r_n_9 ,\ramloop[15].ram.r_n_10 ,\ramloop[15].ram.r_n_11 ,\ramloop[15].ram.r_n_12 ,\ramloop[15].ram.r_n_13 ,\ramloop[15].ram.r_n_14 ,\ramloop[15].ram.r_n_15 }),
        .\doutb[44] (\ramloop[15].ram.r_n_17 ));
  weightROM_blk_mem_gen_prim_width__parameterized15 \ramloop[16].ram.r 
       (.addra(addra[11:0]),
        .\addra[13] (\ramloop[23].ram.r_n_18 ),
        .addrb(addrb[11:0]),
        .\addrb[13] (\ramloop[23].ram.r_n_19 ),
        .clka(clka),
        .clkb(clkb),
        .\douta[43] ({\ramloop[16].ram.r_n_0 ,\ramloop[16].ram.r_n_1 ,\ramloop[16].ram.r_n_2 ,\ramloop[16].ram.r_n_3 ,\ramloop[16].ram.r_n_4 ,\ramloop[16].ram.r_n_5 ,\ramloop[16].ram.r_n_6 ,\ramloop[16].ram.r_n_7 }),
        .\douta[44] (\ramloop[16].ram.r_n_16 ),
        .\doutb[43] ({\ramloop[16].ram.r_n_8 ,\ramloop[16].ram.r_n_9 ,\ramloop[16].ram.r_n_10 ,\ramloop[16].ram.r_n_11 ,\ramloop[16].ram.r_n_12 ,\ramloop[16].ram.r_n_13 ,\ramloop[16].ram.r_n_14 ,\ramloop[16].ram.r_n_15 }),
        .\doutb[44] (\ramloop[16].ram.r_n_17 ));
  weightROM_blk_mem_gen_prim_width__parameterized16 \ramloop[17].ram.r 
       (.addra(addra[10:0]),
        .addrb(addrb[10:0]),
        .clka(clka),
        .clkb(clkb),
        .\douta[52] ({\ramloop[17].ram.r_n_0 ,\ramloop[17].ram.r_n_1 ,\ramloop[17].ram.r_n_2 ,\ramloop[17].ram.r_n_3 ,\ramloop[17].ram.r_n_4 ,\ramloop[17].ram.r_n_5 ,\ramloop[17].ram.r_n_6 ,\ramloop[17].ram.r_n_7 ,\ramloop[17].ram.r_n_8 ,\ramloop[17].ram.r_n_9 ,\ramloop[17].ram.r_n_10 ,\ramloop[17].ram.r_n_11 ,\ramloop[17].ram.r_n_12 ,\ramloop[17].ram.r_n_13 ,\ramloop[17].ram.r_n_14 ,\ramloop[17].ram.r_n_15 }),
        .\douta[53] ({\ramloop[17].ram.r_n_32 ,\ramloop[17].ram.r_n_33 }),
        .\doutb[52] ({\ramloop[17].ram.r_n_16 ,\ramloop[17].ram.r_n_17 ,\ramloop[17].ram.r_n_18 ,\ramloop[17].ram.r_n_19 ,\ramloop[17].ram.r_n_20 ,\ramloop[17].ram.r_n_21 ,\ramloop[17].ram.r_n_22 ,\ramloop[17].ram.r_n_23 ,\ramloop[17].ram.r_n_24 ,\ramloop[17].ram.r_n_25 ,\ramloop[17].ram.r_n_26 ,\ramloop[17].ram.r_n_27 ,\ramloop[17].ram.r_n_28 ,\ramloop[17].ram.r_n_29 ,\ramloop[17].ram.r_n_30 ,\ramloop[17].ram.r_n_31 }),
        .\doutb[53] ({\ramloop[17].ram.r_n_34 ,\ramloop[17].ram.r_n_35 }),
        .ena_array(ena_array),
        .enb_array(enb_array));
  weightROM_blk_mem_gen_prim_width__parameterized17 \ramloop[18].ram.r 
       (.addra(addra[11:0]),
        .\addra[13] (\ramloop[21].ram.r_n_18 ),
        .addrb(addrb[11:0]),
        .\addrb[13] (\ramloop[21].ram.r_n_19 ),
        .clka(clka),
        .clkb(clkb),
        .\douta[52] ({\ramloop[18].ram.r_n_0 ,\ramloop[18].ram.r_n_1 ,\ramloop[18].ram.r_n_2 ,\ramloop[18].ram.r_n_3 ,\ramloop[18].ram.r_n_4 ,\ramloop[18].ram.r_n_5 ,\ramloop[18].ram.r_n_6 ,\ramloop[18].ram.r_n_7 }),
        .\douta[53] (\ramloop[18].ram.r_n_16 ),
        .\doutb[52] ({\ramloop[18].ram.r_n_8 ,\ramloop[18].ram.r_n_9 ,\ramloop[18].ram.r_n_10 ,\ramloop[18].ram.r_n_11 ,\ramloop[18].ram.r_n_12 ,\ramloop[18].ram.r_n_13 ,\ramloop[18].ram.r_n_14 ,\ramloop[18].ram.r_n_15 }),
        .\doutb[53] (\ramloop[18].ram.r_n_17 ));
  weightROM_blk_mem_gen_prim_width__parameterized18 \ramloop[19].ram.r 
       (.addra(addra[11:0]),
        .\addra[12] (\ramloop[22].ram.r_n_18 ),
        .addrb(addrb[11:0]),
        .\addrb[12] (\ramloop[22].ram.r_n_19 ),
        .clka(clka),
        .clkb(clkb),
        .\douta[52] ({\ramloop[19].ram.r_n_0 ,\ramloop[19].ram.r_n_1 ,\ramloop[19].ram.r_n_2 ,\ramloop[19].ram.r_n_3 ,\ramloop[19].ram.r_n_4 ,\ramloop[19].ram.r_n_5 ,\ramloop[19].ram.r_n_6 ,\ramloop[19].ram.r_n_7 }),
        .\douta[53] (\ramloop[19].ram.r_n_16 ),
        .\doutb[52] ({\ramloop[19].ram.r_n_8 ,\ramloop[19].ram.r_n_9 ,\ramloop[19].ram.r_n_10 ,\ramloop[19].ram.r_n_11 ,\ramloop[19].ram.r_n_12 ,\ramloop[19].ram.r_n_13 ,\ramloop[19].ram.r_n_14 ,\ramloop[19].ram.r_n_15 }),
        .\doutb[53] (\ramloop[19].ram.r_n_17 ));
  weightROM_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.DOADO({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 }),
        .DOBDO({\ramloop[1].ram.r_n_8 ,\ramloop[1].ram.r_n_9 ,\ramloop[1].ram.r_n_10 ,\ramloop[1].ram.r_n_11 ,\ramloop[1].ram.r_n_12 ,\ramloop[1].ram.r_n_13 ,\ramloop[1].ram.r_n_14 ,\ramloop[1].ram.r_n_15 }),
        .DOPADOP(\ramloop[1].ram.r_n_16 ),
        .DOPBDOP(\ramloop[1].ram.r_n_17 ),
        .addra(addra[11:0]),
        .\addra[12] (\ramloop[22].ram.r_n_18 ),
        .addrb(addrb[11:0]),
        .\addrb[12] (\ramloop[22].ram.r_n_19 ),
        .clka(clka),
        .clkb(clkb));
  weightROM_blk_mem_gen_prim_width__parameterized19 \ramloop[20].ram.r 
       (.addra(addra[11:0]),
        .\addra[13] (\ramloop[23].ram.r_n_18 ),
        .addrb(addrb[11:0]),
        .\addrb[13] (\ramloop[23].ram.r_n_19 ),
        .clka(clka),
        .clkb(clkb),
        .\douta[52] ({\ramloop[20].ram.r_n_0 ,\ramloop[20].ram.r_n_1 ,\ramloop[20].ram.r_n_2 ,\ramloop[20].ram.r_n_3 ,\ramloop[20].ram.r_n_4 ,\ramloop[20].ram.r_n_5 ,\ramloop[20].ram.r_n_6 ,\ramloop[20].ram.r_n_7 }),
        .\douta[53] (\ramloop[20].ram.r_n_16 ),
        .\doutb[52] ({\ramloop[20].ram.r_n_8 ,\ramloop[20].ram.r_n_9 ,\ramloop[20].ram.r_n_10 ,\ramloop[20].ram.r_n_11 ,\ramloop[20].ram.r_n_12 ,\ramloop[20].ram.r_n_13 ,\ramloop[20].ram.r_n_14 ,\ramloop[20].ram.r_n_15 }),
        .\doutb[53] (\ramloop[20].ram.r_n_17 ));
  weightROM_blk_mem_gen_prim_width__parameterized20 \ramloop[21].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (\ramloop[21].ram.r_n_18 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\ramloop[21].ram.r_n_19 ),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .\douta[61] ({\ramloop[21].ram.r_n_0 ,\ramloop[21].ram.r_n_1 ,\ramloop[21].ram.r_n_2 ,\ramloop[21].ram.r_n_3 ,\ramloop[21].ram.r_n_4 ,\ramloop[21].ram.r_n_5 ,\ramloop[21].ram.r_n_6 ,\ramloop[21].ram.r_n_7 }),
        .\douta[62] (\ramloop[21].ram.r_n_16 ),
        .\doutb[61] ({\ramloop[21].ram.r_n_8 ,\ramloop[21].ram.r_n_9 ,\ramloop[21].ram.r_n_10 ,\ramloop[21].ram.r_n_11 ,\ramloop[21].ram.r_n_12 ,\ramloop[21].ram.r_n_13 ,\ramloop[21].ram.r_n_14 ,\ramloop[21].ram.r_n_15 }),
        .\doutb[62] (\ramloop[21].ram.r_n_17 ));
  weightROM_blk_mem_gen_prim_width__parameterized21 \ramloop[22].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (\ramloop[22].ram.r_n_18 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\ramloop[22].ram.r_n_19 ),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .\douta[61] ({\ramloop[22].ram.r_n_0 ,\ramloop[22].ram.r_n_1 ,\ramloop[22].ram.r_n_2 ,\ramloop[22].ram.r_n_3 ,\ramloop[22].ram.r_n_4 ,\ramloop[22].ram.r_n_5 ,\ramloop[22].ram.r_n_6 ,\ramloop[22].ram.r_n_7 }),
        .\douta[62] (\ramloop[22].ram.r_n_16 ),
        .\doutb[61] ({\ramloop[22].ram.r_n_8 ,\ramloop[22].ram.r_n_9 ,\ramloop[22].ram.r_n_10 ,\ramloop[22].ram.r_n_11 ,\ramloop[22].ram.r_n_12 ,\ramloop[22].ram.r_n_13 ,\ramloop[22].ram.r_n_14 ,\ramloop[22].ram.r_n_15 }),
        .\doutb[62] (\ramloop[22].ram.r_n_17 ));
  weightROM_blk_mem_gen_prim_width__parameterized22 \ramloop[23].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (\ramloop[23].ram.r_n_18 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\ramloop[23].ram.r_n_19 ),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .\douta[61] ({\ramloop[23].ram.r_n_0 ,\ramloop[23].ram.r_n_1 ,\ramloop[23].ram.r_n_2 ,\ramloop[23].ram.r_n_3 ,\ramloop[23].ram.r_n_4 ,\ramloop[23].ram.r_n_5 ,\ramloop[23].ram.r_n_6 ,\ramloop[23].ram.r_n_7 }),
        .\douta[62] (\ramloop[23].ram.r_n_16 ),
        .\doutb[61] ({\ramloop[23].ram.r_n_8 ,\ramloop[23].ram.r_n_9 ,\ramloop[23].ram.r_n_10 ,\ramloop[23].ram.r_n_11 ,\ramloop[23].ram.r_n_12 ,\ramloop[23].ram.r_n_13 ,\ramloop[23].ram.r_n_14 ,\ramloop[23].ram.r_n_15 }),
        .\doutb[62] (\ramloop[23].ram.r_n_17 ));
  weightROM_blk_mem_gen_prim_width__parameterized23 \ramloop[24].ram.r 
       (.addra(addra[10:0]),
        .addrb(addrb[10:0]),
        .clka(clka),
        .clkb(clkb),
        .\douta[70] ({\ramloop[24].ram.r_n_0 ,\ramloop[24].ram.r_n_1 ,\ramloop[24].ram.r_n_2 ,\ramloop[24].ram.r_n_3 ,\ramloop[24].ram.r_n_4 ,\ramloop[24].ram.r_n_5 ,\ramloop[24].ram.r_n_6 ,\ramloop[24].ram.r_n_7 ,\ramloop[24].ram.r_n_8 ,\ramloop[24].ram.r_n_9 ,\ramloop[24].ram.r_n_10 ,\ramloop[24].ram.r_n_11 ,\ramloop[24].ram.r_n_12 ,\ramloop[24].ram.r_n_13 ,\ramloop[24].ram.r_n_14 ,\ramloop[24].ram.r_n_15 }),
        .\douta[71] ({\ramloop[24].ram.r_n_32 ,\ramloop[24].ram.r_n_33 }),
        .\doutb[70] ({\ramloop[24].ram.r_n_16 ,\ramloop[24].ram.r_n_17 ,\ramloop[24].ram.r_n_18 ,\ramloop[24].ram.r_n_19 ,\ramloop[24].ram.r_n_20 ,\ramloop[24].ram.r_n_21 ,\ramloop[24].ram.r_n_22 ,\ramloop[24].ram.r_n_23 ,\ramloop[24].ram.r_n_24 ,\ramloop[24].ram.r_n_25 ,\ramloop[24].ram.r_n_26 ,\ramloop[24].ram.r_n_27 ,\ramloop[24].ram.r_n_28 ,\ramloop[24].ram.r_n_29 ,\ramloop[24].ram.r_n_30 ,\ramloop[24].ram.r_n_31 }),
        .\doutb[71] ({\ramloop[24].ram.r_n_34 ,\ramloop[24].ram.r_n_35 }),
        .ena_array(ena_array),
        .enb_array(enb_array));
  weightROM_blk_mem_gen_prim_width__parameterized24 \ramloop[25].ram.r 
       (.addra(addra[11:0]),
        .\addra[13] (\ramloop[21].ram.r_n_18 ),
        .addrb(addrb[11:0]),
        .\addrb[13] (\ramloop[21].ram.r_n_19 ),
        .clka(clka),
        .clkb(clkb),
        .\douta[70] ({\ramloop[25].ram.r_n_0 ,\ramloop[25].ram.r_n_1 ,\ramloop[25].ram.r_n_2 ,\ramloop[25].ram.r_n_3 ,\ramloop[25].ram.r_n_4 ,\ramloop[25].ram.r_n_5 ,\ramloop[25].ram.r_n_6 ,\ramloop[25].ram.r_n_7 }),
        .\douta[71] (\ramloop[25].ram.r_n_16 ),
        .\doutb[70] ({\ramloop[25].ram.r_n_8 ,\ramloop[25].ram.r_n_9 ,\ramloop[25].ram.r_n_10 ,\ramloop[25].ram.r_n_11 ,\ramloop[25].ram.r_n_12 ,\ramloop[25].ram.r_n_13 ,\ramloop[25].ram.r_n_14 ,\ramloop[25].ram.r_n_15 }),
        .\doutb[71] (\ramloop[25].ram.r_n_17 ));
  weightROM_blk_mem_gen_prim_width__parameterized25 \ramloop[26].ram.r 
       (.addra(addra[11:0]),
        .\addra[12] (\ramloop[22].ram.r_n_18 ),
        .addrb(addrb[11:0]),
        .\addrb[12] (\ramloop[22].ram.r_n_19 ),
        .clka(clka),
        .clkb(clkb),
        .\douta[70] ({\ramloop[26].ram.r_n_0 ,\ramloop[26].ram.r_n_1 ,\ramloop[26].ram.r_n_2 ,\ramloop[26].ram.r_n_3 ,\ramloop[26].ram.r_n_4 ,\ramloop[26].ram.r_n_5 ,\ramloop[26].ram.r_n_6 ,\ramloop[26].ram.r_n_7 }),
        .\douta[71] (\ramloop[26].ram.r_n_16 ),
        .\doutb[70] ({\ramloop[26].ram.r_n_8 ,\ramloop[26].ram.r_n_9 ,\ramloop[26].ram.r_n_10 ,\ramloop[26].ram.r_n_11 ,\ramloop[26].ram.r_n_12 ,\ramloop[26].ram.r_n_13 ,\ramloop[26].ram.r_n_14 ,\ramloop[26].ram.r_n_15 }),
        .\doutb[71] (\ramloop[26].ram.r_n_17 ));
  weightROM_blk_mem_gen_prim_width__parameterized26 \ramloop[27].ram.r 
       (.addra(addra[11:0]),
        .\addra[13] (\ramloop[23].ram.r_n_18 ),
        .addrb(addrb[11:0]),
        .\addrb[13] (\ramloop[23].ram.r_n_19 ),
        .clka(clka),
        .clkb(clkb),
        .\douta[70] ({\ramloop[27].ram.r_n_0 ,\ramloop[27].ram.r_n_1 ,\ramloop[27].ram.r_n_2 ,\ramloop[27].ram.r_n_3 ,\ramloop[27].ram.r_n_4 ,\ramloop[27].ram.r_n_5 ,\ramloop[27].ram.r_n_6 ,\ramloop[27].ram.r_n_7 }),
        .\douta[71] (\ramloop[27].ram.r_n_16 ),
        .\doutb[70] ({\ramloop[27].ram.r_n_8 ,\ramloop[27].ram.r_n_9 ,\ramloop[27].ram.r_n_10 ,\ramloop[27].ram.r_n_11 ,\ramloop[27].ram.r_n_12 ,\ramloop[27].ram.r_n_13 ,\ramloop[27].ram.r_n_14 ,\ramloop[27].ram.r_n_15 }),
        .\doutb[71] (\ramloop[27].ram.r_n_17 ));
  weightROM_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.addra(addra[11:0]),
        .\addra[13] (\ramloop[23].ram.r_n_18 ),
        .addrb(addrb[11:0]),
        .\addrb[13] (\ramloop[23].ram.r_n_19 ),
        .clka(clka),
        .clkb(clkb),
        .\douta[7] ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 }),
        .\douta[8] (\ramloop[2].ram.r_n_16 ),
        .\doutb[7] ({\ramloop[2].ram.r_n_8 ,\ramloop[2].ram.r_n_9 ,\ramloop[2].ram.r_n_10 ,\ramloop[2].ram.r_n_11 ,\ramloop[2].ram.r_n_12 ,\ramloop[2].ram.r_n_13 ,\ramloop[2].ram.r_n_14 ,\ramloop[2].ram.r_n_15 }),
        .\doutb[8] (\ramloop[2].ram.r_n_17 ));
  weightROM_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.addra(addra[10:0]),
        .addrb(addrb[10:0]),
        .clka(clka),
        .clkb(clkb),
        .\douta[16] ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 ,\ramloop[3].ram.r_n_7 ,\ramloop[3].ram.r_n_8 ,\ramloop[3].ram.r_n_9 ,\ramloop[3].ram.r_n_10 ,\ramloop[3].ram.r_n_11 ,\ramloop[3].ram.r_n_12 ,\ramloop[3].ram.r_n_13 ,\ramloop[3].ram.r_n_14 ,\ramloop[3].ram.r_n_15 }),
        .\douta[17] ({\ramloop[3].ram.r_n_32 ,\ramloop[3].ram.r_n_33 }),
        .\doutb[16] ({\ramloop[3].ram.r_n_16 ,\ramloop[3].ram.r_n_17 ,\ramloop[3].ram.r_n_18 ,\ramloop[3].ram.r_n_19 ,\ramloop[3].ram.r_n_20 ,\ramloop[3].ram.r_n_21 ,\ramloop[3].ram.r_n_22 ,\ramloop[3].ram.r_n_23 ,\ramloop[3].ram.r_n_24 ,\ramloop[3].ram.r_n_25 ,\ramloop[3].ram.r_n_26 ,\ramloop[3].ram.r_n_27 ,\ramloop[3].ram.r_n_28 ,\ramloop[3].ram.r_n_29 ,\ramloop[3].ram.r_n_30 ,\ramloop[3].ram.r_n_31 }),
        .\doutb[17] ({\ramloop[3].ram.r_n_34 ,\ramloop[3].ram.r_n_35 }),
        .ena_array(ena_array),
        .enb_array(enb_array));
  weightROM_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.addra(addra[11:0]),
        .\addra[13] (\ramloop[21].ram.r_n_18 ),
        .addrb(addrb[11:0]),
        .\addrb[13] (\ramloop[21].ram.r_n_19 ),
        .clka(clka),
        .clkb(clkb),
        .\douta[16] ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 }),
        .\douta[17] (\ramloop[4].ram.r_n_16 ),
        .\doutb[16] ({\ramloop[4].ram.r_n_8 ,\ramloop[4].ram.r_n_9 ,\ramloop[4].ram.r_n_10 ,\ramloop[4].ram.r_n_11 ,\ramloop[4].ram.r_n_12 ,\ramloop[4].ram.r_n_13 ,\ramloop[4].ram.r_n_14 ,\ramloop[4].ram.r_n_15 }),
        .\doutb[17] (\ramloop[4].ram.r_n_17 ));
  weightROM_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.addra(addra[11:0]),
        .\addra[12] (\ramloop[22].ram.r_n_18 ),
        .addrb(addrb[11:0]),
        .\addrb[12] (\ramloop[22].ram.r_n_19 ),
        .clka(clka),
        .clkb(clkb),
        .\douta[16] ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 }),
        .\douta[17] (\ramloop[5].ram.r_n_16 ),
        .\doutb[16] ({\ramloop[5].ram.r_n_8 ,\ramloop[5].ram.r_n_9 ,\ramloop[5].ram.r_n_10 ,\ramloop[5].ram.r_n_11 ,\ramloop[5].ram.r_n_12 ,\ramloop[5].ram.r_n_13 ,\ramloop[5].ram.r_n_14 ,\ramloop[5].ram.r_n_15 }),
        .\doutb[17] (\ramloop[5].ram.r_n_17 ));
  weightROM_blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.addra(addra[11:0]),
        .\addra[13] (\ramloop[23].ram.r_n_18 ),
        .addrb(addrb[11:0]),
        .\addrb[13] (\ramloop[23].ram.r_n_19 ),
        .clka(clka),
        .clkb(clkb),
        .\douta[16] ({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\ramloop[6].ram.r_n_2 ,\ramloop[6].ram.r_n_3 ,\ramloop[6].ram.r_n_4 ,\ramloop[6].ram.r_n_5 ,\ramloop[6].ram.r_n_6 ,\ramloop[6].ram.r_n_7 }),
        .\douta[17] (\ramloop[6].ram.r_n_16 ),
        .\doutb[16] ({\ramloop[6].ram.r_n_8 ,\ramloop[6].ram.r_n_9 ,\ramloop[6].ram.r_n_10 ,\ramloop[6].ram.r_n_11 ,\ramloop[6].ram.r_n_12 ,\ramloop[6].ram.r_n_13 ,\ramloop[6].ram.r_n_14 ,\ramloop[6].ram.r_n_15 }),
        .\doutb[17] (\ramloop[6].ram.r_n_17 ));
  weightROM_blk_mem_gen_prim_width__parameterized6 \ramloop[7].ram.r 
       (.addra(addra[11:0]),
        .\addra[13] (\ramloop[21].ram.r_n_18 ),
        .addrb(addrb[11:0]),
        .\addrb[13] (\ramloop[21].ram.r_n_19 ),
        .clka(clka),
        .clkb(clkb),
        .\douta[25] ({\ramloop[7].ram.r_n_0 ,\ramloop[7].ram.r_n_1 ,\ramloop[7].ram.r_n_2 ,\ramloop[7].ram.r_n_3 ,\ramloop[7].ram.r_n_4 ,\ramloop[7].ram.r_n_5 ,\ramloop[7].ram.r_n_6 ,\ramloop[7].ram.r_n_7 }),
        .\douta[26] (\ramloop[7].ram.r_n_16 ),
        .\doutb[25] ({\ramloop[7].ram.r_n_8 ,\ramloop[7].ram.r_n_9 ,\ramloop[7].ram.r_n_10 ,\ramloop[7].ram.r_n_11 ,\ramloop[7].ram.r_n_12 ,\ramloop[7].ram.r_n_13 ,\ramloop[7].ram.r_n_14 ,\ramloop[7].ram.r_n_15 }),
        .\doutb[26] (\ramloop[7].ram.r_n_17 ));
  weightROM_blk_mem_gen_prim_width__parameterized7 \ramloop[8].ram.r 
       (.addra(addra[11:0]),
        .\addra[12] (\ramloop[22].ram.r_n_18 ),
        .addrb(addrb[11:0]),
        .\addrb[12] (\ramloop[22].ram.r_n_19 ),
        .clka(clka),
        .clkb(clkb),
        .\douta[25] ({\ramloop[8].ram.r_n_0 ,\ramloop[8].ram.r_n_1 ,\ramloop[8].ram.r_n_2 ,\ramloop[8].ram.r_n_3 ,\ramloop[8].ram.r_n_4 ,\ramloop[8].ram.r_n_5 ,\ramloop[8].ram.r_n_6 ,\ramloop[8].ram.r_n_7 }),
        .\douta[26] (\ramloop[8].ram.r_n_16 ),
        .\doutb[25] ({\ramloop[8].ram.r_n_8 ,\ramloop[8].ram.r_n_9 ,\ramloop[8].ram.r_n_10 ,\ramloop[8].ram.r_n_11 ,\ramloop[8].ram.r_n_12 ,\ramloop[8].ram.r_n_13 ,\ramloop[8].ram.r_n_14 ,\ramloop[8].ram.r_n_15 }),
        .\doutb[26] (\ramloop[8].ram.r_n_17 ));
  weightROM_blk_mem_gen_prim_width__parameterized8 \ramloop[9].ram.r 
       (.addra(addra[11:0]),
        .\addra[13] (\ramloop[23].ram.r_n_18 ),
        .addrb(addrb[11:0]),
        .\addrb[13] (\ramloop[23].ram.r_n_19 ),
        .clka(clka),
        .clkb(clkb),
        .\douta[25] ({\ramloop[9].ram.r_n_0 ,\ramloop[9].ram.r_n_1 ,\ramloop[9].ram.r_n_2 ,\ramloop[9].ram.r_n_3 ,\ramloop[9].ram.r_n_4 ,\ramloop[9].ram.r_n_5 ,\ramloop[9].ram.r_n_6 ,\ramloop[9].ram.r_n_7 }),
        .\douta[26] (\ramloop[9].ram.r_n_16 ),
        .\doutb[25] ({\ramloop[9].ram.r_n_8 ,\ramloop[9].ram.r_n_9 ,\ramloop[9].ram.r_n_10 ,\ramloop[9].ram.r_n_11 ,\ramloop[9].ram.r_n_12 ,\ramloop[9].ram.r_n_13 ,\ramloop[9].ram.r_n_14 ,\ramloop[9].ram.r_n_15 }),
        .\doutb[26] (\ramloop[9].ram.r_n_17 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module weightROM_blk_mem_gen_mux
   (douta,
    addra,
    clka,
    DOADO,
    ram_douta,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    DOPADOP,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_8 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_12 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_13 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_14 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_15 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_16 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_17 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_18 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_19 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_20 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_21 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_22 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_23 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_24 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_25 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_26 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_27 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_28 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_29 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_30 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_31 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_32 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_33 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_34 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_35 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_36 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_37 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_38 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_39 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_40 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_41 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_42 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_43 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_44 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_45 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_46 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_47 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_48 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_49 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_50 );
  output [71:0]douta;
  input [2:0]addra;
  input clka;
  input [7:0]DOADO;
  input [8:0]ram_douta;
  input [15:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  input [0:0]DOPADOP;
  input [1:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_8 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 ;
  input [15:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_12 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_13 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_14 ;
  input [1:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_15 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_16 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_17 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_18 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_19 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_20 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_21 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_22 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_23 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_24 ;
  input [15:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_25 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_26 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_27 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_28 ;
  input [1:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_29 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_30 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_31 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_32 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_33 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_34 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_35 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_36 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_37 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_38 ;
  input [15:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_39 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_40 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_41 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_42 ;
  input [1:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_43 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_44 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_45 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_46 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_47 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_48 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_49 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_50 ;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 ;
  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_12 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_13 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_14 ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_15 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_16 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_17 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_18 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_19 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_20 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_21 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_22 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_23 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_24 ;
  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_25 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_26 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_27 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_28 ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_29 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_30 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_31 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_32 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_33 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_34 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_35 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_36 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_37 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_38 ;
  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_39 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_40 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_41 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_42 ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_43 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_44 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_45 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_46 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_47 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_48 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_49 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_50 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_8 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 ;
  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [2:0]addra;
  wire clka;
  wire [71:0]douta;
  wire \douta[0]_INST_0_i_1_n_0 ;
  wire \douta[0]_INST_0_i_2_n_0 ;
  wire \douta[10]_INST_0_i_1_n_0 ;
  wire \douta[10]_INST_0_i_2_n_0 ;
  wire \douta[11]_INST_0_i_1_n_0 ;
  wire \douta[11]_INST_0_i_2_n_0 ;
  wire \douta[12]_INST_0_i_1_n_0 ;
  wire \douta[12]_INST_0_i_2_n_0 ;
  wire \douta[13]_INST_0_i_1_n_0 ;
  wire \douta[13]_INST_0_i_2_n_0 ;
  wire \douta[14]_INST_0_i_1_n_0 ;
  wire \douta[14]_INST_0_i_2_n_0 ;
  wire \douta[15]_INST_0_i_1_n_0 ;
  wire \douta[15]_INST_0_i_2_n_0 ;
  wire \douta[16]_INST_0_i_1_n_0 ;
  wire \douta[16]_INST_0_i_2_n_0 ;
  wire \douta[17]_INST_0_i_1_n_0 ;
  wire \douta[17]_INST_0_i_2_n_0 ;
  wire \douta[18]_INST_0_i_1_n_0 ;
  wire \douta[18]_INST_0_i_2_n_0 ;
  wire \douta[19]_INST_0_i_1_n_0 ;
  wire \douta[19]_INST_0_i_2_n_0 ;
  wire \douta[1]_INST_0_i_1_n_0 ;
  wire \douta[1]_INST_0_i_2_n_0 ;
  wire \douta[20]_INST_0_i_1_n_0 ;
  wire \douta[20]_INST_0_i_2_n_0 ;
  wire \douta[21]_INST_0_i_1_n_0 ;
  wire \douta[21]_INST_0_i_2_n_0 ;
  wire \douta[22]_INST_0_i_1_n_0 ;
  wire \douta[22]_INST_0_i_2_n_0 ;
  wire \douta[23]_INST_0_i_1_n_0 ;
  wire \douta[23]_INST_0_i_2_n_0 ;
  wire \douta[24]_INST_0_i_1_n_0 ;
  wire \douta[24]_INST_0_i_2_n_0 ;
  wire \douta[25]_INST_0_i_1_n_0 ;
  wire \douta[25]_INST_0_i_2_n_0 ;
  wire \douta[26]_INST_0_i_1_n_0 ;
  wire \douta[26]_INST_0_i_2_n_0 ;
  wire \douta[27]_INST_0_i_1_n_0 ;
  wire \douta[27]_INST_0_i_2_n_0 ;
  wire \douta[28]_INST_0_i_1_n_0 ;
  wire \douta[28]_INST_0_i_2_n_0 ;
  wire \douta[29]_INST_0_i_1_n_0 ;
  wire \douta[29]_INST_0_i_2_n_0 ;
  wire \douta[2]_INST_0_i_1_n_0 ;
  wire \douta[2]_INST_0_i_2_n_0 ;
  wire \douta[30]_INST_0_i_1_n_0 ;
  wire \douta[30]_INST_0_i_2_n_0 ;
  wire \douta[31]_INST_0_i_1_n_0 ;
  wire \douta[31]_INST_0_i_2_n_0 ;
  wire \douta[32]_INST_0_i_1_n_0 ;
  wire \douta[32]_INST_0_i_2_n_0 ;
  wire \douta[33]_INST_0_i_1_n_0 ;
  wire \douta[33]_INST_0_i_2_n_0 ;
  wire \douta[34]_INST_0_i_1_n_0 ;
  wire \douta[34]_INST_0_i_2_n_0 ;
  wire \douta[35]_INST_0_i_1_n_0 ;
  wire \douta[35]_INST_0_i_2_n_0 ;
  wire \douta[36]_INST_0_i_1_n_0 ;
  wire \douta[36]_INST_0_i_2_n_0 ;
  wire \douta[37]_INST_0_i_1_n_0 ;
  wire \douta[37]_INST_0_i_2_n_0 ;
  wire \douta[38]_INST_0_i_1_n_0 ;
  wire \douta[38]_INST_0_i_2_n_0 ;
  wire \douta[39]_INST_0_i_1_n_0 ;
  wire \douta[39]_INST_0_i_2_n_0 ;
  wire \douta[3]_INST_0_i_1_n_0 ;
  wire \douta[3]_INST_0_i_2_n_0 ;
  wire \douta[40]_INST_0_i_1_n_0 ;
  wire \douta[40]_INST_0_i_2_n_0 ;
  wire \douta[41]_INST_0_i_1_n_0 ;
  wire \douta[41]_INST_0_i_2_n_0 ;
  wire \douta[42]_INST_0_i_1_n_0 ;
  wire \douta[42]_INST_0_i_2_n_0 ;
  wire \douta[43]_INST_0_i_1_n_0 ;
  wire \douta[43]_INST_0_i_2_n_0 ;
  wire \douta[44]_INST_0_i_1_n_0 ;
  wire \douta[44]_INST_0_i_2_n_0 ;
  wire \douta[45]_INST_0_i_1_n_0 ;
  wire \douta[45]_INST_0_i_2_n_0 ;
  wire \douta[46]_INST_0_i_1_n_0 ;
  wire \douta[46]_INST_0_i_2_n_0 ;
  wire \douta[47]_INST_0_i_1_n_0 ;
  wire \douta[47]_INST_0_i_2_n_0 ;
  wire \douta[48]_INST_0_i_1_n_0 ;
  wire \douta[48]_INST_0_i_2_n_0 ;
  wire \douta[49]_INST_0_i_1_n_0 ;
  wire \douta[49]_INST_0_i_2_n_0 ;
  wire \douta[4]_INST_0_i_1_n_0 ;
  wire \douta[4]_INST_0_i_2_n_0 ;
  wire \douta[50]_INST_0_i_1_n_0 ;
  wire \douta[50]_INST_0_i_2_n_0 ;
  wire \douta[51]_INST_0_i_1_n_0 ;
  wire \douta[51]_INST_0_i_2_n_0 ;
  wire \douta[52]_INST_0_i_1_n_0 ;
  wire \douta[52]_INST_0_i_2_n_0 ;
  wire \douta[53]_INST_0_i_1_n_0 ;
  wire \douta[53]_INST_0_i_2_n_0 ;
  wire \douta[54]_INST_0_i_1_n_0 ;
  wire \douta[54]_INST_0_i_2_n_0 ;
  wire \douta[55]_INST_0_i_1_n_0 ;
  wire \douta[55]_INST_0_i_2_n_0 ;
  wire \douta[56]_INST_0_i_1_n_0 ;
  wire \douta[56]_INST_0_i_2_n_0 ;
  wire \douta[57]_INST_0_i_1_n_0 ;
  wire \douta[57]_INST_0_i_2_n_0 ;
  wire \douta[58]_INST_0_i_1_n_0 ;
  wire \douta[58]_INST_0_i_2_n_0 ;
  wire \douta[59]_INST_0_i_1_n_0 ;
  wire \douta[59]_INST_0_i_2_n_0 ;
  wire \douta[5]_INST_0_i_1_n_0 ;
  wire \douta[5]_INST_0_i_2_n_0 ;
  wire \douta[60]_INST_0_i_1_n_0 ;
  wire \douta[60]_INST_0_i_2_n_0 ;
  wire \douta[61]_INST_0_i_1_n_0 ;
  wire \douta[61]_INST_0_i_2_n_0 ;
  wire \douta[62]_INST_0_i_1_n_0 ;
  wire \douta[62]_INST_0_i_2_n_0 ;
  wire \douta[63]_INST_0_i_1_n_0 ;
  wire \douta[63]_INST_0_i_2_n_0 ;
  wire \douta[64]_INST_0_i_1_n_0 ;
  wire \douta[64]_INST_0_i_2_n_0 ;
  wire \douta[65]_INST_0_i_1_n_0 ;
  wire \douta[65]_INST_0_i_2_n_0 ;
  wire \douta[66]_INST_0_i_1_n_0 ;
  wire \douta[66]_INST_0_i_2_n_0 ;
  wire \douta[67]_INST_0_i_1_n_0 ;
  wire \douta[67]_INST_0_i_2_n_0 ;
  wire \douta[68]_INST_0_i_1_n_0 ;
  wire \douta[68]_INST_0_i_2_n_0 ;
  wire \douta[69]_INST_0_i_1_n_0 ;
  wire \douta[69]_INST_0_i_2_n_0 ;
  wire \douta[6]_INST_0_i_1_n_0 ;
  wire \douta[6]_INST_0_i_2_n_0 ;
  wire \douta[70]_INST_0_i_1_n_0 ;
  wire \douta[70]_INST_0_i_2_n_0 ;
  wire \douta[71]_INST_0_i_1_n_0 ;
  wire \douta[71]_INST_0_i_2_n_0 ;
  wire \douta[7]_INST_0_i_1_n_0 ;
  wire \douta[7]_INST_0_i_2_n_0 ;
  wire \douta[8]_INST_0_i_1_n_0 ;
  wire \douta[8]_INST_0_i_2_n_0 ;
  wire \douta[9]_INST_0_i_1_n_0 ;
  wire \douta[9]_INST_0_i_2_n_0 ;
  wire [8:0]ram_douta;
  wire [2:0]sel_pipe;

  MUXF7 \douta[0]_INST_0 
       (.I0(\douta[0]_INST_0_i_1_n_0 ),
        .I1(\douta[0]_INST_0_i_2_n_0 ),
        .O(douta[0]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[0]_INST_0_i_1 
       (.I0(DOADO[0]),
        .I1(sel_pipe[1]),
        .I2(ram_douta[0]),
        .O(\douta[0]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[0]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [0]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [0]),
        .O(\douta[0]_INST_0_i_2_n_0 ));
  MUXF7 \douta[10]_INST_0 
       (.I0(\douta[10]_INST_0_i_1_n_0 ),
        .I1(\douta[10]_INST_0_i_2_n_0 ),
        .O(douta[10]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[10]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 [1]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 [1]),
        .O(\douta[10]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[10]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [9]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 [1]),
        .O(\douta[10]_INST_0_i_2_n_0 ));
  MUXF7 \douta[11]_INST_0 
       (.I0(\douta[11]_INST_0_i_1_n_0 ),
        .I1(\douta[11]_INST_0_i_2_n_0 ),
        .O(douta[11]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[11]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 [2]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 [2]),
        .O(\douta[11]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[11]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [10]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 [2]),
        .O(\douta[11]_INST_0_i_2_n_0 ));
  MUXF7 \douta[12]_INST_0 
       (.I0(\douta[12]_INST_0_i_1_n_0 ),
        .I1(\douta[12]_INST_0_i_2_n_0 ),
        .O(douta[12]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[12]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 [3]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 [3]),
        .O(\douta[12]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[12]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [11]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 [3]),
        .O(\douta[12]_INST_0_i_2_n_0 ));
  MUXF7 \douta[13]_INST_0 
       (.I0(\douta[13]_INST_0_i_1_n_0 ),
        .I1(\douta[13]_INST_0_i_2_n_0 ),
        .O(douta[13]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[13]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 [4]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 [4]),
        .O(\douta[13]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[13]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [12]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 [4]),
        .O(\douta[13]_INST_0_i_2_n_0 ));
  MUXF7 \douta[14]_INST_0 
       (.I0(\douta[14]_INST_0_i_1_n_0 ),
        .I1(\douta[14]_INST_0_i_2_n_0 ),
        .O(douta[14]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[14]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 [5]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 [5]),
        .O(\douta[14]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[14]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [13]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 [5]),
        .O(\douta[14]_INST_0_i_2_n_0 ));
  MUXF7 \douta[15]_INST_0 
       (.I0(\douta[15]_INST_0_i_1_n_0 ),
        .I1(\douta[15]_INST_0_i_2_n_0 ),
        .O(douta[15]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[15]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 [6]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 [6]),
        .O(\douta[15]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[15]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [14]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 [6]),
        .O(\douta[15]_INST_0_i_2_n_0 ));
  MUXF7 \douta[16]_INST_0 
       (.I0(\douta[16]_INST_0_i_1_n_0 ),
        .I1(\douta[16]_INST_0_i_2_n_0 ),
        .O(douta[16]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[16]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 [7]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 [7]),
        .O(\douta[16]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[16]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [15]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 [7]),
        .O(\douta[16]_INST_0_i_2_n_0 ));
  MUXF7 \douta[17]_INST_0 
       (.I0(\douta[17]_INST_0_i_1_n_0 ),
        .I1(\douta[17]_INST_0_i_2_n_0 ),
        .O(douta[17]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[17]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6 ),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 ),
        .O(\douta[17]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[17]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [1]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_8 ),
        .O(\douta[17]_INST_0_i_2_n_0 ));
  MUXF7 \douta[18]_INST_0 
       (.I0(\douta[18]_INST_0_i_1_n_0 ),
        .I1(\douta[18]_INST_0_i_2_n_0 ),
        .O(douta[18]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[18]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 [0]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 [0]),
        .O(\douta[18]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[18]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [0]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_12 [0]),
        .O(\douta[18]_INST_0_i_2_n_0 ));
  MUXF7 \douta[19]_INST_0 
       (.I0(\douta[19]_INST_0_i_1_n_0 ),
        .I1(\douta[19]_INST_0_i_2_n_0 ),
        .O(douta[19]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[19]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 [1]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 [1]),
        .O(\douta[19]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[19]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [1]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_12 [1]),
        .O(\douta[19]_INST_0_i_2_n_0 ));
  MUXF7 \douta[1]_INST_0 
       (.I0(\douta[1]_INST_0_i_1_n_0 ),
        .I1(\douta[1]_INST_0_i_2_n_0 ),
        .O(douta[1]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[1]_INST_0_i_1 
       (.I0(DOADO[1]),
        .I1(sel_pipe[1]),
        .I2(ram_douta[1]),
        .O(\douta[1]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[1]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [1]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [1]),
        .O(\douta[1]_INST_0_i_2_n_0 ));
  MUXF7 \douta[20]_INST_0 
       (.I0(\douta[20]_INST_0_i_1_n_0 ),
        .I1(\douta[20]_INST_0_i_2_n_0 ),
        .O(douta[20]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[20]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 [2]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 [2]),
        .O(\douta[20]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[20]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [2]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_12 [2]),
        .O(\douta[20]_INST_0_i_2_n_0 ));
  MUXF7 \douta[21]_INST_0 
       (.I0(\douta[21]_INST_0_i_1_n_0 ),
        .I1(\douta[21]_INST_0_i_2_n_0 ),
        .O(douta[21]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[21]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 [3]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 [3]),
        .O(\douta[21]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[21]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [3]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_12 [3]),
        .O(\douta[21]_INST_0_i_2_n_0 ));
  MUXF7 \douta[22]_INST_0 
       (.I0(\douta[22]_INST_0_i_1_n_0 ),
        .I1(\douta[22]_INST_0_i_2_n_0 ),
        .O(douta[22]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[22]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 [4]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 [4]),
        .O(\douta[22]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[22]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [4]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_12 [4]),
        .O(\douta[22]_INST_0_i_2_n_0 ));
  MUXF7 \douta[23]_INST_0 
       (.I0(\douta[23]_INST_0_i_1_n_0 ),
        .I1(\douta[23]_INST_0_i_2_n_0 ),
        .O(douta[23]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[23]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 [5]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 [5]),
        .O(\douta[23]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[23]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [5]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_12 [5]),
        .O(\douta[23]_INST_0_i_2_n_0 ));
  MUXF7 \douta[24]_INST_0 
       (.I0(\douta[24]_INST_0_i_1_n_0 ),
        .I1(\douta[24]_INST_0_i_2_n_0 ),
        .O(douta[24]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[24]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 [6]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 [6]),
        .O(\douta[24]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[24]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [6]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_12 [6]),
        .O(\douta[24]_INST_0_i_2_n_0 ));
  MUXF7 \douta[25]_INST_0 
       (.I0(\douta[25]_INST_0_i_1_n_0 ),
        .I1(\douta[25]_INST_0_i_2_n_0 ),
        .O(douta[25]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[25]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 [7]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 [7]),
        .O(\douta[25]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[25]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [7]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_12 [7]),
        .O(\douta[25]_INST_0_i_2_n_0 ));
  MUXF7 \douta[26]_INST_0 
       (.I0(\douta[26]_INST_0_i_1_n_0 ),
        .I1(\douta[26]_INST_0_i_2_n_0 ),
        .O(douta[26]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[26]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_13 ),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_14 ),
        .O(\douta[26]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[26]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_15 [0]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_16 ),
        .O(\douta[26]_INST_0_i_2_n_0 ));
  MUXF7 \douta[27]_INST_0 
       (.I0(\douta[27]_INST_0_i_1_n_0 ),
        .I1(\douta[27]_INST_0_i_2_n_0 ),
        .O(douta[27]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[27]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_17 [0]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_18 [0]),
        .O(\douta[27]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[27]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [8]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_19 [0]),
        .O(\douta[27]_INST_0_i_2_n_0 ));
  MUXF7 \douta[28]_INST_0 
       (.I0(\douta[28]_INST_0_i_1_n_0 ),
        .I1(\douta[28]_INST_0_i_2_n_0 ),
        .O(douta[28]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[28]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_17 [1]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_18 [1]),
        .O(\douta[28]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[28]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [9]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_19 [1]),
        .O(\douta[28]_INST_0_i_2_n_0 ));
  MUXF7 \douta[29]_INST_0 
       (.I0(\douta[29]_INST_0_i_1_n_0 ),
        .I1(\douta[29]_INST_0_i_2_n_0 ),
        .O(douta[29]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[29]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_17 [2]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_18 [2]),
        .O(\douta[29]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[29]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [10]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_19 [2]),
        .O(\douta[29]_INST_0_i_2_n_0 ));
  MUXF7 \douta[2]_INST_0 
       (.I0(\douta[2]_INST_0_i_1_n_0 ),
        .I1(\douta[2]_INST_0_i_2_n_0 ),
        .O(douta[2]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[2]_INST_0_i_1 
       (.I0(DOADO[2]),
        .I1(sel_pipe[1]),
        .I2(ram_douta[2]),
        .O(\douta[2]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[2]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [2]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [2]),
        .O(\douta[2]_INST_0_i_2_n_0 ));
  MUXF7 \douta[30]_INST_0 
       (.I0(\douta[30]_INST_0_i_1_n_0 ),
        .I1(\douta[30]_INST_0_i_2_n_0 ),
        .O(douta[30]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[30]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_17 [3]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_18 [3]),
        .O(\douta[30]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[30]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [11]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_19 [3]),
        .O(\douta[30]_INST_0_i_2_n_0 ));
  MUXF7 \douta[31]_INST_0 
       (.I0(\douta[31]_INST_0_i_1_n_0 ),
        .I1(\douta[31]_INST_0_i_2_n_0 ),
        .O(douta[31]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[31]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_17 [4]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_18 [4]),
        .O(\douta[31]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[31]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [12]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_19 [4]),
        .O(\douta[31]_INST_0_i_2_n_0 ));
  MUXF7 \douta[32]_INST_0 
       (.I0(\douta[32]_INST_0_i_1_n_0 ),
        .I1(\douta[32]_INST_0_i_2_n_0 ),
        .O(douta[32]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[32]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_17 [5]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_18 [5]),
        .O(\douta[32]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[32]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [13]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_19 [5]),
        .O(\douta[32]_INST_0_i_2_n_0 ));
  MUXF7 \douta[33]_INST_0 
       (.I0(\douta[33]_INST_0_i_1_n_0 ),
        .I1(\douta[33]_INST_0_i_2_n_0 ),
        .O(douta[33]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[33]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_17 [6]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_18 [6]),
        .O(\douta[33]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[33]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [14]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_19 [6]),
        .O(\douta[33]_INST_0_i_2_n_0 ));
  MUXF7 \douta[34]_INST_0 
       (.I0(\douta[34]_INST_0_i_1_n_0 ),
        .I1(\douta[34]_INST_0_i_2_n_0 ),
        .O(douta[34]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[34]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_17 [7]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_18 [7]),
        .O(\douta[34]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[34]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [15]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_19 [7]),
        .O(\douta[34]_INST_0_i_2_n_0 ));
  MUXF7 \douta[35]_INST_0 
       (.I0(\douta[35]_INST_0_i_1_n_0 ),
        .I1(\douta[35]_INST_0_i_2_n_0 ),
        .O(douta[35]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[35]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_20 ),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_21 ),
        .O(\douta[35]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[35]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_15 [1]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_22 ),
        .O(\douta[35]_INST_0_i_2_n_0 ));
  MUXF7 \douta[36]_INST_0 
       (.I0(\douta[36]_INST_0_i_1_n_0 ),
        .I1(\douta[36]_INST_0_i_2_n_0 ),
        .O(douta[36]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[36]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_23 [0]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_24 [0]),
        .O(\douta[36]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[36]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_25 [0]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_26 [0]),
        .O(\douta[36]_INST_0_i_2_n_0 ));
  MUXF7 \douta[37]_INST_0 
       (.I0(\douta[37]_INST_0_i_1_n_0 ),
        .I1(\douta[37]_INST_0_i_2_n_0 ),
        .O(douta[37]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[37]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_23 [1]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_24 [1]),
        .O(\douta[37]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[37]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_25 [1]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_26 [1]),
        .O(\douta[37]_INST_0_i_2_n_0 ));
  MUXF7 \douta[38]_INST_0 
       (.I0(\douta[38]_INST_0_i_1_n_0 ),
        .I1(\douta[38]_INST_0_i_2_n_0 ),
        .O(douta[38]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[38]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_23 [2]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_24 [2]),
        .O(\douta[38]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[38]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_25 [2]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_26 [2]),
        .O(\douta[38]_INST_0_i_2_n_0 ));
  MUXF7 \douta[39]_INST_0 
       (.I0(\douta[39]_INST_0_i_1_n_0 ),
        .I1(\douta[39]_INST_0_i_2_n_0 ),
        .O(douta[39]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[39]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_23 [3]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_24 [3]),
        .O(\douta[39]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[39]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_25 [3]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_26 [3]),
        .O(\douta[39]_INST_0_i_2_n_0 ));
  MUXF7 \douta[3]_INST_0 
       (.I0(\douta[3]_INST_0_i_1_n_0 ),
        .I1(\douta[3]_INST_0_i_2_n_0 ),
        .O(douta[3]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[3]_INST_0_i_1 
       (.I0(DOADO[3]),
        .I1(sel_pipe[1]),
        .I2(ram_douta[3]),
        .O(\douta[3]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[3]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [3]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [3]),
        .O(\douta[3]_INST_0_i_2_n_0 ));
  MUXF7 \douta[40]_INST_0 
       (.I0(\douta[40]_INST_0_i_1_n_0 ),
        .I1(\douta[40]_INST_0_i_2_n_0 ),
        .O(douta[40]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[40]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_23 [4]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_24 [4]),
        .O(\douta[40]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[40]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_25 [4]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_26 [4]),
        .O(\douta[40]_INST_0_i_2_n_0 ));
  MUXF7 \douta[41]_INST_0 
       (.I0(\douta[41]_INST_0_i_1_n_0 ),
        .I1(\douta[41]_INST_0_i_2_n_0 ),
        .O(douta[41]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[41]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_23 [5]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_24 [5]),
        .O(\douta[41]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[41]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_25 [5]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_26 [5]),
        .O(\douta[41]_INST_0_i_2_n_0 ));
  MUXF7 \douta[42]_INST_0 
       (.I0(\douta[42]_INST_0_i_1_n_0 ),
        .I1(\douta[42]_INST_0_i_2_n_0 ),
        .O(douta[42]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[42]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_23 [6]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_24 [6]),
        .O(\douta[42]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[42]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_25 [6]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_26 [6]),
        .O(\douta[42]_INST_0_i_2_n_0 ));
  MUXF7 \douta[43]_INST_0 
       (.I0(\douta[43]_INST_0_i_1_n_0 ),
        .I1(\douta[43]_INST_0_i_2_n_0 ),
        .O(douta[43]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[43]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_23 [7]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_24 [7]),
        .O(\douta[43]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[43]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_25 [7]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_26 [7]),
        .O(\douta[43]_INST_0_i_2_n_0 ));
  MUXF7 \douta[44]_INST_0 
       (.I0(\douta[44]_INST_0_i_1_n_0 ),
        .I1(\douta[44]_INST_0_i_2_n_0 ),
        .O(douta[44]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[44]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_27 ),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_28 ),
        .O(\douta[44]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[44]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_29 [0]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_30 ),
        .O(\douta[44]_INST_0_i_2_n_0 ));
  MUXF7 \douta[45]_INST_0 
       (.I0(\douta[45]_INST_0_i_1_n_0 ),
        .I1(\douta[45]_INST_0_i_2_n_0 ),
        .O(douta[45]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[45]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_31 [0]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_32 [0]),
        .O(\douta[45]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[45]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_25 [8]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_33 [0]),
        .O(\douta[45]_INST_0_i_2_n_0 ));
  MUXF7 \douta[46]_INST_0 
       (.I0(\douta[46]_INST_0_i_1_n_0 ),
        .I1(\douta[46]_INST_0_i_2_n_0 ),
        .O(douta[46]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[46]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_31 [1]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_32 [1]),
        .O(\douta[46]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[46]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_25 [9]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_33 [1]),
        .O(\douta[46]_INST_0_i_2_n_0 ));
  MUXF7 \douta[47]_INST_0 
       (.I0(\douta[47]_INST_0_i_1_n_0 ),
        .I1(\douta[47]_INST_0_i_2_n_0 ),
        .O(douta[47]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[47]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_31 [2]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_32 [2]),
        .O(\douta[47]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[47]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_25 [10]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_33 [2]),
        .O(\douta[47]_INST_0_i_2_n_0 ));
  MUXF7 \douta[48]_INST_0 
       (.I0(\douta[48]_INST_0_i_1_n_0 ),
        .I1(\douta[48]_INST_0_i_2_n_0 ),
        .O(douta[48]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[48]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_31 [3]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_32 [3]),
        .O(\douta[48]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[48]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_25 [11]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_33 [3]),
        .O(\douta[48]_INST_0_i_2_n_0 ));
  MUXF7 \douta[49]_INST_0 
       (.I0(\douta[49]_INST_0_i_1_n_0 ),
        .I1(\douta[49]_INST_0_i_2_n_0 ),
        .O(douta[49]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[49]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_31 [4]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_32 [4]),
        .O(\douta[49]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[49]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_25 [12]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_33 [4]),
        .O(\douta[49]_INST_0_i_2_n_0 ));
  MUXF7 \douta[4]_INST_0 
       (.I0(\douta[4]_INST_0_i_1_n_0 ),
        .I1(\douta[4]_INST_0_i_2_n_0 ),
        .O(douta[4]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[4]_INST_0_i_1 
       (.I0(DOADO[4]),
        .I1(sel_pipe[1]),
        .I2(ram_douta[4]),
        .O(\douta[4]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[4]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [4]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [4]),
        .O(\douta[4]_INST_0_i_2_n_0 ));
  MUXF7 \douta[50]_INST_0 
       (.I0(\douta[50]_INST_0_i_1_n_0 ),
        .I1(\douta[50]_INST_0_i_2_n_0 ),
        .O(douta[50]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[50]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_31 [5]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_32 [5]),
        .O(\douta[50]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[50]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_25 [13]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_33 [5]),
        .O(\douta[50]_INST_0_i_2_n_0 ));
  MUXF7 \douta[51]_INST_0 
       (.I0(\douta[51]_INST_0_i_1_n_0 ),
        .I1(\douta[51]_INST_0_i_2_n_0 ),
        .O(douta[51]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[51]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_31 [6]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_32 [6]),
        .O(\douta[51]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[51]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_25 [14]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_33 [6]),
        .O(\douta[51]_INST_0_i_2_n_0 ));
  MUXF7 \douta[52]_INST_0 
       (.I0(\douta[52]_INST_0_i_1_n_0 ),
        .I1(\douta[52]_INST_0_i_2_n_0 ),
        .O(douta[52]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[52]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_31 [7]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_32 [7]),
        .O(\douta[52]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[52]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_25 [15]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_33 [7]),
        .O(\douta[52]_INST_0_i_2_n_0 ));
  MUXF7 \douta[53]_INST_0 
       (.I0(\douta[53]_INST_0_i_1_n_0 ),
        .I1(\douta[53]_INST_0_i_2_n_0 ),
        .O(douta[53]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[53]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_34 ),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_35 ),
        .O(\douta[53]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[53]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_29 [1]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_36 ),
        .O(\douta[53]_INST_0_i_2_n_0 ));
  MUXF7 \douta[54]_INST_0 
       (.I0(\douta[54]_INST_0_i_1_n_0 ),
        .I1(\douta[54]_INST_0_i_2_n_0 ),
        .O(douta[54]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[54]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_37 [0]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_38 [0]),
        .O(\douta[54]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[54]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_39 [0]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_40 [0]),
        .O(\douta[54]_INST_0_i_2_n_0 ));
  MUXF7 \douta[55]_INST_0 
       (.I0(\douta[55]_INST_0_i_1_n_0 ),
        .I1(\douta[55]_INST_0_i_2_n_0 ),
        .O(douta[55]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[55]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_37 [1]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_38 [1]),
        .O(\douta[55]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[55]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_39 [1]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_40 [1]),
        .O(\douta[55]_INST_0_i_2_n_0 ));
  MUXF7 \douta[56]_INST_0 
       (.I0(\douta[56]_INST_0_i_1_n_0 ),
        .I1(\douta[56]_INST_0_i_2_n_0 ),
        .O(douta[56]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[56]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_37 [2]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_38 [2]),
        .O(\douta[56]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[56]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_39 [2]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_40 [2]),
        .O(\douta[56]_INST_0_i_2_n_0 ));
  MUXF7 \douta[57]_INST_0 
       (.I0(\douta[57]_INST_0_i_1_n_0 ),
        .I1(\douta[57]_INST_0_i_2_n_0 ),
        .O(douta[57]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[57]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_37 [3]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_38 [3]),
        .O(\douta[57]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[57]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_39 [3]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_40 [3]),
        .O(\douta[57]_INST_0_i_2_n_0 ));
  MUXF7 \douta[58]_INST_0 
       (.I0(\douta[58]_INST_0_i_1_n_0 ),
        .I1(\douta[58]_INST_0_i_2_n_0 ),
        .O(douta[58]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[58]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_37 [4]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_38 [4]),
        .O(\douta[58]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[58]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_39 [4]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_40 [4]),
        .O(\douta[58]_INST_0_i_2_n_0 ));
  MUXF7 \douta[59]_INST_0 
       (.I0(\douta[59]_INST_0_i_1_n_0 ),
        .I1(\douta[59]_INST_0_i_2_n_0 ),
        .O(douta[59]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[59]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_37 [5]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_38 [5]),
        .O(\douta[59]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[59]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_39 [5]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_40 [5]),
        .O(\douta[59]_INST_0_i_2_n_0 ));
  MUXF7 \douta[5]_INST_0 
       (.I0(\douta[5]_INST_0_i_1_n_0 ),
        .I1(\douta[5]_INST_0_i_2_n_0 ),
        .O(douta[5]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[5]_INST_0_i_1 
       (.I0(DOADO[5]),
        .I1(sel_pipe[1]),
        .I2(ram_douta[5]),
        .O(\douta[5]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[5]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [5]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [5]),
        .O(\douta[5]_INST_0_i_2_n_0 ));
  MUXF7 \douta[60]_INST_0 
       (.I0(\douta[60]_INST_0_i_1_n_0 ),
        .I1(\douta[60]_INST_0_i_2_n_0 ),
        .O(douta[60]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[60]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_37 [6]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_38 [6]),
        .O(\douta[60]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[60]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_39 [6]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_40 [6]),
        .O(\douta[60]_INST_0_i_2_n_0 ));
  MUXF7 \douta[61]_INST_0 
       (.I0(\douta[61]_INST_0_i_1_n_0 ),
        .I1(\douta[61]_INST_0_i_2_n_0 ),
        .O(douta[61]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[61]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_37 [7]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_38 [7]),
        .O(\douta[61]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[61]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_39 [7]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_40 [7]),
        .O(\douta[61]_INST_0_i_2_n_0 ));
  MUXF7 \douta[62]_INST_0 
       (.I0(\douta[62]_INST_0_i_1_n_0 ),
        .I1(\douta[62]_INST_0_i_2_n_0 ),
        .O(douta[62]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[62]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_41 ),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_42 ),
        .O(\douta[62]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[62]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_43 [0]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_44 ),
        .O(\douta[62]_INST_0_i_2_n_0 ));
  MUXF7 \douta[63]_INST_0 
       (.I0(\douta[63]_INST_0_i_1_n_0 ),
        .I1(\douta[63]_INST_0_i_2_n_0 ),
        .O(douta[63]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[63]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_45 [0]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_46 [0]),
        .O(\douta[63]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[63]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_39 [8]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_47 [0]),
        .O(\douta[63]_INST_0_i_2_n_0 ));
  MUXF7 \douta[64]_INST_0 
       (.I0(\douta[64]_INST_0_i_1_n_0 ),
        .I1(\douta[64]_INST_0_i_2_n_0 ),
        .O(douta[64]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[64]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_45 [1]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_46 [1]),
        .O(\douta[64]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[64]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_39 [9]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_47 [1]),
        .O(\douta[64]_INST_0_i_2_n_0 ));
  MUXF7 \douta[65]_INST_0 
       (.I0(\douta[65]_INST_0_i_1_n_0 ),
        .I1(\douta[65]_INST_0_i_2_n_0 ),
        .O(douta[65]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[65]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_45 [2]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_46 [2]),
        .O(\douta[65]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[65]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_39 [10]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_47 [2]),
        .O(\douta[65]_INST_0_i_2_n_0 ));
  MUXF7 \douta[66]_INST_0 
       (.I0(\douta[66]_INST_0_i_1_n_0 ),
        .I1(\douta[66]_INST_0_i_2_n_0 ),
        .O(douta[66]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[66]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_45 [3]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_46 [3]),
        .O(\douta[66]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[66]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_39 [11]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_47 [3]),
        .O(\douta[66]_INST_0_i_2_n_0 ));
  MUXF7 \douta[67]_INST_0 
       (.I0(\douta[67]_INST_0_i_1_n_0 ),
        .I1(\douta[67]_INST_0_i_2_n_0 ),
        .O(douta[67]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[67]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_45 [4]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_46 [4]),
        .O(\douta[67]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[67]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_39 [12]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_47 [4]),
        .O(\douta[67]_INST_0_i_2_n_0 ));
  MUXF7 \douta[68]_INST_0 
       (.I0(\douta[68]_INST_0_i_1_n_0 ),
        .I1(\douta[68]_INST_0_i_2_n_0 ),
        .O(douta[68]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[68]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_45 [5]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_46 [5]),
        .O(\douta[68]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[68]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_39 [13]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_47 [5]),
        .O(\douta[68]_INST_0_i_2_n_0 ));
  MUXF7 \douta[69]_INST_0 
       (.I0(\douta[69]_INST_0_i_1_n_0 ),
        .I1(\douta[69]_INST_0_i_2_n_0 ),
        .O(douta[69]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[69]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_45 [6]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_46 [6]),
        .O(\douta[69]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[69]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_39 [14]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_47 [6]),
        .O(\douta[69]_INST_0_i_2_n_0 ));
  MUXF7 \douta[6]_INST_0 
       (.I0(\douta[6]_INST_0_i_1_n_0 ),
        .I1(\douta[6]_INST_0_i_2_n_0 ),
        .O(douta[6]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[6]_INST_0_i_1 
       (.I0(DOADO[6]),
        .I1(sel_pipe[1]),
        .I2(ram_douta[6]),
        .O(\douta[6]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[6]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [6]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [6]),
        .O(\douta[6]_INST_0_i_2_n_0 ));
  MUXF7 \douta[70]_INST_0 
       (.I0(\douta[70]_INST_0_i_1_n_0 ),
        .I1(\douta[70]_INST_0_i_2_n_0 ),
        .O(douta[70]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[70]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_45 [7]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_46 [7]),
        .O(\douta[70]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[70]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_39 [15]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_47 [7]),
        .O(\douta[70]_INST_0_i_2_n_0 ));
  MUXF7 \douta[71]_INST_0 
       (.I0(\douta[71]_INST_0_i_1_n_0 ),
        .I1(\douta[71]_INST_0_i_2_n_0 ),
        .O(douta[71]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[71]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_48 ),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_49 ),
        .O(\douta[71]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[71]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_43 [1]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_50 ),
        .O(\douta[71]_INST_0_i_2_n_0 ));
  MUXF7 \douta[7]_INST_0 
       (.I0(\douta[7]_INST_0_i_1_n_0 ),
        .I1(\douta[7]_INST_0_i_2_n_0 ),
        .O(douta[7]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[7]_INST_0_i_1 
       (.I0(DOADO[7]),
        .I1(sel_pipe[1]),
        .I2(ram_douta[7]),
        .O(\douta[7]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[7]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [7]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [7]),
        .O(\douta[7]_INST_0_i_2_n_0 ));
  MUXF7 \douta[8]_INST_0 
       (.I0(\douta[8]_INST_0_i_1_n_0 ),
        .I1(\douta[8]_INST_0_i_2_n_0 ),
        .O(douta[8]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[8]_INST_0_i_1 
       (.I0(DOPADOP),
        .I1(sel_pipe[1]),
        .I2(ram_douta[8]),
        .O(\douta[8]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[8]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [0]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ),
        .O(\douta[8]_INST_0_i_2_n_0 ));
  MUXF7 \douta[9]_INST_0 
       (.I0(\douta[9]_INST_0_i_1_n_0 ),
        .I1(\douta[9]_INST_0_i_2_n_0 ),
        .O(douta[9]),
        .S(sel_pipe[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[9]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 [0]),
        .I1(sel_pipe[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 [0]),
        .O(\douta[9]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[9]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [8]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 [0]),
        .O(\douta[9]_INST_0_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[0]),
        .Q(sel_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[1]),
        .Q(sel_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[2]),
        .Q(sel_pipe[2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module weightROM_blk_mem_gen_mux__parameterized0
   (doutb,
    addrb,
    clkb,
    DOBDO,
    ram_doutb,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    DOPBDOP,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_8 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_12 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_13 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_14 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_15 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_16 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_17 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_18 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_19 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_20 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_21 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_22 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_23 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_24 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_25 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_26 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_27 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_28 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_29 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_30 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_31 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_32 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_33 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_34 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_35 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_36 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_37 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_38 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_39 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_40 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_41 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_42 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_43 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_44 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_45 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_46 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_47 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_48 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_49 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_50 );
  output [71:0]doutb;
  input [2:0]addrb;
  input clkb;
  input [7:0]DOBDO;
  input [8:0]ram_doutb;
  input [15:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  input [0:0]DOPBDOP;
  input [1:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_8 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 ;
  input [15:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_12 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_13 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_14 ;
  input [1:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_15 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_16 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_17 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_18 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_19 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_20 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_21 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_22 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_23 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_24 ;
  input [15:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_25 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_26 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_27 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_28 ;
  input [1:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_29 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_30 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_31 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_32 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_33 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_34 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_35 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_36 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_37 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_38 ;
  input [15:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_39 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_40 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_41 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_42 ;
  input [1:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_43 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_44 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_45 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_46 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_47 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_48 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_49 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_50 ;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 ;
  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_12 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_13 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_14 ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_15 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_16 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_17 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_18 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_19 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_20 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_21 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_22 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_23 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_24 ;
  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_25 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_26 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_27 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_28 ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_29 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_30 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_31 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_32 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_33 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_34 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_35 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_36 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_37 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_38 ;
  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_39 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_40 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_41 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_42 ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_43 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_44 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_45 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_46 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_47 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_48 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_49 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_50 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_8 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 ;
  wire [7:0]DOBDO;
  wire [0:0]DOPBDOP;
  wire [2:0]addrb;
  wire clkb;
  wire [71:0]doutb;
  wire \doutb[0]_INST_0_i_1_n_0 ;
  wire \doutb[0]_INST_0_i_2_n_0 ;
  wire \doutb[10]_INST_0_i_1_n_0 ;
  wire \doutb[10]_INST_0_i_2_n_0 ;
  wire \doutb[11]_INST_0_i_1_n_0 ;
  wire \doutb[11]_INST_0_i_2_n_0 ;
  wire \doutb[12]_INST_0_i_1_n_0 ;
  wire \doutb[12]_INST_0_i_2_n_0 ;
  wire \doutb[13]_INST_0_i_1_n_0 ;
  wire \doutb[13]_INST_0_i_2_n_0 ;
  wire \doutb[14]_INST_0_i_1_n_0 ;
  wire \doutb[14]_INST_0_i_2_n_0 ;
  wire \doutb[15]_INST_0_i_1_n_0 ;
  wire \doutb[15]_INST_0_i_2_n_0 ;
  wire \doutb[16]_INST_0_i_1_n_0 ;
  wire \doutb[16]_INST_0_i_2_n_0 ;
  wire \doutb[17]_INST_0_i_1_n_0 ;
  wire \doutb[17]_INST_0_i_2_n_0 ;
  wire \doutb[18]_INST_0_i_1_n_0 ;
  wire \doutb[18]_INST_0_i_2_n_0 ;
  wire \doutb[19]_INST_0_i_1_n_0 ;
  wire \doutb[19]_INST_0_i_2_n_0 ;
  wire \doutb[1]_INST_0_i_1_n_0 ;
  wire \doutb[1]_INST_0_i_2_n_0 ;
  wire \doutb[20]_INST_0_i_1_n_0 ;
  wire \doutb[20]_INST_0_i_2_n_0 ;
  wire \doutb[21]_INST_0_i_1_n_0 ;
  wire \doutb[21]_INST_0_i_2_n_0 ;
  wire \doutb[22]_INST_0_i_1_n_0 ;
  wire \doutb[22]_INST_0_i_2_n_0 ;
  wire \doutb[23]_INST_0_i_1_n_0 ;
  wire \doutb[23]_INST_0_i_2_n_0 ;
  wire \doutb[24]_INST_0_i_1_n_0 ;
  wire \doutb[24]_INST_0_i_2_n_0 ;
  wire \doutb[25]_INST_0_i_1_n_0 ;
  wire \doutb[25]_INST_0_i_2_n_0 ;
  wire \doutb[26]_INST_0_i_1_n_0 ;
  wire \doutb[26]_INST_0_i_2_n_0 ;
  wire \doutb[27]_INST_0_i_1_n_0 ;
  wire \doutb[27]_INST_0_i_2_n_0 ;
  wire \doutb[28]_INST_0_i_1_n_0 ;
  wire \doutb[28]_INST_0_i_2_n_0 ;
  wire \doutb[29]_INST_0_i_1_n_0 ;
  wire \doutb[29]_INST_0_i_2_n_0 ;
  wire \doutb[2]_INST_0_i_1_n_0 ;
  wire \doutb[2]_INST_0_i_2_n_0 ;
  wire \doutb[30]_INST_0_i_1_n_0 ;
  wire \doutb[30]_INST_0_i_2_n_0 ;
  wire \doutb[31]_INST_0_i_1_n_0 ;
  wire \doutb[31]_INST_0_i_2_n_0 ;
  wire \doutb[32]_INST_0_i_1_n_0 ;
  wire \doutb[32]_INST_0_i_2_n_0 ;
  wire \doutb[33]_INST_0_i_1_n_0 ;
  wire \doutb[33]_INST_0_i_2_n_0 ;
  wire \doutb[34]_INST_0_i_1_n_0 ;
  wire \doutb[34]_INST_0_i_2_n_0 ;
  wire \doutb[35]_INST_0_i_1_n_0 ;
  wire \doutb[35]_INST_0_i_2_n_0 ;
  wire \doutb[36]_INST_0_i_1_n_0 ;
  wire \doutb[36]_INST_0_i_2_n_0 ;
  wire \doutb[37]_INST_0_i_1_n_0 ;
  wire \doutb[37]_INST_0_i_2_n_0 ;
  wire \doutb[38]_INST_0_i_1_n_0 ;
  wire \doutb[38]_INST_0_i_2_n_0 ;
  wire \doutb[39]_INST_0_i_1_n_0 ;
  wire \doutb[39]_INST_0_i_2_n_0 ;
  wire \doutb[3]_INST_0_i_1_n_0 ;
  wire \doutb[3]_INST_0_i_2_n_0 ;
  wire \doutb[40]_INST_0_i_1_n_0 ;
  wire \doutb[40]_INST_0_i_2_n_0 ;
  wire \doutb[41]_INST_0_i_1_n_0 ;
  wire \doutb[41]_INST_0_i_2_n_0 ;
  wire \doutb[42]_INST_0_i_1_n_0 ;
  wire \doutb[42]_INST_0_i_2_n_0 ;
  wire \doutb[43]_INST_0_i_1_n_0 ;
  wire \doutb[43]_INST_0_i_2_n_0 ;
  wire \doutb[44]_INST_0_i_1_n_0 ;
  wire \doutb[44]_INST_0_i_2_n_0 ;
  wire \doutb[45]_INST_0_i_1_n_0 ;
  wire \doutb[45]_INST_0_i_2_n_0 ;
  wire \doutb[46]_INST_0_i_1_n_0 ;
  wire \doutb[46]_INST_0_i_2_n_0 ;
  wire \doutb[47]_INST_0_i_1_n_0 ;
  wire \doutb[47]_INST_0_i_2_n_0 ;
  wire \doutb[48]_INST_0_i_1_n_0 ;
  wire \doutb[48]_INST_0_i_2_n_0 ;
  wire \doutb[49]_INST_0_i_1_n_0 ;
  wire \doutb[49]_INST_0_i_2_n_0 ;
  wire \doutb[4]_INST_0_i_1_n_0 ;
  wire \doutb[4]_INST_0_i_2_n_0 ;
  wire \doutb[50]_INST_0_i_1_n_0 ;
  wire \doutb[50]_INST_0_i_2_n_0 ;
  wire \doutb[51]_INST_0_i_1_n_0 ;
  wire \doutb[51]_INST_0_i_2_n_0 ;
  wire \doutb[52]_INST_0_i_1_n_0 ;
  wire \doutb[52]_INST_0_i_2_n_0 ;
  wire \doutb[53]_INST_0_i_1_n_0 ;
  wire \doutb[53]_INST_0_i_2_n_0 ;
  wire \doutb[54]_INST_0_i_1_n_0 ;
  wire \doutb[54]_INST_0_i_2_n_0 ;
  wire \doutb[55]_INST_0_i_1_n_0 ;
  wire \doutb[55]_INST_0_i_2_n_0 ;
  wire \doutb[56]_INST_0_i_1_n_0 ;
  wire \doutb[56]_INST_0_i_2_n_0 ;
  wire \doutb[57]_INST_0_i_1_n_0 ;
  wire \doutb[57]_INST_0_i_2_n_0 ;
  wire \doutb[58]_INST_0_i_1_n_0 ;
  wire \doutb[58]_INST_0_i_2_n_0 ;
  wire \doutb[59]_INST_0_i_1_n_0 ;
  wire \doutb[59]_INST_0_i_2_n_0 ;
  wire \doutb[5]_INST_0_i_1_n_0 ;
  wire \doutb[5]_INST_0_i_2_n_0 ;
  wire \doutb[60]_INST_0_i_1_n_0 ;
  wire \doutb[60]_INST_0_i_2_n_0 ;
  wire \doutb[61]_INST_0_i_1_n_0 ;
  wire \doutb[61]_INST_0_i_2_n_0 ;
  wire \doutb[62]_INST_0_i_1_n_0 ;
  wire \doutb[62]_INST_0_i_2_n_0 ;
  wire \doutb[63]_INST_0_i_1_n_0 ;
  wire \doutb[63]_INST_0_i_2_n_0 ;
  wire \doutb[64]_INST_0_i_1_n_0 ;
  wire \doutb[64]_INST_0_i_2_n_0 ;
  wire \doutb[65]_INST_0_i_1_n_0 ;
  wire \doutb[65]_INST_0_i_2_n_0 ;
  wire \doutb[66]_INST_0_i_1_n_0 ;
  wire \doutb[66]_INST_0_i_2_n_0 ;
  wire \doutb[67]_INST_0_i_1_n_0 ;
  wire \doutb[67]_INST_0_i_2_n_0 ;
  wire \doutb[68]_INST_0_i_1_n_0 ;
  wire \doutb[68]_INST_0_i_2_n_0 ;
  wire \doutb[69]_INST_0_i_1_n_0 ;
  wire \doutb[69]_INST_0_i_2_n_0 ;
  wire \doutb[6]_INST_0_i_1_n_0 ;
  wire \doutb[6]_INST_0_i_2_n_0 ;
  wire \doutb[70]_INST_0_i_1_n_0 ;
  wire \doutb[70]_INST_0_i_2_n_0 ;
  wire \doutb[71]_INST_0_i_1_n_0 ;
  wire \doutb[71]_INST_0_i_2_n_0 ;
  wire \doutb[7]_INST_0_i_1_n_0 ;
  wire \doutb[7]_INST_0_i_2_n_0 ;
  wire \doutb[8]_INST_0_i_1_n_0 ;
  wire \doutb[8]_INST_0_i_2_n_0 ;
  wire \doutb[9]_INST_0_i_1_n_0 ;
  wire \doutb[9]_INST_0_i_2_n_0 ;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ;
  wire [8:0]ram_doutb;

  MUXF7 \doutb[0]_INST_0 
       (.I0(\doutb[0]_INST_0_i_1_n_0 ),
        .I1(\doutb[0]_INST_0_i_2_n_0 ),
        .O(doutb[0]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[0]_INST_0_i_1 
       (.I0(DOBDO[0]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(ram_doutb[0]),
        .O(\doutb[0]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[0]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [0]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [0]),
        .O(\doutb[0]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[10]_INST_0 
       (.I0(\doutb[10]_INST_0_i_1_n_0 ),
        .I1(\doutb[10]_INST_0_i_2_n_0 ),
        .O(doutb[10]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[10]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 [1]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 [1]),
        .O(\doutb[10]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[10]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [9]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 [1]),
        .O(\doutb[10]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[11]_INST_0 
       (.I0(\doutb[11]_INST_0_i_1_n_0 ),
        .I1(\doutb[11]_INST_0_i_2_n_0 ),
        .O(doutb[11]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[11]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 [2]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 [2]),
        .O(\doutb[11]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[11]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [10]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 [2]),
        .O(\doutb[11]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[12]_INST_0 
       (.I0(\doutb[12]_INST_0_i_1_n_0 ),
        .I1(\doutb[12]_INST_0_i_2_n_0 ),
        .O(doutb[12]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[12]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 [3]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 [3]),
        .O(\doutb[12]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[12]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [11]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 [3]),
        .O(\doutb[12]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[13]_INST_0 
       (.I0(\doutb[13]_INST_0_i_1_n_0 ),
        .I1(\doutb[13]_INST_0_i_2_n_0 ),
        .O(doutb[13]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[13]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 [4]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 [4]),
        .O(\doutb[13]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[13]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [12]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 [4]),
        .O(\doutb[13]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[14]_INST_0 
       (.I0(\doutb[14]_INST_0_i_1_n_0 ),
        .I1(\doutb[14]_INST_0_i_2_n_0 ),
        .O(doutb[14]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[14]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 [5]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 [5]),
        .O(\doutb[14]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[14]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [13]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 [5]),
        .O(\doutb[14]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[15]_INST_0 
       (.I0(\doutb[15]_INST_0_i_1_n_0 ),
        .I1(\doutb[15]_INST_0_i_2_n_0 ),
        .O(doutb[15]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[15]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 [6]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 [6]),
        .O(\doutb[15]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[15]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [14]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 [6]),
        .O(\doutb[15]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[16]_INST_0 
       (.I0(\doutb[16]_INST_0_i_1_n_0 ),
        .I1(\doutb[16]_INST_0_i_2_n_0 ),
        .O(doutb[16]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[16]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 [7]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 [7]),
        .O(\doutb[16]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[16]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [15]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 [7]),
        .O(\doutb[16]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[17]_INST_0 
       (.I0(\doutb[17]_INST_0_i_1_n_0 ),
        .I1(\doutb[17]_INST_0_i_2_n_0 ),
        .O(doutb[17]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[17]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6 ),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 ),
        .O(\doutb[17]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[17]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [1]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_8 ),
        .O(\doutb[17]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[18]_INST_0 
       (.I0(\doutb[18]_INST_0_i_1_n_0 ),
        .I1(\doutb[18]_INST_0_i_2_n_0 ),
        .O(doutb[18]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[18]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 [0]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 [0]),
        .O(\doutb[18]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[18]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [0]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_12 [0]),
        .O(\doutb[18]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[19]_INST_0 
       (.I0(\doutb[19]_INST_0_i_1_n_0 ),
        .I1(\doutb[19]_INST_0_i_2_n_0 ),
        .O(doutb[19]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[19]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 [1]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 [1]),
        .O(\doutb[19]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[19]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [1]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_12 [1]),
        .O(\doutb[19]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[1]_INST_0 
       (.I0(\doutb[1]_INST_0_i_1_n_0 ),
        .I1(\doutb[1]_INST_0_i_2_n_0 ),
        .O(doutb[1]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[1]_INST_0_i_1 
       (.I0(DOBDO[1]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(ram_doutb[1]),
        .O(\doutb[1]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[1]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [1]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [1]),
        .O(\doutb[1]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[20]_INST_0 
       (.I0(\doutb[20]_INST_0_i_1_n_0 ),
        .I1(\doutb[20]_INST_0_i_2_n_0 ),
        .O(doutb[20]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[20]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 [2]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 [2]),
        .O(\doutb[20]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[20]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [2]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_12 [2]),
        .O(\doutb[20]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[21]_INST_0 
       (.I0(\doutb[21]_INST_0_i_1_n_0 ),
        .I1(\doutb[21]_INST_0_i_2_n_0 ),
        .O(doutb[21]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[21]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 [3]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 [3]),
        .O(\doutb[21]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[21]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [3]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_12 [3]),
        .O(\doutb[21]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[22]_INST_0 
       (.I0(\doutb[22]_INST_0_i_1_n_0 ),
        .I1(\doutb[22]_INST_0_i_2_n_0 ),
        .O(doutb[22]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[22]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 [4]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 [4]),
        .O(\doutb[22]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[22]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [4]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_12 [4]),
        .O(\doutb[22]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[23]_INST_0 
       (.I0(\doutb[23]_INST_0_i_1_n_0 ),
        .I1(\doutb[23]_INST_0_i_2_n_0 ),
        .O(doutb[23]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[23]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 [5]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 [5]),
        .O(\doutb[23]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[23]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [5]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_12 [5]),
        .O(\doutb[23]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[24]_INST_0 
       (.I0(\doutb[24]_INST_0_i_1_n_0 ),
        .I1(\doutb[24]_INST_0_i_2_n_0 ),
        .O(doutb[24]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[24]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 [6]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 [6]),
        .O(\doutb[24]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[24]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [6]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_12 [6]),
        .O(\doutb[24]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[25]_INST_0 
       (.I0(\doutb[25]_INST_0_i_1_n_0 ),
        .I1(\doutb[25]_INST_0_i_2_n_0 ),
        .O(doutb[25]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[25]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 [7]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 [7]),
        .O(\doutb[25]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[25]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [7]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_12 [7]),
        .O(\doutb[25]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[26]_INST_0 
       (.I0(\doutb[26]_INST_0_i_1_n_0 ),
        .I1(\doutb[26]_INST_0_i_2_n_0 ),
        .O(doutb[26]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[26]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_13 ),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_14 ),
        .O(\doutb[26]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[26]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_15 [0]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_16 ),
        .O(\doutb[26]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[27]_INST_0 
       (.I0(\doutb[27]_INST_0_i_1_n_0 ),
        .I1(\doutb[27]_INST_0_i_2_n_0 ),
        .O(doutb[27]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[27]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_17 [0]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_18 [0]),
        .O(\doutb[27]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[27]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [8]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_19 [0]),
        .O(\doutb[27]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[28]_INST_0 
       (.I0(\doutb[28]_INST_0_i_1_n_0 ),
        .I1(\doutb[28]_INST_0_i_2_n_0 ),
        .O(doutb[28]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[28]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_17 [1]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_18 [1]),
        .O(\doutb[28]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[28]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [9]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_19 [1]),
        .O(\doutb[28]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[29]_INST_0 
       (.I0(\doutb[29]_INST_0_i_1_n_0 ),
        .I1(\doutb[29]_INST_0_i_2_n_0 ),
        .O(doutb[29]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[29]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_17 [2]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_18 [2]),
        .O(\doutb[29]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[29]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [10]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_19 [2]),
        .O(\doutb[29]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[2]_INST_0 
       (.I0(\doutb[2]_INST_0_i_1_n_0 ),
        .I1(\doutb[2]_INST_0_i_2_n_0 ),
        .O(doutb[2]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[2]_INST_0_i_1 
       (.I0(DOBDO[2]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(ram_doutb[2]),
        .O(\doutb[2]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[2]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [2]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [2]),
        .O(\doutb[2]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[30]_INST_0 
       (.I0(\doutb[30]_INST_0_i_1_n_0 ),
        .I1(\doutb[30]_INST_0_i_2_n_0 ),
        .O(doutb[30]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[30]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_17 [3]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_18 [3]),
        .O(\doutb[30]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[30]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [11]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_19 [3]),
        .O(\doutb[30]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[31]_INST_0 
       (.I0(\doutb[31]_INST_0_i_1_n_0 ),
        .I1(\doutb[31]_INST_0_i_2_n_0 ),
        .O(doutb[31]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[31]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_17 [4]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_18 [4]),
        .O(\doutb[31]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[31]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [12]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_19 [4]),
        .O(\doutb[31]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[32]_INST_0 
       (.I0(\doutb[32]_INST_0_i_1_n_0 ),
        .I1(\doutb[32]_INST_0_i_2_n_0 ),
        .O(doutb[32]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[32]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_17 [5]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_18 [5]),
        .O(\doutb[32]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[32]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [13]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_19 [5]),
        .O(\doutb[32]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[33]_INST_0 
       (.I0(\doutb[33]_INST_0_i_1_n_0 ),
        .I1(\doutb[33]_INST_0_i_2_n_0 ),
        .O(doutb[33]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[33]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_17 [6]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_18 [6]),
        .O(\doutb[33]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[33]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [14]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_19 [6]),
        .O(\doutb[33]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[34]_INST_0 
       (.I0(\doutb[34]_INST_0_i_1_n_0 ),
        .I1(\doutb[34]_INST_0_i_2_n_0 ),
        .O(doutb[34]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[34]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_17 [7]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_18 [7]),
        .O(\doutb[34]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[34]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [15]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_19 [7]),
        .O(\doutb[34]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[35]_INST_0 
       (.I0(\doutb[35]_INST_0_i_1_n_0 ),
        .I1(\doutb[35]_INST_0_i_2_n_0 ),
        .O(doutb[35]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[35]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_20 ),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_21 ),
        .O(\doutb[35]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[35]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_15 [1]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_22 ),
        .O(\doutb[35]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[36]_INST_0 
       (.I0(\doutb[36]_INST_0_i_1_n_0 ),
        .I1(\doutb[36]_INST_0_i_2_n_0 ),
        .O(doutb[36]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[36]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_23 [0]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_24 [0]),
        .O(\doutb[36]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[36]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_25 [0]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_26 [0]),
        .O(\doutb[36]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[37]_INST_0 
       (.I0(\doutb[37]_INST_0_i_1_n_0 ),
        .I1(\doutb[37]_INST_0_i_2_n_0 ),
        .O(doutb[37]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[37]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_23 [1]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_24 [1]),
        .O(\doutb[37]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[37]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_25 [1]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_26 [1]),
        .O(\doutb[37]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[38]_INST_0 
       (.I0(\doutb[38]_INST_0_i_1_n_0 ),
        .I1(\doutb[38]_INST_0_i_2_n_0 ),
        .O(doutb[38]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[38]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_23 [2]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_24 [2]),
        .O(\doutb[38]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[38]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_25 [2]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_26 [2]),
        .O(\doutb[38]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[39]_INST_0 
       (.I0(\doutb[39]_INST_0_i_1_n_0 ),
        .I1(\doutb[39]_INST_0_i_2_n_0 ),
        .O(doutb[39]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[39]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_23 [3]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_24 [3]),
        .O(\doutb[39]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[39]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_25 [3]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_26 [3]),
        .O(\doutb[39]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[3]_INST_0 
       (.I0(\doutb[3]_INST_0_i_1_n_0 ),
        .I1(\doutb[3]_INST_0_i_2_n_0 ),
        .O(doutb[3]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[3]_INST_0_i_1 
       (.I0(DOBDO[3]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(ram_doutb[3]),
        .O(\doutb[3]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[3]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [3]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [3]),
        .O(\doutb[3]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[40]_INST_0 
       (.I0(\doutb[40]_INST_0_i_1_n_0 ),
        .I1(\doutb[40]_INST_0_i_2_n_0 ),
        .O(doutb[40]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[40]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_23 [4]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_24 [4]),
        .O(\doutb[40]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[40]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_25 [4]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_26 [4]),
        .O(\doutb[40]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[41]_INST_0 
       (.I0(\doutb[41]_INST_0_i_1_n_0 ),
        .I1(\doutb[41]_INST_0_i_2_n_0 ),
        .O(doutb[41]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[41]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_23 [5]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_24 [5]),
        .O(\doutb[41]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[41]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_25 [5]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_26 [5]),
        .O(\doutb[41]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[42]_INST_0 
       (.I0(\doutb[42]_INST_0_i_1_n_0 ),
        .I1(\doutb[42]_INST_0_i_2_n_0 ),
        .O(doutb[42]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[42]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_23 [6]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_24 [6]),
        .O(\doutb[42]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[42]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_25 [6]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_26 [6]),
        .O(\doutb[42]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[43]_INST_0 
       (.I0(\doutb[43]_INST_0_i_1_n_0 ),
        .I1(\doutb[43]_INST_0_i_2_n_0 ),
        .O(doutb[43]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[43]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_23 [7]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_24 [7]),
        .O(\doutb[43]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[43]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_25 [7]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_26 [7]),
        .O(\doutb[43]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[44]_INST_0 
       (.I0(\doutb[44]_INST_0_i_1_n_0 ),
        .I1(\doutb[44]_INST_0_i_2_n_0 ),
        .O(doutb[44]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[44]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_27 ),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_28 ),
        .O(\doutb[44]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[44]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_29 [0]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_30 ),
        .O(\doutb[44]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[45]_INST_0 
       (.I0(\doutb[45]_INST_0_i_1_n_0 ),
        .I1(\doutb[45]_INST_0_i_2_n_0 ),
        .O(doutb[45]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[45]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_31 [0]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_32 [0]),
        .O(\doutb[45]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[45]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_25 [8]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_33 [0]),
        .O(\doutb[45]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[46]_INST_0 
       (.I0(\doutb[46]_INST_0_i_1_n_0 ),
        .I1(\doutb[46]_INST_0_i_2_n_0 ),
        .O(doutb[46]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[46]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_31 [1]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_32 [1]),
        .O(\doutb[46]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[46]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_25 [9]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_33 [1]),
        .O(\doutb[46]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[47]_INST_0 
       (.I0(\doutb[47]_INST_0_i_1_n_0 ),
        .I1(\doutb[47]_INST_0_i_2_n_0 ),
        .O(doutb[47]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[47]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_31 [2]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_32 [2]),
        .O(\doutb[47]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[47]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_25 [10]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_33 [2]),
        .O(\doutb[47]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[48]_INST_0 
       (.I0(\doutb[48]_INST_0_i_1_n_0 ),
        .I1(\doutb[48]_INST_0_i_2_n_0 ),
        .O(doutb[48]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[48]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_31 [3]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_32 [3]),
        .O(\doutb[48]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[48]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_25 [11]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_33 [3]),
        .O(\doutb[48]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[49]_INST_0 
       (.I0(\doutb[49]_INST_0_i_1_n_0 ),
        .I1(\doutb[49]_INST_0_i_2_n_0 ),
        .O(doutb[49]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[49]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_31 [4]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_32 [4]),
        .O(\doutb[49]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[49]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_25 [12]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_33 [4]),
        .O(\doutb[49]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[4]_INST_0 
       (.I0(\doutb[4]_INST_0_i_1_n_0 ),
        .I1(\doutb[4]_INST_0_i_2_n_0 ),
        .O(doutb[4]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[4]_INST_0_i_1 
       (.I0(DOBDO[4]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(ram_doutb[4]),
        .O(\doutb[4]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[4]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [4]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [4]),
        .O(\doutb[4]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[50]_INST_0 
       (.I0(\doutb[50]_INST_0_i_1_n_0 ),
        .I1(\doutb[50]_INST_0_i_2_n_0 ),
        .O(doutb[50]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[50]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_31 [5]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_32 [5]),
        .O(\doutb[50]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[50]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_25 [13]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_33 [5]),
        .O(\doutb[50]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[51]_INST_0 
       (.I0(\doutb[51]_INST_0_i_1_n_0 ),
        .I1(\doutb[51]_INST_0_i_2_n_0 ),
        .O(doutb[51]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[51]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_31 [6]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_32 [6]),
        .O(\doutb[51]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[51]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_25 [14]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_33 [6]),
        .O(\doutb[51]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[52]_INST_0 
       (.I0(\doutb[52]_INST_0_i_1_n_0 ),
        .I1(\doutb[52]_INST_0_i_2_n_0 ),
        .O(doutb[52]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[52]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_31 [7]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_32 [7]),
        .O(\doutb[52]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[52]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_25 [15]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_33 [7]),
        .O(\doutb[52]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[53]_INST_0 
       (.I0(\doutb[53]_INST_0_i_1_n_0 ),
        .I1(\doutb[53]_INST_0_i_2_n_0 ),
        .O(doutb[53]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[53]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_34 ),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_35 ),
        .O(\doutb[53]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[53]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_29 [1]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_36 ),
        .O(\doutb[53]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[54]_INST_0 
       (.I0(\doutb[54]_INST_0_i_1_n_0 ),
        .I1(\doutb[54]_INST_0_i_2_n_0 ),
        .O(doutb[54]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[54]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_37 [0]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_38 [0]),
        .O(\doutb[54]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[54]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_39 [0]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_40 [0]),
        .O(\doutb[54]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[55]_INST_0 
       (.I0(\doutb[55]_INST_0_i_1_n_0 ),
        .I1(\doutb[55]_INST_0_i_2_n_0 ),
        .O(doutb[55]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[55]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_37 [1]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_38 [1]),
        .O(\doutb[55]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[55]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_39 [1]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_40 [1]),
        .O(\doutb[55]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[56]_INST_0 
       (.I0(\doutb[56]_INST_0_i_1_n_0 ),
        .I1(\doutb[56]_INST_0_i_2_n_0 ),
        .O(doutb[56]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[56]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_37 [2]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_38 [2]),
        .O(\doutb[56]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[56]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_39 [2]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_40 [2]),
        .O(\doutb[56]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[57]_INST_0 
       (.I0(\doutb[57]_INST_0_i_1_n_0 ),
        .I1(\doutb[57]_INST_0_i_2_n_0 ),
        .O(doutb[57]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[57]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_37 [3]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_38 [3]),
        .O(\doutb[57]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[57]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_39 [3]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_40 [3]),
        .O(\doutb[57]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[58]_INST_0 
       (.I0(\doutb[58]_INST_0_i_1_n_0 ),
        .I1(\doutb[58]_INST_0_i_2_n_0 ),
        .O(doutb[58]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[58]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_37 [4]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_38 [4]),
        .O(\doutb[58]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[58]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_39 [4]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_40 [4]),
        .O(\doutb[58]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[59]_INST_0 
       (.I0(\doutb[59]_INST_0_i_1_n_0 ),
        .I1(\doutb[59]_INST_0_i_2_n_0 ),
        .O(doutb[59]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[59]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_37 [5]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_38 [5]),
        .O(\doutb[59]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[59]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_39 [5]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_40 [5]),
        .O(\doutb[59]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[5]_INST_0 
       (.I0(\doutb[5]_INST_0_i_1_n_0 ),
        .I1(\doutb[5]_INST_0_i_2_n_0 ),
        .O(doutb[5]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[5]_INST_0_i_1 
       (.I0(DOBDO[5]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(ram_doutb[5]),
        .O(\doutb[5]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[5]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [5]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [5]),
        .O(\doutb[5]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[60]_INST_0 
       (.I0(\doutb[60]_INST_0_i_1_n_0 ),
        .I1(\doutb[60]_INST_0_i_2_n_0 ),
        .O(doutb[60]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[60]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_37 [6]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_38 [6]),
        .O(\doutb[60]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[60]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_39 [6]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_40 [6]),
        .O(\doutb[60]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[61]_INST_0 
       (.I0(\doutb[61]_INST_0_i_1_n_0 ),
        .I1(\doutb[61]_INST_0_i_2_n_0 ),
        .O(doutb[61]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[61]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_37 [7]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_38 [7]),
        .O(\doutb[61]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[61]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_39 [7]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_40 [7]),
        .O(\doutb[61]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[62]_INST_0 
       (.I0(\doutb[62]_INST_0_i_1_n_0 ),
        .I1(\doutb[62]_INST_0_i_2_n_0 ),
        .O(doutb[62]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[62]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_41 ),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_42 ),
        .O(\doutb[62]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[62]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_43 [0]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_44 ),
        .O(\doutb[62]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[63]_INST_0 
       (.I0(\doutb[63]_INST_0_i_1_n_0 ),
        .I1(\doutb[63]_INST_0_i_2_n_0 ),
        .O(doutb[63]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[63]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_45 [0]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_46 [0]),
        .O(\doutb[63]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[63]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_39 [8]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_47 [0]),
        .O(\doutb[63]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[64]_INST_0 
       (.I0(\doutb[64]_INST_0_i_1_n_0 ),
        .I1(\doutb[64]_INST_0_i_2_n_0 ),
        .O(doutb[64]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[64]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_45 [1]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_46 [1]),
        .O(\doutb[64]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[64]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_39 [9]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_47 [1]),
        .O(\doutb[64]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[65]_INST_0 
       (.I0(\doutb[65]_INST_0_i_1_n_0 ),
        .I1(\doutb[65]_INST_0_i_2_n_0 ),
        .O(doutb[65]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[65]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_45 [2]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_46 [2]),
        .O(\doutb[65]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[65]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_39 [10]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_47 [2]),
        .O(\doutb[65]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[66]_INST_0 
       (.I0(\doutb[66]_INST_0_i_1_n_0 ),
        .I1(\doutb[66]_INST_0_i_2_n_0 ),
        .O(doutb[66]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[66]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_45 [3]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_46 [3]),
        .O(\doutb[66]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[66]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_39 [11]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_47 [3]),
        .O(\doutb[66]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[67]_INST_0 
       (.I0(\doutb[67]_INST_0_i_1_n_0 ),
        .I1(\doutb[67]_INST_0_i_2_n_0 ),
        .O(doutb[67]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[67]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_45 [4]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_46 [4]),
        .O(\doutb[67]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[67]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_39 [12]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_47 [4]),
        .O(\doutb[67]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[68]_INST_0 
       (.I0(\doutb[68]_INST_0_i_1_n_0 ),
        .I1(\doutb[68]_INST_0_i_2_n_0 ),
        .O(doutb[68]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[68]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_45 [5]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_46 [5]),
        .O(\doutb[68]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[68]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_39 [13]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_47 [5]),
        .O(\doutb[68]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[69]_INST_0 
       (.I0(\doutb[69]_INST_0_i_1_n_0 ),
        .I1(\doutb[69]_INST_0_i_2_n_0 ),
        .O(doutb[69]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[69]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_45 [6]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_46 [6]),
        .O(\doutb[69]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[69]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_39 [14]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_47 [6]),
        .O(\doutb[69]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[6]_INST_0 
       (.I0(\doutb[6]_INST_0_i_1_n_0 ),
        .I1(\doutb[6]_INST_0_i_2_n_0 ),
        .O(doutb[6]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[6]_INST_0_i_1 
       (.I0(DOBDO[6]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(ram_doutb[6]),
        .O(\doutb[6]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[6]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [6]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [6]),
        .O(\doutb[6]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[70]_INST_0 
       (.I0(\doutb[70]_INST_0_i_1_n_0 ),
        .I1(\doutb[70]_INST_0_i_2_n_0 ),
        .O(doutb[70]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[70]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_45 [7]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_46 [7]),
        .O(\doutb[70]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[70]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_39 [15]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_47 [7]),
        .O(\doutb[70]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[71]_INST_0 
       (.I0(\doutb[71]_INST_0_i_1_n_0 ),
        .I1(\doutb[71]_INST_0_i_2_n_0 ),
        .O(doutb[71]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[71]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_48 ),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_49 ),
        .O(\doutb[71]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[71]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_43 [1]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_50 ),
        .O(\doutb[71]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[7]_INST_0 
       (.I0(\doutb[7]_INST_0_i_1_n_0 ),
        .I1(\doutb[7]_INST_0_i_2_n_0 ),
        .O(doutb[7]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[7]_INST_0_i_1 
       (.I0(DOBDO[7]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(ram_doutb[7]),
        .O(\doutb[7]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[7]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [7]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [7]),
        .O(\doutb[7]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[8]_INST_0 
       (.I0(\doutb[8]_INST_0_i_1_n_0 ),
        .I1(\doutb[8]_INST_0_i_2_n_0 ),
        .O(doutb[8]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[8]_INST_0_i_1 
       (.I0(DOPBDOP),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(ram_doutb[8]),
        .O(\doutb[8]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[8]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [0]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ),
        .O(\doutb[8]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[9]_INST_0 
       (.I0(\doutb[9]_INST_0_i_1_n_0 ),
        .I1(\doutb[9]_INST_0_i_2_n_0 ),
        .O(doutb[9]),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[9]_INST_0_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 [0]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 [0]),
        .O(\doutb[9]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[9]_INST_0_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [8]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 [0]),
        .O(\doutb[9]_INST_0_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clkb),
        .CE(1'b1),
        .D(addrb[0]),
        .Q(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clkb),
        .CE(1'b1),
        .D(addrb[1]),
        .Q(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[2] 
       (.C(clkb),
        .CE(1'b1),
        .D(addrb[2]),
        .Q(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weightROM_blk_mem_gen_prim_width
   (ram_douta,
    ram_doutb,
    clka,
    clkb,
    \addra[13] ,
    \addrb[13] ,
    addra,
    addrb);
  output [8:0]ram_douta;
  output [8:0]ram_doutb;
  input clka;
  input clkb;
  input \addra[13] ;
  input \addrb[13] ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire \addra[13] ;
  wire [11:0]addrb;
  wire \addrb[13] ;
  wire clka;
  wire clkb;
  wire [8:0]ram_douta;
  wire [8:0]ram_doutb;

  weightROM_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .\addra[13] (\addra[13] ),
        .addrb(addrb),
        .\addrb[13] (\addrb[13] ),
        .clka(clka),
        .clkb(clkb),
        .ram_douta(ram_douta),
        .ram_doutb(ram_doutb));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weightROM_blk_mem_gen_prim_width__parameterized0
   (DOADO,
    DOBDO,
    DOPADOP,
    DOPBDOP,
    clka,
    clkb,
    \addra[12] ,
    \addrb[12] ,
    addra,
    addrb);
  output [7:0]DOADO;
  output [7:0]DOBDO;
  output [0:0]DOPADOP;
  output [0:0]DOPBDOP;
  input clka;
  input clkb;
  input \addra[12] ;
  input \addrb[12] ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [7:0]DOADO;
  wire [7:0]DOBDO;
  wire [0:0]DOPADOP;
  wire [0:0]DOPBDOP;
  wire [11:0]addra;
  wire \addra[12] ;
  wire [11:0]addrb;
  wire \addrb[12] ;
  wire clka;
  wire clkb;

  weightROM_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.DOADO(DOADO),
        .DOBDO(DOBDO),
        .DOPADOP(DOPADOP),
        .DOPBDOP(DOPBDOP),
        .addra(addra),
        .\addra[12] (\addra[12] ),
        .addrb(addrb),
        .\addrb[12] (\addrb[12] ),
        .clka(clka),
        .clkb(clkb));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weightROM_blk_mem_gen_prim_width__parameterized1
   (\douta[7] ,
    \doutb[7] ,
    \douta[8] ,
    \doutb[8] ,
    clka,
    clkb,
    \addra[13] ,
    \addrb[13] ,
    addra,
    addrb);
  output [7:0]\douta[7] ;
  output [7:0]\doutb[7] ;
  output [0:0]\douta[8] ;
  output [0:0]\doutb[8] ;
  input clka;
  input clkb;
  input \addra[13] ;
  input \addrb[13] ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire \addra[13] ;
  wire [11:0]addrb;
  wire \addrb[13] ;
  wire clka;
  wire clkb;
  wire [7:0]\douta[7] ;
  wire [0:0]\douta[8] ;
  wire [7:0]\doutb[7] ;
  wire [0:0]\doutb[8] ;

  weightROM_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.addra(addra),
        .\addra[13] (\addra[13] ),
        .addrb(addrb),
        .\addrb[13] (\addrb[13] ),
        .clka(clka),
        .clkb(clkb),
        .\douta[7] (\douta[7] ),
        .\douta[8] (\douta[8] ),
        .\doutb[7] (\doutb[7] ),
        .\doutb[8] (\doutb[8] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weightROM_blk_mem_gen_prim_width__parameterized10
   (\douta[34] ,
    \doutb[34] ,
    \douta[35] ,
    \doutb[35] ,
    clka,
    clkb,
    \addra[13] ,
    \addrb[13] ,
    addra,
    addrb);
  output [7:0]\douta[34] ;
  output [7:0]\doutb[34] ;
  output [0:0]\douta[35] ;
  output [0:0]\doutb[35] ;
  input clka;
  input clkb;
  input \addra[13] ;
  input \addrb[13] ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire \addra[13] ;
  wire [11:0]addrb;
  wire \addrb[13] ;
  wire clka;
  wire clkb;
  wire [7:0]\douta[34] ;
  wire [0:0]\douta[35] ;
  wire [7:0]\doutb[34] ;
  wire [0:0]\doutb[35] ;

  weightROM_blk_mem_gen_prim_wrapper_init__parameterized10 \prim_init.ram 
       (.addra(addra),
        .\addra[13] (\addra[13] ),
        .addrb(addrb),
        .\addrb[13] (\addrb[13] ),
        .clka(clka),
        .clkb(clkb),
        .\douta[34] (\douta[34] ),
        .\douta[35] (\douta[35] ),
        .\doutb[34] (\doutb[34] ),
        .\doutb[35] (\doutb[35] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weightROM_blk_mem_gen_prim_width__parameterized11
   (\douta[34] ,
    \doutb[34] ,
    \douta[35] ,
    \doutb[35] ,
    clka,
    clkb,
    \addra[12] ,
    \addrb[12] ,
    addra,
    addrb);
  output [7:0]\douta[34] ;
  output [7:0]\doutb[34] ;
  output [0:0]\douta[35] ;
  output [0:0]\doutb[35] ;
  input clka;
  input clkb;
  input \addra[12] ;
  input \addrb[12] ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire \addra[12] ;
  wire [11:0]addrb;
  wire \addrb[12] ;
  wire clka;
  wire clkb;
  wire [7:0]\douta[34] ;
  wire [0:0]\douta[35] ;
  wire [7:0]\doutb[34] ;
  wire [0:0]\doutb[35] ;

  weightROM_blk_mem_gen_prim_wrapper_init__parameterized11 \prim_init.ram 
       (.addra(addra),
        .\addra[12] (\addra[12] ),
        .addrb(addrb),
        .\addrb[12] (\addrb[12] ),
        .clka(clka),
        .clkb(clkb),
        .\douta[34] (\douta[34] ),
        .\douta[35] (\douta[35] ),
        .\doutb[34] (\doutb[34] ),
        .\doutb[35] (\doutb[35] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weightROM_blk_mem_gen_prim_width__parameterized12
   (\douta[34] ,
    \doutb[34] ,
    \douta[35] ,
    \doutb[35] ,
    clka,
    clkb,
    \addra[13] ,
    \addrb[13] ,
    addra,
    addrb);
  output [7:0]\douta[34] ;
  output [7:0]\doutb[34] ;
  output [0:0]\douta[35] ;
  output [0:0]\doutb[35] ;
  input clka;
  input clkb;
  input \addra[13] ;
  input \addrb[13] ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire \addra[13] ;
  wire [11:0]addrb;
  wire \addrb[13] ;
  wire clka;
  wire clkb;
  wire [7:0]\douta[34] ;
  wire [0:0]\douta[35] ;
  wire [7:0]\doutb[34] ;
  wire [0:0]\doutb[35] ;

  weightROM_blk_mem_gen_prim_wrapper_init__parameterized12 \prim_init.ram 
       (.addra(addra),
        .\addra[13] (\addra[13] ),
        .addrb(addrb),
        .\addrb[13] (\addrb[13] ),
        .clka(clka),
        .clkb(clkb),
        .\douta[34] (\douta[34] ),
        .\douta[35] (\douta[35] ),
        .\doutb[34] (\doutb[34] ),
        .\doutb[35] (\doutb[35] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weightROM_blk_mem_gen_prim_width__parameterized13
   (\douta[43] ,
    \doutb[43] ,
    \douta[44] ,
    \doutb[44] ,
    clka,
    clkb,
    \addra[13] ,
    \addrb[13] ,
    addra,
    addrb);
  output [7:0]\douta[43] ;
  output [7:0]\doutb[43] ;
  output [0:0]\douta[44] ;
  output [0:0]\doutb[44] ;
  input clka;
  input clkb;
  input \addra[13] ;
  input \addrb[13] ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire \addra[13] ;
  wire [11:0]addrb;
  wire \addrb[13] ;
  wire clka;
  wire clkb;
  wire [7:0]\douta[43] ;
  wire [0:0]\douta[44] ;
  wire [7:0]\doutb[43] ;
  wire [0:0]\doutb[44] ;

  weightROM_blk_mem_gen_prim_wrapper_init__parameterized13 \prim_init.ram 
       (.addra(addra),
        .\addra[13] (\addra[13] ),
        .addrb(addrb),
        .\addrb[13] (\addrb[13] ),
        .clka(clka),
        .clkb(clkb),
        .\douta[43] (\douta[43] ),
        .\douta[44] (\douta[44] ),
        .\doutb[43] (\doutb[43] ),
        .\doutb[44] (\doutb[44] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weightROM_blk_mem_gen_prim_width__parameterized14
   (\douta[43] ,
    \doutb[43] ,
    \douta[44] ,
    \doutb[44] ,
    clka,
    clkb,
    \addra[12] ,
    \addrb[12] ,
    addra,
    addrb);
  output [7:0]\douta[43] ;
  output [7:0]\doutb[43] ;
  output [0:0]\douta[44] ;
  output [0:0]\doutb[44] ;
  input clka;
  input clkb;
  input \addra[12] ;
  input \addrb[12] ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire \addra[12] ;
  wire [11:0]addrb;
  wire \addrb[12] ;
  wire clka;
  wire clkb;
  wire [7:0]\douta[43] ;
  wire [0:0]\douta[44] ;
  wire [7:0]\doutb[43] ;
  wire [0:0]\doutb[44] ;

  weightROM_blk_mem_gen_prim_wrapper_init__parameterized14 \prim_init.ram 
       (.addra(addra),
        .\addra[12] (\addra[12] ),
        .addrb(addrb),
        .\addrb[12] (\addrb[12] ),
        .clka(clka),
        .clkb(clkb),
        .\douta[43] (\douta[43] ),
        .\douta[44] (\douta[44] ),
        .\doutb[43] (\doutb[43] ),
        .\doutb[44] (\doutb[44] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weightROM_blk_mem_gen_prim_width__parameterized15
   (\douta[43] ,
    \doutb[43] ,
    \douta[44] ,
    \doutb[44] ,
    clka,
    clkb,
    \addra[13] ,
    \addrb[13] ,
    addra,
    addrb);
  output [7:0]\douta[43] ;
  output [7:0]\doutb[43] ;
  output [0:0]\douta[44] ;
  output [0:0]\doutb[44] ;
  input clka;
  input clkb;
  input \addra[13] ;
  input \addrb[13] ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire \addra[13] ;
  wire [11:0]addrb;
  wire \addrb[13] ;
  wire clka;
  wire clkb;
  wire [7:0]\douta[43] ;
  wire [0:0]\douta[44] ;
  wire [7:0]\doutb[43] ;
  wire [0:0]\doutb[44] ;

  weightROM_blk_mem_gen_prim_wrapper_init__parameterized15 \prim_init.ram 
       (.addra(addra),
        .\addra[13] (\addra[13] ),
        .addrb(addrb),
        .\addrb[13] (\addrb[13] ),
        .clka(clka),
        .clkb(clkb),
        .\douta[43] (\douta[43] ),
        .\douta[44] (\douta[44] ),
        .\doutb[43] (\doutb[43] ),
        .\doutb[44] (\doutb[44] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weightROM_blk_mem_gen_prim_width__parameterized16
   (\douta[52] ,
    \doutb[52] ,
    \douta[53] ,
    \doutb[53] ,
    clka,
    clkb,
    ena_array,
    enb_array,
    addra,
    addrb);
  output [15:0]\douta[52] ;
  output [15:0]\doutb[52] ;
  output [1:0]\douta[53] ;
  output [1:0]\doutb[53] ;
  input clka;
  input clkb;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [10:0]addra;
  input [10:0]addrb;

  wire [10:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]\douta[52] ;
  wire [1:0]\douta[53] ;
  wire [15:0]\doutb[52] ;
  wire [1:0]\doutb[53] ;
  wire [0:0]ena_array;
  wire [0:0]enb_array;

  weightROM_blk_mem_gen_prim_wrapper_init__parameterized16 \prim_init.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .\douta[52] (\douta[52] ),
        .\douta[53] (\douta[53] ),
        .\doutb[52] (\doutb[52] ),
        .\doutb[53] (\doutb[53] ),
        .ena_array(ena_array),
        .enb_array(enb_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weightROM_blk_mem_gen_prim_width__parameterized17
   (\douta[52] ,
    \doutb[52] ,
    \douta[53] ,
    \doutb[53] ,
    clka,
    clkb,
    \addra[13] ,
    \addrb[13] ,
    addra,
    addrb);
  output [7:0]\douta[52] ;
  output [7:0]\doutb[52] ;
  output [0:0]\douta[53] ;
  output [0:0]\doutb[53] ;
  input clka;
  input clkb;
  input \addra[13] ;
  input \addrb[13] ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire \addra[13] ;
  wire [11:0]addrb;
  wire \addrb[13] ;
  wire clka;
  wire clkb;
  wire [7:0]\douta[52] ;
  wire [0:0]\douta[53] ;
  wire [7:0]\doutb[52] ;
  wire [0:0]\doutb[53] ;

  weightROM_blk_mem_gen_prim_wrapper_init__parameterized17 \prim_init.ram 
       (.addra(addra),
        .\addra[13] (\addra[13] ),
        .addrb(addrb),
        .\addrb[13] (\addrb[13] ),
        .clka(clka),
        .clkb(clkb),
        .\douta[52] (\douta[52] ),
        .\douta[53] (\douta[53] ),
        .\doutb[52] (\doutb[52] ),
        .\doutb[53] (\doutb[53] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weightROM_blk_mem_gen_prim_width__parameterized18
   (\douta[52] ,
    \doutb[52] ,
    \douta[53] ,
    \doutb[53] ,
    clka,
    clkb,
    \addra[12] ,
    \addrb[12] ,
    addra,
    addrb);
  output [7:0]\douta[52] ;
  output [7:0]\doutb[52] ;
  output [0:0]\douta[53] ;
  output [0:0]\doutb[53] ;
  input clka;
  input clkb;
  input \addra[12] ;
  input \addrb[12] ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire \addra[12] ;
  wire [11:0]addrb;
  wire \addrb[12] ;
  wire clka;
  wire clkb;
  wire [7:0]\douta[52] ;
  wire [0:0]\douta[53] ;
  wire [7:0]\doutb[52] ;
  wire [0:0]\doutb[53] ;

  weightROM_blk_mem_gen_prim_wrapper_init__parameterized18 \prim_init.ram 
       (.addra(addra),
        .\addra[12] (\addra[12] ),
        .addrb(addrb),
        .\addrb[12] (\addrb[12] ),
        .clka(clka),
        .clkb(clkb),
        .\douta[52] (\douta[52] ),
        .\douta[53] (\douta[53] ),
        .\doutb[52] (\doutb[52] ),
        .\doutb[53] (\doutb[53] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weightROM_blk_mem_gen_prim_width__parameterized19
   (\douta[52] ,
    \doutb[52] ,
    \douta[53] ,
    \doutb[53] ,
    clka,
    clkb,
    \addra[13] ,
    \addrb[13] ,
    addra,
    addrb);
  output [7:0]\douta[52] ;
  output [7:0]\doutb[52] ;
  output [0:0]\douta[53] ;
  output [0:0]\doutb[53] ;
  input clka;
  input clkb;
  input \addra[13] ;
  input \addrb[13] ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire \addra[13] ;
  wire [11:0]addrb;
  wire \addrb[13] ;
  wire clka;
  wire clkb;
  wire [7:0]\douta[52] ;
  wire [0:0]\douta[53] ;
  wire [7:0]\doutb[52] ;
  wire [0:0]\doutb[53] ;

  weightROM_blk_mem_gen_prim_wrapper_init__parameterized19 \prim_init.ram 
       (.addra(addra),
        .\addra[13] (\addra[13] ),
        .addrb(addrb),
        .\addrb[13] (\addrb[13] ),
        .clka(clka),
        .clkb(clkb),
        .\douta[52] (\douta[52] ),
        .\douta[53] (\douta[53] ),
        .\doutb[52] (\doutb[52] ),
        .\doutb[53] (\doutb[53] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weightROM_blk_mem_gen_prim_width__parameterized2
   (\douta[16] ,
    \doutb[16] ,
    \douta[17] ,
    \doutb[17] ,
    clka,
    clkb,
    ena_array,
    enb_array,
    addra,
    addrb);
  output [15:0]\douta[16] ;
  output [15:0]\doutb[16] ;
  output [1:0]\douta[17] ;
  output [1:0]\doutb[17] ;
  input clka;
  input clkb;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [10:0]addra;
  input [10:0]addrb;

  wire [10:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]\douta[16] ;
  wire [1:0]\douta[17] ;
  wire [15:0]\doutb[16] ;
  wire [1:0]\doutb[17] ;
  wire [0:0]ena_array;
  wire [0:0]enb_array;

  weightROM_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .\douta[16] (\douta[16] ),
        .\douta[17] (\douta[17] ),
        .\doutb[16] (\doutb[16] ),
        .\doutb[17] (\doutb[17] ),
        .ena_array(ena_array),
        .enb_array(enb_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weightROM_blk_mem_gen_prim_width__parameterized20
   (\douta[61] ,
    \doutb[61] ,
    \douta[62] ,
    \doutb[62] ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    clka,
    clkb,
    addra,
    addrb);
  output [7:0]\douta[61] ;
  output [7:0]\doutb[61] ;
  output [0:0]\douta[62] ;
  output [0:0]\doutb[62] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  output \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input clkb;
  input [13:0]addra;
  input [13:0]addrb;

  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]\douta[61] ;
  wire [0:0]\douta[62] ;
  wire [7:0]\doutb[61] ;
  wire [0:0]\doutb[62] ;

  weightROM_blk_mem_gen_prim_wrapper_init__parameterized20 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .\douta[61] (\douta[61] ),
        .\douta[62] (\douta[62] ),
        .\doutb[61] (\doutb[61] ),
        .\doutb[62] (\doutb[62] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weightROM_blk_mem_gen_prim_width__parameterized21
   (\douta[61] ,
    \doutb[61] ,
    \douta[62] ,
    \doutb[62] ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    clka,
    clkb,
    addra,
    addrb);
  output [7:0]\douta[61] ;
  output [7:0]\doutb[61] ;
  output [0:0]\douta[62] ;
  output [0:0]\doutb[62] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  output \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input clkb;
  input [13:0]addra;
  input [13:0]addrb;

  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]\douta[61] ;
  wire [0:0]\douta[62] ;
  wire [7:0]\doutb[61] ;
  wire [0:0]\doutb[62] ;

  weightROM_blk_mem_gen_prim_wrapper_init__parameterized21 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .\douta[61] (\douta[61] ),
        .\douta[62] (\douta[62] ),
        .\doutb[61] (\doutb[61] ),
        .\doutb[62] (\doutb[62] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weightROM_blk_mem_gen_prim_width__parameterized22
   (\douta[61] ,
    \doutb[61] ,
    \douta[62] ,
    \doutb[62] ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    clka,
    clkb,
    addra,
    addrb);
  output [7:0]\douta[61] ;
  output [7:0]\doutb[61] ;
  output [0:0]\douta[62] ;
  output [0:0]\doutb[62] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  output \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input clkb;
  input [13:0]addra;
  input [13:0]addrb;

  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]\douta[61] ;
  wire [0:0]\douta[62] ;
  wire [7:0]\doutb[61] ;
  wire [0:0]\doutb[62] ;

  weightROM_blk_mem_gen_prim_wrapper_init__parameterized22 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .\douta[61] (\douta[61] ),
        .\douta[62] (\douta[62] ),
        .\doutb[61] (\doutb[61] ),
        .\doutb[62] (\doutb[62] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weightROM_blk_mem_gen_prim_width__parameterized23
   (\douta[70] ,
    \doutb[70] ,
    \douta[71] ,
    \doutb[71] ,
    clka,
    clkb,
    ena_array,
    enb_array,
    addra,
    addrb);
  output [15:0]\douta[70] ;
  output [15:0]\doutb[70] ;
  output [1:0]\douta[71] ;
  output [1:0]\doutb[71] ;
  input clka;
  input clkb;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [10:0]addra;
  input [10:0]addrb;

  wire [10:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]\douta[70] ;
  wire [1:0]\douta[71] ;
  wire [15:0]\doutb[70] ;
  wire [1:0]\doutb[71] ;
  wire [0:0]ena_array;
  wire [0:0]enb_array;

  weightROM_blk_mem_gen_prim_wrapper_init__parameterized23 \prim_init.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .\douta[70] (\douta[70] ),
        .\douta[71] (\douta[71] ),
        .\doutb[70] (\doutb[70] ),
        .\doutb[71] (\doutb[71] ),
        .ena_array(ena_array),
        .enb_array(enb_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weightROM_blk_mem_gen_prim_width__parameterized24
   (\douta[70] ,
    \doutb[70] ,
    \douta[71] ,
    \doutb[71] ,
    clka,
    clkb,
    \addra[13] ,
    \addrb[13] ,
    addra,
    addrb);
  output [7:0]\douta[70] ;
  output [7:0]\doutb[70] ;
  output [0:0]\douta[71] ;
  output [0:0]\doutb[71] ;
  input clka;
  input clkb;
  input \addra[13] ;
  input \addrb[13] ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire \addra[13] ;
  wire [11:0]addrb;
  wire \addrb[13] ;
  wire clka;
  wire clkb;
  wire [7:0]\douta[70] ;
  wire [0:0]\douta[71] ;
  wire [7:0]\doutb[70] ;
  wire [0:0]\doutb[71] ;

  weightROM_blk_mem_gen_prim_wrapper_init__parameterized24 \prim_init.ram 
       (.addra(addra),
        .\addra[13] (\addra[13] ),
        .addrb(addrb),
        .\addrb[13] (\addrb[13] ),
        .clka(clka),
        .clkb(clkb),
        .\douta[70] (\douta[70] ),
        .\douta[71] (\douta[71] ),
        .\doutb[70] (\doutb[70] ),
        .\doutb[71] (\doutb[71] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weightROM_blk_mem_gen_prim_width__parameterized25
   (\douta[70] ,
    \doutb[70] ,
    \douta[71] ,
    \doutb[71] ,
    clka,
    clkb,
    \addra[12] ,
    \addrb[12] ,
    addra,
    addrb);
  output [7:0]\douta[70] ;
  output [7:0]\doutb[70] ;
  output [0:0]\douta[71] ;
  output [0:0]\doutb[71] ;
  input clka;
  input clkb;
  input \addra[12] ;
  input \addrb[12] ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire \addra[12] ;
  wire [11:0]addrb;
  wire \addrb[12] ;
  wire clka;
  wire clkb;
  wire [7:0]\douta[70] ;
  wire [0:0]\douta[71] ;
  wire [7:0]\doutb[70] ;
  wire [0:0]\doutb[71] ;

  weightROM_blk_mem_gen_prim_wrapper_init__parameterized25 \prim_init.ram 
       (.addra(addra),
        .\addra[12] (\addra[12] ),
        .addrb(addrb),
        .\addrb[12] (\addrb[12] ),
        .clka(clka),
        .clkb(clkb),
        .\douta[70] (\douta[70] ),
        .\douta[71] (\douta[71] ),
        .\doutb[70] (\doutb[70] ),
        .\doutb[71] (\doutb[71] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weightROM_blk_mem_gen_prim_width__parameterized26
   (\douta[70] ,
    \doutb[70] ,
    \douta[71] ,
    \doutb[71] ,
    clka,
    clkb,
    \addra[13] ,
    \addrb[13] ,
    addra,
    addrb);
  output [7:0]\douta[70] ;
  output [7:0]\doutb[70] ;
  output [0:0]\douta[71] ;
  output [0:0]\doutb[71] ;
  input clka;
  input clkb;
  input \addra[13] ;
  input \addrb[13] ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire \addra[13] ;
  wire [11:0]addrb;
  wire \addrb[13] ;
  wire clka;
  wire clkb;
  wire [7:0]\douta[70] ;
  wire [0:0]\douta[71] ;
  wire [7:0]\doutb[70] ;
  wire [0:0]\doutb[71] ;

  weightROM_blk_mem_gen_prim_wrapper_init__parameterized26 \prim_init.ram 
       (.addra(addra),
        .\addra[13] (\addra[13] ),
        .addrb(addrb),
        .\addrb[13] (\addrb[13] ),
        .clka(clka),
        .clkb(clkb),
        .\douta[70] (\douta[70] ),
        .\douta[71] (\douta[71] ),
        .\doutb[70] (\doutb[70] ),
        .\doutb[71] (\doutb[71] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weightROM_blk_mem_gen_prim_width__parameterized3
   (\douta[16] ,
    \doutb[16] ,
    \douta[17] ,
    \doutb[17] ,
    clka,
    clkb,
    \addra[13] ,
    \addrb[13] ,
    addra,
    addrb);
  output [7:0]\douta[16] ;
  output [7:0]\doutb[16] ;
  output [0:0]\douta[17] ;
  output [0:0]\doutb[17] ;
  input clka;
  input clkb;
  input \addra[13] ;
  input \addrb[13] ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire \addra[13] ;
  wire [11:0]addrb;
  wire \addrb[13] ;
  wire clka;
  wire clkb;
  wire [7:0]\douta[16] ;
  wire [0:0]\douta[17] ;
  wire [7:0]\doutb[16] ;
  wire [0:0]\doutb[17] ;

  weightROM_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.addra(addra),
        .\addra[13] (\addra[13] ),
        .addrb(addrb),
        .\addrb[13] (\addrb[13] ),
        .clka(clka),
        .clkb(clkb),
        .\douta[16] (\douta[16] ),
        .\douta[17] (\douta[17] ),
        .\doutb[16] (\doutb[16] ),
        .\doutb[17] (\doutb[17] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weightROM_blk_mem_gen_prim_width__parameterized4
   (\douta[16] ,
    \doutb[16] ,
    \douta[17] ,
    \doutb[17] ,
    clka,
    clkb,
    \addra[12] ,
    \addrb[12] ,
    addra,
    addrb);
  output [7:0]\douta[16] ;
  output [7:0]\doutb[16] ;
  output [0:0]\douta[17] ;
  output [0:0]\doutb[17] ;
  input clka;
  input clkb;
  input \addra[12] ;
  input \addrb[12] ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire \addra[12] ;
  wire [11:0]addrb;
  wire \addrb[12] ;
  wire clka;
  wire clkb;
  wire [7:0]\douta[16] ;
  wire [0:0]\douta[17] ;
  wire [7:0]\doutb[16] ;
  wire [0:0]\doutb[17] ;

  weightROM_blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.addra(addra),
        .\addra[12] (\addra[12] ),
        .addrb(addrb),
        .\addrb[12] (\addrb[12] ),
        .clka(clka),
        .clkb(clkb),
        .\douta[16] (\douta[16] ),
        .\douta[17] (\douta[17] ),
        .\doutb[16] (\doutb[16] ),
        .\doutb[17] (\doutb[17] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weightROM_blk_mem_gen_prim_width__parameterized5
   (\douta[16] ,
    \doutb[16] ,
    \douta[17] ,
    \doutb[17] ,
    clka,
    clkb,
    \addra[13] ,
    \addrb[13] ,
    addra,
    addrb);
  output [7:0]\douta[16] ;
  output [7:0]\doutb[16] ;
  output [0:0]\douta[17] ;
  output [0:0]\doutb[17] ;
  input clka;
  input clkb;
  input \addra[13] ;
  input \addrb[13] ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire \addra[13] ;
  wire [11:0]addrb;
  wire \addrb[13] ;
  wire clka;
  wire clkb;
  wire [7:0]\douta[16] ;
  wire [0:0]\douta[17] ;
  wire [7:0]\doutb[16] ;
  wire [0:0]\doutb[17] ;

  weightROM_blk_mem_gen_prim_wrapper_init__parameterized5 \prim_init.ram 
       (.addra(addra),
        .\addra[13] (\addra[13] ),
        .addrb(addrb),
        .\addrb[13] (\addrb[13] ),
        .clka(clka),
        .clkb(clkb),
        .\douta[16] (\douta[16] ),
        .\douta[17] (\douta[17] ),
        .\doutb[16] (\doutb[16] ),
        .\doutb[17] (\doutb[17] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weightROM_blk_mem_gen_prim_width__parameterized6
   (\douta[25] ,
    \doutb[25] ,
    \douta[26] ,
    \doutb[26] ,
    clka,
    clkb,
    \addra[13] ,
    \addrb[13] ,
    addra,
    addrb);
  output [7:0]\douta[25] ;
  output [7:0]\doutb[25] ;
  output [0:0]\douta[26] ;
  output [0:0]\doutb[26] ;
  input clka;
  input clkb;
  input \addra[13] ;
  input \addrb[13] ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire \addra[13] ;
  wire [11:0]addrb;
  wire \addrb[13] ;
  wire clka;
  wire clkb;
  wire [7:0]\douta[25] ;
  wire [0:0]\douta[26] ;
  wire [7:0]\doutb[25] ;
  wire [0:0]\doutb[26] ;

  weightROM_blk_mem_gen_prim_wrapper_init__parameterized6 \prim_init.ram 
       (.addra(addra),
        .\addra[13] (\addra[13] ),
        .addrb(addrb),
        .\addrb[13] (\addrb[13] ),
        .clka(clka),
        .clkb(clkb),
        .\douta[25] (\douta[25] ),
        .\douta[26] (\douta[26] ),
        .\doutb[25] (\doutb[25] ),
        .\doutb[26] (\doutb[26] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weightROM_blk_mem_gen_prim_width__parameterized7
   (\douta[25] ,
    \doutb[25] ,
    \douta[26] ,
    \doutb[26] ,
    clka,
    clkb,
    \addra[12] ,
    \addrb[12] ,
    addra,
    addrb);
  output [7:0]\douta[25] ;
  output [7:0]\doutb[25] ;
  output [0:0]\douta[26] ;
  output [0:0]\doutb[26] ;
  input clka;
  input clkb;
  input \addra[12] ;
  input \addrb[12] ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire \addra[12] ;
  wire [11:0]addrb;
  wire \addrb[12] ;
  wire clka;
  wire clkb;
  wire [7:0]\douta[25] ;
  wire [0:0]\douta[26] ;
  wire [7:0]\doutb[25] ;
  wire [0:0]\doutb[26] ;

  weightROM_blk_mem_gen_prim_wrapper_init__parameterized7 \prim_init.ram 
       (.addra(addra),
        .\addra[12] (\addra[12] ),
        .addrb(addrb),
        .\addrb[12] (\addrb[12] ),
        .clka(clka),
        .clkb(clkb),
        .\douta[25] (\douta[25] ),
        .\douta[26] (\douta[26] ),
        .\doutb[25] (\doutb[25] ),
        .\doutb[26] (\doutb[26] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weightROM_blk_mem_gen_prim_width__parameterized8
   (\douta[25] ,
    \doutb[25] ,
    \douta[26] ,
    \doutb[26] ,
    clka,
    clkb,
    \addra[13] ,
    \addrb[13] ,
    addra,
    addrb);
  output [7:0]\douta[25] ;
  output [7:0]\doutb[25] ;
  output [0:0]\douta[26] ;
  output [0:0]\doutb[26] ;
  input clka;
  input clkb;
  input \addra[13] ;
  input \addrb[13] ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire \addra[13] ;
  wire [11:0]addrb;
  wire \addrb[13] ;
  wire clka;
  wire clkb;
  wire [7:0]\douta[25] ;
  wire [0:0]\douta[26] ;
  wire [7:0]\doutb[25] ;
  wire [0:0]\doutb[26] ;

  weightROM_blk_mem_gen_prim_wrapper_init__parameterized8 \prim_init.ram 
       (.addra(addra),
        .\addra[13] (\addra[13] ),
        .addrb(addrb),
        .\addrb[13] (\addrb[13] ),
        .clka(clka),
        .clkb(clkb),
        .\douta[25] (\douta[25] ),
        .\douta[26] (\douta[26] ),
        .\doutb[25] (\doutb[25] ),
        .\doutb[26] (\doutb[26] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weightROM_blk_mem_gen_prim_width__parameterized9
   (\douta[34] ,
    \doutb[34] ,
    \douta[35] ,
    \doutb[35] ,
    clka,
    clkb,
    ena_array,
    enb_array,
    addra,
    addrb);
  output [15:0]\douta[34] ;
  output [15:0]\doutb[34] ;
  output [1:0]\douta[35] ;
  output [1:0]\doutb[35] ;
  input clka;
  input clkb;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [10:0]addra;
  input [10:0]addrb;

  wire [10:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]\douta[34] ;
  wire [1:0]\douta[35] ;
  wire [15:0]\doutb[34] ;
  wire [1:0]\doutb[35] ;
  wire [0:0]ena_array;
  wire [0:0]enb_array;

  weightROM_blk_mem_gen_prim_wrapper_init__parameterized9 \prim_init.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .\douta[34] (\douta[34] ),
        .\douta[35] (\douta[35] ),
        .\doutb[34] (\doutb[34] ),
        .\doutb[35] (\doutb[35] ),
        .ena_array(ena_array),
        .enb_array(enb_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weightROM_blk_mem_gen_prim_wrapper_init
   (ram_douta,
    ram_doutb,
    clka,
    clkb,
    \addra[13] ,
    \addrb[13] ,
    addra,
    addrb);
  output [8:0]ram_douta;
  output [8:0]ram_doutb;
  input clka;
  input clkb;
  input \addra[13] ;
  input \addrb[13] ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire \addra[13] ;
  wire [11:0]addrb;
  wire \addrb[13] ;
  wire clka;
  wire clkb;
  wire [8:0]ram_douta;
  wire [8:0]ram_doutb;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hA88BC7DDAD5FEDD3B7DC38E4E4F45B434D774ACAFAF9273E4F71D802955DFD3D),
    .INITP_01(256'h0B614F47056DFA80DBD66BE88E7D468A2A01F0035817BBA358968B8D1D9372BD),
    .INITP_02(256'hE1213574CEDA8F0B74A73B924F969EA60780627E0E71847DE32EF37E8AF772FB),
    .INITP_03(256'h6B3BB99475020E1BC346C4BA65A2AB6AADE4870AC1C0886ED2B4D180D89ADF7A),
    .INITP_04(256'hE0FA93C73742FEA4B91AC8D1035A185124AB60D906395D6E6DF1328FA39BBF5D),
    .INITP_05(256'h26704F77709B1F458D33EFE02631F5D78DD615A1B831617577D59E0C6D6C506D),
    .INITP_06(256'hE6371E3C2B37BF7B68C29BBF728FA6C928F5393E9CB489C65CD0DD7D1AACCA2B),
    .INITP_07(256'hE57BEC1F5C9DEE2054FCC130E9344610FCE8AABC0853A6FED6047AA1F58D5C83),
    .INITP_08(256'hA485A069701B46F4091D3C799912126C37660BD2A0F93991D5A3D983BA87B90C),
    .INITP_09(256'hC44F79A81BB7BE897C919B80CC9B6441F7321EB291B649CECA5A4DBA44A30A3B),
    .INITP_0A(256'hDB2C78B70B83593FC442C9980103C28D23F0AB2592A89FAC002D655A385CB05F),
    .INITP_0B(256'h5581796B095C0E50FE5F555112DF9F9C0A55D1B0C069B8FF1AA9E772B03B36E6),
    .INITP_0C(256'h086B4D411530D6350F90CDE2F5F34A74045F82A26CDF91CA90A51B594D382264),
    .INITP_0D(256'h494542F39A2A48826553A270EB303A3E3EE41FC098E0E3A1F133D6C1813922E1),
    .INITP_0E(256'hC04DB12BF9B3562C8941BD7CCE1AE1BEA08B3D84BA68A88BA1195C7583C298DA),
    .INITP_0F(256'hA6F4E94F9400B4FED07361DDB97B8E3E6B409C404FAA03C64F100A80A3CCF6D3),
    .INIT_00(256'h0BFEF612140F11F702EC0A05E9F9E7F00A110BFB24F2FFE3DB01FA07FFE5EA03),
    .INIT_01(256'h02E414F0EC11FF0F03F4E2F104FCEBDEF41A01FD10F11AF4F6FC03FA0A12E916),
    .INIT_02(256'hF3F91CFFE603DE0DEE0CEB0C15F4000C01FBF107E609F805110001F1FC150802),
    .INIT_03(256'h1F42EC1612EBCDF609151A06F3FC321401E1FC12F01805F12202070703E70402),
    .INIT_04(256'h14F4E1F2F3EEE505FF0EF515F5FAFFFDF3FDE0FFE5FA080BEAEF07D3F2FEFBF6),
    .INIT_05(256'h03FFD8F6F70F24F409EE19F8EAFCF7021100070BF5FE05FFF4FCFB0CF4E8081F),
    .INIT_06(256'hFFF4F70AEFEFF7FF0403FEEB09FB0403FAF60603040706F8F9F908F20BF8F40B),
    .INIT_07(256'hFD05F9EDF3FFE50D0DFEF60F1DFDFAFE0902040B0E0F08F102F802F5FB06F311),
    .INIT_08(256'hF203F705F8EAF3F22AF7F60FFCFAF024F10C14EAFEF103F1ED2000071115E6F1),
    .INIT_09(256'hEEFC07FBF403F80FFFF019FFFD01F8000407F80913ED162DF9F8050DF3F622F3),
    .INIT_0A(256'h0CF7F40000050900FDF300FAF9F7FA06FAFAFBFEF403FCF8F9FB09FCFAF6F1FE),
    .INIT_0B(256'hFB04FEFEFEFBFAFBFE02F502F9FBF5FAFF07FEFDFAFF05FF000205F9F902FA08),
    .INIT_0C(256'hF91209FBF0F505F5FC13E41007DF08140AF6F7FEEB150AFAF5F20CFDE509FA03),
    .INIT_0D(256'h1B0C05130CF9F2F90A04031805F9FD0AFDEDFE0AFEF9F8F2F9FB06FFE6F30BFF),
    .INIT_0E(256'h0619F4FB271B0C03F3FC04F0FEF304FCFFFFEDFE030DFE09FCEDFF27FBEAFF24),
    .INIT_0F(256'hEE032C08F9FB0B062EEFE31605051B091FEBFCF6F4010BF403010304FB25FE00),
    .INIT_10(256'hFCF00A0FE8FF051D0DF8FCF9F91017F00CE90311E62505F70B0408ECFEED0AEE),
    .INIT_11(256'h0407DF07ECF5E0030D1BE2FC0502F30CFC06001004FB03001101FFFA0DF5E608),
    .INIT_12(256'h09F2F118070E05F600F90F08F50D0718120F0E0D0D0EF7FB0420FFFE0A0A02F0),
    .INIT_13(256'hF8EE030604FEF9F1EC0F00E5F2060008F314FBFC1AF70E15EFF8EE1011E7070B),
    .INIT_14(256'hFCE00216F1FD072EF9EA05EDF31621FB2808F70FF234F2FA1C13FDE221F60EED),
    .INIT_15(256'h07F4D30407FCF70CF524EB0405FBFC010404020A05090CF902FBFEF007D7FD18),
    .INIT_16(256'hEBEC0DFC04FD01FB07FE0300DDF2F5FD04E5FAF40403F4E4FCF9F100F2E0ECE2),
    .INIT_17(256'h0AE8F41C0FE9FEF6F309EDF0EFFDFE09F4F100F8FEE60EF20606F5DFEBEBECF6),
    .INIT_18(256'hEFFF0EEFFD03F9EB0101F8FF02EE010101ED020001FBF8F8F0080508F2F7F400),
    .INIT_19(256'h0A000606090411F0FC06FC060106F908F7F005F9FB03E9F200FF02F5F104F7F1),
    .INIT_1A(256'hFECAFFFF10E7FBFA18EE03FEC601F6FBFF0917EF02E4E80CF21DECF61024FDFE),
    .INIT_1B(256'h19F9F01C1C193CECC3F20ECDCAFFDFFFE6FCFBFDF3DF1410FE10EF0EF4CD1500),
    .INIT_1C(256'hF607F1F816F112E706F2130BE8F7EDE9E4F702DC1BEDFAF8E9EEFD0BF7EDE31C),
    .INIT_1D(256'h07F414E2EF080F0B04EBFAFF00F6FBF2F8FBF90508E7FCFCE8FE0504F715FFE9),
    .INIT_1E(256'h191A0FF42408F4E5F5090B0B02F9DBDCD5F7FADC0BDD0CF2ED0CE409EAF1FDEA),
    .INIT_1F(256'h00FCFFFEF70320F11BE7F0F70003F6E0ECFBFC07ECF2FFFA12FDEDFEEE19FAFB),
    .INIT_20(256'h08EAF90908F5FAF60DF30D1015F9F50FFCFA0909FBFEF90EF91BFCEF1018FB00),
    .INIT_21(256'hFB01F3FE061201FFEFFE12EEF106FA0100030105030DF913FF04000B03F40402),
    .INIT_22(256'h11D3EE1BE1F4F8FC1102ED030DFF0A0C230EFD07ED170004002E05D70B0106EF),
    .INIT_23(256'hFEF1E4F1FC01D3F7020F01060EF4F70AFE0CF8F9121EFC08FAFEF80808E0FF1F),
    .INIT_24(256'h05F8E40DFDEEFA0BFFF4FFFF10081EF41F03E902020106EEED05FDE70EDD05FE),
    .INIT_25(256'hECE8E4EBED05F3F9060CF4FF07FAF3E50F16F5FC1E00FDF8D600F1E00BEAFF04),
    .INIT_26(256'h03F5EBFD0D08FBF2F8FC01F404FFF3010204FE080301F4F7EA0DFD0C0008F70C),
    .INIT_27(256'h000408070200FF0409E80AEBF2F90103F9F80602FE0706F8EC0201FF04F5FF0E),
    .INIT_28(256'h06FE1013F5F6FE38F1EBF40225102E171FFC0A3DE21DFAED01F900EE280620D9),
    .INIT_29(256'hEF00EF00FFE7CDEFE9050DFCFA010316000B00F40824FA0F09F80FE02DE0F9F3),
    .INIT_2A(256'h19D7F70FE3F9EAEB10F6F009050D00FD20FCFE10F20BFAF3EA201DE4F4F0EEE9),
    .INIT_2B(256'h1DEAFBF3110DEDF2ED0202FBEAF5D4090910F6F9091DF304F10306F405EDF923),
    .INIT_2C(256'hE8E105EC1308F8E709FD1A02F4FAF9F80106F80602E6E4F8F808E30F00F5EEFB),
    .INIT_2D(256'h0FF7200F1DFEF5EEEDF600E5E7FDE0F5E7F506FE02F7F108FC0102FCFFFEF801),
    .INIT_2E(256'hF0F4030005FC08EC01FB01FEF5FDFEFCF202FBF507F8F8FAEAFD000109F9E907),
    .INIT_2F(256'h01F7140E08F6FDF8F9FAF600F806F80AEB0500030CEE0D09FD010603ED00F702),
    .INIT_30(256'hFBFA03F6EEF3F0F00E1D030DF90C04FCFF06070AFDE9FCF113060301FF0AFAE8),
    .INIT_31(256'h0FF70007F00EF0FDFEFB0B06F707EDF5FDFA06FD0D0A030819FEF6F30A03F6EE),
    .INIT_32(256'hE6F6080305F6020BFF0004FEEF0A07F20EF4060111F101F8F8F1F9F6FFE7F0FF),
    .INIT_33(256'hF3FD060F0AF302EEEF14FAF9FC040FFEFE0306F705EDFF05F6FA00EAF502EBE7),
    .INIT_34(256'h06ECF3020F0AF6F802F6050FEDF6080407F6FC08F80DF300F406040007FBF603),
    .INIT_35(256'h10FEFE07FF0605FB09FF04EAEF020917F7F10500F7F91904FAFFF1FFFEF1FC0C),
    .INIT_36(256'hF00C0CED04F80EF6F4FFF9F9FDEBFEECEBF3F4EBFA0301F1EFEA0607E3F3F617),
    .INIT_37(256'h0BFEF3040A01010B03F9EE0802FC0004F8FCFA11F3E803DB17F8F7F9F409F7E6),
    .INIT_38(256'h29E4F8111401130A04F5120A0D13001716F61503FB0CFEE2FB11F2FB2317FCFC),
    .INIT_39(256'hEAFD02F7F307E003030F19FA0202FDEBFF1307F80303141EEFFE050E01F4F90E),
    .INIT_3A(256'h07F7E3070AF80308FCFC0305FF04FEF1FEF8EEFA1EF514EFF90309F6FBEA10FB),
    .INIT_3B(256'hDDDF00D6EC17FD0BF90DE7180A04DE030C15FCEA0907FCF7D304E8D30505D90F),
    .INIT_3C(256'hDD0300011DFAFAF60C060DF0DDF6EBE4F601F9E40BF105EEF9F4FC08FBD2EBF8),
    .INIT_3D(256'hFFF90307FBF2EFFF02FDE105FF05F50404F805FF04E102FAFB02F8DCF21BE1E8),
    .INIT_3E(256'h1009E8FDF1F405F3FC090301180205FDF3F4FBFCF8F81BFEFDF8FC14F5160DF7),
    .INIT_3F(256'hFC13FAE4F4E8F51117EA04020FFD17FA0D02FE020002F2F5F802F1FBF019F3F7),
    .INIT_40(256'hEB1A09030D11F7FEF216FD04F8EAFFE3F6FB020514F70200F7F40306E0F9F808),
    .INIT_41(256'h09F3210FFBFC0CF50A19ED0E0EFB12FB06FD09F9EBFFFFEE06FBF6F80512FDDF),
    .INIT_42(256'h0102F6E1170E03EF0EF7FCF807FDE1FBE5F4F6EFF30403E5F3FFFD1EF8EAE4F4),
    .INIT_43(256'h1C18EBF507F4F2F401F0F0FCF2FCEB08F7F3F80500F4FAEFF108F5F9F0F7E803),
    .INIT_44(256'h05FAFF12FAFB12E91FF2100AF400FFFE100826060D00F505F71004FE1905DDE4),
    .INIT_45(256'h0FF7F3FF07F90D07E206F8F0FCFAE3FAE422020725FD130DEE01F3F2F2F20310),
    .INIT_46(256'h26F5FFFCF5021206ECFBFDFD280D09FB09F1F7FFEF1206FEFFF2F3F1101200F1),
    .INIT_47(256'hEE0DF9F3ECFDE000FF0B0DF1F801FFF00808FBF7F91E04020B0208150DF9F11C),
    .INIT_48(256'hF9F2DAF42BE90AF200DE11F7CAF4F4E0F8F6FFED15E0EB01FEFEEEF0F90C00F2),
    .INIT_49(256'h1C02F2F6FE0F3FEDF5DA06D3E2FC0FEDF1FCF8F703D308F9E500F3E4F3EFEE08),
    .INIT_4A(256'h0114F0F1F2F9FFF3E91602FCF5F5ED00E9F3F1E804F708F9F7E408E5E4F80501),
    .INIT_4B(256'hFFEEF1F1F60A0AF70C00F9FEF8FF05FC0AFE0300EB03F1ECDD01FEF9F2FBF2F8),
    .INIT_4C(256'hF4F707FEF9F0FEFAF4F6FA00F2F5FEFE01F4F208F2FFF7F0EE09FBE7F3FAF2F4),
    .INIT_4D(256'h0FF2FCFF10F7F8F4FF02FA01FCFDEA14FAFB0702F4FC00FAF80101FEF5F4FDFC),
    .INIT_4E(256'h05D00107FCF4EC011D080E0DF10B00F117090C140FF9F2EC1E1BFCF416060BDD),
    .INIT_4F(256'h0AF4FD16060B18E1EB150DE3F0FEFA05F0F7FEFF06FAFE170403F8FB09E10705),
    .INIT_50(256'hF1FF010807FB22FC02EF0510E50109E40AE9050A18F3FC01F8EF01F9FAE501DB),
    .INIT_51(256'hFFE310FE09F617F21CF4F9EB03FCDD0DF4FE04FB00F60A04F1FAEFEE0EFDE7FA),
    .INIT_52(256'hF3E6FBFA08F7FFF503FF09F3F9F8F8FEFEFFFCEE06F6F609F606F70B0302EBF9),
    .INIT_53(256'h0BFC000E1B000FF4F60105F0EE0307FD05FE00F905F8FA09090AF5F8ECF6FD04),
    .INIT_54(256'hE7DDC91001F80C061DF11CF8F5020AED0905F9060FF41916ED1AF2DB0B070AF7),
    .INIT_55(256'hFDF600EBFA204FFBF4F9050E0403F2DE0BF2F5FE230EFBFDDC08FCE305DEFB22),
    .INIT_56(256'h0BF0EEF80705FFE0EDEC03FDF1FEEB08EA03FCF2F7F8F408FA06F7F1FC04FC00),
    .INIT_57(256'h04FD01F6F702FFFAEAE4F1EFE807FC04FD0600F9FC03F6EAEE05FEF200F2FB13),
    .INIT_58(256'hECFAF2F2F70EEAE32309050FEAF6F0ECD91811EE21EE1106FA1DF716E6FEF716),
    .INIT_59(256'h00F7230B041336F50CF309F8F704F10015F0FE0401D6000905FDE81C010C2101),
    .INIT_5A(256'hF90303FFF6F4F2EB0BFCF603E8FBE8FDEB0B04F201020705FFFE07FA01F8EA0B),
    .INIT_5B(256'hFC02EDF4F1FB03FFFBF00AFCFDFCEB03ED03F8FBF6E8FB09FF08FA02FD070204),
    .INIT_5C(256'h1AFEFD1207FB0D1FF30507F90D170E1B17FE1715E8FDFEFAF70BF0D8230F10F4),
    .INIT_5D(256'hEE03FBF8F3FDEAFEF703FCF6FDFAEDF0FA1C02EF080E0C1FFC020A131101FD06),
    .INIT_5E(256'hF72301EF150614F0F108040E09F8DBEFDA0EF1DF05F90FF3FAFFFB14ECF2F704),
    .INIT_5F(256'hFF1002FBFD0F0B1727EEF60712060BE40A06F9FAF9FD00041204FA11F30C14F8),
    .INIT_60(256'hF8FA0BF802FD00EEF20607FBEDFDF3F7EFF8FBF3FBF802FEEEF100F7F7F2ED02),
    .INIT_61(256'h01F1FF020000F7FC03FFFB00F8F8F405FBF301F9EDE3F6F70EFEF4010001F9ED),
    .INIT_62(256'h02F905F106FE13EE11010BFFE6F5ECF5EA0C12DB03EE0A07FCFCFF09E7FCE70F),
    .INIT_63(256'hFEE3FDF9F3220D0AFAF3FE04FFFCE60405F603FD08E6FDF800FEF518DE0701FC),
    .INIT_64(256'hEEE90A21E7F3F60B070E0D08FCFEFBE70AF60B1308E7FDF6F713FDE10DF403E4),
    .INIT_65(256'hFDE5F511F7FA0CE8FB16F8F2EE08EB01060DFC07070AF90CE803F5F000EAF107),
    .INIT_66(256'h0AE7EE09FA07F1F70AF8FE0002F6F6090200F9FA05F9FC030B1207EC0607FBF0),
    .INIT_67(256'hFAE700F8FCFAF0FCF7030AEBF2FAF2100DF1FFF60011EC07F2FC07FC0601EE13),
    .INIT_68(256'hFF00F4FAFBF801F605F9F7F3F502EB06EB17FEEF02FE00FFFDFCFC0DF603010B),
    .INIT_69(256'hF304F8FAFAF703130AE8FCFE0303FEFC06040203FAF707F9F600FE04F906120F),
    .INIT_6A(256'hE5FDE7EEF804F2ED20FBF91AE6F5F5EFF415FDF810F9FB00EB12F81AEBF5F406),
    .INIT_6B(256'h08E92B0E11111CFD08F60EF0F9090F120B0CF80106DD08190F02EE09ECF520F9),
    .INIT_6C(256'hEEFE0BF9FF0602F8F709F402EBF604EC03F7F0F6F0FB09FDFCF8FBFCFBF1F5F9),
    .INIT_6D(256'h03EF0B0901EEF800F20BF701FCFC000609F601FAF3ECFDF21204FE04F600F7F4),
    .INIT_6E(256'h0517F20FF6F2050EFE05FDFE150C170701F1F50CF60A0AF81CE7061708231CF0),
    .INIT_6F(256'hEA23F6F6F6E9E70213ED070E0F050FF7F913FE06FC04F707F4FE0CF80217F9FB),
    .INIT_70(256'hF8FA21E70A01E8EFE80AF005FAF7E5EAE6EAE2D8DBFFFF0AF3F311DCE4DBE51F),
    .INIT_71(256'h17FDF7FD00DDEBF3000CFA01ECFCF814EAF3FD00DE07FEF50B030FF10609F7EC),
    .INIT_72(256'hFAF8E30FF2F7F8100606040EF7F80EFC1604F21E11E50107FF0EF1EBF60104E2),
    .INIT_73(256'h11DCF5FE002325EDFD1D0B01FFFFF7FC04E7FAFF0F08E9E3E708F4F707DC021A),
    .INIT_74(256'h25F8EAF9F6F0FDF6F2EEF505EA00FCF5000CF50AF30A0BFFEF01F7F5EFECF101),
    .INIT_75(256'h07E8E600F21C16001B01FDF8FCF9FF0306ECF60001EAF9E9F503E813F4E70C14),
    .INIT_76(256'hF91A02D80CFEEA04F303ED0A0DEBFF10E3E2E3F6EDFDFDF309E403FFC9FFF209),
    .INIT_77(256'h112911F8FEFEEEFA03FDFA120001160504F6FF09D910F6DE0B010F01E907FCEC),
    .INIT_78(256'h0BF3F314F3FB08E7F7EEF90DF1F6F2F70CF9F8FFF3000105FC0F14E6F2F208F1),
    .INIT_79(256'h0DE3E6E60010040410FBFFE2F1FF02170300F9FBFDFBF1FDEEFAECF6F7F0F024),
    .INIT_7A(256'hF2EC120D1005F8FB11F20CFFDF05FDF1060308FB10F0EE00E80FFD03F8E5F108),
    .INIT_7B(256'h0FE4FC1B0D0110FA0006E7E20104F409F8FCFAFDFDE316FDF4FCF4F6F2F8F2E8),
    .INIT_7C(256'h01F6FAEC1AF512E0F8F708FCF5F50BF0FEF9F2FB15F0F5F7EA05EF0EF9F8E002),
    .INIT_7D(256'h08F412FDFC0F0B000CE7F2F202F8EAFAF6F4FFFB03F6FBEEF8F8F9F2EFFB0202),
    .INIT_7E(256'h16EA041DFBF0F6110FF304060E1B141018002B19FC0C01F00118F8DC1C010ED2),
    .INIT_7F(256'hFCF0F703FA02E6E90506FEF70102E2F6F723050514190324DC04FBF41BE0F3F4),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],ram_douta[7:0]}),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],ram_doutb[7:0]}),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],ram_douta[8]}),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],ram_doutb[8]}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[13] ),
        .ENBWREN(\addrb[13] ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weightROM_blk_mem_gen_prim_wrapper_init__parameterized0
   (DOADO,
    DOBDO,
    DOPADOP,
    DOPBDOP,
    clka,
    clkb,
    \addra[12] ,
    \addrb[12] ,
    addra,
    addrb);
  output [7:0]DOADO;
  output [7:0]DOBDO;
  output [0:0]DOPADOP;
  output [0:0]DOPBDOP;
  input clka;
  input clkb;
  input \addra[12] ;
  input \addrb[12] ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [7:0]DOADO;
  wire [7:0]DOBDO;
  wire [0:0]DOPADOP;
  wire [0:0]DOPBDOP;
  wire [11:0]addra;
  wire \addra[12] ;
  wire [11:0]addrb;
  wire \addrb[12] ;
  wire clka;
  wire clkb;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h82005DFE282AEBE6AFE33D908CB0D405F94E5FCCF4703E6EEC2830FCE995D4C1),
    .INITP_01(256'h87CA82EF160EBA72CC4ACA9ED1734F8F5CC0068B98D5DBC97AFFA41975C776A1),
    .INITP_02(256'h11102438442097ACA4AF0D2FE213514040C44940840D7874A638D8B793E055D9),
    .INITP_03(256'h8FAB25B6A88535FEE0D822C763132D2FECE7469D7610CD8FAEB6D627E6E44742),
    .INITP_04(256'hE3BD991B3D0D6379FB7AD7F2309C47F73F97963ECE7FA793579AA28502D5447E),
    .INITP_05(256'hACD8B19CE6A5F58F2A2C838000EE895D0C204B0823A46BFC4C29AC0BA41F4C19),
    .INITP_06(256'h64423FF97C7AEF976DDC3AE4FF78D5455426F492C98BF99F1F5514879467FEE7),
    .INITP_07(256'h648468D61B94209EFE3BE6C526375F7DC737351BBFB89898591AE830E1BDA511),
    .INITP_08(256'h9D246972D7B99B4F4D93509CEBD852F1C43E133B1010A76C4ED3B2EB58CF29B3),
    .INITP_09(256'hFD93EA01A724CEC85C559D5450C6F9054DBD5AE0A6A5B8990403FA2C095FAE70),
    .INITP_0A(256'h08E4ADC92DFBBCAF805CF79B3A13614050071828402328C997326E79747C927B),
    .INITP_0B(256'hBE487B6C2E31A2DB74B30D94BCB11423D4C21DEA5EECFBF55F9D939B68A12B0E),
    .INITP_0C(256'h37E8EA361073BC838E48E5FF4BD35C50F65ECCB4C357C311B28DD8BF46AD9BEB),
    .INITP_0D(256'h78E71214F931A29F230DD052B7E6EEE52C15CB9E09519DA4B7CEAB9E851A2469),
    .INITP_0E(256'h08AB2F2DFA6F4697F42D39C3B08C5F783A67357CBE519A7CF0B79110C934C1D5),
    .INITP_0F(256'h04C28968D60E4E430E1EBB9AE5C69A5BC1EF906059DF534CF0C5DC54A200E78A),
    .INIT_00(256'hFB0B06FD080A0EF2EEF305F8F50DF1FAE40B08E40E07F006F1FB000908F2ED13),
    .INIT_01(256'hF1F10B05EFF5FFF8F0EEF6F2FB0EF812F815FE05FDF2131712FB0304FF0111FF),
    .INIT_02(256'h07E7ECFAF9FD02F0EFF9FEFAF7FEF1FA0406EFF7FDEFFB03F903E7EEEFFFFCF9),
    .INIT_03(256'hF9EB0BE9F804EE0600F1F2EFF2FCF6F80CFA04F2EF0BE6EE01F701F403FCE808),
    .INIT_04(256'h2BE1E7E8E900D8020AF5FB1817EF020CFEF4160A07F8FCE9FF15E9EB010DF9CA),
    .INIT_05(256'h02E8F0ECEC11F4EBFB041C08FB06FEEE15F7F7F20A1EE012EA01F7000BEEF318),
    .INIT_06(256'h020EF2FDF30B09FFEBFB060807000A09FBF6F008F405F90E10F4FD1003010C03),
    .INIT_07(256'hF51F08F0EDF50AFBFFF00A06000021F009FFFEFD080501F0EB060002EFEC0601),
    .INIT_08(256'hEC0B0506040BFF02F8FBF7FC141116F72408121901FCF6EF07FDFD1215F5FA09),
    .INIT_09(256'hF0FC0D0DFCF6000AF31AF50D05000601F51DFFF5170E1008FD0003EC120802FB),
    .INIT_0A(256'hF3DDE12C1EF1FD0E01F203F9D40915FA1CE506090F0A0201E30C03EB03D4FADB),
    .INIT_0B(256'h1CDFF2041F0F33050920D6EB05F7EF0B140E03F204F61A03E102ECDD04E2DE20),
    .INIT_0C(256'hE9271100F9F6F5F601130206EB0009DFF10904F402EE0AFB02F30807F4F20B04),
    .INIT_0D(256'h01F9FDFDF40116F809F4FB1006FAF4FB06F00106F4D5F40619FFF2060114FDE3),
    .INIT_0E(256'hF605070900FE0610F5FD01F7040F07FD0AFDF604F903070018FA020A040C0EFF),
    .INIT_0F(256'h000EEEFFF7F7F811080B040506060504F809FE05F6FAF407FA060C03040A02F5),
    .INIT_10(256'hEF02FE0205F8090104F4FAF4F7FDFBFAE606FCEC05FDE704FA0300F11504F31A),
    .INIT_11(256'hF0F4F0FEF50705F0E30009EBFA0CFC07EA05FE0405EE11120A0A070EFEF11900),
    .INIT_12(256'h0301F701EEF210060108FADFF804FCF9E503FBEDFFF705050DF4FFFFF8020601),
    .INIT_13(256'hFD0BDD0801EE091906EBEB0D0A050FF1EFF70207FBF71CF2FF04FB0204040808),
    .INIT_14(256'hF81C08EBFC00FFF6EEFD07F703F5F9FBE9F2F3F7EC0704F202E50807F0FE06F8),
    .INIT_15(256'h0E0402F607F3F2FB00EEF90506FE04FE0705FE04F7FDF7F20A0209F1F108F6F7),
    .INIT_16(256'hFE1B10E9FFFD0313DFF9EB080AF50F0AF4EAEB02EB05F4F4F1EBFDFDF0FA0706),
    .INIT_17(256'hF60AFFF503E8EA04FCFC06FAEAFD0206F2F9FF18E4140CF113FA1EFEF2F9F3F4),
    .INIT_18(256'h0CCBDB23E3F605EA15EEF20EFC0C010A17F0F31E07F5FAEE1713FDEA0BF40FD4),
    .INIT_19(256'h11D9F8120A0212EA050C06DBF6FAEF08FBF1FC080BEEEA06F8FCE0F201D6F00E),
    .INIT_1A(256'h0205040607FF11FF000409F9040009F60FF20002080CFF05FCFBF7F900F8050C),
    .INIT_1B(256'h03FAFBFFFF00000DFD06FFF6F0040C0A00020700050416EF0104FFFC06ECF0FB),
    .INIT_1C(256'h14F30801E8E2F4FF12FB091D19070A0CF9DE2A1510FEF9E30A2208F3121CF7D6),
    .INIT_1D(256'h04F2FC0AEF0E04F5F21010F40805FCFD050AF603180DF229F4FCF4FFF9FCE6FD),
    .INIT_1E(256'h04F00019F1F80CFF04FCFF04FA0C010701FE22040418FFF5020E0DF80EFEF8F4),
    .INIT_1F(256'hEDF70B00F2DDEA0AFD03EDECF8FBFD01FD1AFAFE0CF60F1AFBF7F9030F07FEFF),
    .INIT_20(256'hEEF5FFF80001F0F6020103F8F7F4F9FCFFFDF6F904EFEC11F60CF7FDF00BFBFC),
    .INIT_21(256'h08F7FF0C14010CF8F70418F1F20CF5FBF7FCFE02F8F2F1100CFBF505F7F1F5FF),
    .INIT_22(256'h040CF1E8280108F7E916FBFFFFF2F3F0D8DFDFD6FFE3FEFBE5D20808DFE2E61D),
    .INIT_23(256'hF21615FEF5F3F70614E8E80803FFF0F207F206FCF90A1FEE000015F2E107D503),
    .INIT_24(256'h01E9F3F9FE06D6F71B030C010500EC13ECF717F607E70AE9131BF1FD03FAFAE1),
    .INIT_25(256'h08FEF5EEFEFEDFFA08F7F7120904F7EF1009FFED0F08FC12F506F0E8FF00F211),
    .INIT_26(256'hEB2326F0EAEE12F2C4FD00F6E3FE00D106F8E8FEF9170AF9FCCD2607EAF0EE08),
    .INIT_27(256'hFED600F4FBFAFD050E0DF20AFCF9132AF1000603DFE1F2E317FEFFF1E901F1F0),
    .INIT_28(256'hECFBFF1003061008F0EF10FADE05FCECFF1B01082107F800EDFD0122FEDCF51D),
    .INIT_29(256'hE5C41A08F6F60F1EFC14D9DDEFFAFE1DE812FCFC09DA11F6FB01F30308180EE4),
    .INIT_2A(256'hDC1A2AFEF2ED0BFCDAFAF3F9DDF710D703F6ECFC01140DE000D41F0DE7E6E2EF),
    .INIT_2B(256'h0ADE0AFC13FA0A120E23E503FBF50728E805F8FFDCDDFADF14FD0CF1E6F9FADA),
    .INIT_2C(256'hFB0BEAFF01060BFEFEEB1707E00DFBF1F20CFAED1B05F6FD02EA0B170AE0F309),
    .INIT_2D(256'hD9E7F9F2F1F1F50AFAEFE7E0F900F10CFE12FAFB06C50B0BE301E902FE0515FF),
    .INIT_2E(256'hF30FFDF9040118FFF5FD0803F00C09ECFFF6F2F211F706F311EDFF1108E6FC07),
    .INIT_2F(256'hE9FFFAE4E4FD0B0706EEEE0E1C0301EF0D1D03F5FEE600F9FE04F5E9070EF0F5),
    .INIT_30(256'hF70AF7F0EFF902FFE40BF1FF0F15FCF5F9E6F405D9F312F31FE80D1FFC091C07),
    .INIT_31(256'h0D1CF9EA09F2E71421FA010417F71A0D0711FF0AF1FFEDF5FDFA0DF6E12FF0F9),
    .INIT_32(256'h13FEFFEE0A00000218EB0411FA0DF304F60D05F602FB000EED0B010702FEF916),
    .INIT_33(256'hEFFC0AF7E818210EFDFF05FDF409F1FD0003F8F511010D01EC090918F80113FD),
    .INIT_34(256'hF300FEFDF9F6FFF0F617FEFBE7FBFFEFF6DEF9F702FA07F0F8E509F9FCF5E8E9),
    .INIT_35(256'h03F6040907E7FBFA0B01F707FD05030AF8FFFFF6FBF2FB02EFFE05E4F80AD7FC),
    .INIT_36(256'hEB03250BFA040CF6FCFBF3FEF3110BF007FEFE03F312F60719FA0EF9060EF3FB),
    .INIT_37(256'h070BFC0AFDECF903F51406E7F6FA0024EDFA04FCEC07FB1824FC0E12FCFEF5E8),
    .INIT_38(256'hE80514EEFCF6EF0EFFFDF90300EE140311FCF012EB0EF5FD0DF001F8F1FE05F2),
    .INIT_39(256'h0C16FE200FE2FEEFEC1809FDF7FAFF07F9EE0402F70300FE0E0407F6FEE7F5ED),
    .INIT_3A(256'hE7EA07250EF91B1D281206FEED2013111EFE0CF8FCF911051D1914F411E40AD9),
    .INIT_3B(256'hE5F1E5F9FA080205FF11EB05FDFBE307000FFAF201F5FA0DF801F6DF0C01D6EF),
    .INIT_3C(256'h02FDF41203FE0300F9F511FB100BF8FE1BFBFF020DF700FEF50AFFE914F6FFF8),
    .INIT_3D(256'hF8F0080705020306FA0EF9EDFF050510100BFAF7040F00FBFB0605F81608E21A),
    .INIT_3E(256'hF72106E7040C05F3FF1603F800F8FCF8EFF902E9F3F61106ECEC0C0FE4F0EF1E),
    .INIT_3F(256'hFCFF1CF6F406FA1A1BEEEE1B05FCFCFD15FA070006F6EEEB04060A10EC30EFED),
    .INIT_40(256'hF019FFE6DEFCEA16DA0DF91509F50206F6E0E50FF2F6100011F1FCDCF6110ADA),
    .INIT_41(256'hF802E5EFF305FDDDFA19100E15F801F5FFF70705C50BCDFAF302051304E702E3),
    .INIT_42(256'h2EF5F1F4FE01EDF417F7E9180AF3ED1607FA1BF8F1050404EC1EFEEF0A14EBF5),
    .INIT_43(256'h0200F0F70102EDF4F00212F6F402E70B00F90001FE00FA12F405FE14F8F10B07),
    .INIT_44(256'hF6080DE504FAFDFDF001F20106F3FE0FEEFEF0F5E7FC09F507D5FE0FE70F07FB),
    .INIT_45(256'h0E25FBF6FF07EF1104E4070C07FF16FE04F7FD07E6F7F9EA12FC08F4EC13FBFD),
    .INIT_46(256'h09030A02F5F3FC00FCF4F8F6FB0AF7FDEC0F09F5040BF00205F503F40EF3FEFE),
    .INIT_47(256'hF4F8F107F3F7F5FB0200F3F0FAFBFAFDF704FA01F8F806031100040E0800F802),
    .INIT_48(256'h27F4E6160AFA1515E3E20605011C14F512F7FE21FEF608F4F5F9F7E713FE1AEC),
    .INIT_49(256'hF3F601DDDCECEB001209F2E1FF01F2E02507F9F011220519F4F600E81EFFDE16),
    .INIT_4A(256'hF81207EA04F9FCE3FC120514D1F7EEEFDFED10E1FCE507F8F3F80008E7F7F406),
    .INIT_4B(256'h01EFF7FCFC04FDE501E5F7F8F9F1EFF0FEFEFF09FAD1F9FF0A03F108EA10ECD9),
    .INIT_4C(256'hFEF8F50B1306FBF806F00802EA06FDF4FFF909F515F8F5F5F3FFEEF505ECEBFF),
    .INIT_4D(256'hF7F2011206FC00FDF2FFF9F0F508F803FE0A06FB09E70904EF0608EDF6F8EEFF),
    .INIT_4E(256'hEFFA04FEE7F8FA1600F8ECFAFD1013EC04FAF0F6EE10FFEA04F5140301F502FD),
    .INIT_4F(256'hE701F7F703DAF209F21DF2F0F303F619FB15FBFFE9F40BF600FB06F40705F706),
    .INIT_50(256'hFDDFF20903F8DEFC1BFE0A0D0B15F7FD0A050208FAF2F5F915240AED200D09F4),
    .INIT_51(256'hFD03E4F1FC1A16EEE10B11EFE9FE021B0402FE0C0610F821E70A06020EF30E13),
    .INIT_52(256'hEBFCE3FD0BF905E621FA0806EDF9E6EAE21B03E814EA1801EC10FA27F2EDF909),
    .INIT_53(256'hF9E9FBEFFC1D25100FEDF9F90707F0F71300F5F311CAFD0B07F8F5FFFF051200),
    .INIT_54(256'hFA1CFFF30E0910F9F210120D0FF2DFEEDA09F9EC13EC0DFEEC03FA2AEDEFF6F7),
    .INIT_55(256'hFE0D11F5F91017122DF7FB10170511DDFF0CFB08FEFCF40D15FFEC0AFC0B0DF3),
    .INIT_56(256'h02F8F4050C02FF01F1F6FC0CF006FF0303F705000308FEF6EA01FEE715FEE905),
    .INIT_57(256'hF5F704FEFA03E50AF8F0FAEDF30706FDF80CF8F7FCF91203F802050D0BF5F9FD),
    .INIT_58(256'h091D04EFF9F001E9F902DBFEFEEAF5F2F11A06F4F304170FF6F61107E5EBEE07),
    .INIT_59(256'hFE0DF504160002211E03EFFE0EF9000A09FA07FAF8ED08FC1007F4FB05070DFA),
    .INIT_5A(256'hEBFEFA0FF712E611F317FEF7091113ED160FFC151606F509FA1106010DE5040A),
    .INIT_5B(256'hDBF3260CF3F412F2F317FC1D000510041718F9F40015FA02110201E511EAFEF9),
    .INIT_5C(256'hF1F5EA010AEE0A00F0F410F7EC1702EEECFD06F105EAF1F70EF1FCE404E901FC),
    .INIT_5D(256'hFAE2EA0AF9F8F0F4ED08EFE2EDFCF607FF0E08FDF6F21502FBF904EE0DFEF4FA),
    .INIT_5E(256'hF60AF90B17FC0516E4EDF5F903FE230E2904FA33EB0CFDF7F600080B23E823E6),
    .INIT_5F(256'hF314FDFB0BE30902130508EB0CFB1506EC010114151B100CDEFE1FE1FC030402),
    .INIT_60(256'hCAF20F0BDFFED8111403E3F7F60F08E70407EBFDF90316F908F529F9FAF510EA),
    .INIT_61(256'hDEF4F70802CBFBE7E628E3FDF9FCEC26E412FEFAE8EAF6ED0A08FCE904F2F9F1),
    .INIT_62(256'hCCD2EC36F3F50DFFF8EDF4FDE42101EC3516F11308F8F2FB1E05F4F708020FE3),
    .INIT_63(256'h0DE5F51706F005040909FDE400FCFFF5E10BFEF7FBE3FEFD0BFCF40122E9FA0C),
    .INIT_64(256'hFBFE0509EA08F8110BF20AEE12030604090C0B011214FA0DFD14FDF31B0BF0F7),
    .INIT_65(256'hF2F2FE0300F509F4EB0F0EFE0709FEF4030B01F3080C0B13EE0004FF01EBFB14),
    .INIT_66(256'hFB0C00ECF7F306F0E9F307FBEA05F9EDEDF2F0F3FDFDFAECF7DD06FCF1FBF2FC),
    .INIT_67(256'h00F1F6F0FAF70201F507FEFBFC07FE07E804FC04EDEE04F3ECFC00FBF8FE00F1),
    .INIT_68(256'hECF6EFFEFAF2FDFDF3FAF806EF06FCEF1AFFEA0A030AF8FD000709DEF603E7FF),
    .INIT_69(256'h0DE4DEE6EE1E01FFF81910FDF207FA1605EE04F7ED03F8EFFA091106F8E50504),
    .INIT_6A(256'h01EE04FD00F6F3F403F6F9F8EEE7F203FAF1F5F8F304F9F8DF09FBEEE8F5E7F3),
    .INIT_6B(256'h03EAFDFA05FBF6FFF915F2F3FB02E30804EEF8FDF3FDFAE3F1FAFAFDF7F3F204),
    .INIT_6C(256'hF9D8E9FF03FFEFFA1DF9230DEF02FCEB0EFC090B13F0F9FF011B0AFE07F914E8),
    .INIT_6D(256'h01F1FFFE031038E6EC050DEFE804F4050BE7FC0E0F01FE15E9FCFCED07EA0714),
    .INIT_6E(256'hE7ECE62824041EFF1B102706E80512FC3007FF131AF7F4FAE219FEF40FE5FBFD),
    .INIT_6F(256'hFAF1151A1BFF42090F1DE1FBFD03FB02F606060F25EB1CFED5F4EFF3F0EB04EB),
    .INIT_70(256'hD3051EEBF003EDFDE10EF7FBF8F7F1E3E805E0EBE5F9001000E202DCF0EFFC07),
    .INIT_71(256'h01E8F8EDEFE4E6F0FD15F905FA00FD08FCDC07FDDD19E2F30F0202FF090015E4),
    .INIT_72(256'hCFE3050609FB071E1D061AF4DC170BF7FA03FFF621DE06FF160BFAF703DE15EF),
    .INIT_73(256'hE0D8E8F9FD07F506EF17DFFE09FFDB08FC0DF8F3F9EEFD04FFF7F3D51210FAE6),
    .INIT_74(256'h0B01F7FDDDF504DEF0F0FAF8E9FAE1F8EE00F9EDFF00FAFEF90301FAF904E7F0),
    .INIT_75(256'h0C03F1E604FAFF04F4ED0DFA00030EF000FB02F50D01E5FEF602F802F5FB0519),
    .INIT_76(256'h0F0DEC0DFF0215EA00F70008F1F6ECF9FEEBFB02F70C0B05F80B03F5FBF0FDE0),
    .INIT_77(256'h1DECF8ED021102131C0509F002FEF71111F502F000F2FEF3F202ECEAFC0BEB20),
    .INIT_78(256'h10ECE4E204F5EE002BF2000518F40A2BFF0122FF00FF01FC062DF801090B0DEC),
    .INIT_79(256'h0808070A012E1EEEF0EA07FB0003D9EEFDE800080D0F0C18E809091DF8E01001),
    .INIT_7A(256'hF0FBFEFE090010EF0EEC0A0CD800F5EB1E0205020EF8F803FF09FCFBFAFD03F8),
    .INIT_7B(256'h0FFAFE0FFDFC1AFEFAF602E1EC09FFE7E912040A18D50E04EDFE07FBEEFDFB01),
    .INIT_7C(256'h03FC14EFEBF7F30AED04EBFBF1FD05F5FCF0F2FAE10601E510EB06EAE8EEFAF1),
    .INIT_7D(256'h09FCFB0201E3E2F0F213F7FDF4FDFE08090401FBDDF6FBFC08FFFFEEF6F9F3FC),
    .INIT_7E(256'hE00D130704EF180F07FD05F2F50D0AFF0A0E0808F0F503E70EF8FB0600EA0EF5),
    .INIT_7F(256'hF3F8F21005FEF6130607E9F21F06F90BFB0CFA0207D901F404F6F6F313F807ED),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],DOADO}),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],DOBDO}),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],DOPADOP}),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],DOPBDOP}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[12] ),
        .ENBWREN(\addrb[12] ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weightROM_blk_mem_gen_prim_wrapper_init__parameterized1
   (\douta[7] ,
    \doutb[7] ,
    \douta[8] ,
    \doutb[8] ,
    clka,
    clkb,
    \addra[13] ,
    \addrb[13] ,
    addra,
    addrb);
  output [7:0]\douta[7] ;
  output [7:0]\doutb[7] ;
  output [0:0]\douta[8] ;
  output [0:0]\doutb[8] ;
  input clka;
  input clkb;
  input \addra[13] ;
  input \addrb[13] ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire \addra[13] ;
  wire [11:0]addrb;
  wire \addrb[13] ;
  wire clka;
  wire clkb;
  wire [7:0]\douta[7] ;
  wire [0:0]\douta[8] ;
  wire [7:0]\doutb[7] ;
  wire [0:0]\doutb[8] ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[7] }),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[7] }),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[8] }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\doutb[8] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[13] ),
        .ENBWREN(\addrb[13] ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weightROM_blk_mem_gen_prim_wrapper_init__parameterized10
   (\douta[34] ,
    \doutb[34] ,
    \douta[35] ,
    \doutb[35] ,
    clka,
    clkb,
    \addra[13] ,
    \addrb[13] ,
    addra,
    addrb);
  output [7:0]\douta[34] ;
  output [7:0]\doutb[34] ;
  output [0:0]\douta[35] ;
  output [0:0]\doutb[35] ;
  input clka;
  input clkb;
  input \addra[13] ;
  input \addrb[13] ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire \addra[13] ;
  wire [11:0]addrb;
  wire \addrb[13] ;
  wire clka;
  wire clkb;
  wire [7:0]\douta[34] ;
  wire [0:0]\douta[35] ;
  wire [7:0]\doutb[34] ;
  wire [0:0]\doutb[35] ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hCCD906A9E89B177BA001DC50861E5CD8D9E642A80283F48CF43D30C613EF6D96),
    .INITP_01(256'h8335DD202053B0A766FC1B6B3CA4AD17A051FE399DD21B09CDA981FADDED9B0C),
    .INITP_02(256'hDA16CD2D9E020C2775A1A8ED86BE26CA73D8BADF1568DDE34077830170509D6D),
    .INITP_03(256'h9EF9DC04DAB088E8A653C41352877D963BAEA58D364A34E09C640FB14968DEFC),
    .INITP_04(256'hE85FAF2526612EFB8BB28B76F12FD5DF76CD54638CCBEC7898A0BC3DF1C9B3FF),
    .INITP_05(256'h792CA0D15271B1F11EF0F3DC1B64FE1B81B74B695EE02C1C01ED7273652D9F01),
    .INITP_06(256'h07335C83829765EAFF001B54E22361B4E16DEAFF541D422932986AA941A45878),
    .INITP_07(256'hCF8390B9F65D96D02DCB4D9C34898DC2285209EF507EE111DE7EB807C15F5551),
    .INITP_08(256'hFBAC74EC36884105C0FC82A502C72CABFA7D46EE401F2E6A9AA1E6EFD163CEE4),
    .INITP_09(256'h54B345CE849D0D6A3CB2DF8401FA6D0FE3BEDD49EB80C3188173B2169ACB4732),
    .INITP_0A(256'h8A9C7479C0D22F4C875A8CEE85571FACE6EDC87A4B39EE78665A32268AFC134B),
    .INITP_0B(256'hD6C0737099A446327E189AC8338540363F4992154141CC22D95038018A1E2ABD),
    .INITP_0C(256'h3472255804688F4D489E0BC81E2903D3231528AEA2EBC8DDDB5E43CC764CA85C),
    .INITP_0D(256'h5A3DDD924ABA90F4B33B511F75356A14064428BD0C3C162D8C2F8174FD84DAA7),
    .INITP_0E(256'h454FBD6A555CB6751BF35BA5EEB0B261C1FC4CF6BAB78D0F6C3EC59525621D67),
    .INITP_0F(256'h0C8740B8EEEA4CCB169F7A1CF3110A84CD49ED7E8F4A216D1707B0387FB4CCD9),
    .INIT_00(256'h821F5EA2A07E2120DD00C17FC1A0217EFF7D1D81BFBEC1BFDFBEBF9F207E5E3C),
    .INIT_01(256'h1E5F3E3EFF5E3FBDA1013E0061401DDFDFC2E01E40003EFEBE1FBDDC3E5D9B1F),
    .INIT_02(256'h5D2206C0A01F9E6281E0BDFF825F2201BF43DF83C002FFC000BF7F011E012121),
    .INIT_03(256'hA2020127433C7F40008203C13FA0C4C1DC1F809F5EFF61FF25007FC4BFFEC2BB),
    .INIT_04(256'hFEDDDF9F017F7E7F03209FA17D1F7DC0FE9EDE5E9E3CFEBFBFC2BC23BFC03D5F),
    .INIT_05(256'h019F7F227FBD9FBD1FFF20403E9FDEFD5E5EE0BC7FFCFEA0803E9DA05F3CFF3D),
    .INIT_06(256'hE07EFCBFBEE09E40401E1FBFE4C102BF41403FA160C13E9D5FDE9F5FE05F83BF),
    .INIT_07(256'hDFE1FF7DDF1EDCFC1FDE3FE07FE0815DBE5F40E160609EA07C8060BE617EE0E0),
    .INIT_08(256'h7F7F1CDFDF40C021BDFF41BF409F237F209F1E41A0017F9CFFFFDEC140C02220),
    .INIT_09(256'h7E7FA0C11C41A0FF60DF0000BF3FDFA0411EDF9FA11F7FDF3EA0E1C122FD0060),
    .INIT_0A(256'h3EFF5FBF00E1603F3F3F5F5F7EDE00FE3E005FFE607F3F1F5F3FE0413EA0BE20),
    .INIT_0B(256'hE1DE00FF41DFDF5FBF1FBFBF5F3F9FE0BE2060005FFF9F3EE0FFDF20FF81E040),
    .INIT_0C(256'hFCDE41BF7EA03C1E401F1D21FE9DBF017F3F41605E1F5F7DC02180C0BD3F9F7D),
    .INIT_0D(256'hC3A18061625CFE9F00FE81A0E180E17E1EDCC0407EFE9EBF0000DE5F7E9C3E9C),
    .INIT_0E(256'h7CDFE2A0E0823D402021A23E7DE25F1E4000617DA060BE9E80DE4060E15FDF42),
    .INIT_0F(256'h1FDDC33FC13B3F8000C0403EBFA1612281417F7FBF3DC120E2601F212000BEBE),
    .INIT_10(256'hA13CFDC3C19F4302013E81FE010262A1625F1FE121037E809CA01E1FC3215E3F),
    .INIT_11(256'h9FDFFF403F9F7E00FEFD829DFE5F8200C0DE00BEC3FF5FA2DD9FDFBE407C7F62),
    .INIT_12(256'h9E22E1810143A03FE08240FF3EBF7F801E3E5EBF03A0A0DFC0BEFE845F5EFD00),
    .INIT_13(256'h5DA241C3201AFFBF009E7F2180A0A4BF3F409F9FBF5CA2BD83005FDFE0229DFF),
    .INIT_14(256'h7F1D1D83A301615F839FE21DE0C181A102623FA181001F3F9EE31FE2A2010001),
    .INIT_15(256'h207E0041E27EC00061608040815FDF1F3F00DF3F827F60BF5F1FA11E61008100),
    .INIT_16(256'h398162DE41C1BC805D02BE9EBC1E5EBD3C3FDEFEFFDEFFE2419B5FBEBC401FFF),
    .INIT_17(256'hC0BE5FDFE09BFE1E00E0DDBF5F80A040401D5E7EFBFD40BBE3607F5EFFE07EDE),
    .INIT_18(256'hC05EA0DEDF403F9F00BE5D4020FF1F60C1DF40FF9EA05EDF1E60209F9E405F7E),
    .INIT_19(256'h2301FFE1617F3FDDBF1FA040408080C07F1F9F3F3EFF1EBE7FFF0000DF1DFF40),
    .INIT_1A(256'h99BDE1E09EBD1F9D3F7FDD1F5FBFA23F20FE9FA0DD3B7F001D203FC1E2FEFE1E),
    .INIT_1B(256'h82C05D83A3217E5EDC9F20BE3E9F3E5F5F40FFE0409EC0C2E1DF5F7D1D3A3E9D),
    .INIT_1C(256'h5EC2A15E7E3F1D9EDF217E20FF1EDF9C3D20FD409FDDC1FFDF1F00A05D3D62E0),
    .INIT_1D(256'h5F0060A0609F9FDF2201FD02C21FBFBE61007FC17D9DFE3F6140007FBF21407E),
    .INIT_1E(256'h5F0122041E9F40237CA2216020206261C1DF9DA39E62E382423FDE1FA1C25FDF),
    .INIT_1F(256'h3F63DE7EBF5D416043C3E2A3A3E0849F1F7DC0203C609E00A27EA2C1C0FF409F),
    .INIT_20(256'hE13FC05F1FDF7FFE203E20811F1F60C040E1009F00BFBF9F1FA1BE005F215E00),
    .INIT_21(256'h205F6040E040C000FEE0215F1EE01FA01E7F5FFFFF9EE0207F5F1F01BF20E17F),
    .INIT_22(256'h039F3C3E1D615F9FFF3C20E11E01416041A160C2C07FDF9D61FE40C17EC2C3FF),
    .INIT_23(256'hFF3CA29E40E03EFFDEBD7F3E7EDFDD3FE080003F9D5F7F5C3D80C10042A19F61),
    .INIT_24(256'h01E17B00DD1D0284DEC1609EFF82E2BDC03E9EBF01A11F1EA2FE3F801F7FC181),
    .INIT_25(256'hDD9D7D5C1D9F3E2600DFBD3F023F9F0003003F40017E61E01E7FBF7E21841C84),
    .INIT_26(256'h3D40A2FFBF417DBEA3C11EBEFEFE9DE0DD20BE00E0DDE05E60C0FF63FDFE5F5E),
    .INIT_27(256'h5EC01F43607ADF1E41DFDE611F80E160BE5EC0FFDF5DBE3DE3005EBE3F7FC03C),
    .INIT_28(256'hA2A1BE41DDBF613EE4C0E15E5BC0601DDFC3C27EE2E4419E3F2082647E002023),
    .INIT_29(256'hC160E3E0C08281C4013E3EA1A1A0C0C14101DF02A33B40DEDF1F9FC01FE304A3),
    .INIT_2A(256'h41FBE2FC20E0BB1EC181E0E2C13EBE60FF81C2E09F7E00DBFF81BFE15E215F80),
    .INIT_2B(256'h60FC82FF9FC0DF7EBE3E015FC1DF3E7E601DFF9DDE233F80C241DF624321FE3F),
    .INIT_2C(256'h9C3E209F8060BFDE019F3F1F1F7F61E0BF9EA17FA0601E029EA1C0E0815F7FBD),
    .INIT_2D(256'h02BEA0C28320017BFDA0DF1FFEC13EA0BE1E7F0040E0BE61605F5FDEDFDCDD7E),
    .INIT_2E(256'h5E5E417EA1223FBD3F9F1FDFE01E005FBF9EFF7FFF7F3E1F9EC0E19E1F1EBD40),
    .INIT_2F(256'h01002201E13FDF3E7D5FFF9F5FE03E817EBE60607F407F7F009FC0DD5E3FBFDE),
    .INIT_30(256'h80FD01217DA03FDE620340405EDD80C2C1A00180A01FC1BEA0A23F1F7E019F1F),
    .INIT_31(256'hE05EFE83E0E01F40A1FF43C1A01FA1E0229DBE7EC01EBF80225F1EA2403E817F),
    .INIT_32(256'h9E4061BD5EDF7FBF3DA0405FFC20BE7FFD5E9DBE1F9F41FF9F7C1F017D5F80FE),
    .INIT_33(256'h20A05EBFDE1EFF1E3E405E1F80BFE01F9F5EA0DF5EDCFFDDE2BF5FFE3E1F7D1D),
    .INIT_34(256'h1B5F419EE0403DC041A1FEA01D9D80A0FF1FDF0041FCE0FFE05E1EC2FD5F5E1E),
    .INIT_35(256'h1F5E8125A13DDFDC7FC01F5FDFC0DFBF7EBE7F60FE9A805EC1203DA01F1D3E1C),
    .INIT_36(256'hDF82FE9E3DE03D1F9FE2FE81C03E3F807FBFFF5F9FFF42A0215EBE9DFF5EA1FD),
    .INIT_37(256'h80409F00C0BEBF1E8260C022C1C0A120E05E7FE0FE409E80201F823F0040BEBE),
    .INIT_38(256'h3FC3E2DFDD209EBD5E024080BEFF7CFF3D207FBD1FC16001A01F813EDEA10080),
    .INIT_39(256'h3D9F7E9C7E9DBF20BF402060408123C2404020DFBEBFFF3D820040401E82BFE0),
    .INIT_3A(256'h64A120BF3FC064205C9DA25EA021A03B6080805F401E9E0140DDA181E13F4140),
    .INIT_3B(256'h9CFD1E9A3DA281A31FA07C7F201F5B6162819FBE018260C19D5FE2BDC1A49E64),
    .INIT_3C(256'hBE7F819F3F3FE07F9B803E605F9F403D407E1D1E5F5F6100809CC0007E3FC0C0),
    .INIT_3D(256'h7FC1205E3F3F6100C001FFE0222040FF815F20E01D7FFC5CC0C000BFDD625E9E),
    .INIT_3E(256'h5F40A05E0020C0009E5DA0BF3E60FEDF7CE0219DBF0120003DC08160DE3FDE81),
    .INIT_3F(256'h9EDE21FE7F01C043BF203E5E5DE0DEC2E0E03F2061E0C0BDDF8140846164E1E0),
    .INIT_40(256'hFD5FA2615FA09E0260E0FF80615F213F803F3E21601D6041A2207EFD00E060BE),
    .INIT_41(256'hC0219DC17F5E5DFE1F02427E7FFF80E1BF3EBFA09D81FDDFC260C180C21FA0DE),
    .INIT_42(256'hFA00E2E0E101407E3FA3813DDFBE5FDF609D9E9FC1BC223F007E40023D1FBC60),
    .INIT_43(256'h7EE002E301DDBF5E40401C83E25F1F805F7FE0BF5EBD5F9C83C05F3E3EA19D7F),
    .INIT_44(256'hE05F1E1E7EC1DE9E1E1CDF41229F3F4180FFE061DFA01EFFDE4161DD5FC080DF),
    .INIT_45(256'h21A221E1821F40FEDDE1E1217F401F7DFC61E0E080419F9F5F80405D7E1DDF40),
    .INIT_46(256'h3F43010020C0005E7EC0A0E09D9FDC613EDF1FFD40C1C1015FDFC0C21F403E42),
    .INIT_47(256'hDF7F9F1E7EFE4221019EE0A061BFC01F1D011FBFBF7E827DC03F3F421EA38000),
    .INIT_48(256'h7CBF8303C0DF403F44E01F1FBD203EE0C120439E3F9FA2607E449E01C1207EBD),
    .INIT_49(256'h60DF9CA341C0FDC0BFE5A03F5F9FBFC0BF019F5DA13B1EA183C05C41BF1F611D),
    .INIT_4A(256'hA1A0C01D3EFF5F1D1FDDFEE13EFF5DFCFE3E3EBC1C20C05EBD5EE2015E9D1DDF),
    .INIT_4B(256'h6100DDFE9FC1A281003E9EFEC0C0DE3FFD9E3F9F9E7E1D1E5F209DC13C5F9FE0),
    .INIT_4C(256'hBEFE8020C17F803FA0BFC01F3E5F3EBEBEDFA05FC0BE3F207FE1A19EC1C07D5F),
    .INIT_4D(256'hE13E3FC121DFC09F5EA11FBF9FA09EDFFD3F3FE0BF7F9FFFDEA07E20FEBF3FBE),
    .INIT_4E(256'hC09FC17FC1BE1D1FC2C25FA4C1E05D61DEC042603F1E01BEA143A080E07F5FA0),
    .INIT_4F(256'h00829E62BF81E11F7E41C2BFFFDF3EDEBF40601F204162C1BF9F80027FFF807F),
    .INIT_50(256'h8102A0C01F5EBEA0E2E24103BE1F4042003D42209B1D621FDFC0A181E02061BE),
    .INIT_51(256'h3F3FC0C03FA0809F5FC1A040805FBD4240C1BFFFDF3FDE61609FFFE15FA29EBE),
    .INIT_52(256'hDD9E219F001FFE7E1FA0BE5F9F7EDF7F80401E9EFE3FA040015FFFFD5E81BE7F),
    .INIT_53(256'h609F1FE1823E6160C102403EFFE17F80DE805F7F9F1FBFFFC1809F80FFBEBF40),
    .INIT_54(256'h219CBEA09FBCC180FD1C9FFE9F4282BE41BEDE809E7C1D1EFF209F9DC01F9F9F),
    .INIT_55(256'hBFFCFFDF9EA39F40BE2040FC9C7F9AFE0141BF9D81E0BD03FE6061FD5F9DDEA2),
    .INIT_56(256'h9F5F3F7F81DFDEFCA11E7F21DD007D9F822182209FDC9F62DDC140E06020DDDE),
    .INIT_57(256'hC21FDFC2C260A11EDEA1E0DC1EE0DB7F3C0080BF611E6121A13FBDDFFD7CBE80),
    .INIT_58(256'hE2FCE042C18062C19EDFC2209F41E342FF5D0182C2BE7DBFBF61604020815EFF),
    .INIT_59(256'hBD8022211E7F7DFF001F629E007FBF807E41801E01E283431E5F20E0001FBC81),
    .INIT_5A(256'h7F62E07E807F60821E02E1C123E103FE419FBE42DF00C11E213F20A03EFF441F),
    .INIT_5B(256'h7EE33E7EBEDE7EBF42E15F83C260C17E81601F7F80823F9E80203F3F02403FBF),
    .INIT_5C(256'h9EA13FBE013F4040A061C15FDD815F7C7FC09D7D205FA1A140BEDD9F7E5EFF42),
    .INIT_5D(256'h3EFE5FFF9EC1E42260FD5EFF7FA022C001DFFF7FDFFCA19E012040C0C023FF00),
    .INIT_5E(256'h6081A0223F004140BDC26020DE6022A162C03F01BFE1E1623E01E0BE21A1A11F),
    .INIT_5F(256'hFFDD60BF20DFBE20E162FF80A0C0BF63011E9FDDBFDE201F824060E1E09E60C1),
    .INIT_60(256'hBD6100FF1E5FBDE19D039FE041DF405DC0419D20A03E40C0E0BEBF1EDD7C20BF),
    .INIT_61(256'hDF1F3FBF1FFF5FDD21C13EE1A2607F7E213F80BFFFA2DD9D61E03F3F015E5F5F),
    .INIT_62(256'h5EA10060FFC03F209FC29E40A32100DD01DFFBDFFE41A15FA02021FE7F1D219F),
    .INIT_63(256'h7D6280FC7E9EA1FFE1A0FEE2C2DFA0C0E2805F007DC21FE06060409F3FE0E01E),
    .INIT_64(256'hA1DDFFA001BE7E3EDF9E00822421DFDE9FC0819FDFDF9EA0FF0362BE4240A0A0),
    .INIT_65(256'h1E9F207E1FA2C05E1E7F60BBFE5FFDBF5E017F5FA083BF625E405FFEFF1EDF80),
    .INIT_66(256'h5E7F207FA10061FD605E40211D00DDBFDF0000A09F9C9D9F9DE0407E3FBFBE1E),
    .INIT_67(256'h5F7CE1C200209FFF3F005F9D5E1FDCFFFE807FBEDE1E0040413FBDA09FFFDFDF),
    .INIT_68(256'h41803E00005FBFA13F5F5FE0C09FE1A060FF7E21FF807F9F5F7FC09F1FC09F3F),
    .INIT_69(256'h00001F1FA01F1D0060405FC0A15F3FC0BFC09F5F9F815E5FDFBF216041DF1FC1),
    .INIT_6A(256'h81DFDEA1BF1F6042BEDE23608140A482C09E61C2A31FBD7F40415F601E6242BE),
    .INIT_6B(256'hBE7F62E11FFDDC9D001F837E20C0C2A100809FC1E002E1C180801FC0E07B801F),
    .INIT_6C(256'hDE0120405F40FE207F617FC0813E21DD803FDD6021DF3FA0E0FD7F1E7E1D3F7E),
    .INIT_6D(256'h6041A0DCE01FE1DD9F813E81427F9FBFE03EA0209E83FEFDC07FE29FC1BE1F5E),
    .INIT_6E(256'h5F627FE140414300DF7EA07DDB40BE203CA2A09F1F024062BD1CC0E07F1FBE02),
    .INIT_6F(256'h7D7EE0C0BE01004260FEDF809F207FC01F60205FC01D63FFC1603E82204323E1),
    .INIT_70(256'h5D80829C027FBD3F7D80BE8041BE3F5E207F5BBF5FFD3D805F7DFFE1BE1FBFFF),
    .INIT_71(256'h812120DF622222FCFDE2001FBFDFDCA0BF7EA1E07DA1E19EC000615E601FFF20),
    .INIT_72(256'h9F5D61FF9F1EDE00A38040804021E2FD60C120401F7C807F5F7F613EA07EE05F),
    .INIT_73(256'h9F7C1D3F5FA21E9DBF427EBD1D40FBDF5EE140DE80E0DF817F7FA040A1FE1F01),
    .INIT_74(256'h7DC0C23D00DF5EC0C5620000FE1FFEBF7F3E603F9FFEFF0000815E623E3E3F20),
    .INIT_75(256'h61E01F02E05F415FC120DE018081BF9F203E80803F9E5F3EC4DF3D2100DFBFFB),
    .INIT_76(256'hDDBC009E5FC13CBD813E1E011E9F7EA11EC03F7F00601EFF8181DE009F621E80),
    .INIT_77(256'h4200204202DE9E81C03E62DEBE4061DE5FDE1FDE7EDF807F61FF40C27F3F415D),
    .INIT_78(256'h1FBE415DA020DFBEA2C0BEA19C7E5BDF7E9FBE3D9D1E5FA1DDE080C15C3E3F7F),
    .INIT_79(256'hA17E5F6081C0C13E4020FE3E1E001E00BE9D5FDF7DDC819EE3C0DCDF7D5E7EBD),
    .INIT_7A(256'h5EBE7E5FE05DDF9E1C9C3DA09E01DF61DFFD3F5F5DE15F3FBD9F7EBE413FBD1D),
    .INIT_7B(256'h01FD9F80A1E15F203EDC201C7CE01EDF1E0000E060DDFEC15E203DFE7D5D3FFD),
    .INIT_7C(256'h7F1C02A15F5F1EBE4280BF61DF009FA123DF4122FF80DFBE4142A0BD61E0C07C),
    .INIT_7D(256'h805FFDE3009C5EBD9D81C2FF7FE0BF81FDBF3F60219E7F20C0BFA01FA29C81FF),
    .INIT_7E(256'hC03F41E1DF1F3DBF24A242609C801DA0BF6021DF62FEA1FF20DF9F8001A05D9F),
    .INIT_7F(256'h5FDE2042FFA0A2C2A13F5F80FF40BF1F405D001E81BDC0FFA0E060C23E4100E1),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[34] }),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[34] }),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[35] }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\doutb[35] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[13] ),
        .ENBWREN(\addrb[13] ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weightROM_blk_mem_gen_prim_wrapper_init__parameterized11
   (\douta[34] ,
    \doutb[34] ,
    \douta[35] ,
    \doutb[35] ,
    clka,
    clkb,
    \addra[12] ,
    \addrb[12] ,
    addra,
    addrb);
  output [7:0]\douta[34] ;
  output [7:0]\doutb[34] ;
  output [0:0]\douta[35] ;
  output [0:0]\doutb[35] ;
  input clka;
  input clkb;
  input \addra[12] ;
  input \addrb[12] ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire \addra[12] ;
  wire [11:0]addrb;
  wire \addrb[12] ;
  wire clka;
  wire clkb;
  wire [7:0]\douta[34] ;
  wire [0:0]\douta[35] ;
  wire [7:0]\doutb[34] ;
  wire [0:0]\doutb[35] ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h5819D3C4A1226226E1E01B74C0C31B005DF1B693FBA0B4A41EA02932D88917ED),
    .INITP_01(256'h3FF45B57680C3ADDF32865D11E2E40C8A49885A87DC7BC51B59C9546782A7931),
    .INITP_02(256'h59D1A93A8C1A20A46D772EA24BE26BD38119E2D5DD375904D390C176860E080C),
    .INITP_03(256'hF572EC0E3DB858DB7812ABCF2BBF87140D50831FC8039461542FBD7178A5DF2F),
    .INITP_04(256'h655FE30F94F1D47F319D2D98DA532FC0C71780C2F7EC94DE9000C388DC054BA5),
    .INITP_05(256'h7CCBF070DE41A1D5FB6C38D4DBA618A7E9012413E93B46CBD725ED98525DCA80),
    .INITP_06(256'hD0D4A547480C86DAE3E7695B58B34BC47B55649A022A109DE1B24140633F8E4F),
    .INITP_07(256'hF87FDB3A91280D620057722C9F297B3F2A19636A359EC739AB0C3602939FC39B),
    .INITP_08(256'h4E3562E65269C8D549E45CB1C120013C2004B1611A13E24463D9D8DB33D572F5),
    .INITP_09(256'hAF5A49158DD12E9479A54507B7375F541B601257E0EE78593F8B22BB746F9E5A),
    .INITP_0A(256'hB7357D00C05E9F270977386FE79BACB7B8382B0766AD2AAF8BC2AEF9A54E26FC),
    .INITP_0B(256'h737ADDCD1B0EF6AA4C349F9AD8C1F9778DF9A77F1E5E7E0D2594091A40531C5F),
    .INITP_0C(256'h57433BDAA8103007F154AF112B32C6506107BEA157504F2BA614A0450D178DFA),
    .INITP_0D(256'h5A757A25A8E78E1CC66DA90FBFD501F4F78FC62B8E1064149B244C88C7F09B6B),
    .INITP_0E(256'hB85E752B5CA71B212E6333E7546846236F5A4D3197BD6AC361DB442B2EE9B766),
    .INITP_0F(256'hA436AC1F1A83332AC6324AC187CAA64ECBA13DDB948560C9FCE084D2B87BC4AA),
    .INIT_00(256'hC1027E20DF5F20235C01413F610124E140BBDF240104A19D62FEC08221C0C3FD),
    .INIT_01(256'h00039F805F9ADCDE231FBFC0C140A300FFA2404180DE827F1DA0FFBD20C0FD02),
    .INIT_02(256'hBDDEC15F809EDEDE003DFF3F5A00BE9EE0E221807E5D7D405EBE7F5E7E5F3F7D),
    .INIT_03(256'h807C9E42E26061BE3BA2A15E5DDF5BA0BDA160DEFEBB5E61815FFE9FE0FDC07F),
    .INIT_04(256'h663CBF7E1B005FFEBEFDE0DF20209F3D9D0240C0C0E01FBCC2DF611E9D84225D),
    .INIT_05(256'h1FBD5D7EDE01BEA0FE4221FCBE003A3FFE1F9EFEFF621E9DBF1F5DC3E25EC0A1),
    .INIT_06(256'h3C7F805DE1E15EBF80C1007FFEDE5D5FFDC21D9E02FFE0C2E09EBEE39EDF80C2),
    .INIT_07(256'h021F4001C0803DA160DD009FBF7FA29F9E3C7F3E7E7DDF5D44E0BE039F2220BC),
    .INIT_08(256'h7F22BF41BF2140C01D22229D3C7F5DDFDC41BE1D63A2E1417F9EBF3D3F9C0001),
    .INIT_09(256'hFD7D821FDE1D3FC1C03F3CA0415F23C041E0BE215F5D837CE0E0FEFF4184E0A0),
    .INIT_0A(256'h7E9D60BF419FFD20001EA2207E82609FC1201FC1609EFD4120BFFF9F617F60DD),
    .INIT_0B(256'hA21E20A1C040FF1D1FE11EBC3E60FD3D5FA2BFFD2020FE60A05FA13C809E5CDF),
    .INIT_0C(256'h6123C260410163E244606141821FA3FFE09F9FBFFE3F0140601FE26160C241E2),
    .INIT_0D(256'hFDC21F7EDE4161E2E161A18342DF00C1C0DF1F2061C0E181FEBEA020FF812021),
    .INIT_0E(256'hE05F3F81E121A201805F009E60212140FF011F3F00003FC11F61C0E1815F9D02),
    .INIT_0F(256'h5E60C2805FC28062415E003F9E00A0FFE040DFFEA09E02C19EE0E0212022C09F),
    .INIT_10(256'h2280DFE1DE2060E19EC0010063A1A2C09FFD20240023A11D409FDFC1C1C0837C),
    .INIT_11(256'hFF611E60801ADB3DE29E40E0FF2021C05FA31F40A041C11F9D007F7DE07F9C41),
    .INIT_12(256'hDF22DE80A0C0629F225F7EBDC1BF1F004162DFE0BE0002818020BFFE81C1E07E),
    .INIT_13(256'h7FC23D3E60209EC1003EE08262C0403D7F60207EA142DFA080DFA18001BC4080),
    .INIT_14(256'hFF1E5E41815FDF9F9FBE1E7F5FFEDFFF7F603F7E20809FE07DDE207F5F7E5E82),
    .INIT_15(256'h225E63C1808000C09E40DFBDFE00FE807F60BE80801E821FDD80402040A01FDF),
    .INIT_16(256'hC081BDA03E40BE9EA23F5E1F804040A17EDE20FF7EA1E1DD21620121804061FE),
    .INIT_17(256'h6102BF3FA0DFBD1EE2DE1F42E11F417E21BF1FC1C03EBF1FFDC07F7FBEC11E9E),
    .INIT_18(256'h41FB3F3D2160DF7F011DE003A39EFD80809FE1E01F3EBD9D3F81814060801E81),
    .INIT_19(256'hE0C341209D01403FDD7F80BFDF007D5E5D013FA0814421C31F00618040DFBE61),
    .INIT_1A(256'h5E22013CDFC0FF1F00809F61DEDF5C5EBB807D9D00FE3E1FFE9DE0419CFE1D80),
    .INIT_1B(256'h3FE1DC5DDF7C9FDE9EDE1DA06020207FBEFDDFDFFFFD20FCE17FDF41BDC0805E),
    .INIT_1C(256'h447F3DC01DA01F7F9D7C418061413FBC3EA0825F2383DFDFFE9F007D9F003D02),
    .INIT_1D(256'h1E5E815C3D6160601D5E1D5B5D609DE101A220BE2143C0019EFF9DC281004161),
    .INIT_1E(256'h9F81A0BDDF5F40A17BA0E1608020413EFEBEFF201F7F607DE07C3EC05D5EA0C0),
    .INIT_1F(256'hFF619FBFBDC1406181A0FD82C05F42C0205FDF40DE1FFEBC5EE0FFFF8002BDC0),
    .INIT_20(256'h5E00209FA01E9F5FE0E1BDA07E1F1F2040A15F5E5FFFFFC1C1213F5EFE601F5F),
    .INIT_21(256'h43601F00823FE1808140C100DFA06000C03E9FA0DE1E9FBF80A0809F3F809FC0),
    .INIT_22(256'h9B4023FFFF201DBF415FDEDFBD805F7D603E7F7D80BC7E627F1F9E439EBE1D00),
    .INIT_23(256'h607F4020803E3E3DFEC3FF207F7FE0A17FDFA0FF9DC2DE1F60E1DF407E007C9D),
    .INIT_24(256'hA0DE22401F5F61A09E5E019F62214060C081BFE1A0DF1F9F419F5F3E41A2E15E),
    .INIT_25(256'hFFBF9F001FA1BE1D9E7FA2A1DEA01F3FFFA0C000E002C121C1FF809F019E9F41),
    .INIT_26(256'h7E4242DF3DFEE0DD9B5F5EDF7DBCFE7B5DFEFE1EC0C3BFBF80DDC122DC5DBD00),
    .INIT_27(256'h029AE1405FBC81C102DE1BFEBFDFC2DF6041E07FDCFE5F1D20A0001EBD439EDD),
    .INIT_28(256'h3E3F9FA0FF7FE080DD209F7F3D1F9F009EBC9FDE3F637F9F201EFD5E1EC19F7E),
    .INIT_29(256'h9F7BFE9FE05DFC3F3FFE5FFE3EBF8241FFFDDF00DD5E3D1DC1C05E1D9F7F5D1E),
    .INIT_2A(256'hA0E080DE3D9D403E1E017F7F9F5D3D5CFDFCC0FE00E222DEDFFEFFE11C3D1D60),
    .INIT_2B(256'h001EA29C7FFC8061635DFC9F601F207F40DF3FFF5EA0BD7D6080FF3E1D22BE1E),
    .INIT_2C(256'hC1815C9F424063A35FA0C3E1E2436420019C80A481015F4181FFC05FA0E041A1),
    .INIT_2D(256'h3E82229CFD605E81E13DFF6340BFE14000C060C0226342403E21807D423FBC62),
    .INIT_2E(256'h81C0BE01C02022E1BF61C2601EC23F5D9E407F9FC02100615EFF3F9EFEA1FEE2),
    .INIT_2F(256'h3D5F1F3D9D81DFE481FF3F82A11F826000E1FFDFA19FC19FA0DFDFA1C0A17EC1),
    .INIT_30(256'h5F615D80A1A18320607F7E9BA0FEC1819F8360FD1E41A0229DC0A2407FE09E47),
    .INIT_31(256'h013E64E100E2E3C3A01F615EDD9F1F627E3F5F60A1C1FEDEFE7FFF042005E300),
    .INIT_32(256'h2301609F7F1F80005E7E60A08180C03E3F401FFF7EC0C0A102009FBE2080A1C1),
    .INIT_33(256'h7F243DFE206142A17E5DA1E100FFC2FFA1C280235FE2C020FF0042BF1F5EA020),
    .INIT_34(256'h5D2221DE00BF5F5FDC02C0607E7FBF5CFD7E1E1EDF1B80209F3CA03FBC9EBE7E),
    .INIT_35(256'hBFFE5F80C07E021FFF7F7E9F60DFFF1FBF5EDF7F1CDEFF3FE31F409E80A09DBE),
    .INIT_36(256'h9DA4A240E2206162A0643E3F433E22A082C2FD80C080A3A4E0409E411E808064),
    .INIT_37(256'h0064FFC15F3D21008261FF25C39FE5BF2260E05FDE219FDE4320010300C0807E),
    .INIT_38(256'hFC1D80DFFF3E1FFF40003F3FBC3EBFA15E7F9EBF22407EFFFF007E60BF7F7D9E),
    .INIT_39(256'h409DFF62411FE07F1EA0C09DDE1F4020E13DC0DFFEDEC15E6020808000BDDF9E),
    .INIT_3A(256'hE2E1FD40A39F22E2BF5F83FF1D02415B02C021BD823E8163FFFEC0A0008061C0),
    .INIT_3B(256'h7CFE9FBB5E868561DE5F5CBE22005D3EE4E23FE0A1A1DF421D3F803C401F3F85),
    .INIT_3C(256'hFF429F5E7F00A0FF7C0100801B409A9FBB403DB9C15F5E439E7CC21F5C3D5EFF),
    .INIT_3D(256'h3EDE403DFD9FDF41DF3FDCDF9E5FDF607E21E060BE3C033F83603D5F3CE23D40),
    .INIT_3E(256'hFEE14340003F00615E40DFA01EA09F3C5EDE7DDEBF1EDEA0DFDDA0E1BEBFC1FF),
    .INIT_3F(256'h9F7E817EFF3F01601E1EBEDF9FFFDF4260DF3FBE1E7D414002BF5FBFFF5EDD3E),
    .INIT_40(256'h61607EE0C3C10261027F2100C0BF21C000DEE000C09F00A0FF22A1001FDE0280),
    .INIT_41(256'h5FE1805DDDA1BFA0A17F5C6040DFDD1D3EDF00FFE2A020007E1F0020C0FF2000),
    .INIT_42(256'h811FBEDEC05E60BF1F60BE207FE09EE0DF1F40003F3DBF7EE05F7E1F5EE0615F),
    .INIT_43(256'hE0DFFF5FDF415FFFE0DF9E81DFFFBE7EFF1D60C09E80BDBF1F20DF21809FDF7F),
    .INIT_44(256'h5F7DA0017FA09FE0A2FDDD80BF5E015F01606140A02260E11E62FD61DFE0FF01),
    .INIT_45(256'h419FE1812161DF037FE4C2BEBE7F21A0C1BF1FDF6040BE1F80E0FFE20061E15C),
    .INIT_46(256'h61C0DE019FC02000A09FC1A141C020011E9DE0C0DF81A2DD1F808061027F411E),
    .INIT_47(256'h6041E0DF7E1D7E1F027F208061BFC2FEE0E12061E13EA27F9CDF5EDF9FE05FC1),
    .INIT_48(256'hDE3EDFA2637E9FDF1EDCC3FE5FE2DF7D9E41E1DF64BF7FDFE01F3DFE809F1E02),
    .INIT_49(256'h1F7BFE1F3E41A1A0006061FD9F3E7D7DDB43DF9F029C02205EC0609F02612081),
    .INIT_4A(256'h7E62624001C0A1C1A1636040035E61BE603FDF809F5F8401C1E022627D412301),
    .INIT_4B(256'h9F85FF5FDFE0C0C0E0E062622060426140002081C0609FE14140A15FDDE2413E),
    .INIT_4C(256'h7DA17F9E1E1FBFDE1EE1C0A07DDE3E5EDCBEFD5E7FDEE29F007F3F803E7F3FE0),
    .INIT_4D(256'h5F7F3D1FDDDEBF9FC01F1FA2C11F21BE7E9F3FFF3D7C809DA09FFF9F7DA01DBF),
    .INIT_4E(256'h00E33A3F7E1F42A07D1E415F5FDF64DEE2BEDF623FFF7F3FFF3D1FBF41DC615D),
    .INIT_4F(256'h9F81435F5F8361A1C1FDBDE0C3205FBD433F7FFF6060DF00DE80011C407FFD22),
    .INIT_50(256'h619DDE40C1DFE01EC19F0242607E7D5F1C1E217CFFFD60FFDEE22061FF5E9DE2),
    .INIT_51(256'h9E3F001E1EDF1EFDFF607E7D7E003CFEFC3F40BE8060DEE07E5F80A25EC100C0),
    .INIT_52(256'h816060641E4083009FBD41DEBF20217F005EE2427F3CBDE05E21DE5DE0DF3E3D),
    .INIT_53(256'hFF3C20403EDF3BDF1DC13E1E20003DE17F01003F42A1E1213FFF9FDFE13BA0C1),
    .INIT_54(256'hC1C2428101E162E21DE0A01F2160414181FF1E62DF7F3FC21F40C0DFFF20E11F),
    .INIT_55(256'hBF5F01DFBF9D5E9F40A240202040BE82205E20BFDF409F9D62DF1F401FFC805F),
    .INIT_56(256'h1FC3C01C5E409F817C80FEC16280DF5F9C3FDFE0BF5FA11FA15EFF405BBE03C0),
    .INIT_57(256'h61425F3E9FFD1F3EE1BFDE4201DF823E6180E022BFA1FEDCBFFF5FDE80A05F3D),
    .INIT_58(256'h4020BDA08020C141E0811E00E1FEA100BFBF1F3F5E3E9F613F7F401EC0436061),
    .INIT_59(256'hDFA15F4020C27F43BF5F012281DFE11E4040C10060A36240FF5F20427FA05E80),
    .INIT_5A(256'h7F419D7D00E1DEA0BE8141DE8043407E9EA1BFC1C19C201E43FD2042DF5F2280),
    .INIT_5B(256'hFF9FE2FEE03EFFA01F1F3FE080A0FDE0E0631F60E022C15F5F1FC1BD62022082),
    .INIT_5C(256'h229E5F5E9FFD20E1607D811F9E81E27F61BE814100429F1F9FDE5F7EC020FE7F),
    .INIT_5D(256'hFF7E811E3EA03E1FDF7F7E1EBE415E3DE120A080C15FC2DF1D7FBE9F409D1EA2),
    .INIT_5E(256'hBD607FE0C11F9FE0E0409EBE7E42A09EE0A0633EA000A05F5C61807F61407DE4),
    .INIT_5F(256'hA11E0240A183045F2102FEFE1F203EA07E63DF3F6240407EFD5FA1BF7E054240),
    .INIT_60(256'hE3619BBDC181A5FF1A6062BD5E21823D60DD7E1EE03F0061DF5D1FDEA1FDBE20),
    .INIT_61(256'h3D81A2981D036063A07CFE9FA1001CDFC24240804281BE20DC5FE1DB7FE49BA6),
    .INIT_62(256'hE040BD5EFF0040E1201F7EA2A2BE5C4480BF1E403EFE20803E000142A0C10180),
    .INIT_63(256'hBD41DFFF5E20BD41BEDE40C201E11F9FE0BEBF20011FDF5FBEE0DF80FF201F40),
    .INIT_64(256'h00619C80FF1FC15E7C1DDFFDA020417FFF5EBEE11EC0C11C5DFDDDBF1FFDC2DD),
    .INIT_65(256'hA0BFFDFEFD3C5DFFC11D9D9EC0607F7EC1BF40DFC09E1E5E5D1FDC1CE07E1FC3),
    .INIT_66(256'h40201FDE9E3FE0DFFEFF7F809FDF5D9E7D3E1E1DFE20013D207EC19EBE3EBEC0),
    .INIT_67(256'hDF1FA01FFFBD1F80C2A0BDFFE0DF5FDE5FDF9FDF5F7EBFDE6020A0FFFE011FDD),
    .INIT_68(256'h9D7CC43DE05FFD5D247E21E141DEDCBDBE4341E0627C80FE20811E225EDEFE7F),
    .INIT_69(256'hC13E3D415E02DEBD80C03FBDFF805A40DCBF1F3E9F607F1EA160FF4341DD43DF),
    .INIT_6A(256'hBEBF1F1E5FE05EFFDF1FDE9F5F9F9F7F3F5DFF5F9E3D9E5E21DF5F9E7D1D803D),
    .INIT_6B(256'h83C01EBF619F3E7EBE419EC09FBE3EBF9FDF6040BC1DFDFE60C03EBDBF9EBCDF),
    .INIT_6C(256'h405C6140827E5E1E411F80E240E05FC040606200BFDEDFC0E0A28040E35E7E5F),
    .INIT_6D(256'h60DE9F811F42811EBEA25DFD5E9FFB7EFE5F9EDE02A0BE62808020205FDDDF40),
    .INIT_6E(256'hDCC03C9F005F7E814240A0FF7F61E1405FE0FE60A1609F2080405F615EE09E60),
    .INIT_6F(256'hA0026260829EC11EA13F20200180A2FC1FDDE0005F5E9DDF5D5F40BBFD7F3F1D),
    .INIT_70(256'h9FFE3CDFA1405FE03D7EBE62C3805FBF3FBFFD00A0805EDF03207E5C035EE5DD),
    .INIT_71(256'hE162FF203FA1E13EC04100DE7E5FE0DE40DE4120BDC5E182DC5FE21D831F607F),
    .INIT_72(256'h46211F0102204560FD7D635F002162DBE13F21BF40FF7F80BD1F80E2C25EBFC0),
    .INIT_73(256'hFC7F00785B02C582217F1C9E2000DC5FA2A2E17F61E2C1C25D7EE25DC1611DC6),
    .INIT_74(256'hE0C0FF809EBF7F7EE0205D21A11B3D5EFFDFC03FDC3EC17F9CA05F3F3DDDDFBF),
    .INIT_75(256'h00BE62A18040E19FC341DF7F00A07D80A0BDFFBD5EFE7EBFA39F1E61A07DE0FF),
    .INIT_76(256'hFE5E43DEE061BE9E23009DC0DC1D5AFD5E60BFBC7D9C7FC17D9F1F423C5CFC5D),
    .INIT_77(256'h60DE5C01A0FD7F9DBEE1DE9F3F00DCE19C3B3F1F9EDCFD3EA59E3D417D3DDF9D),
    .INIT_78(256'h84BC9A00FF5BA2E17F5D61DE3D03415FE29D617F3F005EBCFFC33FDCA3239EC0),
    .INIT_79(256'h3F1CBDFFBD26827FFEBF5F3D7E601EC043FF1FE1E1001F42F9FF21DD60DCDFC4),
    .INIT_7A(256'h5C21BF217E603FC1FF203FE0E0C12180BFFFC1FE3FDEC0811F5F3D20E0FF7D00),
    .INIT_7B(256'h3EC0DE9F9E2040BEFF813F60A160BFDFA021BF60E09C5EA09F61605F3FFFDE9E),
    .INIT_7C(256'h3F00201F4000A040DF007F209F80FEBE7E9EBE5F603D00403F3D9E20BD9EDF3F),
    .INIT_7D(256'h2000DEA1DFBF3F1F003F3E4081DF605D401EBF601E7EDFDEC0FFBF7F60011E5E),
    .INIT_7E(256'h209E9B44FEDF83E180E0BF5E5FE181C1441F6480BEE0A1C07D031FE0644140A1),
    .INIT_7F(256'hBEE07FC03E8021A1606040BFBF5F9DC061621F7F63BE80C09C605FA041BE7FA4),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[34] }),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[34] }),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[35] }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\doutb[35] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[12] ),
        .ENBWREN(\addrb[12] ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weightROM_blk_mem_gen_prim_wrapper_init__parameterized12
   (\douta[34] ,
    \doutb[34] ,
    \douta[35] ,
    \doutb[35] ,
    clka,
    clkb,
    \addra[13] ,
    \addrb[13] ,
    addra,
    addrb);
  output [7:0]\douta[34] ;
  output [7:0]\doutb[34] ;
  output [0:0]\douta[35] ;
  output [0:0]\doutb[35] ;
  input clka;
  input clkb;
  input \addra[13] ;
  input \addrb[13] ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire \addra[13] ;
  wire [11:0]addrb;
  wire \addrb[13] ;
  wire clka;
  wire clkb;
  wire [7:0]\douta[34] ;
  wire [0:0]\douta[35] ;
  wire [7:0]\doutb[34] ;
  wire [0:0]\doutb[35] ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[34] }),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[34] }),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[35] }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\doutb[35] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[13] ),
        .ENBWREN(\addrb[13] ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weightROM_blk_mem_gen_prim_wrapper_init__parameterized13
   (\douta[43] ,
    \doutb[43] ,
    \douta[44] ,
    \doutb[44] ,
    clka,
    clkb,
    \addra[13] ,
    \addrb[13] ,
    addra,
    addrb);
  output [7:0]\douta[43] ;
  output [7:0]\doutb[43] ;
  output [0:0]\douta[44] ;
  output [0:0]\doutb[44] ;
  input clka;
  input clkb;
  input \addra[13] ;
  input \addrb[13] ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire \addra[13] ;
  wire [11:0]addrb;
  wire \addrb[13] ;
  wire clka;
  wire clkb;
  wire [7:0]\douta[43] ;
  wire [0:0]\douta[44] ;
  wire [7:0]\doutb[43] ;
  wire [0:0]\doutb[44] ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hA8250E14B2F93D751736DB538E00F47C0D65B718A37692EB59CF6D6918DE3FFA),
    .INITP_01(256'h6A01578A7C63D632E360E9E5BFF63CF945F88C275E45449F9513AFF73399E6AA),
    .INITP_02(256'hB0B2519E0AFFF3FDEBF4639A62DC8F39FADBF9292132CF42A71336557E61AF47),
    .INITP_03(256'h5398127E2153AD463126CC8DA00A254B87A174FC06C88782BF01214617320B41),
    .INITP_04(256'h4944BA21BB83F476A1FF990043456F1DD78CE7174A6BAA267F981616A469001D),
    .INITP_05(256'h35ACCF5253874025500665FFFABCD9FF87109CFDA32D0B7FA2C0AE9B99D90593),
    .INITP_06(256'h2E2E1C6CF7747E38BADBF33253041000678D9EC829EFFA934E5210A71B354D07),
    .INITP_07(256'h38B7F73174531355198716FE0560D718CF80E07C616F8D5EC6E287D919CCA4DA),
    .INITP_08(256'hF82E9BE1FC1C55501A0810159C9EE587D6F38C45530C0F838BDFCD686B0C589E),
    .INITP_09(256'hF48351FDA7685579CE3CD2D44250D8E64AAC77029D2FF2CB9D66C0BB54F62CB7),
    .INITP_0A(256'hFA0255961E31763EFB19D203A671A226D71CE790265186F3ACD2B77B051ADC00),
    .INITP_0B(256'hB0477E88117FB0739B28DD159C64AE3E7D020C43BAAEB0DAE94C7800DF437385),
    .INITP_0C(256'hC72048B8C62F20A401C8B2178F42D63BBF416B138DA54FF69AC58F51B726BC78),
    .INITP_0D(256'h60A0FCAC0AD3B192FAA96D264F8D34F9FC043906EC18C553C1B0EFC55CD92B38),
    .INITP_0E(256'hB6178724F7B832660FB9D8323E66BA6701DB3C0FC6F6BBA46604BC90845D4034),
    .INITP_0F(256'h6A69924DDA041E196898F778A046B62F563EFF554A8930C9868AFDD0E1E5E485),
    .INIT_00(256'h30D0206E6FA010209DAF10E0EFFFCF2F2FAFCEE0CFAF0F51EF7ECF4F70A03020),
    .INIT_01(256'h0FA00F0F9F32A1F0BFBF211F8FF0204ECF2FEFFFFE909FBF5F90E07F6020F0F0),
    .INIT_02(256'hAEB0B16021E120C0FF7FD0BF00FF6E009EA0DF6FF180F0611FAFF01141EF7060),
    .INIT_03(256'h9E900040CF6FC0400050BF3F20AF7F2F9E8FA0EF31EF40306050A050EF8030AF),
    .INIT_04(256'h2E5F0091415F8FC251F0CF109F4F828042A0A021E080F0525080AFE03001C040),
    .INIT_05(256'h018050C1613141E050610131B1B0C08F1F2F20EEFFBF1FAF01C0610FE1DFA0EF),
    .INIT_06(256'h7ECFAE2F10D0CF4FBFDF705FAF0F5E5FBF7F1ECF005F3F7F9F5EAFAFDE5F7F20),
    .INIT_07(256'h3E8080008F1F005FA01E901F9F90A1BF406F504FFF7FBFEFDF707F9F5FA0FF3F),
    .INIT_08(256'h10FF3E2E2F0020DFBD0D400F9FBFC04EFE0FFFDF1070AFEFB01F4FF09FBEF0E0),
    .INIT_09(256'hAE3FA0007EE090BF6E0EFF1F4E40400D4000F080B11FE0BE9F9F5FCE70808F70),
    .INIT_0A(256'h2F9020DFAF7FB03F3FBF401F1FDFDF8FA000C0DFDF206FE050400FC0DF80F0BF),
    .INIT_0B(256'h607F401040201F70C0DF305F900040FFE0104F3F9FDF9F3040009F306F7FB04F),
    .INIT_0C(256'hDF604070A0BFA0E081F2008050AF00B06F8050B150E081CF2091B19FF0F0B07F),
    .INIT_0D(256'h004EC0C1E0FF6F4F41A02F80B09F70908070C050C0D00F6FBF9F8F3FDF7FB04F),
    .INIT_0E(256'h91FFEE5010904FEF31AF301070402F4FCFF0715F8040AF1F3100BE004090906F),
    .INIT_0F(256'hEF9F2FCFAFFF0E5F1F8F6F1F5F7F40CF80BE30BFC0001FF00E209F2021A04061),
    .INIT_10(256'hBF3FCC109000E061C02F003FE1206070C09FF0DF0050309F00CFBF80C050E0A0),
    .INIT_11(256'hB05FF050B0A03F5080DF5FA0AF7F6FDEE04F80708190CF1FDEA0B08F817F1F40),
    .INIT_12(256'hB0B1BE8F80C050301E106FDFC1D0507F9F8E9F1FE0DFB01FF0DE3F5030F0F040),
    .INIT_13(256'h8FBF5F9EAF2F3E9FC07FAF90EF1091FFE0D0DFFF8F213F2F603FD0BEF0F0BEEF),
    .INIT_14(256'h5FEF7FD160002EF131B0AFC0E0DFA0B0B13F509051D0A09E2F7FDFFF21F01F10),
    .INIT_15(256'h8130A0A0109F0FEFCFA0107070E0A05E6F80BF10E0D0C0F10F1FE0A010BE1FEF),
    .INIT_16(256'h9090520EFFD0CFA191B060BF60116FAF8F6041CFB0D0BFD130F02F60BFC02FAF),
    .INIT_17(256'h1FFF7F4F6EDFAFD0DF525F4E100F1EA0F0D010E03F1F40D0002060B20F20F070),
    .INIT_18(256'hCFFF108F8F2080FF20B0EFB0FF20F0E04F3FFF1F5FDF9F00907FEF7FCFBFA080),
    .INIT_19(256'hEF00FF1F6FDEBF0EDFBF0F30205F0F907F1FE0001FEE10FF50B06F6FEFAF4FDF),
    .INIT_1A(256'h1F5F3FEF202EEF7030609020BF8F0F6170304030905FF01F9050BE0FF0B03F90),
    .INIT_1B(256'h2F206E003F4F1F2F0F9F91AFDF4F3E2EAE70FF508F6EE0C0B0B06F713F2E5FFE),
    .INIT_1C(256'h1031014F8080506F4F800120AF2F7F1F4080AFAFD0BF4030FF61D170E08F8F40),
    .INIT_1D(256'hFEC0408FA0EF9060B10F9FB060E040A0C0FF60D00F6F317F900070EFEF11FF5F),
    .INIT_1E(256'h4F21A09FDE2F30DFBE7F9E2FB06FF0DFAFEFBFAFCFB0F02F4F8E1FF05E102090),
    .INIT_1F(256'h60408FAE4FC1D132007F2F00901F400FAF5060C0EE7E901F40E0A00FD010A1C0),
    .INIT_20(256'hBF9F0F0FF0FF3F7F1FCFEF106F90E02F7020900FD0E03FAFD0202F0FFFDF609F),
    .INIT_21(256'h301F70C0F0903FC08F40FFCFD01FD0C090103FBF1EFFE010E0706F70D0FFD07F),
    .INIT_22(256'hB10F5FBFAF400FCFAF5F10E000A1FFCFDE4E503F9F506E7EA05FAF2F9F2060BF),
    .INIT_23(256'h10FF5F5FBF4E8E7E6E0FCE6F0EBF1030909FE0AF7FBF70D0D02F9F5E4010CEE0),
    .INIT_24(256'h025F7D2070301F7FC01F9FEF2150DF2FAF3E000FB1FF506FF0C0A05E808F9F0F),
    .INIT_25(256'hBE40CF9EFFEF2DCF9FEF6E7F3FA0700FF18020C000216E4F6F0F4FBE8090DED0),
    .INIT_26(256'h2F31904F81D0C09020707F50C05E410F3000DEA120EF8F3040FEBF81AF2FF030),
    .INIT_27(256'hA020803040EF716F00506F8180DF9FB05F8FCFC05F10906E004080AFA020F1AF),
    .INIT_28(256'h912FED10FF1FE0F0EF202FDFDFE0F0AFDF6E506F3F30FF9E50200010107F70F0),
    .INIT_29(256'hD010AFC0904E7F1E7FD0CEA0AF6F602F4161CFE0E09FA12FDF0F1EAE6FDFAE4F),
    .INIT_2A(256'h809E1F8FB0408F8F7F0F9F5030FFDFE01FC00080608F408090B02E90A04F803F),
    .INIT_2B(256'hDFCFB07090D05FBE2F60603E203F3F1F3F8D40604F30AFDF3F8F0F10A0CF403F),
    .INIT_2C(256'h1FF08F0FDFD0F09EB19F8020EFCF4FD00F9F0FFFE0CF4FF0C050FF7F9F2F9F0F),
    .INIT_2D(256'h9F3FA12F3F2F70BF6F0E3F7F1FF070E00EEFEF2F807E7FAF809FE00EEF2E7FFF),
    .INIT_2E(256'h600F60CF10A0CF3FC0CFA00F5FC0FF2F9EAFAF7F8F0F0F0FBFEF3F5F203FAFCF),
    .INIT_2F(256'h9F6F0090FEDFD0DE0FCF1F1FCFBFEFF0DED05F50203FF18060EFC0EEAF9F0E8F),
    .INIT_30(256'h104FB04F0F802FAF50E06FF0C0DF0030BFDE6090DEFF608FD11F20AF7F7FC17F),
    .INIT_31(256'hBF011FC0DF4F5FEE0F704FD0D070B0AFB21F7F805F901E301F80102F20AF7FFE),
    .INIT_32(256'hDF3F402EE00FD0707F7F802F7F8FF08F1F705EDF7F6F3FC0500F2FF07EA10F30),
    .INIT_33(256'h1FBF1FD0E02150C0D09F30108FCF018FB02E0FC05FDFFFAE50FF9FDF0FC06F7F),
    .INIT_34(256'hEFAFB0A051B07F90E0C0FF4080C0203FC0004091E1500F10F070FF2150C0F0F0),
    .INIT_35(256'hB15E7F80D0D03FEED080A0AF202010408030F0BF7F200E70E1605F00416F600F),
    .INIT_36(256'h3FA1BFE001A0FF0F81D11F1FE0BFFFF09F20BF1F1070F190CF70F080BF607FB0),
    .INIT_37(256'hF140B140110F7F5F718F6E11A1F090A0706E5030CFD040F000D040709F60507F),
    .INIT_38(256'h60D0D0E0EF1FE03EE0D1101FEFC0FFBE8F90EFCEEFDF6150905F90BF8F106F3F),
    .INIT_39(256'h9F2FEF6E5F500041C15FBFC0A00FE0004F301F1F0E1F9FCF90C040B14F105010),
    .INIT_3A(256'hA20E4F4F3F1FFF70C07FE090FFE15FBFF0C03011CFBE408E50CFF06EEFF0B1DF),
    .INIT_3B(256'h5F3EBF9ECE417F00E02F10CEA0009EC09080B0CF2F11200F5ECFBEB02FCF2020),
    .INIT_3C(256'h3F1F301FF0D09FD03D3F1010EFD0902FCF4F9F8FDFEFBFAFCFAFA080CF200F00),
    .INIT_3D(256'h7F6F0F108F6F20507FEF0020DFD0F180BF7F300FBE2FCF8EAF902FDF9F20D02F),
    .INIT_3E(256'h8FE0DFF0105FC04170BF60BFCFCF20BFEFFF0070B1F1F0E07FBF721F70D0DFAF),
    .INIT_3F(256'hAFDFE0AF50EF8030D011A0C030B0CFE02D21A0E090207050CD00AF2F2ED0EF2F),
    .INIT_40(256'hAEEE704FF0E03FCFE02F3FC0E070EF1E1FDFF070F00F8F705FEF1F50B09FAF7F),
    .INIT_41(256'hBF50C07F8F00FF9FAF117F6FDFD08F9F9E202FCF205FCE3F1FEF6F20FF1F7FEE),
    .INIT_42(256'hB0901020625140C07020409F90B0DF5F80F080B0F0FF6F80BF709121D0E0102F),
    .INIT_43(256'hBE4F4F5E7F7F706FB0A04F309F9F8FA030A010A030F0B0A0AFAFFFB0B0FF0F11),
    .INIT_44(256'h2F310190E000FF606FD0A0BF7F1FEF6FEF0FFFA07010F1A00F0F60603F1F0FFF),
    .INIT_45(256'h8F804FA1206F11AEB0AF6F41204080200F6060DF5FCF7FEF400050EFF05E4F6F),
    .INIT_46(256'hE100F040805F50BFCF1060D04F6FBF00D0FF400FA02F00AFF0908FA020008F0F),
    .INIT_47(256'hDF80BF6FFF204F00012F9F10F0AFD0501F7F5FBFEFBFDFBF9FFFFF31BFC171D0),
    .INIT_48(256'h8EF04160AF2F9060E0FE30D07FC0C1E041B080D050403F10B0915F60B121EFB0),
    .INIT_49(256'hFFA00FC0A0E10FFF002F516030B0FF7E3F412F0F804E10F02240D0EFB02F3E4F),
    .INIT_4A(256'hDF90BF51B04F0071F001C0CF50E0617F7090D0806050F0A04080214FBF1021B0),
    .INIT_4B(256'h3F901FC0B0E00F30804110C020CFEF71DFE0A03F7F21C1AF116050CFE010108F),
    .INIT_4C(256'h00E0205F1F90806E9F1F2F4F5F0F6F60DF4E8FF06FA0E0AF7F7FB0A13F0FFFFF),
    .INIT_4D(256'h4060F120FFAED03F2FDF3FCF00B0DF40BFFF40DF1FCEEF1FC080701F3F9FCF1F),
    .INIT_4E(256'hF01F9F3F5F6F5F7FAFD0AF400FFE5F7040BF10A09EEFA1CE8F6FDF509FEF2FBF),
    .INIT_4F(256'hB07F50FF50FEAF70006F2F1F1050CF6FF00E2040B08FDF30BEFF0F902FEF9FEF),
    .INIT_50(256'h9140E0100FF0FF812F7F20B0C01151C0517F628060315FA0E0C050F04F70017D),
    .INIT_51(256'hCF4F4F7F4F1FBEBEAF0090AF4F10BE90B121EF5FCF116FF26070AEFF0130CE60),
    .INIT_52(256'hFF7F91508F1FAF3FE1B0FFBF6E3050DF0FE09FD0CF704F51906F4F1FA0B140A0),
    .INIT_53(256'h301F6F7130B12040BFDFD0A08FCFD0DF8FE0B0100FAFE001C17F4F003FCFF0FF),
    .INIT_54(256'h7FDE6F203FEF50AEFFAE60CFF0AF5FCFD090C04FEFA00F1E7E606FAFE00FDF01),
    .INIT_55(256'hEFFF0F0080309F102F4FCF6D6E20FD6EEEE000BF809FE0C08E6FDF801FFFDFDF),
    .INIT_56(256'hDE3FB050C0C0D0FF015FEF608E1FFF60407160F0A0BF20DFDF30A0B0DFEF7F5E),
    .INIT_57(256'hE02F40B040BFCFC0905000BF404F9F1F7E9F0FDF30AFA000BF8F1FDFEF6F502E),
    .INIT_58(256'hA16F9FAFCF7040306EAF2040BE7FDF506FFEDF800E8F0F7FEF70FF0F1FAFD17F),
    .INIT_59(256'h5F5FEF1E4E6F4E4FDF2E40ED3FD03F1F4060BF5F00BFB0717E80CF3F0FB1DF40),
    .INIT_5A(256'h005080A070601F10F1B00F80C13022D0C18F80317F60906050D10FBFE0200070),
    .INIT_5B(256'h8F10DF7FFF0F6F7F202F40906F20602FBF30500FC0312F00B0D0112F710F3F80),
    .INIT_5C(256'hF0207F7020CFBFFFA080CF101F00DF7F9FFF40EED01FF02001F02E6EC0AFDE20),
    .INIT_5D(256'h3F1F1EFF5E8FAF11205F301FAF70C080901F40905F502FA0E07F9FB0BFC1EF80),
    .INIT_5E(256'h2051C05EDE30300F7D8E2F60BF2F300F1FDE5E603FCF8F004FAE7FA0BFEEB0B0),
    .INIT_5F(256'h7F60B09EFF5FA030908F0FFF7FD080E05050FFAF7F2FF0BF508F6FDFFF90F080),
    .INIT_60(256'h5FAF80AF90AF2F8F9030500FE02F7000CF408F40AF1050901F6F50B0AF9F901F),
    .INIT_61(256'hBF5F509FDF4FBF3FF0CF1F5050CF0F60809F6060FF60AF0E40CF50E0609040B0),
    .INIT_62(256'h8F0E301190A0BF51CF7F7FD0BF1051EF213F7F70AFB1803FAFA0008F20E0701F),
    .INIT_63(256'h1FF05F70502F4FEF70E1503F302F700F30709FFFBFC0E050803030FF507FDFF0),
    .INIT_64(256'h905D3F4FFF2F3F1FBFA0704060208ECFD0A1203FC0102E4F1E9F904EE0006FFF),
    .INIT_65(256'h8FDE202F5F619F40BFEF10ED2E2F4DF0E081D06F2F41FE608F0F40203F1FD180),
    .INIT_66(256'h8010A140F0C0E02040A01F305EC05F40701160EFFF1FCF80F02F40905F5FA04F),
    .INIT_67(256'h605F8F00509FB0D030C01F1FA060AF7060D05F3F6F3F20DFA14F20FFAF301030),
    .INIT_68(256'h4FE010DF50BF001F7FD000C0EF2F5FF09F5F3F6FAF612FC0403F8FE17050CF60),
    .INIT_69(256'hD0D040A0401F40C0007FE0CF1F2F902F0F9FC000A07FC04FF0AF3F9FBFEF90DF),
    .INIT_6A(256'h01A0EE3E5EE0C0407D5F50E08F2FFF307EAD5EDFDF3F9EE041CE3F1FDFAE016F),
    .INIT_6B(256'hCEC1FFDE1E6DAE1E0F0FAECE2FDF401F5160CF500FD0200FCE20AF1E1FBF6E3F),
    .INIT_6C(256'h2F005F10D0BF6F1F4051DF6F61CF60BF40E04FC0EF4000FFE03030BFA01FD0FF),
    .INIT_6D(256'h3020CFEF9F6F7ECE702F8FA12060605F700F80103F51E05E7040003FCF1FF00F),
    .INIT_6E(256'h60C06F2FEF000000CFF0DF0FDE3FBE00CEEF2F2E6F7060005F1F0F8E8F1F2F8F),
    .INIT_6F(256'h10EFFF7E7E508F70D03F7E9F8F6F7F5F9FAFA0FF4E9FFF2E9F50AFD02F7030F0),
    .INIT_70(256'hB0B0EFFFD1DFAE809E801EF0E0A1A000415F0F3FEED0EF9E8F9FEF6FCF20AFA1),
    .INIT_71(256'hBFDFC0BF1FBD2F21AFEFA0904ECF70516EB0C0F07E1050E0AF20D09F10E13F90),
    .INIT_72(256'hFF9FDFDF2FF08F3FCF206F70A1E02F5FCFF0E1409F7F90BF9F802F0F9F90DF9F),
    .INIT_73(256'h7F109F406020CF9FEF6F10EEFF5F6EFF6080D0AF20F0AE30BF5F6F40703F4080),
    .INIT_74(256'hBE1FBF32E0FF3F605000EF403010702F10C14050A090F070900F1F20F1C0601F),
    .INIT_75(256'h4F2F20A0EF604F50CFE0607000504060216F20CF3FB15F5FB02F1F40511FE1FF),
    .INIT_76(256'h4F9FE160915FA0A1C1D091DF501FF10021602F50017F40707000FF8FB0D0C120),
    .INIT_77(256'hA0AF9090716F3FAFD15110F0609FE09080002FDF0FB000F0411FF0BFB030BFDF),
    .INIT_78(256'hDF1FD080703FFF6090D10F6F2FFF01EFC162E021201F50C00FEFBF208081AF3F),
    .INIT_79(256'h001FD03F70EF409120909081F11FF0207E7F9F9F3F40000F31E06150005E72F0),
    .INIT_7A(256'h20205040FF0F70CF5F4011FF9F71AFAFCF50CFBF607F400050FE4FEF60B11040),
    .INIT_7B(256'h2FEE3FE03FD1C001705FE0207FFFB00F70A0AFCF8F4060BF70EF703F2FBF3F4F),
    .INIT_7C(256'h8FA08F2F10A07F9EE05F20B08E7F80C0BFBE50905F9F1FDFE0CFA021E0DEBF8F),
    .INIT_7D(256'h00C060CFA01F9FAE2F8F7F2F906F3FCF9FDFEF9F4F4EBF10B0800F2E6FFFBF3F),
    .INIT_7E(256'h0F8E0EDFDFC0DE5060502F204020F0CF20AE3110CFBF9F3EAF104FEF3F3FEF4E),
    .INIT_7F(256'h70EEAF51409EFFDD3EA1FF3FFFDF2E6080FE70A0FF507EDEDFEF4FEDD03E3E9F),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[43] }),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[43] }),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[44] }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\doutb[44] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[13] ),
        .ENBWREN(\addrb[13] ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weightROM_blk_mem_gen_prim_wrapper_init__parameterized14
   (\douta[43] ,
    \doutb[43] ,
    \douta[44] ,
    \doutb[44] ,
    clka,
    clkb,
    \addra[12] ,
    \addrb[12] ,
    addra,
    addrb);
  output [7:0]\douta[43] ;
  output [7:0]\doutb[43] ;
  output [0:0]\douta[44] ;
  output [0:0]\doutb[44] ;
  input clka;
  input clkb;
  input \addra[12] ;
  input \addrb[12] ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire \addra[12] ;
  wire [11:0]addrb;
  wire \addrb[12] ;
  wire clka;
  wire clkb;
  wire [7:0]\douta[43] ;
  wire [0:0]\douta[44] ;
  wire [7:0]\doutb[43] ;
  wire [0:0]\doutb[44] ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h3BDE639C8A54A7AA3DA40A3554C8B42F7995C0B849BE3BC6FECF09145F54FBD8),
    .INITP_01(256'h46AA946251D98BD1974DABAB5EAB940317DC32D1AC5CA96DCDDAB9970293C2B2),
    .INITP_02(256'hAD47CC19C4B68E3972A439B978D3659C59908701AD9378B7BB41A79BADEDD83B),
    .INITP_03(256'h218A4264D2F69AF2C9F8EBDABF20DCE743FA04CA2C2649F65E54ED0B5FD307D3),
    .INITP_04(256'hF585738A3333FF6EBE9F7AD6FAF125FA0F8962E2F86972492E988B8584AC66A1),
    .INITP_05(256'h509FD4401C450AD6AA9ED4E6665F8EAC01AC7D97554ECC17C3D360F0411D9870),
    .INITP_06(256'hB6CE8B5352F420EF49FB184C32CFEB06F967AFFFD5FBB63B3F9C4AA4F742658E),
    .INITP_07(256'h5B501609BB5BF0D68D8C8FAE600D37A9C401DA869AB57ED436AE69CC2ECE7757),
    .INITP_08(256'h9DA5E67A8BE75A20C8BF8E3D2F5C4A914C5620C84F015BBD9F6F3CCD9DE13895),
    .INITP_09(256'h711511CDE653D0D0797DAF68FDE84D20DE829E283F29CECAD041C6EB25AD5AD7),
    .INITP_0A(256'hF3D37D859A29FF9195065D2A339FE9F0531F6A56B918B2688BEF37A1422230AC),
    .INITP_0B(256'hEAB5283276D57873F80352C3F6A166C84EA3A1DA58F1DF6D15C6F25ED2C5D1FD),
    .INITP_0C(256'h213B2A9B48A2F371DC9863844903B2911D0E6A8A8CAB2C0B0A496267AD1800B7),
    .INITP_0D(256'h0531A31D1E771CE0007F7057E66873A520CAD8094784D0D2A94D5F2BB932B53A),
    .INITP_0E(256'h200BBFDDD9EAEE34D49E4E4DC2F2340BFE53D92FAA644BAA19D940B786405B42),
    .INITP_0F(256'hEF76482EBB71858E95CC6B3914CDA7D8318A9FEDDA2C61228D5E59D184E3C8F9),
    .INIT_00(256'hD0F04EFF7FB01FD0CEA09F40C1BF605F7FAEFEC050D1F0EE5F6F3FD09FBF00EE),
    .INIT_01(256'h8FC12F6F4E2E9E2EF1FFBF30B0E0F01FB0804FA08F1F60BF6F008FED10807EF0),
    .INIT_02(256'hFE2F00BFEFB0EFCF91407F504FCFAFA05F0FC06EA00F818E5FD080200F3F50BF),
    .INIT_03(256'hB0DF8F2F8FFE407F4F7F5F5F80203F2FFE3F2F1F4FFECF8F2F30BF7FBF50CFFE),
    .INIT_04(256'h5F2F311F2FD0B08E1F0FFF908F6F3F2FE071EF30FE608FC0FF1FA0313FB00FF0),
    .INIT_05(256'hB02F90C0E09170AFBF40E09F6FC01F0060AF603FFF00BE4E912F6F303FAE1120),
    .INIT_06(256'h9FE10FDFC1001F4FC0E13FD0E0BF6EB0AF80FE9FF1507F02A01F5F3090812FD0),
    .INIT_07(256'h609FD07070F0D0C0805070EFCF90B06F0FAFB04F6FE14F8FC11F1002C170E1A0),
    .INIT_08(256'h01B0CE6EDFB01000BF6FE0E040202F9FADEE6FBEBF5FBFF0400EAFAF1F2F70BF),
    .INIT_09(256'hCE80BFBE7EF0AFAEDF903FBFCF2F914F404FC0A0FF107F2E8F2F50DF50101E10),
    .INIT_0A(256'h9F7F4E006D0FFF9F7060BF10911E1E8FCF414FFF1F7070A00FFE8E8E10D0AF3F),
    .INIT_0B(256'h4E8F8FFFBE507FB17FBF91EF508F0F5E808FC0AF000FDE4E2EA0A0C0BF5F109F),
    .INIT_0C(256'hF011A0FFDFCFC0005190CF8F2F1040FF400F2090BFFFE000402F00300FBFE1E0),
    .INIT_0D(256'hAF0FEF5E7F802FEF00303FE170C011606170A061F03130DF3F2FFF1FA0618FF0),
    .INIT_0E(256'h206F0F004FA010F02FD040C0BFAF80A0EF70104FD0D08F20800040AF70EF2F50),
    .INIT_0F(256'h2F4F4F1EEFBF6F9080FFCF0F402F20E0EF7F305F2F906F9F4FAF2FF180507F7F),
    .INIT_10(256'hD040CF6F4F4FCED0DEB05F3001FF7030E04F6E91CF3101EE90A0EF8F3FAF41DF),
    .INIT_11(256'hEE61CF8FEFEE6D4E00E060CF2010218FF01F9020CF20DF109020DF0ED08F9E60),
    .INIT_12(256'h5E5150A0E08F401F31A0CE3F1F3F5EE0E04F8F1E3F5110E02F2F3F20705FF0F0),
    .INIT_13(256'h6020912102A0B02FC09F50D0E0205FEFDF9F6F4060DF60BFE08FD0F0303EE04F),
    .INIT_14(256'hE08FD0E0F010002FBFEE4170401F5F60F04FBFE081C00F9FFF3FB000108F4F50),
    .INIT_15(256'hA0E0D0EF0F102030C04F9F2F407F607FEFB0AFF0E00F1060BF20F0BFB051FF9F),
    .INIT_16(256'hFFC0EFBF404F0F307F2080FF20904F5F4F6F4E0FA050A09FE0E09FD0109E201F),
    .INIT_17(256'hBFC080E07F1F4F1E10EF5F1040E0616F10A04F90AFDFCFFF2F202FFE9F303FBF),
    .INIT_18(256'hF1CE4ED0E04FED7F1FA10E0140BF4F01609FF06FDE4E20CD9F807F5F2090BF2E),
    .INIT_19(256'h3FBF90FFD02E7EE0F0CEC06F6FCFEE6F0F80EF0E80107E303E30F00F505FAF4F),
    .INIT_1A(256'h3E2020EF70507FF09FF0FF5F6F9F1F2F8FE0CEEF00ADF030805E1F106FB090DF),
    .INIT_1B(256'h004050508FAEB0CF908F00B050A0E15F6F9F30607E50602D90F0A1103FDFA01F),
    .INIT_1C(256'h12CFAE3E0F90C0407D8F5F4F4F1160CE6F8F5FD0CF9EBE8E100FF05EF01080B1),
    .INIT_1D(256'hAEDE9F9E8E8F8FAF8FB0300E6F100EA0D1F0EFDFB0E11FCFBE6F3FBF116EAE90),
    .INIT_1E(256'hA0004EEE1F4F21908D4E809F6FF0114F3F0F6F605FAFBEA09FEEF06F3F6FE07F),
    .INIT_1F(256'h5E2F4F4F8F9F301FFF4F4E2FCF40BF6F1F4F8F702F5FE00F509F6FCF60903EBF),
    .INIT_20(256'h5FAF912F6F9FE000406050A0BF7FA05F80E000303F1FBF204FB020E0D0A0201F),
    .INIT_21(256'hE01FA0F1C06110F07F7090F0D0305FA08F405050D02F9F20709040A01F8F608F),
    .INIT_22(256'h60FF8000014FEF6100F11E00FF70E1FFA0817141F0B0B001B061E0E0D1F00130),
    .INIT_23(256'h00BF9010C1D06FEF00D1B1D0105F2F313F20E00020C1813241CF2FE23031E130),
    .INIT_24(256'hAF3F70DF8F30BF90400FD0D01FB00F1F1F400F6F7FDEDF0FCF4F5F5FAFCF9F20),
    .INIT_25(256'hCF60DFBFF0B050A06E20303F8FCFDF8FC0FFFF60BFBFC050AFB0F09F900FE040),
    .INIT_26(256'hD020120051EE9061BF21602F506120CFB03041AFBFEE6F7F3F80EFAEF0AF5040),
    .INIT_27(256'h406E3E20903F5F9F1052115E4FAFCD70A0A0AFA06081E0116060F0020FDF21AF),
    .INIT_28(256'hF11FB0B04E2050A03D4F303F40C2A0CEBFB0F050AF018E51800FEF0FC1407F3E),
    .INIT_29(256'hEFBEFFBF2F9FFE6F3EB0607F1F4FA07F4190DFFF6F4F9F2F30DF0F21E07E6081),
    .INIT_2A(256'h3F1FE0D070EF10902F70400FEF800F9FD030703070FF4E701010DF1000D0AF70),
    .INIT_2B(256'h1FD0CEC07E1050A0C001617F60B01F60D170FF9F2FBF51F161707F8100E1310F),
    .INIT_2C(256'hF0E03E4FCF6000B02F505F9FB18021C0414E9F607F82A03F7F201EEF800F4FBF),
    .INIT_2D(256'h2E016FCE3E6F7EFFD0FFBE50AFAFB00030500FEF2FF150207FFF30DE51DFCEB1),
    .INIT_2E(256'hB00F8F109FC0E0005FAFA08F00F000DF80800F60FF4040E04040B0B050505070),
    .INIT_2F(256'h5F401F6E2EA03FB0FF3FA010AF90D0109F0F5FCF50A11F405F9F20D03090A0F0),
    .INIT_30(256'h004F3FF1601080E081CF40BF1E7FEF805E0F01FF7140CFF04F5F7011702F3ECF),
    .INIT_31(256'hF0007170309180004F90DFEEFF70EFA07FC060C0111FF1504E5FC0210FC260FF),
    .INIT_32(256'h80A0107F602F10E08F908F4FAFA09F5F00CFAFEFFF10700F40EFAFEE7F3FAFF1),
    .INIT_33(256'h7061CF9E3F310050F09FDF0090DFF14F70AFCF009F9E70B08F9050DFDF204F70),
    .INIT_34(256'hCF00B12E60B010F05E70FF1F10509F20B0F08FC08E5FFFF0F0AF9001DF90F0E0),
    .INIT_35(256'h6F8F3010EFB060C09F0F7080600F30BFA0EF4F505E00B05E719010907F01302F),
    .INIT_36(256'h615081606F4041115FB160E081A061B060C03080C0811FC15F50300F71819FC1),
    .INIT_37(256'h8FA1CF7EFFC071C13FE041A190DFA0FF7F506FCF8071908141BF71D170002F5F),
    .INIT_38(256'h8E2FBF9F50A0FFDF00B0609FAF0FCF2080906010F0DF7F406FC19FAFCFC0607F),
    .INIT_39(256'hB05F90B180613E7F3030F0CF6FA0F0B02090BF5FE00F3F2030E050A190401F40),
    .INIT_3A(256'hB1BE5E90BE6ED0EFC090E0AFDFA1B00E30BF91406FFEC0AE4050BF3E5FDFF0DF),
    .INIT_3B(256'hBF0EFF2F1EB1B02180F09FC0F000FFDF90106F708F6F9F4F4F4F1F6F5F5F6F40),
    .INIT_3C(256'h4F7181F08FEF101FFF41BF3F4FE05F00AF60FF9E5E703F7F3FDF40100F707F6E),
    .INIT_3D(256'h902000F05F3FAF9120DFAFAF709FA02040DF6F2FDF90C00F0180C0B05F6FF1E1),
    .INIT_3E(256'hEF807080A0202FDFDF50AF001070BF80A0907FC09FBFFFA051EF7E30B070E08F),
    .INIT_3F(256'hEFE0EFEFDE80D11E7F6F4FBF5F2F00CE104F60CF8F819E0F11307FDF8FAF7FC0),
    .INIT_40(256'h4EAF11F0D0F0000F5090E070D0FFF00FA1F10E00A0EFE0719E90CF9FF060F0DE),
    .INIT_41(256'hE090AF50B0F01F40B0E0711000EF5F1FCE4F808F3F10000FA0EF0140D01FC13F),
    .INIT_42(256'h10FF207FCFB0CF2F10FFFF0F70E02F9F707F2F902FA0EF8F1F00605000FF7FA0),
    .INIT_43(256'h8FAFDF20E06F603F9FA0DF7FDFEF40813F3F8F2FAF0000CF00EF8FEF1F2FDF40),
    .INIT_44(256'h7F0F50711060E010A1304F90B09F60A0C09F014081F1D0DEAFC110F030BFBFF0),
    .INIT_45(256'h607F51707FBF60E020408FF0D0AF5FC03F20800F00906F213F6F802FD0C1AF6E),
    .INIT_46(256'hD000AFEFD0604FF0FEEF1E6F605F90D09F9E3EF0DFD0B0FF10BFDF0F607F217F),
    .INIT_47(256'h8FC10F9FAFFE4F9F712FDFD050AF912EF0BFEF70FFC06F9FFFBFBF7EE070FEFF),
    .INIT_48(256'h6FC0F04F7F3FE05E70AE4080C0FE3EC0AD00DEC0C05FCFA08FAF8F9FAF8F50E0),
    .INIT_49(256'hDF70CE6F8F91E0EF80AE70DEAF104FCE8F6F6F0FEF4F6F7FFFB09F713F70E0EF),
    .INIT_4A(256'hF0E0817060C0809031E0702030D0807FC19FC04F7F50704070E0A17FF0FF3160),
    .INIT_4B(256'h9FE00F9E2F9F1F7F50F03F50611010F1018160B090A190209040608FC0A09F50),
    .INIT_4C(256'h0F3FE08E90DFB09F2F9F7F3F5F7E0FAFBFBFBE1F2F0F9FD0CFBFEF60CE80AFA0),
    .INIT_4D(256'h3F4FAF7F8FB090300FAFE02F9F5FC07F506EB05F1F1EE08E1090CF209F903F0F),
    .INIT_4E(256'h0120DE516F7F405F6FC040CF1021FF1F4F4FE12FFF8F108FAF10909E911E6040),
    .INIT_4F(256'h8E5FBF60EEAF4ECFF07EAFBFDFD02E3F6050404050C010E09EE0602F302FEF70),
    .INIT_50(256'h4F2060EF40E06F0FF04FA050F08EDED040D13FB0205F000F2E7FAFF07F3E7020),
    .INIT_51(256'hEFC0503FE0213F3060FEE07FD1F06FD0EF407FC0CFB07F5FA08FAF71BFB1F25F),
    .INIT_52(256'h020F404F1E1FD0715E6F20D09F60B0D03F1E0FC0DFD0FF2F0FDF8FDFBF4D5FDE),
    .INIT_53(256'h4E903E9D2DEE7D3FE0EE4FBEDF90CF1E50F1EF5F409F9F7080909FDFC03E4E70),
    .INIT_54(256'hC050E0FE1F5FD0FEDD8E1FF0BF404F4E2E4F3E30EE6FF0D0FF2D6F6F6EDED05F),
    .INIT_55(256'h3FA1E0BE7EC1118F706EAE4F1FCF4E0FF0600FBFCE9FB01F205FBFEFDFFE10D0),
    .INIT_56(256'hAE00D11F10200F10CF2F8F2FEF5F7FCF1FE1EED08E3F1F30D0DFCF41DF3FF010),
    .INIT_57(256'h9F31C0D0704FD0EFF0DF2F40A04F628FB00EBF0F4F5FCF7E1130B0600160010F),
    .INIT_58(256'h60E0714040903070B0EF309F106F9060003060002F1050F06020D0D0FF70105F),
    .INIT_59(256'hC16061C1C1EF30EF3F10910F3FEF7F2080F0A0409030C09F20F080F0CF7F90B0),
    .INIT_5A(256'h93504D9E0F806F2FF1EF10F000704E30CFCD707F8F103F6FA07F3F80FFF05000),
    .INIT_5B(256'h8F206F9D2EFF3FBFFFBE6F3E2E103F4E403080B06010AFA02ECF3F3FCF912E80),
    .INIT_5C(256'h5FC0307F3FCF6F017DBFEF0081A0E1E040DF8E213FF03FFF81D05F3F8050A1CE),
    .INIT_5D(256'h80504FF1E06E1F1F701FA060804F0291A01040706F002FAF81B0A03E31BFAF5F),
    .INIT_5E(256'hA0EF1F20FF6F4070D021607000B18F60409FD1CFC051DFD0AF328FAE2181CEE0),
    .INIT_5F(256'hAF001FA0205FC0804081D07F5FB0DEB0DD60A0A060D0D1F1FE50D090AEC020B0),
    .INIT_60(256'h52C00E0F5E6F608F3FC0C19F21613FDFAE0E31C0FE2F100ECE9FFF9EBE0FAF01),
    .INIT_61(256'h4E10A01E9EB08F90807E90DF7F5FBF7F10A0AF50A0E05FC13FCFFFB01FE1DF0F),
    .INIT_62(256'hD02F3E80D0805F2E1FF0CFDF7120F0D0103E6F305F2F207F8EDF203080101FFE),
    .INIT_63(256'hCFCF9FBFC020DEF0E19D7F0050FF4F5FFF1FCFEFC060BE0FAEB05E9FDFF0DF70),
    .INIT_64(256'h1F806F6FBF2060E09F6F60BF9F00902FAE9F0EEF504FCE00708E0FCF4F2E30F0),
    .INIT_65(256'h4EFFCE1E2EC0008FEFF06F3FAF3F9F7FFFC0EF30CE0E600EC040B00E5F6F3F8F),
    .INIT_66(256'h6000204060D060B09040E15F6FC0300F90311F30C09081711050B0D030302F3F),
    .INIT_67(256'hA0FFE090A011C030002F804090402FEF80C0FF4FC0308FC0E01F50AFA0C09010),
    .INIT_68(256'h8F2E10D06160BE6EB1800F5030FFAFC1EFE1E01F007040DF4F704FC1A04F4E2F),
    .INIT_69(256'h4FA170EFAFEFFF2FA0EFF04F70EFAFD05F6F304F50DF8FA0CF30CFE160101110),
    .INIT_6A(256'hBF3F01003FEFD0BF013110EF6F813010E13F709F30EF00CFDF8F31BFD0F09E3F),
    .INIT_6B(256'h1F1FFFB090CEA0C01FA0F0D03F5FBE302E8F2070105F9F607F1F0F60EEEFDFFF),
    .INIT_6C(256'hBF3F4E4FEFBF1FAE4F70AFC070DEEF50003090F07FEF10BFFE9FEF5F4FFF0FD0),
    .INIT_6D(256'h3F4FBFE0100FAF61701D101FBFCF3EFFFED08F2F7F60AFDF8FB0A030EFBFAF2F),
    .INIT_6E(256'hCF610F3050A08F5F41B13FB0E15F9E7F2F8F70AF30C0304FD0E0A09F1F3E5F4F),
    .INIT_6F(256'hB0E090E070AF6E8FB0FF5FD0906F904F00F0DF7F2F407F60603010DEBFCF7FAF),
    .INIT_70(256'h705FEE502FBFDFEF40E11F6F4FA021BF805F50BF00FFAFDE5FCFE070605E1FC0),
    .INIT_71(256'h205EEFEFD05F3F81406F8EA0AF105F50303110B080FFD0EF3E10709E5E718E50),
    .INIT_72(256'h41CF5F10EF0EB0502FC1A0FFAFD1C10E10DFB1911FFE405F70CF4F7E1F40506E),
    .INIT_73(256'h7F4E2F8E6EF1DF50D03F50DFFF50EEBFC0111010BFE08FDFDF30DF9F4020FF6F),
    .INIT_74(256'h7E001101B02FB0D180706FDF2F8131BF50213081C05E4F00300FF14FF1B0904F),
    .INIT_75(256'hB0AF4F708FD0F09080420F41E1D04E80BE015F002F30B0DF006FE08F200FE06F),
    .INIT_76(256'hCED041607F4F600120719F9FEFC0029FF262D03190A05020F02FFF30F0E18F2F),
    .INIT_77(256'hDFEF50A02F00C11180703140A07F9F00CF8FAF9F6E9F703EF29081E1F00E311F),
    .INIT_78(256'h41EECD0F6D3F6FA1805F0FDFAFA1102F2F9F7180E0EF2F6E5EB0AF8E004F9F30),
    .INIT_79(256'hCFCE3E9EAEA0F0AF9E5FAF1F1FA02E8F00001090B08F2F52AC8FEFFE208E2D00),
    .INIT_7A(256'h3F01C0EFA0BF500FEFAFD0C0104E406F5F1FEF50D0706FF12F0F00207F71600F),
    .INIT_7B(256'hA060903040713F70E0FF419F3070E0BE1E3F2FE0BFA03F8F30BFC08FB0C0CF4F),
    .INIT_7C(256'hBF81F19EC0B00FDF4EB06F907F2FBF3F9F60BF503FAEAFE0605FB0401E7F5FEF),
    .INIT_7D(256'h00F0E03060E030C0E0D03010D0F091F0C0BFB0B0CF00BE70408F00A0B050008F),
    .INIT_7E(256'h62609E409F1F500040D01FC050E020C0A05D105F9031807E5F310FA0B090BF90),
    .INIT_7F(256'h3E40DF3F2FCE401F90D0DEDFA0BFDEEF9F40801FE0AF6080DE10112E3F8FEDFF),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[43] }),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[43] }),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[44] }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\doutb[44] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[12] ),
        .ENBWREN(\addrb[12] ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weightROM_blk_mem_gen_prim_wrapper_init__parameterized15
   (\douta[43] ,
    \doutb[43] ,
    \douta[44] ,
    \doutb[44] ,
    clka,
    clkb,
    \addra[13] ,
    \addrb[13] ,
    addra,
    addrb);
  output [7:0]\douta[43] ;
  output [7:0]\doutb[43] ;
  output [0:0]\douta[44] ;
  output [0:0]\doutb[44] ;
  input clka;
  input clkb;
  input \addra[13] ;
  input \addrb[13] ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire \addra[13] ;
  wire [11:0]addrb;
  wire \addrb[13] ;
  wire clka;
  wire clkb;
  wire [7:0]\douta[43] ;
  wire [0:0]\douta[44] ;
  wire [7:0]\doutb[43] ;
  wire [0:0]\doutb[44] ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[43] }),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[43] }),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[44] }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\doutb[44] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[13] ),
        .ENBWREN(\addrb[13] ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weightROM_blk_mem_gen_prim_wrapper_init__parameterized16
   (\douta[52] ,
    \doutb[52] ,
    \douta[53] ,
    \doutb[53] ,
    clka,
    clkb,
    ena_array,
    enb_array,
    addra,
    addrb);
  output [15:0]\douta[52] ;
  output [15:0]\doutb[52] ;
  output [1:0]\douta[53] ;
  output [1:0]\doutb[53] ;
  input clka;
  input clkb;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [10:0]addra;
  input [10:0]addrb;

  wire [10:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]\douta[52] ;
  wire [1:0]\douta[53] ;
  wire [15:0]\doutb[52] ;
  wire [1:0]\doutb[53] ;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],\douta[52] }),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:16],\doutb[52] }),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:2],\douta[53] }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:2],\doutb[53] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(enb_array),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weightROM_blk_mem_gen_prim_wrapper_init__parameterized17
   (\douta[52] ,
    \doutb[52] ,
    \douta[53] ,
    \doutb[53] ,
    clka,
    clkb,
    \addra[13] ,
    \addrb[13] ,
    addra,
    addrb);
  output [7:0]\douta[52] ;
  output [7:0]\doutb[52] ;
  output [0:0]\douta[53] ;
  output [0:0]\doutb[53] ;
  input clka;
  input clkb;
  input \addra[13] ;
  input \addrb[13] ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire \addra[13] ;
  wire [11:0]addrb;
  wire \addrb[13] ;
  wire clka;
  wire clkb;
  wire [7:0]\douta[52] ;
  wire [0:0]\douta[53] ;
  wire [7:0]\doutb[52] ;
  wire [0:0]\doutb[53] ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h5244E0A83F3A07D261DAEC3DD6F12EED94C8E849C3FEF28F62176356FCC1353F),
    .INITP_01(256'h452E4B1A801BF6CE6706694B9CA2AE3804BAFC2BCD6FD4CABE11C9C46C6A230D),
    .INITP_02(256'hFC20F97D9F6F6B6F7C344F099EF9F95DC6305F25C93B282C14AC5D7B921DF14D),
    .INITP_03(256'hFE9D62D3ED80EE95FFC7828363FA16DC45DADE2F5B7EDAAA27C85F2EDFEFAA6A),
    .INITP_04(256'hFF9EFB4DDFB2FC9B7A0C45F0E4912E728235D4A4F25917B5F0DFF7DBB3BFFDCE),
    .INITP_05(256'hC5BBDFBFF3AFFFFF41BFCF3F5FDF4E8E5AF8D2EC7B6E93A8C7A72DD372FDAD6D),
    .INITP_06(256'hAE660D0AFC33B94C679CFF4BCF0D4A332F9192458C812251FFAF80DE7E79C61D),
    .INITP_07(256'h25D925FB14E4C3CDFF1F52460CF1237B41AF307E455A47658CAE9F3893E9B8EE),
    .INITP_08(256'h00A87F7B92ADF8CE4B6E6EFE76FA7FEBFF433BF7FAEFDC79B39FE2A668204E37),
    .INITP_09(256'h99E02708938AB4DCC1FBFFFFF1AFBEDA3F304B5790A16DECF5D41087C2B96C92),
    .INITP_0A(256'hA5A27F170EAD7D29793BB0B6FE5D5F36F0DE8F1D9FE3BCDAE2BEF319803D928F),
    .INITP_0B(256'h4E34325E60514311DDBABD501EF12E6DF87FC788391F84FA0B9914546C4C1B00),
    .INITP_0C(256'h65E41517C6284D8F13016E29C3062429F91D7AD6BEC6EAA37F2541F438A8297F),
    .INITP_0D(256'h05808C7632C3CB48FF3249B43BE7A77F9E9DBFC6B24F23167460C788BFF5294C),
    .INITP_0E(256'h464269519FB69948A102BFC4C52D6A3781AF40D6EA096415B9C712158DF08C36),
    .INITP_0F(256'h9FE46D17083B6D6107CAA2D7FB744E1969B2B13FC7D53D76E5204F9A96997964),
    .INIT_00(256'hC7DFA80F6F880850D7A71867372FD7E0C038F79F074F2788F7DFE7AFEF108F18),
    .INIT_01(256'h60DF702807806817371F80E0BFE710DFAFD7EF473F678FEE20B72F88F748D07F),
    .INIT_02(256'h5FC837484030C737C8BFD7AF80F7275847A8A73F07809F70FF27A7E8E7AF2F17),
    .INIT_03(256'hF8F01800B71F7777989F1728A037D06FC7C8C7AFC8CFCF6F10E0472807680090),
    .INIT_04(256'hC7D870A7EFDFE73F3870EFF8606F77F0AFF8575F4FF61808C8AFA73FBFC01738),
    .INIT_05(256'hB8D8C7F7B848172768CF50300817D79FCF0FC80F8F200F8F203FF8909F5FC887),
    .INIT_06(256'h7F304FCFD8F8A7B0C767FFC70F18D06F27482F0F50E7D8AFB0EF47BF875FE068),
    .INIT_07(256'h47602F902F50A080407847C0A0FF200FE0C0E04897E77F274720E81FE0875858),
    .INIT_08(256'hD190CFE740D0101FF660C07F2F47F8C08F4F2FF8C068C83F2FD0902857284F28),
    .INIT_09(256'h3768D0DF97A71720215778F0702017E0B0201738277F776FC7DF57376FC89F98),
    .INIT_0A(256'hC8F7680FEFE727F800E7D020A0F7D8C7B0E708B008E0182FCFC8300F7F07B707),
    .INIT_0B(256'h400F182048FF482FB73FD7FFEF20D010C7F0E8E0D7F700405030BF08B82FF78F),
    .INIT_0C(256'h5F307FCF9FCF075FF78F573F7017A7389F28AF278FAFE820FF07A7DF675FA74F),
    .INIT_0D(256'h3F083F906FAF87EF183F079858E0383FD7BFCFD02F1828D797CF1F404F67D88F),
    .INIT_0E(256'h58478E0FC050383F004F58E0E008D757F7BF68BF50FF6F68D0E0679088603F88),
    .INIT_0F(256'h27B7900F3FB85FD03037C030D8E8AF8F10C7382FB008EF5F1F0008C0A8B0E7C0),
    .INIT_10(256'hC7D74F683000E710405F008878F0583FF0C037A84017A73FA0607798008757C7),
    .INIT_11(256'h571FD87838EF8F57403050DF40A8A75F8F7827A790BF0F5047DF80BFE8C7B89F),
    .INIT_12(256'h38D8A7A0A000608F3838F77F4870EFA84FB0C048F72727489737B850F0F03F18),
    .INIT_13(256'hFF57775F4FC8DF38279FE8CF1F4057575FBF27CFF768F8C8501097588F586077),
    .INIT_14(256'h3FDEA7B8B0F06708F03F705FB81748FFA0D038789807779E88792FF750B700D7),
    .INIT_15(256'h6FE7F888F05F4FEEE7187F5FF0EFC03880A7472030F0D7775F28100EE0FF3F6F),
    .INIT_16(256'hF12F80F87FD0DFC020976F1F68E7A73F27D89737A898FF8F57A0BFBFBF6F50D8),
    .INIT_17(256'hBFF7A0CF600F30200740980F083808082886E0C7B0F0A0EF87E0A048784008C0),
    .INIT_18(256'hA7B708A0F8D06FCFB9D0EF3F88C8A7E09810D828A027B71000E0BF589820D817),
    .INIT_19(256'h9718FF68A0AFBFAFEF801818E828086700A82FF880F0F87F701FA808E0A7EF18),
    .INIT_1A(256'h474F1868981F873760E797D09F47582868D86838EF76D7383768CF4830781757),
    .INIT_1B(256'hC0902F2989D088D79790686F4F309F77AF6F379FC877BF30271FF71F6F5EB8A7),
    .INIT_1C(256'hB08920606858B8A8A098D0B8CF787F28384010B01F7F605010F730281FD80838),
    .INIT_1D(256'h48E8DFEF98F888B028C82FD0A8CF20D0DF673020385FD14860087F084F10F820),
    .INIT_1E(256'h3FF7A0485978D827C8A7301768F8EF17FFE8DFF08F1EC7F8E0C0C06F50182788),
    .INIT_1F(256'hD020A758A0FFC8575F7850C087E027F81600E80F68F7E7B0A0EF3FC897E7A807),
    .INIT_20(256'hDF08D8D01707C0D8E807DFE89FE0A0DF8868F078F07008808090081FAFCF884F),
    .INIT_21(256'hA0A7BFD71F4F4707BFB80FF7EFD8B0F098C8D8DF00BFC79068E00887A867A790),
    .INIT_22(256'h78DFD700E74078C0B0B760F757407FCFB7F8B020F040AF9FF0D8D8C0D888A880),
    .INIT_23(256'h878E40E740BFFF08CF805FA71FF7B0D9F7C72FB078F740577F18488FC060670F),
    .INIT_24(256'h79E76FE03038E0389047091880F8A0375807A840E8AF3F9FB850F8FF78571828),
    .INIT_25(256'hD6EF907F77088060FF37B7E76FAF3707A700106F38F030407FF0D87FF8682E20),
    .INIT_26(256'hB7C8079FA8D0BF67D070A0B05000EF30DFE0A77768BE1058B047AF88D85FEF78),
    .INIT_27(256'h9F80C8889FB070CFE80748F898BFB04FEF80FFD7B05027B030F06F68B06818D7),
    .INIT_28(256'hE0E0EFD00748B0AF9FF890A79FD87088F8307828C84878BF28B8D02FC110D8B7),
    .INIT_29(256'h4F90975F2868DFC0D817888038D069F00050F758B0675F60DEF0187727189F70),
    .INIT_2A(256'h8FEF80F7B810E71F58C8E838B7D72F6FD06068780808DFEFD817F778F70FFF1F),
    .INIT_2B(256'h0F9F50B0E82F176FE898C8DF78006860B7FF28D7AF4FF80F88D797987FF7708F),
    .INIT_2C(256'h2F9F1F88F7F88F48FF9007DF7FC7D8E007EF2807AFDF682717572767EFF82F17),
    .INIT_2D(256'h90AF5738882760B77828E03868D71FF758973F00D0AFE0E74F27FFFFA7CFF7CF),
    .INIT_2E(256'hE8B7D87F0810A7CFE010E018C0AFE7B8C8D790C8F8B1A0E880B8DFF898D098A7),
    .INIT_2F(256'hE8E06F7F18A61FAFC718FF887F27A8F867EF38E0C0A8EFC79817B8C7A890C7D0),
    .INIT_30(256'h9040E0BF7FC86FAF28B0EFFF10AFC8D0D06F709057B780E7A8087878F8E8576F),
    .INIT_31(256'h98F0C8D86F8F4F30B027C830C0F850D8C868302F48F0085838C87078304F674F),
    .INIT_32(256'hB8388F4FA7D8487FEE2F1730770777AF674FF7D72F30EF08F7F700F71F88D7C8),
    .INIT_33(256'h084FF707E7F870F0DF5F68D8571F589FEF6028DF270FDF879FFF2038B7F810B8),
    .INIT_34(256'h275F5027C8D8C74700580F30B0976FF0A7F900C7D707617898A09F3930888797),
    .INIT_35(256'h4798FFA81FE0CF00684FA0A8D8D86047777FDFC7F0F837CF58C81718D088D0C8),
    .INIT_36(256'hA7E0DF4F908737071818B7EF081FB78087A03FCF570F40A820A70F77C7107850),
    .INIT_37(256'hAF392720F7B0E75081D76F7188C7B85F00473888C778B887001F382887082850),
    .INIT_38(256'h6820C7F7B7B8B8FF9F3FE0209F471F47E7488FFFF87F10184F9FF8977F38D7F0),
    .INIT_39(256'hAF174717E8E71898DF878F00E8D8EF70DF7810C8F007D7CF4707F0BFC7601810),
    .INIT_3A(256'h70F748E80F872847B76F5FF8F78F3F67CFD0C0F8DFE7C03730AF9F577FAFA77F),
    .INIT_3B(256'hBF17A71F0740C760FFF83017BFF807EFAFA7DF7FC090C03030C7270F37C7A068),
    .INIT_3C(256'h484040286FD738C7D6EFFFF89F3878408787FF87273FE7DF40F7287FDF105870),
    .INIT_3D(256'h78F8A0D7B7D8C0C03F3F98A8E7D7EFB768E028AF3F9FC74877DF070FF7C8FF30),
    .INIT_3E(256'h101F47FF48DF403878BFF89F17E84727A77830373850FF2FE72F388FF0DF17A7),
    .INIT_3F(256'hAFEF8F3F4F8718F0A7D82FD7702757B70748E70F10C718DF8FC8A710B8483090),
    .INIT_40(256'h7F97C777BF180F872F30F800AF4F5FB860CF9FAFD7B89810B7F7A0086F1FEF40),
    .INIT_41(256'hAF30A8B80F28C7B7AF9F8067BFFFE797AFFFC81F473F9FBFA827F7985748C84F),
    .INIT_42(256'h2868E8FFE009670751085020D8978FD0DFF1C0D7E7C630481FF0505900207878),
    .INIT_43(256'h579060E768E0787807CF40802808F89F50DFB0D03818272800D7C8688888B950),
    .INIT_44(256'h0F5028E70FF89FB0C8D098BF60C7C7400780E790C097C8D738B0BF40180010E7),
    .INIT_45(256'hF8D86840081898BF30B08808B8E0D8473037C81FE850DFEF40D0C0D7305F6837),
    .INIT_46(256'h9F68C79F875FD83FB008901F4FFF1768AFE750CFE0973817A78F084FA030A788),
    .INIT_47(256'h8F4767471F004828E880F710CF17778047F0E8A7C71FDF9767F78FB09750E077),
    .INIT_48(256'h9FB79818F007F0A8EF176FF718B7A7B860D8E718775780D1CFA0BF973838DF0F),
    .INIT_49(256'hDFE09FD0278738FF1818888828D7175F87AF38F0285FE887F8507FD06737F89F),
    .INIT_4A(256'h7F508FEF870F10379888C710682F4FA02FE88F3FB8AF079817EFE0387FB8870F),
    .INIT_4B(256'h18A8A8D8EFE8C0E84F7048E80027573797870F406020F7B788E838702FF070F8),
    .INIT_4C(256'h98D7D09040480770B000F82778B8F8D09F4FD887C080A81830C7178F68006F0F),
    .INIT_4D(256'hF7A727185F0E079FE0F0EFAFC01790DFCF97D8CFA8F88FF8C7F7E0BFC8D7FFC8),
    .INIT_4E(256'hEF6018A8D06FAF80E8374F001F60B02F8017A067407F074FF89F8FD0AF77687F),
    .INIT_4F(256'h4F87BFEFC09720D8F780E0281838271F3860B867173F88A8381F9F27A8BF3747),
    .INIT_50(256'hE8205808E067B00F604888EF8FB06F70C70008F74F4790C8986030B068B85018),
    .INIT_51(256'hDFB8176047A89F80E78080B798C027C0C868F7A73018D7B7310F8F2790284F80),
    .INIT_52(256'hEF3F1770B0C7CFF818CFB70F1828A0D7B810C848A8C707A09F806757C060AF17),
    .INIT_53(256'hF0AF987000074827E7F028D7D7E7EF076F5F070880E767B8274028F880CF30B7),
    .INIT_54(256'hBF0F7718A88FF7B82FBFEF872800F010FF90AF38178FDF58D030DF6FA8783FB0),
    .INIT_55(256'h1F5F5FB06758D78F17889897C71067BFEF2FE8CFF01037283F20880FD01F57C7),
    .INIT_56(256'hD727DF00E7A78F47F990B7376898D7FF48EF3FFFF0DEAF9FBF80E70737075FE7),
    .INIT_57(256'h0F479068D8EF67CFE050E02FD0005790FF7FF8EF406FA82FB71830E71F8FB710),
    .INIT_58(256'hD7DFC80FEFEF0F5067C7B81848D04057500FB720203F77F73790183758BF4087),
    .INIT_59(256'h2FB79750CF40A8AFB73078F7D71F2F50785007FFFF30180818D82FB871972F48),
    .INIT_5A(256'hE840C0F78F106740C7105F60A8974098276F7FC087B828B06FCFC0AFF738A0B8),
    .INIT_5B(256'h7020BF67DF676F876858E828C8E068C898B018301FB848F0A82728D0B078C747),
    .INIT_5C(256'hD858FFC8AFF7D05838FFE7C80050385800671857BFB8C7285860E817685F9FF0),
    .INIT_5D(256'hAF9058F667380F78B090BFB8D720CF40B078C8C7A078709867E020A7D0682F08),
    .INIT_5E(256'h58F0D8B7C05820DF6F3730B737D75F97AFC8AF87B087B048A05F57E78FE027AF),
    .INIT_5F(256'h47D02F0FD7B050681097B86840D7270F0767D7AF675FDF6F1FE0189007B8B888),
    .INIT_60(256'h3708BF7750170F07E010FF08300717100720D7A7C72740B8D8C7AFE7FF584858),
    .INIT_61(256'h07D848A7B7A817804F47E828E0FF88FFBFE738104798279780FFF8A738E060A7),
    .INIT_62(256'h170780B03FCFE76FA7F07F2048E7F017E8E7EF287F7FF04FDF0F7FC778D7B770),
    .INIT_63(256'h77909F1F07073FCFF87FC03878F028C7685FE787F758AF1F70E030072868C767),
    .INIT_64(256'hFF970020172F2F9F28AF1070A8C8BF0F6748D81F78373F608058F707D7805797),
    .INIT_65(256'h70C720680098A0AF7727307FF728E7E767C0DF37F84037486030500FD8270FD7),
    .INIT_66(256'hB7E000203F97FF384038F718A767971730A80747F7B00050E7605000C79FE878),
    .INIT_67(256'h17FFF840288F67D7A0F8EF7060B87029181708F00F8800E7180807571730A0C8),
    .INIT_68(256'hA07F88B7AFFFA8B89FE7709F17D800F708A08700BF4880BF107017877FC00070),
    .INIT_69(256'h2FF7C8A858F008AF80886F4768381828D0E73F082FAFCF7FEF173028C0379857),
    .INIT_6A(256'hF83890F80727C8085F9020774FF88800074768E0F7BF38F718BF79F7B7A8B077),
    .INIT_6B(256'hF7E74FC7CFF76F008008F0F858DF07C8D048DFCF4718E817A8D05F2018F7EF48),
    .INIT_6C(256'h60383098672FCFE7CFF8B720A09FC8A7B810B78F3F67C0788F877FE7BF680827),
    .INIT_6D(256'hAF8077B7C780A7370F1867A03830A06FC06F1F48EF284FD748389080687F27F8),
    .INIT_6E(256'h0850F0E81F18B07810E7181F17000780E76850C7F080A0282F103867F8000700),
    .INIT_6F(256'h30A7CF48502820C8D7987F0000285008A7DF471FE88F50182FF8C7482FF040F0),
    .INIT_70(256'h8F7F38C0D91F38B868F6E0BFDF80203728C7304888E7B7486068D778E8D728D8),
    .INIT_71(256'hA8DF8FA0D0A8A1788FD8676F37DF4FD07F2837BFCFF889881F5078C740C8D810),
    .INIT_72(256'hCF875897A8278F60772F6770E0376F90A78FFFDF9F081F0F871008201F773F08),
    .INIT_73(256'hE8E008280020702F7FD7E817BFB8A7A758B007079F6F0040B8D038308F6F8F87),
    .INIT_74(256'h8FC82F5F8FAF07B76080A72090FF3FA897E06FBFDF1FDF708877DF7037F7EF47),
    .INIT_75(256'hD800603827278F27070767280030C0C7D7BFE0EF97C8CFB0F8D0204F28481747),
    .INIT_76(256'h370F47E8E0DFD7CF602F97E748D8A7507009E0AFA86F57C0A0900F6078EFCFA0),
    .INIT_77(256'h77BF072FC850375068601847181FE75FC7C0C0D87138289F60D04F7810AF48B0),
    .INIT_78(256'h3E0FC7E060F86F5FA09737D0B857008737587F60F86E5F689060B0180F5F6807),
    .INIT_79(256'hF8E0683141E710A75730A8100F38C7707E873717477F90CFC84718DFD85FA8F7),
    .INIT_7A(256'h08575738A728F0E8B7FF50C7D7F04097A017EFAFC86818F807FFB09817D7D017),
    .INIT_7B(256'h885E71E720BFC8D0A098DF7F2737CF98A717BFFF47CF27DF472FD7AE5F6FAF8F),
    .INIT_7C(256'hBFB8A8D8603080B730F8C0F89FC70F380FB8003FF0DFD018008867C8FF170F5F),
    .INIT_7D(256'h007F57580FB0D05068F01858F008A008F747FF371827470FE0CF87682730B8D8),
    .INIT_7E(256'h970F5F87AF10773830D8C8C0D8400F8838B078679FFF4FA0B858F83F30C89027),
    .INIT_7F(256'h472F179057379F8FD8EF20A0D7E0107738B7F00FB8D01F686F17303F20FF48B7),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[52] }),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[52] }),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[53] }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\doutb[53] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[13] ),
        .ENBWREN(\addrb[13] ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weightROM_blk_mem_gen_prim_wrapper_init__parameterized18
   (\douta[52] ,
    \doutb[52] ,
    \douta[53] ,
    \doutb[53] ,
    clka,
    clkb,
    \addra[12] ,
    \addrb[12] ,
    addra,
    addrb);
  output [7:0]\douta[52] ;
  output [7:0]\doutb[52] ;
  output [0:0]\douta[53] ;
  output [0:0]\doutb[53] ;
  input clka;
  input clkb;
  input \addra[12] ;
  input \addrb[12] ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire \addra[12] ;
  wire [11:0]addrb;
  wire \addrb[12] ;
  wire clka;
  wire clkb;
  wire [7:0]\douta[52] ;
  wire [0:0]\douta[53] ;
  wire [7:0]\doutb[52] ;
  wire [0:0]\doutb[53] ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h26006CD98FA80949D2DFD2297B4E9FEA35A54C57460947A1C460B97BA91F90D3),
    .INITP_01(256'h9CB91FB2B0DDE32CA93A50E3315586B2B92516F6EE80BD17DE68A5F248F36347),
    .INITP_02(256'h22C08F699513F06C57DE8F3B3FF7F9CF376409E83EB0BCCEE464ED619D1B9166),
    .INITP_03(256'hDA9B94C8684A109ADBCB92FE79C316DE27147E7587E7692D51FEA4BA3E1AC70B),
    .INITP_04(256'hDEE8BD639D7FE8A9D9CD108E6E0007B571BA3FF6E1B9663DEF9BCF4FFEABFEFB),
    .INITP_05(256'hDC43AB53D99FF44CC07C345B19DE9262FF44DB439D3FFCD8E63C91ED89D73002),
    .INITP_06(256'hB858EB8831D52CFE2D82C516884D436FDAFF95DA655AD3E744FB0FFBA3AF7F0E),
    .INITP_07(256'hFF0233F78E33C53325051E47D6A16D45BC1532242F415076BFAFBA1F94B1E9DF),
    .INITP_08(256'h0410CD49811F10CF26842F139ED1F95D27DE60956E422D61788C00FA0000C511),
    .INITP_09(256'hDB2E013E8C8D25AFAF8F02018AB10830B39F72826106D6F2BD6115F204192634),
    .INITP_0A(256'hF0522688650A90321E9912963ED00311002437564E441375BE61FF3A14EBFCDE),
    .INITP_0B(256'hBC717F38BFBFDFFDD9FBB1A4F1579ED6B85938B3606806B4F467EEC83DBEAB7E),
    .INITP_0C(256'h506E6B8B95BEFC9A26049604CCF019019F7F491E25E06C1F6927327E8DD21772),
    .INITP_0D(256'h24114D5284B9EC6E790F12161411D04667CC141F8C494BC5D3DA70E66F084A97),
    .INITP_0E(256'hB7B1679311897DFD77046B7B8F26C959593E10BE614113B6F42108870C908C3F),
    .INITP_0F(256'h853705931059254DCABABEFDBCCF96DF603D1FB664916ADDEBBBB6F66C9907B1),
    .INIT_00(256'h70D71F6FB71F8F9FBF67375F40FFE88877678E2797F047AFFFE7300F37205038),
    .INIT_01(256'hD7F8979F6FC747606FAFD018BF1FBF9FFF38D8C0E790A0BFFFE0A00F60576098),
    .INIT_02(256'hCFBF9860B7D0F0374850181FB71FEFBF40A86F7720C7EFBFFF5FF02050F75757),
    .INIT_03(256'h68BEF018986718276770970F30CF08D80FFF1000D84F505787D897672F087780),
    .INIT_04(256'h58E8D187E727D7A02F600F40A7405838D7704FCFAFA080F760C8BF689F0F103F),
    .INIT_05(256'hC85837E72F275F4FB7685F38C0E739E0E13F308876309F284918DFC8A89740EF),
    .INIT_06(256'h6FA0803FCF70D7F7F057883F900F5F500F091F3FB70F7FE85FF09768BF0847E0),
    .INIT_07(256'h28A0FFE79F8887474727A09F471FE76720C7CF4088302F271FF800C8AF370018),
    .INIT_08(256'h18F81F10C83038187798D0EF1828EFE70F2FB01F0868D79037485F6F5060F7F0),
    .INIT_09(256'h67E718778F2FB81007FF7847C7182F002FF8DF3727A830BFBFE8B82F10003F18),
    .INIT_0A(256'h97EFFFE878D7A7F80827300F203849272007A748F0D7AF8EE8576F9FA896984F),
    .INIT_0B(256'hC81779FFD82F00DEC77877C6EFF717E7B75837DF20F8CF804FDF28A6788FF777),
    .INIT_0C(256'hE828D0776F6F579887701F8818A0C7F79F2868D79FD760C0905830B0A8407737),
    .INIT_0D(256'hB7E8FFF7872F1FDF0007F850470F582F20782F9807D0CF2F58D0FF683748F7D7),
    .INIT_0E(256'hE087F8C01860507F58F738A7FF9808B797C0F0201F40D77857F0F84F709F003F),
    .INIT_0F(256'hE85708E8A8570F30DF28E7C0F7305FF00F6038D7C077E898F007F7800860CF10),
    .INIT_10(256'h5F78AFE7E7F73F6F8E772790A00FF87FBF373FCF872838E740BF9FA74FC0D0BF),
    .INIT_11(256'hFFE9DF6F0FB70F1730CFA00878F0787FC7F0DF00BF2877D787F0A02707A8BF87),
    .INIT_12(256'h3E901FC8F0E7F020A01018572018004FA868677028177020C780E790E0A0579F),
    .INIT_13(256'h70D7B0583050B067B070C8A7B8D0806F270F2070D81F674FE7C8F838409FE8CF),
    .INIT_14(256'h1017EF8FE7D898C09787A0D728B8B8F728B77758784030A76F38C8309F978080),
    .INIT_15(256'h10FF08FF3060F7E038E007F8E8D7D820A8483F578FD8C0E70718F76FA768DFE7),
    .INIT_16(256'hE7A747F728B71FB0B7B81FD7380F8FE0AFC04F382F2F7F7740AFCFA7CF5820B0),
    .INIT_17(256'h17B0EF070F2FF89F20C7003888175037C71700889F5FEFF73FF8787FAFC880EF),
    .INIT_18(256'hC79FF86F5FE7EFEFB88F701828286F6FC8BF085FB827FFAF375FB008A8AF5777),
    .INIT_19(256'h788FD0DF27F01F673F7F8FF7D8DFE7300F28BFC017AF5010E808BF6FB730CE77),
    .INIT_1A(256'hC838A70730F0C0B7D0FFEF4070CFCF9857E84047502F07F8C717D890E08F9FA0),
    .INIT_1B(256'h5838C8287088D8FF3F97109F1FC80F285798F890804098109FBFC8C847A000F0),
    .INIT_1C(256'h68901F97A75F6FD0E7EFEF187828F9E0202778C8AF90977770A85FE7E7E0400F),
    .INIT_1D(256'h086F702F28D0106F5FDF28279F282850279F17C8A758D7176FCFF0DFB8C77710),
    .INIT_1E(256'h50A0E8DFF028C03066A74F27B077D8580068C8804F792758AFD717FF1838F768),
    .INIT_1F(256'h50A847B08058F058E72018B0E7205FA040A810B890A837E0C8C717D090378030),
    .INIT_20(256'hBFC7C080A8FF7F18C008BF28D707E8E0B0EFB0B8C0978760EFA0D75FD810B8FF),
    .INIT_21(256'hF088D700DFDFC8EF8F0008E7B7485FE767E0281887B087F00FF82038F8CFD0F7),
    .INIT_22(256'hB7A787078F4037A7A83FC7D8BF47DF07976087672F5FF070805FF0A08F6048C7),
    .INIT_23(256'h40C0AFF847575757D897C0A8700858872807DFE0A8C07F98FFFFD888889038D8),
    .INIT_24(256'h8777AF0F4FC0F7409F1F3F4F780828C70008F75800DFF78FFFB7F7D78F1017B0),
    .INIT_25(256'hF7783FF7779F1FCF47E088776FEF378F271F07C7DFD00FC04737480FF0A7CF60),
    .INIT_26(256'hE8B8588F4FBF37A8C0A05FC080A0581F678888D7AF50201760B037170F075818),
    .INIT_27(256'h10A727477080907FEFC03028D00F2FAFE847F7778800478028F8A848786F9088),
    .INIT_28(256'h704F9F00F750A8C7A8F818C7DF9780960FBFEF6F085A48085F08275F1FDF9850),
    .INIT_29(256'hF79660A7E09FA72F77CF0FE7F0F060F0311E27AF073728EF98FF8F9F70B7CF38),
    .INIT_2A(256'hD99F888F78475857B1AF9098DFC7D85F9FF7314820B0507788491878289F37EF),
    .INIT_2B(256'hE1FFA81788F8F85737800F0F17F73738E7E807E7280758189FF0609798878FD0),
    .INIT_2C(256'hA8BF3FF0BF6F18F0F8A728FFD790C00F8040C8289F10B7D817D0A8776738B0F8),
    .INIT_2D(256'hD7389727277057401F78E067FFF757102F38C0AF38370888A7BF2708909F1FC0),
    .INIT_2E(256'h80205868F75F10F0582730B0E8D7A8E730E0B8984FB81F282760107FB8D02768),
    .INIT_2F(256'hA0FF285780B8300817F0100F5737CFB88F30F837C00740A078D7408008A0D070),
    .INIT_30(256'hE807C7B70030A0E740FFD81FD04867B0B0BFB00FB0E8605FAF90307827071730),
    .INIT_31(256'h10D02817508F9F102070978F87472860E0783860D0488F5077E8B73040E8F710),
    .INIT_32(256'hE797181797FF90B70F8F77578F00A737DFF00F374F6FA7E818CFB7267FB01F0F),
    .INIT_33(256'hCF8F8EDFF788109FD7BFF790F8DF77F79F681FC0674FEFFF3FFF27C71737D85F),
    .INIT_34(256'hE7308F2F4000006F27C72718F7FF4FD737F737170F4FCFA897EF9048DFFFFF78),
    .INIT_35(256'h1017E048C7D80160AF675F176720E71FE7FF000737E830F7683F40C8AF90E870),
    .INIT_36(256'h203FE8AF80281F20DFF75F6FF0F7F880F8177F90FFA8600FA76FFFC0EF8757D7),
    .INIT_37(256'hA7208FDF8F378778272F2818974F1F5FC090F82F87A0EF77A82F0057485857AF),
    .INIT_38(256'hF02767D8F79F0F47A837D8C0672F2FB8C0CFD84008187FAFF780D7D7F0B7EF5F),
    .INIT_39(256'hA86F68B7A03FC7D0505FC05FE7FFC7E0E89FFFC0D720F020573F4040E7AF80A0),
    .INIT_3A(256'h2F27887F3F97FF703F70771F4FDFE07FB89F37681F0F2FAF50C7EF6F681F089F),
    .INIT_3B(256'hF7876F80D0FFD8C82FD0FFC72FB0DF37CFC7D07F17C79F48F818F887F887FFDF),
    .INIT_3C(256'h08C0DFFF00C8C038AF18E05007C77F6F97B067A6C08F2738A7D7002067BF903F),
    .INIT_3D(256'h4F80D87F0F57187F0F300F500FDF48D82F2820E0AF4F773F3FF827F73FE8A768),
    .INIT_3E(256'h960020B73FD8771F1058FFD8873FE7DFEFF7CF2FD0B0C0B8C78F48104F7FFF38),
    .INIT_3F(256'h581F38EFE77FA83747FF48379820F000380FD0AF573F2790F9E0A0C8FFC89887),
    .INIT_40(256'h07C7303F8747E7C788D79660888F2F1FF860677F2FC0CF9817385FBF977787E7),
    .INIT_41(256'h2708D07098264F4F7FE017F007CFF710A7480F6727FF581878C7B0B8779FD077),
    .INIT_42(256'h106FC028B78FC72001D808202828F83F380FE86FC0E027B008D09F07206F089F),
    .INIT_43(256'h1057A72807E7C8A097D057EFBFF7F01848D8F70048601130F83718FF20A037F8),
    .INIT_44(256'h3808677048FFFFA830D710E72737708088B760D0BF6037AF073008CF983F48EF),
    .INIT_45(256'h47774840AFE7F80FC89007071FDFC7BF3F30C04058F7A0806F2817EF0F7FD777),
    .INIT_46(256'h77A86F072F102F8F462727B898EFA7E71767277F579F2FA7E8F71F68FF984830),
    .INIT_47(256'h1F3820474FBF0097E70807E0B01750C797D71F18E75727879FC707E7B7D0D7B7),
    .INIT_48(256'hF0871770119FD87F47F7B860B72F784F002F380F20A70F178F10FF6720D0FF87),
    .INIT_49(256'h677FB8B750E8200F98E8F0E7A868D75F165010C0E8F70F80D6F7AF2F97A08F67),
    .INIT_4A(256'h80687057970737B770488F7080E8083FB78FA738966FB8E86F3F5838BF97C8A0),
    .INIT_4B(256'h170F90AFEF57F790D027906848F8C0BF2000F0E717688770482017E84F187848),
    .INIT_4C(256'hA0507747AF1FF847DE97AFE8A7605898970F3F40EF8F085F302FB7909F103818),
    .INIT_4D(256'h7000B737D7D0A0D0E8874F10D7E7C0EF0F080F001F6F87AF882F37B867084880),
    .INIT_4E(256'hE098164850B738E8FF57101740A8E79F071FF89FC0D0989F2707E047E0C8B060),
    .INIT_4F(256'hD76F37E6D700F080A09F1FAF58BFD81FF8E82830887050875E1FD02F17E0B710),
    .INIT_50(256'h1818811F38A02F087FE0FF30E80037C718187F07D8984028B06027F09FBF4880),
    .INIT_51(256'hC730A0D04FE0FF4F578FB7381F0F3877F868C7B797A7EF884818D7B020083027),
    .INIT_52(256'hB89838DF57C8E08877A84847DFF0808F4F086F4F4767DF58C827EFAF47F06807),
    .INIT_53(256'h97AF27270F2F07470F48701F17BFB6177867F79FB748AF28D0E70067484FFFC8),
    .INIT_54(256'hD830E80720C8DFB7E72800CF879F8F6F771867E85767E8077FEFC777D7C86090),
    .INIT_55(256'h07582FF797976827C0F038E8E02787F04FD708B74F6FEF97D81817D8AF7868C0),
    .INIT_56(256'h57B978FF17F08738EF086F18DF20304FCF57EF1F7F38009FD8A7D0D8C7B82890),
    .INIT_57(256'hA860DFDF30401797875740984838700FF858FF309F87F78F682008C88078B867),
    .INIT_58(256'h7757788780B847188707A04030AF08400817C8A89028B8FFE730E7B79FD7108F),
    .INIT_59(256'hE008980030EF28662F78808008CFBFB0C7A7CF5FC050AFE840D73077079FB737),
    .INIT_5A(256'h98975767B8884010779FF04FB0285077A7F7C8B7283FC797F8FFDFE7E797A850),
    .INIT_5B(256'h0727F06F9FA76F501F9707B09030074F3F38EFE020006087862FF0C7EF501F28),
    .INIT_5C(256'h77B8909700072F787F988F78F8A8686F68E737881068E85850D728D8078898B0),
    .INIT_5D(256'h88A857CFDF1078F0D0E0E8C0D028B8A788B8F8F780F05FE0680FC018F8A8F7C7),
    .INIT_5E(256'h6087E7B028B7D0C14F4FC8A7C080D16F49E7C7B8EFC937F0F738A7CF21A040AF),
    .INIT_5F(256'h7FA888808868CF371F90EFBF974F889F3090DFB8784028681F10EF5FB8277770),
    .INIT_60(256'hD8883F8097DFA120E78F68DF4FA010D7B788900F4878D048C7EFBFEF20206FA8),
    .INIT_61(256'h1F27F70EDE797841589F80479FD8376760E7F7B870C8D02047E77F2F7FC0E730),
    .INIT_62(256'h6FA0B04F9FE770D8BFFFE7A00728DF2F5868F880E7504F10201F08788788F7C7),
    .INIT_63(256'h90681FFFEFE8DFFFD768C038DFEF97B8A7E81FC09F9F97D00F102FA047D8D758),
    .INIT_64(256'h70A787C82FE8186FFFFFF0B70070678FBF786707F8E01FC0FF9F08677880809F),
    .INIT_65(256'h5F5F9757673F70583F5F407787D8C8AFDF2F07D890A8CFA747184058787F6008),
    .INIT_66(256'hB88F583847BF27784838D7C0F0C8C00080DFB038A0B8373740E84FAF70900067),
    .INIT_67(256'h90972F90606878A70080EF37AFB8E72F20B8F728AF30A768E7102867273FCF77),
    .INIT_68(256'h4F67B017EFF877FF68300720A8BF061886887717D88FF867F878476F97F0BF78),
    .INIT_69(256'hDF483FE81F4FC7C778F728101707801F279FD0A737AF0F9FF0F8EF202F88505F),
    .INIT_6A(256'h9727AF08C8CF7F2F00A0504F2097B07F67B75757C847D877E6C7284F7FCF2FAF),
    .INIT_6B(256'h78BFDF78B897E0D7AF9F5F1FEFE82F00275708E70FE81847771840D7F72787FF),
    .INIT_6C(256'h6F4F70E860B70728603F77E01790707FD8FF6FDF88074F4797C8270030F7F027),
    .INIT_6D(256'h509FD8B8489040C737200F179FEFAF8FD08F0F875758E078803F28BF40E7AF8F),
    .INIT_6E(256'hA78870B75FC72F28B0FFAF6FB06FCFB708D06FC7EF3F0830B79FB718B0501818),
    .INIT_6F(256'h1710F88848AFC00F888FEFFF481078F798C71F4008B0A77768D000D76F1FC847),
    .INIT_70(256'hD01F3658918FBF48480FB0C809C0602880B74FE7F7CF8716273F3FD7705F1080),
    .INIT_71(256'h8FE858C75700B8573017EF8FCF48E8C7385710604099E0F7A638503ED8EF1F18),
    .INIT_72(256'h70C7D8902757902098F7E7003797F848503F6818BF1FEF770F0847AF58E06FC7),
    .INIT_73(256'h2F2F7FB7EF7F6FC047E09096EF98CE17AF0F28EF1FDF1008D810E7488FC77FA7),
    .INIT_74(256'hCF47B8081090FFB7406FEF1710F7D78FF7A02727984EB8C897D867B8D7A71737),
    .INIT_75(256'hC78710B0087708CF8F9040A7EFC7576F4FDFC000CF3F979738E7B7A0EF1728CF),
    .INIT_76(256'hCE5F60AF501818F788670F08D70757480FA087D08FF637C10080F7C8DFBF78FF),
    .INIT_77(256'hE000809901B0E07FEF3878C03F185FD7163FEF5FFF9F6FF7F02F70770F37406F),
    .INIT_78(256'h002FA62088FF2880A7F618E77098A0E7882738C82FDF7FAF8717BF86581090A7),
    .INIT_79(256'hE737481FA730A0CF8F27F05F9F1F5650B038B850A0A0783035EFB05E70578010),
    .INIT_7A(256'h37F0689F0F90EF88BF182F902F8FE078B0409760C7C8F058B8E00FE8C8E85F88),
    .INIT_7B(256'h20C8A720182830471F10E088CFE01FE7674010B7E7EFEFCFC017EFE05F1FB8BF),
    .INIT_7C(256'hB030E8DF97DF6010CF9F1010CFF7D0DFE7070FD828904F1FD76F1F87D780A8F7),
    .INIT_7D(256'hA0DF183FE83FB80F4F2FD078CF3FA018D057F7F0D7A0FF7FE0C8E7C8778028BF),
    .INIT_7E(256'hA7384EA0180070A038A768FF7800B98F3037706050CF88D757780820482FBF80),
    .INIT_7F(256'hD7100F1057771898803F9F67B0EFCFCF1018103050870838EE30302F9F10BEE8),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[52] }),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[52] }),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[53] }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\doutb[53] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[12] ),
        .ENBWREN(\addrb[12] ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weightROM_blk_mem_gen_prim_wrapper_init__parameterized19
   (\douta[52] ,
    \doutb[52] ,
    \douta[53] ,
    \doutb[53] ,
    clka,
    clkb,
    \addra[13] ,
    \addrb[13] ,
    addra,
    addrb);
  output [7:0]\douta[52] ;
  output [7:0]\doutb[52] ;
  output [0:0]\douta[53] ;
  output [0:0]\doutb[53] ;
  input clka;
  input clkb;
  input \addra[13] ;
  input \addrb[13] ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire \addra[13] ;
  wire [11:0]addrb;
  wire \addrb[13] ;
  wire clka;
  wire clkb;
  wire [7:0]\douta[52] ;
  wire [0:0]\douta[53] ;
  wire [7:0]\doutb[52] ;
  wire [0:0]\doutb[53] ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[52] }),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[52] }),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[53] }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\doutb[53] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[13] ),
        .ENBWREN(\addrb[13] ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weightROM_blk_mem_gen_prim_wrapper_init__parameterized2
   (\douta[16] ,
    \doutb[16] ,
    \douta[17] ,
    \doutb[17] ,
    clka,
    clkb,
    ena_array,
    enb_array,
    addra,
    addrb);
  output [15:0]\douta[16] ;
  output [15:0]\doutb[16] ;
  output [1:0]\douta[17] ;
  output [1:0]\doutb[17] ;
  input clka;
  input clkb;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [10:0]addra;
  input [10:0]addrb;

  wire [10:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]\douta[16] ;
  wire [1:0]\douta[17] ;
  wire [15:0]\doutb[16] ;
  wire [1:0]\doutb[17] ;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],\douta[16] }),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:16],\doutb[16] }),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:2],\douta[17] }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:2],\doutb[17] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(enb_array),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weightROM_blk_mem_gen_prim_wrapper_init__parameterized20
   (\douta[61] ,
    \doutb[61] ,
    \douta[62] ,
    \doutb[62] ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ,
    clka,
    clkb,
    addra,
    addrb);
  output [7:0]\douta[61] ;
  output [7:0]\doutb[61] ;
  output [0:0]\douta[62] ;
  output [0:0]\doutb[62] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  output \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input clkb;
  input [13:0]addra;
  input [13:0]addrb;

  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]\douta[61] ;
  wire [0:0]\douta[62] ;
  wire [7:0]\doutb[61] ;
  wire [0:0]\doutb[62] ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h96F9A1BAF0D8FED0AB8052445326941BBE65E1D8F0B3BC7A23000627CE484F01),
    .INITP_01(256'hF8EFB4E4615B06D218456B803A93BD50427C34B6F508D115E33D8CB641994B15),
    .INITP_02(256'hBF657DF7B2BBFD77BA65596F0CB9F879FE64B7E8395F94473E0179739FB1E861),
    .INITP_03(256'h35042B148F756B41539AA08861E40292E9BB41C7D609F77FE7BE7D77C30D272D),
    .INITP_04(256'h479AFACCF32E9EB2FA61CBA8ADC720E7C89FB6E5694D0AA740FEC5DBA55FD587),
    .INITP_05(256'hC5BAEDFFE34F06AFC7BECD05E3DE863447B075668A184107C4FBED9DEDDFF39F),
    .INITP_06(256'h052C451815D561CC419EB46DC02D1203639E9625CC440311DF3AE3D648400307),
    .INITP_07(256'h16454B5393E6E568FD9AA2151CC5039BF92752F60C4141259C658B81A2F3AFCC),
    .INITP_08(256'h9D2649811EF1EB5447B45D5DCA594739D8DACB8979CF96C2F3DAEF76EF6E2E3F),
    .INITP_09(256'hEBE3C9923EA2FD5EC1BEF5FCE15F96BE1B8F02405A800720A7A47ADF6EB1FC54),
    .INITP_0A(256'h27252A37CEB1286960DF861C6F678FB3419A4CB963CD6A9BC9B66517C259056C),
    .INITP_0B(256'h679EB0B7CE086301FC61CF51B1C4ED7C7CD2F7AAB9FE90FEE9BAA48448BB9692),
    .INITP_0C(256'h306147FBB2B8AD684A4556610F2A1D2377B2B2D6405147B7072031F016C10525),
    .INITP_0D(256'hBD05FFDBB6ECFD6FC7E4617437810775CA1AB0E308854711C62C6D2B8CBE2D48),
    .INITP_0E(256'h1C606B481DA7B44E80226069252114A2DBDB02E47B408F99188580891502D4B1),
    .INITP_0F(256'hFE654F7EEC1D043D079E8A1D1A44420002512C68CDAFA32B398332680E220ED3),
    .INIT_00(256'hEBDB2304DB9FF03417FB001CE824681350D03B6CE0AFF46B6C740B373B0CA897),
    .INIT_01(256'h4463DF004020FFE410283C2F3C034853581F073430C0FB4F1C07F81728D3D7F4),
    .INIT_02(256'h9BD7ACC82C140723D71BDFC31307FFF0C707A3A7E4F823184BBCE0F4E33FFB98),
    .INIT_03(256'hCB64D0D8E4C7F03C1FEFE8102FE488A497F3E7201F2F34E8C8FB2CFCCF24040B),
    .INIT_04(256'h2FF700C30C0BBFE85767FB334BECA02BBC4723E007FF571C0F4307A8FF6FECFB),
    .INIT_05(256'hE483A324BC0CD8E7FB3B044F3B0833104FF303F4175FD4443CF00B4707F73B17),
    .INIT_06(256'hE8DCEBDF1B174713CCD407CFF41C0338ECBCD0E4F0EBE32BCBFB38FB0044031C),
    .INIT_07(256'hC4240CDF00E0EF34E0CFD4FCC40718D0CB3FE310281860B0EF08EFAC9F14C824),
    .INIT_08(256'h40E30B38072358FCFC0313FCEC0807EC48C80818D85CF7D3242840C85CFC28DB),
    .INIT_09(256'hDFDCDF2B1307ABDC441CF0C7C4E404F3EBA40C28F8C40080DF0FBCFC10CFC028),
    .INIT_0A(256'hF7DBE0F407F704EB10271708E7230303E3DB0CE3102B40F0030F1CEC17B817FC),
    .INIT_0B(256'h0CCC1C142007D40433D8EBFBFBE0072C1327FFF307AB480CF818FFCC13F4F71B),
    .INIT_0C(256'h0F18E0C7D70FE810EF0003E04408E7F0D31CDFF0E3B31FF058D403FB0330400C),
    .INIT_0D(256'h202427CCEC1F273314F8300420EB38E018CFEF04E790D4E3FC13A0180B605B13),
    .INIT_0E(256'h1FD0CC24302468F000FC48DBE730D7EB436B271320D7EB74B7EF24F02F13AB10),
    .INIT_0F(256'h5CCFACCC94372443D4ECFF04BBE783909803FCE467CC4F43F0E8B0431BD4272F),
    .INIT_10(256'hC76C30EBC4ECABE8DC6CD4E7136F34FBEBC7B72FC024640F6083E400030B34BB),
    .INIT_11(256'h1890C8D3D0C7D424C404035C540B8CC85CEBF8FB9F2F14CF4CEBDBEF0B10ABC7),
    .INIT_12(256'h032FB4F4DF1400CB28E41BD7D3F8A7D3F82C23E03FD8341C0CFC372007C3F8EC),
    .INIT_13(256'hB7FBF4FCDCDFD74868E8972F54FC3010E017DCE717C7DFDFDCF4D31CE01B4853),
    .INIT_14(256'h47301C03BBE30320F78CEBCBFF301CEBD3C7EFFF871038433093D4FBE34710D7),
    .INIT_15(256'hE453E3F7E70FDC3474CCD34C1CF37CB428CF14D88B5F17E758D8C818DBFCB0F3),
    .INIT_16(256'h8308B8DB2733E31BCC3FE3FCFF03CFAFDC8FAFE0DF80CB1F70BBD7F80B73F79F),
    .INIT_17(256'hAB17A7E78BD3ECFCD4D47368A0F06CD43B83FFEBA7E71C83D8FBEFBB43FBCCE3),
    .INIT_18(256'hBB8314171733D3EB130F231CC3F707EF430CDB3C1BFCE3F014279708F3E813BC),
    .INIT_19(256'hC4B8FF5010ABEB97EF1BFC98CFF4D81C1467E8EBB7D323AB08F4D7D40F9FFFF8),
    .INIT_1A(256'hD4D700E30BF8EB1738272B03CF0F13FCE3E7F8C70BA0DFE02BC0F7D0F3FCEFEC),
    .INIT_1B(256'hE0EBB414CC171CCBBF2FF4E7C700A3E00BE3141703030BE0E4F8030817B3FBD3),
    .INIT_1C(256'h04DFCB2C184403FBDBA3F70B37E803385C84481F70176B60AF9304FB205BD87C),
    .INIT_1D(256'h33EF27EB2F57D7EB570F6C779B279727A730FC3494940744EF142030E8248B5C),
    .INIT_1E(256'hC44B8F1CA7EBA0F01FEF68F87CC4B0B437F3D3749328CFCF73F81C5B0C28C0DB),
    .INIT_1F(256'h639CE7CB67AF03D003507C431FF760571420FB3CE850CFBC4B1F3CFB38D70744),
    .INIT_20(256'hF704C72F08B40BEB17E01BE3EBDFD3E3E7AF03CB03DF0CDFB70B1C2013CFB3E8),
    .INIT_21(256'h07C71B130C301830E3E3ECCBFBE3B707BBE3130734D713DBC3F714E3B318E3E3),
    .INIT_22(256'h2FA3DB4CAC1C3FB470C714079BEC34CB7C604088F41FB3279740E31B2CE3C09F),
    .INIT_23(256'hEF7F0808E0404310DC081B87A8DF83AFAF13F0EB40C3F434EBE0DF58388B64F8),
    .INIT_24(256'hE323AF14DCFB18C4E7DC341F58D0C4EB1410F31827133C0BECFFEB071CBBE8EC),
    .INIT_25(256'hBFF7A7B3AB40C770B874CB184C0F78F0E4E81414FC0BE4E3AB0FF713FC0C6C40),
    .INIT_26(256'hEBE3DCEB1B1BDBF33F08F31FECDCD748F3271BEBF3F3A050DF20E4FB13A8E30B),
    .INIT_27(256'h17EB172F13E7E3EFAF1C60C7DB1F7B0CA3EFEBD7FF34FF17DCEB1064E3E31C17),
    .INIT_28(256'hABAFAB17E4EC23C8BFAB33D743D3C4BBE7FCDFDC2B2BE0C3740F13DCEBAB80F3),
    .INIT_29(256'hF353282824875B23E7AC93E0F8179FEF98CCEB18D76704D3B30F1093ACB003DF),
    .INIT_2A(256'hC40B432FFF20F73F144B3BF0E30B473C6FD8304F042C3FF357000B1C0FE0FBE0),
    .INIT_2B(256'h5CBF286B23F093CCFF1793E33318382427FFE4FF00E01FEC3BE3C71C33BBBC04),
    .INIT_2C(256'hB497CC070F37EBFFFBFB00E38BBFF307F017100007CF77000318ACE40FEF3300),
    .INIT_2D(256'hC49B3C6018DCD4B3A334F38B63FB9B27EBEF1404D3A723FB0C1803331FAF37EF),
    .INIT_2E(256'hAF9BD7033430FFF723D83720CBCBEBFB031F0F1B1FE7730BAB03AB47E7C793F3),
    .INIT_2F(256'hE3774C5C2CC300BB7314DF8F6F08A3139BB7F403E3C33FF3F3ECE7D7E3A3FBCB),
    .INIT_30(256'h14D30F1FF3333B2C24AF37074820280F671B04481C07DFEB081448431FFFECCB),
    .INIT_31(256'hF3DB03EBCBFFD7CF0F30DBC8E70FC70FFFE8E40C2C58F4FCCBFB0CEF30AFEF2C),
    .INIT_32(256'hFBCC4000CBDB04242FD4241018D03C2F281027502820D7C8203320D70C0448DB),
    .INIT_33(256'h10C8F304231BCBE3C32848DBD4F0D44BEB380CF710E4EF2C2817D80820F328F7),
    .INIT_34(256'hFFEF280803071B075C1CE804A3DB50FF1C3344E43728D33C003C3F7F0098B3FF),
    .INIT_35(256'h64D723B0201F13FFAB4874E79FF38034F31BF7FB43DB1B2B4CEBDC50BFBF53F3),
    .INIT_36(256'h1B3F27FB2BEB00E4F8E80BEB00BC63E33BECE7432F5448BFFCEB0C48FBCB8420),
    .INIT_37(256'h231437786FB74FFC302BC350F8F7776024E0202813DF78CF18040C98CF601844),
    .INIT_38(256'hAB20E8131C34DF27D7D3EBF03B1CF8CFFF188B0BBFE8F0E4E3D33324F3A34788),
    .INIT_39(256'hA74420A897BB440007F4AF3C13EB0BBCEF140C0BCF4FD7D7FC0C130F0B4458C0),
    .INIT_3A(256'h600B2028ECF30C4820FB540B0F5840CB24F34C4464234B87240BFF10247710A3),
    .INIT_3B(256'hE0A7FC8CA00400CB173CEB1437DBE3FB6CFC0BF744009008ECFFBFC3689FEB00),
    .INIT_3C(256'h0C0420C8B7F31414FFA32F5330F024DB40002B501424DBBBDC3B07E3DF0CE8AB),
    .INIT_3D(256'hF7CFF3EBEBE707B378483CC3CB13A32BD413F80B081CE34C140B18EC1CBB0FCC),
    .INIT_3E(256'hE854106F0017C8D88BD3EF0C189FE408CFFF900434E407E72B7FD0849F1B1C17),
    .INIT_3F(256'h007C2FE814F7FC0327B3382F03F47CD728D00B20C01BCCA70BF313BF0F18EFD7),
    .INIT_40(256'hD8C7EF0CDFF4F8B848E0C70CC8CCF00C241FE400DB83F3001C24E3CFE8FCF3DF),
    .INIT_41(256'hE7F4EFE71C14DBE3F3D440DFDB03DF1FCFFBFB08E4ECD3E403F8DFF40CD3EB20),
    .INIT_42(256'h2BF39FE7F71807ACEFF40718D3EFCFEFE34B27AB2BC79C4C98F3136F0B00A44B),
    .INIT_43(256'hD78B33E7C7375B3BE8DB08E8781C2B03ACDF1B13E708EBBBC407172FF02B37EB),
    .INIT_44(256'h9CCF0F23F407F70713D723FFB3133FDC28E70F731BCFBBF70707ABBCDB0407E3),
    .INIT_45(256'h389F586C54D08BBBD83BFFF403EB133820E713FCC3B323CB4FE70BC7F3CB03C8),
    .INIT_46(256'h0B1C28EFF4F0DF04E7F0E3F027272CCBDBFBE717B308E0D803C318F40BF73F3C),
    .INIT_47(256'hA04008DCB8E808DC0704E3381FE8E80000F71F2FD34B0BD7E8071B1F1B2043CF),
    .INIT_48(256'h0BF7EC28F3FC9720D7289BDFC0041CF7DC93EBCCB7FC401033F430CF24F86300),
    .INIT_49(256'hBF73C723144FD8ABFF30F00F10EB843858FCE0EBA444BB00FBEC38E8D4EB9BDF),
    .INIT_4A(256'h23EC3CEFEC28B418F7381F40782014130C931B2C03D7CCEB0C17FF1427832C48),
    .INIT_4B(256'h24144FCFF30BF7F7DC2C2713FCF4DCF8101F18183FC0EB3F10EB504B38537B0B),
    .INIT_4C(256'hF79BDF0F343804CF27DC2BE89FC7FBE7EB1427EB23DB8714BB07ECEBFFC4931C),
    .INIT_4D(256'hCF6B9884300C04DFC327D37B73F4A7478BFBF3FB27BB37F7BBE7D7EFBFE31F0B),
    .INIT_4E(256'h3F30C8E3E0C0C70BB300E0045010CB0CDFE8E7C7E8DF0CA82BAF10F3C7CFFC20),
    .INIT_4F(256'hAFF8EC2FB728B8BFDBFBCB24400CF4E0F0D40B0CAC1C0BFFBC0C34F80B00D008),
    .INIT_50(256'hFFE014047024DC4048C443D7C71B74AF0724145368DC07E00FF0E094E78F0374),
    .INIT_51(256'hEF973C1CD41C3894EF202FF31BFFEB2C83E3F72710E40FDF14144CF44BD8ECD7),
    .INIT_52(256'h13ECFC0F0F07DBFFFBC7032CDCF82BF72BE4E737FF17E810B30B24F3F340DFEC),
    .INIT_53(256'h2BEF433F440C3CDCF33324FB9F1FDF4813F41008D3FF1F3BF820F8EFD3070CDF),
    .INIT_54(256'h1BB7CF04AB97B3DC0CE7D04B03F8F8F7FC132810D8BB9BFB8428EFA30C47C8DF),
    .INIT_55(256'h3CCBDB331B4C2C0B88D86F9787E4C7D3D30C170B0CBCC0641F0817DFD0970B2C),
    .INIT_56(256'hABFC5034B3E7AB68D368ABF83B4F58EB1007DB4BC723101764B89B00F71050CF),
    .INIT_57(256'h6484B7445CE3C4AB032CD75440F470F05403FF07DB23930B7C04F4F338FBCBDF),
    .INIT_58(256'h1CFB3328EF070404F413F8DCE03FD0CCE0280CFC44ACDF03C45838C04828FC3C),
    .INIT_59(256'hC48CE410BF3C13FBB70CF8F7E700B403D428EC2700F42828E003446748F31C20),
    .INIT_5A(256'hFC3CF3EFDF1000F7E0ECF0E3C7E3BF0BA33C28AF00070820A3EBCBCBCBF4AB28),
    .INIT_5B(256'h0B8FB3D3EBFC380CD0D30FD71F1BCF0FF39BECDC10D7D7EFE714FC28C724EC30),
    .INIT_5C(256'hFB04C0FB0F0713E4BFE70B1B34EC2803E8C8E724E3F72BB01CDFF3E0F39F5807),
    .INIT_5D(256'hABFFE0DFBFCF34070B989F234F007BC4EFA4071FCFCFCCCF20EF30A7080800D4),
    .INIT_5E(256'hD0CB4330CFD0F070480B2007E028A01B9CC3EC6C1870BFA754403407384878BB),
    .INIT_5F(256'h38EFF8102FD3D3BCC450579F84E7E860F858DFDB08002708EC17F4D75CA797FC),
    .INIT_60(256'h183C2BEF27F4F01CE7F4331C20004CEC2C1403402BE4385F4407E7032F8B90D3),
    .INIT_61(256'h24134F1713DBD3C32044DB303C072C436C33E4F0381408EFFBE3EFA7340F180C),
    .INIT_62(256'h1CC00F07070F0F3837DB28FC644343DC2B9B773C27F0DB78DB1CD39B24A0FBDF),
    .INIT_63(256'h33D7EBA303E0CCD77F74E0E30F13B437CC07EFF32784C710B3EF2C701893AF34),
    .INIT_64(256'h17275808E4D4D3BF401CF02CF407DF2020201FFCFCDB38E00408E7201F34F4D3),
    .INIT_65(256'h58F0240BE848F31F54E44C204CE42CC32CCB0FAC17C4F30868ECC7540B302CF7),
    .INIT_66(256'hEF0FE8F40407CF1CEC0CC3FCE738200CEC07C008FBFF08E737A8F414E3072323),
    .INIT_67(256'h1C53B3E81C03180317CBD7544C0350F014F8001308FBE0EBF4F0F8DBF80BC3DF),
    .INIT_68(256'hBF283713FFDF0313E337C3BBA8D7F8070400E30CC3F008F74CF72014B70F1810),
    .INIT_69(256'hF4F7135B38F7FC203423EB18ECF0384C1BF3E428A4D313CB4B00FC20F31CE4B8),
    .INIT_6A(256'h5858331BD028474CB82F541400FF1BCC20FC0C1050BCEBCB0C0028DF104027FC),
    .INIT_6B(256'hEFA82C13BF03DF0013300C97B30BB007E34CF3FB44083710C3DFE450440FC3E4),
    .INIT_6C(256'h381CEBE30FF8EFCFF7135B18440327E347041F6860E3FF472CFBC3E71377ACCF),
    .INIT_6D(256'hFFDF3F230FE3EB93FCF4F70B28F4472C3CC7E82C3B102CDF1BE0FB8374FF184C),
    .INIT_6E(256'hB00CEBFF38F8C30897DBFC00D8E80403DBBF7CFCCFFC0BC704BBF818DBD8E4D4),
    .INIT_6F(256'hF060ECFCC4CB0CEF1700181414EC3CE0DFE4F4D8CFE7FCB4F4E313C7EC079FCF),
    .INIT_70(256'h8B8024DC63CF24E3685353779034E818F4DC60DC1BD32808B418CBAB305B00F7),
    .INIT_71(256'h03640FB7C7742407F7172C1414FF0FCFE400183B44900330EC204C37D08B38F0),
    .INIT_72(256'h27C7EFF0D704CBD410F400143F34003FF8374700E493A0D4E81020A7F84B04E7),
    .INIT_73(256'hF3EB18E0F870F0DB83F41FD0E7178BF7003B1C200C70BC1CAFFFF81704C34344),
    .INIT_74(256'h372BF82C28F72CFF5C48FF24231B10EF1C1753F807F00B18C41CF70B0C2F9F2B),
    .INIT_75(256'hFB4813081034283F2848F0302404C72C03E3EF07271F035727FFEC48DC1328F8),
    .INIT_76(256'h03A064D7FFDF0BC7A738E70B489B5BD06724AF7733DC4C5F24DF0858BFEBD874),
    .INIT_77(256'h40B80CE0FCC72FB038CFBC506000C00004FBF32CF344E09F50F76C07A4D85003),
    .INIT_78(256'h173C5C23E0D7B7102724D4233758F403202B3F13C3F0E42FDCDB23D44C13F4FC),
    .INIT_79(256'h4B6BDBC0E8330CF3F050134C50108CCC405BE4C03B87BB3F2FFCE033DF781313),
    .INIT_7A(256'hF3C71444EC9F2FB7E303C80763FBF0B3E844E3072B3BE4F31C0FFB27E803DFF0),
    .INIT_7B(256'h380B07304C64F45F278827D714044BFC0B14E71BC483141350F0CB2BDF174733),
    .INIT_7C(256'h070B07EBF774EB471CD3271324FB102448F730082B17CB4004383C3B23344C1B),
    .INIT_7D(256'h3004643038ABB77BAF1F00F8D3ECCB6CBF241718E848FB301B0B00F7FCFF37DB),
    .INIT_7E(256'hBBD8B414DFD82C081C4817E3FBE018F728372F3803EF4C0B5C0FDFA8B0977C97),
    .INIT_7F(256'hA3C4C8D3AFB7DB0B73EB43145CEB24CC04A7171CE7EBF8A300F0E8C3F4BBE70F),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[61] }),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[61] }),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[62] }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\doutb[62] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_1 
       (.I0(addra[12]),
        .I1(addra[13]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_2 
       (.I0(addrb[12]),
        .I1(addrb[13]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weightROM_blk_mem_gen_prim_wrapper_init__parameterized21
   (\douta[61] ,
    \doutb[61] ,
    \douta[62] ,
    \doutb[62] ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ,
    clka,
    clkb,
    addra,
    addrb);
  output [7:0]\douta[61] ;
  output [7:0]\doutb[61] ;
  output [0:0]\douta[62] ;
  output [0:0]\doutb[62] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  output \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input clkb;
  input [13:0]addra;
  input [13:0]addrb;

  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]\douta[61] ;
  wire [0:0]\douta[62] ;
  wire [7:0]\doutb[61] ;
  wire [0:0]\doutb[62] ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hAA61E5F8A33EF5E445BEFF2FF76FFFFF27966F1586E02B60FF61C7040C95984B),
    .INITP_01(256'hBC616F5337DEED4CD9BAD29B614312B73B2133335E51DD15FE6045FAB0D2E14D),
    .INITP_02(256'h9075E088A11334CC06602B5995B6F94CA67C4D1FBCBFFC5CF825E5688D1BB05A),
    .INITP_03(256'h787BA4E9A54FD197C8DFB4EE614E9783EB07D88426230C710BCB42101F800D71),
    .INITP_04(256'hDC247DFB94DFF5CF439BB3F6EE714715008EE008D0009682419ADA8D73CBC29A),
    .INITP_05(256'hF85BE93831A6875FFD41FCA929DE92F3CC0BBCEF940D5C9BDA611DFA289FF54F),
    .INITP_06(256'hB8D3EB9B3F8FFEFA938A92544E000735F89999FA60D7F2DA0070CF59D6CFB36C),
    .INITP_07(256'hFB9696B46E49473704018E418724A505D92736F664414535672148C5A6B67C9B),
    .INITP_08(256'hF8458528A43EB8923EA46B1B3EE5F96ECDBBEF93B724DDD7370212A00E308811),
    .INITP_09(256'hF86374B4610B212D519E9A2D9E740A9BFBDFD2EA79C296B23E01322B0E30D890),
    .INITP_0A(256'h409EB4A8A15F9692479E90E6CE086B11B99E14670E094401B8416B8937AAFDCA),
    .INITP_0B(256'hB8616F19BFDFF57CC09EA488A15E9292BA614DC17BD797CC459ADC5FDEF9FB9B),
    .INITP_0C(256'h409B3C45975D499BBE65A4FAE43F7829039FA2458AE10701D84376E42C490125),
    .INITP_0D(256'h438E1A140E200A113BC34BC11EA2FD7A0F417F379485E4689286A0C47A401E93),
    .INITP_0E(256'h358E82A9862108920A0452230C244820FD8236B65C49411770655D5E6F2527AF),
    .INITP_0F(256'hFC615F776FBF657C419B92C8606696B225982A05DE200F11F9DB56567DC147AB),
    .INIT_00(256'h07641C38C3F4480FC03800EB07E30BE3D70C08BFF854285403BF0800EC30A3E8),
    .INIT_01(256'h9FABB8ECC0C7DCF840B7EB00301848DCFFC4030B0793F0D31C0B0B5003F01807),
    .INIT_02(256'hB707482018F3B74CD8F8CC0C3B34241F082FCC10C803E7E793C8B760284F680B),
    .INIT_03(256'h3488AF002CC3CCABAF180FEC18FBF40300FFF424FBFBC4F45C0B28CF00AF27DB),
    .INIT_04(256'hDCE3E7FB0BECAFBF0CDFE004B7D3CBF8DFDCD0CBDFDBCFD7C3FFBFECDFECC7F4),
    .INIT_05(256'h1797104328EC0BA8CF0BE0C7D7DF930FE3B3FCDFB8ACE7A41014DF1CFFA4D8DF),
    .INIT_06(256'hCB48E8142F23DFE31740CBF4D7CCBC1CCCE4E4F837D058DFF8EBEC001BD40017),
    .INIT_07(256'hDC60E704E80FEB3060E8F838502060CC9CCFE71423D314ECE0FBF4EBE780382F),
    .INIT_08(256'hE42FA4FC27044808DFDB47D70828FB13E0DBC71C203C279B10F31844E4A33BCB),
    .INIT_09(256'hB7FBF0BBCBC3B31068C39B103710240813F00B0010FB30BFBBEFEFB3F014FF14),
    .INIT_0A(256'h13EB3BB49BDBE34C14E800E46C8818E0F8580BF4C7A37CAF681C348F34A354DF),
    .INIT_0B(256'h0704DB8F7F18A0EB4418D754941F4CAF7C6CF4D32C339BF83F07F7D34417AFF4),
    .INIT_0C(256'h60D4FB27283C10CB14FF302B4C07F3F33F146CCF14039B68C348E79F28D097E4),
    .INIT_0D(256'hF3AB2387E70C08EB8458FF8F9F149318DCE318B3485CDB70BB1F0BF8E030D7DF),
    .INIT_0E(256'h0720EBAB18E0FCF8BFF314E7F7DFD403C7AFB714E4C41FBF40C30B44BBF31C00),
    .INIT_0F(256'hEF58D8CBCBE30C2C1FF4DF2307106CD300C0FC0BFFC7E3B713EC1FD70C0CDBE0),
    .INIT_10(256'hEF500837C7D750EF343C18EBD70CC7F7E368F8D7380C085718D707D8DC07C72C),
    .INIT_11(256'hBBC3AFD0EC232050300BDB103CFB4CDCBFBFEB1827BB24AB0CF3DB50C410543B),
    .INIT_12(256'hD018D3EFF3E7070CA720E3EBACFCFCFCE3B08BBBAFFC0C4813CB14F4CFDF3730),
    .INIT_13(256'hE43CD74B1493DF101CEBDFFCF4F39C1440EC101C7FA800A31B0B17E0ABF0C4D0),
    .INIT_14(256'hD84C6FF717E303FFAB03EBFF50E7E313DFEFA3B7F31868CF23F75834BBC72313),
    .INIT_15(256'h2013442344EBE70B5BEFE0435B03A3209B38F410DF2BE3AF1CF813D3DFA00BE3),
    .INIT_16(256'hCB38C007280780F3183444DF0414DBE71343FBD348F8045CD0BF0B2CEFFB0854),
    .INIT_17(256'hD42C13E004140F7C60BBFCF81CF034D4BFCCF02C17033F13BC130F08DB704037),
    .INIT_18(256'h30803BF3FCE79BEFD8700050BC500B083B0B643CF8C30B8754B8E4C42B4794D3),
    .INIT_19(256'h44282047B470ACB398F77343E31BB3982CFC1B2438ACE8443B006BDF370C3728),
    .INIT_1A(256'h0B08E42C0CF7CF0B1737DB241807F3EF085B2B1CBFCC004314FCFFA8377714F7),
    .INIT_1B(256'hB4E8E718D813BBEF18244C3300FFBCACE4F307FBEF5B1B1CF4070F1348FB5C2B),
    .INIT_1C(256'h34F7CB37171C64DF639B580CDCF0E317F82438F374F7C3F87F275C0B072BA3E8),
    .INIT_1D(256'hC7A35813C760372BEBFF38B4A7F43BDBAF24FCDF68A46748B7F3CB47CBE7F718),
    .INIT_1E(256'hD01BD73847D414BC5CF30008D3D4E3E8DCCC50D3202424F4BB4030FF14B8CFF4),
    .INIT_1F(256'h03C3ECC3F3203B0813BCECC3C710C7EFAF14E417406B0434B3F3F004F70C00F0),
    .INIT_20(256'h17BBFFDB0313CFFCFBB00B18BB18F7EBF7FF07030B0BC71CC32753CBF33CE713),
    .INIT_21(256'h33C75B382F0F53E79F1C1CDB9B08C33B9FF31CECD70FFB13E00B1818EFFF1BEF),
    .INIT_22(256'hF7F307EC542018134B28273B132C0C2FF08B4BE024DB7B64DC7C433B176FF47B),
    .INIT_23(256'h106B4B772C307823A72C4B1F97ECBB1CB4F8FB630347075B0F073373FC3BD730),
    .INIT_24(256'hFC93DB18D3D7D71410E0FCD0082014E814D42C2C18ABDBCB071803C71CF4049B),
    .INIT_25(256'h33B318170714C8A7DB4700F4E31BC0E7FC14E0EF2C08D8D8C7E0F0F42FABEB0C),
    .INIT_26(256'hCB442CE30793242FCBE74BFF8BE7D387CBA3DFCB53D85854FFBF1430CFEC97E8),
    .INIT_27(256'hD39F04F7DBE77B847703CB0853D43C341FDCEFDBCB573487D0E3DFE8A3547F9B),
    .INIT_28(256'h23446018D3101C0F7F3F10DFC3F3CBB7A4D09FB314A4D8C424C81C24E077FFD4),
    .INIT_29(256'h83C303F4F04FFF20FC9C4F5BB317CCDC530410FBC00B40C3FFFB9390F32BC00F),
    .INIT_2A(256'hC30030F74BDB1C471F340723B3BF1BD30B930FEFD7BF084CB32B28DBE728CFF0),
    .INIT_2B(256'hDBEF2B6FC3FB77280C4B641CC807C4ECFB07F0F3D3A81F0FDCEFEC68D7D4EBA7),
    .INIT_2C(256'h2068F027F31420C777FF04E7BFFFBF14D70410D71434EB38E493EFEC0018DBFC),
    .INIT_2D(256'hD7A7C8D4C8CC30F404CF0B0B130300D8CCE4EBE7C8D70808E81FF000EB1840E3),
    .INIT_2E(256'h0350DCF3130004EBC300CC3307E7BF1BC3171F1708FBF4C008AF0CE8EFFFE0D4),
    .INIT_2F(256'hEFF3B4C7DB07100000E31CE8F004D3EBE7B8FB24FB0C17F31013ECF3EC502717),
    .INIT_30(256'h9BF80B9F24F4F70BC3A70F189BC38BEBA30797C7131BE3C71F8BF8806FCB1B78),
    .INIT_31(256'h6C5FA038580320044BA3CFEB171C9313E3EC141CD3A7FF7F3BFF0FE3EF9013FB),
    .INIT_32(256'h0CDFC72C040B5807F8A350D70FE0EFD4C7F7E8EB2C0CBF1FD3EF0FECFC3BE774),
    .INIT_33(256'hBFC7FCFFCB3C5C14B30B13EBAF2F03FFAF2418FFF80334E7C7EFE4DFEF20D318),
    .INIT_34(256'h13F03040EBE8F408582704202F0B5417403B586014CCEFD73067D3F42FC76FA3),
    .INIT_35(256'hE00417E02717D8C7BB586408F818B71CF31F18F83007D02B00FC2CF750C72F24),
    .INIT_36(256'h0420EF9BDCE8FCD7CB230817F3CBA7F3A3ECB7A7DBCFC800BBCFB3B79743E718),
    .INIT_37(256'hCF40AFBBE31C082CFCBF34EB170CF8D0C3BFE738D723E3E3F7041CECCB48DCE4),
    .INIT_38(256'hCF08DC0B37EBDC30E708BFF748E0F04703D3F7D4B7D43C03FB3F4473D713EBD7),
    .INIT_39(256'h07F0AF3B23CBD7EB6704C72C330F4BEF3BE8132BE3401B10C8E8240F03FF0FFB),
    .INIT_3A(256'h08A0FB100FDB3F301CA364101C4C34E73C93186408F0407F144BC7973C530843),
    .INIT_3B(256'hA7B30FB7CB1350BF1014E31F2CF7AFF33018F3DF4CFC9714A7FCCBA364A7DF28),
    .INIT_3C(256'hBB07184348DBAFEC2700AB0844E01807F817BF4C0BDF20BF2813042020EB24E3),
    .INIT_3D(256'h206C2B0804FF501B30183C38541F18D3E8201C23EFE7CF081CE30C0F043727DF),
    .INIT_3E(256'h83A4A880E3C7F32C44C01B0FCC6C43D72BF7485C40A3FC97346CDFD754A4EB83),
    .INIT_3F(256'hD75FC3D7F31BDFEBC87440C804F88B58E8380BDF38C8DB73A31BABB75C730F3B),
    .INIT_40(256'h6828103CDCF0C4101010C0EC5C54186CE7574C1CAC0B580B340810C3644078CB),
    .INIT_41(256'h4434E3CB2BC8BCD0244C40105413F4284C4810EC18848840D313BB3B233C4344),
    .INIT_42(256'hE017FFF823FFCBF00827E00810BC0F0CE8CC03F8E7AF28DFD8F303F804E0E8F3),
    .INIT_43(256'hD8F40B18F8F31BDBF703E0F7E317F7E4ECBBFB28FCE0D8F0D7082CF7080FDCE7),
    .INIT_44(256'h1B18E893DBCBFB1897FBCC1358E80CFFC7C37BE7FF1004A740B3E82B8FE3F807),
    .INIT_45(256'h0C54FFFCF0F3FB38DF10E82018E3AC1C50F8FB34A34BC3A714105CB3F868C3EF),
    .INIT_46(256'hFF3CFC2404EC58272438E8F7CBEFFF1BD02CE8B7E85030A4D31F20EC0F63DF44),
    .INIT_47(256'hCCF0C8F0E40B0C1810EC181718F41CECDF0B1C140BDB44EF2817D86CD300401B),
    .INIT_48(256'h2F001C44D4C7F4205044D8F78308102FE87C33D494272C34F4507BBF182F1024),
    .INIT_49(256'h1340BB87E7FB7830602B0F44340840BF3C88FCF32827F857371BC313CC288FF8),
    .INIT_4A(256'h3C97BFE4F00800A7FCB038205403770CD33750A750E79348A358C3DB202C7F24),
    .INIT_4B(256'hE388EB4BAB38EFCB5BEC50B7E7EF73EB9CDF0FB3248CB734B7FCE040FC1CF348),
    .INIT_4C(256'hF7000CF0D7FCF72037CCDBF73CF82C0720081014F738B824C0343FA7E41CD0EC),
    .INIT_4D(256'h17B40BD0071F07DBB75024C0DFFB972BCC1810F8C420C308040CEC24D0F408EB),
    .INIT_4E(256'h3FF8B80C030794FC2F1C7004B81BFCD33418F368603330CF0C2CB70CF73B18A3),
    .INIT_4F(256'hDBA7FCBB97282F03489CE33C240FCB8818E8F0FC288C1823D008B7AB38E74B60),
    .INIT_50(256'h3850E8FB00D3D8D8C733FB04FF00FB1BE3EFF79BCFEB24C8FBE3101FFF5BEB60),
    .INIT_51(256'hF738DFCBA74353500CBF4F44342400FB2FA3FF07EB1BD3E3CC083B0FF75803FC),
    .INIT_52(256'h1007A814D3C7FB6460334818A8175CC03CB4186004DC1F1350240B1B28746CCB),
    .INIT_53(256'hEC0CA4ECD43C10C0EC7064E0FCFFE8180C3407E3108C0B285CDFEC2B48C78BD0),
    .INIT_54(256'hB0A06318EBC7CF4C430B0813DC187C148494F460DC24FBE72C5418FF3C6030B3),
    .INIT_55(256'h0CF80C0723C3B38CEF7470CFE3E0E413D82804C740083B08FBFCC00328BBBB14),
    .INIT_56(256'hF41BFB2C780764EB78B05CF4FBF4E3E8F30058A728E0E0209F8827EF3C3CD724),
    .INIT_57(256'h139F3F1B08441C00EC130C9FDCF49B289B3CF3F85CE36320B30CE03CC32C0C58),
    .INIT_58(256'hB8BC0BDBFFFBB427E7C4EFFBB70F27E4E3CCEFEFCF008FD7A32F07C7D71FEFD0),
    .INIT_59(256'h2FAB2F3754AF00B8A43B039C640FAB83ABD30FF8BFBB0B2303F310B4D3B4D4A4),
    .INIT_5A(256'h14FBB3F4CC18E0DCD4AF17D83FF49CB4D424009C047FCBC8F3D40F03CC7B106C),
    .INIT_5B(256'h7308C7A79748C43410C36803131018CB24F80B17D8CC04C0DBF81F0308041CEC),
    .INIT_5C(256'hA753E71F200454E770E34CD3CFEF9F1BCB286C772C07F72C677364F70003CF64),
    .INIT_5D(256'hD39350631B64783FFF0B03D3E7F46F0F8730EB2F5C8B343BC31C173CD3577418),
    .INIT_5E(256'hB31CAB83F3D7B3DBA3FC33E3FFC7EBFF73C77F9F1B7F548F539783BF936B2453),
    .INIT_5F(256'hC708FFC3E70F4C60848B6F83BC14DC9F548BF32F739BC79728242FCBEF4804E4),
    .INIT_60(256'h4F40F030ABF39C1853BF9C0FC4081CF71C0C384C285F77EF1C37D71F44702863),
    .INIT_61(256'hDC8F0B5C7F78500350C827405003CBBF5CF4FBEF5C90C324F8EBAF134CB73704),
    .INIT_62(256'hF8643704E803BC4FE7D7FB146444BCF4807B4FC033FB84F44824102317DBA0E7),
    .INIT_63(256'h573C04332F2FE39B7443C3EBF7E7ABEFD013E4240394F45F7CF80C2B509347C8),
    .INIT_64(256'hD7FBBC2817E74C401F1BE3CFB8D8F4F400B8FCE8D3305C072C0CF030F40808EB),
    .INIT_65(256'hB82CD3C0D0BBE32868ECE84068FB6CBCFF0CEC1B2C934B00E8F4D0F8CC03C408),
    .INIT_66(256'hF70410EF0CE7E4F707D017FFF7F333CC1BF70B07FB0300E4B3171CE7F714E3D8),
    .INIT_67(256'h2CCF703730543820FC2F43F8DB07C7F81813F3ECDFF0072B27F8202013F02BE3),
    .INIT_68(256'h18DFC7FCD723EF1F5CF800385F280034601748ECB7E4D324E72C649328BBF3FF),
    .INIT_69(256'hFB0708F30048BB0FCB07280707ECE32CFC4BF72778B44C38BBFF2F2408BF3B48),
    .INIT_6A(256'hC31800A813F7003CE41310041FEC34EFDCF3C44C1FE0270387AF8018D4135C13),
    .INIT_6B(256'h24471314FCEFFFFB0FB31C1C4F1F74E460C0DCF3A0FFCCDC5814C8DF23F3CBCF),
    .INIT_6C(256'h30280CBBCCD7B008D030D04F3C08F453CFD3E0E3D4B038C428D7CCC8C06BFF1C),
    .INIT_6D(256'h0813CFFFDB4CD4DBC4B84434170BEFE708BC1813F020DBECE8FC203F182307FC),
    .INIT_6E(256'h63304C30B8E7E008173CEF2B2F44942BC0336F70CF0FE818144333EC0737606C),
    .INIT_6F(256'h48E043101847ECD8F8404F0BE8DCEC1B0C6F10E0D347E01F800714FB0CBC273C),
    .INIT_70(256'h24ACF81CD8BFB8B06834E04B14BC00F01C14D03043F7F4A06C282F07FCCBE0A7),
    .INIT_71(256'h07EBD7DB005C003C3094F72818F013E7046010F4B4D02CE853FC04D0C8FBC408),
    .INIT_72(256'h44C33BECD0D024443CEB280CC80C5C8710CC3C4C281457C7443413CB0C6BF88F),
    .INIT_73(256'hC097E897BFE40CD3F85C3F3B370FB3288038F8CF2CF0C810CF1CD7B370A7DB08),
    .INIT_74(256'h6B182810F3F73743283CFF1410FF5F081BFF2038EF003C2B240BC437035C3003),
    .INIT_75(256'h1C131B0FEC03F74B7014340C44EF602490C30FC01F289B233017FF333F40F3EB),
    .INIT_76(256'hDF24504324E4B8136324B82C573038FB1C477F27AF1B0873AC134FEF5B6FF027),
    .INIT_77(256'h2B64D3EF00FB6BE3EB683B63F8F86407E8670B0C5357E337FB0CE853C8484FEF),
    .INIT_78(256'h2887CBF4A79F50FCEB8F344B0F141CB718D824503CFF97AFA30C972BEC14E8B7),
    .INIT_79(256'hCB83BBE0BF302BDB97B4479BB704C3570BF00BEF1CABF7440FEB1BD73087CF04),
    .INIT_7A(256'hE4F73FD0E0E3B810030CB42B78082023480B0F44AFC0F7DC236340D7039344E3),
    .INIT_7B(256'h3C4BEB3854F008A0D47883CFFB1B445F0804F437DB77A72F4B08436B34AF33C0),
    .INIT_7C(256'h43E8AB23170F041837E3E8000FE3EB1BF74830FB28A7C350DB2BE8BF0F1BFB23),
    .INIT_7D(256'h13DB30603F9C4BFCD72033CFAF18CBF0EF0007E73B27FB08D7F30337DF23305B),
    .INIT_7E(256'h23E0A407F0F0F4F0D013F0E7F3DCF8930CECD30018D330BB18DBD4D4BF774017),
    .INIT_7F(256'hD3CCCCB8CCC3082F08C05707540B9BA31CD004F8C077D8AF0BF0E4A324F0D3E7),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[61] }),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[61] }),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[62] }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\doutb[62] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h4)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_1__0 
       (.I0(addra[13]),
        .I1(addra[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_2__0 
       (.I0(addrb[13]),
        .I1(addrb[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weightROM_blk_mem_gen_prim_wrapper_init__parameterized22
   (\douta[61] ,
    \doutb[61] ,
    \douta[62] ,
    \doutb[62] ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ,
    clka,
    clkb,
    addra,
    addrb);
  output [7:0]\douta[61] ;
  output [7:0]\doutb[61] ;
  output [0:0]\douta[62] ;
  output [0:0]\doutb[62] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  output \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input clkb;
  input [13:0]addra;
  input [13:0]addrb;

  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]\douta[61] ;
  wire [0:0]\douta[62] ;
  wire [7:0]\doutb[61] ;
  wire [0:0]\doutb[62] ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[61] }),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[61] }),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[62] }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\doutb[62] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h4)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_1__1 
       (.I0(addra[12]),
        .I1(addra[13]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_2__1 
       (.I0(addrb[12]),
        .I1(addrb[13]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weightROM_blk_mem_gen_prim_wrapper_init__parameterized23
   (\douta[70] ,
    \doutb[70] ,
    \douta[71] ,
    \doutb[71] ,
    clka,
    clkb,
    ena_array,
    enb_array,
    addra,
    addrb);
  output [15:0]\douta[70] ;
  output [15:0]\doutb[70] ;
  output [1:0]\douta[71] ;
  output [1:0]\doutb[71] ;
  input clka;
  input clkb;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [10:0]addra;
  input [10:0]addrb;

  wire [10:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]\douta[70] ;
  wire [1:0]\douta[71] ;
  wire [15:0]\doutb[70] ;
  wire [1:0]\doutb[71] ;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],\douta[70] }),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:16],\doutb[70] }),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:2],\douta[71] }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:2],\doutb[71] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(enb_array),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weightROM_blk_mem_gen_prim_wrapper_init__parameterized24
   (\douta[70] ,
    \doutb[70] ,
    \douta[71] ,
    \doutb[71] ,
    clka,
    clkb,
    \addra[13] ,
    \addrb[13] ,
    addra,
    addrb);
  output [7:0]\douta[70] ;
  output [7:0]\doutb[70] ;
  output [0:0]\douta[71] ;
  output [0:0]\doutb[71] ;
  input clka;
  input clkb;
  input \addra[13] ;
  input \addrb[13] ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire \addra[13] ;
  wire [11:0]addrb;
  wire \addrb[13] ;
  wire clka;
  wire clkb;
  wire [7:0]\douta[70] ;
  wire [0:0]\douta[71] ;
  wire [7:0]\doutb[70] ;
  wire [0:0]\doutb[71] ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hBE41B0AA29DE9CD2AFDCEB0DDBB6FB5AB86CFD59B5FFFEEEFF652DB6EEF5615D),
    .INITP_01(256'hDBFFE7BE737FFAFE1F506FDFBFA4FD5C61209A3F8C11032BDAB292FF4D604387),
    .INITP_02(256'h3704695B5F144D2F344C591A47AE622BBC616F39B9BFBDCE63815A4766A42E31),
    .INITP_03(256'hAF8D6BF5F2A4EF39047E04EF10CCC28621DBEA0DDF671E9B8DBBD0B5F2529625),
    .INITP_04(256'h9F4DC7ACF10EF49EDA779FB92187B6CE8E7945F320D8E7E48802B49206D80084),
    .INITP_05(256'hD379DD30D36EC364E7BB84E568698BB5EB85DF76ED214D0140A1A51190592044),
    .INITP_06(256'hBE642DA8B9FEB9CCBB7A0D1B37B9FBDECA951476CF7991055FAA38121A204B0A),
    .INITP_07(256'h9E01CF9F7EE5FFFA89BB367388490785FA231AD7A4314C15378D5B57DBE06BCA),
    .INITP_08(256'hBFFF7BFE7AF57BD86255FD2CED2E2C3F0E7E4CBE714EDBAE7F88EE2FFF6EBD9B),
    .INITP_09(256'h418E7096E4B10E117274957919F9436F15D65B4D1FAEED7BAF40EA8DFFB6F818),
    .INITP_0A(256'hAF885A259AACAC69F9DF86BCF55B77F075D292FC4EC843D7FA6169D2B231A574),
    .INITP_0B(256'h8FD938D66EE04BF1D864EB5395FFB4EC71F85E29150FD096D987808C2D410793),
    .INITP_0C(256'h9C646B1192B6B06C794777FA6F0DCD31FFAA5B365EE8E9DDBF2001BA3EA2E95D),
    .INITP_0D(256'h1C17FFDBF4E5FDCAFF2024F62EB9E16D53B200E66B404393F6F2B2EBADF9DB6E),
    .INITP_0E(256'h2E44FD489DBFFCEE272C51866E31699D51BA0BB657C9438D98EB40DA60019694),
    .INITP_0F(256'hFC658DAC6CBAFDCF64DAB2AD68F89A1A6055D569851F9463A3015E0597AC6CB1),
    .INIT_00(256'hFBF7E412E9E7EB14F0F5F2FC17FC04F210DFF8040F0121D506FE0EEEF6F818E7),
    .INIT_01(256'hD8EADBF2D8DCC1F112F4F61814FC16FC0602FC28F8F501D6E60AF9E222E5F713),
    .INIT_02(256'hEB0BF3E10AFE08B8FBEEF9F5D8E0BDE3BDEEE1B9F5F5FE18E0D9F925D7E4B942),
    .INIT_03(256'hDD16E9EBEB0D2B2218E9FB1AFEF91805D1F3EFFCE6C00AE10FF516F9C70202DE),
    .INIT_04(256'hF2EB06DDDE04D5DDEC22BFF416DDE310DFFADCE9A409FEF004FA26B7E30EFD1B),
    .INIT_05(256'hF52AE902F9E8EBE3E3EC2AFAEAF80400FACDF611C618D3D610030C28FADB02EC),
    .INIT_06(256'h0D01ED01F8041AF8EDF708EDE3EAF006F70507DDF1FF0326D9E308F9061CE204),
    .INIT_07(256'hF310F4E7E8F1FD340FDF1903010802E5F300FFF00A061C03F508FD13DB1CED1A),
    .INIT_08(256'h28D70E2ABAEC0CF129F2F201191C161122D73A2A0930FBB9DC36300D2AFDD8B9),
    .INIT_09(256'hF1C917E4EA06F10FE01EFFD50F01DE13E75600FA330DFA1ADDF6F5E7F8F1F1F2),
    .INIT_0A(256'hFD15230BE4F7040D18060EF607061CF81703141D1C28F4F91818F42DFE09F8FD),
    .INIT_0B(256'h20F5FC00260003F8042BF7030F0F1420E41001F1F619EA0A0D06F1E9E0F1E3EA),
    .INIT_0C(256'hE41ADFE9D9E0F3FECB0EE81300E80707CDC4C5FDD5E124BF00AB12EFC2F80404),
    .INIT_0D(256'h0C0600F7F9CEEAEC26F300FE3C033C0B0AE3F90EC3F4EBD3E9F400F6DCECF2D6),
    .INIT_0E(256'h1EDDC3EE1810F4EB06DBF2F3F9E8B9F9DEF4FCC0F803E910AFF9FEF7FCD2C71E),
    .INIT_0F(256'hE3E31BE9E91AF4FEEBC5EBE4D9FBC7E1FBF0F1010CD5FAE8D313F9FCDAFBDC1E),
    .INIT_10(256'h0BF8EA090DF9DD0FFD3EF30B08EC02211F09E90AE9E0E6301A17DBCC185C04EF),
    .INIT_11(256'h00FAE9150D11E1FAFC003808000624DD1AE90FE1F54AEE0D22F103230CF6F7F1),
    .INIT_12(256'hD61AEFD7FB0200CDEE05D2E7DDCBC1F7D31ECCB9EAEF14F2F8D1000ADAD3CB21),
    .INIT_13(256'hF723EDEDF5FD0D3C2AE7E91416032EFC03E0F91FE6BFF7C50307EDF8DD162AFA),
    .INIT_14(256'h1AFE120A03F7EAE0F528FB03F7E8FE3B35F7FD010318EE1E021FCB17ED26DCE5),
    .INIT_15(256'h2B00FBF31BF8052614F1150CF4F924030ADD08DDE9360CF52C0D03F6EF0BE711),
    .INIT_16(256'h0DF437E5D2EEFFD4151C29ED5DDC050D1BBB071FEFF712BB482BCB35D0FBE1D5),
    .INIT_17(256'h3F32EFC91FF9CFFB2025075054FB460104EFF505FD3F10B937F317D5DC0FA5F1),
    .INIT_18(256'hD9F1DAF61248DB1B10FE14F40503EA19E2160BFC1ED3D5070406E10019D70CE9),
    .INIT_19(256'hDF0B031AF0E10DDFD100F1FFEB0FEFF2DEFF0FF51D0D021BE60FFBDF20D51BFF),
    .INIT_1A(256'hF1DF02DFDCE7EFD80EF2D41A07CCF2FB052307FFDCF5D325EA1F05D7F335DBEB),
    .INIT_1B(256'h1917D516171606D5CDEA47E9E30CD1F1D2D9F204FE1ED8210B050616E8BD1DF5),
    .INIT_1C(256'h0E2715FE2C220E11FDFD0314C4FF0406FCE81A062618F904C51A202524C8FD30),
    .INIT_1D(256'h0A09241B08DC1D050DF4FABFAFFAFB34030C0D160CB0361CEBF8E808F7FEFAEA),
    .INIT_1E(256'hE1DADCE40B0BB11BE425D51B3AD90C0DEED3F50ADBA0E3C70A07CE86F4440EDF),
    .INIT_1F(256'hEA08CD0DFCE5ACDDE2022618FEF93C9A1AD8FD20E338C1F7E2F8F0FB24CB06EA),
    .INIT_20(256'h050C011E20EDF605FCF912FFFD0725051D031C032A1B0A05ED021A220EF50115),
    .INIT_21(256'hF6011206F0161408070B03110705F90EEF07F0FC1CEB1215F7110EDD0902E10B),
    .INIT_22(256'h0203DD02531A020DDADB2AFCF927140FF8FCEC162FDAEBB2EDD0D3341AA51D0B),
    .INIT_23(256'hD3092A00D9F6DE1E25E0A6F3F70D05E303FC0F0D04F919EEC7F1F5A4303BD2EB),
    .INIT_24(256'h0B1EE3001B1326C7EB1F1E0604EBCDEFC002F9BE32B2F620D9BB0302FCD5EF25),
    .INIT_25(256'hBFE50FD1C13AEB2616DBD1F20CF6E6DBF30300F8F1F8E7E5FD06FFEEDB380EFA),
    .INIT_26(256'hF9EDCBEB121001D514021D14E7F7CF12CFF8F0CF07E30516E7000FE7FEF4D90C),
    .INIT_27(256'hF41908F8E4F9E5F10BD61001F1FE0FE0FBEF050F05E2FDF8E30BF80EE7F70A06),
    .INIT_28(256'hC92501F62F011E0523CB28E5F30B07EF1509F5231A0E091531F4042F13C71D01),
    .INIT_29(256'h13FD32361A21401EFF05D305210C0DF9DB31F91423F93EF5211008E31B1314F9),
    .INIT_2A(256'hFFF2D210CFF21FFA042AEC05030420FA12DD061CE8C802EB5C0A0E020C3327EB),
    .INIT_2B(256'hF0E5F612F201D5F9F504192704FA0EE8F6FF0BFFFAFFF4ED00F1F1EE3ECFE900),
    .INIT_2C(256'h0FA5F306DE38030909C1FC09D91107FCFD141C0EFC0BB1FEE208E5E700D908D4),
    .INIT_2D(256'hE9C3F61A0CD5D5C9B106F9C9B50DCDE0E11B020009C50809DAF6E81A2EAF2EFB),
    .INIT_2E(256'hE5E70FFA2030F9E520E7EA06F5E5EB0DF8F410081619E9CE31EED13411AD0D0F),
    .INIT_2F(256'hFBE718FC0409F8F911F4D3D9FD0C33FCE9E30BF8E7E538EB2515FBF71F1F070B),
    .INIT_30(256'h380D0AE6DB04E8160409F804420C2A0A2ADC1614F44AF1CD00181012F809F707),
    .INIT_31(256'h0DFD16DFF7EDF3EDDC04ED01EF06ED1E3F09EFF4FA38230717050AE51A0DE704),
    .INIT_32(256'hFBFF2612B5FBFEFA08E1F2FCE6110AEAF80410FC040C1BBB020C021104EC0AF7),
    .INIT_33(256'hEEEB030AF604CB05E30A0CF30FED03F81D120EEB04C10B0E08F6F9F60CF9EA01),
    .INIT_34(256'h1305EEEC22ECF6EEEC0CF5F2C5110EF9EEE4EAFBF812F9E2E0E21AF4E2C4FF0D),
    .INIT_35(256'hF411F2FCF400F8FF0BE0C8EBF30DEB0C37000711FAE744F40E0907D8FF01F0FB),
    .INIT_36(256'hFE18F0F3EE1308F5C3F5EAEBEAFBE403BC09BFC2DC2630E7FBD30816EDBB0634),
    .INIT_37(256'hBC2ADEE8F2CDE8230EECD9102DF7042A3619FA12E4D354E7E60AFC11EB36083A),
    .INIT_38(256'hE5FE23E6F200D9FCD9DFDD0D0E06110117ECEF0CC109F1F3F1E10204F90DFE20),
    .INIT_39(256'h1B34FEFF0FEFEEECE0090D06FAFB1EF31FF004F0F910F1F315FE0EF806ECE6E5),
    .INIT_3A(256'hE814FC160DFD043C0045ECE8402834E926F70012F8D22E1D2E1A0FC20EF51AD7),
    .INIT_3B(256'hD7E7F5EBEB24DA010A2ECF3C180BFDFF2C0500EDEC30CF18FFF90BFD32FFE5EC),
    .INIT_3C(256'hF0082E19FB0F00401BC71006F44118E91204280428FCEFFBFD0816031DDA2BFB),
    .INIT_3D(256'hF1091729F91708EFBB36FAEDF30EE9EE033EF7FC2CE0F73410FCE6EB2A01DEF1),
    .INIT_3E(256'h07F0F6DFF2ECEF07C1E1EF0E04FB11E4F3D3CBEEECE3FCBFE6B1F3F0C70EEE06),
    .INIT_3F(256'hFC1608D1F2E9E702160714080C0320EFF2EB0C00DDE6F3E1E2030EEFF4E8E9EF),
    .INIT_40(256'hF3E3FFFEDBE5DBE908FDDB04F3E9DF04F000F7F2E3EF03FAF00609EFDF0BFDE7),
    .INIT_41(256'h07EBE9FFF2E6EFEDF7150005FF080900EBFBF708D3D9FB07040DF111E2E5F9E0),
    .INIT_42(256'h34E7E7B74D0A0CDD0FE10026E9EDC519CBBE00C5FE29F9C6C301F610E2A4BD0C),
    .INIT_43(256'h0D090E01FFDAE60411C9D6C9DFE8E72211FB001AFDF83921E90CEAC8F1F4CC13),
    .INIT_44(256'hE9DFF414FFF20BE2182BFA07B1D0EA1D0C23EA04FEC307272608DBEFF3EAECD5),
    .INIT_45(256'h04D7C83E0E19F32119EE0BFD30FD22ECEAA5F0EBE5BF32E90203B427EDC52417),
    .INIT_46(256'h00FEFAEBF301DB04C7E1D9FB18F022ED03E1DFFEB904EDE5FAE50EF1E8070406),
    .INIT_47(256'hFF1EF8DBEFE5DCF7F8F6F1E8EEF1F7FE08F9F4E6F514EEF3FDFEF6F0F8ECE807),
    .INIT_48(256'hD6F5E3F2E1F3FDE4E32CD5F316D8EC09D7FFEDD7D91B301C240100DBE6270808),
    .INIT_49(256'hC700C708E4EFF3ED21F6190A380B1C0CC4CFFD0BC71EC716E5030C11DBE12FD7),
    .INIT_4A(256'h08130AE9D5ECC1F6BF0ED212F8E0F018E2CEB80AC4EF09C70EE0FBDED414EEF8),
    .INIT_4B(256'h041204FB13D401D5FBE616F009F9F7033CC80AECBE04C5DC18F11226F8F204E4),
    .INIT_4C(256'h230913F0F81024EFEAC7FCF5DD151DF113E4001B0E45F1CE0FE8F54FFFCDCFF0),
    .INIT_4D(256'h21C3F0EC1A0EFC0911DECDFB1BF71F0AF9030FF318C342E909FDE7FDDB050CFA),
    .INIT_4E(256'hE0E0FF432DFB1312FF0AFDF4120C69D25F090331F1EBE80B1A370CDB27033FDA),
    .INIT_4F(256'h2DDD0F1A293A1FDDE143010AF4FAE5251BF1F4FA052A0207E90206D52EC4DD20),
    .INIT_50(256'hEF05DCFE1E0CFB0C0419EEEF071012E5FA04E40E28CD02E54CF5F7D607C94A12),
    .INIT_51(256'hD3F7E2F0D916F0030FFEBF1F26011FFA36E3F918F6211ED5E6FA04ED4E05FD09),
    .INIT_52(256'h10DF1B0CE2EAF701F1DB1212FB131E0D28EB1B3A0B32FDCEFDFC08F919ECFFB9),
    .INIT_53(256'h26F7D2FE1CFE06EDE1FE0CD51112ED12D22104EA1D01F20AF3F8F9EDE7D20C07),
    .INIT_54(256'hFACBC5FA11DD1BFB1ADB2DE6D621FBD119F8F8FE07DBE3FFF9FCF9BF080C1907),
    .INIT_55(256'hF0DFD3F8F2101EF0C9E512CBC1FBC1DBC5080A1E20FDFF24C60AF4F5E7BB0A34),
    .INIT_56(256'hBF214AEED905D526C31ED309F2E82A11F802CF18D1FE1C004AE1FF06E70820F3),
    .INIT_57(256'hD812F50EE6CDDFDDFA061900FA0B260D12C003F0BB04C70A3A02FD150AD313BB),
    .INIT_58(256'h3207D01CEBE404FE47F2230D191823F3292C762F1ADDD1F0F12A24F92634EDDA),
    .INIT_59(256'hDFD307E8F52C04DBEF06230313EECFFAD51E03204841101AC3000410FCDF2218),
    .INIT_5A(256'h21140DF519F81AEF0F010901E5E7E5FCF1D612DF14140C20E10505E90BF9E318),
    .INIT_5B(256'h2ED9FFF907150AF8FBF7FEE7E20A013609FD09F1F4E9EB090100E110F91801EC),
    .INIT_5C(256'hEB320BFB10FA2EFDB7F5FCE2F2FBF2C6F917EBE00FAF2013EACBF70DCBEB1036),
    .INIT_5D(256'hE1F907BBC717422C0AD7EF1222FA0601F1FDFA06F705F5AF12FD02EB0438FCED),
    .INIT_5E(256'h2BE1EE00CFEFBF22F0E0EE0E3128062A0CCB2B28EA1AE599E8ECF8D2222016B7),
    .INIT_5F(256'hF01D0302E4C79FDBC5F602DBD70B03EC390EF5FBEE380C14FDFE15F540CDE50F),
    .INIT_60(256'h1416F8F9C6F1F106E111DC0A1A0EF60FF4DEE400E61548C508EA21F0E8AF2AE1),
    .INIT_61(256'hD60ED2DEF4CFC1EF2406E11E3200220E6404050F020C14F9DD0FE1E7F600E62A),
    .INIT_62(256'h08FF2ADAB2FEEA1ED8E5F803F0000409E4C7FC14D00B05C7F9F401C1DEEB03D1),
    .INIT_63(256'hECDFCBD7E4D1D1CDE72CE103FC0EEB2645F605EFDA0ED3FA0B03F2DF2ECDD504),
    .INIT_64(256'h00FCFA06F3E9F3EB0C2E0914EBF40DF2F6E6180BFFE338F71C0CF3EE040205E7),
    .INIT_65(256'h04E1D2F2F90E0DEC2CFB12202EFFF2DB12D9F0F904F9E5E2F4F1F9EEFE10DA15),
    .INIT_66(256'hEF1817EB180AF910D31AFFFB01D8E41AE510E3EC1323161B08E7ED1AF3F8022A),
    .INIT_67(256'hF01C03E3DEE0060816F1E72412FE2A111CD7FC02F00FE3E317070BFB0F1607F7),
    .INIT_68(256'hEB06FE06DBF714FCFDF4FFF9E90901EAEEF809FAFF17F2ED02DFFA08FBF8EE00),
    .INIT_69(256'hE9F7E2FA02E9F912EEFEF5EC1101EA06DE19FFFE0301FC01FAFCF900FB02EFF1),
    .INIT_6A(256'h42DEEE30C908E0E415EE080E3E451C074AEB6A2E3245C9C3E8621CFF320CD6BB),
    .INIT_6B(256'h11E31CDA0308FBE6DC2CF4EF1308EB20034C090B5A3E0840E9FFE90008E4F313),
    .INIT_6C(256'h1E04E317C8FFEF0BEB02FEFAFA0218FFFAECE60006132B9902F3F903EC9B36D9),
    .INIT_6D(256'hE5FFF2EAF6C9DBDB1D0DCF1832051E0C480FFD0404F22E01D8FBC7C508F3D01E),
    .INIT_6E(256'hFBFAFFD90AFB0900E7F5DD0C07E106F2F1E1DBFFDDEB00EBDEFB0302EB11D711),
    .INIT_6F(256'h031203DFFFF30E030C0E18F006F9FEF9F9F3FDFBDDF9E7E5F1F900F3DF0AEFF5),
    .INIT_70(256'h06F8E0175009240F180C2C061A1015FEFF0926EB0CB9F828D9201BCB18F20E39),
    .INIT_71(256'hDC1E12F3E92C4022FBEAE20CE607EAD105FA0A1614301A30F1FE10DEE520F031),
    .INIT_72(256'h02F11BFB0FF2FFFBF2ED1E1EFE0A28E61BD212161B05F5E1F924062FF5D20EEB),
    .INIT_73(256'h25FB10FD1B1C03D9DB01D6DDD502F71124120806F006FBF4F90FE7E804E9D60E),
    .INIT_74(256'h12F2F30EFCEDC803041ECDFE040C22F11CFCE61FE0010CF0F90E05EAFED817DC),
    .INIT_75(256'h0708FA1204D6E4D81020F310FCF0112444F305FA040604F0F013030213DAEC05),
    .INIT_76(256'hF81E20EFEDC50CBFE13AE5F4DEB7D3FFB7F4D1D1E2F34E08EEF9FC04D7FFD118),
    .INIT_77(256'h2222FA09F7AFFE2E40D5051C34EE3400EEB3EFFEE5DA2BE730F10820BD121008),
    .INIT_78(256'hEE0A2EFA03F5D9F8E222EB16F2FE231A1AFEE014BDED2514F501F8F1002215F5),
    .INIT_79(256'hFE30D715011AE0F10F0612200E081DE758C607FBFCE6BF0E1A03172E0FEA0AE2),
    .INIT_7A(256'hB9230E1A3BE33EDB192815FAB7F3D9F3F5320BFC00CC353F0EF0DD0C0B18F5F9),
    .INIT_7B(256'h28EAEC2A081E412E3ADB00D922FA04EFEAD60FF611CD0AFA10FDD926C33014C8),
    .INIT_7C(256'h0AECF411ED241912FEFBFAECF40D0610FE1522E2F03CE304142018E0EC00DE04),
    .INIT_7D(256'h0CE6F80412F50109CFF410EFFF01EF18F520FAFA0312FF26E20CF61FE9D712F5),
    .INIT_7E(256'h1FFDF11EEDFF1A0AD40AF0F3DB03DE09F6E2F0D0FED70AE4E0F60F11E9D7FEF1),
    .INIT_7F(256'hBFD1FFE7DDDD0B1636CFB30E2AED08EFF80D040EFBB519EBC60FF507F5F71314),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[70] }),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[70] }),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[71] }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\doutb[71] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[13] ),
        .ENBWREN(\addrb[13] ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weightROM_blk_mem_gen_prim_wrapper_init__parameterized25
   (\douta[70] ,
    \doutb[70] ,
    \douta[71] ,
    \doutb[71] ,
    clka,
    clkb,
    \addra[12] ,
    \addrb[12] ,
    addra,
    addrb);
  output [7:0]\douta[70] ;
  output [7:0]\doutb[70] ;
  output [0:0]\douta[71] ;
  output [0:0]\doutb[71] ;
  input clka;
  input clkb;
  input \addra[12] ;
  input \addrb[12] ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire \addra[12] ;
  wire [11:0]addrb;
  wire \addrb[12] ;
  wire clka;
  wire clkb;
  wire [7:0]\douta[70] ;
  wire [0:0]\douta[71] ;
  wire [7:0]\doutb[70] ;
  wire [0:0]\doutb[71] ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hAE7BED29FFEFBCCE402CE50B810D02068F455F258EA12964BFC3EB8CBBFEBAFA),
    .INITP_01(256'h54158F9E70F51658719E5EEF4CFF4BB33A0553F6EE106C31F7611FD3BBA7BF75),
    .INITP_02(256'hBA53F7A86556BEF29C2103518C929064E6DB6F8CEF3EBEF29E67D7A83DBEB0E2),
    .INITP_03(256'h40E304521C515196408B84D8207802820749CF0C9FE6ADAB218A78A5E4AC6E11),
    .INITP_04(256'h61A07072CA004121AACBEA84FF36BEB38E78CCDA35FEFBCE709EBCAE5CD94B87),
    .INITP_05(256'h355AEF799FFFBEDEF961DF0931FFBECE51BAB056534103874260B97B0D97C563),
    .INITP_06(256'h417ACD7B554FD3CFFF9F5A275A44458FFFDFD7A9FFD7BAF204148C521C996168),
    .INITP_07(256'hFBBA36B6784147079845AF9BB7E6FD4AFB823225CC310F3516849B0C1F76194B),
    .INITP_08(256'hFA59E7EC297E9AF39C35CDF9F4AEFD7CBD67EF68B3CEBCCE77057F6EEEBEED7B),
    .INITP_09(256'hFD6731D6649175F4679B920386611B90579C50C3504352B3BA9F02004E000830),
    .INITP_0A(256'h00DA94A8294E1086AF9D30166E2043B1FBA153B66E004731118C005284014720),
    .INITP_0B(256'hA061E7D9811FB46430F0A508297F108EBB45E3987BD6B7F2619E9DB6DC480B6B),
    .INITP_0C(256'h6096FCA0874D05053E656F7A2BFE59C2039D9425C2A82E30FB0312672CB16D71),
    .INITP_0D(256'hA72D4C672EA8694579AE73D6E64943353E405B079E852168BFDBA8CE7F52FFDE),
    .INITP_0E(256'h2F2D5E4516A06DF9FF171AA74AA04B71FBA3120764114D11270050FCC60C0531),
    .INITP_0F(256'h98656DD4E4D825755050D6695D4E928AA78CC905ABE7BA584B9BB2F6645847B1),
    .INIT_00(256'hFE24ECECD701E0D4C9E4C6E9FAEBDA1BCF3CDAD5DD10EE22F0BBECEEE916CF13),
    .INIT_01(256'hD307BBC7EDD9D3F3ECD30510040EFADBE9EDF004DC07BDBFEC00161ED6F32208),
    .INIT_02(256'hE91C3402ECFFED38D317FB1E140826F41400D71EF70C1FC550E5DF0606E83A02),
    .INIT_03(256'hE010050CE4DBE1CD0DFA081114F543FA30E703F6CFF7D3FF2406E81122F102DB),
    .INIT_04(256'hED03290F320523F1340B1708EFF729F72F0B1F071917ED09151F153F19EBDF05),
    .INIT_05(256'h3CED141E240F30030928F301F3F9175ABDF3F50307F507FF3C060D02E909F5FF),
    .INIT_06(256'hD9ECE3E0FCF6F7C9FEE4E503C9D3B9FCBF0DDDC7D6E1160BCDE91B0AECDDD22E),
    .INIT_07(256'hDF0CD904F5E4F91602DBF9EAF610EEFDE7EFFB12ECBD02EB0501F305BB3218FA),
    .INIT_08(256'hEF0EE3EDE008D8FAC70BC00736FAFBF6F505CBDCE6EEF2DF06C5FEEC01FD0AF7),
    .INIT_09(256'hEDF9EFE703F5D3EE14FFFB1E2C0412D6042B02FCF8FDD0D9FBF305E11704EDF8),
    .INIT_0A(256'hFCCFD03DF1D9FF3602511AF3360A28113FEFE245F9F520093C24EEB12C4D32DF),
    .INIT_0B(256'h0004C5EFFB20E12B141A172618F63CC334E609E91C48F1EFEEFEEFFD06FCED2F),
    .INIT_0C(256'h24EF0B12DEFE0601FCDFFCFCE6FCEBFB04F02201E22AE5F2DD08F7D30223D3ED),
    .INIT_0D(256'h11D3E4F7050C00F1E90E0FBDEBF2FB1E11FB0AF7FAEEE114FDF0E819FFF8E1F9),
    .INIT_0E(256'h02E8D7F500111D19E1E3ECE905EF1FE20B0301F213E3FA0100DF06FEE9070802),
    .INIT_0F(256'h0FFC0BF915E9140E0A0D0DF614EE0CFFE407031AEFF3FDDDEC0F0AD1ECFCED0F),
    .INIT_10(256'h0D10DCF0E9F908F3F808ECEDF5ECD905EF22FBD104140C3CECDFF20D0900CB0C),
    .INIT_11(256'hE10301E5F1FCF61C08E4FB0C16FFF6F3FFF707FA0AF1D8E1FA05F72CE1142600),
    .INIT_12(256'hF3E2DD0BCFFBF4FE1106EBE5DDE9DB1FE931F7CFE5EFE030EEFFF0CF0155D410),
    .INIT_13(256'hF3EABD1802E9DB08EAEB39EDED03F8C800DDF40EF7FBF6F7F002102FEFE52907),
    .INIT_14(256'hFD1A1A13D8F71215FB3607F71E09FD02F30301E319143E112CFDF81407F30C14),
    .INIT_15(256'hEA200EEEEEFF0B122215EB2E3A0638F6182603100F0AF9FF00FD0EE5032A08ED),
    .INIT_16(256'h17F8CB1C10E41AED12EA02F906F2DF27EC22FBEBF6F9FE16E5FFF4FE011FD814),
    .INIT_17(256'hED00E0F5F61AF82606E313FB0605FEEFE3EDF9EC0EF6F4F2D90AEE14CD1E1E16),
    .INIT_18(256'hE6F4F40155E3052FE50CE830FAFC600A72EECE76F5B5F2232C2F09BD0E2E92DB),
    .INIT_19(256'h160AFA2621561FC5ED195000D904EF0F04D7F8F4D2360126F80CFA0F3CE604FC),
    .INIT_1A(256'hFA1011D8E6F9CBC0F0F6D9240CD8ED2DF014E80ACBF510F2EE05F305F830E8F7),
    .INIT_1B(256'h2949090019FAF9F90CCC4A0EE80B07E5E1DB080BF5F6D4EA170A0428D2D91204),
    .INIT_1C(256'h0E03F70E160E08033EF5FCFEFF01050E0F2A38052409E721DF1C0A1E0820D731),
    .INIT_1D(256'h0FF9060811364E00B707000DEB05D9E1C9160B152AF92414F1F105EAF70D1D10),
    .INIT_1E(256'h110C03F4FEF7080710EB04FC050109F507F730FF0E2406EDF71012FB0CE1FB09),
    .INIT_1F(256'h02F533031B00121CF6F3E5010F02F9F103240D101CF1121E13F50DF20908FA03),
    .INIT_20(256'h12FB1DF7D6E6190FFDCB0CFCE92035FD31E12824F420E3CEF102100505EADBBE),
    .INIT_21(256'h44DBF8FC22020613D5120ACDE3FCE30CCD29F8F3F9F20724FB02FA08D7EDF207),
    .INIT_22(256'h1B0FFADD1CFC04EEF6F4DCFEDCE8EE00CBEEECDBD023EFFCD9C6102AD8BAFD7E),
    .INIT_23(256'hE252000CF8E2FC0423C8E2E0E507091AF1F5032EE8D8380CF2FE16F6CB1AF824),
    .INIT_24(256'hF1CDD7FEE1F5D1E21407E1F70AD2E213E43DF6F2D8C9ED03FE02EECB042DEAE3),
    .INIT_25(256'hF805EC02F012EB09EBF81827FF0CFDF3D3F6F309FE14DF11E90B0F0D14D3370E),
    .INIT_26(256'hFBE02233E219CE18510B40151311052B41DF73393C3F0AF33B3FEC2E190301C5),
    .INIT_27(256'h43BBE811230B12D2D654F72C16071A064AF5FBCF2D23143305FDF3EF2D12B90F),
    .INIT_28(256'h043C3902E9FE1AE8F3041CFD03E3D7F1DBFD23090CED14E934F3BC7E110DE3BF),
    .INIT_29(256'h13C502031914EB2238F3D31852141C01DA04FAE9ED1304DF3DF1E5F1C70EE1D4),
    .INIT_2A(256'h43D20EF3023BD4EE26BC160A212120DF3E1F58273D15BEFCDB2832610BAAFBE7),
    .INIT_2B(256'h29D122F8331900D8A412D2D6DF06DF15E13EFBF91F010A4211F307DE07F3DF19),
    .INIT_2C(256'h0E2EF5B4010C06F1C5F7E6F5F3DDD3D4B10CE4ADFCE6F522D9C50307D8FEDB13),
    .INIT_2D(256'hE7EBE5DBE30B0CF306C9F6100E0210DBF1D707FFC5EDCABC050E071ECF2C1EE1),
    .INIT_2E(256'hF21601CBF8ECF0DFD5ECDFFAEADDEBE8D500E6E8E8F5F505ECDB12E7E3F3E913),
    .INIT_2F(256'h0B01F9EF01F820E206EF06E9F302F505D9E5FF0AD3CCE6E704F4FBF5D90810D6),
    .INIT_30(256'h072122E5FEF11F0CE70D06F4D9033BDD0DE0F727060A11C52AF3E31AF7094A14),
    .INIT_31(256'h480E122446F81C1E1E3919F726FC4212FB1F1008E9D32B0B0CF51EE12102F013),
    .INIT_32(256'hFCEFDDFAFEF2FEF6FFDF02F504EFF1F3F90FEBF3FA04FF02D9F7F2F50718F122),
    .INIT_33(256'hFFF9FDE5E7FEF6FAE9CE28FDE1F8D6D7E3E808FD05F0FEF7DD01F707EF0401F6),
    .INIT_34(256'h14EF52E6CF09E71206FA082E12F40A0006CE1E0A00ED0FC3FC1C0325F8FDF0E1),
    .INIT_35(256'hF9E8ECF9FCE0D5E3E7182EE8FDF8EBFC11EA12F3FA04F120300BEA0110E3CEF4),
    .INIT_36(256'h2AF20DFD23FF33E111E23410CFEBF9F5E7BF17EB2903E7F6E9F5070FF5D2FFFA),
    .INIT_37(256'h39EC0B13271C0AE801E7F8D3BC0CED17D7DF0512F5C015EF05F6D6EFE112DDFB),
    .INIT_38(256'h030E51D8C0C9E3DA01ECDDFD22EDF12A080F03FFD92300E415FE125DF142E1FD),
    .INIT_39(256'h381905E040EFEB0BF414110618FC383BC40102FCF532DEFA39071C0AD2ED280D),
    .INIT_3A(256'hF2DD0B2AF8EB162C2009FCF428262EDF2803123CF6DFFAFB2020F3A726F726D9),
    .INIT_3B(256'hF1B3E6F5F916EED9D84605082007D1010816FFE5021FD32E0F0FFB0148D701F4),
    .INIT_3C(256'hE100DEEC1CF9F5F3DAF6DD2208F1FE08E3F8D1F2D0AF2EF312BC0A1AE613F00F),
    .INIT_3D(256'hF83206E2E81520200EBC12481CFC1ACBE900F612E7EDDFD0E81308FEDE18FEDF),
    .INIT_3E(256'h30CFE7F6E719011E16DD181609200EE90EC3180600D5F3AD02080D1300E5E5B7),
    .INIT_3F(256'hD3B1F5EBF118DFB7EB20FEE7FE03F92A0326F8F50AD1F102D108D1B912D3D22A),
    .INIT_40(256'hF8EAFC0CB9EFF910FE16E5FFE2FCF806F7D2F802CBF222FA1AFEF4D1E606F2B5),
    .INIT_41(256'h0CF0E3ED08FDC7DD081C000612F411F02AE8F6E7F4E6E7F607F8F914FEE4D42A),
    .INIT_42(256'hDD2EEBE91413F5E5E8EC0906F8FFDE06C91BECD7FDE51A01FBD1162FEAD7F129),
    .INIT_43(256'hF707F8F4E1F72CF913E4F71D0BFAF3F7DFEFFB0AE5EFF7EF05F4FA01E6161713),
    .INIT_44(256'hECE8EFE903F3070EE30FF510FAEDFA05D3F5D5EDFBDA08DD08E5F1F0EDDF011C),
    .INIT_45(256'hD8180FDDE5E307142B0AF1EC1EF316F4EACF070EDDE821FBD4F2FCF3E71E0DDB),
    .INIT_46(256'h091AE514E80504DE00FAD5F9EBE1D522ED0807DBD312FC30F1EAFADF1222D5FE),
    .INIT_47(256'hFDFFDBEBE30AD00C08DF0CFEFA0908F5EDE8FC001AF1E2F5F2F6ED2EDDEE2202),
    .INIT_48(256'h22E42612DFEBF516201C1B071C0C100629331417E700060E0B34EEA93E425012),
    .INIT_49(256'hD804BDD7DD37CD0CE41018E6E6FAE8B718120305383CD3360C001722270E2325),
    .INIT_4A(256'h14E707FF1B0A060113DD240C0206FBFA05C028F7080DDF0CEF2EF7F10C1EE5FA),
    .INIT_4B(256'h11D717F51DFEF9E9F50B1EABB3F9093B27DF04D516200722DFFF09120D18CDE8),
    .INIT_4C(256'hF30226170BFFF91C10DBF703043920F21E142CF8EB14F1FEF1201CFB2900030D),
    .INIT_4D(256'h0EFBFE1F04F4E0E5B7400AEFCB07D1E6F14402E33102FD481606191A2D05F8E1),
    .INIT_4E(256'h22F5D90E1AF41E21E40A10F4231635EF0EFCFDF60AEE06D9FCF2F9DC0DCD1201),
    .INIT_4F(256'hC5CFF1D1E9F608FC16FDBF042CF6CDDD1C2FF5F902130EF8F1F205DF16F9F21A),
    .INIT_50(256'hFA161B052CFF071B1718251223183FE83FF5012D07F5EEF92F07EA02151A1906),
    .INIT_51(256'h252C19EB0B142AF0F44D1616EEF4200D1807031213240B1107F640BE0D18B809),
    .INIT_52(256'h30D4FA08E9D5CF221802200A1320120F30DB24580CF7F8921022F6C40A360293),
    .INIT_53(256'hEFE4F9E5B328E0E5FF1EFE0B170707CC3AEA02E71C1DF6F4EE0FEDF43499DF2D),
    .INIT_54(256'h17C3E614CDFDB7100016F624211E061C1CCD272E050EFFB5FA18F0D3183E02AF),
    .INIT_55(256'hF007FE14DAE99BE3E11016EDEBF10FD04D08F4DB0A14001605090BFC22B3D300),
    .INIT_56(256'h0314E70CF62224BF18EF0805DFFDE503091610E9042D1918B520122128D0E520),
    .INIT_57(256'h2007220C20222436F1DA02E3F503F122DF2603FF1CB5160EF50CF308ED2C2836),
    .INIT_58(256'hEBE724FFD7F1131015CB1309CF0E320127072B39FD1AEDDD0FF2DE07F10CFDC5),
    .INIT_59(256'h56C1E402400302C9CB2400AFF9FADB20D52702FDF1E706FEF209EEE707C1F11D),
    .INIT_5A(256'h04FBADFBFF0EDBEDE9F508F340FFE115ED22D6D700BFEBE7E9E7E6DC0307FC08),
    .INIT_5B(256'hD120FFC5D108E3F61CBD0B2E1CFC16D3D8E1F6200B4BE6E3B70922E4F0222E23),
    .INIT_5C(256'h0112FD04C60816D108B7DAF5FDFDD1E4031C18DD06441332C9142641F6DADF48),
    .INIT_5D(256'h0D0BFEFA16123030E7E8E8EB1B070536E330F7161AD50CFA0D020C14C94C2E18),
    .INIT_5E(256'hC91203030B030BDB1F1518F3EDCDE7F1E945F9E92ABB3C131CF9EB0D09F3182C),
    .INIT_5F(256'hE702FF0705084E3C3CF9F326580C3AFFD6E9FD2019DBDDCDFAFC0CFFCB343EED),
    .INIT_60(256'h0E10F914DFEB1240E421DAFC47103CFD14E4F234D8EC02EF00F8D3B40E213ABD),
    .INIT_61(256'hF3C5D6C5E70AC4EC022108141608EBCB461103DF0211C11221F3CB164ADFDAD6),
    .INIT_62(256'hE9F004304F00ED20D709E13AD80A34072E1CFE1EF8E9ED430424F6CA181A3E0D),
    .INIT_63(256'h04221A5C2A3EFDF5FF2044EDDFF701E3D90C05EE0ACC273C0C01F62422EB2AE5),
    .INIT_64(256'h1101F506E60BFAF8F8EEE1F1FBEBEB1104FD01FBD91C28F6EAFC09120D06E40B),
    .INIT_65(256'h071EEDF9EBD9D32412D1F71418FF10EF0BEAF312F6E5F4F407EDFBFFEB14F706),
    .INIT_66(256'hED0018270EFBFBF916ED1C0BC9F91CFB1815302025D406E7070A000B1FF017D9),
    .INIT_67(256'h14DBEE300C180C00ED1614FD0DF8D511DEEEF5FDFDE12016F807F00210070019),
    .INIT_68(256'h2EE1EDDDEBECF9E81EF504FC0604D004ECD8F6F7CBEDD1F4F1FE24C7E2FAF50B),
    .INIT_69(256'hFF0EE8F1EEFCCDF0EBDE12F0C407D7FEE90AF916EC160C0AEBF90E12DAD3F214),
    .INIT_6A(256'hDF0E5EE5E4EBEC22E712101006FB16F30303E71A0E1D0ACA4AE1BF2CE11C0200),
    .INIT_6B(256'h2222F8EAFDE9E90530F918183806560B26F50DF1EB13EDE92812191906F3FFE1),
    .INIT_6C(256'hEEE0EE1317E1FB0C09FE2D10FE1647D439DD13332101F4E30413EDF105F611D6),
    .INIT_6D(256'h20CADFD7F9140BC9F327E80CFEF6ED0B10F9FAFA190AF9F7EDFF06CE06DCD01B),
    .INIT_6E(256'h0028FE2AFBE7E75AE62CE71CEA1E282A1CF2BC50E9002BCC28F60E0B18CE4C9F),
    .INIT_6F(256'hE61DF23000C2F7EB3B1EFC00FDEB3BF638F40205D3E83D1014F6DC0500CFE4DA),
    .INIT_70(256'hF8EF3F081DE1E71B2A08250EE2E51E011C0401220AF111E91906BBFC3D0D2FC5),
    .INIT_71(256'h2621F91910E2DCD4382709043005341326B90AE90D091013F2F7F0E9F7FB070C),
    .INIT_72(256'h0AF7FA2F0DE51A560A0730E0332A42D712ED3E1CE4DC0EFD2C160EA9140725BD),
    .INIT_73(256'hD5B3C5EBE50DFEE3CD3CB8120402D9E8360405F3062BF90A050C011554CFF1F0),
    .INIT_74(256'h30F20E16DD09D84AE002FF0C1C0B281E1AC52A34FF18DEEA14FEF1EE0E0C1ED0),
    .INIT_75(256'hF6EED8F0E1E6B7C6002A1CFA10F5F6F8181504D5E236D512DC08D90E0EDAE1F1),
    .INIT_76(256'h190238F608FBD10CF016DB140002141910E2D40AADE21CE8E1F8F6E9F40005E6),
    .INIT_77(256'h0C3ED107F6F3F2E1191AF418FBFF09EA41DE04D4E0F2EF060FFC19320DD410F9),
    .INIT_78(256'h20A9C90717E9080B17CD32F4F810161D2AE9143238DBE5F3F12CDDD6331E2BB7),
    .INIT_79(256'h03E7030DF318FEDBD1071ED9D700CDB3D805F0ED4007F32CD4F9E2EB0ABBF11A),
    .INIT_7A(256'hD303FA0FFF0DE7FAE8FAC9120AF2F4F6FA16F4FEDF01F7210AF804EDEA080A07),
    .INIT_7B(256'hE820E71C08FBF6F5D304200FE7FE0E0ED2F60B20F70809E20A001A2204E918F5),
    .INIT_7C(256'h1EEF3DDAE2FC0CBE10CB0920FAE3D71EDF2038E5003BF304ED0E0B73FC32AB1C),
    .INIT_7D(256'h18EF02E62A14261F03DC08D701121F31ABDC0AEF18FEEF0C31F3F42C9D0A2CDA),
    .INIT_7E(256'hC2F7E11613F51B15F1EE1DE9E31511170427CB0210B72EFF00F9FFDB1BBB3AFA),
    .INIT_7F(256'hCB0701F9FF070E1A10DFD52038F02AF322FBFE07FFF915DFE2F511DD2EF31F0F),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[70] }),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[70] }),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[71] }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\doutb[71] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[12] ),
        .ENBWREN(\addrb[12] ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weightROM_blk_mem_gen_prim_wrapper_init__parameterized26
   (\douta[70] ,
    \doutb[70] ,
    \douta[71] ,
    \doutb[71] ,
    clka,
    clkb,
    \addra[13] ,
    \addrb[13] ,
    addra,
    addrb);
  output [7:0]\douta[70] ;
  output [7:0]\doutb[70] ;
  output [0:0]\douta[71] ;
  output [0:0]\doutb[71] ;
  input clka;
  input clkb;
  input \addra[13] ;
  input \addrb[13] ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire \addra[13] ;
  wire [11:0]addrb;
  wire \addrb[13] ;
  wire clka;
  wire clkb;
  wire [7:0]\douta[70] ;
  wire [0:0]\douta[71] ;
  wire [7:0]\doutb[70] ;
  wire [0:0]\doutb[71] ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[70] }),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[70] }),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[71] }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\doutb[71] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[13] ),
        .ENBWREN(\addrb[13] ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weightROM_blk_mem_gen_prim_wrapper_init__parameterized3
   (\douta[16] ,
    \doutb[16] ,
    \douta[17] ,
    \doutb[17] ,
    clka,
    clkb,
    \addra[13] ,
    \addrb[13] ,
    addra,
    addrb);
  output [7:0]\douta[16] ;
  output [7:0]\doutb[16] ;
  output [0:0]\douta[17] ;
  output [0:0]\doutb[17] ;
  input clka;
  input clkb;
  input \addra[13] ;
  input \addrb[13] ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire \addra[13] ;
  wire [11:0]addrb;
  wire \addrb[13] ;
  wire clka;
  wire clkb;
  wire [7:0]\douta[16] ;
  wire [0:0]\douta[17] ;
  wire [7:0]\doutb[16] ;
  wire [0:0]\doutb[17] ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h7FC5B229FFA76FAF90E5C7F202746B68BF3A3F56D6B84BA57EACFD396EF963FF),
    .INITP_01(256'h8F6C460DB2E3BC38C08EFA6A76E3F77D1C09F64685719C0582F51A9E4AFE6C99),
    .INITP_02(256'hF606B613A58189C5E50390E7B1D9A1207C25F1D5EEC5A414B7BB952F3D30DD73),
    .INITP_03(256'hB5F837A7ABE41009128C0B2325AB71277EBCDB5377D3A684DA3ECD347E341454),
    .INITP_04(256'hF16EFB3081B31BA54B62C3E33E8449A511FBFB178EB7B58E9F8BDC827B25AEE0),
    .INITP_05(256'hB14BEBAF38D7C73CA1F16E82A31281A8BC5E2F8DB1EA57B78F07C4347D7B5C08),
    .INITP_06(256'h5346CD488195380CF470A904F0A76B5E4119EEAB7E8D1D76A08F4181CA283D95),
    .INITP_07(256'h1595B7C2D19798FB72D44E307A5DD44FE9919753884563D47D78538134982BC5),
    .INITP_08(256'hAFFCC636C2B3B2D85D8DB0A23DD78376FE4A86F723BBEEA6CFB40AA514F91E66),
    .INITP_09(256'h1C2D54F73106CA31064692E59AEB26E6C7741383387A2E19CFB657FB56F5BB51),
    .INITP_0A(256'h072BC10742B3B7A035B4CA3B02E4EAA112D15D21DCF229BF97A11CFF58D81F91),
    .INITP_0B(256'hA9DF1A3F15324EF5D3079C5DAADBF7DA0D94F61A68C407C769BB6593761E5C08),
    .INITP_0C(256'hFD262DF3FB70FAFBABB1BFD7E28D4DEDE2DD22065B0E9AC6B659E7630374B7E6),
    .INITP_0D(256'hE4286AE146E287788646466CBAD3E2066AE5BD5C00CB7A98A768C97CA4A57F8C),
    .INITP_0E(256'h7767E00E0CED4683E9BB2112ECAD48B28D205765E001CE2E3E74BB563CC0DDBC),
    .INITP_0F(256'hB0C58219E0D43807831402F5FBFEC0F1C15DF2E149BEB08741E0A36467A5C9F5),
    .INIT_00(256'h0E7E7E7E82F904F9888384077C83787F7CFF87F28078837E8005058988FAFDF8),
    .INIT_01(256'h730484757006F692857980F97FFCEAF57C877CF68AF78B88F4FE7E05F90DFD7F),
    .INIT_02(256'hF80109FAFC7EEB02790B6EFD8B78FD89F801F87FF2F5047B867E857C7989887F),
    .INIT_03(256'h0391F50E8470EE7C7E0F8283787D1290FF7E0284F4117FFD8404857980037E89),
    .INIT_04(256'h07820D01F7F972FF06806E83067B84000403857F858EFDFA8600FD7EFE0A7C84),
    .INIT_05(256'h94077787907C8074800C8678857E87917CFF8301008B007F047B8600F77C8E7C),
    .INIT_06(256'h047DFE0D7B7A010680F7FCF6FF04870785F87C048089797D79FE0478827F00FD),
    .INIT_07(256'hFD80FF7FFFFDF8040100F478F97DFD7EF805FD7F85038B7B79FE017CFBF5FD88),
    .INIT_08(256'h7106857B73FC7A007D7C77FCFD7C80FB02FF76FE748E7DFD03808C78807506F7),
    .INIT_09(256'hFF82F90687777F757BFFFF057A7E6FFFFD917E05FA707B837E8374FD05FAFE7B),
    .INIT_0A(256'h04037EFF81810803017D03FBFF83007DFF037DFCFD02FBFFFE7C848081817D80),
    .INIT_0B(256'h7E81017BFF867C077DFBFDFD7C017D00FA037FFD067D85830000827EFCFDFF80),
    .INIT_0C(256'hF38289867C7604037F0500FD80009080147C818B7FFBFB01F6837F7FFD067D01),
    .INIT_0D(256'h868382880D02038479070004FC807E83018402FD7EFB8BF5070286FF7BF7FFFB),
    .INIT_0E(256'h730583088D11FC8B7CFF7DFD86858B84898D020F8A80F9028AFE018E88718B7F),
    .INIT_0F(256'h7AFA860F79F97EFB820EF402007F8505027A84807A06FE7E89FA03010A018377),
    .INIT_10(256'h0279FF820088080679FA827904FF0D77898A018C82068284087AFE0107FA8905),
    .INIT_11(256'hF3867DF57BF9F386FD06F7FA83FF7B887906FF04828A88F7047F86FC877E7986),
    .INIT_12(256'hFF01F482FCFF06047776FB7AFCFE0103847E7A0176027F83FFFD8379857CFFFA),
    .INIT_13(256'hF97F70FB0571FDFB81FF78F9047D05837F7D01F6FE7B807A83FFF7FE84F37C02),
    .INIT_14(256'hF972F80C7C028902FCFAFE7F830487810E107D0E7D8CFC05860778858A828BFC),
    .INIT_15(256'h7C04F87CFDF86E827E07FFFDFE7A80087F00FC828786028181FC798202F487FE),
    .INIT_16(256'hFAF9FC0085FFFF058684017A037C0D07927CFB93818706F40A118A7BFA798575),
    .INIT_17(256'hFF05FEFE86FDF4FE86097B0A877F0712058303FD7F8102FA82FD7A7A85E9F802),
    .INIT_18(256'hFA7A7F7F88837D05060207017902817BFDFE010087FC7BFE837B7585827BFD01),
    .INIT_19(256'h000181017D7C80FB81807D00F97F00040171FC7F02780201FF7D82FC7EFC80FB),
    .INIT_1A(256'h8A6F7E6DFC7B7BFB8DFFFF81807C00F9FB8080F8817A6D7EF507F77D788EFB80),
    .INIT_1B(256'h027B80088F878F74EE02157175FF737E83007E82FC777F7D80810308796C0B7A),
    .INIT_1C(256'h770E80F702817C7A73FD7E807BF97384F0FC8078FCF9FEFE7EF2FD03767A7E09),
    .INIT_1D(256'h007C840480047E830772FC7C86007C778078FDFEFE797C7403FDFA817E0A007E),
    .INIT_1E(256'h97FE84F0748082728404857F00F7F58073840179F8F5FD7E7D037B7A7E857EF6),
    .INIT_1F(256'h80817A6BF88F7C7E84F00F76FF01F3EDEEFD7CF7887D8C047D018006FEFFFAFD),
    .INIT_20(256'h0005F9FD01FEFD7BFB7C8283027FF781FD027E7D00FE8001F8FAFD7EFD01FB0A),
    .INIT_21(256'hFE7F7FFE7C07FA7D8374847EFE0083FE04FF7F7F8202F87F00827E84F9FF83FB),
    .INIT_22(256'h03E60294F482808CFF7B7DFC840A06080E03FE84FC0C01FB010E01728A0201F8),
    .INIT_23(256'h02757083FFFAE47BF9837AFDFA0172818305FF0103037E11FF02820083658289),
    .INIT_24(256'h007C7B05FBFD787F83EF02030F8281830C01900802007BFA760E05760380047B),
    .INIT_25(256'hFBEF75FF74177D7DFB08FAFB017EF07F7C04FE7F0808780DFB027CFD0977FE8A),
    .INIT_26(256'h7DFC05FE7E86F80978FB78810A818A8F0D7CFB037A01780306837E7A83000A83),
    .INIT_27(256'h090D808B0E7573F8FC0F80FD7F84060A84827D82800B0283078188848701F87F),
    .INIT_28(256'h018B8088FE7C0712E7FA73FB8BFE8EFD85F66F0C721385F90A7800FC81F6046D),
    .INIT_29(256'h0187F0F9F7ED77769086F87F867E05FA81FD8206FD85FE7C0E7D03F484F1F3FE),
    .INIT_2A(256'h87798709FC04809B07F7FE830B89090C8EFE0B8C830DF57F878A037D8E0983FA),
    .INIT_2B(256'hFE07F50D007AEEF8F41380FB7E7D730B7E03030084890F9381FDFF8B8DF3057F),
    .INIT_2C(256'h06EA86FD0484F77C80778002737AFF00FF02800503FD77FB8404F679FD7C066D),
    .INIT_2D(256'h81F4030906797BEA767402F078037A7B0287810176F5858681017EFD88717A08),
    .INIT_2E(256'h82F4FC0903837EFE847D857DF2010302850303848483FB7C7F8AF47C01FD86F9),
    .INIT_2F(256'hFCF6818C8AF77CFBF4FF81F676FCFD0681FE02FC00748800007D81020CF37F7C),
    .INIT_30(256'h027C82787A01F9FB0179778876F87804020BF902F2797BFE03040484F5FF03FA),
    .INIT_31(256'h84FE7C7F7F07F501797584F77C017600FD8281FCFBF87E838A7F750983FA0A82),
    .INIT_32(256'h7FFCFF037579800586FF008183FF81FE027B82027F018973FB7DFDFA01F8F771),
    .INIT_33(256'h85817E7B017D7F0500FE00FF857BFB78FC8A00FF027A8182F6047C74FA85FB02),
    .INIT_34(256'hFF7477797D03F888F87F73040A03018B8004F70277FD787B837FFA7B838B01FB),
    .INIT_35(256'h0009F4048181F2F87E87837EFE847F7F04037F7E770D80FF7E7E7F7FFC7CFF80),
    .INIT_36(256'h7D0405FF057F0C857F010078050405F40405FD027C0201867DFB8101FE820480),
    .INIT_37(256'h7E838005057FFE85027F7F79FC0283807D0202850002827E880184FD02FCFEFC),
    .INIT_38(256'h08777D8CFD818304FC7C00819002FE118CF60104011104F5FE817A758B738072),
    .INIT_39(256'h76FD6F73767269F77C810081FCFDFCFD04037FFB0610FFFD7403777785797C06),
    .INIT_3A(256'hFD77FAFF84FF0077838911857D8BF9FA818002FF11727EF86E7D7BFF86FA73FC),
    .INIT_3B(256'hEE728875660D818209F3F9FF7B7CE974017BFBFB0C84F90972FDFB83FF8279FC),
    .INIT_3C(256'h03027AFEFDFC837A8A008982F88276027A007F727FF686038002FF7E83877D01),
    .INIT_3D(256'h777EFCFC80868300FF777F81037DF2FA83FC828082F9FD01FB84FCFE750B7A88),
    .INIT_3E(256'h7A067BF97FFF74857700FDFE06F984FB8276807DFC0285748381827FFD018783),
    .INIT_3F(256'hFF050BFE07F3FD7F8A81827F827E8A89837D8281F47F078182FF7D00850AF777),
    .INIT_40(256'h807E078281057D82F40302FD777FFCFA047E06048681817E047B800985FB837B),
    .INIT_41(256'h7CFF8A027F798B7E0283FC7D83837E04FAFFFC7F83FE7F7CFBFAFFFD02857EFB),
    .INIT_42(256'hF37E067E030C7D8274FFF4FE92FEFD8107FEF204F7FD7AFC8C7BFA847AFF0E00),
    .INIT_43(256'h7F8F760B8A01E278FDFFF3FE06FF0D09927AFDFF7686FCF813FC84FF89F802FE),
    .INIT_44(256'h8A857A7D810085FB827A7FFC7773038B83FD84067EF801FF7D8BFB82F505FF73),
    .INIT_45(256'h067B8D0C028775FB07737D04FD83807603FE03FDFE6E817FFBFC7B818276FE83),
    .INIT_46(256'h82FE067B01FFFF867E81F87E1081888885797C87FA08FAFC00F8FF760585FF77),
    .INIT_47(256'h7F08FC7D017BF6F7F9878784028001FF7B860300FA8F7E808202820380F97F03),
    .INIT_48(256'h90F4FD71F4F4FC6A028984020579F2FEEE027E70FAF17E037B8674F27E8B0007),
    .INIT_49(256'h7E0C777D820B8C037B6B8A7BF78379F4FD77020200F6030A77FC77FD74F7FC7F),
    .INIT_4A(256'h0687010BF6F808FC867B80807DFF7E7D878289FE840200F4F403FEF902FCF100),
    .INIT_4B(256'h81FBFB0083808004030800830A8479FDFA7D007D87F5057CF6830185787E7E83),
    .INIT_4C(256'hFEF680020300840703788B7CF68305F80A85FB8C0584797A7C02FA7E867985EF),
    .INIT_4D(256'h88797F928B00017A7A8E7E7676807A7F7A8183FF81F80682FC7FFBFE046F017B),
    .INIT_4E(256'h0278F87C7DFFFBF480F87E02F70078007C047D797BF2F880FA7A81FFF27F7EFF),
    .INIT_4F(256'h7DFA007CFA09837D73717DFC76807B7D7EFEFF05000402FE77817B7FFDFB0387),
    .INIT_50(256'h8F017C7D89850BF28CFB9104F781FA7A798F12F98EEF8278FC027B9581FCEE7D),
    .INIT_51(256'hF3778779EB8B11868AFBF47501FFEE7803FA7C7C0BF48607FBFF860E7A82037E),
    .INIT_52(256'h82770179FC7D787BFC86F900F779FC847806F9FEFD86FD040108FDF3788B8080),
    .INIT_53(256'h8783028486857B78017A8CF97C830A04828281FFFC79FA058380FD80027D85FF),
    .INIT_54(256'h06F3FB7DF9F973F9FF837E898A8003007A84FF7AFE76FA08760C7B6FFE8B7790),
    .INIT_55(256'h827F7F0480031175F6FC0FFF7B05007A82060085FAFE768FFD8209FE77EB8478),
    .INIT_56(256'h037F020C80867679017FF77D7B7CFE887E83887CF5FDF7FCF5FE84FEFE8CF681),
    .INIT_57(256'h8680890286F200FDF97D877DF9FFF110F502FD037D040603FE7D05FA7775FF8C),
    .INIT_58(256'hF976FFF37D05FBFD040105016C02F9F46F0B087191E4FF8B060203007981790E),
    .INIT_59(256'hFCF377FF750D137E81FD8276F9FE007AFD7B81047EF1FA7F7783788D00FD0CF8),
    .INIT_5A(256'h810A84F87C7E80FD7808F901F87E76FCF47F7E7A7C03818B80FE84FF7A037984),
    .INIT_5B(256'h82837902807EFD82FEF97F80037EFF7F807E0101F9787C770B000782798386FA),
    .INIT_5C(256'hFD02018680FD798502FF7604857806060670040C748A7DF6FC8682750578836D),
    .INIT_5D(256'h83FCFB02FEFB75F7FF047C7F03FDFE8679FB81FD79077A028401FAF909FFF2F6),
    .INIT_5E(256'h840C0175FB04FF760203787E7BF9728072037B7277F88A0C00FB00FF85857EFF),
    .INIT_5F(256'hFA8479F6798BFF8300780701078674F3FF7E7B7B027BFA060282FD8DFD04FE7D),
    .INIT_60(256'h7D83007FFE00837C7F0681017EFC00FAFAFA81FF81FD7EFCFF7D827B79FCFCFF),
    .INIT_61(256'hFFFE0202030087FB818000FFFE81837F81FD8000807DFFFD8180FE01790181FA),
    .INIT_62(256'h010882FC78FF7F7A7D0381FE7DFDF67D7989FCFB7CFE0A7C827A0183FCFE7F85),
    .INIT_63(256'hFF8379FD8083828703FDF68386FEFFFD8AF8FFFD7DF9FC780001FB0C7706057E),
    .INIT_64(256'h87727B7E77FAF7F289FE0385FD847600FCFC8B0083757FEC7E8A027100FB7972),
    .INIT_65(256'hFEF17C7F7985F779F87A007A8180F8778082FF00887C7A06F100FBF8F7730003),
    .INIT_66(256'h0476800F7D03FA800D85FE00FF86FE0102868E0087FA7BFB8A85010090FC7FF6),
    .INIT_67(256'h00737D828477F87E7789FCFC81837B8C7F027F02820283FDFD01018386FC8482),
    .INIT_68(256'h7F0406057D7B837C7D06F77D80807F857D7DFD00748580040001027BFA087E82),
    .INIT_69(256'h8302FF01FFF8FF07867D0081807E818301FE01827E7E810388818302FAFD0501),
    .INIT_6A(256'h71F88077008978F9848008807187F77B038C017A8EF406078A890A8904807B0B),
    .INIT_6B(256'hF9FB7987F9112286897F8309FF0185027B018104FBEEFD7DF9FD7704837D0780),
    .INIT_6C(256'hFD82FE82027F0001038302FFF8FE877E06807E007E01FC7F048083FD7E808082),
    .INIT_6D(256'h83FE03898182FEFB81FF84057B00838380FC7C03FC81FC817D038280FFFBFCF8),
    .INIT_6E(256'h7E8F02F2FB82F87D76FFF8058CF07D86FDFDF700710488F6FA7E0101FEFE85FF),
    .INIT_6F(256'hFC8DFC757EF404F7877E0606867C07F8FD7B02807B8876FBF8FE807B8208FC78),
    .INIT_70(256'h81898A7E0D7D86847C89F8FF8AFFF47C77FDF971F88C8D047BEF7C077C7E758D),
    .INIT_71(256'h010F747CFE7085880803F60C05FCFE8279F8807D868D82F278800AFEF806750A),
    .INIT_72(256'h85F0807B80FFF17C8EFF820D0004F8057B088D8189ECF600FC8C7DF686857A81),
    .INIT_73(256'h06FB7D85FE9384FEFD0179007CFFFCFD7E048104868AFF8A7A037A087F72117F),
    .INIT_74(256'h0402057D027E03867D7E80867A7A057C0C7F87827E81777E02017BFA7D088181),
    .INIT_75(256'h0A007D868882F7FC7F80FEF97EFDF9868400FD80F90304F9877D09877EF90702),
    .INIT_76(256'hFD0500F3FEF984F47A7D070184797978F0F3FC758BFC057EF9F07C86F57D7602),
    .INIT_77(256'h820480FF7E040E0A0678000086817C74F07601037F7AFF6DEDFFFFFC790C7D79),
    .INIT_78(256'h0901830B0375037C0783030806057EFF817B097F03F27DFAFA82857083060779),
    .INIT_79(256'h7C767B7B7C0A730381097C01827FF50D848C7F7F05070F057E7C8609007F8484),
    .INIT_7A(256'h8777EF8887F98B009081840381007F017D7A0EFD05FF09FD758D027F0D017C80),
    .INIT_7B(256'h82FC06050784830907F9FE7E007E06088A80827B90847F0E71FA81FBFE068109),
    .INIT_7C(256'h0274F97D01817A7B7FFAFCFF7AFCFC817D807F7F837B75FBFC84770C827D037E),
    .INIT_7D(256'hFC790781FBFB7BF77B7D7D73F4FBF2FF027782FBF87C0981F57DFC0205F8847E),
    .INIT_7E(256'h78FB78898182FB8B7E720801F50491819BEDFB15088A817808867E7F7FF5076C),
    .INIT_7F(256'h83F3860A88E87C6C0303F67C0982F8FCFA7E7DFC7FF3FBFF7B7CF3EC04EBE9F5),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[16] }),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[16] }),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[17] }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\doutb[17] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[13] ),
        .ENBWREN(\addrb[13] ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weightROM_blk_mem_gen_prim_wrapper_init__parameterized4
   (\douta[16] ,
    \doutb[16] ,
    \douta[17] ,
    \doutb[17] ,
    clka,
    clkb,
    \addra[12] ,
    \addrb[12] ,
    addra,
    addrb);
  output [7:0]\douta[16] ;
  output [7:0]\doutb[16] ;
  output [0:0]\douta[17] ;
  output [0:0]\doutb[17] ;
  input clka;
  input clkb;
  input \addra[12] ;
  input \addrb[12] ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire \addra[12] ;
  wire [11:0]addrb;
  wire \addrb[12] ;
  wire clka;
  wire clkb;
  wire [7:0]\douta[16] ;
  wire [0:0]\douta[17] ;
  wire [7:0]\doutb[16] ;
  wire [0:0]\doutb[17] ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h90F288570E96B735005DDA28D6271630FE9AE90F2CF1A3867B99B63D3A613760),
    .INITP_01(256'hA7231645DC1067AC2FC3D10E26403DB6B1AC684A421C81FAD22C7518E7109308),
    .INITP_02(256'h9253A547FA1B70BE2E623CA411F5636A64FE1DFAB53B3F84E6698064B0014C5B),
    .INITP_03(256'h98052622DBDCB58E58D9A9100300DC4D16992A7AA098D406D785FC28F61BD844),
    .INITP_04(256'h7913FAAE0A404A09C3483555C49B59110D182AE1030BF9EEAC668DA538CB3C2A),
    .INITP_05(256'h1EBF9A0F9067160F1E66739AC73A8C7C0209F167190866AFBAE41959C6087A64),
    .INITP_06(256'hA312A1FE5AB6A49232ACA8F8AAF8D5928DC08616AD901902282E46CC72D598E4),
    .INITP_07(256'hAD1ABA7FD5E85FA613ED102612C2B8087A6BFB75791891E73E38F2F1E4018C9C),
    .INITP_08(256'hC33F2ABCA18739D8CB89F175AC0F18E0FF18810ED738E6892607E0F50D05D67F),
    .INITP_09(256'hE4EDFEEE1BDE112BEF3DA66EA729E1897D9D6C2F6FFD92F640725F447D566ADF),
    .INITP_0A(256'hF8A0E9354C593CB41946FA72AF7576D922768F0479D0887DE5CF1F0E5B2A6273),
    .INITP_0B(256'hCF35385CE9C5CFD72F873CBCEFC4C61636734B274E1405D9DDF1EABDBD26A5CE),
    .INITP_0C(256'hDC2A3CE0A7EDB5205308A6E1ADC331B078A4A1E763F921D5A3511859AD6857E5),
    .INITP_0D(256'h178C77C6BB3D302D7CB6FB3FD0847053BE1CFBDA0C43D69FF4888BEA0C5D6715),
    .INITP_0E(256'h08392D45A5DD71BF001A2B0E2820145DF79C6F84D0FA72A221977F3F92B38EE0),
    .INITP_0F(256'h446E4B5A19AFAF5C8F175E982FF4B8303B49CB6C354C12B7C82CE24269BDC964),
    .INIT_00(256'h0208FF7A7E818B7DFE7500F9F6FDF3F9720985700581000D797C8405830A008C),
    .INIT_01(256'h79F57D74F6898C84FFF57FF800028006F9FF0004827C057F827F8704780C0B8A),
    .INIT_02(256'h8179868D00017C7A107B7E05FF818382850D1088878376F87A8805010B80FFFE),
    .INIT_03(256'h046D06FD7C767CF87D8905777E7D688EF103008086838708FC7E7B0104000802),
    .INIT_04(256'h81747E86FFFBF78105840900FF0A06F9887D08FD06747C7D0005FCF5FE007DF1),
    .INIT_05(256'h84F2FA75790F00F3F905FCFEF800F47BFB0283818B0B7683FCFD027B02FD80FC),
    .INIT_06(256'h7D1082F980837702F8087C7B8DFD918083F0F7857D74838107F38604FB8906FC),
    .INIT_07(256'h038B06FDFEFB12F9077F818D8A83987F80FEFC7F7E09FAFA78FE027680FF7B81),
    .INIT_08(256'h748B7B839009FF8E8CF308098480070D0D7A8D8A0C0009FD068A8C8C06F6817E),
    .INIT_09(256'h787F8903FC04FCFA0587F984017D8602FC81027E8AFE0680F3FFF77D828E827E),
    .INIT_0A(256'h80FAFF007474847C8A098B7F018C02FD8087F50000838803F401907C088A7690),
    .INIT_0B(256'h7A0A77FCF2888E9284818D09017E847D7908027E09767808F3FE060477F48A81),
    .INIT_0C(256'hF38B00F97BFCFF7A7707F5FB7579FEF4F57DFDF67B74847F7D7202FF757BFB82),
    .INIT_0D(256'h7B797500F8018A7C82FAFD0104817AF7FCFBFD7D037474FA83020401F7867B6F),
    .INIT_0E(256'h82FDFA77FF027BFDFDFDF784067DFBFFF67DF4FD7A0084FBFEF4828779000387),
    .INIT_0F(256'hF80779F4FF80028200FC83FE02818301FFFFFBFE79FDF876FA7E817BFE057D7F),
    .INIT_10(256'hFBFB800275FCFEFD84F902FC708079777C8C7E7907007E8A738085F0FC06F603),
    .INIT_11(256'h7FF26E7D030B8E796F7F8874F7857B83737E7DFE7BFC7D7B7C848107FAF60A8A),
    .INIT_12(256'h0489FE7F00FD87747D86FBFBF7F47F7B7B027AFD7E037E8B0279FE8BFBFE7B82),
    .INIT_13(256'h8603FC7D85FD03927B6BFA7EFE7D9003047D0303F87586F4037E7D7D79007D8A),
    .INIT_14(256'hFC8A837C7D02FCFE7886FF7B08FFFF7EF17BF9797EFF84FB7FF6860076F9857B),
    .INIT_15(256'hFE0880FF7F01FEFE89FC7D8181FE040086867C00FAFDF87A82007C7DFD867C78),
    .INIT_16(256'h7E85000507F7870076FE06FC8706068209FBFFFF7D81F8817482056E837BFF7F),
    .INIT_17(256'hFEFAFE0603807A867A877CFC7603F9047A880003860B88847CFF06F9F57EFC82),
    .INIT_18(256'h7EF8F8FD7D017C6E8DFCFC04FA02807B809088FA7EF2767BF281037E7D007B7C),
    .INIT_19(256'h006C04FCFA1183F8F9FC797AFDFF6B817587FC87867DF300F6FDFA89FF7A9107),
    .INIT_1A(256'hFE7C7F7FFC7BFE06FF04007C86058303877E80FFF9827CFFFAF900F708F97882),
    .INIT_1B(256'h7E02F57FFA80F9017D03FD04007CFC038003807D088B807C79FD04827B778180),
    .INIT_1C(256'h7AFFF8FAFF7A08F68D039203F786787BFAF706790E640AF38880860507F7007A),
    .INIT_1D(256'hF3F376766F940AFD06F4FBFD05817372870203808E7CFB00F0FFFFFE848CF9FF),
    .INIT_1E(256'h82057F03F97D048678F885FD7E837A807575FCF9FFFC0201827783848778FFF2),
    .INIT_1F(256'h71FB78F873717F7C877678FC077E01FAFD84800381F97D07F9FFFDF60300757E),
    .INIT_20(256'h7C7D037CFDFC76007CFEFD0772F9FA7CFA04FE7EFB007BFD0281FA747E857B00),
    .INIT_21(256'h83F987040386FFF984FC0BFA7E8104027C847F827F7B7E068086018100FB867D),
    .INIT_22(256'h82040081887DFA81FC86FD82157B7C827F807B7A8400FDFD05807F6F8106010D),
    .INIT_23(256'h088A7C07FF7A6F01FE00FE7D05FC03FB7D0383047F9309F484FF8B79798BFF84),
    .INIT_24(256'h7F0106FE7F7B7D78FA828184FDF97A7E767FFB8280F281FB7C7DFE7F7F7B7F76),
    .INIT_25(256'h007F7FFAFFFEFAFAFDFA05FFFD7E73F97CFD827F81047AF9837E7E7F82777E7F),
    .INIT_26(256'h758BF180856F89850400087D720508748F0177090EFB0AF678F988F575F8FA71),
    .INIT_27(256'hF6ED03018108120D888B848B09FC8404847B027A7AF011F9F103FE7CFC757BFC),
    .INIT_28(256'h817670098B83930815F20CFD737DFA7907770DFD13030769828D000F85E78101),
    .INIT_29(256'h75680B04058609109504E57D84FD808D8BFF7E7B8C6A87F6EC7E717A84907B7C),
    .INIT_2A(256'h6A8F728700741203057E8B84EE7883EE050378039F7D8BFCFF7B08867E7D757B),
    .INIT_2B(256'h7F6D7E7F820C9D0803117D058400FC01827C8182056E8474767DF4F77474FCFC),
    .INIT_2C(256'h7A1A75037F808978F37785797CFDFC7CF9107B817D09847DFD6E86097B6DF808),
    .INIT_2D(256'hF77EFB72F40487898A74F0858A7E020102027FFE81F9F8F57A010181FE880F05),
    .INIT_2E(256'hF891FEFC7D7E7E7C7D7AFD0189FEF3047B827BFB80FE8B7FFF79038901777E86),
    .INIT_2F(256'h748779F6F485838086787C0E8F028EFA80FA02FAFE00F978817DFE027B9086FE),
    .INIT_30(256'hF88CFD73FA04F3046FFFF28506F97F03F4FC748175F9857810E97E85FC880FFD),
    .INIT_31(256'h85920205FFF9FCFA06F48C7F027C1D0106FB0485F07F7CF902837E8183107DFD),
    .INIT_32(256'h86F675FC72768687FB7702817B057EFBFF00FD800206027A78FCFC79FD88FB03),
    .INIT_33(256'h01FCF876F9060E867C02827DF78305F6FE07FE0009FE8206F57F01FCFE7F0505),
    .INIT_34(256'h037C7702FEFB8A7B88FD0BFE7A7DFAFC7FF604FB08FB8777FDF87D880477FE7B),
    .INIT_35(256'hFE7905797E7E04000582FE0606FFFE01038282FE027801FEEBFB00EDF987F07C),
    .INIT_36(256'hF981067C7D7D02860102F68203FDFA05787D73F8F9000CFD83F282037604FE05),
    .INIT_37(256'h7992768178F8008B8705820E08FF8FFE05FEFD7FF381FD76897D0000FC8E787C),
    .INIT_38(256'h770887FC807E8101F885F27B067D8602FFFBF5FFF00584F887FB8475FB7705FC),
    .INIT_39(256'h8B88FF078DFB758407857E06827C930581010389F304FDFE8A0383FF0078047A),
    .INIT_3A(256'h0FFB7782FD79117284858D85F4857AFE7C7D85FF0CFE07007600FE05028473FB),
    .INIT_3B(256'h71767BEA6C898D907FEC02017CFD6BF2030382FC05FC7E90F77C0402770D7B00),
    .INIT_3C(256'h857AFC0E0279FC068E0007848882788587FA88807EF6FEF1040B00F70977FE7E),
    .INIT_3D(256'h7B7BFE7CF901F67EFE0EFD078781FB087B82FE810407048572FD858187848387),
    .INIT_3E(256'h800AFA008F81847F0283867E847F04FD80F406028B767AF179F88104026C7FFB),
    .INIT_3F(256'h7E78110184FD84810D826C7D047EF5057D748100FFFC83FCF6F986F9790077FD),
    .INIT_40(256'hFC8585FCF301767EF901817FF5FB79F983FE7E7FFB78F77A79FFFB7783FCFBFD),
    .INIT_41(256'h84FDFC810285FDF57DFF05820BFFF1FAFE80FF7DFA7CF4F9FE81FC0100F38082),
    .INIT_42(256'h0979FAFF897E8501038009FA0203FE04F87A04FC08FCFD7CF6FCF58287FE7EFD),
    .INIT_43(256'h787AFBFB80017A7BF2FEFCF6F9FD720177797C020880FF00F90200FD82FEFB84),
    .INIT_44(256'hFE03FFF3F9F8027C797E07FF037B7F8078FA807A7D7B02FEFB787D047880837D),
    .INIT_45(256'hFF0400F4FB840389047C03FDFF808B7E7EFBFF0478F981777C01FC7AF993FE78),
    .INIT_46(256'h01007C7F7DFE7F84FB777F7D7B0301057B827D768004780AFB857C7302077CFE),
    .INIT_47(256'h7B7776FA04FBF87BFBFD83F57B007F8075FC0002FD83FD837CFC8082817C0203),
    .INIT_48(256'h817E83F6FC017F04717C76850CFF870501EEFE01EE0CF1F1F9FC84808406FEFC),
    .INIT_49(256'h0084867CFD77FAFE847E05FD7B84057A80847C04FD037486720209F782EFF3F8),
    .INIT_4A(256'hFE0902F67977756DFC03F68479F6EEFB72FB01750079807E00F98203F787007F),
    .INIT_4B(256'h0806FCFFFD7C03047DF183817FFBFFFA83F87D7D007976017D00837BF18AF879),
    .INIT_4C(256'h89FDFA87F77F00FE03FB8502837EFC087702077E857B7EFDF70BF8FA06877E01),
    .INIT_4D(256'hF8FFFC7E7B067CF9777A8378FA01FA787B00FFFF837EFD09FCFE80FC04787C05),
    .INIT_4E(256'hFF7DFA00FD028E03FE010176770403747A778000FD09837B7AFC01817EF97C83),
    .INIT_4F(256'hF28178F173F90108FD7F7D83FCFC00FF80050085837F878176FE03F18082F504),
    .INIT_50(256'h8E78F878FC83F87B8301FA8007FF79FE7BFC80FEF374FCFE007E87797A0800FF),
    .INIT_51(256'h7D047EF075907600FF7F0278FC7F7C830286818483137800FC83057FFF050004),
    .INIT_52(256'h80FC0677FD7DFBF5FE8A7B82F800F0737592FEF304F10B057E83FEFE817A7A85),
    .INIT_53(256'hFA7C6D7AF60D910288FC0681817EF2787DFB7AFA826EFA857E7D769287FD0A78),
    .INIT_54(256'h038C06F47D86FE6E7E0602FF7D76EF7D6C07FB71FBFA880DFFF67A028507757E),
    .INIT_55(256'hFF820475F38A080306EF07050585786CF7FE807D017A7A868085808BFD0BFE78),
    .INIT_56(256'h7D02FA007F7D0303F6F98077F8050000FDFCFBFCFCFF7E89FEF57EFD7A07757D),
    .INIT_57(256'h7EF9827F7D01F789FA7D02FEFC8302FCFF7F00007D8480FC027DFD007B887B06),
    .INIT_58(256'h840587F5FE7A07000187FCFE7C7E837BF7F7FF78F47880F97F7D0282FAFF780B),
    .INIT_59(256'hF68AF9FA04808306FD02F900027CFB8AFE038001F67B83F9098188817B8A01F2),
    .INIT_5A(256'hF97F79897C83FD8B7E8001898A84860087FF0007060AFD04028205FE00778003),
    .INIT_5B(256'h75FD877372778EFA83867408868097047F05048302827D02F7FE847A80FF057A),
    .INIT_5C(256'h7B80F6FFF87E8DF802FD7FFC7200F7FAEE007AF104FDF90FF80182FA7B89767F),
    .INIT_5D(256'h80F3FAFE7D0D0287FC740AF9FA82FE037C7A7E0300FD007FFC04FF8375FF0109),
    .INIT_5E(256'hF9857803FFF68284737EFD0389FD0401FA6BFA08748C09ED77797EF4FF7E8678),
    .INIT_5F(256'hFC00FFFF7D6D76F98C07F68D0B010B8705008300FBFF8DFCF97EFDEF7F0676F4),
    .INIT_60(256'h007BFEFDFF7F967FFB018F7CED117EEB7CE8FD7E110589777A7D070781ED7577),
    .INIT_61(256'hE9F780F4EB0104788971F705077EF3F47E83FDFF7F618302787DFCF17E026D7A),
    .INIT_62(256'h8B7EFC83FE7F037195F8FC01F1F8F30C008591FA86FA8404790B80077C0A787B),
    .INIT_63(256'h7FFCFC7BFC927A0981F4007C7D7D747C777C0203887083FC7AFD770277828B0B),
    .INIT_64(256'h7D77F980807DFEFF827A8AF8877AFB067FF87C7B000986060085797E038AFEFB),
    .INIT_65(256'hF980FE85FD78FFF901FA0D7B8202067C837E7C80810081897580797F7BF57483),
    .INIT_66(256'h008AF7FE8079FEFD00F57FFD7D7D877C7F7B7C00898402FC7B000100FEFAFC72),
    .INIT_67(256'h07F88D038D8A087DFB857D01FD7FFA82FE858181017880FAFD7C78757F780104),
    .INIT_68(256'h018087817EFAF482067E758809FF8009860E88FFFE7B80FA80830B7D828B0081),
    .INIT_69(256'h0CFF75880A9AFD047C9080F9FE7C7491FC817F860B0D83FEFF02041005FB948C),
    .INIT_6A(256'hFAF2800D02827C8E0500887B780787000803028B0E0B79750687FE7905F57FFC),
    .INIT_6B(256'h8078870A896EEB78788EF7737A830108FA047D80817D8B80FC81F8F406F07CFE),
    .INIT_6C(256'h85F6797F727A73FE8079F682FC86FA7DFE0685FFFBF9F9FCFD8581728089FC87),
    .INIT_6D(256'h09FFFAF9018A8BFCF505FDFEFD01FC008002007F850CF684F7817C01FFF98B01),
    .INIT_6E(256'h88747E7FF6FFF9FE107AF7040201868E1087860382FF7601F0877CFB7A7D7981),
    .INIT_6F(256'h02F405070A05800E83FAFAF3747A0285FDF902FE0772827F7680FA88FDF10C0A),
    .INIT_70(256'hFEFD8B7F040279087A7AF8FEFC8F037179FF79F975017A8180757D6F7879F903),
    .INIT_71(256'hF977767B7AFD0278FA0F77FBF97EFC860B027CF6F783747E8A0406FF8AFA7900),
    .INIT_72(256'h0A77817900FC05728E09088E748974FB7A0902FB0AF902FE7707818401FE717E),
    .INIT_73(256'h73727F747393928D817900777DFFE1740383827085F572127C0381877B0B7D77),
    .INIT_74(256'hFF8100FCF905F8797D0C0309F6FBF9FC7CFA79F688F70488888478FEF8028A77),
    .INIT_75(256'hFD80888304FEFFFA0204848A867F847D0C7CFD7AF5737F79017FFE0200F9F67E),
    .INIT_76(256'h8D7E8706FFFB8B038B8B098304FA0003008690FE81ED80047D8401F70A058D02),
    .INIT_77(256'hF67E78F3FC06EB8C8987FE838701F991037F84FC060C9083FD7C068D7F0788FE),
    .INIT_78(256'hFE7C7EF47EF7857D11FF8C04FE007C7FFBFC86808B05FCFA7703F975FFFE83FB),
    .INIT_79(256'h76747901FE858B757472057B7702EE72077A0380F9FC81897E017FF77E778675),
    .INIT_7A(256'h0A7679F4FD7E007A0AFE0905F87CF6807AFA017500747C01F80C0381FF84FE04),
    .INIT_7B(256'h81837F807E0A08867B7389F97EFE767376FE02FA0575858BFCFB7F847AFD0100),
    .INIT_7C(256'h7A788A04878280840601847C7A7DFC798003008000837D038001887D8980F97A),
    .INIT_7D(256'h05FE030C0BF90283018D837C7C027C88757DFE03807F82020181057DFA830400),
    .INIT_7E(256'h7B860780FFF8827BFA05FB7DF877837700FBF80601040582F97787007676037F),
    .INIT_7F(256'h7A7A7E0183F183800179787D81FD03FE04F98284F46F7E7B11FD817A7A7E7BF8),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[16] }),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[16] }),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[17] }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\doutb[17] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[12] ),
        .ENBWREN(\addrb[12] ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weightROM_blk_mem_gen_prim_wrapper_init__parameterized5
   (\douta[16] ,
    \doutb[16] ,
    \douta[17] ,
    \doutb[17] ,
    clka,
    clkb,
    \addra[13] ,
    \addrb[13] ,
    addra,
    addrb);
  output [7:0]\douta[16] ;
  output [7:0]\doutb[16] ;
  output [0:0]\douta[17] ;
  output [0:0]\doutb[17] ;
  input clka;
  input clkb;
  input \addra[13] ;
  input \addrb[13] ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire \addra[13] ;
  wire [11:0]addrb;
  wire \addrb[13] ;
  wire clka;
  wire clkb;
  wire [7:0]\douta[16] ;
  wire [0:0]\douta[17] ;
  wire [7:0]\doutb[16] ;
  wire [0:0]\doutb[17] ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[16] }),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[16] }),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[17] }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\doutb[17] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[13] ),
        .ENBWREN(\addrb[13] ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weightROM_blk_mem_gen_prim_wrapper_init__parameterized6
   (\douta[25] ,
    \doutb[25] ,
    \douta[26] ,
    \doutb[26] ,
    clka,
    clkb,
    \addra[13] ,
    \addrb[13] ,
    addra,
    addrb);
  output [7:0]\douta[25] ;
  output [7:0]\doutb[25] ;
  output [0:0]\douta[26] ;
  output [0:0]\doutb[26] ;
  input clka;
  input clkb;
  input \addra[13] ;
  input \addrb[13] ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire \addra[13] ;
  wire [11:0]addrb;
  wire \addrb[13] ;
  wire clka;
  wire clkb;
  wire [7:0]\douta[25] ;
  wire [0:0]\douta[26] ;
  wire [7:0]\doutb[25] ;
  wire [0:0]\doutb[26] ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h1BF1447E1FA17C8D1D9774E3F6A222A885089AFD0470B1DEFD5C262FD44F64C7),
    .INITP_01(256'hD410470723D15D843C2DE4ACA89081CFFF8E29505141293BEC8F9FE5D578BBF6),
    .INITP_02(256'hD63E68C682FB71012D92C871CFD33E6604A8CD060A2CE392AB27AA3C8482BEEA),
    .INITP_03(256'h7008885AF99DF07AE2E1B8FF3AF2AF726DAC540DCDB4D5CC6F418D96E8DA2EB7),
    .INITP_04(256'h818F0225047EB48E6EB416F31EF036650D491D4DBC0214D1200A813B0CCD4B6B),
    .INITP_05(256'h06CC101811312B98DB7AF31FA95690D5CAE13033FAD4D96C3E644F355B0DAA0C),
    .INITP_06(256'hC24AE11E3DBB68798146778247A9FCCBA9FBDC65141BEBC86A07B0996EBD5A9C),
    .INITP_07(256'h40E8E304BFA7FE9339626F782C6114DC70328E83703CBE13B2D91D2F7B608E98),
    .INITP_08(256'h0090B149B5EC382C47A391BDDDC04CF5C0E5046EC32705AAEABF3E06176CE40A),
    .INITP_09(256'h218C1F8B96BD8A9EE0A217E688436042383773D294E3594703B9FB2EBB51105D),
    .INITP_0A(256'h22D4BD2C2EF2449EA862D75B7792F7017731D3A6CF3E2D2A07C31A215F8C31F8),
    .INITP_0B(256'hD7B634583BC800ACCB23888C32231E8AA4E2D9C7578AB365E94DB0CB4D9BFB82),
    .INITP_0C(256'h8F6DE674E506A7B3A71AB92E87D5CB9035D6F88FAB3B735DD63E53B8399EB144),
    .INITP_0D(256'hE2033012106B80E7712915CD885D3435E210E39035EC5EABE6231BD0744DFF8C),
    .INITP_0E(256'hE6E8B04DBB609E92307B2350782AFAB4F599E8CE5DE4E89001DC1D0DE685D8E7),
    .INITP_0F(256'h776AB204CE100552BDE063151D8A707EC2C882EBFD6F4C1B33EE1879F39F7BF6),
    .INIT_00(256'h03787A4AFD7E847C483F850301447B3F84BC4E03C77FFE32FD06FEFE45FD00B4),
    .INIT_01(256'hBFB94680FAF977C0C47F7A3E01BDB8F9B9028001C8FFC6BFF83DFCBDFC02F682),
    .INIT_02(256'h3ABBFF7B3FFF7EFF40843D7C42833DFEFDBDBFBD7ABD7F0040BC84FB3E80BE3F),
    .INIT_03(256'hBDC47E7F7C3CF7003FC1C2FCFA804041C23F80FF3B4380003EC087803F023CC2),
    .INIT_04(256'h3B3B7DC1B8BA3CFE04457F7FB84201BE0140BE827E3CBEC3C1C6C1723D8BFEBA),
    .INIT_05(256'h0181B943C0828D3BFD0049BCBC7F80BB3DFE7FFF813D7E827E3FC042BD38C740),
    .INIT_06(256'hFFBDBFC0C07E40C1BE7D817F024282FF83BB00013E03FFC0FD41807DC340033D),
    .INIT_07(256'h3E427E3FFF3A7BFDBE3F4081FE7EC140BEC4BFC1C2C302433E0140FB80FEFE3F),
    .INIT_08(256'hBC02C8C278FF44C3C3807FFD44C13EC0FA030600C082C4BDFBFE4389C602BF3E),
    .INIT_09(256'hF7447CC1787D843E7E7DC1C042C17C76BBC240BF077E7EC6847F0143BDFCC3F6),
    .INIT_0A(256'h4201BFFE7900803F3E3FBB00813B004180813D423CC7827C3E420146BCBD3D7C),
    .INIT_0B(256'h0400C2BE0301FF02813DFF00417E82BF40FB017E7FFEBF7C02BFFF42BD3CFF3E),
    .INIT_0C(256'hBE7F8400C0FB83C23EFE7DC47DBD40C2C4C241C4FEC0BDC17F007F3CFF817E7A),
    .INIT_0D(256'hC200FB0448C10285FDC843413DFE0184FD7D7F4181C1064181FEC1C581FAC602),
    .INIT_0E(256'h8004BF80F9833FC33DFBFD7E80037F7DFD417E00BEC3BF02C1BB02BCFF7ABF03),
    .INIT_0F(256'h79BE3F7D3AFCFB3E7C027B03800182464203BF007F7E7DFC7F3F3FFFC0803F3E),
    .INIT_10(256'h4537B9C5C5BFC0C3857EC2BEBE7EFF063EBB437FC0C6B83681C43BC1C53DC03F),
    .INIT_11(256'h3FBD40FDC3FA76FFFCC1BA3A7F003D823DFF7F01C47F09FE7980BB7F3E783D3E),
    .INIT_12(256'hBB84C2817A7E3E817843BD3C02BD3F427CC23E3E3BC18480FCBBC1FFFDBE3DC4),
    .INIT_13(256'hC0803D82007C7B81417BC081C37E8481C13EBE7F7F417FFD873E43C2C2BF427F),
    .INIT_14(256'hFBF4BA05023FFC0081BF817EB6FD4144BE40BD413C033EB602063E8103B9BE3D),
    .INIT_15(256'h857B7E83043739F8FD833C38BF40FB033DF93EBFFEBC46BA7EBF3CFDFF773E39),
    .INIT_16(256'h00424A04773D8503C24200BDC748C484C63C0609F9C502FF07070300C5BFC878),
    .INIT_17(256'h40BC3DFF00387AC03C063F8080BE43067E88BE3F01C5FD438580817EC3B93D3E),
    .INIT_18(256'h7F7BF9C1BF7F3D80857EC0BF03FD42C4407E0182FC407DF9FE023F3D80BA803C),
    .INIT_19(256'h3FC37F83413E7C7CFF83FE003FC17FC2FF7D00C203C04480BE80423B40358101),
    .INIT_1A(256'hB878847ABD3AFF80087CC1FCBA4202FF41C3020200427B023BC63BFCC0887EBB),
    .INIT_1B(256'hC8C1F9CA0B8346F9B2C389B3F401B5417A76BF8100FABD86BEC180C13C34833F),
    .INIT_1C(256'h4182BAFAFFFD007E39C2018180C07EBEFDBC3A7E7AB7C142C1B9BE3BFE8181C4),
    .INIT_1D(256'hBCC03C3BF7473B3D017901447E41407743BE7F3DBA01FD7B42FFFFC18783BB06),
    .INIT_1E(256'h427C80470380BE3B0A3C0803FD7D777C837D8C008A3AF9F7800CFC3D44BCC632),
    .INIT_1F(256'h4539C9C3C5C1BDBDBC3BC3BA3FC0C1BCFAC5418245BBC844B9FEB5BC81FCFAC6),
    .INIT_20(256'h42013CFD81FF017FB9427FFE7FC042FD7FFDFC803DBC807DBB393F3E3EC08082),
    .INIT_21(256'h3D7FC47A7A02404080BA4040FE8040BE83BDBEBF7F433FFD7F81813EFF02FA81),
    .INIT_22(256'h40B9BD863A40FF43FCC1BE3E433F4204C53B3D037B850076BD08433D02FD457B),
    .INIT_23(256'h41B6448141BA767B02813D3F00003F82C13F40FDFDC77F803DFD3FBE407DFC7E),
    .INIT_24(256'hC5FEFAC085BB03BE3FBCC2C105C4820103FBC0810501C1FB3B0203C28475FE03),
    .INIT_25(256'h7AFD433A7A853E0585FFB9FE00C079C0FD82007E85FFC17FB4C0BF3F0283BD7C),
    .INIT_26(256'h7F3D00FEFD00FEC0FFC27FC07F02FFC3813D7E3E79433D8104410234818102C2),
    .INIT_27(256'hFE037B01BC7E777D7B8140BD7BBFBD81BF814101BFC5C4BF7FC1C0C3053D7FC0),
    .INIT_28(256'h827DC03EBE3FBEC6FBFEFE7BC28406BB02BFBEC301FE3B3DFEBE40803FFD037F),
    .INIT_29(256'h7B3E3F3F7FBA82C1FC82BF007F01BB7D3F828001C0404101FF7FC23E02C07F3D),
    .INIT_2A(256'h85FA3D81367F7C43BA3FB800C4807D4383393B0239897FFC024081BBC07F00FD),
    .INIT_2B(256'h008539BFBCBDF1FD7E40FE3E3C7E40FD83803EBDFE45FFBFC040FC81057ABA44),
    .INIT_2C(256'hC3F6C18880073DC3067A423E01420185854788C50CC5BE85C28CF8C1408101F8),
    .INIT_2D(256'h8779C609490081FD7D8141377E0283C242C27F3FC2C040057FC0FC40C3028142),
    .INIT_2E(256'h81FB3C833A01814380FDFDFFC47D8440C2FFC285C00441B600054081BF3BFCBA),
    .INIT_2F(256'h407B4181043CBA3DC0C3FEBE80BF83057E80FF81C1C1BE80FF8041FE00F73EBD),
    .INIT_30(256'hFF0045BEC3BFBE7E80827F3F7E017FBDFA7CBE3BFE3BC0BC403FC2C0807FC17E),
    .INIT_31(256'hBEC1FB424280BC7F3EBD80FEFDC0BA403C00C081FCFD42FF46FE403EBF027EFB),
    .INIT_32(256'hFF7DFE05BFBD8001C78046804142C1BE7F820600C88002FDBF45FD81073D3EFB),
    .INIT_33(256'h3FFF4143C1BC80FDFE063CBEC33FC2BDFDC3BF410680FE843A7F03BF8003BFFD),
    .INIT_34(256'hFC0143BC3DFF7AFFB74438C002FC79003ABFFAFC35803C05427B807EB941FF40),
    .INIT_35(256'h008537C47CBB377EBEFBBF7DF9C17FC0403D817F7803417B874144C182413E7C),
    .INIT_36(256'h42453E3DBD7EBF007A01FD41837E4041BB01FCC2BBC001FE00B53D407FFF7F7F),
    .INIT_37(256'h3D84BCFFFE3DBB3F00FB4303C1C184FC3FFDFFC03CC0807F3E7FC005823D01FD),
    .INIT_38(256'hFFFE453EBC7FFFC3FE3FFEBD068342FD83BD7CC0BB8000BDFFBE7F3C803F3D3B),
    .INIT_39(256'h7F3DC2BFBEBBBB7E7C4481FDFF3E3F3F02FEBE3CFD027D00C3BF8080C33C7D3E),
    .INIT_3A(256'h007A72C2037C7C4384BA07067F80C1BF81008102C6FBFA79FC443BB982FFC042),
    .INIT_3B(256'h3D744439390505BF7C824080C0C0FA3A40C140C242FE8002F77E7FFD8002FEC5),
    .INIT_3C(256'h847E7A40008003FE8980C48040BE3884FB810677C3FC43407F45BFF68301FFFD),
    .INIT_3D(256'h3AFE803C3A837CBD823D00FF80C1FFBD44FDBF7F83BFBE04F8BF4103BE83BE01),
    .INIT_3E(256'hBBC141C33D3DC17FBD8200BE81C1C6BA05FE80C2C382037F014201FC00038080),
    .INIT_3F(256'h86FFBFC5C33EFF7FFFC9C1BEC141424545877D3DBDC240C1C43F4080843D7A01),
    .INIT_40(256'hBEC2BE84C242423E7F43C6FF3C047D7C8340C40284BCFD01C1C1BE8001FEFE02),
    .INIT_41(256'h3C7C8040FB010744C0813B7D7EBE433DBF45BEC0C0FEC242BC403C3DBE00C004),
    .INIT_42(256'hFCBA03C541087F03C286BEC08881458146BDFF86FF3F00C609850180BD0008BC),
    .INIT_43(256'hBF80C4C985BDC43E7F43C08140C0880401FE8141FCC83E3F85FFBFBDC93C3D7A),
    .INIT_44(256'h41FBC6C83F7F83464380023F83030800857BC506457E3FFA3E033CFF40BF0077),
    .INIT_45(256'h463AC00B48F9BEFB7F07FEBA83BE3D7E7D887E7F7BFF04C2403D3EFD08BABC7B),
    .INIT_46(256'h39FE03003F03BF417C80FE3E4300817FC1FF3B803D7FFE40FE7FBFFE00403D00),
    .INIT_47(256'h7F7F424202FA407E3C81827C3FC0C2807FC0C2BEBE423EBD403F7F3F81BF7DBF),
    .INIT_48(256'h01F7BC8006F8443C8BBDC7BFF83EB9FBFC7FC7BD43793EBB83043AFCC180C33C),
    .INIT_49(256'h85FE3D4302C00B43C2FAC279FDBE7B3C793C00C444390445B9BF3A7DBBBA7E82),
    .INIT_4A(256'h7DFE41443FBBC101C27EFE017E810400C5C3BFC43E7B41FF0041403A010241F9),
    .INIT_4B(256'h417FF94405FFFFC0408482BC7F000043BC400141807F3F01FB00FF0184B70080),
    .INIT_4C(256'h434040823F477E40C07C403D04BE06FF47C20087048380BE3F803DC7C1BCC33B),
    .INIT_4D(256'hC4BDC5070941BEFC7CBD7FC004817F820203C1BDC03DBD7F007EFFFD443C0300),
    .INIT_4E(256'h8280007B45FE80BF3C817F7F3F3F807E7CFB3B7E7EC03DBD033B0081FAF9C003),
    .INIT_4F(256'h00013D3EFCBF79BEC37D79C03F3EFD00C44081407CFFC53A82FE40BD3F7F7801),
    .INIT_50(256'h417FB7FEC07D3CFE40BFBD81BDFDF9FF3ABFFD39FAF3C0FA823B81F53D7F3F81),
    .INIT_51(256'h7D41B8F6393F78C381787C05C53D837A88BCC0FCFFBFC0FB7CC07FFA0641BA04),
    .INIT_52(256'h3EFF44C0FE7DC5C0C1FE427FBABF40FE823D4285404400BF85C3BF027EFF3D79),
    .INIT_53(256'hC8FFFA0689837F000207FEBC8341FE88FFBDC0403D3EFFFFC57E3C7D3BBE3EBA),
    .INIT_54(256'hBDB93A81C2BDFFC102BE82BFFD017EFF80FE3B0300BB8242BFBFBF3A8480877B),
    .INIT_55(256'h3D437B7FFD4304BCFE7E7FBE7D3EFF7D3AFB3F4082833D8239827EBDFFBA41C1),
    .INIT_56(256'h02FEBE8685C77EC2C84181BD81C38086014306C1888041054188BDC2454006FD),
    .INIT_57(256'h457D41C683BFC4BABE4382BBFBBF433A03C2C20008C043867B82837D03FFC107),
    .INIT_58(256'h8242417BFC397FF905C47DBF7A7D367A7442C1B2BC7ABF027EFF8180B9097605),
    .INIT_59(256'hC23EF63AB8CAC6C203BBBFC17EFE3DFA80FF40FC813B3EC183000007BB424401),
    .INIT_5A(256'h03C4FDF83FC1BFBC3B813F40FF7C7C3FB7BF7CFD3CBBC0FEBE37FFFF7A407C01),
    .INIT_5B(256'h3D833C3BFA81FE7F417BC182FE0041BFFDBEC03EBBBF7DBF8182C3813E3FBEFE),
    .INIT_5C(256'h370500404400C0447ABD013F0182C5C080C3FC42C07886024179014181FCC4BE),
    .INIT_5D(256'h7B83C1FEBCBE04FE41C2004083007E3FF98300FD027D7C003B81817E8343C0FC),
    .INIT_5E(256'h0300434184067EBDC97E050482817AFEFE404B7AC67D7B447D86C08240447B7C),
    .INIT_5F(256'hBDB8083F3E42C4FB3A80837F7F40FA393D84003D01FEBB46417F3DC340C3BFBE),
    .INIT_60(256'h7EC13DFD0200813FFE00FFFFFF3EBE003B7F7E3EC0FD803E3FF940817F81BEFF),
    .INIT_61(256'hFEC4407D3C413DBF017D3EC13E4101FE3F3E0042BF00BDC0FB01C03FFE7E423E),
    .INIT_62(256'hFF7C3B3D3D7A7D00BC81FE7E40C039FF38BDBFF979FB3FFE413CC1F97DBFFF00),
    .INIT_63(256'h7B427B7C7D80BCBBC1FDFFC102BEBF7B41BEFE7EBFC07AFF40C2C283FEFC41BD),
    .INIT_64(256'hFA7780C7407EFE028540C3833D84C17C467C0445C1363CBD408541F6C3FE4135),
    .INIT_65(256'hFFF3797F3DC400BA7BC3BEC07E41BA003F80C00004C13E837B407D7BC2383982),
    .INIT_66(256'h02403EC07AFDBDBD41803DBEBD02FE013DFEFD7EBB410382820003F8C2C2FFFD),
    .INIT_67(256'h80FD38BABB3F78BE3EBE41C13C0004FF443EBF3CC1037E80BF82BD40803D3FC4),
    .INIT_68(256'hC04380817CBE0102C17F3DFE0102BE80FFC0417FFD807E80027E81C081C040BC),
    .INIT_69(256'hBEC4BD81FD7EBD027F3F8242C3017F3F7F02418200000100C1818180FC013F3E),
    .INIT_6A(256'h7CC1C07ABEBC40394543FC003FFD773D74C901B9BCFCC1FFB5BBC24080483643),
    .INIT_6B(256'hC101FFFD7B0BC7C341BDBEC3C2C1FA383C7F00BA813BF9FE00FFC105F93BC93E),
    .INIT_6C(256'hBD427B3E7DBF3FC03B3F80C040BE7C823B827B3D3E7B3FBEC0FBFEBCFE3F3C01),
    .INIT_6D(256'hFE423CBE7D027DC0407D028141C141FABEFCC0FFFC7FFEFBBE0081403E3E81C0),
    .INIT_6E(256'h3AC447BD8002BB86FA42FEFF4041857F403ABF447C3A7FFC7EFF7F40F9800381),
    .INIT_6F(256'h8602C545473AC37F01070041037FC101C5417FFF7DC100FCC47F828086017BBD),
    .INIT_70(256'h44438300833F7EC1BABF3B7F443C44C3837CB8BB76C90686FA0144BDFFBEFDC6),
    .INIT_71(256'h0187C1FB00BD7D8182BA4283403FC285CEF83E7F3C05FCC0C3420441FAC00142),
    .INIT_72(256'h3FC001BC7E40BAFB3D423882C17B7945FB817AFD38BEC0FEC0FF027EFABB3FFE),
    .INIT_73(256'h01034140BEBBBF3DFD7ABF01BF408401C3F9403E3DC4BDFC827E40007ABD0240),
    .INIT_74(256'h80FB7A403DFD81003B7F3FFDFCFF3E4100FEBD3F7BBF7FC17E40FD76013E3FFD),
    .INIT_75(256'h3F7D7940FF403E3E7CFC007A793F7B7D793E3F7F3FFF02FD3C007EC2C0B9FFC2),
    .INIT_76(256'hFFFEBD7E4339BFFF3D004540FC00447E40FE3D42FE7681FD7EBF39F800073CFE),
    .INIT_77(256'hC63F803FBFC282013F41074140FE3C3545BD3EFF838003803B000001823600C3),
    .INIT_78(256'h82FF7D3C3EFEC4FDBCFF43C1BD7CBCFEBD01FCFFBC003D83BEBDBFF6C0C13F3E),
    .INIT_79(256'h85BDBABE41C37D7EFEC1BFB8378001827FBFBEC27D403CFD7DBFFBC33EB87F47),
    .INIT_7A(256'h41B97B4637BE4002C3FBC0FF807FC502C67DBE41FD02037B3B84C3FD41FB3DBD),
    .INIT_7B(256'hC0FA7FBFC340023F81447B3CC2FFC0C6038040BF813F41027901FE3FBD3B3880),
    .INIT_7C(256'h85383E7F8183F9FDC4FC013F4341BDC582398600C5087F7A4047BF46437BBFBD),
    .INIT_7D(256'h8183888284F9F97F413E82393F3F3F01C0C3417DC37F7E05FAC03C7D0480397D),
    .INIT_7E(256'hB883FD47468AFEC303BFC77FFEC50302C74A81840AB9004B46003C0687FFC7FC),
    .INIT_7F(256'h7BBCBF444102463F017FC0428200023A404582FEC2FF007F407E798089C1C3BE),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[25] }),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[25] }),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[26] }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\doutb[26] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[13] ),
        .ENBWREN(\addrb[13] ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weightROM_blk_mem_gen_prim_wrapper_init__parameterized7
   (\douta[25] ,
    \doutb[25] ,
    \douta[26] ,
    \doutb[26] ,
    clka,
    clkb,
    \addra[12] ,
    \addrb[12] ,
    addra,
    addrb);
  output [7:0]\douta[25] ;
  output [7:0]\doutb[25] ;
  output [0:0]\douta[26] ;
  output [0:0]\doutb[26] ;
  input clka;
  input clkb;
  input \addra[12] ;
  input \addrb[12] ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire \addra[12] ;
  wire [11:0]addrb;
  wire \addrb[12] ;
  wire clka;
  wire clkb;
  wire [7:0]\douta[25] ;
  wire [0:0]\douta[26] ;
  wire [7:0]\doutb[25] ;
  wire [0:0]\doutb[26] ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h7ED6DE496A1FDFF1CCA0ED6EF9F99579C0CABAA1725991FA30149CC25E5CE26B),
    .INITP_01(256'hCB2018A35D3D3F1362833F6709C998B007887A0B77EE2C8343253D430E8FA494),
    .INITP_02(256'hB9504E10835EBE00036C70C4E47EE45611A09E5E3166047D756E099F0825BA05),
    .INITP_03(256'hE4646F22AB7C8DD1A7A8C2FBB5E16AB7A2E8C90B1A0D87BD0CF0B985D03966B0),
    .INITP_04(256'hCBECB6944409E394F7EAF2EE9CD2BCF2BE3E8BA7BC7B04E61BF759C809A22A08),
    .INITP_05(256'h2D16BE4BD0AEC3794AEED13376852C3194E5FD6658378B07E36EA8442E255059),
    .INITP_06(256'h1E7D9BCDB0CB31BECDD492AC338A078116CE094B78E1360929F8DA66B154AF5C),
    .INITP_07(256'hD4DC55D4070F7D20AA7A64083841366EE5216678431F92A8936959E245AF6307),
    .INITP_08(256'hC5013C181B4479F71E00839B71E7A99EB848FA4665E186951AF0769591AD1368),
    .INITP_09(256'hB4A7F8496B07276C7BE7FCCBA32BACB0747A8B48709DD9AA46E1E0A88D3794DF),
    .INITP_0A(256'hED4542B358F8AC0E95B3077486662636466182C09E6A8AEE972E62794444C309),
    .INITP_0B(256'hCBD836C8ABAA30BE4B2B383F555F690BCECE19672B9FE4B52B60006B63FDFD68),
    .INITP_0C(256'hA23A0D5B3C0D2B5A7ABB75EE8E758D6A48C8DD29889EE64CB32BBCC3F1B1690C),
    .INITP_0D(256'h976E09FCE89EAC090DBF66998700C207637FCA9ABCD6DF0DC00AFDB1CD97A645),
    .INITP_0E(256'hBC367AFE0F6337E74482EF29B55F547B582D9FC5758546B33425DC6359E67085),
    .INITP_0F(256'h077DD6F1A99657424B9587834B6203893CB40CA7CB4AFA214368EAF4150B0D87),
    .INIT_00(256'h0488FB7E4481C4FBC53C44FF03BE7C80FA02C3FBC30300043DBFC24483417E89),
    .INIT_01(256'h00C382FC3FCB8285807A80BD423EC0027DBFFE01443F81C1FEC001013B074441),
    .INIT_02(256'h45BBC1C5C7443A7E433F00C0BDC1FD41014084414680C2C201C9FF7F417882BA),
    .INIT_03(256'h7F7B0642FDFFC17BBEBDFDFAFDFF3DBB0643817CC0BEFB003B823C3E05C1F883),
    .INIT_04(256'hC34040BB423EC0BC01C2C004C33F3D82FC3DC2BEFDBA408001BDC082813FBC40),
    .INIT_05(256'h3E427F3F7EC600C6827BC081403D40FE3C3AC1027FC4BDC00080C1FD3B43BFBF),
    .INIT_06(256'h3F82BD7F3BC0BE41BCC442BE010181FEC0407E823F7AFDC0FEB8BF7BC10741BF),
    .INIT_07(256'h3EBFC1C1FB00C4BDBFBF0645423F87FC4181FF40BFC0BF01804005FE7F3D0140),
    .INIT_08(256'hFDC8414081808200FC00007EC40101BC41FF7F0083424479C07C82C8C1F83D42),
    .INIT_09(256'hFC40C53D807BBD828682B609473F08804305FE00C13E01FAFF7E003B3F46FDBE),
    .INIT_0A(256'h38C07841C3FF82C23DFC85FB3B4003F8843FFB0445003DBBB6BBC1C27EB70141),
    .INIT_0B(256'h7FBBC1FE413AC13F3FFDFBBD3C80BDFFBD0080838400FFFD77FFFFF63D3BB941),
    .INIT_0C(256'hFBC13EF9C13E7EFD7ABFBC843B7E3FBFF9C1FCFABB38C2BE3D797DFD7A01FE81),
    .INIT_0D(256'h7CBFBB3EFD013FFF803AFF8080FD7B3ABC793E3E3BFC3AB942804202FE40FEFB),
    .INIT_0E(256'hBB4182FB7C813C3FB73FF83FC2BDC17D7DBF760038FD7EFC81760141F93FFF83),
    .INIT_0F(256'h0005407E80FBFE7F0181BF3F82C084C241FF00C0F7FF3EBC8701047F82403FFF),
    .INIT_10(256'h02BEFF7E403C80BB453C01813C7E7DC081C103393E427E837987803F8304FA44),
    .INIT_11(256'hC2FD3DC04248437BBBFE857C3D42BC82FEFF3E00C2FD3E85BD423FC139FC45C2),
    .INIT_12(256'h0041BCC14101C100024403FFFE02C18001FD7C40BF82BD82C17DFDBD81013F7B),
    .INIT_13(256'hBFC5FFC07EBFC001FEBC82017EBF0580C6C2FF023FBE44003FBFC17A3D78FF01),
    .INIT_14(256'h0303813FFABEC1C1FF3D80403F3DBF7CBB3B00FE424300FB407A0145BCFFFB80),
    .INIT_15(256'h40FE03BA7C013E8243BF3E40433FFD7C3D00FE7E013EBF7EBC7E403DBDC03D01),
    .INIT_16(256'h7E7C7F4681BE81C17FFB417EBFC1C13EC8FE0241FEC8BC813802013B0600C0C1),
    .INIT_17(256'h407F007E458181007C0242B93CC139C679C43E7F03BF05C3FF3FC1007D7B7F40),
    .INIT_18(256'h87BDC1F7C0BE3B4077BEFB41BB803D07B8F8FAFAF903FEB93FFB4180F93ABE42),
    .INIT_19(256'h85C2F8C27E7E35373E7F39FFFD80BF01C33E3E80F6FAC5BC007FBDFFBC39BEBB),
    .INIT_1A(256'h7F4285030480FFC23DFEFEFE497FC33F083D40047CC47FFFFD004300FF410143),
    .INIT_1B(256'h4587C186C6BD7FC27C0682407DC000440202FE038145BFFFC47EC30104FE4140),
    .INIT_1C(256'h814642B7F940FBB681C57D04C67D3C7EB9407EF9FDBD8342BE79C480FBC3FE40),
    .INIT_1D(256'h0240C03A3EC7BFBE80BA804600C07C80C4FCFFFF3D43B67C0500BC437A444141),
    .INIT_1E(256'h7EC63E7B7C803EBD3BC0BE7E803E3D7CFC417F3BFEFF027BFD3ABEC4BEFB3E80),
    .INIT_1F(256'h7F83C23AFE3E7D88C5BB7D03468045FC014041BF7E403AFFC2FF7F7CBFC8FEFE),
    .INIT_20(256'hC13E47FE41BE81BF45FF027FFB408040437F87454282BE3E4305FE4342C24179),
    .INIT_21(256'h08BE3BC989C23FBF3F45413C403F7BC53EBF41BEBEFAFE8200FF3E81C0BBFF3B),
    .INIT_22(256'h38BB403F827DC3BCBB84FF41BA7D7D3FBB7EFCBD3FF8BEC67DFEC0797EC23D80),
    .INIT_23(256'hBE3CC1813B4083BEBC3E03FE3901F9FAB9FB3E3D01807F803F40054301FF7E7F),
    .INIT_24(256'h020141BEBEC0007D3F433CC17D3CFC01BA00FFFAFB7D42C0BE3D7E807E7F8080),
    .INIT_25(256'h01817D3D3E817D820001407F427FC03E423CC100BE3E3FFEFF3E41807FC2433F),
    .INIT_26(256'hC2B5FA06BE3938FEC53F82063D8204C34E3F49CDC2C4C235BDC83B3C47044036),
    .INIT_27(256'h046F3E433F8003BF3C86C682BF8101FB813E40008502428275007EC28136C080),
    .INIT_28(256'hC1790306F6FD3FC505FD3E3A84058741113FC509408E3FB53C427E4208F3BB39),
    .INIT_29(256'h00B7BA42C6F6B7C8FF88F74203C002C5C804013B89C1C0FE827F3EFC83B77741),
    .INIT_2A(256'h80F5BFC179F9F841493F4001BE4188C1CA3CC54785023AB9B98ABF3AC345FAC3),
    .INIT_2B(256'h87B5784107C649BD734C43C1FD41C001C37FFE3D43FF838439827E007FF3BE3B),
    .INIT_2C(256'h414904BB038141C1B8FE80BDC23DBE403901FD79C03E45FE3D753DC53C3C0005),
    .INIT_2D(256'h3E4441B9FC054184C6F9BC83867D827C85FD80FF7EBDB939423F83FFBC894200),
    .INIT_2E(256'h4107463B803FFA01BDC27BBFC53E82807CFD7A7FF93BFF7D83BC40403D41803E),
    .INIT_2F(256'h014442FBFB82397C3E424148433E03FEC142C13DB940793D478180008003BEC1),
    .INIT_30(256'hBB8945B675C102FFB73C7E3EC47A02B8BBBB7DBCBE7A81BBFFB33F4B7441C13F),
    .INIT_31(256'h44C2433BFDBD41C3437EBCBE437F843E0601413DBDBB3B78833EBEBF4046BC7F),
    .INIT_32(256'h01787D41003C8281C4BD0380FDFFC1BE02FCC4C180BB3EFE00013D3E8481C040),
    .INIT_33(256'h7E7E8001FE45057B7D4101BBFE813FFB7FBF4040877D3E01FC7FBEFC007BFA40),
    .INIT_34(256'h80BDFDC542BE837F883F07BEFE407FBD7FC0C8FCC8BEC1BFFDC4FE3E4303FCFF),
    .INIT_35(256'hC27BC68142C303847F457F7BBFFDFC407E8480BC45803F403841BFBE7C823B00),
    .INIT_36(256'hFE03C0F87D427D82F680B8FD7FBCBEFFFA40367B367DC2BEBFF3FEC13B3FBC03),
    .INIT_37(256'hFC0ABC7D3EBC7DC202BCFD45427E017F3E7BBE7DB8BDFE3AC1008442BF817D3B),
    .INIT_38(256'hC0C4057EFDFC05813D413EBEC141413EBEBF0182FA05C03E00FB06063C7E81FE),
    .INIT_39(256'h85C3FF80020002C2400200C1BD803E86BC037E02BD40C0FD84017E3CBBFFFFFE),
    .INIT_3A(256'hC5BA78C085BF824001B787C07B807FBD3B7CC13D06BC39383B00BAC2BEBD01BF),
    .INIT_3B(256'h3B75C5FA7AFEC5FFFFBDBCBC7C3D393A417EBEC140003F3B74BDBEBAFE4278C0),
    .INIT_3C(256'h40FF8289C23FC100C13C03404286C2BBC53E84837E00BE038245C4F984FC7EFD),
    .INIT_3D(256'h403B7D7F017C3B40BC88BBBFBF808084C2C57F7F857F4383053F813D83FEB7C6),
    .INIT_3E(256'hF78081010541823E42FE86FF3C41C4F6C743C184877AFD017C7CFFC8BE3B417F),
    .INIT_3F(256'h7DF48B43C47C48797B457C38FB7E74413A40BEFF3EFDC13BFE7FBCFF3D83BEFF),
    .INIT_40(256'hBA03417E79FFBCB938FFBDBF813B398179C27CFEB9BD017F833A7B78FA440178),
    .INIT_41(256'h84017980807FFBB77EFF84BD7F7F83FB80B9BE427D43F73C42013E8341F641C1),
    .INIT_42(256'h81803CC087C03F3E7FBDC2FEC47E07FE073D4143C43BC04082407E45BEFCC200),
    .INIT_43(256'h443E09018382C4404340BF403FBEC18283FFC0817FC24340FE83C0FA03037A43),
    .INIT_44(256'h40BDFE8002FC3E40813E84BDB9027FFC83FC44C0413D807D3FBFBCBF808040C0),
    .INIT_45(256'h433FBE3E0242BC43000140BB3E017FBEC43FBE8181FCC5C17E01FF0082017D80),
    .INIT_46(256'hFFFD3DC27E3D423FC53C413FFFC0FDC0FF43C2BDC1C5BE03FC4481BB453FFB82),
    .INIT_47(256'h413D40028405423F7B3F427EFE01BDC03B83FF3E43013D44FDBF3E833CBD8042),
    .INIT_48(256'h7DBBB9447E3FBE433AFD043E804404FB843AC00385FCB937BA41C0FE84BBC23C),
    .INIT_49(256'h3F7B08FD803D3F00B8BC3CFC3CC1FB7AC24581404281C03FBA3EC2F60439F842),
    .INIT_4A(256'hFFFD3B3B447F413B7C4182447A7E3A3FF8FF02BC85B7BFC2FF3F4041BBBF3D84),
    .INIT_4B(256'h7D3EC03FBB44433D437C03BDBDBEB8BD3B7CBE7F3F39BEFD7D003DBCBD00BD3D),
    .INIT_4C(256'h8140F9C08100C0FD838084C00102FD007F7C83BC077F82BD81417FF9027D3EFD),
    .INIT_4D(256'h7C03C03EBB417C3E023E813F433F01FBBE02BE3EC440FB43FBBFBF3F3D40FC40),
    .INIT_4E(256'h4681BABC3EFF8384B93BFDFE81848381BFFA7CBEFEC2403B3DBEC2813F3BBD43),
    .INIT_4F(256'hB7C140393CBB7C04FD7CFABE3F7FBD7F42C5FEBC4141C5BE38C041390080FAC3),
    .INIT_50(256'h8182813A4601447E7943430440C07BFDBBF93A3B7EFFBFC47FBA057EBE02BD89),
    .INIT_51(256'hFE43FFB93AC3FF83BFBE4082FBBEC2C37D3F40C27C03803C833EC33FF9043C81),
    .INIT_52(256'h00B8C2FF45417FF9CD3FC7007A3DB9FC38470737CBF77F037C49FB41C0C5B27F),
    .INIT_53(256'h81F5C3C202094B44C0803E7C0041753C79BDBE79453EFE7FBEFEC086FCBA87C3),
    .INIT_54(256'h01BE00427F03BDFE89BE03848302BC3D3F4109FF4639F9017C477F3BC2853DB6),
    .INIT_55(256'hFFB8CA41C1C286B53B01053DBE407B78FEC6417EC3417EC4BF017D4041FF7DC2),
    .INIT_56(256'hC681BEBF3DC0043E7B3EBF417F41BF3FFE7D003E3CC37F047EFB3FBDBE3F7B7E),
    .INIT_57(256'h7EC1BEFD7FBEBBBFBFFBFF00FF0141BE40037E41BEBFBFBFC0BF7FFF7D7FBD7D),
    .INIT_58(256'h007F41BBC041FD0342C0FEFDBEFE8181827CBE81FE04FF3CC43DFD48803F81FC),
    .INIT_59(256'hC849C1030AFE80BF807F7EC0427F0443FCFE3E83BDC045008041C0FC800180FE),
    .INIT_5A(256'h3EC5F9C103418004F93EFF798382027DC0FF3CC184C5BFC179B90502C1F37D86),
    .INIT_5B(256'h3BB9C9FAB8418108C4BD35C5423FC5853F7EBE3F8240FEF8777EFD39BE873EBF),
    .INIT_5C(256'h45C4417A3CFEBFFDBD01BCFD02BE80427D3FBFBB3A803C02BC7A04BFBD43FC41),
    .INIT_5D(256'hFEC2C33CBDC4BE02FD3D023B3C7E7EBE00C241C17FBD3BC0C3BF41023BBCC043),
    .INIT_5E(256'h39BF3D817A820005787CC0FB02C4847DFD3C3CC180BD053E41B77E80C3FC84BF),
    .INIT_5F(256'h3E84387C7CB97C810382FDC3C44148788404403EC0807DBAF840C13CC2433F00),
    .INIT_60(256'hC9C0B8FE4105FFC53E3F83FC0545C4FF0040FE0007BA023B3CFF38C800BDC581),
    .INIT_61(256'h377B8677F7C441C1827A3A83C281FEB6C701FEBC04FFB87BFCBEBBF945C73D41),
    .INIT_62(256'hC7043BF700C0BFFC3E7EFC03C2FFB98131FFFC743DB8BCB7F977FEC0BB3FFD82),
    .INIT_63(256'hBC05B87AB83D763B00F57BFDBD3EFA787CBD0002F93942FDBDC0BEC17C437EBC),
    .INIT_64(256'h023DBBC000C1BD3DC6C1C4BEC5423D3F3E02437C45BE3DC2BEC5BB3CC4C44000),
    .INIT_65(256'hBD3C7EBE4283BF3DBE3F7F424143C0FBFF843D7F8280BEC57C7EFEBF40FD0105),
    .INIT_66(256'h3DC080C37A3B44C440FF4280FA85493E4540818643437E7E003E3E814143BF7B),
    .INIT_67(256'h45FAFA840584047F3E0581FF8341FD81BD02FDFFBEFBC14000403C0002BB0440),
    .INIT_68(256'h00C143C1FFBB41BD803F803E817C00BEC0FF7D023D3F7DC28082C442BEFF40C0),
    .INIT_69(256'h03037D82C002C085C13F417C3A814207BE7E80827D033F3B46C003C2FDFD40BF),
    .INIT_6A(256'h418006CA004742C107BE03BD3C80C10345454684CC04C1C48646BE8A457D417B),
    .INIT_6B(256'h0679C0464681C6FFFB447EBE42C2807F42C3FDBAC43E3DFFC17EBF0086420204),
    .INIT_6C(256'hBE02013E850041FEFDC10040FE81C2C0C0BCFC0140C1823F803C8481FD3CFE00),
    .INIT_6D(256'h41C0FEFFBF80C0BDBEC0C080BE80FEC53FFE803EBF817F3D8380003F7B7BFD40),
    .INIT_6E(256'h3677398A3F3BC6C1C07D41BA3941BF3C4740F905C3BD3F80803E3977FEFA7EBA),
    .INIT_6F(256'h7F34FCC441BCC7824204777D7D3FC5C27CC1BFC2017CC737F6FDBFBE83F8C141),
    .INIT_70(256'h7F84FD3CFB0080C27602F9FFC23B3F82F87D78BE3180073F81F942F83D8102C4),
    .INIT_71(256'h3AC63C783D3E3A7D400101010481C5BEC1FB3F003745BB7CBC7F85C3407D80BE),
    .INIT_72(256'hC33DFBBCFF3EFB414439C1837C3B3C8079C100BCC0FAF9F9B63E397E813DBCFF),
    .INIT_73(256'h3BB700F6F9C38403C1FA813B3B7D34BA427B3EFFC4C13F3F35C10286BF43C141),
    .INIT_74(256'h81B848894245BD3F4AC483C1BEFDFE04488249424743FA85418FC0BC82C87FF9),
    .INIT_75(256'hCA74C3C80D8047B7B88D44B9BE438008FD44C0FD03C04286813E3E05C07B0401),
    .INIT_76(256'h843D3AFF82BD4237FEFE8182BE007ABC3E7E3D7B7EF7BB7F3B823F743DBFC07E),
    .INIT_77(256'h83BE7D7CFE02BA82BD027FB6F7C0BE86FC83BF437E0102C1BBC080BE7DBDBC44),
    .INIT_78(256'h817A7B3BBDFC7D01457D7F80FFFEC1023E03417EBEFC40803D01BB77024382BF),
    .INIT_79(256'h7C3FFDBBBE884A79FCBC423C3E8078F980387F01C6003A05BA02FF4200FC00FD),
    .INIT_7A(256'h41BCBDFF443DC3BEC1FE85C03B017BFE7D02817D00FBC0FC3FBFFE3CC240BCFD),
    .INIT_7B(256'h7F43BCBFF942020243393E7F7F81FE78FAC07E40837E4540BB7EFFFFBE408145),
    .INIT_7C(256'h043F83BD3D4002BEC63E00C086BF800100C286FFC485837FFCC502C73F81FC80),
    .INIT_7D(256'h01BD83024442FD827EC0C03B41BF7A0640C341BFC07FFF07C102BF013CC40282),
    .INIT_7E(256'hB93DFCFF3E410483BE3BC27AFBC8C57F81863EFE84003F010300FE7D413AC980),
    .INIT_7F(256'h7D7C81BE7FBD4243FEFCB93EFD01403C07458040C2763FFEB73D7F3C4741C2BE),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[25] }),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[25] }),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[26] }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\doutb[26] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[12] ),
        .ENBWREN(\addrb[12] ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weightROM_blk_mem_gen_prim_wrapper_init__parameterized8
   (\douta[25] ,
    \doutb[25] ,
    \douta[26] ,
    \doutb[26] ,
    clka,
    clkb,
    \addra[13] ,
    \addrb[13] ,
    addra,
    addrb);
  output [7:0]\douta[25] ;
  output [7:0]\doutb[25] ;
  output [0:0]\douta[26] ;
  output [0:0]\doutb[26] ;
  input clka;
  input clkb;
  input \addra[13] ;
  input \addrb[13] ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [11:0]addra;
  wire \addra[13] ;
  wire [11:0]addrb;
  wire \addrb[13] ;
  wire clka;
  wire clkb;
  wire [7:0]\douta[25] ;
  wire [0:0]\douta[26] ;
  wire [7:0]\doutb[25] ;
  wire [0:0]\doutb[26] ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[25] }),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[25] }),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[26] }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\doutb[26] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[13] ),
        .ENBWREN(\addrb[13] ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weightROM_blk_mem_gen_prim_wrapper_init__parameterized9
   (\douta[34] ,
    \doutb[34] ,
    \douta[35] ,
    \doutb[35] ,
    clka,
    clkb,
    ena_array,
    enb_array,
    addra,
    addrb);
  output [15:0]\douta[34] ;
  output [15:0]\doutb[34] ;
  output [1:0]\douta[35] ;
  output [1:0]\doutb[35] ;
  input clka;
  input clkb;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [10:0]addra;
  input [10:0]addrb;

  wire [10:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]\douta[34] ;
  wire [1:0]\douta[35] ;
  wire [15:0]\doutb[34] ;
  wire [1:0]\doutb[35] ;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],\douta[34] }),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:16],\doutb[34] }),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:2],\douta[35] }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:2],\doutb[35] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(enb_array),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module weightROM_blk_mem_gen_top
   (douta,
    doutb,
    clka,
    clkb,
    addra,
    addrb);
  output [71:0]douta;
  output [71:0]doutb;
  input clka;
  input clkb;
  input [13:0]addra;
  input [13:0]addrb;

  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire clkb;
  wire [71:0]douta;
  wire [71:0]doutb;

  weightROM_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .douta(douta),
        .doutb(doutb));
endmodule

(* C_ADDRA_WIDTH = "14" *) (* C_ADDRB_WIDTH = "14" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "0" *) 
(* C_COUNT_36K_BRAM = "28" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     35.475972 mW" *) 
(* C_FAMILY = "zynq" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "weightROM.mem" *) 
(* C_INIT_FILE_NAME = "weightROM.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "4" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "14000" *) (* C_READ_DEPTH_B = "14000" *) (* C_READ_WIDTH_A = "72" *) 
(* C_READ_WIDTH_B = "72" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_USE_DEFAULT_DATA = "0" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) 
(* C_WRITE_DEPTH_A = "14000" *) (* C_WRITE_DEPTH_B = "14000" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
(* C_WRITE_MODE_B = "WRITE_FIRST" *) (* C_WRITE_WIDTH_A = "72" *) (* C_WRITE_WIDTH_B = "72" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "blk_mem_gen_v8_4_1" *) (* downgradeipidentifiedwarnings = "yes" *) 
module weightROM_blk_mem_gen_v8_4_1
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [13:0]addra;
  input [71:0]dina;
  output [71:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [13:0]addrb;
  input [71:0]dinb;
  output [71:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [13:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [71:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [71:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [13:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire clkb;
  wire [71:0]douta;
  wire [71:0]doutb;

  assign dbiterr = \<const0> ;
  assign rdaddrecc[13] = \<const0> ;
  assign rdaddrecc[12] = \<const0> ;
  assign rdaddrecc[11] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[13] = \<const0> ;
  assign s_axi_rdaddrecc[12] = \<const0> ;
  assign s_axi_rdaddrecc[11] = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[71] = \<const0> ;
  assign s_axi_rdata[70] = \<const0> ;
  assign s_axi_rdata[69] = \<const0> ;
  assign s_axi_rdata[68] = \<const0> ;
  assign s_axi_rdata[67] = \<const0> ;
  assign s_axi_rdata[66] = \<const0> ;
  assign s_axi_rdata[65] = \<const0> ;
  assign s_axi_rdata[64] = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  weightROM_blk_mem_gen_v8_4_1_synth inst_blk_mem_gen
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .douta(douta),
        .doutb(doutb));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_1_synth" *) 
module weightROM_blk_mem_gen_v8_4_1_synth
   (douta,
    doutb,
    clka,
    clkb,
    addra,
    addrb);
  output [71:0]douta;
  output [71:0]doutb;
  input clka;
  input clkb;
  input [13:0]addra;
  input [13:0]addrb;

  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire clkb;
  wire [71:0]douta;
  wire [71:0]doutb;

  weightROM_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .douta(douta),
        .doutb(doutb));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
