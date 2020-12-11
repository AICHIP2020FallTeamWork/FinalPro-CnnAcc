module top(
    rst,
    clk50MHz
);


input rst;
input clk50MHz;

//-------------------------------------------

//-------------------------------------------
wire        clk;
wire        locked;
clk_wiz_0 clk0(
    .reset(rst),
    .clk_in1(clk50MHz),
    .clk_out1(clk),
    .locked(locked)
);
//------------------------------------------------------
    wire [13:0] addr_weight_1;
    wire [13:0] addr_weight_2;
    wire [71:0] dout_weight_1;
    wire [71:0] dout_weight_2;

    weightROM weightRom(
        .addra(addr_weight_1),
        .addrb(addr_weight_2),
        .clka(clk),
        .clkb(clk),
        .douta(dout_weight_1),
        .doutb(dout_weight_2)
    );
//-------------------------------------------
//------------------------------------------------------
    wire [7:0] addr_wLayer1_1;
    wire [39:0] dout_wLayer1_1;

    WLay1ROM wLayer1Rom(
        .addra(addr_wLayer1_1),
        .clka(clk),
        .douta(dout_wLayer1_1)
    );
//-------------------------------------------
    wire we_BRAM32k;
    wire [11:0] addr_BRAM32k_1;
    wire [11:0] addr_BRAM32k_2;
    wire [63:0] din_BRAM32k_1;
    wire [63:0] din_BRAM32k_2;
    wire [63:0] dout_BRAM32k_1;
    wire [63:0] dout_BRAM32k_2;
    BRAM32k bram32k(
        .addra(addr_BRAM32k_1),
        .addrb(addr_BRAM32k_2),
        .clka(clk),
        .clkb(clk),
        .dina(din_BRAM32k_1),
        .dinb(din_BRAM32k_2),
        .douta(dout_BRAM32k_1),
        .doutb(dout_BRAM32k_2),
        .wea(we_BRAM32k),
        .web(we_BRAM32k)
    );
//-------------------------------------------
    reg we_BRAM4k;
    wire [11:0] addr_BRAM4k_1;
    wire [11:0] addr_BRAM4k_2;
    wire [63:0] din_BRAM4k_1;
    wire [63:0] din_BRAM4k_2;
    wire [63:0] dout_BRAM4k_1;
    wire [63:0] dout_BRAM4k_2;
    BRAM4k bram4k(
        .addra(addr_BRAM4k_1),
        .addrb(addr_BRAM4k_2),
        .clka(clk),
        .clkb(clk),
        .dina(din_BRAM4k_1),
        .dinb(din_BRAM4k_2),
        .douta(dout_BRAM4k_1),
        .doutb(dout_BRAM4k_2),
        .wea(we_BRAM4k),
        .web(we_BRAM4k)
    );
//-------------------------------------------//--------
//    reg we_BRAMConv2Arr1;
//    wire [11:0] addr_BRAMConv2Arr1_1;
//    wire [11:0] addr_BRAMConv2Arr1_2;
//    wire [63:0] din_BRAMConv2Arr1_1;
//    wire [63:0] din_BRAMConv2Arr1_2;
//    wire [63:0] dout_BRAMConv2Arr1_1;
//    wire [63:0] dout_BRAMConv2Arr1_2;
//    BRAM4k BRAMConv2Arr1(
//        .addra(addr_BRAMConv2Arr1_1),
//        .addrb(addr_BRAMConv2Arr1_2),
//        .clka(clk),
//        .clkb(clk),
//        .dina(din_BRAMConv2Arr1_1),
//        .dinb(din_BRAMConv2Arr1_2),
//        .douta(dout_BRAMConv2Arr1_1),
//        .doutb(dout_BRAMConv2Arr1_2),
//        .wea(we_BRAMConv2Arr1),
//        .web(we_BRAMConv2Arr1)
//    );
////-------------------------------------------//--------
//    reg we_BRAMConv2Arr2;
//    wire [11:0] addr_BRAMConv2Arr2_1;
//    wire [11:0] addr_BRAMConv2Arr2_2;
//    wire [63:0] din_BRAMConv2Arr2_1;
//    wire [63:0] din_BRAMConv2Arr2_2;
//    wire [63:0] dout_BRAMConv2Arr2_1;
//    wire [63:0] dout_BRAMConv2Arr2_2;
//    BRAM4k BRAMConv2Arr2(
//        .addra(addr_BRAMConv2Arr2_1),
//        .addrb(addr_BRAMConv2Arr2_2),
//        .clka(clk),
//        .clkb(clk),
//        .dina(din_BRAMConv2Arr2_1),
//        .dinb(din_BRAMConv2Arr2_2),
//        .douta(dout_BRAMConv2Arr2_1),
//        .doutb(dout_BRAMConv2Arr2_2),
//        .wea(we_BRAMConv2Arr2),
//        .web(we_BRAMConv2Arr2)
//    );
////-------------------------------------------//--------
//    reg we_BRAMConv3Arr1;
//    wire [11:0] addr_BRAMConv3Arr1_1;
//    wire [11:0] addr_BRAMConv3Arr1_2;
//    wire [63:0] din_BRAMConv3Arr1_1;
//    wire [63:0] din_BRAMConv3Arr1_2;
//    wire [63:0] dout_BRAMConv3Arr1_1;
//    wire [63:0] dout_BRAMConv3Arr1_2;
//    BRAM4k BRAMConv3Arr1(
//        .addra(addr_BRAMConv3Arr1_1),
//        .addrb(addr_BRAMConv3Arr1_2),
//        .clka(clk),
//        .clkb(clk),
//        .dina(din_BRAMConv3Arr1_1),
//        .dinb(din_BRAMConv3Arr1_2),
//        .douta(dout_BRAMConv3Arr1_1),
//        .doutb(dout_BRAMConv3Arr1_2),
//        .wea(we_BRAMConv3Arr1),
//        .web(we_BRAMConv3Arr1)
//    );
////-------------------------------------------//--------
//    reg we_BRAMConv3Arr4;
//    wire [11:0] addr_BRAMConv3Arr4_1;
//    wire [11:0] addr_BRAMConv3Arr4_2;
//    wire [63:0] din_BRAMConv3Arr4_1;
//    wire [63:0] din_BRAMConv3Arr4_2;
//    wire [63:0] dout_BRAMConv3Arr4_1;
//    wire [63:0] dout_BRAMConv3Arr4_2;
//    BRAM4k BRAMConv3Arr2(
//        .addra(addr_BRAMConv3Arr4_1),
//        .addrb(addr_BRAMConv3Arr4_2),
//        .clka(clk),
//        .clkb(clk),
//        .dina(din_BRAMConv3Arr4_1),
//        .dinb(din_BRAMConv3Arr4_2),
//        .douta(dout_BRAMConv3Arr4_1),
//        .doutb(dout_BRAMConv3Arr4_2),
//        .wea(we_BRAMConv3Arr4),
//        .web(we_BRAMConv3Arr4)
//    );

////-------------------------------------------//--------
//    reg we_BRAMConv3Arr3;
//    wire [11:0] addr_BRAMConv3Arr3_1;
//    wire [11:0] addr_BRAMConv3Arr3_2;
//    wire [63:0] din_BRAMConv3Arr3_1;
//    wire [63:0] din_BRAMConv3Arr3_2;
//    wire [63:0] dout_BRAMConv3Arr3_1;
//    wire [63:0] dout_BRAMConv3Arr3_2;
//    BRAM4k BRAMConv3Arr3(
//        .addra(addr_BRAMConv3Arr3_1),
//        .addrb(addr_BRAMConv3Arr3_2),
//        .clka(clk),
//        .clkb(clk),
//        .dina(din_BRAMConv3Arr3_1),
//        .dinb(din_BRAMConv3Arr3_2),
//        .douta(dout_BRAMConv3Arr3_1),
//        .doutb(dout_BRAMConv3Arr3_2),
//        .wea(we_BRAMConv3Arr3),
//        .web(we_BRAMConv3Arr3)
//    );
////-------------------------------------------//--------
//    reg we_BRAMConv3Arr4;
//    wire [11:0] addr_BRAMConv3Arr4_1;
//    wire [11:0] addr_BRAMConv3Arr4_2;
//    wire [63:0] din_BRAMConv3Arr4_1;
//    wire [63:0] din_BRAMConv3Arr4_2;
//    wire [63:0] dout_BRAMConv3Arr4_1;
//    wire [63:0] dout_BRAMConv3Arr4_2;
//    BRAM4k BRAMConv3Arr4(
//        .addra(addr_BRAMConv3Arr4_1),
//        .addrb(addr_BRAMConv3Arr4_2),
//        .clka(clk),
//        .clkb(clk),
//        .dina(din_BRAMConv3Arr4_1),
//        .dinb(din_BRAMConv3Arr4_2),
//        .douta(dout_BRAMConv3Arr4_1),
//        .doutb(dout_BRAMConv3Arr4_2),
//        .wea(we_BRAMConv3Arr4),
//        .web(we_BRAMConv3Arr4)
//    );
//-------------------------------------------//--------
pe1 PE(
    .rst(rst),
    .weight_en(weight_en),
    .locked(locked),
    .calculate_en(calculate_en),
    .dout_BRAM4k_1(dout_BRAM4k_1),
    .ofmap_out(ofmap_out),
    .clk(clk),
    .initializing(initializing),
    .addr_BRAM4k_1(addr_BRAM4k_1),
    .addr_wLayer1_1(addr_wLayer1_1),
    .dout_wLayer1_1(dout_wLayer1_1), //这是数据输入线（dout是相对于BRAM来说的）
    
    .we_BRAM32k(we_BRAM32k),
    .addr_BRAM32k_1(addr_BRAM32k_1),
    .addr_BRAM32k_2(addr_BRAM32k_2),
    .din_BRAM32k_1(din_BRAM32k_1),
    .din_BRAM32k_2(din_BRAM32k_2)
    
);



endmodule