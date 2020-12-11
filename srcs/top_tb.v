module top_tb;

top top_(
    .rst(rst),
    .clk50MHz(clk)
);
reg                                    clk;        //产生初步信号
always  #10000 clk = ~clk;
initial clk=1;



endmodule