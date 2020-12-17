module ConvKernelFive(

input       [7:0]       kernel11,
input       [7:0]       kernel12,
input       [7:0]       kernel13,
input       [7:0]       kernel14,
input       [7:0]       kernel15,
input       [7:0]       kernel11,
input       [7:0]       kernel22,
input       [7:0]       kernel23,
input       [7:0]       kernel24,
input       [7:0]       kernel25,
input       [7:0]       kernel31,
input       [7:0]       kernel32,
input       [7:0]       kernel33,
input       [7:0]       kernel34,
input       [7:0]       kernel35,
input       [7:0]       kernel41,
input       [7:0]       kernel42,
input       [7:0]       kernel43,
input       [7:0]       kernel44,
input       [7:0]       kernel45,
input       [7:0]       kernel51,
input       [7:0]       kernel52,
input       [7:0]       kernel53,
input       [7:0]       kernel54,
input       [7:0]       kernel55,

input       [7:0]       data11,
input       [7:0]       data12,
input       [7:0]       data13,
input       [7:0]       data14,
input       [7:0]       data15,
input       [7:0]       data11,
input       [7:0]       data22,
input       [7:0]       data23,
input       [7:0]       data24,
input       [7:0]       data25,
input       [7:0]       data31,
input       [7:0]       data32,
input       [7:0]       data33,
input       [7:0]       data34,
input       [7:0]       data35,
input       [7:0]       data41,
input       [7:0]       data42,
input       [7:0]       data43,
input       [7:0]       data44,
input       [7:0]       data45,
input       [7:0]       data51,
input       [7:0]       data52,
input       [7:0]       data53,
input       [7:0]       data54,
input       [7:0]       data55,
output      [7:0]       dataout
);



8--16--32--64
reg         [15:0]       mult1[24:0];       //25个
reg         [39:0]       plusi;             //39=15+24



//TODO:如何做量化 如何做floor
always @ (*) begin
    plusi[39:0] = 0;
    multi1[15:0][0]  = kernel11[7:0] * data11[7:0];
    multi1[15:0][1]  = kernel12[7:0] * data12[7:0];
    multi1[15:0][2]  = kernel13[7:0] * data13[7:0];
    multi1[15:0][3]  = kernel14[7:0] * data14[7:0];
    multi1[15:0][4]  = kernel15[7:0] * data15[7:0];
    multi1[15:0][5]  = kernel21[7:0] * data21[7:0];
    multi1[15:0][6]  = kernel22[7:0] * data22[7:0];
    multi1[15:0][7]  = kernel23[7:0] * data23[7:0];
    multi1[15:0][8]  = kernel24[7:0] * data24[7:0];
    multi1[15:0][9]  = kernel25[7:0] * data25[7:0];
    multi1[15:0][10] = kernel31[7:0] * data31[7:0];
    multi1[15:0][11] = kernel32[7:0] * data32[7:0];
    multi1[15:0][12] = kernel33[7:0] * data33[7:0];
    multi1[15:0][13] = kernel34[7:0] * data34[7:0];
    multi1[15:0][14] = kernel35[7:0] * data35[7:0];
    multi1[15:0][15] = kernel41[7:0] * data41[7:0];
    multi1[15:0][16] = kernel42[7:0] * data42[7:0];
    multi1[15:0][17] = kernel43[7:0] * data43[7:0];
    multi1[15:0][18] = kernel44[7:0] * data44[7:0];
    multi1[15:0][19] = kernel45[7:0] * data45[7:0];
    multi1[15:0][20] = kernel51[7:0] * data51[7:0];
    multi1[15:0][21] = kernel52[7:0] * data52[7:0];
    multi1[15:0][22] = kernel53[7:0] * data53[7:0];
    multi1[15:0][23] = kernel54[7:0] * data54[7:0];
    multi1[15:0][24] = kernel55[7:0] * data55[7:0];

    reg   [4:0]     i;
    for (i=0;i<=24;i=i+1) begin
        plusi[39:0] = plusi[39:0] + multi1[15:0][i];
    end
    dataout=plusi[39:0]>>32;
end 
endmodule