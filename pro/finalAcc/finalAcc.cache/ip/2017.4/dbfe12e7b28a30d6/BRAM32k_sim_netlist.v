// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Thu Dec 17 10:01:04 2020
// Host        : LAPTOP-PD9C7IFG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ BRAM32k_sim_netlist.v
// Design      : BRAM32k
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z035ffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "BRAM32k,blk_mem_gen_v8_4_1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    douta,
    clkb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [63:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [63:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [11:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [63:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [63:0]doutb;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [63:0]dina;
  wire [63:0]dinb;
  wire [63:0]douta;
  wire [63:0]doutb;
  wire [0:0]wea;
  wire [0:0]web;
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
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "12" *) 
  (* C_ADDRB_WIDTH = "12" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "7" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     38.292 mW" *) 
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
  (* C_INIT_FILE = "BRAM32k.mem" *) 
  (* C_INIT_FILE_NAME = "BRAM32k.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "4096" *) 
  (* C_READ_DEPTH_B = "4096" *) 
  (* C_READ_WIDTH_A = "64" *) 
  (* C_READ_WIDTH_B = "64" *) 
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
  (* C_WRITE_DEPTH_A = "4096" *) 
  (* C_WRITE_DEPTH_B = "4096" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "64" *) 
  (* C_WRITE_WIDTH_B = "64" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr
   (douta,
    doutb,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [63:0]douta;
  output [63:0]doutb;
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [63:0]dina;
  input [63:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [63:0]dina;
  wire [63:0]dinb;
  wire [63:0]douta;
  wire [63:0]doutb;
  wire [0:0]wea;
  wire [0:0]web;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[3:0]),
        .dinb(dinb[3:0]),
        .douta(douta[3:0]),
        .doutb(doutb[3:0]),
        .wea(wea),
        .web(web));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[12:4]),
        .dinb(dinb[12:4]),
        .douta(douta[12:4]),
        .doutb(doutb[12:4]),
        .wea(wea),
        .web(web));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[21:13]),
        .dinb(dinb[21:13]),
        .douta(douta[21:13]),
        .doutb(doutb[21:13]),
        .wea(wea),
        .web(web));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[30:22]),
        .dinb(dinb[30:22]),
        .douta(douta[30:22]),
        .doutb(doutb[30:22]),
        .wea(wea),
        .web(web));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[39:31]),
        .dinb(dinb[39:31]),
        .douta(douta[39:31]),
        .doutb(doutb[39:31]),
        .wea(wea),
        .web(web));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[48:40]),
        .dinb(dinb[48:40]),
        .douta(douta[48:40]),
        .doutb(doutb[48:40]),
        .wea(wea),
        .web(web));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[57:49]),
        .dinb(dinb[57:49]),
        .douta(douta[57:49]),
        .doutb(doutb[57:49]),
        .wea(wea),
        .web(web));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized6 \ramloop[7].ram.r 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[63:58]),
        .dinb(dinb[63:58]),
        .douta(douta[63:58]),
        .doutb(doutb[63:58]),
        .wea(wea),
        .web(web));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width
   (douta,
    doutb,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [3:0]douta;
  output [3:0]doutb;
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [3:0]dina;
  input [3:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [3:0]dina;
  wire [3:0]dinb;
  wire [3:0]douta;
  wire [3:0]doutb;
  wire [0:0]wea;
  wire [0:0]web;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0
   (douta,
    doutb,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [8:0]douta;
  output [8:0]doutb;
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [8:0]dina;
  input [8:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [8:0]dinb;
  wire [8:0]douta;
  wire [8:0]doutb;
  wire [0:0]wea;
  wire [0:0]web;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1
   (douta,
    doutb,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [8:0]douta;
  output [8:0]doutb;
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [8:0]dina;
  input [8:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [8:0]dinb;
  wire [8:0]douta;
  wire [8:0]doutb;
  wire [0:0]wea;
  wire [0:0]web;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2
   (douta,
    doutb,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [8:0]douta;
  output [8:0]doutb;
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [8:0]dina;
  input [8:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [8:0]dinb;
  wire [8:0]douta;
  wire [8:0]doutb;
  wire [0:0]wea;
  wire [0:0]web;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3
   (douta,
    doutb,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [8:0]douta;
  output [8:0]doutb;
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [8:0]dina;
  input [8:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [8:0]dinb;
  wire [8:0]douta;
  wire [8:0]doutb;
  wire [0:0]wea;
  wire [0:0]web;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4
   (douta,
    doutb,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [8:0]douta;
  output [8:0]doutb;
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [8:0]dina;
  input [8:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [8:0]dinb;
  wire [8:0]douta;
  wire [8:0]doutb;
  wire [0:0]wea;
  wire [0:0]web;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5
   (douta,
    doutb,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [8:0]douta;
  output [8:0]doutb;
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [8:0]dina;
  input [8:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [8:0]dinb;
  wire [8:0]douta;
  wire [8:0]doutb;
  wire [0:0]wea;
  wire [0:0]web;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized5 \prim_init.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized6
   (douta,
    doutb,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [5:0]douta;
  output [5:0]doutb;
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [5:0]dina;
  input [5:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [5:0]dina;
  wire [5:0]dinb;
  wire [5:0]douta;
  wire [5:0]doutb;
  wire [0:0]wea;
  wire [0:0]web;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized6 \prim_init.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .wea(wea),
        .web(web));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init
   (douta,
    doutb,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [3:0]douta;
  output [3:0]doutb;
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [3:0]dina;
  input [3:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [3:0]dina;
  wire [3:0]dinb;
  wire [3:0]douta;
  wire [3:0]doutb;
  wire [0:0]wea;
  wire [0:0]web;
  wire [15:4]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:4]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0A000DF001AF050B09800D9B072E09D200090000000000000000000000000000),
    .INIT_01(256'h0000003000100010002000E000F0008000E000A0004000A000E000A003300700),
    .INIT_02(256'h020000000E4E0C4905E9045D0B5B0ED900FE0000000000000000000000000000),
    .INIT_03(256'h0000009000C000300020000000E000C00020005000D000A0009000C004F004F0),
    .INIT_04(256'h01000BE0007E0FE7010801EF095200FE00DA0000000000000000000000000000),
    .INIT_05(256'h0000001000C000E000D000F000F000D000B00090002000300040002000500F00),
    .INIT_06(256'h01000110028D08A602290914090109F600070000000000000000000000000000),
    .INIT_07(256'h000000B0005000800080006000D00040008000700030003000E0010005B007F0),
    .INIT_08(256'h010009E00AE9069F01F00DAB09DD09A100140000000000000000000000000000),
    .INIT_09(256'h0000003000B000100060004000A00030008000A000800070008002200C9009F0),
    .INIT_0A(256'h090001B006290EF605DF0ED902FA047800F50000000000000000000000000000),
    .INIT_0B(256'h0000000000500090009000200070001000C000D000F000A00FC00FF000A004F0),
    .INIT_0C(256'h0E00044005D6018002DE0CE902250F3800140000000000000000000000000000),
    .INIT_0D(256'h00000090000000F000D000900040006000800020006000600F500E3008000000),
    .INIT_0E(256'h07000F200F410EFC0AF3063D0A3A000000FB0000000000000000000000000000),
    .INIT_0F(256'h000000500030007000F00040004000B0008000F000C000000030009005F00CF0),
    .INIT_10(256'h000004F007DC086604CB006E0C490524000A0000000000000000000000000000),
    .INIT_11(256'h0000007000C000100050007000E000700070006000D000800020004005B00AF0),
    .INIT_12(256'h070007D004DD07200E930B4A038B0D9A00EB0000000000000000000000000000),
    .INIT_13(256'h000000E00060005000B000200040005000E00020002000E0000000F002F006F0),
    .INIT_14(256'h080005E003EE026B0E940A530934040A00F10000000000000000000000000000),
    .INIT_15(256'h000000E000E00040007000D0007000B0001000B0003000200FE00F500D100A00),
    .INIT_16(256'h00000A0003B006A30F7901B60C130EE200F00000000000000000000000000000),
    .INIT_17(256'h000000D00060007000800080006000F000A0001000C000600F300E000CF00DF0),
    .INIT_18(256'h000005000AC200E7077A0B280A7B04BC00050000000000000000000000000000),
    .INIT_19(256'h0000009000D000F000D000900020007000800050000000F00FD00E8009300200),
    .INIT_1A(256'h0000083005210CC50C350D210F2D057800FC0000000000000000000000000000),
    .INIT_1B(256'h00000040004000D00020005000300060007000D0000000F000600F800ED00AF0),
    .INIT_1C(256'h0500072001010D490FC5084A0130073E00F70000000000000000000000000000),
    .INIT_1D(256'h0000004000E000B000C0009000C00010000000E0009000500F40007001C005F0),
    .INIT_1E(256'h03000960080A09590AB70E3E07BB036E00EC0000000000000000000000000000),
    .INIT_1F(256'h00000010008000800020008000100050002000B000E000900FC00C2005000100),
    .INIT_20(256'h04000D7004D609A6083B02AA09B307DA00E30000000000000000000000000000),
    .INIT_21(256'h00000000005000D000B0006000A00020006000D0001000F000E002A00C400300),
    .INIT_22(256'h050003F00670056E066B07D90C5A020A000D0000000000000000000000000000),
    .INIT_23(256'h000000A00060008000000030007000A000A00090009000700F600E900BD008F0),
    .INIT_24(256'h040001400991024F01ED07740A5205E300040000000000000000000000000000),
    .INIT_25(256'h000000A0001000900090002000C0006000600020008000100010015006200D00),
    .INIT_26(256'h0D00076005EA06900CDD02BA04BB04BE00E50000000000000000000000000000),
    .INIT_27(256'h000000C000B000200070000000D000C0001000F0008000400F000E8007200800),
    .INIT_28(256'h080000500468074B083E0E9F03FC075E00F80000000000000000000000000000),
    .INIT_29(256'h0000004000B000D000A0009000A000E000B00010000000300F100C7003D002F0),
    .INIT_2A(256'h08000010004D071608DF0BDA09070D2A00050000000000000000000000000000),
    .INIT_2B(256'h0000006000A000D0003000500000009000F00080002000700FD00F9002300D00),
    .INIT_2C(256'h000005900D0D0A89057304B80563001D001E0000000000000000000000000000),
    .INIT_2D(256'h000000F0009000B000500050002000D0000000D000D000100FC00ED005F00AF0),
    .INIT_2E(256'h0C0000000EB4093104F20CB0040308C500FB0000000000000000000000000000),
    .INIT_2F(256'h000000A000C000F0006000F000C0006000B000F00030004000000F300C400F00),
    .INIT_30(256'h0B0001C003BE014C017D0C360256053D00FD0000000000000000000000000000),
    .INIT_31(256'h000000300020009000E000B00000006000900030008000500FF00ED009E00AF0),
    .INIT_32(256'h0B000100030E006A0A1D057C049802D4000C0000000000000000000000000000),
    .INIT_33(256'h0000003000D0000000D000C00000008000400040006000600F500F900FE005F0),
    .INIT_34(256'h0D000AC000E8015E04770A8A01C30B6200F60000000000000000000000000000),
    .INIT_35(256'h0000008000500060005000100090006000C000D0007000C0006001C005300700),
    .INIT_36(256'h010000100BEF069300690D3F0A7E0CC700F20000000000000000000000000000),
    .INIT_37(256'h0000006000200050000000A00030004000C00040005000F00080014006100D00),
    .INIT_38(256'h0C000AE00A8E0AEE0845093D0DFC0FC1000E0000000000000000000000000000),
    .INIT_39(256'h000000E000A000700020003000F000F00090001000D000E00F700F100EF00DF0),
    .INIT_3A(256'h0400072008CD0BE501870F730A330B1B00180000000000000000000000000000),
    .INIT_3B(256'h000000D0000000700030000000A000A00070008000A000000040014007C001F0),
    .INIT_3C(256'h040006200B930D09023A041A01D6007500020000000000000000000000000000),
    .INIT_3D(256'h0000008000C0006000C00080006000E000B0001000D000F00F700E3007000500),
    .INIT_3E(256'h0E0001000FFD0E0B0A2C095307A4095000FF0000000000000000000000000000),
    .INIT_3F(256'h00000010001000300050005000F000800090008000D000E00F000F000C000B00),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(4),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(4)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0}),
        .ADDRBWRADDR({addrb,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:4],douta}),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:4],doutb}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({wea,wea}),
        .WEBWE({1'b0,1'b0,web,web}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0
   (douta,
    doutb,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [8:0]douta;
  output [8:0]doutb;
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [8:0]dina;
  input [8:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [8:0]dinb;
  wire [8:0]douta;
  wire [8:0]doutb;
  wire [0:0]wea;
  wire [0:0]web;
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
    .INITP_00(256'h0000002022222200461117733000000002200200000000000222553000000000),
    .INITP_01(256'h0020000022202204061551511000000002222002020200044231166620000000),
    .INITP_02(256'h0220220220242200467106531000000000200220220222040233442310000000),
    .INITP_03(256'h0020000002222244047040733000000000200202000444444040251400000000),
    .INITP_04(256'h0202002200022200027322623000000000000000022222444675551110000000),
    .INITP_05(256'h0222200220046644466600473000000000002000022444444455662420000000),
    .INITP_06(256'h0022022220226600403355711000000002200222202444444220002000000000),
    .INITP_07(256'h0202200020246404002570352000000000222222222622000044262530000000),
    .INITP_08(256'h0222222222266644466675731000000002020000022004440440604220000000),
    .INITP_09(256'h0002000022244444463702662000000002000202202000400037751000000000),
    .INITP_0A(256'h0020222202040040045774442000000000202020022666404420041530000000),
    .INITP_0B(256'h0220020000004440022671542000000000222222202662000612271710000000),
    .INITP_0C(256'h0000220022266204441106331000000002202022000666440257306110000000),
    .INITP_0D(256'h0000222222000044001322462000000000200020022200044233142420000000),
    .INITP_0E(256'h0000022200202204021115511000000002222222000446444675446610000000),
    .INITP_0F(256'h0000002222044440023154662000000000020220020444440444620020000000),
    .INIT_00(256'h0000202000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h00B0000000C0EF0000B1AF0F00C10F0F00117EBF00E1507E004113FF00E00161),
    .INIT_02(256'h00003F0000003F000000B0000000E00000207000006020000090000000B00000),
    .INIT_03(256'h000000000000E000000090000000D0000000F0000000D0000000A00000006000),
    .INIT_04(256'h0000FFFF00000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h00B000000080F000006F10FF00EF70DF005F5FCF00DF8FEF00DF4FDF000FCFDF),
    .INIT_06(256'h0000E0000000A00000007F000000AF000020DF000030FF0000400F0000300F00),
    .INIT_07(256'h0000000000006000000090000000600000003000000000000000FF0000000F00),
    .INIT_08(256'h0000BF3000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0040000000BFFF00006F7FFF00FEEEEF00BFE1EF003F0280008E91E2004FDFC1),
    .INIT_0A(256'h00006F00000021000000E3000000E3000000C200000021000000000000BF0000),
    .INIT_0B(256'h000000000000F00000004F0000006F000000FF0000001E000000DE0000007E00),
    .INIT_0C(256'h000020DF00000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h00D1000000C2F000007380EF00F3B0AF0003406E0022301E0061300E00903F5E),
    .INIT_0E(256'h0000700000000E0000004D0000103D0000305D000050DF0000F00F0000F00F00),
    .INIT_0F(256'h000000000000B0000000B100000022000000730000003400000063000000C200),
    .INIT_10(256'h000020BF00000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h00E0000000BFDF00000FBFDF00EFBF7E00AF4F3000BF80D100908F300070BF5F),
    .INIT_12(256'h0000600000002100000011000020400000804F0000A0CF0000700F0000900F00),
    .INIT_13(256'h000000000000E1000000700000004F000000EE000000DF000000DE000000BF00),
    .INIT_14(256'h00000FCF00000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h004000000071CF0000B10FDF0051A0CF0072C2D000F1D1C100212F9F0030AF3E),
    .INIT_16(256'h00007100000071000000300000F0BF00000F3E00002FCE0000700F0000F00F00),
    .INIT_17(256'h000000000000E0000000A000000030000000C1000000C2000000E10000004100),
    .INIT_18(256'h0000300000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h007E0000002F400000DFE020009FAE7100C0CB0F00318E8E00E2F3CF00706200),
    .INIT_1A(256'h00009000000020000000200000E06000009F1000003F0000000F0000000F0000),
    .INIT_1B(256'h0000000000000F0000008F0000001D0000003D000000DF000000D10000000100),
    .INIT_1C(256'h0000CFFF00000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0011000000F10000003101F00081C21000C0D29100DF709000DE8DDF008FEEDF),
    .INIT_1E(256'h0000CF0000000E0000005E0000004F000030CF0000A0FF0000400F0000E00F00),
    .INIT_1F(256'h00000000000050000000A1000000C20000009200000031000000F0000000BF00),
    .INIT_20(256'h000010DF00000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h003100000001EF000061CFEF00A160CF0071C0FF003140EF00E0407F0070306F),
    .INIT_22(256'h000010000000B00000004F0000001F0000307F000090DF0000000F0000400F00),
    .INIT_23(256'h00000000000050000000500000006100000051000000B1000000700000003000),
    .INIT_24(256'h0000BFFF00000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h006000000020EF0000F0BFFF0060D2F0004F837100DE81C1008EDD90004E7D0F),
    .INIT_26(256'h00001F0000002000000030000000FF000020F0000040FF0000500F0000900F00),
    .INIT_27(256'h000000000000BF00000070000000C100000041000000800000008F0000008F00),
    .INIT_28(256'h0000DF0000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h009F000000BF0F00009F1FFF00DF60DF00CE8110006E5171008E4F71000FEF30),
    .INIT_2A(256'h0000F000000050000000410000F0A10000DF300000BF0000009F0000006F0000),
    .INIT_2B(256'h0000000000003F0000003F000000E000000030000000BF0000008F0000008F00),
    .INIT_2C(256'h0000FFF000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h00600000004FF000002FBF00007FAF20005F50300080A02000FF200000EFEFE0),
    .INIT_2E(256'h00001000000091000000600000F0200000DFF00000DFF00000FF0F0000AF0F00),
    .INIT_2F(256'h000000000000CF0000003F000000AF000000EF0000000F000000AF0000002F00),
    .INIT_30(256'h0000102000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h00BF0000006FF00000BFDF1000300F300020503000A0D12000A061400030C060),
    .INIT_32(256'h000031000000F1000000110000F0B00000BF6000004F1000000F0000004F0000),
    .INIT_33(256'h0000000000007F0000008E0000001E000000BF00000070000000E1000000A100),
    .INIT_34(256'h00000FEF00000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0070000000F02000004131F00011F1D000C122A0001132A00080619F00A090AF),
    .INIT_36(256'h0000D400000062000000710000005F0000E0AF0000BFEF00000F0F00007F0F00),
    .INIT_37(256'h000000000000A0000000A000000091000000D3000000D4000000050000008500),
    .INIT_38(256'h0000EFDF00000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h003000000000100000F0F10000CF2220009EC19100CE4FD1002F4D20000F3EAE),
    .INIT_3A(256'h0000C0000000DF0000006F0000F04F00000F9F000030DF0000800F0000800F00),
    .INIT_3B(256'h00000000000070000000400000001000000000000000AF0000000E0000004F00),
    .INIT_3C(256'h00009F0F00000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h00C10000005150000051D24000E1D53200B0957300CDFE70009C280D002E1CAD),
    .INIT_3E(256'h0000E0000000DE0000005C0000C03C00007FAD0000DF0F0000BF000000C00000),
    .INIT_3F(256'h000000000000BF00000020000000E30000000400000021000000A00000008000),
    .INIT_40(256'h0000AF2000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h004100000090400000D07220005FA491000D93B100CC2F9100FCDCC1000E7D90),
    .INIT_42(256'h0000E00000003000000021000020D00000908000000020000050000000310000),
    .INIT_43(256'h00000000000001000000E2000000A2000000910000005F0000003E0000009F00),
    .INIT_44(256'h000000EF00000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h007F0000007FFF00003F9F00006F6F0F00AF5FCF005FFE9F00CF3F9F0030F0AF),
    .INIT_46(256'h0000AF0000009F0000005F0000F07F0000CFBF00008FEF00005F0F00005F0F00),
    .INIT_47(256'h000000000000AF000000BF000000AF0000004F0000009F000000CF0000009F00),
    .INIT_48(256'h0000101000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0071000000A2300000B291F0009271BF00C11E6E00806E8E005040FF0070F040),
    .INIT_4A(256'h00003E0000002D0000008D0000004F000040400000A010000050000000000000),
    .INIT_4B(256'h00000000000020000000920000001200000082000000B2000000B1000000B000),
    .INIT_4C(256'h0000CF1000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h00CF0000006FAF00006F1CFF00503DDF0081620F0091E33000DF2050005FAF50),
    .INIT_4E(256'h00004000000050000000310000E0E10000BF5100009F1000005F0000006F0000),
    .INIT_4F(256'h0000000000003E000000ED0000000F0000008000000040000000AF000000EF00),
    .INIT_50(256'h0000EFEF00000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h002F000000C0500000E07130006022D1005012E1009FE080009F3DFF000F3EBE),
    .INIT_52(256'h000071000000B1000000300000C01F00005FAF00002FEF00007F0F00000F0F00),
    .INIT_53(256'h0000000000000F0000002F000000A0000000110000000100000021000000D100),
    .INIT_54(256'h0000F02000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h001100000042000000F220EF00A1F0AF0060EFAE000F0F2F005F007000CF1080),
    .INIT_56(256'h00005C000000CD000000BF0000F0C000000F7000008F20000070000000000000),
    .INIT_57(256'h000000000000A0000000210000005100000021000000D00000002F0000004D00),
    .INIT_58(256'h000040FF00000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h00CE000000AEDF00002E4EFF003F8D0F00B12F1000E221F0005232F0000161EF),
    .INIT_5A(256'h00004200000091000000F00000E0C000008FEF0000EFFF00001F0F00000E0F00),
    .INIT_5B(256'h000000000000DE0000005D0000007C0000007E00000080000000E1000000D100),
    .INIT_5C(256'h0000DF2000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h00FD0000003CF00000AABF20008A4FD1004BDF3200AC8063002ED11300FF80B2),
    .INIT_5E(256'h0000110000001400000076000000550000D0B300004F210000FF0000004E0000),
    .INIT_5F(256'h0000000000001F0000008D000000EB000000DA000000090000005B000000AE00),
    .INIT_60(256'h00000FFF00000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h005F000000E0CF000000CEEF00312FBF006231FF0031123000417110006060EF),
    .INIT_62(256'h0000A100000081000000300000E0D00000BFDF00009FFF00008F0F0000FF0F00),
    .INIT_63(256'h0000000000000F0000006F0000000F0000003000000001000000B20000005100),
    .INIT_64(256'h000000FF00000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0040000000110000007100FF009160FF0050201F00E0BF1F0020AFCF0020DFCF),
    .INIT_66(256'h00005F0000005F0000004F0000F05F0000EFCF00003FFF0000CF0F0000100F00),
    .INIT_67(256'h000000000000600000009000000031000000D000000060000000D0000000DF00),
    .INIT_68(256'h0000EF2000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h00F000000051EF0000F2FFCF00E2714E004192DF00A072500080E19100DF6081),
    .INIT_6A(256'h0000F000000070000000B10000103100003081000050100000D0000000900000),
    .INIT_6B(256'h000000000000B00000008100000042000000C30000007300000092000000E100),
    .INIT_6C(256'h0000EF0000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h00A10000004110000060C0FF00B051E000904130005F214000CF703000BFCF30),
    .INIT_6E(256'h00007000000041000000F100001060000050300000C000000020000000000000),
    .INIT_6F(256'h00000000000090000000E1000000E10000001100000020000000000000005000),
    .INIT_70(256'h000000FF00000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h008F0000008FDF00002F9FFF002F0FFF003F4060003F30B000BFEF7000EFBF00),
    .INIT_72(256'h00006F000000F0000000D00000F0400000EF000000EFF00000CF0F0000BF0F00),
    .INIT_73(256'h000000000000BF000000BF0000004F0000001F0000001F0000005E000000AE00),
    .INIT_74(256'h000030DF00000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0032000000B3F00000B480EF0024C07F00E4A02E00C2902E0031406E0090408E),
    .INIT_76(256'h0000BF000000AD0000007C000010AD0000408E0000D0EF0000000F0000510F00),
    .INIT_77(256'h000000000000E00000000200000083000000740000007500000063000000D100),
    .INIT_78(256'h0000F00000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h002F0000000F2000000FC000005FF1200070311000F041100090E01000306010),
    .INIT_7A(256'h00001200000052000000910000E06000009F1000005F0000005F0000006F0000),
    .INIT_7B(256'h0000000000002F000000DF000000A0000000A000000011000000120000009200),
    .INIT_7C(256'h0000EF0F00000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h002F00000070E000003FDFEF000F009F00DF30BF00BF6000008FBF00006F4F00),
    .INIT_7E(256'h0000AF000000CF0000001F0000F00F0000CF000000AF000000EF0000002F0000),
    .INIT_7F(256'h000000000000300000009000000090000000F000000030000000CF0000008F00),
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
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb[7:0]}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,dinb[8]}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta[7:0]}),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],doutb[7:0]}),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],douta[8]}),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],doutb[8]}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
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
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web,web,web}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1
   (douta,
    doutb,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [8:0]douta;
  output [8:0]doutb;
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [8:0]dina;
  input [8:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [8:0]dinb;
  wire [8:0]douta;
  wire [8:0]doutb;
  wire [0:0]wea;
  wire [0:0]web;
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
    .INITP_00(256'h0220222222222044462006662000000002202200000000000226206200000000),
    .INITP_01(256'h0000220000222044444000000000000002220222220004444662462620000000),
    .INITP_02(256'h0220000026222000022420060000000002220000022224444622442200000000),
    .INITP_03(256'h0002022222222044000224042000000000022200044444440006206200000000),
    .INITP_04(256'h0200200000022000066024202000000002222222222220000220000000000000),
    .INITP_05(256'h0222000004662444462200062000000000000000044444444200006620000000),
    .INITP_06(256'h0022220022666004000266000000000002000000044444400020000000000000),
    .INITP_07(256'h0022020006660044404402222000000000000022262220004402620620000000),
    .INITP_08(256'h0202222226666444466666620000000000202200000000044424040020000000),
    .INITP_09(256'h0202000004444444464446262000000000002000200000444000660000000000),
    .INITP_0A(256'h0022002204000040460664462000000000222000266664000000046620000000),
    .INITP_0B(256'h0220202202444044426220002000000002220000066664440224204000000000),
    .INITP_0C(256'h0022222226622000066046660000000002220000066664000222000000000000),
    .INITP_0D(256'h0000000000000000000400062000000000000000000000044264662020000000),
    .INITP_0E(256'h0002200002222400040000000000000002220000044664444666446600000000),
    .INITP_0F(256'h0002022224444000046000662000000000022220044444000444400000000000),
    .INIT_00(256'h0000200000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h002000000020F7000008CF0000D8870000182F0700D808070071810700B02100),
    .INIT_02(256'h0000500000005800001040000030280000500000006000000058000000580000),
    .INIT_03(256'h000000000000CF00000097000000F700000017000000BF000000280000004800),
    .INIT_04(256'h0000F70700000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h00DF000000EFFF000060F807008828070018480700C7D70700CF9F0700F8E707),
    .INIT_06(256'h0000BF000000CF000010DF000010F7000018FF000010070000D8000000B80000),
    .INIT_07(256'h000000000000F0000000F000000008000000F8000000F8000000F7000000D800),
    .INIT_08(256'h0000B70000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h003700000047F70000BFBF07004F67070058500700888100004F000000E7E700),
    .INIT_0A(256'h00008900000029000000A100000040000000000000E000000098000000570000),
    .INIT_0B(256'h000000000000D700000067000000AF000000670000002000000098000000C800),
    .INIT_0C(256'h0000200700000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h00E10000007907000012180700A9480700193007002108070040180700183807),
    .INIT_0E(256'h000086000008DE0000186E000028CF000068FF0000D807000050000000C80000),
    .INIT_0F(256'h000000000000280000003800000019000000B900000001000000680000005F00),
    .INIT_10(256'h0000300700000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h004F000000D7EF0000A8BF0700A0F70700CF500000D7400000209F000010CF07),
    .INIT_12(256'h000028000010D8000040A0000050AF000028FF0000E807000088000000470000),
    .INIT_13(256'h000000000000E0000000270000005F0000003F0000006F000000670000005800),
    .INIT_14(256'h0000080700000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h00B8000000A0E70000A06F070001280700E149000078E0000030200700E8F707),
    .INIT_16(256'h0000E00000F88000000077000017B7000038FF00007007000090000000B00000),
    .INIT_17(256'h000000000000AF0000007F00000020000000C800000088000000500000001000),
    .INIT_18(256'h0000480000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h000F000000401800000F880000378F0000E7D5000050E7070099490700F06100),
    .INIT_1A(256'h0000280000F0180000C80800009F0800008700000097000000DF000000E70000),
    .INIT_1B(256'h000000000000680000002F0000004700000027000000F7000000280000004000),
    .INIT_1C(256'h0000BF0700000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h00B90000002810000000700700383100001F6900007F600000A6FE070017E607),
    .INIT_1E(256'h0000AF000000B7000018CF000048F7000098FF0000E007000010000000100000),
    .INIT_1F(256'h00000000000048000000C000000019000000F1000000D80000005F0000006700),
    .INIT_20(256'h0000100700000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h006000000040F7000078CF0700B8200700887807004040070050200700303007),
    .INIT_22(256'h0000B00000008F00001897000040CF000078FF00009807000090000000900000),
    .INIT_23(256'h000000000000D8000000C8000000C8000000E8000000E8000000C0000000B000),
    .INIT_24(256'h0000A70700000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0020000000F8FF0000D7DF070068C00700A0A90000AFE000009E260000EFA600),
    .INIT_26(256'h0000180000001800001018000020F7000028FF00003007000020000000300000),
    .INIT_27(256'h000000000000D700000058000000F800000031000000700000003F0000000700),
    .INIT_28(256'h0000CF0000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h00F700000007F800001F0007005F300700A7C000004FC800007FC700008F5F00),
    .INIT_2A(256'h0000A00000F8780000E8380000DF080000C7000000AF000000BF000000DF0000),
    .INIT_2B(256'h0000000000002000000038000000A8000000F8000000B8000000A8000000A000),
    .INIT_2C(256'h0000EF0700000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h00A7000000D7FF000007EF000017DF0000500800004050000007280000FFEF07),
    .INIT_2E(256'h0000380000F8200000E8F80000F7F8000007FF0000DF070000A7000000A70000),
    .INIT_2F(256'h000000000000DF000000D7000000FF0000004700000080000000900000005800),
    .INIT_30(256'h0000100000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h008F000000A007000040FF000010000000582000009050000088A00000287800),
    .INIT_32(256'h0000880000F8680000D8480000A72800008F0000009F000000C70000002F0000),
    .INIT_33(256'h000000000000DF0000003F00000080000000B8000000D0000000E0000000B000),
    .INIT_34(256'h0000100700000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h000800000071100000A290070042000700D919070061110700B8C80700486007),
    .INIT_36(256'h0000D0000000A80000F0BF0000D8E70000F7FF00002707000098000000600000),
    .INIT_37(256'h0000000000007000000028000000B9000000F2000000CA000000FA0000004900),
    .INIT_38(256'h0000D70700000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h00F8000000C0080000176000004F0900008F000000D6BF0000AF9E00004F0707),
    .INIT_3A(256'h0000BF0000F8CF000000C700001FD7000030FF00003807000028000000180000),
    .INIT_3B(256'h00000000000040000000A0000000E8000000B800000017000000C7000000BF00),
    .INIT_3C(256'h0000870000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h00190000005920000088E80000EF1A0000278A00002EF70000AD1407004EC607),
    .INIT_3E(256'h0000A60000E0060000B8760000EFFF000057070000B700000030000000700000),
    .INIT_3F(256'h0000000000006F000000E90000003200000032000000B8000000E70000009700),
    .INIT_40(256'h0000970000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h00B8000000C7180000AF01000058320000A70100002E68000025960000EF7600),
    .INIT_42(256'h0000A00000108000004070000078300000980000008800000038000000F00000),
    .INIT_43(256'h000000000000780000006100000011000000D100000020000000F0000000D800),
    .INIT_44(256'h0000100700000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h00B7000000BFFF00009FCF0000AFBF0000E7BF0700AF970700DF97070010EF07),
    .INIT_46(256'h0000A70000F8A70000E0C70000C7E70000B7FF0000A7070000AF000000CF0000),
    .INIT_47(256'h000000000000D700000007000000E7000000C7000000AF000000A7000000B700),
    .INIT_48(256'h0000100000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h00210000007910000041A8070008A8070057B707006F3F070018000700488000),
    .INIT_4A(256'h0000860000000F0000202F00005020000090000000E800000050000000610000),
    .INIT_4B(256'h000000000000A8000000C90000000900000000000000C7000000AF000000F600),
    .INIT_4C(256'h0000CF0000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h00C7000000B7DF000017BE07007F760700C1A90000D9F900002F000000CFDF00),
    .INIT_4E(256'h0000A80000F0880000D8400000D7180000CF000000BF0000009F000000B70000),
    .INIT_4F(256'h0000000000000F000000AE0000009F00000048000000A0000000E8000000C800),
    .INIT_50(256'h0000DF0700000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h00F8000000E018000060B0000040F9000038D90000BF7800000F3F0700471F07),
    .INIT_52(256'h0000C00000E89F0000B0C7000097E70000AFFF0000EF07000077000000E00000),
    .INIT_53(256'h0000000000007000000028000000B9000000D1000000D9000000400000000000),
    .INIT_54(256'h0000FF0000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h00D900000008F80000FF00070077E70700B7E70700C7080000CF080000EFF800),
    .INIT_56(256'h00003F0000F87700000058000047300000A8000000F800000020000000B90000),
    .INIT_57(256'h00000000000030000000C800000020000000CF000000CE0000003E000000C600),
    .INIT_58(256'h0000480700000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0067000000C7EF0000204F0700A0E60000007F0000D848070031E9070078E007),
    .INIT_5A(256'h0000080000F0D80000C8F700007FF7000027FF00001707000047000000AF0000),
    .INIT_5B(256'h0000000000007F00000036000000B60000004700000088000000A80000006000),
    .INIT_5C(256'h0000DF0000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h006D00000075FF00009DEF00000DB7000096FF0000974800004F4800004F1000),
    .INIT_5E(256'h0000B3000000A30000F0AA0000A83900001F00000057000000860000001E0000),
    .INIT_5F(256'h0000000000009F000000860000002E0000003E000000BF000000610000006A00),
    .INIT_60(256'h0000080700000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h00D0000000A8FF000040870700806F0700F1700700E1F9000090C00000205007),
    .INIT_62(256'h0000200000F0F80000D8F00000CFF70000D7FF0000F707000017000000670000),
    .INIT_63(256'h000000000000BF000000AF000000F800000070000000A1000000600000003000),
    .INIT_64(256'h0000100700000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0010000000C8F00000D0E8070000180700D8100000B7DF0000F0CF0700F8F707),
    .INIT_66(256'h0000B70000F8AF0000F0CF000017EF000057FF000078070000A0000000900000),
    .INIT_67(256'h00000000000000000000F8000000A00000009F000000670000007F0000009F00),
    .INIT_68(256'h0000E70000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0038000000E9F7000009D7070089980700A959070040490000900800000F4800),
    .INIT_6A(256'h0000E0000008B80000186800002828000058000000A8000000E8000000300000),
    .INIT_6B(256'h000000000000180000004800000091000000C1000000D1000000D8000000B800),
    .INIT_6C(256'h0000E70000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h000800000030080000B058070018B80700B8C0000058A800000F480000DFE700),
    .INIT_6E(256'h0000880000004000002820000058100000800000008000000068000000300000),
    .INIT_6F(256'h000000000000480000005000000068000000B8000000C0000000C0000000B000),
    .INIT_70(256'h0000080700000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h009700000087FF000087BF0700BFE00700E7180000D7180000EFEF0000E7D700),
    .INIT_72(256'h0000880000F8500000F0180000F7F80000EFF80000DF070000C7000000CF0000),
    .INIT_73(256'h000000000000D7000000CF000000AF0000000F0000002F0000003F0000006700),
    .INIT_74(256'h0000300700000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h000200000052070000BA28070072500700193807001048070030300700184007),
    .INIT_76(256'h00006E000000160000209E000060D70000E8FF00008807000011000000490000),
    .INIT_77(256'h0000000000004000000039000000D10000004100000090000000270000001E00),
    .INIT_78(256'h0000070000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h00C000000020100000406800002090000010800000C898000068780000303800),
    .INIT_7A(256'h0000690000F0400000C8100000B7080000A7000000A70000000F000000770000),
    .INIT_7B(256'h00000000000060000000D000000028000000690000007900000031000000E100),
    .INIT_7C(256'h0000E70000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0018000000F8070000E8F7070008080700171807000F280000CFEF0000AFA700),
    .INIT_7E(256'h0000F70000F8070000E0000000D7000000EF0000000700000017000000280000),
    .INIT_7F(256'h0000000000001800000020000000F800000030000000E8000000D7000000CF00),
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
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb[7:0]}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,dinb[8]}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta[7:0]}),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],doutb[7:0]}),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],douta[8]}),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],doutb[8]}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
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
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web,web,web}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2
   (douta,
    doutb,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [8:0]douta;
  output [8:0]doutb;
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [8:0]dina;
  input [8:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [8:0]dinb;
  wire [8:0]douta;
  wire [8:0]doutb;
  wire [0:0]wea;
  wire [0:0]web;
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
    .INITP_00(256'h0222222222224444022046662000000002222200000000004466620000000000),
    .INITP_01(256'h0222222222220000066444040000000002220000000444444222000020000000),
    .INITP_02(256'h0220000622220000022000440000000002200002222644440220442600000000),
    .INITP_03(256'h0000022222220000444004662000000000022204444444000006460000000000),
    .INITP_04(256'h0200000002220000066000662000000002222222222200000220040000000000),
    .INITP_05(256'h0200000446264444002200062000000002000004444444400220004620000000),
    .INITP_06(256'h0000002266620004440000000000000000000004444440000000000000000000),
    .INITP_07(256'h0022022666000000044224042000000000000026222200044400066620000000),
    .INITP_08(256'h0222222666664444446666620000000000000000000004440006246620000000),
    .INITP_09(256'h0222000444444444066600062000000000022222000000004440662000000000),
    .INITP_0A(256'h0222220400000004466200422000000000000026666600000000046620000000),
    .INITP_0B(256'h0000222244440004404220002000000002200006666644000266600000000000),
    .INITP_0C(256'h0222222662220004466446660000000002200004666600000266000000000000),
    .INITP_0D(256'h0000000000000000020000062000000002220000000000000220000020000000),
    .INITP_0E(256'h0222222222220440066444040000000002200004466644444662002620000000),
    .INITP_0F(256'h0222020444400000466000462000000000000004444440000000000000000000),
    .INIT_00(256'h0000240000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h00F4000000F0030000F8EF0000EBC30000F093000060E40000C4AC00006CA800),
    .INIT_02(256'h0004300000141C0000240400002C00000030000000300000001C000000040000),
    .INIT_03(256'h000000000000EF000000C70000007F00000093000000FF0000001C0000002C00),
    .INIT_04(256'h0000FF0000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h000B0000001BFF00001CF7000004080000DC280000CFF70000DBCB0000FBEB00),
    .INIT_06(256'h0008EB00000CF700000CFF000008FF0000F0030000E8000000EF000000F30000),
    .INIT_07(256'h000000000000EB000000D7000000F0000000EF000000E7000000DF000000E700),
    .INIT_08(256'h0000D70000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h00D70000002BFF000077E700007CBB0000D0100000E0BC000048A00000070300),
    .INIT_0A(256'h0000680000002C000000040000F8000000D4000000B3000000930000009B0000),
    .INIT_0B(256'h000000000000E7000000AF000000EF0000005C000000CC000000D0000000B000),
    .INIT_0C(256'h00001C0000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0060000000F0F80000ACFC0000A0100000A0080000DC00000000100000FC2400),
    .INIT_0E(256'h000C9F000014DB000030FB000064FF0000A4030000E0000000F4000000C00000),
    .INIT_0F(256'h000000000000F4000000CC00000098000000570000001B000000370000005F00),
    .INIT_10(256'h0000180000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h00070000004BF3000074DB000018070000BF380000FB0C000000C70000ECEB00),
    .INIT_12(256'h001CD000002CCF00001CFB0000ECFF0000CC030000BF000000A3000000C30000),
    .INIT_13(256'h000000000000BB000000A700000003000000540000002C00000028000004FC00),
    .INIT_14(256'h00000C0000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h005C00000058F7000034C70000301400005894000038680000FC140000DF0700),
    .INIT_16(256'h0000B3000007D3000018FB000038FF00004C030000580000004C0000005C0000),
    .INIT_17(256'h000000000000B7000000EB00000034000000440000000C000000040000FCC800),
    .INIT_18(256'h00003C0000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h00100000001C0800002C480000B3EF000037FE0000EC3F0000C86C000080C400),
    .INIT_1A(256'h00EC100000D3080000C3000000CB000000E7000000FB00000017000000170000),
    .INIT_1B(256'h000000000000500000002C000000C3000000AB000000FB000000000000FC0C00),
    .INIT_1C(256'h0000C30000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h00F4000000D0000000FC3000005C98000064BC0000E3480000479F0000836B00),
    .INIT_1E(256'h000CD7000020F3000048FF00006CFF00007C0300007C00000060000000300000),
    .INIT_1F(256'h000000000000200000005C000000800000003C000000DF000000D7000000D300),
    .INIT_20(256'h0000140000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h00180000001CFB000014E30000180800000C340000FC14000010080000081C00),
    .INIT_22(256'h0008CB000020E3000038FB000048FF00004803000048000000300000001C0000),
    .INIT_23(256'h000000000000D7000000DB000000DF000000E3000000CF000000DB000000CF00),
    .INIT_24(256'h0000BB0000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0004000000F7FB0000FBEB000068500000B0D800001F9800005BBF00006F4B00),
    .INIT_26(256'h000400000010F8000014FC00001CFF0000140300000C00000004000000180000),
    .INIT_27(256'h000000000000EB000000380000007800000090000000340000001C0000000800),
    .INIT_28(256'h0000DB0000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h000B00000014FF000038F800005C1400008C5C000058700000CF030000CBAF00),
    .INIT_2A(256'h00F8240000F3080000E7000000DB000000DF000000EB000000EF000000030000),
    .INIT_2B(256'h000000000000F800000008000000480000007000000068000000600000FC4800),
    .INIT_2C(256'h0000FF0000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h00170000003703000028FB000008F300002C0000002820000000180000FFFB00),
    .INIT_2E(256'h00F4040000F7FC000003FF0000F7FF0000D8030000CB000000D3000000F30000),
    .INIT_2F(256'h000000000000FB0000000F000000230000003400000038000000240000FC1400),
    .INIT_30(256'h00000C0000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h005800000050040000240300002000000058080000702C00005C540000204000),
    .INIT_32(256'h00F0280000D7180000C7000000CF000000E70000000B00000037000000500000),
    .INIT_33(256'h0000000000000B0000002C000000440000005C000000640000004C0000FC3C00),
    .INIT_34(256'h0000140000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h003900000001000000C92C0000A56C0000908000007C8400004C7000001C4000),
    .INIT_36(256'h00F8DB0000F0EF0000F7FF00000FFF00004703000098000000F4000000340000),
    .INIT_37(256'h0000000000002400000054000000740000006000000028000000F8000000E000),
    .INIT_38(256'h0000DB0000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h00FF000000F700000020280000548400000FA400009BFB00004B530000977300),
    .INIT_3A(256'h0000D700000FE3000018FB00001CFF00000C0300000C00000000000000F00000),
    .INIT_3B(256'h000000000000180000004C000000980000006400000004000000EF0000FCDF00),
    .INIT_3C(256'h00008F0000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0028000000C0140000B37C000047010000A03D00004F4700002ACE000023B600),
    .INIT_3E(256'h00DC970000EFF300002703000067030000880000008C000000980000007C0000),
    .INIT_3F(256'h0000000000006C00000014000000550000007D000000BB000000630000F85F00),
    .INIT_40(256'h0000AB0000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h000F00000047080000C870000030050000C81D0000DF7C00002F770000832300),
    .INIT_42(256'h001C380000381C0000500400004000000014000000F4000000EC000000EF0000),
    .INIT_43(256'h0000000000004800000094000000D9000000DC000000A0000000680000044400),
    .INIT_44(256'h0000040000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h00EB000000E7030000C7EB0000D3D30000CFD70000B3CF0000DFC7000000EF00),
    .INIT_46(256'h00F0DF0000E7EF0000DBFF0000D7FF0000DF030000E3000000DF000000DF0000),
    .INIT_47(256'h000000000000F7000000F4000000E7000000E3000000DB000000D70000FCD700),
    .INIT_48(256'h0000140000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h00D000000084000000C838000004540000BBFB0000B7AB000014EC0000303800),
    .INIT_4A(256'h000C13000024140000440000006C00000094000000B0000000A4000000480000),
    .INIT_4B(256'h0000000000003000000004000000A80000004F000000670000009F000000EF00),
    .INIT_4C(256'h0000DF0000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0003000000FBFB00009B830000C7330000FC0C0000FCF4000020AC0000F3FF00),
    .INIT_4E(256'h00EC300000E7140000E7000000E7000000E3000000CF000000C3000000EB0000),
    .INIT_4F(256'h000000000000A7000000A3000000E70000002800000068000000600000FC4C00),
    .INIT_50(256'h0000DB0000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0074000000500C0000306000004884000040700000F74C00007BBF0000978300),
    .INIT_52(256'h00DCD30000CBEB0000D7FF0000FFFF0000330300005F00000084000000880000),
    .INIT_53(256'h000000000000580000009C000000C00000009C00000028000000EC0000F8CC00),
    .INIT_54(256'h0000F70000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h005300000053FB0000B7F8000013F30000170B000003180000FF04000007FB00),
    .INIT_56(256'h00003000001F1C00005004000078000000880000006400000008000000940000),
    .INIT_57(256'h000000000000F4000000B3000000930000009B000000D30000000F0000FC3300),
    .INIT_58(256'h0000340000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h007000000060FF0000CCBF00007B730000E89F0000780C00009C6C0000387C00),
    .INIT_5A(256'h00E8F40000C3FB000093FF00008BFF0000AF030000D70000000B0000004F0000),
    .INIT_5B(256'h000000000000D7000000DF00000007000000340000002C000000140000FCF400),
    .INIT_5C(256'h0000F30000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h00F2000000CF0B000023170000E0FF0000A8FF00006C2000004C280000380C00),
    .INIT_5E(256'h00F87D0000D82C00009704000037000000D70000009F000000AE000000220000),
    .INIT_5F(256'h000000000000130000003F000000B800000040000000B1000000790000000500),
    .INIT_60(256'h0000100000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h006400000050FB0000E8CF0000FCB30000641C0000787800004C6000000C3800),
    .INIT_62(256'h00ECF40000E7F70000EBFF0000FFFF00000B0300002B00000058000000600000),
    .INIT_63(256'h000000000000EF000000E300000007000000200000000C000000100000FC0800),
    .INIT_64(256'h0000040000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h00D0000000CBFF0000DFF70000F80C0000DB140000C7EB0000EBE30000F7FB00),
    .INIT_66(256'h00F8DB00000BF3000027FF00003CFF0000500300004800000018000000EC0000),
    .INIT_67(256'h000000000000E8000000E7000000D3000000CB000000C3000000D30000FCD700),
    .INIT_68(256'h0000F70000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h00440000002CF3000068D70000BC380000F0A80000C0B0000064940000143000),
    .INIT_6A(256'h000C440000141C0000280400005000000070000000900000008C0000007C0000),
    .INIT_6B(256'h000000000000CC000000DC000000F80000002400000054000000700000006400),
    .INIT_6C(256'h0000F70000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h002800000054FC00009C200000A45C0000706400004C54000014300000F7F700),
    .INIT_6E(256'h00101800002808000040000000400000002C000000140000000C000000140000),
    .INIT_6F(256'h0000000000001000000028000000440000006000000060000000540000003000),
    .INIT_70(256'h0000FC0000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h00CF000000EBFF0000F7EB00001FFF00001B180000030C000003F70000EFEB00),
    .INIT_72(256'h00F8100000FBFC0000F7FC0000F3FF0000EB030000E3000000D3000000C30000),
    .INIT_73(256'h000000000000EB000000FB0000000B0000003400000030000000400000FC2C00),
    .INIT_74(256'h0000200000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h002D000000B4F8000090FC0000AC140000C0200000F428000004180000FC2000),
    .INIT_76(256'h000CB700002CE300006CFB0000B8FF0000FC030000200000000D000000B10000),
    .INIT_77(256'h000000000000F4000000C00000008300000043000000070000002B0000006B00),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h00B000000098040000982C00009440000070440000544C0000384400001C2400),
    .INIT_7A(256'h00E8100000DB040000D3000000D7000000FF0000002B0000005C0000008C0000),
    .INIT_7B(256'h0000000000003000000050000000740000006C00000070000000480000F82800),
    .INIT_7C(256'h0000EB0000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h00F4000000EBF80000FBF30000080000000C18000014180000EB030000D7D700),
    .INIT_7E(256'h00F4030000EF000000F7000000070000000B000000100000000C000000000000),
    .INIT_7F(256'h000000000000F4000000EC000000FB00000004000000F7000000030000FC0700),
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
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb[7:0]}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,dinb[8]}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta[7:0]}),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],doutb[7:0]}),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],douta[8]}),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],doutb[8]}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
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
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web,web,web}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3
   (douta,
    doutb,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [8:0]douta;
  output [8:0]doutb;
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [8:0]dina;
  input [8:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [8:0]dinb;
  wire [8:0]douta;
  wire [8:0]doutb;
  wire [0:0]wea;
  wire [0:0]web;
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
    .INITP_00(256'h0222222222444400066446662000000002222000000000444026620000000000),
    .INITP_01(256'h0222222222000004464440040000000002200000004444400222200020000000),
    .INITP_02(256'h0200026222000000026600440000000002200022224444400226402600000000),
    .INITP_03(256'h0000022222000044460004662000000000022244444400000004660000000000),
    .INITP_04(256'h0200000022000400022000662000000002222222220000000664400000000000),
    .INITP_05(256'h0000004466444400002220062000000002200044444444000220004620000000),
    .INITP_06(256'h0000222662000000020000000000000000000044444000000002200000000000),
    .INITP_07(256'h0000026620000000444004662000000000000062220044444000046620000000),
    .INITP_08(256'h0022226666444444446666620000000000000000000444000000046620000000),
    .INITP_09(256'h0222004444444440026620042000000000222200000000444600462000000000),
    .INITP_0A(256'h0222204000000444462204422000000000000066660000000000006620000000),
    .INITP_0B(256'h0000000444444440000220000000000002200066664400000266600000000000),
    .INITP_0C(256'h0222226622000444466446660000000002220046660000000266000000000000),
    .INITP_0D(256'h0200000000000000020000062000000002220000000000000220000020000000),
    .INITP_0E(256'h0222222222000004464440040000000002000044464444440222002620000000),
    .INITP_0F(256'h0222204440000044466200462000000000000044444000000000000000000000),
    .INIT_00(256'h00001C0000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h00F9000000050000000BFD0000FDEB0000E9CF00001AE5000060420000365C00),
    .INIT_02(256'h000E0600001200000014000000140000000E00000004000000FA000000F00000),
    .INIT_03(256'h000000000000FF000000F3000000DB000000DF00000003000000100000061000),
    .INIT_04(256'h0000FF0000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0002000000FCFF0000FAFF0000F8020000F30C0000EDFB0000EDE50000FDF500),
    .INIT_06(256'h000CFD00000AFF0000FC010000EE010000F5000000FF00000007000000090000),
    .INIT_07(256'h000000000000FB000000F1000000F7000000F1000000F1000002F3000006F900),
    .INIT_08(256'h0000EF0000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h003F0000005EFF000054F700002ADD000046F800005E4A000026520000040C00),
    .INIT_0A(256'h00000C000002020000F4000000DF000000CD000000C9000000E7000000130000),
    .INIT_0B(256'h000000000000FB000000EB00000003000000280000004A0000003C0000002400),
    .INIT_0C(256'h00000C0000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h00BE000000A7FF0000B9010000D10A0000E90800000104000000060000FD0E00),
    .INIT_0E(256'h0012F500002CFF00004A0100006A010000780000006400000034000000FA0000),
    .INIT_0F(256'h000000000000F7000000E3000000CB000000B7000000AF000002C3000008DF00),
    .INIT_10(256'h0000080000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h002C0000002EFF000010F30000D8FE0000DB0E00000B02000002EF0000F3F700),
    .INIT_12(256'h0018F3000002FD0000E2010000CF010000D7000000EF000000F30000000D0000),
    .INIT_13(256'h000000000000E3000000E9000000120000002A0000000A000006F4000016E900),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h003400000012FF0000DEE30000F6FC0000384600002E3E0000FF100000ED0200),
    .INIT_16(256'h0008F3000016FD0000240100002A01000028000000240000001E0000002E0000),
    .INIT_17(256'h000000000000E5000000070000002600000020000000F80000FEE2000001E100),
    .INIT_18(256'h00002A0000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h000A0000000E000000161A0000D70500008D970000EB8F0000641E0000406800),
    .INIT_1A(256'h00E1000000DD000000E9000000FD0000000B000000110000000A000000060000),
    .INIT_1B(256'h0000000000001A00000016000000F5000000E5000000F50000FC000000F10400),
    .INIT_1C(256'h0000D50000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h00E7000000E1FE0000151000004A4200004E660000FF3A0000A1DF0000C1AD00),
    .INIT_1E(256'h001AFD000032FF000040010000400100002C0000000E000000F8000000F40000),
    .INIT_1F(256'h000000000000060000001C0000002A00000014000000FF000002F300000AF500),
    .INIT_20(256'h00000A0000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0006000000FAFF0000ECF50000F4020000FC1A00000110000008040000020A00),
    .INIT_22(256'h0018F7000022FF000026010000200100001800000010000000080000000A0000),
    .INIT_23(256'h000000000000F1000000F3000000F5000000F3000000E5000000E5000008E900),
    .INIT_24(256'h0000CD0000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h000800000003FF000005F70000461800006E6200001C5C0000ADF10000B7A300),
    .INIT_26(256'h0008FE000010FF0000120100000A01000000000000FC00000000000000080000),
    .INIT_27(256'h000000000000F7000000100000002A000000360000001C0000000C0000040000),
    .INIT_28(256'h0000E70000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h001C00000026FF000028FB00002A0200003C240000243A0000E50C0000E5D900),
    .INIT_2A(256'h00F7020000F1000000F5000000F7000000FB000000FF000000030000000E0000),
    .INIT_2B(256'h000000000000F7000000FA0000001000000026000000280000FE1A0000FB0A00),
    .INIT_2C(256'h0000FD0000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h00240000001800000000FB000000F9000010FE00000E0C0000000C0000FFFF00),
    .INIT_2E(256'h00FDFE0000FDFF0000F0010000E9010000E7000000F1000000070000001B0000),
    .INIT_2F(256'h000000000000030000000C00000010000000100000000A0000FC040000F90000),
    .INIT_30(256'h0000080000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h00280000001E0000001400000018FA000024FE0000301600002C2E0000122400),
    .INIT_32(256'h00E5060000DF000000ED000000070000001F00000024000000280000002A0000),
    .INIT_33(256'h000000000000080000001000000014000000180000001E0000FC180000F31000),
    .INIT_34(256'h0000100000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h005200000022FE00001A0E0000262A00003C3C000044480000263C00000E2400),
    .INIT_36(256'h00FBFB000005FF00001D0100004801000076000000940000009C000000840000),
    .INIT_37(256'h000000000000040000000200000002000000F4000000E8000000EB0000FCF100),
    .INIT_38(256'h0000E10000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h00FF00000001000000140C00002E38000020520000DD170000A5B30000C9AF00),
    .INIT_3A(256'h000CF9000010FF00000C01000004010000FC000000F8000000F8000000FF0000),
    .INIT_3B(256'h0000000000000400000018000000380000002C000000060000FEF5000003F100),
    .INIT_3C(256'h0000B10000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h00E0000000AB020000DF240000707000009CB00000BB5000000F7F0000914500),
    .INIT_3E(256'h0003FD00002B01000050000000560000003A0000002000000020000000120000),
    .INIT_3F(256'h0000000000002C000000620000006E0000000E000000DD0000F6CF0000EDE700),
    .INIT_40(256'h0000CB0000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h00220000003A000000862C0000B0780000708E0000F348000099CD0000C38F00),
    .INIT_42(256'h00280A00003000000018000000F8000000E8000000F100000013000000270000),
    .INIT_43(256'h00000000000018000000300000003E0000004200000036000006240000161600),
    .INIT_44(256'h0000040000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h00F5000000F1000000D9F90000D9E90000DBE90000D7E90000EFE1000000F300),
    .INIT_46(256'h00F1FB0000EBFF0000EB010000F1010000EF000000F1000000F9000000F50000),
    .INIT_47(256'h00000000000001000000FB000000F5000000EF000000E70000FCEB0000F7F300),
    .INIT_48(256'h00000E0000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h00A3000000BFFE00001916000032300000E90D0000D7DD00000AED0000181600),
    .INIT_4A(256'h001C0400003200000048000000520000004E0000002E000000F6000000BE0000),
    .INIT_4B(256'h00000000000002000000EC000000D3000000CB000000EB0000020100000C0B00),
    .INIT_4C(256'h0000EF0000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h002200000017FF0000C7CF0000DF97000078EE0000727000000E620000F90700),
    .INIT_4E(256'h00E9040000EF000000F5000000F7000000E9000000E1000000F50000000F0000),
    .INIT_4F(256'h000000000000EB000000EF000000FF00000010000000200000FA1A0000F11000),
    .INIT_50(256'h0000E30000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h002200000008000000141E0000303C00003A3E00000F340000BDEF0000CBBF00),
    .INIT_52(256'h00E7FB0000F5FF000017010000350100003A000000380000003E0000003A0000),
    .INIT_53(256'h000000000000220000003A000000440000002A000000000000F8F10000E9F100),
    .INIT_54(256'h0000FD0000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h00B9000000E7FF00001DFD000024FF00000E060000FE080000FF00000002FD00),
    .INIT_56(256'h001E08000038000000440000003200000002000000D2000000AC000000A10000),
    .INIT_57(256'h000000000000F7000000E3000000E7000000F9000000150000FE1A0000051400),
    .INIT_58(256'h00001C0000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h002C0000000EFF0000BFE50000A5B90000F1C10000400000004E3C00001C4400),
    .INIT_5A(256'h00CFFF0000BBFF0000C9010000ED01000013000000270000002A0000002E0000),
    .INIT_5B(256'h000000000000F7000000FF000000060000000C000000000000FAFA0000EBFB00),
    .INIT_5C(256'h0000030000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h00AD000000CA0000009808000040F900001AED00001A020000261000001E0C00),
    .INIT_5E(256'h00DD0A0000AB0000007300000051000000590000008B000000EF0000005D0000),
    .INIT_5F(256'h00000000000014000000320000005E0000007C0000007E000000520000F82600),
    .INIT_60(256'h0000080000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h001C00000004FF0000E1EB0000EFD500002C020000423C000026360000061E00),
    .INIT_62(256'h00EFFD0000F7FF000005010000190100002A0000002A0000002A0000002A0000),
    .INIT_63(256'h000000000000F9000000F5000000FE00000008000000040000FC000000F3FA00),
    .INIT_64(256'h0000020000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h00E9000000EBFF0000F1FB0000FB060000F5100000EFF90000F5EF0000FBFB00),
    .INIT_66(256'h000FFD00001CFF000026010000240100000A000000FA000000EA000000E30000),
    .INIT_67(256'h000000000000F9000000FB000000FD000000F7000000EF0000FCEF0000FFF500),
    .INIT_68(256'h0000FD0000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h001800000026FF00003EEF00005E0C00006C4E0000565C0000325000000C2200),
    .INIT_6A(256'h0010080000240000003A000000460000004A0000003C00000020000000160000),
    .INIT_6B(256'h000000000000E1000000E1000000EF0000000E0000002A000002260000081800),
    .INIT_6C(256'h0000F70000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h002A0000002EFF0000440A0000422C00002E360000222A00000A160000FBFF00),
    .INIT_6E(256'h001C020000220000001E0000000A000000020000000600000010000000240000),
    .INIT_6F(256'h000000000000FE00000008000000140000001C0000001C0000021000000C0800),
    .INIT_70(256'h0000FD0000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h000700000015FF000011F5000010F900000C0800000608000000FF0000F7F700),
    .INIT_72(256'h00FD000000F9FF0000F3010000F3010000EB000000E3000000E3000000F10000),
    .INIT_73(256'h000000000000F90000000500000012000000240000001E0000FE120000FD0400),
    .INIT_74(256'h00000C0000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h00A200000097FF0000BB010000E90E0000FF1600000916000002100000FD0E00),
    .INIT_76(256'h0028F7000052FF0000740100008A010000820000005E0000001C000000D40000),
    .INIT_77(256'h000000000000F5000000DD000000C3000000B7000000B5000002CF00000CE700),
    .INIT_78(256'h0000060000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0048000000380000002E0C0000301A000030200000262800001C2200000E1800),
    .INIT_7A(256'h00EB000000EB000000FD000000170000002B0000004400000058000000520000),
    .INIT_7B(256'h0000000000000C000000100000001800000012000000100000FA0A0000F10600),
    .INIT_7C(256'h0000EF0000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h00F7000000F3FF0000FBF7000000FA0000060600000C0C0000F3040000EBEF00),
    .INIT_7E(256'h00FB0000000100000005000000080000000800000002000000F6000000F40000),
    .INIT_7F(256'h000000000000F5000000F1000000F7000000FC000000030000FE020000F90000),
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
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb[7:0]}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,dinb[8]}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta[7:0]}),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],doutb[7:0]}),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],douta[8]}),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],doutb[8]}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
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
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web,web,web}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4
   (douta,
    doutb,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [8:0]douta;
  output [8:0]doutb;
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [8:0]dina;
  input [8:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [8:0]dinb;
  wire [8:0]douta;
  wire [8:0]doutb;
  wire [0:0]wea;
  wire [0:0]web;
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
    .INITP_00(256'h000004000004444448E0E04A2000000000044444004004444CE064C620000000),
    .INITP_01(256'h00400440400440004C0AE04000000000000400400400004440EC24CA20000000),
    .INITP_02(256'h044404000444004084868608000000000040000000044000008426AC00000000),
    .INITP_03(256'h00404404440004400C2882C22000000004040444404440048C8682A000000000),
    .INITP_04(256'h00404440444444404C88406C0000000000440404004040040C00C4A620000000),
    .INITP_05(256'h0400000440404000846E8A4C200000000444444040044444C4CA60C000000000),
    .INITP_06(256'h00000044044440444C2006EC2000000004404004400040408C244EA620000000),
    .INITP_07(256'h000400400404404444802C2A200000000440040040440440C4AE8C0000000000),
    .INITP_08(256'h0444404400400000C4444E8200000000000004440040404444C8A0AC20000000),
    .INITP_09(256'h0444000004440000C8AA64E200000000004040040440444404C4840220000000),
    .INITP_0A(256'h0404004004400040C8EA8684200000000400404404404004C0A8A2CC20000000),
    .INITP_0B(256'h00044004004000440CC4A4E4200000000444444440404440C40424E200000000),
    .INITP_0C(256'h0404004040444444C04E0C46000000000440044444000000CCAA4CEE20000000),
    .INITP_0D(256'h0000000004404404002EA664000000000040444440040400000A2A0000000000),
    .INITP_0E(256'h004440040004000440E66808000000000400040000440044CC42A48620000000),
    .INITP_0F(256'h0440440400004404C042026E000000000444000044044444C04680A600000000),
    .INIT_00(256'h0000120000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h00050000000A00000006FF0000F8F70000EBE9000009EB0000311700001B2E00),
    .INIT_02(256'h000800000008000000060000000400000001000000FC000000F9000000FC0000),
    .INIT_03(256'h00000000000000000000FE000001FA000001FB00000301000006030000090100),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h00F7000000FA000000FF01000000030000FE030000F7FF0000F6F80000FEFA00),
    .INIT_06(256'h0002000000FB000000F7000000F9000000FF0000000300000001000000FC0000),
    .INIT_07(256'h000000000000FF000000FD000000FE0000FFFD0000FFFD000002FE000005FF00),
    .INIT_08(256'h0000010000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h00320000002A00000012FD0000FBF2000012F50000281D000013290000020F00),
    .INIT_0A(256'h00FD000000F5000000E8000000E4000000ED00000001000000190000002D0000),
    .INIT_0B(256'h000000000000FF000000FE0000FF01000000070000FF0B0000FD070000FC0200),
    .INIT_0C(256'h0000020000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h00CE000000D9000000F202000002080000050800000605000000040000FE0300),
    .INIT_0E(256'h001E0000002E00000039000000330000001C000000FF000000E0000000CE0000),
    .INIT_0F(256'h000000000000FD000000FA000000F7000000F4000003F4000008F900000FFE00),
    .INIT_10(256'h0000FE0000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h000C00000002000000F5FC0000E4FB0000F6FB00001001000002060000F9FF00),
    .INIT_12(256'h00FB000000E8000000E2000000EE00000000000000080000000E000000120000),
    .INIT_13(256'h000000000000FA000001FD0000020500000008000001FD00000BFA00000BFC00),
    .INIT_14(256'h0000FE0000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0002000000F1000000DDF50000FEF900002C1C000020240000FF100000F6FE00),
    .INIT_16(256'h000C0000001100000013000000150000001200000013000000130000000B0000),
    .INIT_17(256'h000000000000FB0000FF030000000A00000004000001F9000002F8000006FD00),
    .INIT_18(256'h0000160000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0002000000050000000B090000E7070000C2D90000F5C7000033020000202F00),
    .INIT_1A(256'h00F0000000F400000000000000080000000D0000000C00000004000000010000),
    .INIT_1B(256'h000000000000040000FF030000FDFE0000FCFB0000FCFE0000F8000000F20000),
    .INIT_1C(256'h0000E70000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h00F5000000FA0000000C0500002B1C00002E320000FF210000CFEE0000E0D200),
    .INIT_1E(256'h001D00000026000000210000000D000000FA000000F4000000F6000000F50000),
    .INIT_1F(256'h000000000000FF000000030000010800000303000005FE000008FE000010FF00),
    .INIT_20(256'h0000040000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h00F7000000F3000000F1FD0000FEFE00000A0900000806000004030000010500),
    .INIT_22(256'h0011000000120000000C00000008000000050000000500000002000000FB0000),
    .INIT_23(256'h000000000000FD000000FE000001FF000002FC000003F8000008FA00000FFE00),
    .INIT_24(256'h0000E70000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h00060000000200000001FA000021060000352B00000D310000D5010000DBD300),
    .INIT_26(256'h00080000000B0000000600000002000000F9000000FB00000004000000080000),
    .INIT_27(256'h000000000000FE0000000100000107000001090000020400000000000002FF00),
    .INIT_28(256'h0000F50000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0016000000120000000AFE000009FF0000180F0000111C0000F20D0000F2F100),
    .INIT_2A(256'h00F9000000FD000000FD000000FD000000FE000000030000000D000000150000),
    .INIT_2B(256'h000000000000FE0000FFFE0000FF020000FE060000FD050000FA020000F80000),
    .INIT_2C(256'h0000010000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h000900000004000000FAFF0000FBFB000008FF00000907000000060000FF0200),
    .INIT_2E(256'h00FA000000F5000000F3000000F8000000020000000B000000100000000E0000),
    .INIT_2F(256'h000000000000000000FF020000FF02000000010000FE000000FCFF0000FDFF00),
    .INIT_30(256'h0000040000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h00120000000D00000005FF000005FC00000C010000130D000016160000091000),
    .INIT_32(256'h00F0000000FB0000000B00000016000000160000001400000014000000130000),
    .INIT_33(256'h000000000000010000FF020000FD020000FD020000FD040000F9030000F10100),
    .INIT_34(256'h0000080000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h00FF000000FB0000000B0600001B14000028210000262A000013210000071300),
    .INIT_36(256'h00080000001D00000036000000480000004C000000410000002B000000110000),
    .INIT_37(256'h000000000000FF000000FD0000FEFC0000FEFA0000FFFA0000FEFC0000FEFF00),
    .INIT_38(256'h0000EE0000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h00FC000000FC000000090500001917000015270000F2100000D2E50000E4D400),
    .INIT_3A(256'h00070000000800000000000000FA000000FA000000FE00000001000000010000),
    .INIT_3B(256'h000000000000000000FF030000000900000007000000FF000002FC000007FE00),
    .INIT_3C(256'h0000D50000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h00D9000000DC000000040D00005531000060600000D937000085BF0000C89900),
    .INIT_3E(256'h001D00000033000000300000001A00000003000000FC000000F9000000EA0000),
    .INIT_3F(256'h000000000000070000FD100000FE10000002FE0000FFF80000F7FB0000040000),
    .INIT_40(256'h0000E70000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h00190000001A0000003E100000533700002D420000F0250000CAEE0000E1CE00),
    .INIT_42(256'h00170000000C000000FC000000F2000000F90000000B000000170000001D0000),
    .INIT_43(256'h0000000000000300000107000003080000020800000309000009050000130100),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h00F6000000F2000000EDFD0000F2F60000F5F70000F0F60000F7F1000000FB00),
    .INIT_46(256'h00F5000000F6000000F7000000F7000000FA000000FC000000FD000000FA0000),
    .INIT_47(256'h000000000000000000FFFF0000FEFC0000FEFA0000FCFA0000F9FC0000F7FF00),
    .INIT_48(256'h0000070000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h00E600000001000000230900001C190000EE0B0000E5EB000004EE00000C0500),
    .INIT_4A(256'h00210000002B0000002800000017000000FC000000E6000000D6000000D60000),
    .INIT_4B(256'h000000000000FF000000FA000001F9000002FB0000040100000A020000150100),
    .INIT_4C(256'h0000FD0000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h001600000007000000D8EB0000E4CC000034EF000036330000072C0000FC0500),
    .INIT_4E(256'h00F3000000F8000000FB000000FC000000F9000000FB0000000C000000160000),
    .INIT_4F(256'h000000000000FE0000FEFE0000FE0000000103000000040000F7030000F00100),
    .INIT_50(256'h0000EC0000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h00FE000000F6000000070B00001F1C000025290000091F0000DDFC0000E5DD00),
    .INIT_52(256'h000100000016000000210000001F0000001A00000018000000130000000B0000),
    .INIT_53(256'h000000000000060000FD0A0000FC0B0000FD040000FAFE0000F3FD0000F5FF00),
    .INIT_54(256'h0000FD0000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h00000000000E000000130100000A030000FC030000F8FC0000FEF9000001FD00),
    .INIT_56(256'h00210000001F0000000A000000EA000000D7000000D2000000DB000000EE0000),
    .INIT_57(256'h000000000000FE0000FFFB000001FE0000020200000206000006040000160100),
    .INIT_58(256'h0000090000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0005000000F6000000D8F30000D6DD0000FCDF000021020000272200000E1E00),
    .INIT_5A(256'h00DC000000E6000000FE000000180000002000000019000000120000000D0000),
    .INIT_5B(256'h000000000000FF0000FE010000FD000000FBFF0000FBFE0000F4FF0000E6FF00),
    .INIT_5C(256'h00000A0000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h005E0000004000000015010000F6F90000FAF2000009020000130E00000F1300),
    .INIT_5E(256'h00C6000000AD000000A6000000BE000000F00000002700000054000000670000),
    .INIT_5F(256'h000000000000050000000B0000FE100000FC100000F90D0000F3060000E10100),
    .INIT_60(256'h0000050000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0004000000FD000000E9F70000F4EB000019000000231D0000131D0000030F00),
    .INIT_62(256'h00FB00000005000000140000001A00000016000000130000000C000000050000),
    .INIT_63(256'h000000000000FD0000FEFD0000FE000000FF020000FF000000F9FF0000F8FF00),
    .INIT_64(256'h0000FD0000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h00F5000000F5000000F8FF00000203000000080000F8FB0000FAF50000FDFC00),
    .INIT_66(256'h00110000001300000009000000FB000000F6000000F2000000F2000000F30000),
    .INIT_67(256'h000000000000FF0000FF0000000001000000FF0000FFFD000002FD00000BFF00),
    .INIT_68(256'h0000030000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h00180000001C00000016F90000200400002A1F0000262B000019260000061200),
    .INIT_6A(256'h001900000024000000260000001F0000000E000000080000000B0000000F0000),
    .INIT_6B(256'h000000000000F9000000F9000000FE00000105000003070000060400000B0100),
    .INIT_6C(256'h0000FF0000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h001400000011000000170400001B120000151800000F0F0000040D0000FD0300),
    .INIT_6E(256'h00120000000D0000000300000002000000060000001200000015000000140000),
    .INIT_6F(256'h000000000000FE000000000000020200000303000004020000080100000F0000),
    .INIT_70(256'h0000FB0000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h00100000000B000000FDFC0000FCFA0000010300000303000000FF0000FBFC00),
    .INIT_72(256'h00FA000000F8000000F6000000F1000000F2000000F7000000020000000A0000),
    .INIT_73(256'h000000000000FE0000FF010000FF060000FF080000FE040000FE000000FEFF00),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h00CA000000DD000000FD0300000B0B00000A0D00000909000001040000FE0000),
    .INIT_76(256'h003300000041000000440000003300000013000000EF000000D1000000C50000),
    .INIT_77(256'h000000000000FC000000F8000001F4000003F6000006F700000EFB00001EFE00),
    .INIT_78(256'h0000040000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h00120000000B0000000F040000140C000016150000131600000E130000070E00),
    .INIT_7A(256'h00F900000007000000140000001F0000002900000029000000240000001D0000),
    .INIT_7B(256'h000000000000010000FE010000FD010000FD010000FB010000F6000000F50000),
    .INIT_7C(256'h0000F80000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h00FE0000000100000000FE0000FFFE00000306000005070000F9040000F5F800),
    .INIT_7E(256'h0000000000040000000500000001000000FB000000FA000000FA000000FB0000),
    .INIT_7F(256'h000000000000FC0000FFFB0000FEFD0000FE000000FD000000FC000000FE0000),
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
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb[7:0]}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,dinb[8]}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta[7:0]}),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],doutb[7:0]}),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],douta[8]}),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],doutb[8]}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
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
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web,web,web}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized5
   (douta,
    doutb,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [8:0]douta;
  output [8:0]doutb;
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [8:0]dina;
  input [8:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [8:0]dinb;
  wire [8:0]douta;
  wire [8:0]doutb;
  wire [0:0]wea;
  wire [0:0]web;
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
    .INITP_00(256'h04000000004044404C46C444200000000044404444000400C8C44A0420000000),
    .INITP_01(256'h00400400404000400466244E00000000004044040444404C488A86A420000000),
    .INITP_02(256'h0444040000400080040A0E04200000000444044404044088844CAA8A20000000),
    .INITP_03(256'h0440000440444408C4260282000000000440400000000484084E864000000000),
    .INITP_04(256'h004404440444440084C6EEE62000000004000400440404444CACE0C020000000),
    .INITP_05(256'h00004404000004CC48E2A0A60000000004000400444440CC4CE6C0CC00000000),
    .INITP_06(256'h0044440044404408844646662000000000400440004404C440C4EAEA00000000),
    .INITP_07(256'h0044000044000404802E44682000000000000404444440800060086A00000000),
    .INITP_08(256'h004404440400008888ECC8E8200000000040444040404400CC640C0A00000000),
    .INITP_09(256'h00440400040404844402A00000000000040044440000400CC4E8E82A00000000),
    .INITP_0A(256'h044444440440408080AAEEA20000000000440000400400080C88A0C200000000),
    .INITP_0B(256'h0404400440000448C848662E20000000004400004004448440E8CECE00000000),
    .INITP_0C(256'h000440044400448880CE82CA2000000004444400444400CCCCCEA86400000000),
    .INITP_0D(256'h044004400044004C84AC8682000000000004040000400404002EAAE600000000),
    .INITP_0E(256'h0040400004004408CC60E2EC0000000004400000440440888044A80400000000),
    .INITP_0F(256'h00444000440040880C2EECE200000000004440040404048404C6026E00000000),
    .INIT_00(256'h0000080000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h8084000080030000817EFE0082F7FB0082F3F2000284720001980400008D9200),
    .INIT_02(256'h0004000000010000008100000000000000000000008000000001000080020000),
    .INIT_03(256'h0000000000800000000100000082000000840000008700000089000000870000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h807C000080FE00008001FF00FE02FF00FCFF8000FDFC8300FE7B8100FF7F7F00),
    .INIT_06(256'h007B000000FB000000FE0000008000000000000000FD0000007B000080FB0000),
    .INIT_07(256'h00000000008000000082000000020000007F000000FD000000FE000000FE0000),
    .INIT_08(256'h0000860000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h008F0000800800007FFDFE00FFF77900FF89F9007C170B007B8A18007E019100),
    .INIT_0A(256'h0074000000F200000073000000FD0000008C0000009400000096000080940000),
    .INIT_0B(256'h00000000000000000080000000FF000000010000007F000000F8000000760000),
    .INIT_0C(256'h00007D0000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h00F0000000F8000001838000808502008181010082817E00817F7B00807F7B00),
    .INIT_0E(256'h009A0000009B000000940000008400000074000000E9000000E6000080EA0000),
    .INIT_0F(256'h000000000000000000020000000300000005000000090000008F000000160000),
    .INIT_10(256'h00007A0000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h80FD000082F90000827B7D007E7AF8007B8078007E06890001008B0000FCFD00),
    .INIT_12(256'h0072000000F00000007B000000860000008A0000008700000084000080820000),
    .INIT_13(256'h00000000000000000085000000050000007F0000007D000000020000007D0000),
    .INIT_14(256'h0000FB0000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h7F78000000F5000080757C008186F90081970800810E910080FF8700FF7BFB00),
    .INIT_16(256'h0088000000090000008B0000000D0000000D0000000500008000000000FD0000),
    .INIT_17(256'h0000000000FF000000FF00000001000000030000008600000088000000090000),
    .INIT_18(256'h0000090000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h7F000000FE830000FC0604007D728700805F750084F9E5000399FA0001109000),
    .INIT_1A(256'h00FE000000010000000400000005000000860000008600008081000000FE0000),
    .INIT_1B(256'h0000000000FF0000007D000000F800000077000000FA0000007F000000FF0000),
    .INIT_1C(256'h0000760000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h007C000080FE0000828A810083978A0083961300817F8B007E67F600FF70E900),
    .INIT_1E(256'h00920000008F00000083000000FA000000F7000000780000007C000000FE0000),
    .INIT_1F(256'h0000000000800000000100000085000000890000008C0000008B0000008E0000),
    .INIT_20(256'h0000FF0000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0079000080F9000082FCFE0002837D008185FF008102810080827F008080FF00),
    .INIT_22(256'h008800000004000000030000008400000082000000FE0000007B000080790000),
    .INIT_23(256'h000000000000000000010000008400000086000000880000000B0000008A0000),
    .INIT_24(256'h0000F60000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h80020000007E000001FFFE0001110000009B11007D8816007C6B8300FEEDF100),
    .INIT_26(256'h00020000008400000080000000FC000000FE0000000000000084000080050000),
    .INIT_27(256'h000000000080000000000000000300000084000000830000007D000000FF0000),
    .INIT_28(256'h00007D0000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h7F0600007F8200007E8080007E8401007E0D87007D0A10007DF90A007F79FE00),
    .INIT_2A(256'h00FD0000007F000000FF0000007F00000003000000070000808A0000000A0000),
    .INIT_2B(256'h00000000007F000000FE000000FD000000FC000000FA00000077000000F90000),
    .INIT_2C(256'h0000800000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'hFF8100007FFF00007F7C7F0000FD7E000004FF00FE058200FE000400FFFF0300),
    .INIT_2E(256'h0079000000FB000000FE00000005000000880000000700008005000000830000),
    .INIT_2F(256'h00000000007F000000FE000000FE00000000000000FF0000007D000000790000),
    .INIT_30(256'h0000010000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'hFF8600007E0300007D807F00FD8081008004060082098800010B860080840500),
    .INIT_32(256'h0081000000890000000E0000000C000000090000008900008089000080880000),
    .INIT_33(256'h00000000007F0000007D000000FA000000F80000007B000000FC0000007C0000),
    .INIT_34(256'h0000820000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h007A00007F7E0000FE8A02007E100C0080149300809214007F090E007F830800),
    .INIT_36(256'h0015000000A1000000260000002100000095000000090000007E000000FA0000),
    .INIT_37(256'h00000000000000000000000000FD000000FE0000008000000002000000080000),
    .INIT_38(256'h0000F70000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'hFF7C0000807D00000007010000910900FF8C0F00FEF80A00FE697700FF72EC00),
    .INIT_3A(256'h008200000080000000FE0000007C000000FE0000007F00008000000000800000),
    .INIT_3B(256'h00000000007F0000008000000082000000810000000100000081000000020000),
    .INIT_3C(256'h00006F0000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h7F7200007D7D0000FE10860005AD9A0005AD2C007EEC16007CC35F00FE645000),
    .INIT_3E(256'h001C0000009B0000008B0000007C00000073000000F100008073000080F30000),
    .INIT_3F(256'h00000000007F0000007A000000FE0000008800000088000000820000008B0000),
    .INIT_40(256'h0000F90000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h00080000820900000319850081A614007C181C0079FB1400FAE60100FEF07400),
    .INIT_42(256'h00020000007F000000FB000000FF000000840000008B0000808E0000000C0000),
    .INIT_43(256'h000000000000000000050000008900000008000000820000007E000000010000),
    .INIT_44(256'h00007F0000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'hFF7A0000FF7B00007E7A7F007E7B7E007E7BFE00FF77FC0080FB7A000000FC00),
    .INIT_46(256'h007C000000FB0000007C000000FE0000007D000000FD000080FB000000FA0000),
    .INIT_47(256'h00000000007F000000FD000000FC0000007B00000079000000F90000007A0000),
    .INIT_48(256'h0000830000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000081850000828F0400820A0B0001F5820002F2F1008102F20000067F00),
    .INIT_4A(256'h00180000009000000002000000F20000006B000000ED000000F3000000FA0000),
    .INIT_4B(256'h0000000000800000008200000086000000860000008A00000010000000160000),
    .INIT_4C(256'h0000020000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h7F8600007E7E0000FEE7F800026EE9008498F600809C92007D841100FF7E8600),
    .INIT_4E(256'h00F90000007E0000007E0000008100000005000000070000008A000080090000),
    .INIT_4F(256'h0000000000FF000000FB0000007B000000030000000300000079000000750000),
    .INIT_50(256'h0000F60000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'hFFFB0000FD7F00007B0A8500FE9313008093170000840F007F6EFE007FF26F00),
    .INIT_52(256'h008F00000093000000910000008C0000008700000005000080810000807D0000),
    .INIT_53(256'h0000000000FF000000FA00000079000000FA0000007C0000007C000000820000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'hFF8600007F860000018380000300000082FDF90081FC7500007FFB0000807F00),
    .INIT_56(256'h000D000000FD000000ED000000E90000006D000000F70000807F000000850000),
    .INIT_57(256'h0000000000FF0000000000000004000000880000008A0000000E000000910000),
    .INIT_58(256'h0000800000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'hFFFE00007EFB0000FCEF7C00FCEC730080FDF700850E850084120A0001078500),
    .INIT_5A(256'h00F70000008400000091000000930000000C0000000500000082000000000000),
    .INIT_5B(256'h0000000000FF000000FB00000076000000F3000000F700000079000000F60000),
    .INIT_5C(256'h0000890000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h009500007F880000FD7E7F00FAF8FD00F880000079870D00FC8A14007F879400),
    .INIT_5E(256'h00D2000000570000006C0000000D00000026000000320000002F000000A20000),
    .INIT_5F(256'h0000000000800000007F00000079000000F2000000EA00000061000000570000),
    .INIT_60(256'h0000800000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'hFF7F00007E7C00007E75FC00807B7800828C0000811109007F090B007F810500),
    .INIT_62(256'h00050000008B0000000D0000008C000000890000000300000001000000810000),
    .INIT_63(256'h00000000007F000000FC0000007D000000FF000000010000007F000000000000),
    .INIT_64(256'h0000FE0000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'hFFFB0000FFFD000000FF80000102010001000000807B7C00017CFB0000FEFB00),
    .INIT_66(256'h008800000001000000FB0000007A000000790000007A0000807A0000807A0000),
    .INIT_67(256'h0000000000FF0000007F000000810000008300000004000000880000000A0000),
    .INIT_68(256'h0000040000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h008A0000010500000103FE00000CFF0001940B0000149200FF0D90007F030C00),
    .INIT_6A(256'h0091000000120000008B0000008300000084000000050000008A0000800C0000),
    .INIT_6B(256'h00000000000000000082000000830000000400000087000000080000000E0000),
    .INIT_6C(256'h0000800000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h808400008183000083880100830B0500018A85007F888500FE0286007FFE8500),
    .INIT_6E(256'h00850000008100000002000000050000008A0000000A00000089000000870000),
    .INIT_6F(256'h0000000000800000000200000086000000080000000800000087000000870000),
    .INIT_70(256'h00007D0000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h7F040000FF7F0000FFFBFE007FFFFD007F020000800103000080820080FDFE00),
    .INIT_72(256'h00FC00000079000000F8000000FC000000000000008500008007000080070000),
    .INIT_73(256'h00000000007F0000007F000000FF0000007E000000FD000000FE0000007D0000),
    .INIT_74(256'h00007B0000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h80F3000001FB000082048000040602008583FE0004027A008380F800807F7800),
    .INIT_76(256'h00A40000001F000000910000007D0000006D000000E4000000E4000000EB0000),
    .INIT_77(256'h00000000000000000002000000860000008C000000120000001C000000A20000),
    .INIT_78(256'h0000830000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h7F820000FE030000FD868300FE098A007E8B0D007F0A8D00FF878A0080830700),
    .INIT_7A(256'h00870000008D0000009300000013000000910000000E00000088000000040000),
    .INIT_7B(256'h0000000000FF000000FC0000007A000000FA00000079000000FA0000007E0000),
    .INIT_7C(256'h0000FD0000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h7F000000FF0000007E7FFF00FE808000FF828200FF030300FF7C8200FFFA7D00),
    .INIT_7E(256'h000200000082000000FF0000007C000000FC000000FC0000807E000000000000),
    .INIT_7F(256'h0000000000FF0000007E0000007D0000007C000000FD0000007E0000007F0000),
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
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb[7:0]}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,dinb[8]}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta[7:0]}),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],doutb[7:0]}),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],douta[8]}),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],doutb[8]}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
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
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web,web,web}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized6
   (douta,
    doutb,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [5:0]douta;
  output [5:0]doutb;
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [5:0]dina;
  input [5:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_45 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_46 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_77 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_78 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 ;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [5:0]dina;
  wire [5:0]dinb;
  wire [5:0]douta;
  wire [5:0]doutb;
  wire [0:0]wea;
  wire [0:0]web;
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
    .INIT_00(256'h0000030000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000001000000023E3F00033B3D0004393A0004023800030C000001060600),
    .INIT_02(256'h00000000003F0000003F00000001000000020000000200000002000000010000),
    .INIT_03(256'h0000000000000000000100000001000000020000000500000005000000030000),
    .INIT_04(256'h00003F0000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h003F0000003F000000003F003E003D003B3F3E003C3D01003E3D00003F3F3F00),
    .INIT_06(256'h003F0000003F00000000000000000000003E0000003D0000003E0000003F0000),
    .INIT_07(256'h0000000000000000000200000002000000010000003F0000003E0000003E0000),
    .INIT_08(256'h0000030000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h000100003F0000003F3D3F003E3B3C003C043C003B0B04003A050B003D000A00),
    .INIT_0A(256'h00380000003B00000003000000090000000C0000000A0000000600003F030000),
    .INIT_0B(256'h0000000000000000003F00000000000000000000003D0000003A000000380000),
    .INIT_0C(256'h00003D0000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h013E0000023F000004013F0005013E0005003C00053F3A00033F3900003F3900),
    .INIT_0E(256'h000C000000060000003D000000370000003400000035000000380000003C0000),
    .INIT_0F(256'h00000000000100000002000000060000000A0000000D00000010000000110000),
    .INIT_10(256'h00003C0000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h013E0000023E0000003F3E003C3D3A003B3F3D003E03060001000600013E3C00),
    .INIT_12(256'h003A000000000000000500000006000000020000003F0000003E0000003E0000),
    .INIT_13(256'h00000000000200000004000000000000003D0000003E0000003C000000390000),
    .INIT_14(256'h00003C0000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h003E0000013D0000023C3E0003033B00040B020003060600023F0000003D3A00),
    .INIT_16(256'h0005000000070000000800000006000000000000003D00003F3D0000003D0000),
    .INIT_17(256'h00000000003F0000000000000002000000050000000700000008000000060000),
    .INIT_18(256'h0000030000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h3E0000003C0100003C0202003D39040001303D00053C3500050C3D0002080500),
    .INIT_1A(256'h0002000000010000000100000002000000020000000100003F0000003F3F0000),
    .INIT_1B(256'h00000000003E0000003C0000003A000000390000003D00000002000000030000),
    .INIT_1C(256'h00003D0000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h013F00000300000005050000060B0300040B0700000003003D343B003E383800),
    .INIT_1E(256'h0003000000000000003C000000390000003B0000003D0000003F0000003F0000),
    .INIT_1F(256'h0000000000000000000200000006000000090000000800000005000000050000),
    .INIT_20(256'h00003E0000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h013E0000023E0000033F3E0003013D0002023E000201000001003F0000003E00),
    .INIT_22(256'h00010000000100000002000000000000003E0000003C0000003C0000003D0000),
    .INIT_23(256'h0000000000000000000300000004000000050000000500000006000000040000),
    .INIT_24(256'h00003C0000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h00000000013F0000013F3F00020800003F0D06003C0308003B3501003D363A00),
    .INIT_26(256'h000100000000000000000000003F0000003F0000000000000001000000010000),
    .INIT_27(256'h000000000000000000000000000200000004000000010000003E0000003E0000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h3F0000003E3F00003D3F3F003D0100003C0603003C0507003C3C06003E3C0100),
    .INIT_2A(256'h003E000000000000000100000003000000040000000400003F0200003F010000),
    .INIT_2B(256'h00000000003F0000003F0000003E0000003E0000003C0000003C0000003D0000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h3F3F00003F3F00003F3E3F003F3F3F003F0200003F0202003E0001003F3F0000),
    .INIT_2E(256'h003E000000010000000400000004000000020000000100003F0000003F3F0000),
    .INIT_2F(256'h00000000003F0000003F0000003F0000003E0000003D0000003E0000003D0000),
    .INIT_30(256'h0000010000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h3E0000003D0000003C3E00003E3F010000020300020503000205020000020200),
    .INIT_32(256'h0006000000060000000500000004000000040000000300003F0200003F010000),
    .INIT_33(256'h00000000003F0000003C0000003B0000003D0000003E0000003F000000030000),
    .INIT_34(256'h00003F0000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h3F3F00003F0000003F0401000007040001090700020806000104030000010100),
    .INIT_36(256'h0012000000120000000E00000007000000000000003D0000003D00003F3E0000),
    .INIT_37(256'h0000000000000000003F0000000000000003000000050000000A000000100000),
    .INIT_38(256'h00003C0000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h003F00000100000001040000000903003E0607003D3C06003E343D003E393700),
    .INIT_3A(256'h003F0000003F0000003F0000003E0000003D0000003E00003F3F0000003F0000),
    .INIT_3B(256'h0000000000000000000200000002000000010000003F0000003F0000003F0000),
    .INIT_3C(256'h00003B0000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h3E3F0000000100000308020006160B00051612003D360700392131003C322F00),
    .INIT_3E(256'h0009000000050000003C00000034000000340000003700003F3C00003F3D0000),
    .INIT_3F(256'h00000000003D0000003E000000050000000A0000000600000004000000070000),
    .INIT_40(256'h00003F0000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0201000003020000040B010000120700390C0B00353D0900373304003C383F00),
    .INIT_42(256'h003E000000010000000100000002000000040000000400000004000001030000),
    .INIT_43(256'h0000000000020000000500000008000000050000003F0000003A0000003C0000),
    .INIT_44(256'h00003F0000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h3E3F00003D3F00003D3D3F003D3D3F003E3D3F003E3C3E003F3D3E0000003F00),
    .INIT_46(256'h003E0000003E0000003E0000003E0000003E0000003D00003F3D00003F3E0000),
    .INIT_47(256'h00000000003F0000003D0000003D0000003D0000003C0000003C0000003D0000),
    .INIT_48(256'h0000010000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h01000000030100000406010004050300033A3D00023937000201380000033F00),
    .INIT_4A(256'h00060000003C0000003600000035000000390000003E00000000000000000000),
    .INIT_4B(256'h000000000000000000040000000600000007000000080000000B0000000B0000),
    .INIT_4C(256'h0000020000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h3F0000003E3D00003F333D0003373800040C3C00010E05003D0206003E3F0400),
    .INIT_4E(256'h003D000000000000000300000004000000050000000400003F0300003F010000),
    .INIT_4F(256'h00000000003E0000003A0000003C00000001000000000000003D0000003B0000),
    .INIT_50(256'h00003C0000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h3D3F00003C0000003D0502003F09080001090900000205003E373E003F393900),
    .INIT_52(256'h00090000000900000005000000000000003F0000003E00003F3E00003E3F0000),
    .INIT_53(256'h00000000003D0000003C0000003E000000010000000200000004000000070000),
    .INIT_54(256'h0000010000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h000100000300000005003F0005003D00033E3900003E3A003F003E0000000100),
    .INIT_56(256'h003A0000003400000034000000390000003F0000000200003F03000000020000),
    .INIT_57(256'h00000000003F0000000300000007000000070000000700000006000000010000),
    .INIT_58(256'h00003F0000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h3D3F00003B3E000039373E003C363D00023E3F00060703000609030002033F00),
    .INIT_5A(256'h0005000000080000000800000005000000010000003F00003F3F00003F3F0000),
    .INIT_5B(256'h00000000003E0000003900000035000000370000003C0000003F000000000000),
    .INIT_5C(256'h0000040000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h3E0100003B000000373E0000333C0100333F050036030B003A050E003E030C00),
    .INIT_5E(256'h00300000003F0000000E0000001700000018000000110000000900003F040000),
    .INIT_5F(256'h00000000003F0000003C000000350000002F0000002A00000027000000280000),
    .INIT_60(256'h00003F0000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h3E3F00003E3E00003F3A3F00013D3D0003063F00030803000204020000000000),
    .INIT_62(256'h0006000000050000000600000003000000010000000000003F3F00003F3F0000),
    .INIT_63(256'h00000000003E0000003C0000003E000000000000000200000005000000060000),
    .INIT_64(256'h00003E0000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h3F3F0000013F0000023F3F0002013E0002003E00013E3D00003E3D00003F3D00),
    .INIT_66(256'h003E0000003D0000003D0000003D0000003D0000003D00003F3E00003F3F0000),
    .INIT_67(256'h00000000003F0000000200000003000000030000000500000005000000020000),
    .INIT_68(256'h0000020000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h010100000200000003003E0003053D00010A0100000A05003F0606003F010500),
    .INIT_6A(256'h0007000000030000000200000004000000050000000500000004000000020000),
    .INIT_6B(256'h0000000000010000000200000004000000080000000700000008000000090000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h01000000030000000304000002060200000503003F0303003E0104003F3F0100),
    .INIT_6E(256'h0000000000020000000400000005000000040000000300000001000000000000),
    .INIT_6F(256'h0000000000000000000300000004000000040000000200000002000000010000),
    .INIT_70(256'h00003F0000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h3F0000003F3F00003F3D3F003F3F3E003F0100003F01020000000200003E0000),
    .INIT_72(256'h003B0000003D0000003F00000001000000030000000300003F0200003F010000),
    .INIT_73(256'h00000000003F0000003F0000003F0000003E0000003E0000003D0000003D0000),
    .INIT_74(256'h00003D0000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h013E0000043F000008023F000A033E0009013A0008013800043F3800013F3900),
    .INIT_76(256'h000C00000003000000390000003400000032000000350000003A0000003D0000),
    .INIT_77(256'h000000000001000000040000000A0000000E0000001300000015000000130000),
    .INIT_78(256'h0000010000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h3E0000003D0000003C0201003D0404003F0506003F0504003F0304003F010300),
    .INIT_7A(256'h00080000000A0000000900000007000000050000000200003F0100003F000000),
    .INIT_7B(256'h00000000003E0000003D0000003D0000003D0000003F00000002000000050000),
    .INIT_7C(256'h00003F0000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h3F0000003E3F00003F3F3F003E3F3E003E003F003E0101003E3E01003F3D3F00),
    .INIT_7E(256'h003F0000003E0000003E0000003E0000003E0000003F00003F0000003F000000),
    .INIT_7F(256'h00000000003F0000003F00000000000000000000000000000000000000010000),
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
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_45 ,\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_46 ,douta}),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_77 ,\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_78 ,doutb}),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
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
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web,web,web}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top
   (douta,
    doutb,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [63:0]douta;
  output [63:0]doutb;
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [63:0]dina;
  input [63:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [63:0]dina;
  wire [63:0]dinb;
  wire [63:0]douta;
  wire [63:0]doutb;
  wire [0:0]wea;
  wire [0:0]web;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .wea(wea),
        .web(web));
endmodule

(* C_ADDRA_WIDTH = "12" *) (* C_ADDRB_WIDTH = "12" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "1" *) 
(* C_COUNT_36K_BRAM = "7" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     38.292 mW" *) 
(* C_FAMILY = "zynq" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "BRAM32k.mem" *) 
(* C_INIT_FILE_NAME = "BRAM32k.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "2" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "4096" *) (* C_READ_DEPTH_B = "4096" *) (* C_READ_WIDTH_A = "64" *) 
(* C_READ_WIDTH_B = "64" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_USE_DEFAULT_DATA = "0" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) 
(* C_WRITE_DEPTH_A = "4096" *) (* C_WRITE_DEPTH_B = "4096" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
(* C_WRITE_MODE_B = "WRITE_FIRST" *) (* C_WRITE_WIDTH_A = "64" *) (* C_WRITE_WIDTH_B = "64" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1
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
  input [11:0]addra;
  input [63:0]dina;
  output [63:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [11:0]addrb;
  input [63:0]dinb;
  output [63:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [11:0]rdaddrecc;
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
  input [63:0]s_axi_wdata;
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
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [11:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [63:0]dina;
  wire [63:0]dinb;
  wire [63:0]douta;
  wire [63:0]doutb;
  wire [0:0]wea;
  wire [0:0]web;

  assign dbiterr = \<const0> ;
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1_synth inst_blk_mem_gen
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .wea(wea),
        .web(web));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1_synth
   (douta,
    doutb,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [63:0]douta;
  output [63:0]doutb;
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [63:0]dina;
  input [63:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [63:0]dina;
  wire [63:0]dinb;
  wire [63:0]douta;
  wire [63:0]doutb;
  wire [0:0]wea;
  wire [0:0]web;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .wea(wea),
        .web(web));
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
