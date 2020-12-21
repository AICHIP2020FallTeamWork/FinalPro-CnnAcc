`include "defines.v"

module channelBuf(
         clk,
         we,
         rst,
         waddr,
         wdata1,
         wdata2,
         wdata3,
         wdata4,
         wdata5,
         wdata6,
         wdata7,
         wdata8,
         done,
         dout
);

input wire clk;
input wire we;
input wire rst;

input wire[5:0] waddr;
input wire[21:0] wdata1;
input wire[21:0] wdata2;
input wire[21:0] wdata3;
input wire[21:0] wdata4;
input wire[21:0] wdata5;
input wire[21:0] wdata6;
input wire[21:0] wdata7;
input wire[21:0] wdata8;
/********************************

********************************/
reg signed     [21:0]      registers1  [0:63];
reg signed     [21:0]      registers2  [0:63];
reg signed     [21:0]      registers3  [0:63];
reg signed     [21:0]      registers4  [0:63];
reg signed     [21:0]      registers5  [0:63];
reg signed     [21:0]      registers6  [0:63];
reg signed     [21:0]      registers7  [0:63];
reg signed     [21:0]      registers8  [0:63];
//
reg signed     [22:0]      registers11 [0:31];
reg signed     [23:0]      registers12 [0:15];
reg signed     [24:0]      registers13 [0:7];
reg signed     [25:0]      registers14 [0:3];
reg signed     [26:0]      registers15 [0:1];
reg signed     [27:0]            registers16 ;

reg signed     [22:0]      registers21 [0:31];
reg signed     [23:0]      registers22 [0:15];
reg signed     [24:0]      registers23 [0:7];
reg signed     [25:0]      registers24 [0:3];
reg signed     [26:0]      registers25 [0:1];
reg signed     [27:0]            registers26;

reg signed     [22:0]      registers31 [0:31];
reg signed     [23:0]      registers32 [0:15];
reg signed     [24:0]      registers33 [0:7];
reg signed     [25:0]      registers34 [0:3];
reg signed     [26:0]      registers35 [0:1];
reg signed     [27:0]            registers36 ;

reg signed     [22:0]      registers41 [0:31];
reg signed     [23:0]      registers42 [0:15];
reg signed     [24:0]      registers43 [0:7];
reg signed     [25:0]      registers44 [0:3];
reg signed     [26:0]      registers45 [0:1];
reg signed     [27:0]            registers46 ;

reg signed     [22:0]      registers51 [0:31];
reg signed     [23:0]      registers52 [0:15];
reg signed     [24:0]      registers53 [0:7];
reg signed     [25:0]      registers54 [0:3];
reg signed     [26:0]      registers55 [0:1];
reg signed     [27:0]            registers56;


reg signed     [22:0]      registers61 [0:31];
reg signed     [23:0]      registers62 [0:15];
reg signed     [24:0]      registers63 [0:7];
reg signed     [25:0]      registers64 [0:3];
reg signed     [26:0]      registers65 [0:1];
reg signed     [27:0]            registers66 ;


reg signed     [22:0]      registers71 [0:31];
reg signed     [23:0]      registers72 [0:15];
reg signed     [24:0]      registers73 [0:7];
reg signed     [25:0]      registers74 [0:3];
reg signed     [26:0]      registers75 [0:1];
reg signed      [27:0]           registers76 ;

reg signed     [22:0]      registers81 [0:31];
reg signed     [23:0]      registers82 [0:15];
reg signed     [24:0]      registers83 [0:7];
reg signed     [25:0]      registers84 [0:3];
reg signed     [26:0]      registers85 [0:1];
reg signed     [27:0]            registers86;
reg signed     [7:0]       out1;
reg signed     [7:0]       out2;
reg signed     [7:0]       out3;
reg signed     [7:0]       out4;
reg signed     [7:0]       out5;
reg signed     [7:0]       out6;
reg signed     [7:0]       out7;
reg signed     [7:0]       out8;

reg [3:0] state;
output reg done;
output wire [63:0] dout;
assign dout = done? {out4,out3,out2,out1,out8,out7,out6,out5}:64'bz;

always @(posedge clk or negedge rst) begin
    if(rst == `RstEnable) begin
        state <= 1;
    end else if(we) begin
        registers1[waddr] <= wdata1;
        registers2[waddr] <= wdata2;
        registers3[waddr] <= wdata3;
        registers4[waddr] <= wdata4;
        registers5[waddr] <= wdata5;
        registers6[waddr] <= wdata6;
        registers7[waddr] <= wdata7;
        registers8[waddr] <= wdata8;
        if(waddr >= 0 && waddr <=7) begin
            case(state) 
                1:begin
                    done<=0;
                    state <= 2;
//-------
                    registers11[0] <= registers1[0]+registers1[32];
                    registers11[1] <= registers1[1]+registers1[33];
                    registers11[2] <= registers1[2]+registers1[34];
                    registers11[3] <= registers1[3]+registers1[35];
                    registers11[4] <= registers1[4]+registers1[36];
                    registers11[5] <= registers1[5]+registers1[37];
                    registers11[6] <= registers1[6]+registers1[38];
                    registers11[7] <= registers1[7]+registers1[39];
                    registers11[8] <= registers1[8]+registers1[40];
                    registers11[9] <= registers1[9]+registers1[41];
                    registers11[10] <= registers1[10]+registers1[42];
                    registers11[11] <= registers1[11]+registers1[43];
                    registers11[12] <= registers1[12]+registers1[44];
                    registers11[13] <= registers1[13]+registers1[45];
                    registers11[14] <= registers1[14]+registers1[46];
                    registers11[15] <= registers1[15]+registers1[47];
                    registers11[16] <= registers1[16]+registers1[48];
                    registers11[17] <= registers1[17]+registers1[49];
                    registers11[18] <= registers1[18]+registers1[50];
                    registers11[19] <= registers1[19]+registers1[51];
                    registers11[20] <= registers1[20]+registers1[52];
                    registers11[21] <= registers1[21]+registers1[53];
                    registers11[22] <= registers1[22]+registers1[54];
                    registers11[23] <= registers1[23]+registers1[55];
                    registers11[24] <= registers1[24]+registers1[56];
                    registers11[25] <= registers1[25]+registers1[57];
                    registers11[26] <= registers1[26]+registers1[58];
                    registers11[27] <= registers1[27]+registers1[59];
                    registers11[28] <= registers1[28]+registers1[60];
                    registers11[29] <= registers1[29]+registers1[61];
                    registers11[30] <= registers1[30]+registers1[62];
                    registers11[31] <= registers1[31]+registers1[63];
                    registers21[0] <= registers2[0]+registers2[32];
                    registers21[1] <= registers2[1]+registers2[33];
                    registers21[2] <= registers2[2]+registers2[34];
                    registers21[3] <= registers2[3]+registers2[35];
                    registers21[4] <= registers2[4]+registers2[36];
                    registers21[5] <= registers2[5]+registers2[37];
                    registers21[6] <= registers2[6]+registers2[38];
                    registers21[7] <= registers2[7]+registers2[39];
                    registers21[8] <= registers2[8]+registers2[40];
                    registers21[9] <= registers2[9]+registers2[41];
                    registers21[10] <= registers2[10]+registers2[42];
                    registers21[11] <= registers2[11]+registers2[43];
                    registers21[12] <= registers2[12]+registers2[44];
                    registers21[13] <= registers2[13]+registers2[45];
                    registers21[14] <= registers2[14]+registers2[46];
                    registers21[15] <= registers2[15]+registers2[47];
                    registers21[16] <= registers2[16]+registers2[48];
                    registers21[17] <= registers2[17]+registers2[49];
                    registers21[18] <= registers2[18]+registers2[50];
                    registers21[19] <= registers2[19]+registers2[51];
                    registers21[20] <= registers2[20]+registers2[52];
                    registers21[21] <= registers2[21]+registers2[53];
                    registers21[22] <= registers2[22]+registers2[54];
                    registers21[23] <= registers2[23]+registers2[55];
                    registers21[24] <= registers2[24]+registers2[56];
                    registers21[25] <= registers2[25]+registers2[57];
                    registers21[26] <= registers2[26]+registers2[58];
                    registers21[27] <= registers2[27]+registers2[59];
                    registers21[28] <= registers2[28]+registers2[60];
                    registers21[29] <= registers2[29]+registers2[61];
                    registers21[30] <= registers2[30]+registers2[62];
                    registers21[31] <= registers2[31]+registers2[63];
                    registers31[0] <= registers3[0]+registers3[32];
                    registers31[1] <= registers3[1]+registers3[33];
                    registers31[2] <= registers3[2]+registers3[34];
                    registers31[3] <= registers3[3]+registers3[35];
                    registers31[4] <= registers3[4]+registers3[36];
                    registers31[5] <= registers3[5]+registers3[37];
                    registers31[6] <= registers3[6]+registers3[38];
                    registers31[7] <= registers3[7]+registers3[39];
                    registers31[8] <= registers3[8]+registers3[40];
                    registers31[9] <= registers3[9]+registers3[41];
                    registers31[10] <= registers3[10]+registers3[42];
                    registers31[11] <= registers3[11]+registers3[43];
                    registers31[12] <= registers3[12]+registers3[44];
                    registers31[13] <= registers3[13]+registers3[45];
                    registers31[14] <= registers3[14]+registers3[46];
                    registers31[15] <= registers3[15]+registers3[47];
                    registers31[16] <= registers3[16]+registers3[48];
                    registers31[17] <= registers3[17]+registers3[49];
                    registers31[18] <= registers3[18]+registers3[50];
                    registers31[19] <= registers3[19]+registers3[51];
                    registers31[20] <= registers3[20]+registers3[52];
                    registers31[21] <= registers3[21]+registers3[53];
                    registers31[22] <= registers3[22]+registers3[54];
                    registers31[23] <= registers3[23]+registers3[55];
                    registers31[24] <= registers3[24]+registers3[56];
                    registers31[25] <= registers3[25]+registers3[57];
                    registers31[26] <= registers3[26]+registers3[58];
                    registers31[27] <= registers3[27]+registers3[59];
                    registers31[28] <= registers3[28]+registers3[60];
                    registers31[29] <= registers3[29]+registers3[61];
                    registers31[30] <= registers3[30]+registers3[62];
                    registers31[31] <= registers3[31]+registers3[63];
                    registers41[0] <= registers4[0]+registers4[32];
                    registers41[1] <= registers4[1]+registers4[33];
                    registers41[2] <= registers4[2]+registers4[34];
                    registers41[3] <= registers4[3]+registers4[35];
                    registers41[4] <= registers4[4]+registers4[36];
                    registers41[5] <= registers4[5]+registers4[37];
                    registers41[6] <= registers4[6]+registers4[38];
                    registers41[7] <= registers4[7]+registers4[39];
                    registers41[8] <= registers4[8]+registers4[40];
                    registers41[9] <= registers4[9]+registers4[41];
                    registers41[10] <= registers4[10]+registers4[42];
                    registers41[11] <= registers4[11]+registers4[43];
                    registers41[12] <= registers4[12]+registers4[44];
                    registers41[13] <= registers4[13]+registers4[45];
                    registers41[14] <= registers4[14]+registers4[46];
                    registers41[15] <= registers4[15]+registers4[47];
                    registers41[16] <= registers4[16]+registers4[48];
                    registers41[17] <= registers4[17]+registers4[49];
                    registers41[18] <= registers4[18]+registers4[50];
                    registers41[19] <= registers4[19]+registers4[51];
                    registers41[20] <= registers4[20]+registers4[52];
                    registers41[21] <= registers4[21]+registers4[53];
                    registers41[22] <= registers4[22]+registers4[54];
                    registers41[23] <= registers4[23]+registers4[55];
                    registers41[24] <= registers4[24]+registers4[56];
                    registers41[25] <= registers4[25]+registers4[57];
                    registers41[26] <= registers4[26]+registers4[58];
                    registers41[27] <= registers4[27]+registers4[59];
                    registers41[28] <= registers4[28]+registers4[60];
                    registers41[29] <= registers4[29]+registers4[61];
                    registers41[30] <= registers4[30]+registers4[62];
                    registers41[31] <= registers4[31]+registers4[63];
                    registers51[0] <= registers5[0]+registers5[32];
                    registers51[1] <= registers5[1]+registers5[33];
                    registers51[2] <= registers5[2]+registers5[34];
                    registers51[3] <= registers5[3]+registers5[35];
                    registers51[4] <= registers5[4]+registers5[36];
                    registers51[5] <= registers5[5]+registers5[37];
                    registers51[6] <= registers5[6]+registers5[38];
                    registers51[7] <= registers5[7]+registers5[39];
                    registers51[8] <= registers5[8]+registers5[40];
                    registers51[9] <= registers5[9]+registers5[41];
                    registers51[10] <= registers5[10]+registers5[42];
                    registers51[11] <= registers5[11]+registers5[43];
                    registers51[12] <= registers5[12]+registers5[44];
                    registers51[13] <= registers5[13]+registers5[45];
                    registers51[14] <= registers5[14]+registers5[46];
                    registers51[15] <= registers5[15]+registers5[47];
                    registers51[16] <= registers5[16]+registers5[48];
                    registers51[17] <= registers5[17]+registers5[49];
                    registers51[18] <= registers5[18]+registers5[50];
                    registers51[19] <= registers5[19]+registers5[51];
                    registers51[20] <= registers5[20]+registers5[52];
                    registers51[21] <= registers5[21]+registers5[53];
                    registers51[22] <= registers5[22]+registers5[54];
                    registers51[23] <= registers5[23]+registers5[55];
                    registers51[24] <= registers5[24]+registers5[56];
                    registers51[25] <= registers5[25]+registers5[57];
                    registers51[26] <= registers5[26]+registers5[58];
                    registers51[27] <= registers5[27]+registers5[59];
                    registers51[28] <= registers5[28]+registers5[60];
                    registers51[29] <= registers5[29]+registers5[61];
                    registers51[30] <= registers5[30]+registers5[62];
                    registers51[31] <= registers5[31]+registers5[63];
                    registers61[0] <= registers6[0]+registers6[32];
                    registers61[1] <= registers6[1]+registers6[33];
                    registers61[2] <= registers6[2]+registers6[34];
                    registers61[3] <= registers6[3]+registers6[35];
                    registers61[4] <= registers6[4]+registers6[36];
                    registers61[5] <= registers6[5]+registers6[37];
                    registers61[6] <= registers6[6]+registers6[38];
                    registers61[7] <= registers6[7]+registers6[39];
                    registers61[8] <= registers6[8]+registers6[40];
                    registers61[9] <= registers6[9]+registers6[41];
                    registers61[10] <= registers6[10]+registers6[42];
                    registers61[11] <= registers6[11]+registers6[43];
                    registers61[12] <= registers6[12]+registers6[44];
                    registers61[13] <= registers6[13]+registers6[45];
                    registers61[14] <= registers6[14]+registers6[46];
                    registers61[15] <= registers6[15]+registers6[47];
                    registers61[16] <= registers6[16]+registers6[48];
                    registers61[17] <= registers6[17]+registers6[49];
                    registers61[18] <= registers6[18]+registers6[50];
                    registers61[19] <= registers6[19]+registers6[51];
                    registers61[20] <= registers6[20]+registers6[52];
                    registers61[21] <= registers6[21]+registers6[53];
                    registers61[22] <= registers6[22]+registers6[54];
                    registers61[23] <= registers6[23]+registers6[55];
                    registers61[24] <= registers6[24]+registers6[56];
                    registers61[25] <= registers6[25]+registers6[57];
                    registers61[26] <= registers6[26]+registers6[58];
                    registers61[27] <= registers6[27]+registers6[59];
                    registers61[28] <= registers6[28]+registers6[60];
                    registers61[29] <= registers6[29]+registers6[61];
                    registers61[30] <= registers6[30]+registers6[62];
                    registers61[31] <= registers6[31]+registers6[63];
                    registers71[0] <= registers7[0]+registers7[32];
                    registers71[1] <= registers7[1]+registers7[33];
                    registers71[2] <= registers7[2]+registers7[34];
                    registers71[3] <= registers7[3]+registers7[35];
                    registers71[4] <= registers7[4]+registers7[36];
                    registers71[5] <= registers7[5]+registers7[37];
                    registers71[6] <= registers7[6]+registers7[38];
                    registers71[7] <= registers7[7]+registers7[39];
                    registers71[8] <= registers7[8]+registers7[40];
                    registers71[9] <= registers7[9]+registers7[41];
                    registers71[10] <= registers7[10]+registers7[42];
                    registers71[11] <= registers7[11]+registers7[43];
                    registers71[12] <= registers7[12]+registers7[44];
                    registers71[13] <= registers7[13]+registers7[45];
                    registers71[14] <= registers7[14]+registers7[46];
                    registers71[15] <= registers7[15]+registers7[47];
                    registers71[16] <= registers7[16]+registers7[48];
                    registers71[17] <= registers7[17]+registers7[49];
                    registers71[18] <= registers7[18]+registers7[50];
                    registers71[19] <= registers7[19]+registers7[51];
                    registers71[20] <= registers7[20]+registers7[52];
                    registers71[21] <= registers7[21]+registers7[53];
                    registers71[22] <= registers7[22]+registers7[54];
                    registers71[23] <= registers7[23]+registers7[55];
                    registers71[24] <= registers7[24]+registers7[56];
                    registers71[25] <= registers7[25]+registers7[57];
                    registers71[26] <= registers7[26]+registers7[58];
                    registers71[27] <= registers7[27]+registers7[59];
                    registers71[28] <= registers7[28]+registers7[60];
                    registers71[29] <= registers7[29]+registers7[61];
                    registers71[30] <= registers7[30]+registers7[62];
                    registers71[31] <= registers7[31]+registers7[63];
                    registers81[0] <= registers8[0]+registers8[32];
                    registers81[1] <= registers8[1]+registers8[33];
                    registers81[2] <= registers8[2]+registers8[34];
                    registers81[3] <= registers8[3]+registers8[35];
                    registers81[4] <= registers8[4]+registers8[36];
                    registers81[5] <= registers8[5]+registers8[37];
                    registers81[6] <= registers8[6]+registers8[38];
                    registers81[7] <= registers8[7]+registers8[39];
                    registers81[8] <= registers8[8]+registers8[40];
                    registers81[9] <= registers8[9]+registers8[41];
                    registers81[10] <= registers8[10]+registers8[42];
                    registers81[11] <= registers8[11]+registers8[43];
                    registers81[12] <= registers8[12]+registers8[44];
                    registers81[13] <= registers8[13]+registers8[45];
                    registers81[14] <= registers8[14]+registers8[46];
                    registers81[15] <= registers8[15]+registers8[47];
                    registers81[16] <= registers8[16]+registers8[48];
                    registers81[17] <= registers8[17]+registers8[49];
                    registers81[18] <= registers8[18]+registers8[50];
                    registers81[19] <= registers8[19]+registers8[51];
                    registers81[20] <= registers8[20]+registers8[52];
                    registers81[21] <= registers8[21]+registers8[53];
                    registers81[22] <= registers8[22]+registers8[54];
                    registers81[23] <= registers8[23]+registers8[55];
                    registers81[24] <= registers8[24]+registers8[56];
                    registers81[25] <= registers8[25]+registers8[57];
                    registers81[26] <= registers8[26]+registers8[58];
                    registers81[27] <= registers8[27]+registers8[59];
                    registers81[28] <= registers8[28]+registers8[60];
                    registers81[29] <= registers8[29]+registers8[61];
                    registers81[30] <= registers8[30]+registers8[62];
                    registers81[31] <= registers8[31]+registers8[63];
                end
//-------
                2:begin
                    state <= 3;
//-------
                    registers12[0] <= registers11[0]+registers11[16];
                    registers12[1] <= registers11[1]+registers11[17];
                    registers12[2] <= registers11[2]+registers11[18];
                    registers12[3] <= registers11[3]+registers11[19];
                    registers12[4] <= registers11[4]+registers11[20];
                    registers12[5] <= registers11[5]+registers11[21];
                    registers12[6] <= registers11[6]+registers11[22];
                    registers12[7] <= registers11[7]+registers11[23];
                    registers12[8] <= registers11[8]+registers11[24];
                    registers12[9] <= registers11[9]+registers11[25];
                    registers12[10] <= registers11[10]+registers11[26];
                    registers12[11] <= registers11[11]+registers11[27];
                    registers12[12] <= registers11[12]+registers11[28];
                    registers12[13] <= registers11[13]+registers11[29];
                    registers12[14] <= registers11[14]+registers11[30];
                    registers12[15] <= registers11[15]+registers11[31];
                    registers22[0] <= registers21[0]+registers21[16];
                    registers22[1] <= registers21[1]+registers21[17];
                    registers22[2] <= registers21[2]+registers21[18];
                    registers22[3] <= registers21[3]+registers21[19];
                    registers22[4] <= registers21[4]+registers21[20];
                    registers22[5] <= registers21[5]+registers21[21];
                    registers22[6] <= registers21[6]+registers21[22];
                    registers22[7] <= registers21[7]+registers21[23];
                    registers22[8] <= registers21[8]+registers21[24];
                    registers22[9] <= registers21[9]+registers21[25];
                    registers22[10] <= registers21[10]+registers21[26];
                    registers22[11] <= registers21[11]+registers21[27];
                    registers22[12] <= registers21[12]+registers21[28];
                    registers22[13] <= registers21[13]+registers21[29];
                    registers22[14] <= registers21[14]+registers21[30];
                    registers22[15] <= registers21[15]+registers21[31];
                    registers32[0] <= registers31[0]+registers31[16];
                    registers32[1] <= registers31[1]+registers31[17];
                    registers32[2] <= registers31[2]+registers31[18];
                    registers32[3] <= registers31[3]+registers31[19];
                    registers32[4] <= registers31[4]+registers31[20];
                    registers32[5] <= registers31[5]+registers31[21];
                    registers32[6] <= registers31[6]+registers31[22];
                    registers32[7] <= registers31[7]+registers31[23];
                    registers32[8] <= registers31[8]+registers31[24];
                    registers32[9] <= registers31[9]+registers31[25];
                    registers32[10] <= registers31[10]+registers31[26];
                    registers32[11] <= registers31[11]+registers31[27];
                    registers32[12] <= registers31[12]+registers31[28];
                    registers32[13] <= registers31[13]+registers31[29];
                    registers32[14] <= registers31[14]+registers31[30];
                    registers32[15] <= registers31[15]+registers31[31];
                    registers42[0] <= registers41[0]+registers41[16];
                    registers42[1] <= registers41[1]+registers41[17];
                    registers42[2] <= registers41[2]+registers41[18];
                    registers42[3] <= registers41[3]+registers41[19];
                    registers42[4] <= registers41[4]+registers41[20];
                    registers42[5] <= registers41[5]+registers41[21];
                    registers42[6] <= registers41[6]+registers41[22];
                    registers42[7] <= registers41[7]+registers41[23];
                    registers42[8] <= registers41[8]+registers41[24];
                    registers42[9] <= registers41[9]+registers41[25];
                    registers42[10] <= registers41[10]+registers41[26];
                    registers42[11] <= registers41[11]+registers41[27];
                    registers42[12] <= registers41[12]+registers41[28];
                    registers42[13] <= registers41[13]+registers41[29];
                    registers42[14] <= registers41[14]+registers41[30];
                    registers42[15] <= registers41[15]+registers41[31];
                    registers52[0] <= registers51[0]+registers51[16];
                    registers52[1] <= registers51[1]+registers51[17];
                    registers52[2] <= registers51[2]+registers51[18];
                    registers52[3] <= registers51[3]+registers51[19];
                    registers52[4] <= registers51[4]+registers51[20];
                    registers52[5] <= registers51[5]+registers51[21];
                    registers52[6] <= registers51[6]+registers51[22];
                    registers52[7] <= registers51[7]+registers51[23];
                    registers52[8] <= registers51[8]+registers51[24];
                    registers52[9] <= registers51[9]+registers51[25];
                    registers52[10] <= registers51[10]+registers51[26];
                    registers52[11] <= registers51[11]+registers51[27];
                    registers52[12] <= registers51[12]+registers51[28];
                    registers52[13] <= registers51[13]+registers51[29];
                    registers52[14] <= registers51[14]+registers51[30];
                    registers52[15] <= registers51[15]+registers51[31];
                    registers62[0] <= registers61[0]+registers61[16];
                    registers62[1] <= registers61[1]+registers61[17];
                    registers62[2] <= registers61[2]+registers61[18];
                    registers62[3] <= registers61[3]+registers61[19];
                    registers62[4] <= registers61[4]+registers61[20];
                    registers62[5] <= registers61[5]+registers61[21];
                    registers62[6] <= registers61[6]+registers61[22];
                    registers62[7] <= registers61[7]+registers61[23];
                    registers62[8] <= registers61[8]+registers61[24];
                    registers62[9] <= registers61[9]+registers61[25];
                    registers62[10] <= registers61[10]+registers61[26];
                    registers62[11] <= registers61[11]+registers61[27];
                    registers62[12] <= registers61[12]+registers61[28];
                    registers62[13] <= registers61[13]+registers61[29];
                    registers62[14] <= registers61[14]+registers61[30];
                    registers62[15] <= registers61[15]+registers61[31];
                    registers72[0] <= registers71[0]+registers71[16];
                    registers72[1] <= registers71[1]+registers71[17];
                    registers72[2] <= registers71[2]+registers71[18];
                    registers72[3] <= registers71[3]+registers71[19];
                    registers72[4] <= registers71[4]+registers71[20];
                    registers72[5] <= registers71[5]+registers71[21];
                    registers72[6] <= registers71[6]+registers71[22];
                    registers72[7] <= registers71[7]+registers71[23];
                    registers72[8] <= registers71[8]+registers71[24];
                    registers72[9] <= registers71[9]+registers71[25];
                    registers72[10] <= registers71[10]+registers71[26];
                    registers72[11] <= registers71[11]+registers71[27];
                    registers72[12] <= registers71[12]+registers71[28];
                    registers72[13] <= registers71[13]+registers71[29];
                    registers72[14] <= registers71[14]+registers71[30];
                    registers72[15] <= registers71[15]+registers71[31];
                    registers82[0] <= registers81[0]+registers81[16];
                    registers82[1] <= registers81[1]+registers81[17];
                    registers82[2] <= registers81[2]+registers81[18];
                    registers82[3] <= registers81[3]+registers81[19];
                    registers82[4] <= registers81[4]+registers81[20];
                    registers82[5] <= registers81[5]+registers81[21];
                    registers82[6] <= registers81[6]+registers81[22];
                    registers82[7] <= registers81[7]+registers81[23];
                    registers82[8] <= registers81[8]+registers81[24];
                    registers82[9] <= registers81[9]+registers81[25];
                    registers82[10] <= registers81[10]+registers81[26];
                    registers82[11] <= registers81[11]+registers81[27];
                    registers82[12] <= registers81[12]+registers81[28];
                    registers82[13] <= registers81[13]+registers81[29];
                    registers82[14] <= registers81[14]+registers81[30];
                    registers82[15] <= registers81[15]+registers81[31];
//-------
                end
                3: begin
                    state <= 4;
//---------
                    registers13[0] <= registers12[0]+registers12[8];
                    registers13[1] <= registers12[1]+registers12[9];
                    registers13[2] <= registers12[2]+registers12[10];
                    registers13[3] <= registers12[3]+registers12[11];
                    registers13[4] <= registers12[4]+registers12[12];
                    registers13[5] <= registers12[5]+registers12[13];
                    registers13[6] <= registers12[6]+registers12[14];
                    registers13[7] <= registers12[7]+registers12[15];
                    registers23[0] <= registers22[0]+registers22[8];
                    registers23[1] <= registers22[1]+registers22[9];
                    registers23[2] <= registers22[2]+registers22[10];
                    registers23[3] <= registers22[3]+registers22[11];
                    registers23[4] <= registers22[4]+registers22[12];
                    registers23[5] <= registers22[5]+registers22[13];
                    registers23[6] <= registers22[6]+registers22[14];
                    registers23[7] <= registers22[7]+registers22[15];
                    registers33[0] <= registers32[0]+registers32[8];
                    registers33[1] <= registers32[1]+registers32[9];
                    registers33[2] <= registers32[2]+registers32[10];
                    registers33[3] <= registers32[3]+registers32[11];
                    registers33[4] <= registers32[4]+registers32[12];
                    registers33[5] <= registers32[5]+registers32[13];
                    registers33[6] <= registers32[6]+registers32[14];
                    registers33[7] <= registers32[7]+registers32[15];
                    registers43[0] <= registers42[0]+registers42[8];
                    registers43[1] <= registers42[1]+registers42[9];
                    registers43[2] <= registers42[2]+registers42[10];
                    registers43[3] <= registers42[3]+registers42[11];
                    registers43[4] <= registers42[4]+registers42[12];
                    registers43[5] <= registers42[5]+registers42[13];
                    registers43[6] <= registers42[6]+registers42[14];
                    registers43[7] <= registers42[7]+registers42[15];
                    registers53[0] <= registers52[0]+registers52[8];
                    registers53[1] <= registers52[1]+registers52[9];
                    registers53[2] <= registers52[2]+registers52[10];
                    registers53[3] <= registers52[3]+registers52[11];
                    registers53[4] <= registers52[4]+registers52[12];
                    registers53[5] <= registers52[5]+registers52[13];
                    registers53[6] <= registers52[6]+registers52[14];
                    registers53[7] <= registers52[7]+registers52[15];
                    registers63[0] <= registers62[0]+registers62[8];
                    registers63[1] <= registers62[1]+registers62[9];
                    registers63[2] <= registers62[2]+registers62[10];
                    registers63[3] <= registers62[3]+registers62[11];
                    registers63[4] <= registers62[4]+registers62[12];
                    registers63[5] <= registers62[5]+registers62[13];
                    registers63[6] <= registers62[6]+registers62[14];
                    registers63[7] <= registers62[7]+registers62[15];
                    registers73[0] <= registers72[0]+registers72[8];
                    registers73[1] <= registers72[1]+registers72[9];
                    registers73[2] <= registers72[2]+registers72[10];
                    registers73[3] <= registers72[3]+registers72[11];
                    registers73[4] <= registers72[4]+registers72[12];
                    registers73[5] <= registers72[5]+registers72[13];
                    registers73[6] <= registers72[6]+registers72[14];
                    registers73[7] <= registers72[7]+registers72[15];
                    registers83[0] <= registers82[0]+registers82[8];
                    registers83[1] <= registers82[1]+registers82[9];
                    registers83[2] <= registers82[2]+registers82[10];
                    registers83[3] <= registers82[3]+registers82[11];
                    registers83[4] <= registers82[4]+registers82[12];
                    registers83[5] <= registers82[5]+registers82[13];
                    registers83[6] <= registers82[6]+registers82[14];
                    registers83[7] <= registers82[7]+registers82[15];
                end
//---------
                4: begin
//---------
                    state <= 5;
                    registers14[0] <= registers13[0]+registers13[4];
                    registers14[1] <= registers13[1]+registers13[5];
                    registers14[2] <= registers13[2]+registers13[6];
                    registers14[3] <= registers13[3]+registers13[7];
                    registers24[0] <= registers23[0]+registers23[4];
                    registers24[1] <= registers23[1]+registers23[5];
                    registers24[2] <= registers23[2]+registers23[6];
                    registers24[3] <= registers23[3]+registers23[7];
                    registers34[0] <= registers33[0]+registers33[4];
                    registers34[1] <= registers33[1]+registers33[5];
                    registers34[2] <= registers33[2]+registers33[6];
                    registers34[3] <= registers33[3]+registers33[7];
                    registers44[0] <= registers43[0]+registers43[4];
                    registers44[1] <= registers43[1]+registers43[5];
                    registers44[2] <= registers43[2]+registers43[6];
                    registers44[3] <= registers43[3]+registers43[7];
                    registers54[0] <= registers53[0]+registers53[4];
                    registers54[1] <= registers53[1]+registers53[5];
                    registers54[2] <= registers53[2]+registers53[6];
                    registers54[3] <= registers53[3]+registers53[7];
                    registers64[0] <= registers63[0]+registers63[4];
                    registers64[1] <= registers63[1]+registers63[5];
                    registers64[2] <= registers63[2]+registers63[6];
                    registers64[3] <= registers63[3]+registers63[7];
                    registers74[0] <= registers73[0]+registers73[4];
                    registers74[1] <= registers73[1]+registers73[5];
                    registers74[2] <= registers73[2]+registers73[6];
                    registers74[3] <= registers73[3]+registers73[7];
                    registers84[0] <= registers83[0]+registers83[4];
                    registers84[1] <= registers83[1]+registers83[5];
                    registers84[2] <= registers83[2]+registers83[6];
                    registers84[3] <= registers83[3]+registers83[7];
//-----
                end
                5: begin
                    state<= 6;
                    registers15[0] <= registers14[0]+registers14[2];
                    registers15[1] <= registers14[1]+registers14[3];
                    registers25[0] <= registers24[0]+registers24[2];
                    registers25[1] <= registers24[1]+registers24[3];
                    registers35[0] <= registers34[0]+registers34[2];
                    registers35[1] <= registers34[1]+registers34[3];
                    registers45[0] <= registers44[0]+registers44[2];
                    registers45[1] <= registers44[1]+registers44[3];
                    registers55[0] <= registers54[0]+registers54[2];
                    registers55[1] <= registers54[1]+registers54[3];
                    registers65[0] <= registers64[0]+registers64[2];
                    registers65[1] <= registers64[1]+registers64[3];
                    registers75[0] <= registers74[0]+registers74[2];
                    registers75[1] <= registers74[1]+registers74[3];
                    registers85[0] <= registers84[0]+registers84[2];
                    registers85[1] <= registers84[1]+registers84[3];                    
                end
                6: begin
                    state<=7;
                    registers16 [27:0] <= registers15[0]+registers15[1];
                    registers26 [27:0] <= registers25[0]+registers25[1];
                    registers36 [27:0] <= registers35[0]+registers35[1];
                    registers46 [27:0] <= registers45[0]+registers45[1];
                    registers56 [27:0] <= registers55[0]+registers55[1];
                    registers66 [27:0] <= registers65[0]+registers65[1];
                    registers76 [27:0] <= registers75[0]+registers75[1];
                    registers86 [27:0] <= registers85[0]+registers85[1];  //27                  
                end
                7: begin
                    state <= 8;   
                    done <=1; 

                    if(registers16 > $signed(28'b0000_0000_0000_0111_1111_1111_1111))begin
                        out1 <= `PosiFull;
                    end else if(registers16 < $signed(28'b1111_1111_1111_1000_0000_0000_0000))begin
                        out1 <= `NegFull;
                    end else if (registers16 >= 0 || (registers16 < 0 && registers16[7:0]==0)) begin
                        out1 <= registers16>>>8;
                    end else if(registers16 < 0 && registers16[7:0]!=0)begin
                        // out1 <= (registers16>>>8) - 1;
                        out1 <= (registers16>>>8) ;
                    end
                    if(registers26 > $signed(28'b0000_0000_0000_0111_1111_1111_1111))begin
                        out2 <= `PosiFull;
                    end else if(registers26 < $signed(28'b1111_1111_1111_1000_0000_0000_0000))begin
                        out2 <= `NegFull;
                    end else if (registers26 >= 0 || (registers26 < 0 && registers26[7:0]==0)) begin
                        out2 <= registers26>>>8;
                    end else if(registers26 < 0 && registers26[7:0]!=0)begin
                        // out2 <= (registers26>>>8) - 1;
                        out2 <= (registers26>>>8) ;
                    end
                    if(registers36 > $signed(28'b0000_0000_0000_0111_1111_1111_1111))begin
                        out3 <= `PosiFull;
                    end else if(registers36 < $signed(28'b1111_1111_1111_1000_0000_0000_0000))begin
                        out3 <= `NegFull;
                    end else if (registers36 >= 0 || (registers36 < 0 && registers36[7:0]==0)) begin
                        out3 <= registers36>>>8;
                    end else if(registers36 < 0 && registers36[7:0]!=0)begin
                        // out3 <= (registers36>>>8) - 1;
                        out3 <= (registers36>>>8) ;
                    end
                    if(registers46 > $signed(28'b0000_0000_0000_0111_1111_1111_1111))begin
                        out4 <= `PosiFull;
                    end else if(registers46 < $signed(28'b1111_1111_1111_1000_0000_0000_0000))begin
                        out4 <= `NegFull;
                    end else if (registers46 >= 0 || (registers46 < 0 && registers46[7:0]==0)) begin
                        out4 <= registers46>>>8;
                    end else if(registers46 < 0 && registers46[7:0]!=0)begin
                        // out4 <= (registers46>>>8) - 1;
                        out4 <= (registers46>>>8);
                    end
                    if(registers56 > $signed(28'b0000_0000_0000_0111_1111_1111_1111))begin
                        out5 <= `PosiFull;
                    end else if(registers56 < $signed(28'b1111_1111_1111_1000_0000_0000_0000))begin
                        out5 <= `NegFull;
                    end else if (registers56 >= 0 || (registers56 < 0 && registers56[7:0]==0)) begin
                        out5 <= registers56>>>8;
                    end else if(registers56 < 0 && registers56[7:0]!=0)begin
                        // out5 <= (registers56>>>8) - 1;
                        out5 <= (registers56>>>8) ;
                    end
                    if(registers66 > $signed(28'b0000_0000_0000_0111_1111_1111_1111))begin
                        out6 <= `PosiFull;
                    end else if(registers66 < $signed(28'b1111_1111_1111_1000_0000_0000_0000))begin
                        out6 <= `NegFull;
                    end else if (registers66 >= 0 || (registers66 < 0 && registers66[7:0]==0)) begin
                        out6 <= registers66>>>8;
                    end else if(registers66 < 0 && registers66[7:0]!=0)begin
                        // out6 <= (registers66>>>8) - 1;
                        out6 <= (registers66>>>8) ;
                    end
                    if(registers76 > $signed(28'b0000_0000_0000_0111_1111_1111_1111))begin
                        out7 <= `PosiFull;
                    end else if(registers76 < $signed(28'b1111_1111_1111_1000_0000_0000_0000))begin
                        out7 <= `NegFull;
                    end else if (registers76 >= 0 || (registers76 < 0 && registers76[7:0]==0)) begin
                        out7 <= registers76>>>8;
                    end else if(registers76 < 0 && registers76[7:0]!=0)begin
                        // out7 <= (registers76>>>8) - 1;
                        out7 <= (registers76>>>8);
                    end
                    if(registers86 > $signed(28'b0000_0000_0000_0111_1111_1111_1111))begin
                        out8 <= `PosiFull;
                    end else if(registers86 < $signed(28'b1111_1111_1111_1000_0000_0000_0000))begin
                        out8 <= `NegFull;
                    end else if (registers86 >= 0 || (registers86 < 0 && registers86[7:0]==0)) begin
                        out8 <= registers86>>>8;
                    end else if(registers86 < 0 && registers86[7:0]!=0)begin
                        // out8 <= (registers86>>>8) - 1;
                        out8 <= (registers86>>>8) ;
                    end
                end
                8: begin
                    done <= 0;
                    state <= 1;
                end
            endcase
        end
    end  
end

endmodule