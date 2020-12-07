`include "defines.v"

module pe1(
    rst,

    weight_en,

    calculate_en,
    weight11_in,//11 12 13 14 15 16
    weight12_in,//21 22 23 24 25 26
    weight13_in,//31 32 33 34 35 36
    weight21_in,//41 42 43 44 45 46
    weight22_in,//51 52 53 54 55 56
    weight23_in,//61 62 63 64 65 66
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
    ifmap_in1,
    ifmap_in2,
    ifmap_in3,
    ifmap_in4,
    ofmap_out,
    clk,
    initializing,
    addr_BRAM4k_1,
    addr_wLayer1_1,
    dout_wLayer1_1 //这是数据输入线（dout是相对于BRAM来说的）
);
//--------------------------------------
    input wire initializing;
    input   wire  rst;
        

    input                             weight_en;
    input                             calculate_en;

    input        signed    [47:0]     ifmap_in1;
    input        signed    [47:0]     ifmap_in2;
    input        signed    [47:0]     ifmap_in3;
    input        signed    [47:0]     ifmap_in4;
    input                             clk;

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
//-------------------input and output ----------------------------------------------
//weight register
    reg        signed    [7:0]      weight11;
    reg        signed    [7:0]      weight12;
    reg        signed    [7:0]      weight13;
    reg        signed    [7:0]      weight21;
    reg        signed    [7:0]      weight22;
    reg        signed    [7:0]      weight23;
    reg        signed    [7:0]      weight31;
    reg        signed    [7:0]      weight32;
    reg        signed    [7:0]      weight33;
    reg        signed    [7:0]      weight41;
    reg        signed    [7:0]      weight42;
    reg        signed    [7:0]      weight43;
    reg        signed    [7:0]      weight51;
    reg        signed    [7:0]      weight52;
    reg        signed    [7:0]      weight53;
    reg        signed    [7:0]      weight61;
    reg        signed    [7:0]      weight62;
    reg        signed    [7:0]      weight63;
    reg        signed    [7:0]      weight14;
    reg        signed    [7:0]      weight15;
    reg        signed    [7:0]      weight16;
    reg        signed    [7:0]      weight24;
    reg        signed    [7:0]      weight25;
    reg        signed    [7:0]      weight26;
    reg        signed    [7:0]      weight34;
    reg        signed    [7:0]      weight35;
    reg        signed    [7:0]      weight36;
    reg        signed    [7:0]      weight44;
    reg        signed    [7:0]      weight45;
    reg        signed    [7:0]      weight46;
    reg        signed    [7:0]      weight54;
    reg        signed    [7:0]      weight55;
    reg        signed    [7:0]      weight56;
    reg        signed    [7:0]      weight64;
    reg        signed    [7:0]      weight65;
    reg        signed    [7:0]      weight66;
//------

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
    reg                    [`Byte]   ifbuf1 [31:0];
    reg                    [`Byte]   ifbuf2 [31:0];
    reg                    [`Byte]   ifbuf3 [31:0];
    reg                    [`Byte]   ifbuf4 [31:0];
    reg                    [`Byte]   ifbuf5 [31:0];
    reg                    [`Byte]   ifbuf6 [31:0];
    reg                    [`Byte]   regPad1 [1:0];
    reg                    [`Byte]   regPad2 [1:0];
    reg                    [`Byte]   regPad3 [1:0];
    reg                    [`Byte]   regPad4 [1:0];
    reg                    [`Byte]   regPad5 [1:0];
    reg                    [`Byte]   regPad6 [1:0];


    reg     [7:0]       plusi11 ;
    reg     [7:0]       plusi12 ;
    reg     [7:0]       plusi13 ;


    reg     [7:0]       plusi21 ;
    reg     [7:0]       plusi22 ;
    reg     [7:0]       plusi23 ;


    reg     [7:0]       plusi31 ;
    reg     [7:0]       plusi32 ;
    reg     [7:0]       plusi33 ;



    reg     [7:0]       plusi41 ;
    reg     [7:0]       plusi42 ;
    reg     [7:0]       plusi43 ;


//---------------------------------------------
    reg                             Trashdata;
    reg     [4:0]                   Row;
    reg  [3:0]   Layer;
    reg  [2:0]   State;    
    reg  [2:0]   StateBubble1;
    reg  [2:0]   StateBubble2;
    reg  [2:0]   StateBubble3;
    reg  [2:0]   StateBubble4;
    reg  [2:0]   StateBubble5;
    reg [4:0]  Counter;
    reg [4:0]  kernCounter;
    reg Selctrl;
    reg [7:0] multi111;
    reg [7:0] multi112;
    reg [7:0] multi113;
    reg [7:0] multi121;
    reg [7:0] multi122;
    reg [7:0] multi123;
    reg [7:0] multi131;
    reg [7:0] multi132;
    reg [7:0] multi133;

    reg [7:0] multi211;
    reg [7:0] multi212;
    reg [7:0] multi213;
    reg [7:0] multi221;
    reg [7:0] multi222;
    reg [7:0] multi223;
    reg [7:0] multi231;
    reg [7:0] multi232;
    reg [7:0] multi233;

    reg [7:0] multi311;
    reg [7:0] multi312;
    reg [7:0] multi313;
    reg [7:0] multi321;
    reg [7:0] multi322;
    reg [7:0] multi323;
    reg [7:0] multi331;
    reg [7:0] multi332;
    reg [7:0] multi333;

    reg [7:0] multi411;
    reg [7:0] multi412;
    reg [7:0] multi413;
    reg [7:0] multi421;
    reg [7:0] multi422;
    reg [7:0] multi423;
    reg [7:0] multi431;
    reg [7:0] multi432;
    reg [7:0] multi433;
//-------------声明地址相关-------------------------------
output  reg  [11:0]  addr_BRAM4k_1;   //发出地址 BRAM4k
output  reg  [7:0]   addr_wLayer1_1;  //发出Layer1weight地址 
input   wire [39:0]  dout_wLayer1_1;
//--------------结束-------------------------------
always @(posedge clk or negedge rst) begin
if ( rst == `RstEnable ) begin    
    Process         <=          `Init;
    Layer           <= `Layer1;
    addr_BRAM4k_1 <= 1;
    Counter <= 0;
    Channel <= 0;
    addr_wLayer1_1 <= 1;
end else begin
    //pipeline
    case ( Layer )
    `Layer1: begin
        case ( Process ) //用于控制channel。
        `Idle:begin
            if(Channel < 32)
                Channel <= Channel + 1; 
                Process <= `Init;
            end 
            else begin
                Channel <= 0;
                Layer <= `Layer2;
            end
        end
        `Init:begin
            if (Counter < 5'd12) begin
                addr_BRAM4k_1<=   addr_BRAM4k_1 + 1;
                Counter      <=   Counter + 1;
                Process      <=   `Init;
                ifbuf5[24]   <=   ifmap_in1[63:56];
                ifbuf5[25]   <=   ifmap_in1[55:48];
                ifbuf5[26]   <=   ifmap_in1[47:40];
                ifbuf5[27]   <=   ifmap_in1[39:32];
                ifbuf5[28]   <=   ifmap_in1[31:24];
                ifbuf5[29]   <=   ifmap_in1[23:16];
                ifbuf5[30]   <=   ifmap_in1[15:8];
                ifbuf5[31]   <=   ifmap_in1[7:0];
                               
                ifbuf5[23] <=      ifbuf5[31];
                ifbuf5[22] <=      ifbuf5[30];
                ifbuf5[21] <=      ifbuf5[29];
                ifbuf5[20] <=      ifbuf5[28];
                ifbuf5[19] <=      ifbuf5[27];
                ifbuf5[18] <=      ifbuf5[26];
                ifbuf5[17] <=      ifbuf5[25];
                ifbuf5[16] <=      ifbuf5[24];

                ifbuf5[15] <=      ifbuf5[23];
                ifbuf5[14] <=      ifbuf5[22];
                ifbuf5[13] <=      ifbuf5[21];
                ifbuf5[12] <=      ifbuf5[20];
                ifbuf5[11] <=      ifbuf5[19];
                ifbuf5[10] <=      ifbuf5[18];
                ifbuf5[9] <=      ifbuf5[17];
                ifbuf5[8] <=      ifbuf5[16];

                ifbuf5[7] <=      ifbuf5[15];
                ifbuf5[6] <=      ifbuf5[14];
                ifbuf5[5] <=      ifbuf5[13];
                ifbuf5[4] <=      ifbuf5[12];
                ifbuf5[3] <=      ifbuf5[11];
                ifbuf5[2] <=      ifbuf5[10];
                ifbuf5[1] <=      ifbuf5[9];
                ifbuf5[0] <=      ifbuf5[8];

                ifbuf4[31] <=      ifbuf5[7];
                ifbuf4[30] <=      ifbuf5[6];
                ifbuf4[29] <=      ifbuf5[5];
                ifbuf4[28] <=      ifbuf5[4];
                ifbuf4[27] <=      ifbuf5[3];
                ifbuf4[26] <=      ifbuf5[2];
                ifbuf4[25] <=      ifbuf5[1];
                ifbuf4[24] <=      ifbuf5[0];

                ifbuf4[23] <=      ifbuf4[31];
                ifbuf4[22] <=      ifbuf4[30];
                ifbuf4[21] <=      ifbuf4[29];
                ifbuf4[20] <=      ifbuf4[28];
                ifbuf4[19] <=      ifbuf4[27];
                ifbuf4[18] <=      ifbuf4[26];
                ifbuf4[17] <=      ifbuf4[25];
                ifbuf4[16] <=      ifbuf4[24];

                ifbuf4[15] <=      ifbuf4[23];
                ifbuf4[14] <=      ifbuf4[22];
                ifbuf4[13] <=      ifbuf4[21];
                ifbuf4[12] <=      ifbuf4[20];
                ifbuf4[11] <=      ifbuf4[19];
                ifbuf4[10] <=      ifbuf4[18];
                ifbuf4[9] <=      ifbuf4[17];
                ifbuf4[8] <=      ifbuf4[16];

                ifbuf4[7] <=      ifbuf4[15];
                ifbuf4[6] <=      ifbuf4[14];
                ifbuf4[5] <=      ifbuf4[13];
                ifbuf4[4] <=      ifbuf4[12];
                ifbuf4[3] <=      ifbuf4[11];
                ifbuf4[2] <=      ifbuf4[10];
                ifbuf4[1] <=      ifbuf4[9];
                ifbuf4[0] <=      ifbuf4[8];

                ifbuf3[31] <=      ifbuf4[7];
                ifbuf3[30] <=      ifbuf4[6];
                ifbuf3[29] <=      ifbuf4[5];
                ifbuf3[28] <=      ifbuf4[4];
                ifbuf3[27] <=      ifbuf4[3];
                ifbuf3[26] <=      ifbuf4[2];
                ifbuf3[25] <=      ifbuf4[1];
                ifbuf3[24] <=      ifbuf4[0];

                ifbuf3[23] <=      ifbuf3[31];
                ifbuf3[22] <=      ifbuf3[30];
                ifbuf3[21] <=      ifbuf3[29];
                ifbuf3[20] <=      ifbuf3[28];
                ifbuf3[19] <=      ifbuf3[27];
                ifbuf3[18] <=      ifbuf3[26];
                ifbuf3[17] <=      ifbuf3[25];
                ifbuf3[16] <=      ifbuf3[24];

                ifbuf3[15] <=      ifbuf3[23];
                ifbuf3[14] <=      ifbuf3[22];
                ifbuf3[13] <=      ifbuf3[21];
                ifbuf3[12] <=      ifbuf3[20];
                ifbuf3[11] <=      ifbuf3[19];
                ifbuf3[10] <=      ifbuf3[18];
                ifbuf3[9] <=      ifbuf3[17];
                ifbuf3[8] <=      ifbuf3[16];

                ifbuf3[7] <=      ifbuf3[15];
                ifbuf3[6] <=      ifbuf3[14];
                ifbuf3[5] <=      ifbuf3[13];
                ifbuf3[4] <=      ifbuf3[12];
                ifbuf3[3] <=      ifbuf3[11];
                ifbuf3[2] <=      ifbuf3[10];
                ifbuf3[1] <=      ifbuf3[9];
                ifbuf3[0] <=      ifbuf3[8];  
//--------------------------------------------- 
// 15 14 13 12 11
// 25 24 23 22 21
// 35 .. ..  .  .
// 45 .. .. ..  .
// 55 .. .. .. .. 
                if (Counter ==0) begin
                    addr_wLayer1_1 <= addr_wLayer1_1 + 1;
                    weight15 <= dout_wLayer1_1[`ByteFiv];
                    weight14 <= dout_wLayer1_1[`ByteFor];
                    weight13 <= dout_wLayer1_1[`ByteThr];
                    weight12 <= dout_wLayer1_1[`ByteTwo];
                    weight11 <= dout_wLayer1_1[`ByteOne];
                end else if (Counter == 1)    begin
                    addr_wLayer1_1 <= addr_wLayer1_1 + 1;
                    weight25 <= dout_wLayer1_1[`ByteFiv];
                    weight24 <= dout_wLayer1_1[`ByteFor];
                    weight23 <= dout_wLayer1_1[`ByteThr];
                    weight22 <= dout_wLayer1_1[`ByteTwo];
                    weight21 <= dout_wLayer1_1[`ByteOne];            
                end else if (Counter == 2)   begin                 
                    addr_wLayer1_1 <= addr_wLayer1_1 + 1;
                    weight35 <= dout_wLayer1_1[`ByteFiv];
                    weight34 <= dout_wLayer1_1[`ByteFor];
                    weight33 <= dout_wLayer1_1[`ByteThr];
                    weight32 <= dout_wLayer1_1[`ByteTwo];
                    weight31 <= dout_wLayer1_1[`ByteOne];
                end else if (Counter == 3)  begin
                    addr_wLayer1_1 <= addr_wLayer1_1 + 1;
                    weight45 <= dout_wLayer1_1[`ByteFiv];
                    weight44 <= dout_wLayer1_1[`ByteFor];
                    weight43 <= dout_wLayer1_1[`ByteThr];
                    weight42 <= dout_wLayer1_1[`ByteTwo];
                    weight41 <= dout_wLayer1_1[`ByteOne];
                                  
                end else if (Counter == 4)  begin
                    addr_wLayer1_1 <= addr_wLayer1_1 + 1;
                    weight55 <= dout_wLayer1_1[`ByteFiv];
                    weight54 <= dout_wLayer1_1[`ByteFor];
                    weight53 <= dout_wLayer1_1[`ByteThr];
                    weight52 <= dout_wLayer1_1[`ByteTwo];
                    weight51 <= dout_wLayer1_1[`ByteOne];                    
                end                   
            end else begin
                ifbuf2[0]    <=      0;
                ifbuf2[1]    <=      0;
                ifbuf2[2]    <=      0;
                ifbuf2[3]    <=      0;
                ifbuf2[4]    <=      0;
                ifbuf2[5]    <=      0;
                ifbuf2[6]    <=      0;
                ifbuf2[7]    <=      0;
                ifbuf2[8]    <=      0;
                ifbuf2[9]    <=      0;
                ifbuf2[10]   <=      0;
                ifbuf2[11]   <=      0;
                ifbuf2[12]   <=      0;
                ifbuf2[13]   <=      0;
                ifbuf2[14]   <=      0;
                ifbuf2[15]   <=      0;
                ifbuf2[16]   <=      0;
                ifbuf2[17]   <=      0;
                ifbuf2[18]   <=      0;
                ifbuf2[19]   <=      0;
                ifbuf2[20]   <=      0;
                ifbuf2[21]   <=      0;
                ifbuf2[22]   <=      0;
                ifbuf2[23]   <=      0;
                ifbuf2[24]   <=      0;
                ifbuf2[25]   <=      0;
                ifbuf2[26]   <=      0;
                ifbuf2[27]   <=      0;
                ifbuf2[28]   <=      0;
                ifbuf2[29]   <=      0;
                ifbuf2[30]   <=      0;
                ifbuf1[31]   <=      0;
                ifbuf1[0]    <=      0;
                ifbuf1[1]    <=      0;
                ifbuf1[2]    <=      0;
                ifbuf1[3]    <=      0;
                ifbuf1[4]    <=      0;
                ifbuf1[5]    <=      0;
                ifbuf1[6]    <=      0;
                ifbuf1[7]    <=      0;
                ifbuf1[8]    <=      0;
                ifbuf1[9]    <=      0;
                ifbuf1[10]   <=      0;
                ifbuf1[11]   <=      0;
                ifbuf1[12]   <=      0;
                ifbuf1[13]   <=      0;
                ifbuf1[14]   <=      0;
                ifbuf1[15]   <=      0;
                ifbuf1[16]   <=      0;
                ifbuf1[17]   <=      0;
                ifbuf1[18]   <=      0;
                ifbuf1[19]   <=      0;
                ifbuf1[20]   <=      0;
                ifbuf1[21]   <=      0;
                ifbuf1[22]   <=      0;
                ifbuf1[23]   <=      0;
                ifbuf1[24]   <=      0;
                ifbuf1[25]   <=      0;
                ifbuf1[26]   <=      0;
                ifbuf1[27]   <=      0;
                ifbuf1[28]   <=      0;
                ifbuf1[29]   <=      0;
                ifbuf1[30]   <=      0;
                ifbuf1[31]   <=      0;                
                regPad1[0]   <= 0;
                regPad2[0]   <= 0;
                regPad3[0]   <= 0;
                regPad4[0]   <= 0;
                regPad5[0]   <= 0;
                regPad1[1]   <= 0;
                regPad2[1]   <= 0;
                regPad3[1]   <= 0;
                regPad4[1]   <= 0;
                regPad5[1]   <= 0;
                Process <= `Start;
                Counter <= 0;
              end
        end
//------------
        `Start:begin
//----------基本数据流
            regPad5[0]   <=      regPad5[1];
            regPad5[1]   <=      ifbuf5[0];
            ifbuf5[0]    <=      ifbuf5[1];
            ifbuf5[1]    <=      ifbuf5[2];
            ifbuf5[2]    <=      ifbuf5[3];
            ifbuf5[3]    <=      ifbuf5[4];
            ifbuf5[4]    <=      ifbuf5[5];
            ifbuf5[5]    <=      ifbuf5[6];
            ifbuf5[6]    <=      ifbuf5[7];
            ifbuf5[7]    <=      ifbuf5[8];
            ifbuf5[8]    <=      ifbuf5[9];
            ifbuf5[9]    <=      ifbuf5[10];
            ifbuf5[10]   <=      ifbuf5[11];
            ifbuf5[11]   <=      ifbuf5[12];
            ifbuf5[12]   <=      ifbuf5[13];
            ifbuf5[13]   <=      ifbuf5[14];
            ifbuf5[14]   <=      ifbuf5[15];
            ifbuf5[15]   <=      ifbuf5[16];
            ifbuf5[16]   <=      ifbuf5[17];
            ifbuf5[17]   <=      ifbuf5[18];
            ifbuf5[18]   <=      ifbuf5[19];
            ifbuf5[19]   <=      ifbuf5[20];
            ifbuf5[20]   <=      ifbuf5[21];
            ifbuf5[21]   <=      ifbuf5[22];
            ifbuf5[22]   <=      ifbuf5[23];
            ifbuf5[23]   <=      ifbuf5[24];
            ifbuf5[24]   <=      ifbuf5[25];
            ifbuf5[25]   <=      ifbuf5[26];
            ifbuf5[26]   <=      ifbuf5[27];
            ifbuf5[27]   <=      ifbuf5[28];
            ifbuf5[28]   <=      ifbuf5[29];
            ifbuf5[29]   <=      ifbuf5[30];
            ifbuf5[30]   <=      ifbuf5[31];


            regPad4[0]   <=      regPad4[1];
            regPad4[1]   <=      ifbuf4[0];
            ifbuf4[0]    <=      ifbuf4[1];
            ifbuf4[1]    <=      ifbuf4[2];
            ifbuf4[2]    <=      ifbuf4[3];
            ifbuf4[3]    <=      ifbuf4[4];
            ifbuf4[4]    <=      ifbuf4[5];
            ifbuf4[5]    <=      ifbuf4[6];
            ifbuf4[6]    <=      ifbuf4[7];
            ifbuf4[7]    <=      ifbuf4[8];
            ifbuf4[8]    <=      ifbuf4[9];
            ifbuf4[9]    <=      ifbuf4[10];
            ifbuf4[10]   <=      ifbuf4[11];
            ifbuf4[11]   <=      ifbuf4[12];
            ifbuf4[12]   <=      ifbuf4[13];
            ifbuf4[13]   <=      ifbuf4[14];
            ifbuf4[14]   <=      ifbuf4[15];
            ifbuf4[15]   <=      ifbuf4[16];
            ifbuf4[16]   <=      ifbuf4[17];
            ifbuf4[17]   <=      ifbuf4[18];
            ifbuf4[18]   <=      ifbuf4[19];
            ifbuf4[19]   <=      ifbuf4[20];
            ifbuf4[20]   <=      ifbuf4[21];
            ifbuf4[21]   <=      ifbuf4[22];
            ifbuf4[22]   <=      ifbuf4[23];
            ifbuf4[23]   <=      ifbuf4[24];
            ifbuf4[24]   <=      ifbuf4[25];
            ifbuf4[25]   <=      ifbuf4[26];
            ifbuf4[26]   <=      ifbuf4[27];
            ifbuf4[27]   <=      ifbuf4[28];
            ifbuf4[28]   <=      ifbuf4[29];
            ifbuf4[29]   <=      ifbuf4[30];
            ifbuf4[30]   <=      ifbuf4[31];
            ifbuf4[31]   <=      regPad5[0];

            regPad3[0]   <=      regPad3[1];
            regPad3[1]   <=      ifbuf3[0];
            ifbuf3[0]    <=      ifbuf3[1];
            ifbuf3[1]    <=      ifbuf3[2];
            ifbuf3[2]    <=      ifbuf3[3];
            ifbuf3[3]    <=      ifbuf3[4];
            ifbuf3[4]    <=      ifbuf3[5];
            ifbuf3[5]    <=      ifbuf3[6];
            ifbuf3[6]    <=      ifbuf3[7];
            ifbuf3[7]    <=      ifbuf3[8];
            ifbuf3[8]    <=      ifbuf3[9];
            ifbuf3[9]    <=      ifbuf3[10];
            ifbuf3[10]   <=      ifbuf3[11];
            ifbuf3[11]   <=      ifbuf3[12];
            ifbuf3[12]   <=      ifbuf3[13];
            ifbuf3[13]   <=      ifbuf3[14];
            ifbuf3[14]   <=      ifbuf3[15];
            ifbuf3[15]   <=      ifbuf3[16];
            ifbuf3[16]   <=      ifbuf3[17];
            ifbuf3[17]   <=      ifbuf3[18];
            ifbuf3[18]   <=      ifbuf3[19];
            ifbuf3[19]   <=      ifbuf3[20];
            ifbuf3[20]   <=      ifbuf3[21];
            ifbuf3[21]   <=      ifbuf3[22];
            ifbuf3[22]   <=      ifbuf3[23];
            ifbuf3[23]   <=      ifbuf3[24];
            ifbuf3[24]   <=      ifbuf3[25];
            ifbuf3[25]   <=      ifbuf3[26];
            ifbuf3[26]   <=      ifbuf3[27];
            ifbuf3[27]   <=      ifbuf3[28];
            ifbuf3[28]   <=      ifbuf3[29];
            ifbuf3[29]   <=      ifbuf3[30];
            ifbuf3[30]   <=      ifbuf3[31];
            ifbuf3[31]   <=      regPad4[0];

            regPad2[0]   <=      regPad2[1];
            regPad2[1]   <=      ifbuf2[0];
            ifbuf2[0]    <=      ifbuf2[1];
            ifbuf2[1]    <=      ifbuf2[2];
            ifbuf2[2]    <=      ifbuf2[3];
            ifbuf2[3]    <=      ifbuf2[4];
            ifbuf2[4]    <=      ifbuf2[5];
            ifbuf2[5]    <=      ifbuf2[6];
            ifbuf2[6]    <=      ifbuf2[7];
            ifbuf2[7]    <=      ifbuf2[8];
            ifbuf2[8]    <=      ifbuf2[9];
            ifbuf2[9]    <=      ifbuf2[10];
            ifbuf2[10]   <=      ifbuf2[11];
            ifbuf2[11]   <=      ifbuf2[12];
            ifbuf2[12]   <=      ifbuf2[13];
            ifbuf2[13]   <=      ifbuf2[14];
            ifbuf2[14]   <=      ifbuf2[15];
            ifbuf2[15]   <=      ifbuf2[16];
            ifbuf2[16]   <=      ifbuf2[17];
            ifbuf2[17]   <=      ifbuf2[18];
            ifbuf2[18]   <=      ifbuf2[19];
            ifbuf2[19]   <=      ifbuf2[20];
            ifbuf2[20]   <=      ifbuf2[21];
            ifbuf2[21]   <=      ifbuf2[22];
            ifbuf2[22]   <=      ifbuf2[23];
            ifbuf2[23]   <=      ifbuf2[24];
            ifbuf2[24]   <=      ifbuf2[25];
            ifbuf2[25]   <=      ifbuf2[26];
            ifbuf2[26]   <=      ifbuf2[27];
            ifbuf2[27]   <=      ifbuf2[28];
            ifbuf2[28]   <=      ifbuf2[29];
            ifbuf2[29]   <=      ifbuf2[30];
            ifbuf2[30]   <=      ifbuf2[31];
            ifbuf2[31]   <=      regPad3[0];

            regPad1[0]   <=      regPad1[1];
            regPad1[1]   <=      ifbuf1[0];
            ifbuf1[0]    <=      ifbuf1[1];
            ifbuf1[1]    <=      ifbuf1[2];
            ifbuf1[2]    <=      ifbuf1[3];
            ifbuf1[3]    <=      ifbuf1[4];
            ifbuf1[4]    <=      ifbuf1[5];
            ifbuf1[5]    <=      ifbuf1[6];
            ifbuf1[6]    <=      ifbuf1[7];
            ifbuf1[7]    <=      ifbuf1[8];
            ifbuf1[8]    <=      ifbuf1[9];
            ifbuf1[9]    <=      ifbuf1[10];
            ifbuf1[10]   <=      ifbuf1[11];
            ifbuf1[11]   <=      ifbuf1[12];
            ifbuf1[12]   <=      ifbuf1[13];
            ifbuf1[13]   <=      ifbuf1[14];
            ifbuf1[14]   <=      ifbuf1[15];
            ifbuf1[15]   <=      ifbuf1[16];
            ifbuf1[16]   <=      ifbuf1[17];
            ifbuf1[17]   <=      ifbuf1[18];
            ifbuf1[18]   <=      ifbuf1[19];
            ifbuf1[19]   <=      ifbuf1[20];
            ifbuf1[20]   <=      ifbuf1[21];
            ifbuf1[21]   <=      ifbuf1[22];
            ifbuf1[22]   <=      ifbuf1[23];
            ifbuf1[23]   <=      ifbuf1[24];
            ifbuf1[24]   <=      ifbuf1[25];
            ifbuf1[25]   <=      ifbuf1[26];
            ifbuf1[26]   <=      ifbuf1[27];
            ifbuf1[27]   <=      ifbuf1[28];
            ifbuf1[28]   <=      ifbuf1[29];
            ifbuf1[29]   <=      ifbuf1[30];
            ifbuf1[30]   <=      ifbuf1[31];
            ifbuf1[31]   <=      regPad1[0];
//---------基本数据流结束---------------
//---------控制流----------------------
            case ( Counter )
            6'd10 : begin
                ifbuf5[24]   <=   (Row == 5'd30 || Row == 5'd31)? 8'd0:ifmap_in1[63:56];
                ifbuf5[25]   <=   (Row == 5'd30 || Row == 5'd31)? 8'd0:ifmap_in1[55:48];
                ifbuf5[26]   <=   (Row == 5'd30 || Row == 5'd31)? 8'd0:ifmap_in1[47:40];
                ifbuf5[27]   <=   (Row == 5'd30 || Row == 5'd31)? 8'd0:ifmap_in1[39:32];
                ifbuf5[28]   <=   (Row == 5'd30 || Row == 5'd31)? 8'd0:ifmap_in1[31:24];
                ifbuf5[29]   <=   (Row == 5'd30 || Row == 5'd31)? 8'd0:ifmap_in1[23:16];
                ifbuf5[30]   <=   (Row == 5'd30 || Row == 5'd31)? 8'd0:ifmap_in1[15:8];
                ifbuf5[31]   <=   (Row == 5'd30 || Row == 5'd31)? 8'd0:ifmap_in1[7:0];
                Counter <= Counter + 1;
                Trashdata <= 0;
            end
            6'd18 : begin
                ifbuf5[24]   <=   (Row == 5'd30 || Row == 5'd31)? 8'd0:ifmap_in1[63:56];
                ifbuf5[25]   <=   (Row == 5'd30 || Row == 5'd31)? 8'd0:ifmap_in1[55:48];
                ifbuf5[26]   <=   (Row == 5'd30 || Row == 5'd31)? 8'd0:ifmap_in1[47:40];
                ifbuf5[27]   <=   (Row == 5'd30 || Row == 5'd31)? 8'd0:ifmap_in1[39:32];
                ifbuf5[28]   <=   (Row == 5'd30 || Row == 5'd31)? 8'd0:ifmap_in1[31:24];
                ifbuf5[29]   <=   (Row == 5'd30 || Row == 5'd31)? 8'd0:ifmap_in1[23:16];
                ifbuf5[30]   <=   (Row == 5'd30 || Row == 5'd31)? 8'd0:ifmap_in1[15:8];
                ifbuf5[31]   <=   (Row == 5'd30 || Row == 5'd31)? 8'd0:ifmap_in1[7:0];
                Counter <= Counter + 1;
                Trashdata <= 0;
            end
            6'd26 :begin
                ifbuf5[24]   <=   (Row == 5'd30 || Row == 5'd31)? 8'd0:ifmap_in1[63:56];
                ifbuf5[25]   <=   (Row == 5'd30 || Row == 5'd31)? 8'd0:ifmap_in1[55:48];
                ifbuf5[26]   <=   (Row == 5'd30 || Row == 5'd31)? 8'd0:ifmap_in1[47:40];
                ifbuf5[27]   <=   (Row == 5'd30 || Row == 5'd31)? 8'd0:ifmap_in1[39:32];
                ifbuf5[28]   <=   (Row == 5'd30 || Row == 5'd31)? 8'd0:ifmap_in1[31:24];
                ifbuf5[29]   <=   (Row == 5'd30 || Row == 5'd31)? 8'd0:ifmap_in1[23:16];
                ifbuf5[30]   <=   (Row == 5'd30 || Row == 5'd31)? 8'd0:ifmap_in1[15:8];
                ifbuf5[31]   <=   (Row == 5'd30 || Row == 5'd31)? 8'd0:ifmap_in1[7:0];
                Counter <= Counter + 1;
                Trashdata <= 0;
            end
            6'd33 :begin
                ifbuf5[24]   <=   (Row == 5'd30 || Row == 5'd31)? 8'd0:ifmap_in1[63:56];
                ifbuf5[25]   <=   (Row == 5'd30 || Row == 5'd31)? 8'd0:ifmap_in1[55:48];
                ifbuf5[26]   <=   (Row == 5'd30 || Row == 5'd31)? 8'd0:ifmap_in1[47:40];
                ifbuf5[27]   <=   (Row == 5'd30 || Row == 5'd31)? 8'd0:ifmap_in1[39:32];
                ifbuf5[28]   <=   (Row == 5'd30 || Row == 5'd31)? 8'd0:ifmap_in1[31:24];
                ifbuf5[29]   <=   (Row == 5'd30 || Row == 5'd31)? 8'd0:ifmap_in1[23:16];
                ifbuf5[30]   <=   (Row == 5'd30 || Row == 5'd31)? 8'd0:ifmap_in1[15:8];
                ifbuf5[31]   <=   (Row == 5'd30 || Row == 5'd31)? 8'd0:ifmap_in1[7:0];
                Counter <= 0; 
                Trashdata <= 0; //signal for disable
                if(Row == 5'd31) begin
                    Row <= 0;
                    Process <= `Idle; 
                end else begin
                    Row <= Row + 1;                    
                end
            end
            6'd31 : begin
                ifbuf5[24]   <=      ifbuf5[25];
                ifbuf5[25]   <=      ifbuf5[26];
                ifbuf5[26]   <=      ifbuf5[27];
                ifbuf5[27]   <=      ifbuf5[28];
                ifbuf5[28]   <=      ifbuf5[29];
                ifbuf5[29]   <=      ifbuf5[30];
                ifbuf5[30]   <=      ifbuf5[31];
                ifbuf5[31]   <=      ifbuf1[0];
                Counter <= Counter + 1;         
                Trashdata <= 1;
            end
            default :begin
                ifbuf5[24]   <=      ifbuf5[25];
                ifbuf5[25]   <=      ifbuf5[26];
                ifbuf5[26]   <=      ifbuf5[27];
                ifbuf5[27]   <=      ifbuf5[28];
                ifbuf5[28]   <=      ifbuf5[29];
                ifbuf5[29]   <=      ifbuf5[30];
                ifbuf5[30]   <=      ifbuf5[31];
                ifbuf5[31]   <=      ifbuf1[0];
                Counter <= Counter + 1;
                Trashdata <= 0;
                if(Counter == 9 ||Counter == 17 ||Counter == 25 ||Counter == 32 ) begin
                    addr_BRAM4k_1 <= addr_BRAM4k_1 + 1;
                end
            end
            endcase
            
        end
        endcase
    end 


//*********************************************************************************************************
    `Layer2:begin
    
        //-------------------------------------------------
        ifbuf5[24]   <=   ifmap_in1[63:56];
        ifbuf5[25]   <=   ifmap_in1[55:48];
        ifbuf5[26]   <=   ifmap_in1[47:40];
        ifbuf5[27]   <=   ifmap_in1[39:32];
        ifbuf5[28]   <=   ifmap_in1[31:24];
        ifbuf5[29]   <=   ifmap_in1[23:16];
        ifbuf5[30]   <=   ifmap_in1[15:8];
        ifbuf5[31]   <=   ifmap_in1[7:0];
        //-------------------------------------------------
        if($signed(ifbuf5[24]) >= $signed(ifbuf5[25])) begin
            ifbuf4[25] <= ifbuf5[24];
        end else begin
            ifbuf4[25] <= ifbuf5[25];
        end

        if($signed(ifbuf5[26]) >= $signed(ifbuf5[27])) begin
            ifbuf4[27] <= ifbuf5[26];
        end else begin
            ifbuf4[27] <= ifbuf5[27];
        end
        
        if($signed(ifbuf5[28]) >= $signed(ifbuf5[29])) begin
            ifbuf4[29] <= ifbuf5[28];
        end else begin
            ifbuf4[29] <= ifbuf5[29];
        end

        if($signed(ifbuf5[30]) >= $signed(ifbuf5[31])) begin
            ifbuf4[31] <= ifbuf5[30];
        end else begin
            ifbuf4[31] <= ifbuf5[31];
        end
//-------------------------------------------------
        ifbuf3[25] <= ifbuf4[25];
        ifbuf3[27] <= ifbuf4[27];
        ifbuf3[29] <= ifbuf4[29];
        ifbuf3[31] <= ifbuf4[31];
//-------------------------------------------------        
        if($signed(ifbuf3[25]) >= $signed(ifbuf4[25])) begin
            ifbuf2[25] <= ifbuf3[25];
        end else begin
            ifbuf2[25] <= ifbuf4[25];
        end

        if($signed(ifbuf3[27]) >= $signed(ifbuf4[27])) begin
            ifbuf2[27] <= ifbuf3[27];
        end else begin
            ifbuf2[27] <= ifbuf4[27];
        end
        
        if($signed(ifbuf3[29]) >= $signed(ifbuf4[29])) begin
            ifbuf2[29] <= ifbuf3[29];
        end else begin
            ifbuf2[29] <= ifbuf4[29];
        end

        if($signed(ifbuf3[31]) >= $signed(ifbuf4[31])) begin
            ifbuf2[31] <= ifbuf3[31];
        end else begin
            ifbuf2[31] <= ifbuf4[31];
        end
//----------------------------------------------------------
        Selctrl <= Selctrl + 1;//二分打拍，用以告诉Bram是否选择该数�??????? //1位即�???????
//---------
    end
// -----------
    `Layer3: begin
        case ( Process )
        `Init:begin
            if (Counter != 5'd3) begin
                Counter <= Counter + 1;
                Process <= `Init;
                ifbuf6[24]   <=   ifmap_in4[63:56];
                ifbuf6[25]   <=   ifmap_in4[55:48];
                ifbuf6[26]   <=   ifmap_in4[47:40];
                ifbuf6[27]   <=   ifmap_in4[39:32];
                ifbuf6[28]   <=   ifmap_in4[31:24];
                ifbuf6[29]   <=   ifmap_in4[23:16];
                ifbuf6[30]   <=   ifmap_in4[15:8];
                ifbuf6[31]   <=   ifmap_in4[7:0];
//--------------------------------------------------                                
                ifbuf6[23] <=      ifbuf6[31];
                ifbuf6[22] <=      ifbuf6[30];
                ifbuf6[21] <=      ifbuf6[29];
                ifbuf6[20] <=      ifbuf6[28];
                ifbuf6[19] <=      ifbuf6[27];
                ifbuf6[18] <=      ifbuf6[26];
                ifbuf6[17] <=      ifbuf6[25];
                ifbuf6[16] <=      ifbuf6[24];

                ifbuf6[8]   <=    ifmap_in3[63:56];
                ifbuf6[9]   <=    ifmap_in3[55:48];
                ifbuf6[10]   <=   ifmap_in3[47:40];
                ifbuf6[11]   <=   ifmap_in3[39:32];
                ifbuf6[12]   <=   ifmap_in3[31:24];
                ifbuf6[13]   <=   ifmap_in3[23:16];
                ifbuf6[14]   <=   ifmap_in3[15:8];
                ifbuf6[15]   <=   ifmap_in3[7:0];

                ifbuf6[7] <=      ifbuf6[15];
                ifbuf6[6] <=      ifbuf6[14];
                ifbuf6[5] <=      ifbuf6[13];
                ifbuf6[4] <=      ifbuf6[12];
                ifbuf6[3] <=      ifbuf6[11];
                ifbuf6[2] <=      ifbuf6[10];
                ifbuf6[1] <=      ifbuf6[9];
                ifbuf6[0] <=      ifbuf6[8];

                ifbuf5[31] <=      ifbuf6[23];
                ifbuf5[30] <=      ifbuf6[22];
                ifbuf5[29] <=      ifbuf6[21];
                ifbuf5[28] <=      ifbuf6[20];
                ifbuf5[27] <=      ifbuf6[19];
                ifbuf5[26] <=      ifbuf6[18];
                ifbuf5[25] <=      ifbuf6[17];
                ifbuf5[24] <=      ifbuf6[16];
//--------------------------------------------
                ifbuf5[23] <=      ifbuf5[31];
                ifbuf5[22] <=      ifbuf5[30];
                ifbuf5[21] <=      ifbuf5[29];
                ifbuf5[20] <=      ifbuf5[28];
                ifbuf5[19] <=      ifbuf5[27];
                ifbuf5[18] <=      ifbuf5[26];
                ifbuf5[17] <=      ifbuf5[25];
                ifbuf5[16] <=      ifbuf5[24];

                ifbuf5[15] <=      ifbuf6[7];
                ifbuf5[14] <=      ifbuf6[6];
                ifbuf5[13] <=      ifbuf6[5];
                ifbuf5[12] <=      ifbuf6[4];
                ifbuf5[11] <=      ifbuf6[3];
                ifbuf5[10] <=      ifbuf6[2];
                ifbuf5[9] <=      ifbuf6[1];
                ifbuf5[8] <=      ifbuf6[0];

                ifbuf5[7] <=      ifbuf5[15];
                ifbuf5[6] <=      ifbuf5[14];
                ifbuf5[5] <=      ifbuf5[13];
                ifbuf5[4] <=      ifbuf5[12];
                ifbuf5[3] <=      ifbuf5[11];
                ifbuf5[2] <=      ifbuf5[10];
                ifbuf5[1] <=      ifbuf5[9];
                ifbuf5[0] <=      ifbuf5[8];



                ifbuf3[24]   <=   ifmap_in2[63:56];
                ifbuf3[25]   <=   ifmap_in2[55:48];
                ifbuf3[26]   <=   ifmap_in2[47:40];
                ifbuf3[27]   <=   ifmap_in2[39:32];
                ifbuf3[28]   <=   ifmap_in2[31:24];
                ifbuf3[29]   <=   ifmap_in2[23:16];
                ifbuf3[30]   <=   ifmap_in2[15:8];
                ifbuf3[31]   <=   ifmap_in2[7:0];
//--------------------------------------------------                                
                ifbuf3[23] <=      ifbuf3[31];
                ifbuf3[22] <=      ifbuf3[30];
                ifbuf3[21] <=      ifbuf3[29];
                ifbuf3[20] <=      ifbuf3[28];
                ifbuf3[19] <=      ifbuf3[27];
                ifbuf3[18] <=      ifbuf3[26];
                ifbuf3[17] <=      ifbuf3[25];
                ifbuf3[16] <=      ifbuf3[24];

                ifbuf3[8]   <=    ifmap_in1[63:56];
                ifbuf3[9]   <=    ifmap_in1[55:48];
                ifbuf3[10]   <=   ifmap_in1[47:40];
                ifbuf3[11]   <=   ifmap_in1[39:32];
                ifbuf3[12]   <=   ifmap_in1[31:24];
                ifbuf3[13]   <=   ifmap_in1[23:16];
                ifbuf3[14]   <=   ifmap_in1[15:8];
                ifbuf3[15]   <=   ifmap_in1[7:0];

                ifbuf3[7] <=      ifbuf3[15];
                ifbuf3[6] <=      ifbuf3[14];
                ifbuf3[5] <=      ifbuf3[13];
                ifbuf3[4] <=      ifbuf3[12];
                ifbuf3[3] <=      ifbuf3[11];
                ifbuf3[2] <=      ifbuf3[10];
                ifbuf3[1] <=      ifbuf3[9];
                ifbuf3[0] <=      ifbuf3[8];

                ifbuf2[31] <=      ifbuf3[23];
                ifbuf2[30] <=      ifbuf3[22];
                ifbuf2[29] <=      ifbuf3[21];
                ifbuf2[28] <=      ifbuf3[20];
                ifbuf2[27] <=      ifbuf3[19];
                ifbuf2[26] <=      ifbuf3[18];
                ifbuf2[25] <=      ifbuf3[17];
                ifbuf2[24] <=      ifbuf3[16];
//--------------------------------------------
                ifbuf2[23] <=      ifbuf2[31];
                ifbuf2[22] <=      ifbuf2[30];
                ifbuf2[21] <=      ifbuf2[29];
                ifbuf2[20] <=      ifbuf2[28];
                ifbuf2[19] <=      ifbuf2[27];
                ifbuf2[18] <=      ifbuf2[26];
                ifbuf2[17] <=      ifbuf2[25];
                ifbuf2[16] <=      ifbuf2[24];

                ifbuf2[15] <=      ifbuf3[7];
                ifbuf2[14] <=      ifbuf3[6];
                ifbuf2[13] <=      ifbuf3[5];
                ifbuf2[12] <=      ifbuf3[4];
                ifbuf2[11] <=      ifbuf3[3];
                ifbuf2[10] <=      ifbuf3[2];
                ifbuf2[9] <=      ifbuf3[1];
                ifbuf2[8] <=      ifbuf3[0];

                ifbuf2[7] <=      ifbuf2[15];
                ifbuf2[6] <=      ifbuf2[14];
                ifbuf2[5] <=      ifbuf2[13];
                ifbuf2[4] <=      ifbuf2[12];
                ifbuf2[3] <=      ifbuf2[11];
                ifbuf2[2] <=      ifbuf2[10];
                ifbuf2[1] <=      ifbuf2[9];
                ifbuf2[0] <=      ifbuf2[8];

                  
              end else begin
                ifbuf4[0]    <=      0;
                ifbuf4[1]    <=      0;
                ifbuf4[2]    <=      0;
                ifbuf4[3]    <=      0;
                ifbuf4[4]    <=      0;
                ifbuf4[5]    <=      0;
                ifbuf4[6]    <=      0;
                ifbuf4[7]    <=      0;
                ifbuf4[8]    <=      0;
                ifbuf4[9]    <=      0;
                ifbuf4[10]   <=      0;
                ifbuf4[11]   <=      0;
                ifbuf4[12]   <=      0;
                ifbuf4[13]   <=      0;
                ifbuf4[14]   <=      0;
                ifbuf4[15]   <=      0;
                ifbuf4[16]   <=      0;
                ifbuf4[17]   <=      0;
                ifbuf4[18]   <=      0;
                ifbuf4[19]   <=      0;
                ifbuf4[20]   <=      0;
                ifbuf4[21]   <=      0;
                ifbuf4[22]   <=      0;
                ifbuf4[23]   <=      0;
                ifbuf4[24]   <=      0;
                ifbuf4[25]   <=      0;
                ifbuf4[26]   <=      0;
                ifbuf4[27]   <=      0;
                ifbuf4[28]   <=      0;
                ifbuf4[29]   <=      0;
                ifbuf4[30]   <=      0;
                ifbuf1[31]   <=      0;
                ifbuf1[0]    <=      0;
                ifbuf1[1]    <=      0;
                ifbuf1[2]    <=      0;
                ifbuf1[3]    <=      0;
                ifbuf1[4]    <=      0;
                ifbuf1[5]    <=      0;
                ifbuf1[6]    <=      0;
                ifbuf1[7]    <=      0;
                ifbuf1[8]    <=      0;
                ifbuf1[9]    <=      0;
                ifbuf1[10]   <=      0;
                ifbuf1[11]   <=      0;
                ifbuf1[12]   <=      0;
                ifbuf1[13]   <=      0;
                ifbuf1[14]   <=      0;
                ifbuf1[15]   <=      0;
                ifbuf1[16]   <=      0;
                ifbuf1[17]   <=      0;
                ifbuf1[18]   <=      0;
                ifbuf1[19]   <=      0;
                ifbuf1[20]   <=      0;
                ifbuf1[21]   <=      0;
                ifbuf1[22]   <=      0;
                ifbuf1[23]   <=      0;
                ifbuf1[24]   <=      0;
                ifbuf1[25]   <=      0;
                ifbuf1[26]   <=      0;
                ifbuf1[27]   <=      0;
                ifbuf1[28]   <=      0;
                ifbuf1[29]   <=      0;
                ifbuf1[30]   <=      0;
                ifbuf1[31]   <=      0;                
                regPad1[0]   <= 0;
                regPad2[0]   <= 0;
                regPad3[0]   <= 0;
                regPad4[0]   <= 0;
                regPad5[0]   <= 0;
                regPad1[1]   <= 0;
                regPad6[0]   <= 0;
                regPad6[1]   <= 0;
                regPad2[1]   <= 0;
                regPad3[1]   <= 0;
                regPad4[1]   <= 0;
                regPad5[1]   <= 0;
                Process <= `Start;
                Counter <= 0;
              end
        end
        //ifbuf5[31]è¿æ¯æ°æ®ï¿??????
        `Start:begin
            
            regPad6[0]   <=      ifbuf6[0];
            ifbuf6[0]    <=      ifbuf6[1];
            ifbuf6[1]    <=      ifbuf6[2];
            ifbuf6[2]    <=      ifbuf6[3];
            ifbuf6[3]    <=      ifbuf6[4];
            ifbuf6[4]    <=      ifbuf6[5];
            ifbuf6[5]    <=      ifbuf6[6];
            ifbuf6[6]    <=      ifbuf6[7];
            ifbuf6[7]    <=      ifbuf6[8];
            ifbuf6[8]    <=      ifbuf6[9];
            ifbuf6[9]    <=      ifbuf6[10];
            ifbuf6[10]   <=      ifbuf6[11];
            ifbuf6[11]   <=      ifbuf6[12];
            ifbuf6[12]   <=      ifbuf6[13];
            ifbuf6[13]   <=      ifbuf6[14];
            ifbuf6[14]   <=      ifbuf6[15];

            regPad6[1]   <=      ifbuf6[16];
            ifbuf6[16]   <=      ifbuf6[17];
            ifbuf6[17]   <=      ifbuf6[18];
            ifbuf6[18]   <=      ifbuf6[19];
            ifbuf6[19]   <=      ifbuf6[20];
            ifbuf6[20]   <=      ifbuf6[21];
            ifbuf6[21]   <=      ifbuf6[22];
            ifbuf6[22]   <=      ifbuf6[23];
            ifbuf6[23]   <=      ifbuf6[24];
            ifbuf6[24]   <=      ifbuf6[25];
            ifbuf6[25]   <=      ifbuf6[26];
            ifbuf6[26]   <=      ifbuf6[27];
            ifbuf6[27]   <=      ifbuf6[28];
            ifbuf6[28]   <=      ifbuf6[29];
            ifbuf6[29]   <=      ifbuf6[30];
            ifbuf6[30]   <=      ifbuf6[31];

            
            regPad5[0]   <=      ifbuf5[0];
            ifbuf5[0]    <=      ifbuf5[1];
            ifbuf5[1]    <=      ifbuf5[2];
            ifbuf5[2]    <=      ifbuf5[3];
            ifbuf5[3]    <=      ifbuf5[4];
            ifbuf5[4]    <=      ifbuf5[5];
            ifbuf5[5]    <=      ifbuf5[6];
            ifbuf5[6]    <=      ifbuf5[7];
            ifbuf5[7]    <=      ifbuf5[8];
            ifbuf5[8]    <=      ifbuf5[9];
            ifbuf5[9]    <=      ifbuf5[10];
            ifbuf5[10]   <=      ifbuf5[11];
            ifbuf5[11]   <=      ifbuf5[12];
            ifbuf5[12]   <=      ifbuf5[13];
            ifbuf5[13]   <=      ifbuf5[14];
            ifbuf5[14]   <=      ifbuf5[15];
            ifbuf5[15]   <=      regPad6[0];

            regPad5[1]   <=      ifbuf5[16];
            ifbuf5[16]   <=      ifbuf5[17];
            ifbuf5[17]   <=      ifbuf5[18];
            ifbuf5[18]   <=      ifbuf5[19];
            ifbuf5[19]   <=      ifbuf5[20];
            ifbuf5[20]   <=      ifbuf5[21];
            ifbuf5[21]   <=      ifbuf5[22];
            ifbuf5[22]   <=      ifbuf5[23];
            ifbuf5[23]   <=      ifbuf5[24];
            ifbuf5[24]   <=      ifbuf5[25];
            ifbuf5[25]   <=      ifbuf5[26];
            ifbuf5[26]   <=      ifbuf5[27];
            ifbuf5[27]   <=      ifbuf5[28];
            ifbuf5[28]   <=      ifbuf5[29];
            ifbuf5[29]   <=      ifbuf5[30];
            ifbuf5[30]   <=      ifbuf5[31];
            ifbuf5[31]   <=      regPad6[1];

            
            regPad4[0]   <=      ifbuf4[0];
            ifbuf4[0]    <=      ifbuf4[1];
            ifbuf4[1]    <=      ifbuf4[2];
            ifbuf4[2]    <=      ifbuf4[3];
            ifbuf4[3]    <=      ifbuf4[4];
            ifbuf4[4]    <=      ifbuf4[5];
            ifbuf4[5]    <=      ifbuf4[6];
            ifbuf4[6]    <=      ifbuf4[7];
            ifbuf4[7]    <=      ifbuf4[8];
            ifbuf4[8]    <=      ifbuf4[9];
            ifbuf4[9]    <=      ifbuf4[10];
            ifbuf4[10]   <=      ifbuf4[11];
            ifbuf4[11]   <=      ifbuf4[12];
            ifbuf4[12]   <=      ifbuf4[13];
            ifbuf4[13]   <=      ifbuf4[14];
            ifbuf4[14]   <=      ifbuf4[15];
            ifbuf4[15]   <=      regPad5[0];

            regPad4[1]   <=      ifbuf4[16];
            ifbuf4[16]   <=      ifbuf4[17];
            ifbuf4[17]   <=      ifbuf4[18];
            ifbuf4[18]   <=      ifbuf4[19];
            ifbuf4[19]   <=      ifbuf4[20];
            ifbuf4[20]   <=      ifbuf4[21];
            ifbuf4[21]   <=      ifbuf4[22];
            ifbuf4[22]   <=      ifbuf4[23];
            ifbuf4[23]   <=      ifbuf4[24];
            ifbuf4[24]   <=      ifbuf4[25];
            ifbuf4[25]   <=      ifbuf4[26];
            ifbuf4[26]   <=      ifbuf4[27];
            ifbuf4[27]   <=      ifbuf4[28];
            ifbuf4[28]   <=      ifbuf4[29];
            ifbuf4[29]   <=      ifbuf4[30];
            ifbuf4[30]   <=      ifbuf4[31];
            ifbuf4[31]   <=      regPad5[1];

            
            regPad3[0]   <=      ifbuf3[0];
            ifbuf3[0]    <=      ifbuf3[1];
            ifbuf3[1]    <=      ifbuf3[2];
            ifbuf3[2]    <=      ifbuf3[3];
            ifbuf3[3]    <=      ifbuf3[4];
            ifbuf3[4]    <=      ifbuf3[5];
            ifbuf3[5]    <=      ifbuf3[6];
            ifbuf3[6]    <=      ifbuf3[7];
            ifbuf3[7]    <=      ifbuf3[8];
            ifbuf3[8]    <=      ifbuf3[9];
            ifbuf3[9]    <=      ifbuf3[10];
            ifbuf3[10]   <=      ifbuf3[11];
            ifbuf3[11]   <=      ifbuf3[12];
            ifbuf3[12]   <=      ifbuf3[13];
            ifbuf3[13]   <=      ifbuf3[14];
            ifbuf3[14]   <=      ifbuf3[15];

            regPad3[1]   <=      ifbuf3[16];
            ifbuf3[16]   <=      ifbuf3[17];
            ifbuf3[17]   <=      ifbuf3[18];
            ifbuf3[18]   <=      ifbuf3[19];
            ifbuf3[19]   <=      ifbuf3[20];
            ifbuf3[20]   <=      ifbuf3[21];
            ifbuf3[21]   <=      ifbuf3[22];
            ifbuf3[22]   <=      ifbuf3[23];
            ifbuf3[23]   <=      ifbuf3[24];
            ifbuf3[24]   <=      ifbuf3[25];
            ifbuf3[25]   <=      ifbuf3[26];
            ifbuf3[26]   <=      ifbuf3[27];
            ifbuf3[27]   <=      ifbuf3[28];
            ifbuf3[28]   <=      ifbuf3[29];
            ifbuf3[29]   <=      ifbuf3[30];
            ifbuf3[30]   <=      ifbuf3[31];

            
            regPad2[0]   <=      ifbuf2[0];
            ifbuf2[0]    <=      ifbuf2[1];
            ifbuf2[1]    <=      ifbuf2[2];
            ifbuf2[2]    <=      ifbuf2[3];
            ifbuf2[3]    <=      ifbuf2[4];
            ifbuf2[4]    <=      ifbuf2[5];
            ifbuf2[5]    <=      ifbuf2[6];
            ifbuf2[6]    <=      ifbuf2[7];
            ifbuf2[7]    <=      ifbuf2[8];
            ifbuf2[8]    <=      ifbuf2[9];
            ifbuf2[9]    <=      ifbuf2[10];
            ifbuf2[10]   <=      ifbuf2[11];
            ifbuf2[11]   <=      ifbuf2[12];
            ifbuf2[12]   <=      ifbuf2[13];
            ifbuf2[13]   <=      ifbuf2[14];
            ifbuf2[14]   <=      ifbuf2[15];
            ifbuf2[15]   <=      regPad3[0];

            regPad2[1]   <=      ifbuf2[16];
            ifbuf2[16]   <=      ifbuf2[17];
            ifbuf2[17]   <=      ifbuf2[18];
            ifbuf2[18]   <=      ifbuf2[19];
            ifbuf2[19]   <=      ifbuf2[20];
            ifbuf2[20]   <=      ifbuf2[21];
            ifbuf2[21]   <=      ifbuf2[22];
            ifbuf2[22]   <=      ifbuf2[23];
            ifbuf2[23]   <=      ifbuf2[24];
            ifbuf2[24]   <=      ifbuf2[25];
            ifbuf2[25]   <=      ifbuf2[26];
            ifbuf2[26]   <=      ifbuf2[27];
            ifbuf2[27]   <=      ifbuf2[28];
            ifbuf2[28]   <=      ifbuf2[29];
            ifbuf2[29]   <=      ifbuf2[30];
            ifbuf2[30]   <=      ifbuf2[31];
            ifbuf2[31]   <=      regPad3[1];


            
            regPad1[0]   <=      ifbuf1[0];
            ifbuf1[0]    <=      ifbuf1[1];
            ifbuf1[1]    <=      ifbuf1[2];
            ifbuf1[2]    <=      ifbuf1[3];
            ifbuf1[3]    <=      ifbuf1[4];
            ifbuf1[4]    <=      ifbuf1[5];
            ifbuf1[5]    <=      ifbuf1[6];
            ifbuf1[6]    <=      ifbuf1[7];
            ifbuf1[7]    <=      ifbuf1[8];
            ifbuf1[8]    <=      ifbuf1[9];
            ifbuf1[9]    <=      ifbuf1[10];
            ifbuf1[10]   <=      ifbuf1[11];
            ifbuf1[11]   <=      ifbuf1[12];
            ifbuf1[12]   <=      ifbuf1[13];
            ifbuf1[13]   <=      ifbuf1[14];
            ifbuf1[14]   <=      ifbuf1[15];
            ifbuf1[15]   <=      regPad2[0];

            regPad1[1]   <=      ifbuf1[16];
            ifbuf1[16]   <=      ifbuf1[17];
            ifbuf1[17]   <=      ifbuf1[18];
            ifbuf1[18]   <=      ifbuf1[19];
            ifbuf1[19]   <=      ifbuf1[20];
            ifbuf1[20]   <=      ifbuf1[21];
            ifbuf1[21]   <=      ifbuf1[22];
            ifbuf1[22]   <=      ifbuf1[23];
            ifbuf1[23]   <=      ifbuf1[24];
            ifbuf1[24]   <=      ifbuf1[25];
            ifbuf1[25]   <=      ifbuf1[26];
            ifbuf1[26]   <=      ifbuf1[27];
            ifbuf1[27]   <=      ifbuf1[28];
            ifbuf1[28]   <=      ifbuf1[29];
            ifbuf1[29]   <=      ifbuf1[30];
            ifbuf1[30]   <=      ifbuf1[31];
            ifbuf1[31]   <=      regPad2[1];

            case ( Counter )
            6'd9 : begin
                ifbuf6[8]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in3[63:56];
                ifbuf6[9]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in3[55:48];
                ifbuf6[10]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in3[47:40];
                ifbuf6[11]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in3[39:32];
                ifbuf6[12]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in3[31:24];
                ifbuf6[13]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in3[23:16];
                ifbuf6[14]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in3[15:8];
                ifbuf6[15]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in3[7:0];

                ifbuf6[24]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in4[63:56];
                ifbuf6[25]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in4[55:48];
                ifbuf6[26]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in4[47:40];
                ifbuf6[27]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in4[39:32];
                ifbuf6[28]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in4[31:24];
                ifbuf6[29]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in4[23:16];
                ifbuf6[30]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in4[15:8];
                ifbuf6[31]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in4[7:0];

                ifbuf3[8]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in1[63:56];
                ifbuf3[9]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in1[55:48];
                ifbuf3[10]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in1[47:40];
                ifbuf3[11]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in1[39:32];
                ifbuf3[12]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in1[31:24];
                ifbuf3[13]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in1[23:16];
                ifbuf3[14]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in1[15:8];
                ifbuf3[15]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in1[7:0];
                
                ifbuf3[24]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in2[63:56];
                ifbuf3[25]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in2[55:48];
                ifbuf3[26]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in2[47:40];
                ifbuf3[27]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in2[39:32];
                ifbuf3[28]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in2[31:24];
                ifbuf3[29]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in2[23:16];
                ifbuf3[30]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in2[15:8];
                ifbuf3[31]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in2[7:0];

                Counter <= Counter + 1;
                Trashdata <= 0;
            end
            6'd17 : begin
                ifbuf6[8]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in3[63:56];
                ifbuf6[9]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in3[55:48];
                ifbuf6[10]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in3[47:40];
                ifbuf6[11]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in3[39:32];
                ifbuf6[12]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in3[31:24];
                ifbuf6[13]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in3[23:16];
                ifbuf6[14]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in3[15:8];
                ifbuf6[15]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in3[7:0];

                ifbuf6[24]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in4[63:56];
                ifbuf6[25]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in4[55:48];
                ifbuf6[26]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in4[47:40];
                ifbuf6[27]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in4[39:32];
                ifbuf6[28]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in4[31:24];
                ifbuf6[29]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in4[23:16];
                ifbuf6[30]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in4[15:8];
                ifbuf6[31]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in4[7:0];

                ifbuf3[8]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in1[63:56];
                ifbuf3[9]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in1[55:48];
                ifbuf3[10]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in1[47:40];
                ifbuf3[11]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in1[39:32];
                ifbuf3[12]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in1[31:24];
                ifbuf3[13]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in1[23:16];
                ifbuf3[14]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in1[15:8];
                ifbuf3[15]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in1[7:0];
                
                ifbuf3[24]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in2[63:56];
                ifbuf3[25]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in2[55:48];
                ifbuf3[26]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in2[47:40];
                ifbuf3[27]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in2[39:32];
                ifbuf3[28]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in2[31:24];
                ifbuf3[29]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in2[23:16];
                ifbuf3[30]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in2[15:8];
                ifbuf3[31]   <=   (Row == 5'd14 || Row == 5'd15)? 8'd0:ifmap_in2[7:0];

                Counter <= 6'd1;
                Trashdata <= 0;
                if(Row == 5'd15) begin
                    Row <= 0;
                end else begin
                    Row <= Row + 1;                    
                end
            end

            6'd1 : begin
                ifbuf6[8]   <=      ifbuf6[9];
                ifbuf6[9]   <=      ifbuf6[10];
                ifbuf6[10]   <=      ifbuf6[11];
                ifbuf6[11]   <=      ifbuf6[12];
                ifbuf6[12]   <=      ifbuf6[13];
                ifbuf6[13]   <=      ifbuf6[14];
                ifbuf6[14]   <=      ifbuf6[15];
                ifbuf6[15]   <=      0;

                ifbuf6[24]   <=      ifbuf6[25];
                ifbuf6[25]   <=      ifbuf6[26];
                ifbuf6[26]   <=      ifbuf6[27];
                ifbuf6[27]   <=      ifbuf6[28];
                ifbuf6[28]   <=      ifbuf6[29];
                ifbuf6[29]   <=      ifbuf6[30];
                ifbuf6[30]   <=      ifbuf6[31];
                ifbuf6[31]   <=      0;

                ifbuf3[8]   <=      ifbuf3[9];
                ifbuf3[9]   <=      ifbuf3[10];
                ifbuf3[10]   <=      ifbuf3[11];
                ifbuf3[11]   <=      ifbuf3[12];
                ifbuf3[12]   <=      ifbuf3[13];
                ifbuf3[13]   <=      ifbuf3[14];
                ifbuf3[14]   <=      ifbuf3[15];
                ifbuf3[15]   <=      0;
                
                ifbuf3[24]   <=      ifbuf3[25];
                ifbuf3[25]   <=      ifbuf3[26];
                ifbuf3[26]   <=      ifbuf3[27];
                ifbuf3[27]   <=      ifbuf3[28];
                ifbuf3[28]   <=      ifbuf3[29];
                ifbuf3[29]   <=      ifbuf3[30];
                ifbuf3[30]   <=      ifbuf3[31];
                ifbuf3[31]   <=      0;

                Counter <= Counter + 1;
                Trashdata <= 0;
            end
            6'd15 : begin
                ifbuf6[8]   <=      ifbuf6[9];
                ifbuf6[9]   <=      ifbuf6[10];
                ifbuf6[10]   <=      ifbuf6[11];
                ifbuf6[11]   <=      ifbuf6[12];
                ifbuf6[12]   <=      ifbuf6[13];
                ifbuf6[13]   <=      ifbuf6[14];
                ifbuf6[14]   <=      ifbuf6[15];

                ifbuf6[24]   <=      ifbuf6[25];
                ifbuf6[25]   <=      ifbuf6[26];
                ifbuf6[26]   <=      ifbuf6[27];
                ifbuf6[27]   <=      ifbuf6[28];
                ifbuf6[28]   <=      ifbuf6[29];
                ifbuf6[29]   <=      ifbuf6[30];
                ifbuf6[30]   <=      ifbuf6[31];

                ifbuf3[8]   <=      ifbuf3[9];
                ifbuf3[9]   <=      ifbuf3[10];
                ifbuf3[10]   <=      ifbuf3[11];
                ifbuf3[11]   <=      ifbuf3[12];
                ifbuf3[12]   <=      ifbuf3[13];
                ifbuf3[13]   <=      ifbuf3[14];
                ifbuf3[14]   <=      ifbuf3[15];
                
                ifbuf3[24]   <=      ifbuf3[25];
                ifbuf3[25]   <=      ifbuf3[26];
                ifbuf3[26]   <=      ifbuf3[27];
                ifbuf3[27]   <=      ifbuf3[28];
                ifbuf3[28]   <=      ifbuf3[29];
                ifbuf3[29]   <=      ifbuf3[30];
                ifbuf3[30]   <=      ifbuf3[31];
                
                Counter <= Counter + 1;
                Trashdata <= 1;
            end
            default :begin
                ifbuf6[8]   <=      ifbuf6[9];
                ifbuf6[9]   <=      ifbuf6[10];
                ifbuf6[10]   <=      ifbuf6[11];
                ifbuf6[11]   <=      ifbuf6[12];
                ifbuf6[12]   <=      ifbuf6[13];
                ifbuf6[13]   <=      ifbuf6[14];
                ifbuf6[14]   <=      ifbuf6[15];

                ifbuf6[24]   <=      ifbuf6[25];
                ifbuf6[25]   <=      ifbuf6[26];
                ifbuf6[26]   <=      ifbuf6[27];
                ifbuf6[27]   <=      ifbuf6[28];
                ifbuf6[28]   <=      ifbuf6[29];
                ifbuf6[29]   <=      ifbuf6[30];
                ifbuf6[30]   <=      ifbuf6[31];

                ifbuf3[8]   <=      ifbuf3[9];
                ifbuf3[9]   <=      ifbuf3[10];
                ifbuf3[10]   <=      ifbuf3[11];
                ifbuf3[11]   <=      ifbuf3[12];
                ifbuf3[12]   <=      ifbuf3[13];
                ifbuf3[13]   <=      ifbuf3[14];
                ifbuf3[14]   <=      ifbuf3[15];
                
                ifbuf3[24]   <=      ifbuf3[25];
                ifbuf3[25]   <=      ifbuf3[26];
                ifbuf3[26]   <=      ifbuf3[27];
                ifbuf3[27]   <=      ifbuf3[28];
                ifbuf3[28]   <=      ifbuf3[29];
                ifbuf3[29]   <=      ifbuf3[30];
                ifbuf3[30]   <=      ifbuf3[31];
                
                Counter <= Counter + 1;
                Trashdata <= 0;
            end
            endcase
            
        end
        endcase
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
//-------------       

     end
    `Layer5: begin 
        case ( State )     
        `Init:begin
            ifbuf6[24]   <=   0;
            ifbuf6[25]   <=   0;
            ifbuf6[26]   <=   0;
            ifbuf6[27]   <=   0;
            ifbuf6[28]   <=   0;
            ifbuf6[29]   <=   0;
            ifbuf6[30]   <=   0;
            ifbuf6[31]   <=   0;
                
            ifbuf5[24]   <=   ifmap_in1[63:56];
            ifbuf5[25]   <=   ifmap_in1[55:48];
            ifbuf5[26]   <=   ifmap_in1[47:40];
            ifbuf5[27]   <=   ifmap_in1[39:32];
            ifbuf5[28]   <=   ifmap_in1[31:24];
            ifbuf5[29]   <=   ifmap_in1[23:16];
            ifbuf5[30]   <=   ifmap_in1[15:8];
            ifbuf5[31]   <=   ifmap_in1[7:0];  

            ifbuf4[24]   <=   ifmap_in2[63:56];
            ifbuf4[25]   <=   ifmap_in2[55:48];
            ifbuf4[26]   <=   ifmap_in2[47:40];
            ifbuf4[27]   <=   ifmap_in2[39:32];
            ifbuf4[28]   <=   ifmap_in2[31:24];
            ifbuf4[29]   <=   ifmap_in2[23:16];
            ifbuf4[30]   <=   ifmap_in2[15:8];
            ifbuf4[31]   <=   ifmap_in2[7:0]; 
            regPad4[1]   <= 0;
            regPad5[1]   <= 0;
            regPad6[1]   <= 0;
            StateBubble3 <= `Start;
            StateBubble2 <= `Start;
            StateBubble1 <= `Start;
            State        <= `Start;  
        end
        `Start:begin

//------------------------------------------------------
            ifbuf6[24]   <=   ifbuf4[24];
            ifbuf6[25]   <=   ifbuf4[25];
            ifbuf6[26]   <=   ifbuf4[26];
            ifbuf6[27]   <=   ifbuf4[27];
            ifbuf6[28]   <=   ifbuf4[28];
            ifbuf6[29]   <=   ifbuf4[29];
            ifbuf6[30]   <=   ifbuf4[30];
            ifbuf6[31]   <=   ifbuf4[31];
                
            ifbuf5[24]   <=   ifmap_in1[63:56];
            ifbuf5[25]   <=   ifmap_in1[55:48];
            ifbuf5[26]   <=   ifmap_in1[47:40];
            ifbuf5[27]   <=   ifmap_in1[39:32];
            ifbuf5[28]   <=   ifmap_in1[31:24];
            ifbuf5[29]   <=   ifmap_in1[23:16];
            ifbuf5[30]   <=   ifmap_in1[15:8];
            ifbuf5[31]   <=   ifmap_in1[7:0];  

            ifbuf4[24]   <=   ifmap_in2[63:56];
            ifbuf4[25]   <=   ifmap_in2[55:48];
            ifbuf4[26]   <=   ifmap_in2[47:40];
            ifbuf4[27]   <=   ifmap_in2[39:32];
            ifbuf4[28]   <=   ifmap_in2[31:24];
            ifbuf4[29]   <=   ifmap_in2[23:16];
            ifbuf4[30]   <=   ifmap_in2[15:8];
            ifbuf4[31]   <=   ifmap_in2[7:0];
//---------------------------------------------------------
            multi111 <= weight11_in * ifbuf6[25];
            multi112 <= weight12_in * ifbuf6[24]; 
            multi113 <= weight13_in * regPad6[1];
            multi121 <= weight21_in * ifbuf5[25]; 
            multi122 <= weight22_in * ifbuf5[24];
            multi123 <= weight23_in * regPad5[1];
            multi131 <= weight31_in * ifbuf4[25];
            multi132 <= weight32_in * ifbuf4[24];
            multi133 <= weight33_in * regPad4[1];

            plusi11 <= multi111 + multi112 + multi113;
            plusi12 <= multi121 + multi122 + multi123;
            plusi13 <= multi131 + multi132 + multi133;
            
//----------------------------------------------------------
            multi211 <= weight11_in * ifbuf6[27];
            multi212 <= weight12_in * ifbuf6[26]; 
            multi213 <= weight13_in * ifbuf6[25];
            multi221 <= weight21_in * ifbuf5[27]; 
            multi222 <= weight22_in * ifbuf5[26];
            multi223 <= weight23_in * ifbuf5[25];
            multi231 <= weight31_in * ifbuf4[27];
            multi232 <= weight32_in * ifbuf4[26];
            multi233 <= weight33_in * ifbuf4[25];

            plusi21 <= multi211 + multi212 + multi213;
            plusi22 <= multi221 + multi222 + multi223;
            plusi23 <= multi231 + multi232 + multi233;
            
//----------------------------------------------------------
            multi311 <= weight11_in * ifbuf6[29];
            multi312 <= weight12_in * ifbuf6[28]; 
            multi313 <= weight13_in * ifbuf6[27];
            multi321 <= weight21_in * ifbuf5[29]; 
            multi322 <= weight22_in * ifbuf5[28];
            multi323 <= weight23_in * ifbuf5[27];
            multi331 <= weight31_in * ifbuf4[29];
            multi332 <= weight32_in * ifbuf4[28];
            multi333 <= weight33_in * ifbuf4[27];

            plusi31 <= multi311 + multi312 + multi313;
            plusi32 <= multi321 + multi322 + multi323;
            plusi33 <= multi331 + multi332 + multi333;
            
//----------------------------------------------------------
            multi411 <= weight11_in * ifbuf6[31];
            multi412 <= weight12_in * ifbuf6[30]; 
            multi413 <= weight13_in * ifbuf6[29];
            multi421 <= weight21_in * ifbuf5[31]; 
            multi422 <= weight22_in * ifbuf5[30];
            multi423 <= weight23_in * ifbuf5[29];
            multi431 <= weight31_in * ifbuf4[31];
            multi432 <= weight32_in * ifbuf4[30];
            multi433 <= weight33_in * ifbuf4[29];

            plusi41 <= multi411 + multi412 + multi413;
            plusi42 <= multi421 + multi422 + multi423;
            plusi43 <= multi431 + multi432 + multi433;
//----------------------------------------------------------
            if(StateBubble2 == `Init) begin
            ifbuf6[23] <= plusi11  + plusi12  + plusi13 + ifbuf6[23];
            ifbuf6[22] <= plusi21  + plusi22  + plusi23 + ifbuf6[22];
            ifbuf6[21] <= plusi31  + plusi32  + plusi33 + ifbuf6[21];
            ifbuf6[20] <= plusi41  + plusi42  + plusi43 + ifbuf6[20];
            end
//----------------------------------------------------------
            if(StateBubble3 == `Init) begin
            ifbuf5[23] <= plusi11  + plusi12  + plusi13 + ifbuf5[23];
            ifbuf5[22] <= plusi21  + plusi22  + plusi23 + ifbuf5[22];
            ifbuf5[21] <= plusi31  + plusi32  + plusi33 + ifbuf5[21];
            ifbuf5[20] <= plusi41  + plusi42  + plusi43 + ifbuf5[20];
            end
//----------------------------------------------------------
            if(StateBubble4 == `Init) begin
            ifbuf4[23] <= plusi11  + plusi12  + plusi13 + ifbuf4[23];
            ifbuf4[22] <= plusi21  + plusi22  + plusi23 + ifbuf4[22];
            ifbuf4[21] <= plusi31  + plusi32  + plusi33 + ifbuf4[21];
            ifbuf4[20] <= plusi41  + plusi42  + plusi43 + ifbuf4[20];
            end
//----------------------------------------------------------
            if(StateBubble5 == `Init) begin
            ifbuf3[23] <= plusi11  + plusi12  + plusi13 + ifbuf3[23];
            ifbuf3[22] <= plusi21  + plusi22  + plusi23 + ifbuf3[22];
            ifbuf3[21] <= plusi31  + plusi32  + plusi33 + ifbuf3[21];
            ifbuf3[20] <= plusi41  + plusi42  + plusi43 + ifbuf3[20];
            end
//----------------------------------------------------------
            //6   31 30 29 28 27 26 25 24 pad0
            //5   31 30 29 28 27 26 25 24 pad0
            //4   31 30 29 28 27 26 25 24 pad0
//----------------------------------------------------------
            ifbuf6[23] <= ifbuf6[22];
//----------------------------------------------------------
            //6   23 22 21 20 
            //5   23 22 21 20 
            //4   23 22 21 20 
            //3   23 22 21 20   
//----------------------------------------------------------
            StateBubble1 <= `Init;
            StateBubble2 <= StateBubble1;
            StateBubble3 <= StateBubble2;
            StateBubble4 <= StateBubble3;
            StateBubble5 <= StateBubble4;
            if(kernCounter == 64 && StateBubble5 == `Init) begin
                kernCounter <= 1 ; 
                State <= `CalPool;
            end else if(kernCounter != 64 && StateBubble5 == `Init) begin
                State <= StateBubble5; 
                kernCounter <= kernCounter + 1;
            end
        end
                         

    `CalPool: begin
//-----------------------------------
        ifbuf6[19] <= ($signed(ifbuf6[23]) + $signed(ifbuf6[22])) >>>1;
        ifbuf6[18] <= ($signed(ifbuf6[21]) + $signed(ifbuf6[20])) >>>1;
        ifbuf5[19] <= ($signed(ifbuf5[21]) + $signed(ifbuf5[20])) >>>1;
        ifbuf5[18] <= ($signed(ifbuf5[21]) + $signed(ifbuf5[20])) >>>1;
        ifbuf4[19] <= ($signed(ifbuf4[21]) + $signed(ifbuf4[20])) >>>1;
        ifbuf4[18] <= ($signed(ifbuf4[21]) + $signed(ifbuf4[20])) >>>1;
//-----------------------------------
        ifbuf6[17] <= ($signed(ifbuf6[19]) + $signed(ifbuf6[18])) >>>1;
        ifbuf5[17] <= ($signed(ifbuf5[19]) + $signed(ifbuf5[18])) >>>1;
        ifbuf4[17] <= ($signed(ifbuf4[19]) + $signed(ifbuf4[18])) >>>1;
        ifbuf3[17] <= ($signed(ifbuf3[19]) + $signed(ifbuf3[18])) >>>1;
//-----------------------------------
        ifbuf5[16] <= ($signed(ifbuf6[17]) + $signed(ifbuf4[17])) >>>1;
        ifbuf4[16] <= ($signed(ifbuf5[17]) + $signed(ifbuf3[17])) >>>1;
//-----------------------------------
        ifbuf5[15] <= ($signed(ifbuf5[16]) + $signed(ifbuf4[16])) >>>1;
//-----------------------------------
        ifbuf1[1] <= ifbuf1[1] + weight11_in * ifbuf5[15];
        ifbuf1[2] <= ifbuf1[2] + weight12_in * ifbuf5[15];
        ifbuf1[3] <= ifbuf1[3] + weight13_in * ifbuf5[15];
        ifbuf1[4] <= ifbuf1[4] + weight21_in * ifbuf5[15];
        ifbuf1[5] <= ifbuf1[5] + weight22_in * ifbuf5[15];
        ifbuf1[6] <= ifbuf1[6] + weight23_in * ifbuf5[15];
        ifbuf1[7] <= ifbuf1[7] + weight31_in * ifbuf5[15];
        ifbuf1[8] <= ifbuf1[8] + weight32_in * ifbuf5[15];
        ifbuf1[9] <= ifbuf1[9] + weight33_in * ifbuf5[15];
        ifbuf1[10] <= ifbuf1[10] + weight41_in * ifbuf5[15];
        StateBubble1 <= `Init;
        StateBubble2 <= StateBubble1;
        StateBubble3 <= StateBubble2;
        StateBubble4 <= StateBubble3;
        State <= StateBubble4;
//-----------------------------------
            //6   (19 18 ) 17
            //5   (19 18 ) 17 16 15
            //4   (19 18 ) 17 16 
            //3   (19 18 ) 17  

//-----------------------------------

    end
    endcase
            end
            endcase
    end
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