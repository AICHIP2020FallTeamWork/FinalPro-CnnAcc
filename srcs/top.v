module top(
    rst,
    clk50MHz,
    led
);

output reg led;
input rst;
input clk50MHz;

//-------------------------------------------
always @ * begin
    led = 1;
end

//-------------------------------------------
wire        clk;
wire        locked;
wire        rst_n = ~rst;
clk_wiz_0 clk0(
    .reset(rst_n),
    .clk_in1(clk50MHz),
    .clk_out1(clk),
    .locked(locked)
);
//------------------------------------------------------
//    wire [13:0] addr_weight_1;
//    wire [13:0] addr_weight_2;
//    wire [71:0] dout_weight_1;
//    wire [71:0] dout_weight_2;

//    weightROM weightRom(
//        .addra(addr_weight_1),
//        .addrb(addr_weight_2),
//        .clka(clk),
//        .clkb(clk),
//        .douta(dout_weight_1),
//        .doutb(dout_weight_2)
//    );
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
    wire [9:0] addr_BRAM4k_1;
    wire [9:0] addr_BRAM4k_2;
    wire [63:0] din_BRAM4k_1;
    wire [63:0] din_BRAM4k_2;
    wire [63:0] dout_BRAM4k_1;
    wire [63:0] dout_BRAM4k_2;
    BRAM8K bram4k(
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
   wire we_BRAMConv2Arr1_1;
   wire we_BRAMConv2Arr1_2;
   wire [9:0] addr_BRAMConv2Arr1_1;
   wire [9:0] addr_BRAMConv2Arr1_2;
   wire [63:0] din_BRAMConv2Arr1_1;
   wire [63:0] din_BRAMConv2Arr1_2;
   wire [63:0] dout_BRAMConv2Arr1_1;
   wire [63:0] dout_BRAMConv2Arr1_2;
   BRAM8K BRAMConv2Arr1(
       .addra(addr_BRAMConv2Arr1_1),
       .addrb(addr_BRAMConv2Arr1_2),
       .clka(clk),
       .clkb(clk),
       .dina(din_BRAMConv2Arr1_1),
       .dinb(din_BRAMConv2Arr1_2),
       .douta(dout_BRAMConv2Arr1_1),
       .doutb(dout_BRAMConv2Arr1_2),
       .wea(we_BRAMConv2Arr1_1),
       .web(we_BRAMConv2Arr1_2)
   );
//-------------------------------------------//--------
   wire we_BRAMConv2Arr2_1;
   wire we_BRAMConv2Arr2_2;
   wire [9:0] addr_BRAMConv2Arr2_1;
   wire [9:0] addr_BRAMConv2Arr2_2;
   wire [63:0] din_BRAMConv2Arr2_1;
   wire [63:0] din_BRAMConv2Arr2_2;
   wire [63:0] dout_BRAMConv2Arr2_1;
   wire [63:0] dout_BRAMConv2Arr2_2;
   BRAM8K BRAMConv2Arr2(
       .addra(addr_BRAMConv2Arr2_1),
       .addrb(addr_BRAMConv2Arr2_2),
       .clka(clk),
       .clkb(clk),
       .dina(din_BRAMConv2Arr2_1),
       .dinb(din_BRAMConv2Arr2_2),
       .douta(dout_BRAMConv2Arr2_1),
       .doutb(dout_BRAMConv2Arr2_2),
       .wea(we_BRAMConv2Arr2_1),
       .web(we_BRAMConv2Arr2_2)
   );

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
    // .weight_en(weight_en),
    .locked(locked),
    // .calculate_en(calculate_en),
    // .ofmap_out(ofmap_out),
    .clk(clk),
    // .initializing(initializing),
    
    .addr_wLayer1_1(addr_wLayer1_1),
    .dout_wLayer1_1(dout_wLayer1_1), //�������������ߣ�dout�������BRAM��˵�ģ�
    
    .we_BRAM32k(we_BRAM32k),
    .addr_BRAM32k_1(addr_BRAM32k_1),
    .addr_BRAM32k_2(addr_BRAM32k_2),
    .din_BRAM32k_1(din_BRAM32k_1),
    .din_BRAM32k_2(din_BRAM32k_2),
    .dout_BRAM32k_1(dout_BRAM32k_1),
    .dout_BRAM32k_2(dout_BRAM32k_2),

    //----the double baseram 
    .we_BRAMConv2Arr1_1(we_BRAMConv2Arr1_1),
    .we_BRAMConv2Arr1_2(we_BRAMConv2Arr1_2),
    .addr_BRAMConv2Arr1_1(addr_BRAMConv2Arr1_1),
    .addr_BRAMConv2Arr1_2(addr_BRAMConv2Arr1_2),
    .din_BRAMConv2Arr1_1(din_BRAMConv2Arr1_1),
    .din_BRAMConv2Arr1_2(din_BRAMConv2Arr1_2),
    .dout_BRAMConv2Arr1_1(dout_BRAMConv2Arr1_1),
    .dout_BRAMConv2Arr1_2(dout_BRAMConv2Arr1_2),
//-------------------------------------------//--------
    .we_BRAMConv2Arr2_1(we_BRAMConv2Arr2_1),
    .we_BRAMConv2Arr2_2(we_BRAMConv2Arr2_2),
    .addr_BRAMConv2Arr2_1(addr_BRAMConv2Arr2_1),
    .addr_BRAMConv2Arr2_2(addr_BRAMConv2Arr2_2),
    .din_BRAMConv2Arr2_1(din_BRAMConv2Arr2_1),
    .din_BRAMConv2Arr2_2(din_BRAMConv2Arr2_2),
    .dout_BRAMConv2Arr2_1(dout_BRAMConv2Arr2_1),
    .dout_BRAMConv2Arr2_2(dout_BRAMConv2Arr2_2),

    
    .din_BRAM4k_1(din_BRAM4k_1),
    .din_BRAM4k_2(din_BRAM4k_2),
    .dout_BRAM4k_1(dout_BRAM4k_1),
    .dout_BRAM4k_2(dout_BRAM4k_2),
    .addr_BRAM4k_1(addr_BRAM4k_1),
    .addr_BRAM4k_2(addr_BRAM4k_2)   
);
endmodule