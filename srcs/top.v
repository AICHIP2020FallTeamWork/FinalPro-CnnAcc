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
    .clock_in1(clock50MHz),
    .clock_out1(clk),
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
reg we_BRAM32k;
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


pe1 PE(
    
);



endmodule