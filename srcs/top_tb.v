module top_tb;
reg                                    clk;        //���������ź�
reg                                    rst;        //���������ź�
always  #10000 clk = ~clk; //20ns 20000ps 
initial begin
    clk =1;
    rst = 0;
    #100000
    rst = 1;

end
top top_(
    .rst(rst),
    .clk50MHz(clk)
);

endmodule