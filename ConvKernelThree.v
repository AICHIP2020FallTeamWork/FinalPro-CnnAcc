module ConvKernelThree(

input       [7:0]       kernel11,
input       [7:0]       kernel12,
input       [7:0]       kernel13,
input       [7:0]       kernel11,
input       [7:0]       kernel22,
input       [7:0]       kernel23,
input       [7:0]       kernel31,
input       [7:0]       kernel32,
input       [7:0]       kernel33,


input       [7:0]       data11,
input       [7:0]       data12,
input       [7:0]       data13,
input       [7:0]       data11,
input       [7:0]       data22,
input       [7:0]       data23,
input       [7:0]       data31,
input       [7:0]       data32,
input       [7:0]       data33,

output      [7:0]       dataout
);


// 8--16--32--64
reg         [18:0]       mult1[9:0];       //25个
reg         [27:0]       plusi;             //29=18+9



//TODO:如何做量化 如何做floor
always @ (*) begin
    plusi[27:0] = 0;

    multi1[18:0][0]  = kernel11[7:0] * ({3'b000,data11[7:0]}<<3); //量化
    multi1[18:0][1]  = kernel12[7:0] * ({3'b000,data11[7:0]}<<3);
    multi1[18:0][2]  = kernel13[7:0] * ({3'b000,data11[7:0]}<<3);
    multi1[18:0][3]  = kernel21[7:0] * ({3'b000,data11[7:0]}<<3);
    multi1[18:0][4]  = kernel22[7:0] * ({3'b000,data11[7:0]}<<3);
    multi1[18:0][5]  = kernel23[7:0] * ({3'b000,data11[7:0]}<<3);
    multi1[18:0][6]  = kernel31[7:0] * ({3'b000,data11[7:0]}<<3);
    multi1[18:0][7]  = kernel32[7:0] * ({3'b000,data11[7:0]}<<3);
    multi1[18:0][8]  = kernel33[7:0] * ({3'b000,data11[7:0]}<<3);

    reg   [4:0]     i;
    for (i=0;i<=8;i=i+1) begin
        plusi[27:0] = plusi[27:0] + multi1[18:0][i];
    end
    dataout=plusi[27:0]>>20;  //量化
end 
endmodule