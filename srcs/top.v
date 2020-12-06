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
//-------------------------------------------
wire [16:0] addr_weight_1;
wire [16:0] addr_weight_2;
wire [7:0] dout_weight_1;
wire [7:0] dout_weight_2;

weightROM weightRom(
    .addra(addr_weight_1),
    .addrb(addr_weight_2),
    .clka(clk),
    .clkb(clk),
    .douta(dout_weight_1),
    .doutb(dout_weight_2)
);
//-------------------------------------------




//-------------------------------------------





//-------------------------------------------//--------


BRAMa
BRAMb

pe1 PE(
    
);



endmodule