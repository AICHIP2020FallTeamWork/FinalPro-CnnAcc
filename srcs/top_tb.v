module top_tb;

top top_(
    .rst(rst),
    .clk50MHz(clk)
);
reg                                    clk;        //产生初步信号
always  #10000 clk = ~clk;
initial clk=1;


initial file_id = $fopen ( "D:/GradeFour/AICHIP/ref/hw2/inclasspractice/result.txt","w" );
initial $readmemh("D:/GradeFour/AICHIP/ref/hw2/inclasspractice/O.dat",O_mem);


initial begin
    str1[0] = "correct";
    str1[1] = "wrong  ";
    selector = 0;
end
initial begin
    while (counter!=4096) begin
        A = A_mem[counter];
        B = B_mem[counter];
        C = C_mem[counter];
        #100
        if (O_mem[counter]==outi) begin
            selector = 0;
        end
        else begin
            selector = 1;
        end
        counter = counter + 1;          
    end

end

always @ (counter) begin
     $fwrite(file_id,"At time %t,a=%b,b=%b,c=%b,o=%b;We are actually calculating a*b+c=xxx;It is %s.\n",$realtime,A,B,C,outi,str1[selector]);
end



endmodule