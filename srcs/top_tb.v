module top_tb;

top top_(
    .rst(rst),
    .clk50MHz(clk)
);
reg                                    clk;        //���������ź�
always  #10000 clk = ~clk;
initial clk=1;



endmodule