`include "defines.v"

module pe_set(
    // enable updates of ifmap rows and weights
    rst,
    layer,
    weight_en,
    shift_en,
    calculate_en,
    // load weight from BRAM
    weight11_in,
    weight12_in,
    weight13_in,
    weight21_in,
    weight22_in,
    weight23_in,
    weight31_in,
    weight32_in,
    weight33_in,
    weight41_in,
    weight42_in,
    weight43_in,
    weight51_in,
    weight52_in,
    weight53_in,
    weight61_in,
    weight62_in,
    weight63_in,
    weight14_in,
    weight15_in,
    weight24_in,
    weight25_in,
    weight34_in,
    weight35_in,
    weight44_in,
    weight45_in,
    weight54_in,
    weight55_in,
    weight64_in,
    weight65_in,
    weight16_in,
    weight26_in,
    weight36_in,
    weight46_in,
    weight56_in,
    weight66_in,

    // load ifmap, 256-bit continuous, but BRAM has only 64-bit wide
    // ifmap_in1,
    // ifmap_in2,
    // ifmap_in3,
    // ifmap_in4,
    ifmap_in1,
    ifmap_in2,
    ifmap_in3,
    ifmap_in4,
    ofmap_out,
    clk,
    initializing,
);

input                  [3:0]      size;
input                  [3:0]      stride;            

input                             weight_en;
input                             calculate_en;
input                             initialing;
// input        signed    [64:0]     ifmap_in1;
// input        signed    [64:0]     ifmap_in2;
// input        signed    [64:0]     ifmap_in3;
// input        signed    [64:0]     ifmap_in4;
input        signed    [47:0]     ifmap_in1;
input        signed    [47:0]     ifmap_in2;
input        signed    [47:0]     ifmap_in3;
input        signed    [47:0]     ifmap_in4;
input                             clk;
input                  [2:0]      Layer;                    //----修改size[3:0] ->[2:0]
input        signed    [7:0]      weight11_in;
input        signed    [7:0]      weight12_in;
input        signed    [7:0]      weight13_in;
input        signed    [7:0]      weight21_in;
input        signed    [7:0]      weight22_in;
input        signed    [7:0]      weight23_in;
input        signed    [7:0]      weight31_in;
input        signed    [7:0]      weight32_in;
input        signed    [7:0]      weight33_in;
input        signed    [7:0]      weight41_in;
input        signed    [7:0]      weight42_in;
input        signed    [7:0]      weight43_in;
input        signed    [7:0]      weight51_in;
input        signed    [7:0]      weight52_in;
input        signed    [7:0]      weight53_in;
input        signed    [7:0]      weight61_in;
input        signed    [7:0]      weight62_in;
input        signed    [7:0]      weight63_in;
input        signed    [7:0]      weight14_in;
input        signed    [7:0]      weight15_in;
input        signed    [7:0]      weight16_in;
input        signed    [7:0]      weight24_in;
input        signed    [7:0]      weight25_in;
input        signed    [7:0]      weight26_in;
input        signed    [7:0]      weight34_in;
input        signed    [7:0]      weight35_in;
input        signed    [7:0]      weight36_in;
input        signed    [7:0]      weight44_in;
input        signed    [7:0]      weight45_in;
input        signed    [7:0]      weight46_in;
input        signed    [7:0]      weight54_in;
input        signed    [7:0]      weight55_in;
input        signed    [7:0]      weight56_in;
input        signed    [7:0]      weight64_in;
input        signed    [7:0]      weight65_in;
input        signed    [7:0]      weight66_in;

output  reg  signed    [19:0]      ofmap_out;


// reg          signed    [7:0]     weight11;
// reg          signed    [7:0]     weight12;
// reg          signed    [7:0]     weight13;
// reg          signed    [7:0]     weight21;
// reg          signed    [7:0]     weight22;
// reg          signed    [7:0]     weight23;
// reg          signed    [7:0]     weight31;
// reg          signed    [7:0]     weight32;
// reg          signed    [7:0]     weight33;
 

reg          signed    [17:0]    psum11;
reg          signed    [17:0]    psum21;
reg          signed    [17:0]    psum31;
reg          signed    [17:0]    psum12;
reg          signed    [17:0]    psum22;
reg          signed    [17:0]    psum32;
reg          signed    [17:0]    psum41;
reg          signed    [17:0]    psum51;
reg          signed    [17:0]    psum61;
reg          signed    [17:0]    psum42;
reg          signed    [17:0]    psum52;
reg          signed    [17:0]    psum62;

reg                    [7:0]     num;
reg                    [287:0]   ifbuf1;
reg                    [287:0]   ifbuf2;
reg                    [287:0]   ifbuf3;
reg                    [287:0]   ifbuf4;
reg                    [287:0]   ifbuf5;


// always @(posedge weight_en) begin
//     weight11 <= weight11_in;
//     weight12 <= weight12_in;
//     weight13 <= weight13_in;
//     weight21 <= weight21_in;
//     weight22 <= weight22_in;
//     weight23 <= weight23_in;
//     weight31 <= weight31_in;
//     weight32 <= weight32_in;
//     weight33 <= weight33_in;
// end


//---------------------
reg                             Trashdata;
reg     [4:0]                   Row;


always @(posedge clk or negedge rst) begin
if ( rst == `RstEnable ) begin    
    Process         <=          `Init;
    State <= `LIdle;
    Counter <= 0;
end else begin
    //pipeline
    case ( State )
    `Layer1: begin
        case ( Process )
        `Init:begin
            if (Counter != 5'd12)
                Counter <= Counter + 1;
                Process <= `Init;
                ifbuf5[`Byte][24]   <=   8'd0:ifmap_in1[63:56];
                ifbuf5[`Byte][25]   <=   8'd0:ifmap_in1[55:48];
                ifbuf5[`Byte][26]   <=   8'd0:ifmap_in1[47:40];
                ifbuf5[`Byte][27]   <=   8'd0:ifmap_in1[39:32];
                ifbuf5[`Byte][28]   <=   8'd0:ifmap_in1[31:24];
                ifbuf5[`Byte][29]   <=   8'd0:ifmap_in1[23:16];
                ifbuf5[`Byte][30]   <=   8'd0:ifmap_in1[15:8];
                ifbuf5[`Byte][31]   <=   8'd0:ifmap_in1[7:0];
                ifbuf5[`Byte][23:16] <=      ifbuf5[`Byte][31:24];
                ifbuf5[`Byte][15:8]  <=      ifbuf5[`Byte][23:16];
                ifbuf5[`Byte][7:0]   <=      ifbuf5[`Byte][15:8];
                ifbuf4[`Byte][31:24] <=      ifbuf5[`Byte][7:0];
                ifbuf4[`Byte][23:16] <=      ifbuf4[`Byte][31:24];
                ifbuf4[`Byte][15:8]  <=      ifbuf4[`Byte][23:16];
                ifbuf4[`Byte][7:0]   <=      ifbuf4[`Byte][15:8];
                ifbuf3[`Byte][31:24] <=      ifbuf4[`Byte][7:0];
                ifbuf3[`Byte][23:16] <=      ifbuf3[`Byte][31:24];
                ifbuf3[`Byte][15:8]  <=      ifbuf3[`Byte][23:16];
                ifbuf3[`Byte][7:0]   <=      ifbuf3[`Byte][15:8];                            
              else begin
                ifbuf2[`Byte][0]    <=      0;
                ifbuf2[`Byte][1]    <=      0;
                ifbuf2[`Byte][2]    <=      0;
                ifbuf2[`Byte][3]    <=      0;
                ifbuf2[`Byte][4]    <=      0;
                ifbuf2[`Byte][5]    <=      0;
                ifbuf2[`Byte][6]    <=      0;
                ifbuf2[`Byte][7]    <=      0;
                ifbuf2[`Byte][8]    <=      0;
                ifbuf2[`Byte][9]    <=      0;
                ifbuf2[`Byte][10]   <=      0;
                ifbuf2[`Byte][11]   <=      0;
                ifbuf2[`Byte][12]   <=      0;
                ifbuf2[`Byte][13]   <=      0;
                ifbuf2[`Byte][14]   <=      0;
                ifbuf2[`Byte][15]   <=      0;
                ifbuf2[`Byte][16]   <=      0;
                ifbuf2[`Byte][17]   <=      0;
                ifbuf2[`Byte][18]   <=      0;
                ifbuf2[`Byte][19]   <=      0;
                ifbuf2[`Byte][20]   <=      0;
                ifbuf2[`Byte][21]   <=      0;
                ifbuf2[`Byte][22]   <=      0;
                ifbuf2[`Byte][23]   <=      0;
                ifbuf2[`Byte][24]   <=      0;
                ifbuf2[`Byte][25]   <=      0;
                ifbuf2[`Byte][26]   <=      0;
                ifbuf2[`Byte][27]   <=      0;
                ifbuf2[`Byte][28]   <=      0;
                ifbuf2[`Byte][29]   <=      0;
                ifbuf2[`Byte][30]   <=      0;
                ifbuf1[`Byte][31]   <=      0;
                ifbuf1[`Byte][0]    <=      0;
                ifbuf1[`Byte][1]    <=      0;
                ifbuf1[`Byte][2]    <=      0;
                ifbuf1[`Byte][3]    <=      0;
                ifbuf1[`Byte][4]    <=      0;
                ifbuf1[`Byte][5]    <=      0;
                ifbuf1[`Byte][6]    <=      0;
                ifbuf1[`Byte][7]    <=      0;
                ifbuf1[`Byte][8]    <=      0;
                ifbuf1[`Byte][9]    <=      0;
                ifbuf1[`Byte][10]   <=      0;
                ifbuf1[`Byte][11]   <=      0;
                ifbuf1[`Byte][12]   <=      0;
                ifbuf1[`Byte][13]   <=      0;
                ifbuf1[`Byte][14]   <=      0;
                ifbuf1[`Byte][15]   <=      0;
                ifbuf1[`Byte][16]   <=      0;
                ifbuf1[`Byte][17]   <=      0;
                ifbuf1[`Byte][18]   <=      0;
                ifbuf1[`Byte][19]   <=      0;
                ifbuf1[`Byte][20]   <=      0;
                ifbuf1[`Byte][21]   <=      0;
                ifbuf1[`Byte][22]   <=      0;
                ifbuf1[`Byte][23]   <=      0;
                ifbuf1[`Byte][24]   <=      0;
                ifbuf1[`Byte][25]   <=      0;
                ifbuf1[`Byte][26]   <=      0;
                ifbuf1[`Byte][27]   <=      0;
                ifbuf1[`Byte][28]   <=      0;
                ifbuf1[`Byte][29]   <=      0;
                ifbuf1[`Byte][30]   <=      0;
                ifbuf1[`Byte][31]   <=      0;                
                regPad1[`Byte][0]   <= 0;
                regPad2[`Byte][0]   <= 0;
                regPad3[`Byte][0]   <= 0;
                regPad4[`Byte][0]   <= 0;
                regPad5[`Byte][0]   <= 0;
                regPad1[`Byte][1]   <= 0;
                regPad2[`Byte][1]   <= 0;
                regPad3[`Byte][1]   <= 0;
                regPad4[`Byte][1]   <= 0;
                regPad5[`Byte][1]   <= 0;
                Process <= `Start;
                Counter <= 0;
              end
        end
        //ifbuf5[`Byte][31]这是数据尾
        `Start:begin
            
            regPad1[`Byte][0]   <=      regPad1[`Byte][1];
            regPad1[`Byte][1]   <=      ifbuf5[`Byte][0];
            ifbuf5[`Byte][0]    <=      ifbuf5[`Byte][1];
            ifbuf5[`Byte][1]    <=      ifbuf5[`Byte][2];
            ifbuf5[`Byte][2]    <=      ifbuf5[`Byte][3];
            ifbuf5[`Byte][3]    <=      ifbuf5[`Byte][4];
            ifbuf5[`Byte][4]    <=      ifbuf5[`Byte][5];
            ifbuf5[`Byte][5]    <=      ifbuf5[`Byte][6];
            ifbuf5[`Byte][6]    <=      ifbuf5[`Byte][7];
            ifbuf5[`Byte][7]    <=      ifbuf5[`Byte][8];
            ifbuf5[`Byte][8]    <=      ifbuf5[`Byte][9];
            ifbuf5[`Byte][9]    <=      ifbuf5[`Byte][10];
            ifbuf5[`Byte][10]   <=      ifbuf5[`Byte][11];
            ifbuf5[`Byte][11]   <=      ifbuf5[`Byte][12];
            ifbuf5[`Byte][12]   <=      ifbuf5[`Byte][13];
            ifbuf5[`Byte][13]   <=      ifbuf5[`Byte][14];
            ifbuf5[`Byte][14]   <=      ifbuf5[`Byte][15];
            ifbuf5[`Byte][15]   <=      ifbuf5[`Byte][16];
            ifbuf5[`Byte][16]   <=      ifbuf5[`Byte][17];
            ifbuf5[`Byte][17]   <=      ifbuf5[`Byte][18];
            ifbuf5[`Byte][18]   <=      ifbuf5[`Byte][19];
            ifbuf5[`Byte][19]   <=      ifbuf5[`Byte][20];
            ifbuf5[`Byte][20]   <=      ifbuf5[`Byte][21];
            ifbuf5[`Byte][21]   <=      ifbuf5[`Byte][22];
            ifbuf5[`Byte][22]   <=      ifbuf5[`Byte][23];
            ifbuf5[`Byte][23]   <=      ifbuf5[`Byte][24];

            regPad2[`Byte][0]   <=      regPad2[`Byte][1];
            regPad2[`Byte][1]   <=      ifbuf5[`Byte][0];
            ifbuf4[`Byte][0]    <=      ifbuf4[`Byte][1];
            ifbuf4[`Byte][1]    <=      ifbuf4[`Byte][2];
            ifbuf4[`Byte][2]    <=      ifbuf4[`Byte][3];
            ifbuf4[`Byte][3]    <=      ifbuf4[`Byte][4];
            ifbuf4[`Byte][4]    <=      ifbuf4[`Byte][5];
            ifbuf4[`Byte][5]    <=      ifbuf4[`Byte][6];
            ifbuf4[`Byte][6]    <=      ifbuf4[`Byte][7];
            ifbuf4[`Byte][7]    <=      ifbuf4[`Byte][8];
            ifbuf4[`Byte][8]    <=      ifbuf4[`Byte][9];
            ifbuf4[`Byte][9]    <=      ifbuf4[`Byte][10];
            ifbuf4[`Byte][10]   <=      ifbuf4[`Byte][11];
            ifbuf4[`Byte][11]   <=      ifbuf4[`Byte][12];
            ifbuf4[`Byte][12]   <=      ifbuf4[`Byte][13];
            ifbuf4[`Byte][13]   <=      ifbuf4[`Byte][14];
            ifbuf4[`Byte][14]   <=      ifbuf4[`Byte][15];
            ifbuf4[`Byte][15]   <=      ifbuf4[`Byte][16];
            ifbuf4[`Byte][16]   <=      ifbuf4[`Byte][17];
            ifbuf4[`Byte][17]   <=      ifbuf4[`Byte][18];
            ifbuf4[`Byte][18]   <=      ifbuf4[`Byte][19];
            ifbuf4[`Byte][19]   <=      ifbuf4[`Byte][20];
            ifbuf4[`Byte][20]   <=      ifbuf4[`Byte][21];
            ifbuf4[`Byte][21]   <=      ifbuf4[`Byte][22];
            ifbuf4[`Byte][22]   <=      ifbuf4[`Byte][23];
            ifbuf4[`Byte][23]   <=      ifbuf4[`Byte][24];
            ifbuf4[`Byte][24]   <=      ifbuf4[`Byte][25];
            ifbuf4[`Byte][25]   <=      ifbuf4[`Byte][26];
            ifbuf4[`Byte][26]   <=      ifbuf4[`Byte][27];
            ifbuf4[`Byte][27]   <=      ifbuf4[`Byte][28];
            ifbuf4[`Byte][28]   <=      ifbuf4[`Byte][29];
            ifbuf4[`Byte][29]   <=      ifbuf4[`Byte][30];
            ifbuf4[`Byte][30]   <=      ifbuf4[`Byte][31];
            ifbuf4[`Byte][31]   <=      regPad1[`Byte][0];

            regPad3[`Byte][0]   <=      regPad3[`Byte][1];
            regPad3[`Byte][1]   <=      ifbuf4[`Byte][0];
            ifbuf3[`Byte][0]    <=      ifbuf3[`Byte][1];
            ifbuf3[`Byte][1]    <=      ifbuf3[`Byte][2];
            ifbuf3[`Byte][2]    <=      ifbuf3[`Byte][3];
            ifbuf3[`Byte][3]    <=      ifbuf3[`Byte][4];
            ifbuf3[`Byte][4]    <=      ifbuf3[`Byte][5];
            ifbuf3[`Byte][5]    <=      ifbuf3[`Byte][6];
            ifbuf3[`Byte][6]    <=      ifbuf3[`Byte][7];
            ifbuf3[`Byte][7]    <=      ifbuf3[`Byte][8];
            ifbuf3[`Byte][8]    <=      ifbuf3[`Byte][9];
            ifbuf3[`Byte][9]    <=      ifbuf3[`Byte][10];
            ifbuf3[`Byte][10]   <=      ifbuf3[`Byte][11];
            ifbuf3[`Byte][11]   <=      ifbuf3[`Byte][12];
            ifbuf3[`Byte][12]   <=      ifbuf3[`Byte][13];
            ifbuf3[`Byte][13]   <=      ifbuf3[`Byte][14];
            ifbuf3[`Byte][14]   <=      ifbuf3[`Byte][15];
            ifbuf3[`Byte][15]   <=      ifbuf3[`Byte][16];
            ifbuf3[`Byte][16]   <=      ifbuf3[`Byte][17];
            ifbuf3[`Byte][17]   <=      ifbuf3[`Byte][18];
            ifbuf3[`Byte][18]   <=      ifbuf3[`Byte][19];
            ifbuf3[`Byte][19]   <=      ifbuf3[`Byte][20];
            ifbuf3[`Byte][20]   <=      ifbuf3[`Byte][21];
            ifbuf3[`Byte][21]   <=      ifbuf3[`Byte][22];
            ifbuf3[`Byte][22]   <=      ifbuf3[`Byte][23];
            ifbuf3[`Byte][23]   <=      ifbuf3[`Byte][24];
            ifbuf3[`Byte][24]   <=      ifbuf3[`Byte][25];
            ifbuf3[`Byte][25]   <=      ifbuf3[`Byte][26];
            ifbuf3[`Byte][26]   <=      ifbuf3[`Byte][27];
            ifbuf3[`Byte][27]   <=      ifbuf3[`Byte][28];
            ifbuf3[`Byte][28]   <=      ifbuf3[`Byte][29];
            ifbuf3[`Byte][29]   <=      ifbuf3[`Byte][30];
            ifbuf3[`Byte][30]   <=      ifbuf3[`Byte][31];
            ifbuf3[`Byte][31]   <=      regPad2[`Byte][0]

            regPad4[`Byte][0]   <=      regPad4[`Byte][1];
            regPad4[`Byte][1]   <=      ifbuf3[`Byte][0];
            ifbuf2[`Byte][0]    <=      ifbuf2[`Byte][1];
            ifbuf2[`Byte][1]    <=      ifbuf2[`Byte][2];
            ifbuf2[`Byte][2]    <=      ifbuf2[`Byte][3];
            ifbuf2[`Byte][3]    <=      ifbuf2[`Byte][4];
            ifbuf2[`Byte][4]    <=      ifbuf2[`Byte][5];
            ifbuf2[`Byte][5]    <=      ifbuf2[`Byte][6];
            ifbuf2[`Byte][6]    <=      ifbuf2[`Byte][7];
            ifbuf2[`Byte][7]    <=      ifbuf2[`Byte][8];
            ifbuf2[`Byte][8]    <=      ifbuf2[`Byte][9];
            ifbuf2[`Byte][9]    <=      ifbuf2[`Byte][10];
            ifbuf2[`Byte][10]   <=      ifbuf2[`Byte][11];
            ifbuf2[`Byte][11]   <=      ifbuf2[`Byte][12];
            ifbuf2[`Byte][12]   <=      ifbuf2[`Byte][13];
            ifbuf2[`Byte][13]   <=      ifbuf2[`Byte][14];
            ifbuf2[`Byte][14]   <=      ifbuf2[`Byte][15];
            ifbuf2[`Byte][15]   <=      ifbuf2[`Byte][16];
            ifbuf2[`Byte][16]   <=      ifbuf2[`Byte][17];
            ifbuf2[`Byte][17]   <=      ifbuf2[`Byte][18];
            ifbuf2[`Byte][18]   <=      ifbuf2[`Byte][19];
            ifbuf2[`Byte][19]   <=      ifbuf2[`Byte][20];
            ifbuf2[`Byte][20]   <=      ifbuf2[`Byte][21];
            ifbuf2[`Byte][21]   <=      ifbuf2[`Byte][22];
            ifbuf2[`Byte][22]   <=      ifbuf2[`Byte][23];
            ifbuf2[`Byte][23]   <=      ifbuf2[`Byte][24];
            ifbuf2[`Byte][24]   <=      ifbuf2[`Byte][25];
            ifbuf2[`Byte][25]   <=      ifbuf2[`Byte][26];
            ifbuf2[`Byte][26]   <=      ifbuf2[`Byte][27];
            ifbuf2[`Byte][27]   <=      ifbuf2[`Byte][28];
            ifbuf2[`Byte][28]   <=      ifbuf2[`Byte][29];
            ifbuf2[`Byte][29]   <=      ifbuf2[`Byte][30];
            ifbuf2[`Byte][30]   <=      ifbuf2[`Byte][31];
            ifbuf2[`Byte][31]   <=      regPad3[`Byte][0];

            regPad5[`Byte][0]   <=      regPad5[`Byte][1];
            regPad5[`Byte][1]   <=      ifbuf2[`Byte][0];
            ifbuf1[`Byte][0]    <=      ifbuf1[`Byte][1];
            ifbuf1[`Byte][1]    <=      ifbuf1[`Byte][2];
            ifbuf1[`Byte][2]    <=      ifbuf1[`Byte][3];
            ifbuf1[`Byte][3]    <=      ifbuf1[`Byte][4];
            ifbuf1[`Byte][4]    <=      ifbuf1[`Byte][5];
            ifbuf1[`Byte][5]    <=      ifbuf1[`Byte][6];
            ifbuf1[`Byte][6]    <=      ifbuf1[`Byte][7];
            ifbuf1[`Byte][7]    <=      ifbuf1[`Byte][8];
            ifbuf1[`Byte][8]    <=      ifbuf1[`Byte][9];
            ifbuf1[`Byte][9]    <=      ifbuf1[`Byte][10];
            ifbuf1[`Byte][10]   <=      ifbuf1[`Byte][11];
            ifbuf1[`Byte][11]   <=      ifbuf1[`Byte][12];
            ifbuf1[`Byte][12]   <=      ifbuf1[`Byte][13];
            ifbuf1[`Byte][13]   <=      ifbuf1[`Byte][14];
            ifbuf1[`Byte][14]   <=      ifbuf1[`Byte][15];
            ifbuf1[`Byte][15]   <=      ifbuf1[`Byte][16];
            ifbuf1[`Byte][16]   <=      ifbuf1[`Byte][17];
            ifbuf1[`Byte][17]   <=      ifbuf1[`Byte][18];
            ifbuf1[`Byte][18]   <=      ifbuf1[`Byte][19];
            ifbuf1[`Byte][19]   <=      ifbuf1[`Byte][20];
            ifbuf1[`Byte][20]   <=      ifbuf1[`Byte][21];
            ifbuf1[`Byte][21]   <=      ifbuf1[`Byte][22];
            ifbuf1[`Byte][22]   <=      ifbuf1[`Byte][23];
            ifbuf1[`Byte][23]   <=      ifbuf1[`Byte][24];
            ifbuf1[`Byte][24]   <=      ifbuf1[`Byte][25];
            ifbuf1[`Byte][25]   <=      ifbuf1[`Byte][26];
            ifbuf1[`Byte][26]   <=      ifbuf1[`Byte][27];
            ifbuf1[`Byte][27]   <=      ifbuf1[`Byte][28];
            ifbuf1[`Byte][28]   <=      ifbuf1[`Byte][29];
            ifbuf1[`Byte][29]   <=      ifbuf1[`Byte][30];
            ifbuf1[`Byte][30]   <=      ifbuf1[`Byte][31];
            ifbuf1[`Byte][31]   <=      regPad4[`Byte][0];

            case ( Counter )
            6'd10 : begin
                ifbuf5[`Byte][24]   <=   (Row == 5'd23 || Row == 5'd24)? 8'd0:ifmap_in1[63:56];
                ifbuf5[`Byte][25]   <=   (Row == 5'd23 || Row == 5'd24)? 8'd0:ifmap_in1[55:48];
                ifbuf5[`Byte][26]   <=   (Row == 5'd23 || Row == 5'd24)? 8'd0:ifmap_in1[47:40];
                ifbuf5[`Byte][27]   <=   (Row == 5'd23 || Row == 5'd24)? 8'd0:ifmap_in1[39:32];
                ifbuf5[`Byte][28]   <=   (Row == 5'd23 || Row == 5'd24)? 8'd0:ifmap_in1[31:24];
                ifbuf5[`Byte][29]   <=   (Row == 5'd23 || Row == 5'd24)? 8'd0:ifmap_in1[23:16];
                ifbuf5[`Byte][30]   <=   (Row == 5'd23 || Row == 5'd24)? 8'd0:ifmap_in1[15:8];
                ifbuf5[`Byte][31]   <=   (Row == 5'd23 || Row == 5'd24)? 8'd0:ifmap_in1[7:0];
                Counter <= Counter + 1;
                Trashdata <= 0;
            end
            6'd18 : begin
                ifbuf5[`Byte][24]   <=   (Row == 5'd23 || Row == 5'd24)? 8'd0:ifmap_in1[63:56];
                ifbuf5[`Byte][25]   <=   (Row == 5'd23 || Row == 5'd24)? 8'd0:ifmap_in1[55:48];
                ifbuf5[`Byte][26]   <=   (Row == 5'd23 || Row == 5'd24)? 8'd0:ifmap_in1[47:40];
                ifbuf5[`Byte][27]   <=   (Row == 5'd23 || Row == 5'd24)? 8'd0:ifmap_in1[39:32];
                ifbuf5[`Byte][28]   <=   (Row == 5'd23 || Row == 5'd24)? 8'd0:ifmap_in1[31:24];
                ifbuf5[`Byte][29]   <=   (Row == 5'd23 || Row == 5'd24)? 8'd0:ifmap_in1[23:16];
                ifbuf5[`Byte][30]   <=   (Row == 5'd23 || Row == 5'd24)? 8'd0:ifmap_in1[15:8];
                ifbuf5[`Byte][31]   <=   (Row == 5'd23 || Row == 5'd24)? 8'd0:ifmap_in1[7:0];
                Counter <= Counter + 1;
                Trashdata <= 0;
            end
            6'd26 :begin
                ifbuf5[`Byte][24]   <=   (Row == 5'd23 || Row == 5'd24)? 8'd0:ifmap_in1[63:56];
                ifbuf5[`Byte][25]   <=   (Row == 5'd23 || Row == 5'd24)? 8'd0:ifmap_in1[55:48];
                ifbuf5[`Byte][26]   <=   (Row == 5'd23 || Row == 5'd24)? 8'd0:ifmap_in1[47:40];
                ifbuf5[`Byte][27]   <=   (Row == 5'd23 || Row == 5'd24)? 8'd0:ifmap_in1[39:32];
                ifbuf5[`Byte][28]   <=   (Row == 5'd23 || Row == 5'd24)? 8'd0:ifmap_in1[31:24];
                ifbuf5[`Byte][29]   <=   (Row == 5'd23 || Row == 5'd24)? 8'd0:ifmap_in1[23:16];
                ifbuf5[`Byte][30]   <=   (Row == 5'd23 || Row == 5'd24)? 8'd0:ifmap_in1[15:8];
                ifbuf5[`Byte][31]   <=   (Row == 5'd23 || Row == 5'd24)? 8'd0:ifmap_in1[7:0];
                Counter <= Counter + 1;
                Trashdata <= 0;
            end
            6'd34 :
                ifbuf5[`Byte][24]   <=   (Row == 5'd23 || Row == 5'd24)? 8'd0:ifmap_in1[63:56];
                ifbuf5[`Byte][25]   <=   (Row == 5'd23 || Row == 5'd24)? 8'd0:ifmap_in1[55:48];
                ifbuf5[`Byte][26]   <=   (Row == 5'd23 || Row == 5'd24)? 8'd0:ifmap_in1[47:40];
                ifbuf5[`Byte][27]   <=   (Row == 5'd23 || Row == 5'd24)? 8'd0:ifmap_in1[39:32];
                ifbuf5[`Byte][28]   <=   (Row == 5'd23 || Row == 5'd24)? 8'd0:ifmap_in1[31:24];
                ifbuf5[`Byte][29]   <=   (Row == 5'd23 || Row == 5'd24)? 8'd0:ifmap_in1[23:16];
                ifbuf5[`Byte][30]   <=   (Row == 5'd23 || Row == 5'd24)? 8'd0:ifmap_in1[15:8];
                ifbuf5[`Byte][31]   <=   (Row == 5'd23 || Row == 5'd24)? 8'd0:ifmap_in1[7:0];
                Counter <= Counter + 1;
                Trashdata <= 1; //signal for disable
            end
            6'd37 : begin
                ifbuf5[`Byte][24]   <=      ifbuf5[`Byte][25];
                ifbuf5[`Byte][25]   <=      ifbuf5[`Byte][26];
                ifbuf5[`Byte][26]   <=      ifbuf5[`Byte][27];
                ifbuf5[`Byte][27]   <=      ifbuf5[`Byte][28];
                ifbuf5[`Byte][28]   <=      ifbuf5[`Byte][29];
                ifbuf5[`Byte][29]   <=      ifbuf5[`Byte][30];
                ifbuf5[`Byte][30]   <=      ifbuf5[`Byte][31];
                ifbuf5[`Byte][31]   <=      ifbuf1[`Byte][0];
                Counter <= 0;          
                end else if(Row == 5'd25) begin
                    Row <= 0;
                end else begin
                    Row <= Row + 1;                    
                end
                Trashdata <= 0;
            end
            default :begin
                ifbuf5[`Byte][24]   <=      ifbuf5[`Byte][25];
                ifbuf5[`Byte][25]   <=      ifbuf5[`Byte][26];
                ifbuf5[`Byte][26]   <=      ifbuf5[`Byte][27];
                ifbuf5[`Byte][27]   <=      ifbuf5[`Byte][28];
                ifbuf5[`Byte][28]   <=      ifbuf5[`Byte][29];
                ifbuf5[`Byte][29]   <=      ifbuf5[`Byte][30];
                ifbuf5[`Byte][30]   <=      ifbuf5[`Byte][31];
                ifbuf5[`Byte][31]   <=      ifbuf1[`Byte][0];
                Counter <= Counter + 1;
                Trashdata <= 0;
            end
            endcase
            
        end
    end 
    `Layer1: begin
        ifbuf1[15:8] <= ifbuf1[23:16];
        ifbuf1[23:16] <= ifbuf1[31:24];
        ifbuf1[31:24] <= ifbuf1[39:32];
        ifbuf1[39:32] <= ifbuf1[47:40];
        ifbuf1[47:40] <= ifbuf1[55:48];
        ifbuf1[55:48] <= ifbuf1[63:56];
        ifbuf1[63:56] <= ifbuf1[71:64];
        ifbuf1[71:64] <= ifbuf1[79:72];
        ifbuf1[79:72] <= ifbuf1[87:80];
        ifbuf1[87:80] <= ifbuf1[95:88];
        ifbuf1[95:88] <= ifbuf1[103:96];
        ifbuf1[103:96] <= ifbuf1[111:104];
        ifbuf1[111:104] <= ifbuf1[119:112];
        ifbuf1[119:112] <= ifbuf1[127:120];
        ifbuf1[127:120] <= ifbuf1[135:128];
        ifbuf1[135:128] <= ifbuf1[143:136];
        ifbuf1[143:136] <= ifbuf1[151:144];
        ifbuf1[151:144] <= ifbuf1[159:152];
        ifbuf1[159:152] <= ifbuf1[167:160];
        ifbuf1[167:160] <= ifbuf1[175:168];
        ifbuf1[175:168] <= ifbuf1[183:176];
        ifbuf1[183:176] <= ifbuf1[191:184];
        ifbuf1[191:184] <= ifbuf1[199:192];
        ifbuf1[199:192] <= ifbuf1[207:200];
        ifbuf1[207:200] <= ifbuf1[215:208];
        ifbuf1[215:208] <= ifbuf1[223:216];
        ifbuf1[223:216] <= ifbuf1[231:224];
        ifbuf1[231:224] <= ifbuf1[239:232];
        ifbuf1[239:232] <= ifbuf1[247:240];
        ifbuf1[247:240] <= ifbuf1[255:248];
        ifbuf1[255:248] <= ifbuf1[263:256];
        ifbuf1[263:256] <= ifbuf1[271:264];
        ifbuf1[271:264] <= ifbuf1[279:272];
        ifbuf1[279:272] <= ifbuf1[287:280];
        
        ifbuf2[15:8] <= ifbuf2[23:16];
        ifbuf2[23:16] <= ifbuf2[31:24];
        ifbuf2[31:24] <= ifbuf2[39:32];
        ifbuf2[39:32] <= ifbuf2[47:40];
        ifbuf2[47:40] <= ifbuf2[55:48];
        ifbuf2[55:48] <= ifbuf2[63:56];
        ifbuf2[63:56] <= ifbuf2[71:64];
        ifbuf2[71:64] <= ifbuf2[79:72];
        ifbuf2[79:72] <= ifbuf2[87:80];
        ifbuf2[87:80] <= ifbuf2[95:88];
        ifbuf2[95:88] <= ifbuf2[103:96];
        ifbuf2[103:96] <= ifbuf2[111:104];
        ifbuf2[111:104] <= ifbuf2[119:112];
        ifbuf2[119:112] <= ifbuf2[127:120];
        ifbuf2[127:120] <= ifbuf2[135:128];
        ifbuf2[135:128] <= ifbuf2[143:136];
        ifbuf2[143:136] <= ifbuf2[151:144];
        ifbuf2[151:144] <= ifbuf2[159:152];
        ifbuf2[159:152] <= ifbuf2[167:160];
        ifbuf2[167:160] <= ifbuf2[175:168];
        ifbuf2[175:168] <= ifbuf2[183:176];
        ifbuf2[183:176] <= ifbuf2[191:184];
        ifbuf2[191:184] <= ifbuf2[199:192];
        ifbuf2[199:192] <= ifbuf2[207:200];
        ifbuf2[207:200] <= ifbuf2[215:208];
        ifbuf2[215:208] <= ifbuf2[223:216];
        ifbuf2[223:216] <= ifbuf2[231:224];
        ifbuf2[231:224] <= ifbuf2[239:232];
        ifbuf2[239:232] <= ifbuf2[247:240];
        ifbuf2[247:240] <= ifbuf2[255:248];
        ifbuf2[255:248] <= ifbuf2[263:256];
        ifbuf2[263:256] <= ifbuf2[271:264];
        ifbuf2[271:264] <= ifbuf2[279:272];
        ifbuf2[279:272] <= ifbuf2[287:280];
        
        ifbuf3[15:8] <= ifbuf3[23:16];
        ifbuf3[23:16] <= ifbuf3[31:24];
        ifbuf3[31:24] <= ifbuf3[39:32];
        ifbuf3[39:32] <= ifbuf3[47:40];
        ifbuf3[47:40] <= ifbuf3[55:48];
        ifbuf3[55:48] <= ifbuf3[63:56];
        ifbuf3[63:56] <= ifbuf3[71:64];
        ifbuf3[71:64] <= ifbuf3[79:72];
        ifbuf3[79:72] <= ifbuf3[87:80];
        ifbuf3[87:80] <= ifbuf3[95:88];
        ifbuf3[95:88] <= ifbuf3[103:96];
        ifbuf3[103:96] <= ifbuf3[111:104];
        ifbuf3[111:104] <= ifbuf3[119:112];
        ifbuf3[119:112] <= ifbuf3[127:120];
        ifbuf3[127:120] <= ifbuf3[135:128];
        ifbuf3[135:128] <= ifbuf3[143:136];
        ifbuf3[143:136] <= ifbuf3[151:144];
        ifbuf3[151:144] <= ifbuf3[159:152];
        ifbuf3[159:152] <= ifbuf3[167:160];
        ifbuf3[167:160] <= ifbuf3[175:168];
        ifbuf3[175:168] <= ifbuf3[183:176];
        ifbuf3[183:176] <= ifbuf3[191:184];
        ifbuf3[191:184] <= ifbuf3[199:192];
        ifbuf3[199:192] <= ifbuf3[207:200];
        ifbuf3[207:200] <= ifbuf3[215:208];
        ifbuf3[215:208] <= ifbuf3[223:216];
        ifbuf3[223:216] <= ifbuf3[231:224];
        ifbuf3[231:224] <= ifbuf3[239:232];
        ifbuf3[239:232] <= ifbuf3[247:240];
        ifbuf3[247:240] <= ifbuf3[255:248];
        ifbuf3[255:248] <= ifbuf3[263:256];
        ifbuf3[263:256] <= ifbuf3[271:264];
        ifbuf3[271:264] <= ifbuf3[279:272];
        ifbuf3[279:272] <= ifbuf3[287:280];
        
        ifbuf4[15:8] <= ifbuf4[23:16];
        ifbuf4[23:16] <= ifbuf4[31:24];
        ifbuf4[31:24] <= ifbuf4[39:32];
        ifbuf4[39:32] <= ifbuf4[47:40];
        ifbuf4[47:40] <= ifbuf4[55:48];
        ifbuf4[55:48] <= ifbuf4[63:56];
        ifbuf4[63:56] <= ifbuf4[71:64];
        ifbuf4[71:64] <= ifbuf4[79:72];
        ifbuf4[79:72] <= ifbuf4[87:80];
        ifbuf4[87:80] <= ifbuf4[95:88];
        ifbuf4[95:88] <= ifbuf4[103:96];
        ifbuf4[103:96] <= ifbuf4[111:104];
        ifbuf4[111:104] <= ifbuf4[119:112];
        ifbuf4[119:112] <= ifbuf4[127:120];
        ifbuf4[127:120] <= ifbuf4[135:128];
        ifbuf4[135:128] <= ifbuf4[143:136];
        ifbuf4[143:136] <= ifbuf4[151:144];
        ifbuf4[151:144] <= ifbuf4[159:152];
        ifbuf4[159:152] <= ifbuf4[167:160];
        ifbuf4[167:160] <= ifbuf4[175:168];
        ifbuf4[175:168] <= ifbuf4[183:176];
        ifbuf4[183:176] <= ifbuf4[191:184];
        ifbuf4[191:184] <= ifbuf4[199:192];
        ifbuf4[199:192] <= ifbuf4[207:200];
        ifbuf4[207:200] <= ifbuf4[215:208];
        ifbuf4[215:208] <= ifbuf4[223:216];
        ifbuf4[223:216] <= ifbuf4[231:224];
        ifbuf4[231:224] <= ifbuf4[239:232];
        ifbuf4[239:232] <= ifbuf4[247:240];
        ifbuf4[247:240] <= ifbuf4[255:248];
        ifbuf4[255:248] <= ifbuf4[263:256];
        ifbuf4[263:256] <= ifbuf4[271:264];
        ifbuf4[271:264] <= ifbuf4[279:272];
        ifbuf4[279:272] <= ifbuf4[287:280];

        ifbuf5[15:8] <= ifbuf5[23:16];
        ifbuf5[23:16] <= ifbuf5[31:24];
        ifbuf5[31:24] <= ifbuf5[39:32];
        ifbuf5[39:32] <= ifbuf5[47:40];
        ifbuf5[47:40] <= ifbuf5[55:48];
        ifbuf5[55:48] <= ifbuf5[63:56];
        ifbuf5[63:56] <= ifbuf5[71:64];
        ifbuf5[71:64] <= ifbuf5[79:72];
        ifbuf5[79:72] <= ifbuf5[87:80];
        ifbuf5[87:80] <= ifbuf5[95:88];
        ifbuf5[95:88] <= ifbuf5[103:96];
        ifbuf5[103:96] <= ifbuf5[111:104];
        ifbuf5[111:104] <= ifbuf5[119:112];
        ifbuf5[119:112] <= ifbuf5[127:120];
        ifbuf5[127:120] <= ifbuf5[135:128];
        ifbuf5[135:128] <= ifbuf5[143:136];
        ifbuf5[143:136] <= ifbuf5[151:144];
        ifbuf5[151:144] <= ifbuf5[159:152];
        ifbuf5[159:152] <= ifbuf5[167:160];
        ifbuf5[167:160] <= ifbuf5[175:168];
        ifbuf5[175:168] <= ifbuf5[183:176];
        ifbuf5[183:176] <= ifbuf5[191:184];
        ifbuf5[191:184] <= ifbuf5[199:192];
        ifbuf5[199:192] <= ifbuf5[207:200];
        ifbuf5[207:200] <= ifbuf5[215:208];
        ifbuf5[215:208] <= ifbuf5[223:216];
        ifbuf5[223:216] <= ifbuf5[231:224];
        ifbuf5[231:224] <= ifbuf5[239:232];
        ifbuf5[239:232] <= ifbuf5[247:240];
        ifbuf5[247:240] <= ifbuf5[255:248];
        ifbuf5[255:248] <= ifbuf5[263:256];
        ifbuf5[263:256] <= ifbuf5[271:264];
        ifbuf5[271:264] <= ifbuf5[279:272];
        ifbuf5[279:272] <= ifbuf5[287:280];
        

        if (initializing == 1) begin
            ifbuf1[7:0] <= ifmap_in1[7:0];
            ifbuf2[7:0] <= ifmap_in1[15:8];
            ifbuf3[7:0] <= ifmap_in1[23:16];
            ifbuf4[7:0] <= ifmap_in1[31:24];
            ifbuf5[7:0] <= ifmap_in1[39:32];
        end
        else begin
            ifbuf1[7:0] <= ifbuf1[15:8];
            ifbuf2[7:0] <= ifbuf2[15:8];
            ifbuf3[7:0] <= ifbuf3[15:8];
            ifbuf4[7:0] <= ifbuf4[15:8];
            ifbuf5[7:0] <= ifbuf5[15:8];
        end
        
        ifbuf1[287:280] <= ifbuf2[7:0];
        ifbuf2[287:280] <= ifbuf3[7:0];
        ifbuf3[287:280] <= ifbuf4[7:0];
        ifbuf4[287:280] <= ifbuf5[7:0];
        ifbuf5[287:280] <= ifmap_in1[7:0];
        
    end

    `Layer2:begin
        ifbuf1[15:8] <= ifbuf1[23:16];
        ifbuf1[23:16] <= ifbuf1[31:24];
        ifbuf1[31:24] <= ifbuf1[39:32];
        ifbuf1[39:32] <= ifbuf1[47:40];
        ifbuf1[47:40] <= ifbuf1[55:48];
        ifbuf1[55:48] <= ifbuf1[63:56];
        ifbuf1[63:56] <= ifbuf1[71:64];
        ifbuf1[71:64] <= ifbuf1[79:72];
        ifbuf1[79:72] <= ifbuf1[87:80];
        ifbuf1[87:80] <= ifbuf1[95:88];
        ifbuf1[95:88] <= ifbuf1[103:96];
        ifbuf1[103:96] <= ifbuf1[111:104];
        ifbuf1[111:104] <= ifbuf1[119:112];
        ifbuf1[119:112] <= ifbuf1[127:120];
        ifbuf1[127:120] <= ifbuf1[135:128];
        ifbuf1[135:128] <= ifbuf1[143:136];
        ifbuf1[143:136] <= ifbuf1[151:144];
        ifbuf1[151:144] <= ifbuf1[159:152];
        ifbuf1[159:152] <= ifbuf1[167:160];
        ifbuf1[167:160] <= ifbuf1[175:168];
        ifbuf1[175:168] <= ifbuf1[183:176];
        ifbuf1[183:176] <= ifbuf1[191:184];
        ifbuf1[191:184] <= ifbuf1[199:192];
        ifbuf1[199:192] <= ifbuf1[207:200];
        ifbuf1[207:200] <= ifbuf1[215:208];
        ifbuf1[215:208] <= ifbuf1[223:216];
        ifbuf1[223:216] <= ifbuf1[231:224];
        ifbuf1[231:224] <= ifbuf1[239:232];
        ifbuf1[239:232] <= ifbuf1[247:240];
        ifbuf1[247:240] <= ifbuf1[255:248];
        ifbuf1[255:248] <= ifbuf1[263:256];
        ifbuf1[263:256] <= ifbuf1[271:264];
        ifbuf1[271:264] <= ifbuf1[279:272];
        ifbuf1[279:272] <= ifbuf1[287:280];
        
        ifbuf2[15:8] <= ifbuf2[23:16];
        ifbuf2[23:16] <= ifbuf2[31:24];
        ifbuf2[31:24] <= ifbuf2[39:32];
        ifbuf2[39:32] <= ifbuf2[47:40];
        ifbuf2[47:40] <= ifbuf2[55:48];
        ifbuf2[55:48] <= ifbuf2[63:56];
        ifbuf2[63:56] <= ifbuf2[71:64];
        ifbuf2[71:64] <= ifbuf2[79:72];
        ifbuf2[79:72] <= ifbuf2[87:80];
        ifbuf2[87:80] <= ifbuf2[95:88];
        ifbuf2[95:88] <= ifbuf2[103:96];
        ifbuf2[103:96] <= ifbuf2[111:104];
        ifbuf2[111:104] <= ifbuf2[119:112];
        ifbuf2[119:112] <= ifbuf2[127:120];
        ifbuf2[127:120] <= ifbuf2[135:128];
        ifbuf2[135:128] <= ifbuf2[143:136];
        ifbuf2[143:136] <= ifbuf2[151:144];
        ifbuf2[151:144] <= ifbuf2[159:152];
        ifbuf2[159:152] <= ifbuf2[167:160];
        ifbuf2[167:160] <= ifbuf2[175:168];
        ifbuf2[175:168] <= ifbuf2[183:176];
        ifbuf2[183:176] <= ifbuf2[191:184];
        ifbuf2[191:184] <= ifbuf2[199:192];
        ifbuf2[199:192] <= ifbuf2[207:200];
        ifbuf2[207:200] <= ifbuf2[215:208];
        ifbuf2[215:208] <= ifbuf2[223:216];
        ifbuf2[223:216] <= ifbuf2[231:224];
        ifbuf2[231:224] <= ifbuf2[239:232];
        ifbuf2[239:232] <= ifbuf2[247:240];
        ifbuf2[247:240] <= ifbuf2[255:248];
        ifbuf2[255:248] <= ifbuf2[263:256];
        ifbuf2[263:256] <= ifbuf2[271:264];
        ifbuf2[271:264] <= ifbuf2[279:272];
        ifbuf2[279:272] <= ifbuf2[287:280];
        
        ifbuf3[15:8] <= ifbuf3[23:16];
        ifbuf3[23:16] <= ifbuf3[31:24];
        ifbuf3[31:24] <= ifbuf3[39:32];
        ifbuf3[39:32] <= ifbuf3[47:40];
        ifbuf3[47:40] <= ifbuf3[55:48];
        ifbuf3[55:48] <= ifbuf3[63:56];
        ifbuf3[63:56] <= ifbuf3[71:64];
        ifbuf3[71:64] <= ifbuf3[79:72];
        ifbuf3[79:72] <= ifbuf3[87:80];
        ifbuf3[87:80] <= ifbuf3[95:88];
        ifbuf3[95:88] <= ifbuf3[103:96];
        ifbuf3[103:96] <= ifbuf3[111:104];
        ifbuf3[111:104] <= ifbuf3[119:112];
        ifbuf3[119:112] <= ifbuf3[127:120];
        ifbuf3[127:120] <= ifbuf3[135:128];
        ifbuf3[135:128] <= ifbuf3[143:136];
        ifbuf3[143:136] <= ifbuf3[151:144];
        ifbuf3[151:144] <= ifbuf3[159:152];
        ifbuf3[159:152] <= ifbuf3[167:160];
        ifbuf3[167:160] <= ifbuf3[175:168];
        ifbuf3[175:168] <= ifbuf3[183:176];
        ifbuf3[183:176] <= ifbuf3[191:184];
        ifbuf3[191:184] <= ifbuf3[199:192];
        ifbuf3[199:192] <= ifbuf3[207:200];
        ifbuf3[207:200] <= ifbuf3[215:208];
        ifbuf3[215:208] <= ifbuf3[223:216];
        ifbuf3[223:216] <= ifbuf3[231:224];
        ifbuf3[231:224] <= ifbuf3[239:232];
        ifbuf3[239:232] <= ifbuf3[247:240];
        ifbuf3[247:240] <= ifbuf3[255:248];
        ifbuf3[255:248] <= ifbuf3[263:256];
        ifbuf3[263:256] <= ifbuf3[271:264];
        ifbuf3[271:264] <= ifbuf3[279:272];
        ifbuf3[279:272] <= ifbuf3[287:280];
        
        ifbuf4[15:8] <= ifbuf4[23:16];
        ifbuf4[23:16] <= ifbuf4[31:24];
        ifbuf4[31:24] <= ifbuf4[39:32];
        ifbuf4[39:32] <= ifbuf4[47:40];
        ifbuf4[47:40] <= ifbuf4[55:48];
        ifbuf4[55:48] <= ifbuf4[63:56];
        ifbuf4[63:56] <= ifbuf4[71:64];
        ifbuf4[71:64] <= ifbuf4[79:72];
        ifbuf4[79:72] <= ifbuf4[87:80];
        ifbuf4[87:80] <= ifbuf4[95:88];
        ifbuf4[95:88] <= ifbuf4[103:96];
        ifbuf4[103:96] <= ifbuf4[111:104];
        ifbuf4[111:104] <= ifbuf4[119:112];
        ifbuf4[119:112] <= ifbuf4[127:120];
        ifbuf4[127:120] <= ifbuf4[135:128];
        ifbuf4[135:128] <= ifbuf4[143:136];
        ifbuf4[143:136] <= ifbuf4[151:144];
        ifbuf4[151:144] <= ifbuf4[159:152];
        ifbuf4[159:152] <= ifbuf4[167:160];
        ifbuf4[167:160] <= ifbuf4[175:168];
        ifbuf4[175:168] <= ifbuf4[183:176];
        ifbuf4[183:176] <= ifbuf4[191:184];
        ifbuf4[191:184] <= ifbuf4[199:192];
        ifbuf4[199:192] <= ifbuf4[207:200];
        ifbuf4[207:200] <= ifbuf4[215:208];
        ifbuf4[215:208] <= ifbuf4[223:216];
        ifbuf4[223:216] <= ifbuf4[231:224];
        ifbuf4[231:224] <= ifbuf4[239:232];
        ifbuf4[239:232] <= ifbuf4[247:240];
        ifbuf4[247:240] <= ifbuf4[255:248];
        ifbuf4[255:248] <= ifbuf4[263:256];
        ifbuf4[263:256] <= ifbuf4[271:264];
        ifbuf4[271:264] <= ifbuf4[279:272];
        ifbuf4[279:272] <= ifbuf4[287:280];

        ifbuf5[15:8] <= ifbuf5[23:16];
        ifbuf5[23:16] <= ifbuf5[31:24];
        ifbuf5[31:24] <= ifbuf5[39:32];
        ifbuf5[39:32] <= ifbuf5[47:40];
        ifbuf5[47:40] <= ifbuf5[55:48];
        ifbuf5[55:48] <= ifbuf5[63:56];
        ifbuf5[63:56] <= ifbuf5[71:64];
        ifbuf5[71:64] <= ifbuf5[79:72];
        ifbuf5[79:72] <= ifbuf5[87:80];
        ifbuf5[87:80] <= ifbuf5[95:88];
        ifbuf5[95:88] <= ifbuf5[103:96];
        ifbuf5[103:96] <= ifbuf5[111:104];
        ifbuf5[111:104] <= ifbuf5[119:112];
        ifbuf5[119:112] <= ifbuf5[127:120];
        ifbuf5[127:120] <= ifbuf5[135:128];
        ifbuf5[135:128] <= ifbuf5[143:136];
        ifbuf5[143:136] <= ifbuf5[151:144];
        ifbuf5[151:144] <= ifbuf5[159:152];
        ifbuf5[159:152] <= ifbuf5[167:160];
        ifbuf5[167:160] <= ifbuf5[175:168];
        ifbuf5[175:168] <= ifbuf5[183:176];
        ifbuf5[183:176] <= ifbuf5[191:184];
        ifbuf5[191:184] <= ifbuf5[199:192];
        ifbuf5[199:192] <= ifbuf5[207:200];
        ifbuf5[207:200] <= ifbuf5[215:208];
        ifbuf5[215:208] <= ifbuf5[223:216];
        ifbuf5[223:216] <= ifbuf5[231:224];
        ifbuf5[231:224] <= ifbuf5[239:232];
        ifbuf5[239:232] <= ifbuf5[247:240];
        ifbuf5[247:240] <= ifbuf5[255:248];
        ifbuf5[255:248] <= ifbuf5[263:256];
        ifbuf5[263:256] <= ifbuf5[271:264];
        ifbuf5[271:264] <= ifbuf5[279:272];
        ifbuf5[279:272] <= ifbuf5[287:280];
        

        if (initializing == 1) begin
            ifbuf1[7:0] <= ifmap_in1[7:0];
            ifbuf2[7:0] <= ifmap_in1[15:8];
            ifbuf3[7:0] <= ifmap_in1[23:16];
            ifbuf4[7:0] <= ifmap_in1[31:24];
            ifbuf5[7:0] <= ifmap_in1[39:32];
        end
        else begin
            ifbuf1[7:0] <= ifbuf1[15:8];
            ifbuf2[7:0] <= ifbuf2[15:8];
            ifbuf3[7:0] <= ifbuf3[15:8];
            ifbuf4[7:0] <= ifbuf4[15:8];
            ifbuf5[7:0] <= ifbuf5[15:8];
        end
        
        ifbuf1[287:280] <= ifbuf2[7:0];
        ifbuf2[287:280] <= ifbuf3[7:0];
        ifbuf3[287:280] <= ifbuf4[7:0];
        ifbuf4[287:280] <= ifbuf5[7:0];
        ifbuf5[287:280] <= ifmap_in1[7:0];
        
    end

    `Layer3: begin
        ifbuf1[15:8] <= ifbuf1[23:16];
        ifbuf1[23:16] <= ifbuf1[31:24];
        ifbuf1[31:24] <= ifbuf1[39:32];
        ifbuf1[39:32] <= ifbuf1[47:40];
        ifbuf1[47:40] <= ifbuf1[55:48];
        ifbuf1[55:48] <= ifbuf1[63:56];
        ifbuf1[63:56] <= ifbuf1[71:64];
        ifbuf1[71:64] <= ifbuf1[79:72];
        ifbuf1[79:72] <= ifbuf1[87:80];
        ifbuf1[87:80] <= ifbuf1[95:88];
        ifbuf1[95:88] <= ifbuf1[103:96];
        ifbuf1[103:96] <= ifbuf1[111:104];
        ifbuf1[111:104] <= ifbuf1[119:112];
        ifbuf1[119:112] <= ifbuf1[127:120];
        ifbuf1[127:120] <= ifbuf1[135:128];
        ifbuf1[135:128] <= ifbuf1[143:136];
        
        ifbuf1[159:152] <= ifbuf1[167:160];
        ifbuf1[167:160] <= ifbuf1[175:168];
        ifbuf1[175:168] <= ifbuf1[183:176];
        ifbuf1[183:176] <= ifbuf1[191:184];
        ifbuf1[191:184] <= ifbuf1[199:192];
        ifbuf1[199:192] <= ifbuf1[207:200];
        ifbuf1[207:200] <= ifbuf1[215:208];
        ifbuf1[215:208] <= ifbuf1[223:216];
        ifbuf1[223:216] <= ifbuf1[231:224];
        ifbuf1[231:224] <= ifbuf1[239:232];
        ifbuf1[239:232] <= ifbuf1[247:240];
        ifbuf1[247:240] <= ifbuf1[255:248];
        ifbuf1[255:248] <= ifbuf1[263:256];
        ifbuf1[263:256] <= ifbuf1[271:264];
        ifbuf1[271:264] <= ifbuf1[279:272];
        ifbuf1[279:272] <= ifbuf1[287:280];
        
        ifbuf2[15:8] <= ifbuf2[23:16];
        ifbuf2[23:16] <= ifbuf2[31:24];
        ifbuf2[31:24] <= ifbuf2[39:32];
        ifbuf2[39:32] <= ifbuf2[47:40];
        ifbuf2[47:40] <= ifbuf2[55:48];
        ifbuf2[55:48] <= ifbuf2[63:56];
        ifbuf2[63:56] <= ifbuf2[71:64];
        ifbuf2[71:64] <= ifbuf2[79:72];
        ifbuf2[79:72] <= ifbuf2[87:80];
        ifbuf2[87:80] <= ifbuf2[95:88];
        ifbuf2[95:88] <= ifbuf2[103:96];
        ifbuf2[103:96] <= ifbuf2[111:104];
        ifbuf2[111:104] <= ifbuf2[119:112];
        ifbuf2[119:112] <= ifbuf2[127:120];
        ifbuf2[127:120] <= ifbuf2[135:128];
        ifbuf2[135:128] <= ifbuf2[143:136];
        
        ifbuf2[159:152] <= ifbuf2[167:160];
        ifbuf2[167:160] <= ifbuf2[175:168];
        ifbuf2[175:168] <= ifbuf2[183:176];
        ifbuf2[183:176] <= ifbuf2[191:184];
        ifbuf2[191:184] <= ifbuf2[199:192];
        ifbuf2[199:192] <= ifbuf2[207:200];
        ifbuf2[207:200] <= ifbuf2[215:208];
        ifbuf2[215:208] <= ifbuf2[223:216];
        ifbuf2[223:216] <= ifbuf2[231:224];
        ifbuf2[231:224] <= ifbuf2[239:232];
        ifbuf2[239:232] <= ifbuf2[247:240];
        ifbuf2[247:240] <= ifbuf2[255:248];
        ifbuf2[255:248] <= ifbuf2[263:256];
        ifbuf2[263:256] <= ifbuf2[271:264];
        ifbuf2[271:264] <= ifbuf2[279:272];
        ifbuf2[279:272] <= ifbuf2[287:280];
        
        ifbuf3[15:8] <= ifbuf3[23:16];
        ifbuf3[23:16] <= ifbuf3[31:24];
        ifbuf3[31:24] <= ifbuf3[39:32];
        ifbuf3[39:32] <= ifbuf3[47:40];
        ifbuf3[47:40] <= ifbuf3[55:48];
        ifbuf3[55:48] <= ifbuf3[63:56];
        ifbuf3[63:56] <= ifbuf3[71:64];
        ifbuf3[71:64] <= ifbuf3[79:72];
        ifbuf3[79:72] <= ifbuf3[87:80];
        ifbuf3[87:80] <= ifbuf3[95:88];
        ifbuf3[95:88] <= ifbuf3[103:96];
        ifbuf3[103:96] <= ifbuf3[111:104];
        ifbuf3[111:104] <= ifbuf3[119:112];
        ifbuf3[119:112] <= ifbuf3[127:120];
        ifbuf3[127:120] <= ifbuf3[135:128];
        ifbuf3[135:128] <= ifbuf3[143:136];
        
        ifbuf3[159:152] <= ifbuf3[167:160];
        ifbuf3[167:160] <= ifbuf3[175:168];
        ifbuf3[175:168] <= ifbuf3[183:176];
        ifbuf3[183:176] <= ifbuf3[191:184];
        ifbuf3[191:184] <= ifbuf3[199:192];
        ifbuf3[199:192] <= ifbuf3[207:200];
        ifbuf3[207:200] <= ifbuf3[215:208];
        ifbuf3[215:208] <= ifbuf3[223:216];
        ifbuf3[223:216] <= ifbuf3[231:224];
        ifbuf3[231:224] <= ifbuf3[239:232];
        ifbuf3[239:232] <= ifbuf3[247:240];
        ifbuf3[247:240] <= ifbuf3[255:248];
        ifbuf3[255:248] <= ifbuf3[263:256];
        ifbuf3[263:256] <= ifbuf3[271:264];
        ifbuf3[271:264] <= ifbuf3[279:272];
        ifbuf3[279:272] <= ifbuf3[287:280];
        
        ifbuf4[15:8] <= ifbuf4[23:16];
        ifbuf4[23:16] <= ifbuf4[31:24];
        ifbuf4[31:24] <= ifbuf4[39:32];
        ifbuf4[39:32] <= ifbuf4[47:40];
        ifbuf4[47:40] <= ifbuf4[55:48];
        ifbuf4[55:48] <= ifbuf4[63:56];
        ifbuf4[63:56] <= ifbuf4[71:64];
        ifbuf4[71:64] <= ifbuf4[79:72];
        ifbuf4[79:72] <= ifbuf4[87:80];
        ifbuf4[87:80] <= ifbuf4[95:88];
        ifbuf4[95:88] <= ifbuf4[103:96];
        ifbuf4[103:96] <= ifbuf4[111:104];
        ifbuf4[111:104] <= ifbuf4[119:112];
        ifbuf4[119:112] <= ifbuf4[127:120];
        ifbuf4[127:120] <= ifbuf4[135:128];
        ifbuf4[135:128] <= ifbuf4[143:136];
        
        ifbuf4[159:152] <= ifbuf4[167:160];
        ifbuf4[167:160] <= ifbuf4[175:168];
        ifbuf4[175:168] <= ifbuf4[183:176];
        ifbuf4[183:176] <= ifbuf4[191:184];
        ifbuf4[191:184] <= ifbuf4[199:192];
        ifbuf4[199:192] <= ifbuf4[207:200];
        ifbuf4[207:200] <= ifbuf4[215:208];
        ifbuf4[215:208] <= ifbuf4[223:216];
        ifbuf4[223:216] <= ifbuf4[231:224];
        ifbuf4[231:224] <= ifbuf4[239:232];
        ifbuf4[239:232] <= ifbuf4[247:240];
        ifbuf4[247:240] <= ifbuf4[255:248];
        ifbuf4[255:248] <= ifbuf4[263:256];
        ifbuf4[263:256] <= ifbuf4[271:264];
        ifbuf4[271:264] <= ifbuf4[279:272];
        ifbuf4[279:272] <= ifbuf4[287:280];
        
        ifbuf5[15:8] <= ifbuf5[23:16];
        ifbuf5[23:16] <= ifbuf5[31:24];
        ifbuf5[31:24] <= ifbuf5[39:32];
        ifbuf5[39:32] <= ifbuf5[47:40];
        ifbuf5[47:40] <= ifbuf5[55:48];
        ifbuf5[55:48] <= ifbuf5[63:56];
        ifbuf5[63:56] <= ifbuf5[71:64];
        ifbuf5[71:64] <= ifbuf5[79:72];
        ifbuf5[79:72] <= ifbuf5[87:80];
        ifbuf5[87:80] <= ifbuf5[95:88];
        ifbuf5[95:88] <= ifbuf5[103:96];
        ifbuf5[103:96] <= ifbuf5[111:104];
        ifbuf5[111:104] <= ifbuf5[119:112];
        ifbuf5[119:112] <= ifbuf5[127:120];
        ifbuf5[127:120] <= ifbuf5[135:128];
        ifbuf5[135:128] <= ifbuf5[143:136];
        
        ifbuf5[159:152] <= ifbuf5[167:160];
        ifbuf5[167:160] <= ifbuf5[175:168];
        ifbuf5[175:168] <= ifbuf5[183:176];
        ifbuf5[183:176] <= ifbuf5[191:184];
        ifbuf5[191:184] <= ifbuf5[199:192];
        ifbuf5[199:192] <= ifbuf5[207:200];
        ifbuf5[207:200] <= ifbuf5[215:208];
        ifbuf5[215:208] <= ifbuf5[223:216];
        ifbuf5[223:216] <= ifbuf5[231:224];
        ifbuf5[231:224] <= ifbuf5[239:232];
        ifbuf5[239:232] <= ifbuf5[247:240];
        ifbuf5[247:240] <= ifbuf5[255:248];
        ifbuf5[255:248] <= ifbuf5[263:256];
        ifbuf5[263:256] <= ifbuf5[271:264];
        ifbuf5[271:264] <= ifbuf5[279:272];
        ifbuf5[279:272] <= ifbuf5[287:280];

        ifbuf6[15:8] <= ifbuf6[23:16];
        ifbuf6[23:16] <= ifbuf6[31:24];
        ifbuf6[31:24] <= ifbuf6[39:32];
        ifbuf6[39:32] <= ifbuf6[47:40];
        ifbuf6[47:40] <= ifbuf6[55:48];
        ifbuf6[55:48] <= ifbuf6[63:56];
        ifbuf6[63:56] <= ifbuf6[71:64];
        ifbuf6[71:64] <= ifbuf6[79:72];
        ifbuf6[79:72] <= ifbuf6[87:80];
        ifbuf6[87:80] <= ifbuf6[95:88];
        ifbuf6[95:88] <= ifbuf6[103:96];
        ifbuf6[103:96] <= ifbuf6[111:104];
        ifbuf6[111:104] <= ifbuf6[119:112];
        ifbuf6[119:112] <= ifbuf6[127:120];
        ifbuf6[127:120] <= ifbuf6[135:128];
        ifbuf6[135:128] <= ifbuf6[143:136];

        ifbuf6[159:152] <= ifbuf6[167:160];
        ifbuf6[167:160] <= ifbuf6[175:168];
        ifbuf6[175:168] <= ifbuf6[183:176];
        ifbuf6[183:176] <= ifbuf6[191:184];
        ifbuf6[191:184] <= ifbuf6[199:192];
        ifbuf6[199:192] <= ifbuf6[207:200];
        ifbuf6[207:200] <= ifbuf6[215:208];
        ifbuf6[215:208] <= ifbuf6[223:216];
        ifbuf6[223:216] <= ifbuf6[231:224];
        ifbuf6[231:224] <= ifbuf6[239:232];
        ifbuf6[239:232] <= ifbuf6[247:240];
        ifbuf6[247:240] <= ifbuf6[255:248];
        ifbuf6[255:248] <= ifbuf6[263:256];
        ifbuf6[263:256] <= ifbuf6[271:264];
        ifbuf6[271:264] <= ifbuf6[279:272];
        ifbuf6[279:272] <= ifbuf6[287:280];
        
        
        if (initializing == 1) begin
            ifbuf1[151:144] <= ifmap_in2[7:0];
            ifbuf2[151:144] <= ifmap_in2[15:8];
            ifbuf3[151:144] <= ifmap_in2[23:16];
            ifbuf4[151:144] <= ifmap_in4[7:0];
            ifbuf5[151:144] <= ifmap_in4[15:8];
            ifbuf6[151:144] <= ifmap_in4[23:16];
            ifbuf1[7:0] <= ifmap_in1[7:0];
            ifbuf2[7:0] <= ifmap_in1[15:8];
            ifbuf3[7:0] <= ifmap_in1[23:16];
            ifbuf4[7:0] <= ifmap_in3[7:0];
            ifbuf5[7:0] <= ifmap_in3[15:8];
            ifbuf6[7:0] <= ifmap_in3[23:16];
        end
        else begin
            ifbuf1[7:0] <= ifbuf1[15:8];
            ifbuf1[151:144] <= ifbuf1[159:152];
            ifbuf2[7:0] <= ifbuf2[15:8];
            ifbuf2[151:144] <= ifbuf2[159:152];
            ifbuf3[7:0] <= ifbuf3[15:8];
            ifbuf3[151:144] <= ifbuf3[159:152];
            ifbuf4[7:0] <= ifbuf4[15:8];
            ifbuf4[151:144] <= ifbuf4[159:152];
            ifbuf5[7:0] <= ifbuf5[15:8];
            ifbuf5[151:144] <= ifbuf5[159:152];
            ifbuf6[7:0] <= ifbuf6[15:8];
            ifbuf6[151:144] <= ifbuf6[159:152];
        end
        
        ifbuf1[287:280] <= ifbuf2[151:144];
        ifbuf2[287:280] <= ifbuf3[151:144];
        ifbuf3[287:280] <= ifmap_in2[7:0];
        ifbuf4[287:280] <= ifbuf5[151:144];
        ifbuf5[287:280] <= ifbuf6[151:144];
        ifbuf6[287:280] <= ifmap_in4[7:0];
        ifbuf1[143:136] <= ifbuf2[7:0];
        ifbuf2[143:136] <= ifbuf3[7:0];
        ifbuf3[143:136] <= ifmap_in1[7:0];
        ifbuf4[143:136] <= ifbuf5[7:0];
        ifbuf5[143:136] <= ifbuf6[7:0];
        ifbuf6[143:136] <= ifmap_in3[7:0];
        

    end

    `Layer4: begin
        ifbuf1[23:16] <= ifbuf1[39:32];
        ifbuf1[31:24] <= ifbuf1[47:40];
        ifbuf1[39:32] <= ifbuf1[55:48];
        ifbuf1[47:40] <= ifbuf1[63:56];
        ifbuf1[55:48] <= ifbuf1[71:64];
        ifbuf1[63:56] <= ifbuf1[79:72];
        ifbuf1[71:64] <= ifbuf1[87:80];
        ifbuf1[79:72] <= ifbuf1[95:88];
        ifbuf1[87:80] <= ifbuf1[103:96];
        ifbuf1[95:88] <= ifbuf1[111:104];
        ifbuf1[103:96] <= ifbuf1[119:112];
        ifbuf1[111:104] <= ifbuf1[127:120];
        ifbuf1[119:112] <= ifbuf1[135:128];
        ifbuf1[127:120] <= ifbuf1[143:136];

        ifbuf1[167:160] <= ifbuf1[183:176];
        ifbuf1[175:168] <= ifbuf1[191:184];
        ifbuf1[183:176] <= ifbuf1[199:192];
        ifbuf1[191:184] <= ifbuf1[207:200];
        ifbuf1[199:192] <= ifbuf1[215:208];
        ifbuf1[207:200] <= ifbuf1[223:216];
        ifbuf1[215:208] <= ifbuf1[231:224];
        ifbuf1[223:216] <= ifbuf1[239:232];
        ifbuf1[231:224] <= ifbuf1[247:240];
        ifbuf1[239:232] <= ifbuf1[255:248];
        ifbuf1[247:240] <= ifbuf1[263:256];
        ifbuf1[255:248] <= ifbuf1[271:264];
        ifbuf1[263:256] <= ifbuf1[279:272];
        ifbuf1[271:264] <= ifbuf1[287:280];

        ifbuf2[23:16] <= ifbuf2[39:32];
        ifbuf2[31:24] <= ifbuf2[47:40];
        ifbuf2[39:32] <= ifbuf2[55:48];
        ifbuf2[47:40] <= ifbuf2[63:56];
        ifbuf2[55:48] <= ifbuf2[71:64];
        ifbuf2[63:56] <= ifbuf2[79:72];
        ifbuf2[71:64] <= ifbuf2[87:80];
        ifbuf2[79:72] <= ifbuf2[95:88];
        ifbuf2[87:80] <= ifbuf2[103:96];
        ifbuf2[95:88] <= ifbuf2[111:104];
        ifbuf2[103:96] <= ifbuf2[119:112];
        ifbuf2[111:104] <= ifbuf2[127:120];
        ifbuf2[119:112] <= ifbuf2[135:128];
        ifbuf2[127:120] <= ifbuf2[143:136];

        ifbuf2[167:160] <= ifbuf2[183:176];
        ifbuf2[175:168] <= ifbuf2[191:184];
        ifbuf2[183:176] <= ifbuf2[199:192];
        ifbuf2[191:184] <= ifbuf2[207:200];
        ifbuf2[199:192] <= ifbuf2[215:208];
        ifbuf2[207:200] <= ifbuf2[223:216];
        ifbuf2[215:208] <= ifbuf2[231:224];
        ifbuf2[223:216] <= ifbuf2[239:232];
        ifbuf2[231:224] <= ifbuf2[247:240];
        ifbuf2[239:232] <= ifbuf2[255:248];
        ifbuf2[247:240] <= ifbuf2[263:256];
        ifbuf2[255:248] <= ifbuf2[271:264];
        ifbuf2[263:256] <= ifbuf2[279:272];
        ifbuf2[271:264] <= ifbuf2[287:280];

        ifbuf3[23:16] <= ifbuf3[39:32];
        ifbuf3[31:24] <= ifbuf3[47:40];
        ifbuf3[39:32] <= ifbuf3[55:48];
        ifbuf3[47:40] <= ifbuf3[63:56];
        ifbuf3[55:48] <= ifbuf3[71:64];
        ifbuf3[63:56] <= ifbuf3[79:72];
        ifbuf3[71:64] <= ifbuf3[87:80];
        ifbuf3[79:72] <= ifbuf3[95:88];
        ifbuf3[87:80] <= ifbuf3[103:96];
        ifbuf3[95:88] <= ifbuf3[111:104];
        ifbuf3[103:96] <= ifbuf3[119:112];
        ifbuf3[111:104] <= ifbuf3[127:120];
        ifbuf3[119:112] <= ifbuf3[135:128];
        ifbuf3[127:120] <= ifbuf3[143:136];

        ifbuf3[167:160] <= ifbuf3[183:176];
        ifbuf3[175:168] <= ifbuf3[191:184];
        ifbuf3[183:176] <= ifbuf3[199:192];
        ifbuf3[191:184] <= ifbuf3[207:200];
        ifbuf3[199:192] <= ifbuf3[215:208];
        ifbuf3[207:200] <= ifbuf3[223:216];
        ifbuf3[215:208] <= ifbuf3[231:224];
        ifbuf3[223:216] <= ifbuf3[239:232];
        ifbuf3[231:224] <= ifbuf3[247:240];
        ifbuf3[239:232] <= ifbuf3[255:248];
        ifbuf3[247:240] <= ifbuf3[263:256];
        ifbuf3[255:248] <= ifbuf3[271:264];
        ifbuf3[263:256] <= ifbuf3[279:272];
        ifbuf3[271:264] <= ifbuf3[287:280];

        ifbuf4[23:16] <= ifbuf4[39:32];
        ifbuf4[31:24] <= ifbuf4[47:40];
        ifbuf4[39:32] <= ifbuf4[55:48];
        ifbuf4[47:40] <= ifbuf4[63:56];
        ifbuf4[55:48] <= ifbuf4[71:64];
        ifbuf4[63:56] <= ifbuf4[79:72];
        ifbuf4[71:64] <= ifbuf4[87:80];
        ifbuf4[79:72] <= ifbuf4[95:88];
        ifbuf4[87:80] <= ifbuf4[103:96];
        ifbuf4[95:88] <= ifbuf4[111:104];
        ifbuf4[103:96] <= ifbuf4[119:112];
        ifbuf4[111:104] <= ifbuf4[127:120];
        ifbuf4[119:112] <= ifbuf4[135:128];
        ifbuf4[127:120] <= ifbuf4[143:136];

        ifbuf4[167:160] <= ifbuf4[183:176];
        ifbuf4[175:168] <= ifbuf4[191:184];
        ifbuf4[183:176] <= ifbuf4[199:192];
        ifbuf4[191:184] <= ifbuf4[207:200];
        ifbuf4[199:192] <= ifbuf4[215:208];
        ifbuf4[207:200] <= ifbuf4[223:216];
        ifbuf4[215:208] <= ifbuf4[231:224];
        ifbuf4[223:216] <= ifbuf4[239:232];
        ifbuf4[231:224] <= ifbuf4[247:240];
        ifbuf4[239:232] <= ifbuf4[255:248];
        ifbuf4[247:240] <= ifbuf4[263:256];
        ifbuf4[255:248] <= ifbuf4[271:264];
        ifbuf4[263:256] <= ifbuf4[279:272];
        ifbuf4[271:264] <= ifbuf4[287:280];

        ifbuf5[23:16] <= ifbuf5[39:32];
        ifbuf5[31:24] <= ifbuf5[47:40];
        ifbuf5[39:32] <= ifbuf5[55:48];
        ifbuf5[47:40] <= ifbuf5[63:56];
        ifbuf5[55:48] <= ifbuf5[71:64];
        ifbuf5[63:56] <= ifbuf5[79:72];
        ifbuf5[71:64] <= ifbuf5[87:80];
        ifbuf5[79:72] <= ifbuf5[95:88];
        ifbuf5[87:80] <= ifbuf5[103:96];
        ifbuf5[95:88] <= ifbuf5[111:104];
        ifbuf5[103:96] <= ifbuf5[119:112];
        ifbuf5[111:104] <= ifbuf5[127:120];
        ifbuf5[119:112] <= ifbuf5[135:128];
        ifbuf5[127:120] <= ifbuf5[143:136];

        ifbuf5[167:160] <= ifbuf5[183:176];
        ifbuf5[175:168] <= ifbuf5[191:184];
        ifbuf5[183:176] <= ifbuf5[199:192];
        ifbuf5[191:184] <= ifbuf5[207:200];
        ifbuf5[199:192] <= ifbuf5[215:208];
        ifbuf5[207:200] <= ifbuf5[223:216];
        ifbuf5[215:208] <= ifbuf5[231:224];
        ifbuf5[223:216] <= ifbuf5[239:232];
        ifbuf5[231:224] <= ifbuf5[247:240];
        ifbuf5[239:232] <= ifbuf5[255:248];
        ifbuf5[247:240] <= ifbuf5[263:256];
        ifbuf5[255:248] <= ifbuf5[271:264];
        ifbuf5[263:256] <= ifbuf5[279:272];
        ifbuf5[271:264] <= ifbuf5[287:280];

        ifbuf6[23:16] <= ifbuf6[39:32];
        ifbuf6[31:24] <= ifbuf6[47:40];
        ifbuf6[39:32] <= ifbuf6[55:48];
        ifbuf6[47:40] <= ifbuf6[63:56];
        ifbuf6[55:48] <= ifbuf6[71:64];
        ifbuf6[63:56] <= ifbuf6[79:72];
        ifbuf6[71:64] <= ifbuf6[87:80];
        ifbuf6[79:72] <= ifbuf6[95:88];
        ifbuf6[87:80] <= ifbuf6[103:96];
        ifbuf6[95:88] <= ifbuf6[111:104];
        ifbuf6[103:96] <= ifbuf6[119:112];
        ifbuf6[111:104] <= ifbuf6[127:120];
        ifbuf6[119:112] <= ifbuf6[135:128];
        ifbuf6[127:120] <= ifbuf6[143:136];
        
        ifbuf6[167:160] <= ifbuf6[183:176];
        ifbuf6[175:168] <= ifbuf6[191:184];
        ifbuf6[183:176] <= ifbuf6[199:192];
        ifbuf6[191:184] <= ifbuf6[207:200];
        ifbuf6[199:192] <= ifbuf6[215:208];
        ifbuf6[207:200] <= ifbuf6[223:216];
        ifbuf6[215:208] <= ifbuf6[231:224];
        ifbuf6[223:216] <= ifbuf6[239:232];
        ifbuf6[231:224] <= ifbuf6[247:240];
        ifbuf6[239:232] <= ifbuf6[255:248];
        ifbuf6[247:240] <= ifbuf6[263:256];
        ifbuf6[255:248] <= ifbuf6[271:264];
        ifbuf6[263:256] <= ifbuf6[279:272];
        ifbuf6[271:264] <= ifbuf6[287:280];

        if (initializing == 1) begin
            ifbuf1[159:152] <= ifmap_in4[7:0];
            ifbuf2[159:152] <= ifmap_in4[15:8];
            ifbuf3[159:152] <= ifmap_in4[23:16];
            ifbuf4[159:152] <= ifmap_in4[31:24];
            ifbuf5[159:152] <= ifmap_in4[39:32];
            ifbuf6[159:152] <= ifmap_in4[47:40];
            ifbuf1[15:8] <= ifmap_in3[7:0];
            ifbuf2[15:8] <= ifmap_in3[15:8];
            ifbuf3[15:8] <= ifmap_in3[23:16];
            ifbuf4[15:8] <= ifmap_in3[31:24];
            ifbuf5[15:8] <= ifmap_in3[39:32];
            ifbuf6[15:8] <= ifmap_in3[47:40];
            ifbuf1[151:144] <= ifmap_in2[7:0];
            ifbuf2[151:144] <= ifmap_in2[15:8];
            ifbuf3[151:144] <= ifmap_in2[23:16];
            ifbuf4[151:144] <= ifmap_in2[31:24];
            ifbuf5[151:144] <= ifmap_in2[39:32];
            ifbuf6[151:144] <= ifmap_in2[47:40];
            ifbuf1[7:0] <= ifmap_in1[7:0];
            ifbuf2[7:0] <= ifmap_in1[15:8];
            ifbuf3[7:0] <= ifmap_in1[23:16];
            ifbuf4[7:0] <= ifmap_in1[31:24];
            ifbuf5[7:0] <= ifmap_in1[39:32];
            ifbuf6[7:0] <= ifmap_in1[47:40];
        end
        else begin
            ifbuf1[7:0] <= ifbuf1[23:16];
            ifbuf1[15:8] <= ifbuf1[31:24];
            ifbuf1[151:144] <= ifbuf1[167:160];
            ifbuf1[159:152] <= ifbuf1[175:168];
            ifbuf2[7:0] <= ifbuf2[23:16];
            ifbuf2[15:8] <= ifbuf2[31:24];
            ifbuf2[151:144] <= ifbuf2[167:160];
            ifbuf2[159:152] <= ifbuf2[175:168];
            ifbuf3[7:0] <= ifbuf3[23:16];
            ifbuf3[15:8] <= ifbuf3[31:24];
            ifbuf3[151:144] <= ifbuf3[167:160];
            ifbuf3[159:152] <= ifbuf3[175:168];
            ifbuf4[7:0] <= ifbuf4[23:16];
            ifbuf4[15:8] <= ifbuf4[31:24];
            ifbuf4[151:144] <= ifbuf4[167:160];
            ifbuf4[159:152] <= ifbuf4[175:168];
            ifbuf5[7:0] <= ifbuf5[23:16];
            ifbuf5[15:8] <= ifbuf5[31:24];
            ifbuf5[151:144] <= ifbuf5[167:160];
            ifbuf5[159:152] <= ifbuf5[175:168];
            ifbuf6[7:0] <= ifbuf6[23:16];
            ifbuf6[15:8] <= ifbuf6[31:24];
            ifbuf6[151:144] <= ifbuf6[167:160];
            ifbuf6[159:152] <= ifbuf6[175:168];
        end
        
        ifbuf1[287:280] <= ifbuf3[159:152];
        ifbuf2[287:280] <= ifmap_in4[7:0];
        ifbuf3[287:280] <= ifmap_in4[15:8];
        ifbuf4[287:280] <= ifbuf6[159:152];
        ifbuf5[287:280] <= ifmap_in4[23:16];
        ifbuf6[287:280] <= ifmap_in4[31:24];
        ifbuf1[143:136] <= ifbuf3[15:8];
        ifbuf2[143:136] <= ifmap_in3[7:0];
        ifbuf3[143:136] <= ifmap_in3[15:8];
        ifbuf4[143:136] <= ifbuf6[15:8];
        ifbuf5[143:136] <= ifmap_in3[23:16];
        ifbuf6[143:136] <= ifmap_in3[31:24];
        ifbuf1[279:272] <= ifbuf3[151:144];
        ifbuf2[279:272] <= ifmap_in2[7:0];
        ifbuf3[279:272] <= ifmap_in2[15:8];
        ifbuf4[279:272] <= ifbuf6[151:144];
        ifbuf5[279:272] <= ifmap_in2[23:16];
        ifbuf6[279:272] <= ifmap_in2[31:24];
        ifbuf1[135:128] <= ifbuf3[7:0];
        ifbuf2[135:128] <= ifmap_in1[7:0];
        ifbuf3[135:128] <= ifmap_in1[15:8];
        ifbuf4[135:128] <= ifbuf6[7:0];
        ifbuf5[135:128] <= ifmap_in1[23:16];
        ifbuf6[135:128] <= ifmap_in1[31:24];
        

    end
    `Layer5: begin

    end
    endcase
end

pe_group pe_group1(
    .clk(clk),
    .weight_en(weight_en),
    .weight1_in(weight11_in),
    .weight2_in(weight12_in),
    .weight3_in(weight13_in),
    .weight4_in(weight14_in),
    .weight5_in(weight15_in),
    .weight6_in(weight16_in),
    .calculate_en(calculate_en),
    .ifmap_in1(ifbuf1[7:0]),
    .ifmap_in2(ifbuf1[151:144]),
    .ifmap_in3(ifbuf1[15:8]),
    .ifmap_in4(ifbuf1[159:152]),
    .groupsum_out1(psum11),
    .groupsum_out2(psum12),
    .layer(layer)
);

pe_group pe_group2(
    .clk(clk),
    .weight_en(weight_en),
    .weight1_in(weight21_in),
    .weight2_in(weight22_in),
    .weight3_in(weight23_in),
    .weight4_in(weight24_in),
    .weight5_in(weight25_in),
    .weight6_in(weight26_in),
    .calculate_en(calculate_en),
    .ifmap_in1(ifbuf2[7:0]),
    .ifmap_in2(ifbuf2[151:144]),
    .ifmap_in3(ifbuf2[15:8]),
    .ifmap_in4(ifbuf2[159:152]),
    .groupsum_out1(psum21),
    .groupsum_out2(psum22),
    .layer(layer)
);

pe_group pe_group3(
    .clk(clk),
    .weight_en(weight_en),
    .weight1_in(weight31_in),
    .weight2_in(weight32_in),
    .weight3_in(weight33_in),
    .weight4_in(weight34_in),
    .weight5_in(weight35_in),
    .weight6_in(weight36_in),
    .calculate_en(calculate_en),
    .ifmap_in1(ifbuf3[7:0]),
    .ifmap_in2(ifbuf3[151:144]),
    .ifmap_in3(ifbuf3[15:8]),
    .ifmap_in4(ifbuf3[159:152]),
    .groupsum_out1(psum31),
    .groupsum_out2(psum32),
    .layer(layer)
);

pe_group pe_group4(
    .clk(clk),
    .weight_en(weight_en),
    .weight1_in(weight41_in),
    .weight2_in(weight42_in),
    .weight3_in(weight43_in),
    .weight4_in(weight44_in),
    .weight5_in(weight45_in),
    .weight6_in(weight46_in),
    .calculate_en(calculate_en),
    .ifmap_in1(ifbuf5[7:0]),
    .ifmap_in2(ifbuf5[151:144]),
    .ifmap_in3(ifbuf5[15:8]),
    .ifmap_in4(ifbuf5[159:152]),
    .groupsum_out1(psum41),
    .groupsum_out2(psum42),
    .layer(layer)
);

pe_group pe_group5(
    .clk(clk),
    .weight_en(weight_en),
    .weight1_in(weight51_in),
    .weight2_in(weight52_in),
    .weight3_in(weight53_in),
    .weight4_in(weight54_in),
    .weight5_in(weight55_in),
    .weight6_in(weight56_in),
    .calculate_en(calculate_en),
    .ifmap_in1(ifbuf5[7:0]),
    .ifmap_in2(ifbuf5[151:144]),
    .ifmap_in3(ifbuf5[15:8]),
    .ifmap_in4(ifbuf5[159:152]),
    .groupsum_out1(psum51),
    .groupsum_out2(psum52),
    .layer(layer)
);

pe_group pe_group6(
    .clk(clk),
    .weight_en(weight_en),
    .weight1_in(weight61_in),
    .weight2_in(weight62_in),
    .weight3_in(weight63_in),
    .weight4_in(weight64_in),
    .weight5_in(weight65_in),
    .weight6_in(weight66_in),
    .calculate_en(calculate_en),
    .ifmap_in1(ifbuf6[7:0]),
    .ifmap_in2(ifbuf6[151:144]),
    .ifmap_in3(ifbuf6[15:8]),
    .ifmap_in4(ifbuf6[159:152]),
    .groupsum_out1(psum61),
    .groupsum_out2(psum62),
    .layer(layer)
);


endmodule
