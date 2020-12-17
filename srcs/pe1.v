`include "defines.v"

module pe1(
    rst,
    // weight_en,
    locked,
    // calculate_en,
    // weight11_in, //11 12 13 14 15 16
    // weight12_in, //21 22 23 24 25 26
    // weight13_in, //31 32 33 34 35 36
    // weight21_in, //41 42 43 44 45 46
    // weight22_in, //51 52 53 54 55 56
    // weight23_in, //61 62 63 64 65 66
    // weight31_in,
    // weight32_in,
    // weight33_in,
    // weight41_in,
    // weight42_in,
    // weight43_in,
    // weight51_in,
    // weight52_in,
    // weight53_in,
    // weight61_in,
    // weight62_in,
    // weight63_in,
    // weight14_in,
    // weight15_in,
    // weight24_in,
    // weight25_in,
    // weight34_in,
    // weight35_in,
    // weight44_in,
    // weight45_in,
    // weight54_in,
    // weight55_in,
    // weight64_in,
    // weight65_in,
    // weight16_in,
    // weight26_in,
    // weight36_in,
    // weight46_in,
    // weight56_in,
    // weight66_in,
    // ifmap_in2,
    // ifmap_in3,
    // ifmap_in4,
    // ifmap_in01,
    // ifmap_in02,
    // ifmap_in03,
    // ifmap_in04,
    
    // ofmap_out,
    clk,
    // initializing,

    addr_wLayer1_1,
    dout_wLayer1_1, 
    
    we_BRAM32k,
    addr_BRAM32k_1,
    addr_BRAM32k_2,
    din_BRAM32k_1,
    din_BRAM32k_2,
    dout_BRAM32k_1,
    dout_BRAM32k_2,


    din_BRAM4k_1,
    din_BRAM4k_2,
    dout_BRAM4k_1,
    dout_BRAM4k_2,
    addr_BRAM4k_1,
    addr_BRAM4k_2,
  
    we_BRAMConv2Arr1_1,
    we_BRAMConv2Arr1_2,
    addr_BRAMConv2Arr1_1,
    addr_BRAMConv2Arr1_2,
    din_BRAMConv2Arr1_1,
    din_BRAMConv2Arr1_2,
    dout_BRAMConv2Arr1_1,
    dout_BRAMConv2Arr1_2,
//-------------------------------------------//--------
    we_BRAMConv2Arr2_1,
    we_BRAMConv2Arr2_2,
    addr_BRAMConv2Arr2_1,
    addr_BRAMConv2Arr2_2,
    din_BRAMConv2Arr2_1,
    din_BRAMConv2Arr2_2,
    dout_BRAMConv2Arr2_1,
    dout_BRAMConv2Arr2_2,

);
//------------------------
reg [63:0] din_BRAMConv2Arr;
output  reg    we_BRAMConv2Arr1_1;
output  reg    we_BRAMConv2Arr1_2;
output  reg    [11:0] addr_BRAMConv2Arr1_1;
output  reg    [11:0] addr_BRAMConv2Arr1_2;
output  wire    [63:0] din_BRAMConv2Arr1_1;
output  wire    [63:0] din_BRAMConv2Arr1_2;
input    [63:0] dout_BRAMConv2Arr1_1;
input    [63:0] dout_BRAMConv2Arr1_2;
reg [1:0] BRAMFLAG;

//-------------------------------------------//--------
output  reg    we_BRAMConv2Arr2_1;
output  reg    we_BRAMConv2Arr2_2;
output  reg    [11:0] addr_BRAMConv2Arr2_1;
output  reg    [11:0] addr_BRAMConv2Arr2_2;
output  wire    [63:0] din_BRAMConv2Arr2_1;
output  wire    [63:0] din_BRAMConv2Arr2_2;
input    [63:0] dout_BRAMConv2Arr2_1;
input    [63:0] dout_BRAMConv2Arr2_2;

// assign din_BRAMConv2Arr1_1 = BRAMFLAG==2'b01? din_BRAMConv2Arr: 64'b0;
// assign din_BRAMConv2Arr2_1 = BRAMFLAG==2'b10? din_BRAMConv2Arr: 64'b0;

assign din_BRAMConv2Arr1_1 = din_BRAMConv2Arr;
assign din_BRAMConv2Arr2_1 = din_BRAMConv2Arr;
//--------------------------------------
    input locked;
    // input wire initializing;
    input   wire  rst;
        

    // input                             weight_en;
    // input                             calculate_en;

    // input        signed    [47:0]     dout_BRAM4k_1;
    // input        signed    [47:0]     ifmap_in2;
    // input        signed    [47:0]     ifmap_in3;
    // input        signed    [47:0]     ifmap_in4;
    input                             clk;

    // input        signed    [7:0]      weight11_in;
    // input        signed    [7:0]      weight12_in;
    // input        signed    [7:0]      weight13_in;
    // input        signed    [7:0]      weight21_in;
    // input        signed    [7:0]      weight22_in;
    // input        signed    [7:0]      weight23_in;
    // input        signed    [7:0]      weight31_in;
    // input        signed    [7:0]      weight32_in;
    // input        signed    [7:0]      weight33_in;
    // input        signed    [7:0]      weight41_in;
    // input        signed    [7:0]      weight42_in;
    // input        signed    [7:0]      weight43_in;
    // input        signed    [7:0]      weight51_in;
    // input        signed    [7:0]      weight52_in;
    // input        signed    [7:0]      weight53_in;
    // input        signed    [7:0]      weight61_in;
    // input        signed    [7:0]      weight62_in;
    // input        signed    [7:0]      weight63_in;
    // input        signed    [7:0]      weight14_in;
    // input        signed    [7:0]      weight15_in;
    // input        signed    [7:0]      weight16_in;
    // input        signed    [7:0]      weight24_in;
    // input        signed    [7:0]      weight25_in;
    // input        signed    [7:0]      weight26_in;
    // input        signed    [7:0]      weight34_in;
    // input        signed    [7:0]      weight35_in;
    // input        signed    [7:0]      weight36_in;
    // input        signed    [7:0]      weight44_in;
    // input        signed    [7:0]      weight45_in;
    // input        signed    [7:0]      weight46_in;
    // input        signed    [7:0]      weight54_in;
    // input        signed    [7:0]      weight55_in;
    // input        signed    [7:0]      weight56_in;
    // input        signed    [7:0]      weight64_in;
    // input        signed    [7:0]      weight65_in;
    // input        signed    [7:0]      weight66_in;

    // output  reg  signed    [19:0]      ofmap_out;
//-------------------input and output ----------------------------------------------
//weight register
    reg        signed    [7:0]      weightA11;
    reg        signed    [7:0]      weightA12;
    reg        signed    [7:0]      weightA13;
    reg        signed    [7:0]      weightA21;
    reg        signed    [7:0]      weightA22;
    reg        signed    [7:0]      weightA23;
    reg        signed    [7:0]      weightA31;
    reg        signed    [7:0]      weightA32;
    reg        signed    [7:0]      weightA33;
    reg        signed    [7:0]      weightA41;
    reg        signed    [7:0]      weightA42;
    reg        signed    [7:0]      weightA43;
    reg        signed    [7:0]      weightA51;
    reg        signed    [7:0]      weightA52;
    reg        signed    [7:0]      weightA53;
    reg        signed    [7:0]      weightA61;
    reg        signed    [7:0]      weightA62;
    reg        signed    [7:0]      weightA63;
    reg        signed    [7:0]      weightA14;
    reg        signed    [7:0]      weightA15;
    reg        signed    [7:0]      weightA16;
    reg        signed    [7:0]      weightA24;
    reg        signed    [7:0]      weightA25;
    reg        signed    [7:0]      weightA26;
    reg        signed    [7:0]      weightA34;
    reg        signed    [7:0]      weightA35;
    reg        signed    [7:0]      weightA36;
    reg        signed    [7:0]      weightA44;
    reg        signed    [7:0]      weightA45;
    reg        signed    [7:0]      weightA46;
    reg        signed    [7:0]      weightA54;
    reg        signed    [7:0]      weightA55;
    reg        signed    [7:0]      weightA56;
    reg        signed    [7:0]      weightA64;
    reg        signed    [7:0]      weightA65;
    reg        signed    [7:0]      weightA66;
//------

    reg        signed    [7:0]      weightB11;
    reg        signed    [7:0]      weightB12;
    reg        signed    [7:0]      weightB13;
    reg        signed    [7:0]      weightB21;
    reg        signed    [7:0]      weightB22;
    reg        signed    [7:0]      weightB23;
    reg        signed    [7:0]      weightB31;
    reg        signed    [7:0]      weightB32;
    reg        signed    [7:0]      weightB33;
    reg        signed    [7:0]      weightB41;
    reg        signed    [7:0]      weightB42;
    reg        signed    [7:0]      weightB43;
    reg        signed    [7:0]      weightB51;
    reg        signed    [7:0]      weightB52;
    reg        signed    [7:0]      weightB53;
    reg        signed    [7:0]      weightB61;
    reg        signed    [7:0]      weightB62;
    reg        signed    [7:0]      weightB63;
    reg        signed    [7:0]      weightB14;
    reg        signed    [7:0]      weightB15;
    reg        signed    [7:0]      weightB16;
    reg        signed    [7:0]      weightB24;
    reg        signed    [7:0]      weightB25;
    reg        signed    [7:0]      weightB26;
    reg        signed    [7:0]      weightB34;
    reg        signed    [7:0]      weightB35;
    reg        signed    [7:0]      weightB36;
    reg        signed    [7:0]      weightB44;
    reg        signed    [7:0]      weightB45;
    reg        signed    [7:0]      weightB46;
    reg        signed    [7:0]      weightB54;
    reg        signed    [7:0]      weightB55;
    reg        signed    [7:0]      weightB56;
    reg        signed    [7:0]      weightB64;
    reg        signed    [7:0]      weightB65;
    reg        signed    [7:0]      weightB66;
//------
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
    reg signed                   [`Byte]   ifbuf1 [31:0];
    reg signed                   [`Byte]   ifbuf2 [31:0];
    reg signed                   [`Byte]   ifbuf3 [31:0];
    reg signed                   [`Byte]   ifbuf4 [31:0];
    reg signed                   [`Byte]   ifbuf5 [31:0];
    reg signed                   [`Byte]   ifbuf6 [31:0];
    reg signed                   [`Byte]   regPad1 [1:0];
    reg signed                   [`Byte]   regPad2 [1:0];
    reg signed                   [`Byte]   regPad3 [3:0];
    reg signed                   [`Byte]   regPad4 [1:0];
    reg signed                   [`Byte]   regPad5 [1:0];
    reg signed                   [`Byte]   regPad6 [3:0];


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
    // reg  [2:0]   Process;    
    reg  [2:0]   ProcessBubble1;
    reg  [2:0]   ProcessBubble2;
    reg  [2:0]   ProcessBubble3;
    reg  [2:0]   ProcessBubble4;
    reg  [2:0]   ProcessBubble5;
    reg [5:0]  Counter;
    reg [6:0]  kernCounter;
    reg Selctrl;
    reg newlan;
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
//--------------------------------------------
output  reg  [8:0]  addr_BRAM4k_1;  
output  reg  [8:0]  addr_BRAM4k_2;  
output  reg  [7:0]   addr_wLayer1_1; 
input   wire [39:0]  dout_wLayer1_1;
input   wire  [63:0]  dout_BRAM4k_1;  
input   wire  [63:0]  dout_BRAM4k_2;  
output reg  [63:0]  din_BRAM4k_1;  
output reg  [63:0]  din_BRAM4k_2;  

reg        FinishFlag_Bub2 ;
reg        FinishFlag_Bub1 ;
reg        FinishFlag      ;

always @(posedge clk or negedge Process[0] or negedge rst) begin 

    if(rst == `RstEnable) begin
        FinishFlag_Bub2 <= 0;
        FinishFlag_Bub1 <= 0;
        FinishFlag      <= 0;
    end else if(Process[0] == 1)begin
        FinishFlag <= 1;
        FinishFlag_Bub1 <= 1;
        FinishFlag_Bub2 <= 1;
    end else begin
        FinishFlag_Bub2 <= 0;
        FinishFlag_Bub1 <= FinishFlag_Bub2;
        FinishFlag      <= FinishFlag_Bub1; 
    end
end



reg [4:0] Channel;
reg [2:0] Process;
//------------------------------------
/*
address selector
because we use the address line in both writeback.v and pe1.v,
so we need to choose which one to assign to the real address/
*/
reg [11:0] addr_BRAM32k_1_pe;
reg [11:0] addr_BRAM32k_2_pe;

//---------------------------------
always @(posedge clk or negedge rst) begin
if ( rst == `RstEnable) begin    
    //layer1
    Process         <= `Idle;
    Layer           <= `Layer2;
    addr_BRAM4k_1 <= 0;
    Counter <= 0;
    Row <= 0;
    Channel <= 0;
    addr_wLayer1_1 <= 0;
    //layer2
    addr_BRAMConv2Arr1_1    <= 0;
    addr_BRAMConv2Arr2_1    <= 0;
    we_BRAMConv2Arr1_1        <= 0;    
    we_BRAMConv2Arr1_2        <= 0;    
    addr_BRAMConv2Arr1_2    <= 0;
    addr_BRAMConv2Arr2_2    <= 0;
    we_BRAMConv2Arr2_1        <= 0;   
    we_BRAMConv2Arr2_2        <= 0;   
    addr_BRAM32k_1_pe       <= 0;
    addr_BRAM32k_2_pe       <= 4;
    Selctrl                 <= 1;
    newlan <= 0;  
    ProcessBubble2 <= `Idle;
    ProcessBubble1 <=`Idle;
    ProcessBubble3         <= `Idle;
    ProcessBubble4         <= `Idle;
    ProcessBubble5         <= `Idle;
    BRAMFLAG <= 0;

end else if( rst == `RstDisable && locked == 1 )begin
    //pipeline
    case ( Layer )
    `Layer1: begin 
        case ( Process ) 
        `Idle:begin
            Counter <= 0;
            addr_BRAM4k_1 <=   0;
            if( Channel < 16) begin
                Channel <= Channel + 1; 
                Process <= `Init;
            end  else begin
                Channel <= 0;
                Layer <= `Layer2;
            end
        end
        `Init:begin
            if (Counter < 12) begin
                addr_BRAM4k_1<=   addr_BRAM4k_1 + 1;
                Counter      <=   Counter + 1;
                Process      <=   `Init;
                ifbuf5[24]   <=   dout_BRAM4k_1[63:56];
                ifbuf5[25]   <=   dout_BRAM4k_1[55:48];
                ifbuf5[26]   <=   dout_BRAM4k_1[47:40];
                ifbuf5[27]   <=   dout_BRAM4k_1[39:32];
                ifbuf5[28]   <=   dout_BRAM4k_1[31:24];
                ifbuf5[29]   <=   dout_BRAM4k_1[23:16];
                ifbuf5[30]   <=   dout_BRAM4k_1[15:8];
                ifbuf5[31]   <=   dout_BRAM4k_1[7:0];
                               
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
                if (Counter ==1) begin
                    addr_wLayer1_1 <= addr_wLayer1_1 + 1;
                    weightA11 <= dout_wLayer1_1[`ByteFiv];
                    weightA12 <= dout_wLayer1_1[`ByteFor];
                    weightA13 <= dout_wLayer1_1[`ByteThr];
                    weightA14 <= dout_wLayer1_1[`ByteTwo];
                    weightA15 <= dout_wLayer1_1[`ByteOne];
                end else if (Counter == 2)    begin
                    addr_wLayer1_1 <= addr_wLayer1_1 + 1;
                    weightA21 <= dout_wLayer1_1[`ByteFiv];
                    weightA22 <= dout_wLayer1_1[`ByteFor];
                    weightA23 <= dout_wLayer1_1[`ByteThr];
                    weightA24 <= dout_wLayer1_1[`ByteTwo];
                    weightA25 <= dout_wLayer1_1[`ByteOne];            
                end else if (Counter == 3)   begin                 
                    addr_wLayer1_1 <= addr_wLayer1_1 + 1;
                    weightA31 <= dout_wLayer1_1[`ByteFiv];
                    weightA32 <= dout_wLayer1_1[`ByteFor];
                    weightA33 <= dout_wLayer1_1[`ByteThr];
                    weightA34 <= dout_wLayer1_1[`ByteTwo];
                    weightA35 <= dout_wLayer1_1[`ByteOne];
                end else if (Counter == 4)  begin
                    addr_wLayer1_1 <= addr_wLayer1_1 + 1;
                    weightA41 <= dout_wLayer1_1[`ByteFiv];
                    weightA42 <= dout_wLayer1_1[`ByteFor];
                    weightA43 <= dout_wLayer1_1[`ByteThr];
                    weightA44 <= dout_wLayer1_1[`ByteTwo];
                    weightA45 <= dout_wLayer1_1[`ByteOne];
                                 
                end else if (Counter == 5)  begin
                    addr_wLayer1_1 <= addr_wLayer1_1 + 1;
                    weightA51 <= dout_wLayer1_1[`ByteFiv];
                    weightA52 <= dout_wLayer1_1[`ByteFor];
                    weightA53 <= dout_wLayer1_1[`ByteThr];
                    weightA54 <= dout_wLayer1_1[`ByteTwo];
                    weightA55 <= dout_wLayer1_1[`ByteOne];
//----
                end else if (Counter == 6)  begin
                    addr_wLayer1_1 <= addr_wLayer1_1 + 1;
                    weightB11 <= dout_wLayer1_1[`ByteFiv];
                    weightB12 <= dout_wLayer1_1[`ByteFor];
                    weightB13 <= dout_wLayer1_1[`ByteThr];
                    weightB14 <= dout_wLayer1_1[`ByteTwo];
                    weightB15 <= dout_wLayer1_1[`ByteOne];
                end else if (Counter == 7)    begin
                    addr_wLayer1_1 <= addr_wLayer1_1 + 1;
                    weightB21 <= dout_wLayer1_1[`ByteFiv];
                    weightB22 <= dout_wLayer1_1[`ByteFor];
                    weightB23 <= dout_wLayer1_1[`ByteThr];
                    weightB24 <= dout_wLayer1_1[`ByteTwo];
                    weightB25 <= dout_wLayer1_1[`ByteOne];            
                end else if (Counter == 8)   begin                 
                    addr_wLayer1_1 <= addr_wLayer1_1 + 1;
                    weightB31 <= dout_wLayer1_1[`ByteFiv];
                    weightB32 <= dout_wLayer1_1[`ByteFor];
                    weightB33 <= dout_wLayer1_1[`ByteThr];
                    weightB34 <= dout_wLayer1_1[`ByteTwo];
                    weightB35 <= dout_wLayer1_1[`ByteOne];
                end else if (Counter == 9)  begin
                    addr_wLayer1_1 <= addr_wLayer1_1 + 1;
                    weightB41 <= dout_wLayer1_1[`ByteFiv];
                    weightB42 <= dout_wLayer1_1[`ByteFor];
                    weightB43 <= dout_wLayer1_1[`ByteThr];
                    weightB44 <= dout_wLayer1_1[`ByteTwo];
                    weightB45 <= dout_wLayer1_1[`ByteOne];
                end else if (Counter == 10)  begin
                    weightB51 <= dout_wLayer1_1[`ByteFiv];
                    weightB52 <= dout_wLayer1_1[`ByteFor];
                    weightB53 <= dout_wLayer1_1[`ByteThr];
                    weightB54 <= dout_wLayer1_1[`ByteTwo];
                    weightB55 <= dout_wLayer1_1[`ByteOne];           
                end else if(Counter == 0)begin
                    addr_wLayer1_1 <= addr_wLayer1_1 + 1;           
                    
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
                ifbuf2[31]   <=      0;
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
                Counter <= 1;
              end
        end
//------------
        `Start:begin 
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
            ifbuf1[31]   <=      regPad2[0];

            case ( Counter )
            6'd10 : begin
                ifbuf5[24]   <=   (5'd29 <= Row && Row<=5'd31)? 8'd0:dout_BRAM4k_1[63:56];
                ifbuf5[25]   <=   (5'd29 <= Row && Row<=5'd31)? 8'd0:dout_BRAM4k_1[55:48];
                ifbuf5[26]   <=   (5'd29 <= Row && Row<=5'd31)? 8'd0:dout_BRAM4k_1[47:40];
                ifbuf5[27]   <=   (5'd29 <= Row && Row<=5'd31)? 8'd0:dout_BRAM4k_1[39:32];
                ifbuf5[28]   <=   (5'd29 <= Row && Row<=5'd31)? 8'd0:dout_BRAM4k_1[31:24];
                ifbuf5[29]   <=   (5'd29 <= Row && Row<=5'd31)? 8'd0:dout_BRAM4k_1[23:16];
                ifbuf5[30]   <=   (5'd29 <= Row && Row<=5'd31)? 8'd0:dout_BRAM4k_1[15:8];
                ifbuf5[31]   <=   (5'd29 <= Row && Row<=5'd31)? 8'd0:dout_BRAM4k_1[7:0];
                Counter <= Counter + 1;
                Trashdata <= 0;
            end
            6'd18 : begin
                ifbuf5[24]   <=   (5'd29 <= Row && Row<=5'd31)? 8'd0:dout_BRAM4k_1[63:56];
                ifbuf5[25]   <=   (5'd29 <= Row && Row<=5'd31)? 8'd0:dout_BRAM4k_1[55:48];
                ifbuf5[26]   <=   (5'd29 <= Row && Row<=5'd31)? 8'd0:dout_BRAM4k_1[47:40];
                ifbuf5[27]   <=   (5'd29 <= Row && Row<=5'd31)? 8'd0:dout_BRAM4k_1[39:32];
                ifbuf5[28]   <=   (5'd29 <= Row && Row<=5'd31)? 8'd0:dout_BRAM4k_1[31:24];
                ifbuf5[29]   <=   (5'd29 <= Row && Row<=5'd31)? 8'd0:dout_BRAM4k_1[23:16];
                ifbuf5[30]   <=   (5'd29 <= Row && Row<=5'd31)? 8'd0:dout_BRAM4k_1[15:8];
                ifbuf5[31]   <=   (5'd29 <= Row && Row<=5'd31)? 8'd0:dout_BRAM4k_1[7:0];
                Counter <= Counter + 1;
                Trashdata <= 0;
            end
            6'd26 :begin
                ifbuf5[24]   <=   (5'd29 <= Row && Row<=5'd31)? 8'd0:dout_BRAM4k_1[63:56];
                ifbuf5[25]   <=   (5'd29 <= Row && Row<=5'd31)? 8'd0:dout_BRAM4k_1[55:48];
                ifbuf5[26]   <=   (5'd29 <= Row && Row<=5'd31)? 8'd0:dout_BRAM4k_1[47:40];
                ifbuf5[27]   <=   (5'd29 <= Row && Row<=5'd31)? 8'd0:dout_BRAM4k_1[39:32];
                ifbuf5[28]   <=   (5'd29 <= Row && Row<=5'd31)? 8'd0:dout_BRAM4k_1[31:24];
                ifbuf5[29]   <=   (5'd29 <= Row && Row<=5'd31)? 8'd0:dout_BRAM4k_1[23:16];
                ifbuf5[30]   <=   (5'd29 <= Row && Row<=5'd31)? 8'd0:dout_BRAM4k_1[15:8];
                ifbuf5[31]   <=   (5'd29 <= Row && Row<=5'd31)? 8'd0:dout_BRAM4k_1[7:0];
                Counter <= Counter + 1;
                Trashdata <= 0;
            end
            6'd34 :begin
                ifbuf5[24]   <=   (5'd29 <= Row && Row<=5'd31)? 8'd0:dout_BRAM4k_1[63:56];
                ifbuf5[25]   <=   (5'd29 <= Row && Row<=5'd31)? 8'd0:dout_BRAM4k_1[55:48];
                ifbuf5[26]   <=   (5'd29 <= Row && Row<=5'd31)? 8'd0:dout_BRAM4k_1[47:40];
                ifbuf5[27]   <=   (5'd29 <= Row && Row<=5'd31)? 8'd0:dout_BRAM4k_1[39:32];
                ifbuf5[28]   <=   (5'd29 <= Row && Row<=5'd31)? 8'd0:dout_BRAM4k_1[31:24];
                ifbuf5[29]   <=   (5'd29 <= Row && Row<=5'd31)? 8'd0:dout_BRAM4k_1[23:16];
                ifbuf5[30]   <=   (5'd29 <= Row && Row<=5'd31)? 8'd0:dout_BRAM4k_1[15:8];
                ifbuf5[31]   <=   (5'd29 <= Row && Row<=5'd31)? 8'd0:dout_BRAM4k_1[7:0];
                Counter <= 1; 
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
                if(Counter == 9 ||Counter == 17 ||Counter == 25 ||Counter == 33 ) begin
                    if(Row <5'd29) begin
                        addr_BRAM4k_1 <= addr_BRAM4k_1 + 1;
                    end else begin
                        addr_BRAM4k_1 <= addr_BRAM4k_1;                        
                    end
                end
            end
            endcase
        end
        endcase
    end 

    `Layer2:begin
    
        //-------------------------------------------------
        //--using the data that could calculate without bubble,
        //--this could make the pipeline more tide
        //--left /right /wright-back;
        ifbuf5[24]   <=   dout_BRAM32k_1[63]?`ZeroBtye: dout_BRAM32k_1[`ByteEig];
        ifbuf5[25]   <=   dout_BRAM32k_1[55]?`ZeroBtye: dout_BRAM32k_1[`ByteSev];
        ifbuf5[26]   <=   dout_BRAM32k_1[47]?`ZeroBtye: dout_BRAM32k_1[`ByteSix];
        ifbuf5[27]   <=   dout_BRAM32k_1[39]?`ZeroBtye: dout_BRAM32k_1[`ByteFiv];
        ifbuf5[28]   <=   dout_BRAM32k_1[31]?`ZeroBtye: dout_BRAM32k_1[`ByteFor];
        ifbuf5[29]   <=   dout_BRAM32k_1[23]?`ZeroBtye: dout_BRAM32k_1[`ByteThr];
        ifbuf5[30]   <=   dout_BRAM32k_1[15]?`ZeroBtye: dout_BRAM32k_1[`ByteTwo];
        ifbuf5[31]   <=   dout_BRAM32k_1[7]?`ZeroBtye: dout_BRAM32k_1[`ByteOne];

        ifbuf5[4]   <=   dout_BRAM32k_2[63]?`ZeroBtye: dout_BRAM32k_2[`ByteEig];
        ifbuf5[5]   <=   dout_BRAM32k_2[55]?`ZeroBtye: dout_BRAM32k_2[`ByteSev];
        ifbuf5[6]   <=   dout_BRAM32k_2[47]?`ZeroBtye: dout_BRAM32k_2[`ByteSix];
        ifbuf5[7]   <=   dout_BRAM32k_2[39]?`ZeroBtye: dout_BRAM32k_2[`ByteFiv];
        ifbuf5[8]   <=   dout_BRAM32k_2[31]?`ZeroBtye: dout_BRAM32k_2[`ByteFor];
        ifbuf5[9]   <=   dout_BRAM32k_2[23]?`ZeroBtye: dout_BRAM32k_2[`ByteThr];
        ifbuf5[10]   <=   dout_BRAM32k_2[15]?`ZeroBtye: dout_BRAM32k_2[`ByteTwo];
        ifbuf5[11]   <=   dout_BRAM32k_2[7]?`ZeroBtye: dout_BRAM32k_2[`ByteOne];
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
    //--
        if($signed(ifbuf5[4]) >= $signed(ifbuf5[5])) begin
            ifbuf4[5] <= ifbuf5[4];
        end else begin
            ifbuf4[5] <= ifbuf5[5];
        end

        if($signed(ifbuf5[6]) >= $signed(ifbuf5[7])) begin
            ifbuf4[7] <= ifbuf5[6];
        end else begin
            ifbuf4[7] <= ifbuf5[7];
        end
        
        if($signed(ifbuf5[8]) >= $signed(ifbuf5[9])) begin
            ifbuf4[9] <= ifbuf5[8];
        end else begin
            ifbuf4[9] <= ifbuf5[9];
        end

        if($signed(ifbuf5[10]) >= $signed(ifbuf5[11])) begin
            ifbuf4[11] <= ifbuf5[10];
        end else begin
            ifbuf4[11] <= ifbuf5[11];
        end

//-------------------------------------------------        
        case(Process)
            `Idle:begin
                if(Selctrl) begin
                    BRAMFLAG <= 1;
                    we_BRAMConv2Arr1_1 <= 0;
//                  -----fold it please------       
                    if($signed(ifbuf4[5]) >= $signed(ifbuf4[25])) begin
                        din_BRAMConv2Arr[`ByteFor] <= ifbuf4[5];
                    end else begin
                        din_BRAMConv2Arr[`ByteFor] <= ifbuf4[25];
                    end

                    if($signed(ifbuf4[7]) >= $signed(ifbuf4[27])) begin
                        din_BRAMConv2Arr[`ByteThr] <= ifbuf4[7];
                    end else begin
                        din_BRAMConv2Arr[`ByteThr] <= ifbuf4[27];
                    end
                    
                    if($signed(ifbuf4[9]) >= $signed(ifbuf4[29])) begin
                        din_BRAMConv2Arr[`ByteTwo] <= ifbuf4[9];
                    end else begin
                        din_BRAMConv2Arr[`ByteTwo] <= ifbuf4[29];
                    end

                    if($signed(ifbuf4[11]) >= $signed(ifbuf4[31])) begin
                        din_BRAMConv2Arr[`ByteOne] <= ifbuf4[11];
                    end else begin
                        din_BRAMConv2Arr[`ByteOne] <= ifbuf4[31];
                    end     
//                  -----fold it end------   
                    addr_BRAM32k_1_pe <= addr_BRAM32k_1_pe + 1;
                    addr_BRAM32k_2_pe <= addr_BRAM32k_2_pe + 1;
                    Selctrl <= 0;
                end else begin 
                    we_BRAMConv2Arr1_1 <= 0;
//                  -----fold it please------       
                    if($signed(ifbuf4[5]) >= $signed(ifbuf4[25])) begin
                        din_BRAMConv2Arr[`ByteEig] <= ifbuf4[5];
                    end else begin
                        din_BRAMConv2Arr[`ByteEig] <= ifbuf4[25];
                    end

                    if($signed(ifbuf4[7]) >= $signed(ifbuf4[27])) begin
                        din_BRAMConv2Arr[`ByteSev] <= ifbuf4[7];
                    end else begin
                        din_BRAMConv2Arr[`ByteSev] <= ifbuf4[27];
                    end
                    
                    if($signed(ifbuf4[9]) >= $signed(ifbuf4[29])) begin
                        din_BRAMConv2Arr[`ByteSix] <= ifbuf4[9];
                    end else begin
                        din_BRAMConv2Arr[`ByteSix] <= ifbuf4[29];
                    end

                    if($signed(ifbuf4[11]) >= $signed(ifbuf4[31])) begin
                        din_BRAMConv2Arr[`ByteFiv] <= ifbuf4[11];
                    end else begin
                        din_BRAMConv2Arr[`ByteFiv] <= ifbuf4[31];
                    end     
//                  -----fold it end------   
                    addr_BRAM32k_1_pe <= addr_BRAM32k_1_pe + 1;
                    addr_BRAM32k_2_pe <= addr_BRAM32k_2_pe + 1;
                    Selctrl <= 1;
                end
                ProcessBubble1 <=  `Init;
                Process        <= ProcessBubble1;
            end
            `Init:begin
                if(Selctrl) begin
                    we_BRAMConv2Arr1_1 <= 0;
//                  -----fold it please------       
                    if($signed(ifbuf4[5]) >= $signed(ifbuf4[25])) begin
                        din_BRAMConv2Arr[`ByteFor] <= ifbuf4[5];
                    end else begin
                        din_BRAMConv2Arr[`ByteFor] <= ifbuf4[25];
                    end

                    if($signed(ifbuf4[7]) >= $signed(ifbuf4[27])) begin
                        din_BRAMConv2Arr[`ByteThr] <= ifbuf4[7];
                    end else begin
                        din_BRAMConv2Arr[`ByteThr] <= ifbuf4[27];
                    end
                    
                    if($signed(ifbuf4[9]) >= $signed(ifbuf4[29])) begin
                        din_BRAMConv2Arr[`ByteTwo] <= ifbuf4[9];
                    end else begin
                        din_BRAMConv2Arr[`ByteTwo] <= ifbuf4[29];
                    end

                    if($signed(ifbuf4[11]) >= $signed(ifbuf4[31])) begin
                        din_BRAMConv2Arr[`ByteOne] <= ifbuf4[11];
                    end else begin
                        din_BRAMConv2Arr[`ByteOne] <= ifbuf4[31];
                    end     
//                  -----fold it end------   
                    addr_BRAM32k_1_pe <= addr_BRAM32k_1_pe + 1;
                    addr_BRAM32k_2_pe <= addr_BRAM32k_2_pe + 1;
                    Selctrl <= 0;
                end else begin 
                    we_BRAMConv2Arr1_1 <= 1;
//                  -----fold it please------       
                    if($signed(ifbuf4[5]) >= $signed(ifbuf4[25])) begin
                        din_BRAMConv2Arr[`ByteEig] <= ifbuf4[5];
                    end else begin
                        din_BRAMConv2Arr[`ByteEig] <= ifbuf4[25];
                    end

                    if($signed(ifbuf4[7]) >= $signed(ifbuf4[27])) begin
                        din_BRAMConv2Arr[`ByteSev] <= ifbuf4[7];
                    end else begin
                        din_BRAMConv2Arr[`ByteSev] <= ifbuf4[27];
                    end
                    
                    if($signed(ifbuf4[9]) >= $signed(ifbuf4[29])) begin
                        din_BRAMConv2Arr[`ByteSix] <= ifbuf4[9];
                    end else begin
                        din_BRAMConv2Arr[`ByteSix] <= ifbuf4[29];
                    end

                    if($signed(ifbuf4[11]) >= $signed(ifbuf4[31])) begin
                        din_BRAMConv2Arr[`ByteFiv] <= ifbuf4[11];
                    end else begin
                        din_BRAMConv2Arr[`ByteFiv] <= ifbuf4[31];
                    end     
//                  -----fold it end------  
                    addr_BRAM32k_1_pe <= addr_BRAM32k_1_pe + 5;
                    addr_BRAM32k_2_pe <= addr_BRAM32k_2_pe + 5;
                    Selctrl <= 1;
                end
                ProcessBubble1 <=  `Start;
                Process        <= ProcessBubble1;
            end
            `Start:begin
                if(addr_BRAMConv2Arr1_1<512) begin
                    if(Selctrl) begin
                        //writeback buffer 
                        //low four first
//                      -----fold it please------       
                        if($signed(ifbuf4[5]) >= $signed(ifbuf4[25])) begin
                            din_BRAMConv2Arr[`ByteFor] <= ifbuf4[5];
                        end else begin
                            din_BRAMConv2Arr[`ByteFor] <= ifbuf4[25];
                        end

                        if($signed(ifbuf4[7]) >= $signed(ifbuf4[27])) begin
                            din_BRAMConv2Arr[`ByteThr] <= ifbuf4[7];
                        end else begin
                            din_BRAMConv2Arr[`ByteThr] <= ifbuf4[27];
                        end
                        
                        if($signed(ifbuf4[9]) >= $signed(ifbuf4[29])) begin
                            din_BRAMConv2Arr[`ByteTwo] <= ifbuf4[9];
                        end else begin
                            din_BRAMConv2Arr[`ByteTwo] <= ifbuf4[29];
                        end

                        if($signed(ifbuf4[11]) >= $signed(ifbuf4[31])) begin
                            din_BRAMConv2Arr[`ByteOne] <= ifbuf4[11];
                        end else begin
                            din_BRAMConv2Arr[`ByteOne] <= ifbuf4[31];
                        end     
//                      -----fold it end------                           
                        we_BRAMConv2Arr1_1 <= 1; //enable at next cycle;
                        addr_BRAM32k_1_pe <= addr_BRAM32k_1_pe + 1;
                        addr_BRAM32k_2_pe <= addr_BRAM32k_2_pe + 1;
                        Selctrl <= 0;
                    end else begin
                        //high four next
//                      -----fold it please------       
                        if($signed(ifbuf4[5]) >= $signed(ifbuf4[25])) begin
                            din_BRAMConv2Arr[`ByteEig] <= ifbuf4[5];
                        end else begin
                            din_BRAMConv2Arr[`ByteEig] <= ifbuf4[25];
                        end

                        if($signed(ifbuf4[7]) >= $signed(ifbuf4[27])) begin
                            din_BRAMConv2Arr[`ByteSev] <= ifbuf4[7];
                        end else begin
                            din_BRAMConv2Arr[`ByteSev] <= ifbuf4[27];
                        end
                        
                        if($signed(ifbuf4[9]) >= $signed(ifbuf4[29])) begin
                            din_BRAMConv2Arr[`ByteSix] <= ifbuf4[9];
                        end else begin
                            din_BRAMConv2Arr[`ByteSix] <= ifbuf4[29];
                        end

                        if($signed(ifbuf4[11]) >= $signed(ifbuf4[31])) begin
                            din_BRAMConv2Arr[`ByteFiv] <= ifbuf4[11];
                        end else begin
                            din_BRAMConv2Arr[`ByteFiv] <= ifbuf4[31];
                        end     
//                      -----fold it end------                          
                        we_BRAMConv2Arr1_1 <= 0; //disable at next cycle;
                        addr_BRAMConv2Arr1_1 <= addr_BRAMConv2Arr1_1 + 1;  
                        if(newlan) begin
                            addr_BRAM32k_1_pe <= addr_BRAM32k_1_pe + 5;
                            addr_BRAM32k_2_pe <= addr_BRAM32k_2_pe + 5;
                            newlan <= 0;
                        end
                        else begin
                            addr_BRAM32k_1_pe <= addr_BRAM32k_1_pe + 1;
                            addr_BRAM32k_2_pe <= addr_BRAM32k_2_pe + 1;
                            newlan <= 1;                            
                        end
                        Selctrl <= 1;
                    end
                end
                else if(addr_BRAMConv2Arr1_1==512 && addr_BRAMConv2Arr2_1<512) begin
                    BRAMFLAG <= 2;
                    if(Selctrl) begin
                        //writeback buffer 
                        //low four first
//                      -----fold it please------       
                        if($signed(ifbuf4[5]) >= $signed(ifbuf4[25])) begin
                            din_BRAMConv2Arr[`ByteFor] <= ifbuf4[5];
                        end else begin
                            din_BRAMConv2Arr[`ByteFor] <= ifbuf4[25];
                        end

                        if($signed(ifbuf4[7]) >= $signed(ifbuf4[27])) begin
                            din_BRAMConv2Arr[`ByteThr] <= ifbuf4[7];
                        end else begin
                            din_BRAMConv2Arr[`ByteThr] <= ifbuf4[27];
                        end
                        
                        if($signed(ifbuf4[9]) >= $signed(ifbuf4[29])) begin
                            din_BRAMConv2Arr[`ByteTwo] <= ifbuf4[9];
                        end else begin
                            din_BRAMConv2Arr[`ByteTwo] <= ifbuf4[29];
                        end

                        if($signed(ifbuf4[11]) >= $signed(ifbuf4[31])) begin
                            din_BRAMConv2Arr[`ByteOne] <= ifbuf4[11];
                        end else begin
                            din_BRAMConv2Arr[`ByteOne] <= ifbuf4[31];
                        end     
//                      -----fold it end------                           
                        we_BRAMConv2Arr2_1 <= 1; //enable at next cycle;
                        addr_BRAM32k_1_pe <= addr_BRAM32k_1_pe + 1;
                        addr_BRAM32k_2_pe <= addr_BRAM32k_2_pe + 1;
                        Selctrl <= 0;
                    end else begin
                        //high four next
//                      -----fold it please------       
                        if($signed(ifbuf4[5]) >= $signed(ifbuf4[25])) begin
                            din_BRAMConv2Arr[`ByteEig] <= ifbuf4[5];
                        end else begin
                            din_BRAMConv2Arr[`ByteEig] <= ifbuf4[25];
                        end

                        if($signed(ifbuf4[7]) >= $signed(ifbuf4[27])) begin
                            din_BRAMConv2Arr[`ByteSev] <= ifbuf4[7];
                        end else begin
                            din_BRAMConv2Arr[`ByteSev] <= ifbuf4[27];
                        end
                        
                        if($signed(ifbuf4[9]) >= $signed(ifbuf4[29])) begin
                            din_BRAMConv2Arr[`ByteSix] <= ifbuf4[9];
                        end else begin
                            din_BRAMConv2Arr[`ByteSix] <= ifbuf4[29];
                        end

                        if($signed(ifbuf4[11]) >= $signed(ifbuf4[31])) begin
                            din_BRAMConv2Arr[`ByteFiv] <= ifbuf4[11];
                        end else begin
                            din_BRAMConv2Arr[`ByteFiv] <= ifbuf4[31];
                        end     
//                      -----fold it end------                          
                        we_BRAMConv2Arr2_1 <= 0; //disable at next cycle;
                        addr_BRAMConv2Arr2_1 <= addr_BRAMConv2Arr2_1 + 1;
                        if(newlan) begin
                            addr_BRAM32k_1_pe <= addr_BRAM32k_1_pe + 5;
                            addr_BRAM32k_2_pe <= addr_BRAM32k_2_pe + 5;
                            newlan <= 0;
                        end
                        else begin
                            addr_BRAM32k_1_pe <= addr_BRAM32k_1_pe + 1;
                            addr_BRAM32k_2_pe <= addr_BRAM32k_2_pe + 1;
                            newlan <= 1;                            
                        end
                        Selctrl <= 1;
                    end
                    if(addr_BRAM32k_1==4093) begin// the end of layer2
                        Layer   <=   `Layer3 ;
                        Process <= `Idle;
                    end 
                end             
            end
        endcase

//----------------------------------------------------------

    end
// -----------
//*********************************************************************************************************
/*
    `Layer3: begin
        case ( Process )
        `Init:begin
            if (Counter != 3) begin
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

                ifbuf3[8]   <=    dout_BRAM4k_1[63:56];
                ifbuf3[9]   <=    dout_BRAM4k_1[55:48];
                ifbuf3[10]   <=   dout_BRAM4k_1[47:40];
                ifbuf3[11]   <=   dout_BRAM4k_1[39:32];
                ifbuf3[12]   <=   dout_BRAM4k_1[31:24];
                ifbuf3[13]   <=   dout_BRAM4k_1[23:16];
                ifbuf3[14]   <=   dout_BRAM4k_1[15:8];
                ifbuf3[15]   <=   dout_BRAM4k_1[7:0];

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
                ifbuf6[8]   <=   (Row == 5'd15)? 8'd0:ifmap_in3[63:56];
                ifbuf6[9]   <=   (Row == 5'd15)? 8'd0:ifmap_in3[55:48];
                ifbuf6[10]   <=   (Row == 5'd15)? 8'd0:ifmap_in3[47:40];
                ifbuf6[11]   <=   (Row == 5'd15)? 8'd0:ifmap_in3[39:32];
                ifbuf6[12]   <=   (Row == 5'd15)? 8'd0:ifmap_in3[31:24];
                ifbuf6[13]   <=   (Row == 5'd15)? 8'd0:ifmap_in3[23:16];
                ifbuf6[14]   <=   (Row == 5'd15)? 8'd0:ifmap_in3[15:8];
                ifbuf6[15]   <=   (Row == 5'd15)? 8'd0:ifmap_in3[7:0];

                ifbuf6[24]   <=   (Row == 5'd15)? 8'd0:ifmap_in4[63:56];
                ifbuf6[25]   <=   (Row == 5'd15)? 8'd0:ifmap_in4[55:48];
                ifbuf6[26]   <=   (Row == 5'd15)? 8'd0:ifmap_in4[47:40];
                ifbuf6[27]   <=   (Row == 5'd15)? 8'd0:ifmap_in4[39:32];
                ifbuf6[28]   <=   (Row == 5'd15)? 8'd0:ifmap_in4[31:24];
                ifbuf6[29]   <=   (Row == 5'd15)? 8'd0:ifmap_in4[23:16];
                ifbuf6[30]   <=   (Row == 5'd15)? 8'd0:ifmap_in4[15:8];
                ifbuf6[31]   <=   (Row == 5'd15)? 8'd0:ifmap_in4[7:0];

                ifbuf3[8]   <=   (Row == 5'd15)? 8'd0:dout_BRAM4k_1[63:56];
                ifbuf3[9]   <=   (Row == 5'd15)? 8'd0:dout_BRAM4k_1[55:48];
                ifbuf3[10]   <=   (Row == 5'd15)? 8'd0:dout_BRAM4k_1[47:40];
                ifbuf3[11]   <=   (Row == 5'd15)? 8'd0:dout_BRAM4k_1[39:32];
                ifbuf3[12]   <=   (Row == 5'd15)? 8'd0:dout_BRAM4k_1[31:24];
                ifbuf3[13]   <=   (Row == 5'd15)? 8'd0:dout_BRAM4k_1[23:16];
                ifbuf3[14]   <=   (Row == 5'd15)? 8'd0:dout_BRAM4k_1[15:8];
                ifbuf3[15]   <=   (Row == 5'd15)? 8'd0:dout_BRAM4k_1[7:0];
                
                ifbuf3[24]   <=   (Row == 5'd15)? 8'd0:ifmap_in2[63:56];
                ifbuf3[25]   <=   (Row == 5'd15)? 8'd0:ifmap_in2[55:48];
                ifbuf3[26]   <=   (Row == 5'd15)? 8'd0:ifmap_in2[47:40];
                ifbuf3[27]   <=   (Row == 5'd15)? 8'd0:ifmap_in2[39:32];
                ifbuf3[28]   <=   (Row == 5'd15)? 8'd0:ifmap_in2[31:24];
                ifbuf3[29]   <=   (Row == 5'd15)? 8'd0:ifmap_in2[23:16];
                ifbuf3[30]   <=   (Row == 5'd15)? 8'd0:ifmap_in2[15:8];
                ifbuf3[31]   <=   (Row == 5'd15)? 8'd0:ifmap_in2[7:0];

                Counter <= Counter + 1;
                Trashdata <= 0;
            end
            6'd17 : begin
                ifbuf6[8]   <=   (Row == 5'd15)? 8'd0:ifmap_in3[63:56];
                ifbuf6[9]   <=   (Row == 5'd15)? 8'd0:ifmap_in3[55:48];
                ifbuf6[10]   <=   (Row == 5'd15)? 8'd0:ifmap_in3[47:40];
                ifbuf6[11]   <=   (Row == 5'd15)? 8'd0:ifmap_in3[39:32];
                ifbuf6[12]   <=   (Row == 5'd15)? 8'd0:ifmap_in3[31:24];
                ifbuf6[13]   <=   (Row == 5'd15)? 8'd0:ifmap_in3[23:16];
                ifbuf6[14]   <=   (Row == 5'd15)? 8'd0:ifmap_in3[15:8];
                ifbuf6[15]   <=   (Row == 5'd15)? 8'd0:ifmap_in3[7:0];

                ifbuf6[24]   <=   (Row == 5'd15)? 8'd0:ifmap_in4[63:56];
                ifbuf6[25]   <=   (Row == 5'd15)? 8'd0:ifmap_in4[55:48];
                ifbuf6[26]   <=   (Row == 5'd15)? 8'd0:ifmap_in4[47:40];
                ifbuf6[27]   <=   (Row == 5'd15)? 8'd0:ifmap_in4[39:32];
                ifbuf6[28]   <=   (Row == 5'd15)? 8'd0:ifmap_in4[31:24];
                ifbuf6[29]   <=   (Row == 5'd15)? 8'd0:ifmap_in4[23:16];
                ifbuf6[30]   <=   (Row == 5'd15)? 8'd0:ifmap_in4[15:8];
                ifbuf6[31]   <=   (Row == 5'd15)? 8'd0:ifmap_in4[7:0];

                ifbuf3[8]   <=   (Row == 5'd15)? 8'd0:dout_BRAM4k_1[63:56];
                ifbuf3[9]   <=   (Row == 5'd15)? 8'd0:dout_BRAM4k_1[55:48];
                ifbuf3[10]   <=   (Row == 5'd15)? 8'd0:dout_BRAM4k_1[47:40];
                ifbuf3[11]   <=   (Row == 5'd15)? 8'd0:dout_BRAM4k_1[39:32];
                ifbuf3[12]   <=   (Row == 5'd15)? 8'd0:dout_BRAM4k_1[31:24];
                ifbuf3[13]   <=   (Row == 5'd15)? 8'd0:dout_BRAM4k_1[23:16];
                ifbuf3[14]   <=   (Row == 5'd15)? 8'd0:dout_BRAM4k_1[15:8];
                ifbuf3[15]   <=   (Row == 5'd15)? 8'd0:dout_BRAM4k_1[7:0];
                
                ifbuf3[24]   <=   (Row == 5'd15)? 8'd0:ifmap_in2[63:56];
                ifbuf3[25]   <=   (Row == 5'd15)? 8'd0:ifmap_in2[55:48];
                ifbuf3[26]   <=   (Row == 5'd15)? 8'd0:ifmap_in2[47:40];
                ifbuf3[27]   <=   (Row == 5'd15)? 8'd0:ifmap_in2[39:32];
                ifbuf3[28]   <=   (Row == 5'd15)? 8'd0:ifmap_in2[31:24];
                ifbuf3[29]   <=   (Row == 5'd15)? 8'd0:ifmap_in2[23:16];
                ifbuf3[30]   <=   (Row == 5'd15)? 8'd0:ifmap_in2[15:8];
                ifbuf3[31]   <=   (Row == 5'd15)? 8'd0:ifmap_in2[7:0];

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
        case ( Process )
        `Init:begin
            if (Counter != 5'd2) begin
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

                ifbuf5[24]   <=   ifmap_in04[63:56];
                ifbuf5[25]   <=   ifmap_in04[55:48];
                ifbuf5[26]   <=   ifmap_in04[47:40];
                ifbuf5[27]   <=   ifmap_in04[39:32];
                ifbuf5[28]   <=   ifmap_in04[31:24];
                ifbuf5[29]   <=   ifmap_in04[23:16];
                ifbuf5[30]   <=   ifmap_in04[15:8];
                ifbuf5[31]   <=   ifmap_in04[7:0];
//--------------------------------------------------                                
                ifbuf5[23] <=      ifbuf5[31];
                ifbuf5[22] <=      ifbuf5[30];
                ifbuf5[21] <=      ifbuf5[29];
                ifbuf5[20] <=      ifbuf5[28];
                ifbuf5[19] <=      ifbuf5[27];
                ifbuf5[18] <=      ifbuf5[26];
                ifbuf5[17] <=      ifbuf5[25];
                ifbuf5[16] <=      ifbuf5[24];

                ifbuf5[8]   <=    ifmap_in03[63:56];
                ifbuf5[9]   <=    ifmap_in03[55:48];
                ifbuf5[10]   <=   ifmap_in03[47:40];
                ifbuf5[11]   <=   ifmap_in03[39:32];
                ifbuf5[12]   <=   ifmap_in03[31:24];
                ifbuf5[13]   <=   ifmap_in03[23:16];
                ifbuf5[14]   <=   ifmap_in03[15:8];
                ifbuf5[15]   <=   ifmap_in03[7:0];

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

                ifbuf3[8]   <=    dout_BRAM4k_1[63:56];
                ifbuf3[9]   <=    dout_BRAM4k_1[55:48];
                ifbuf3[10]   <=   dout_BRAM4k_1[47:40];
                ifbuf3[11]   <=   dout_BRAM4k_1[39:32];
                ifbuf3[12]   <=   dout_BRAM4k_1[31:24];
                ifbuf3[13]   <=   dout_BRAM4k_1[23:16];
                ifbuf3[14]   <=   dout_BRAM4k_1[15:8];
                ifbuf3[15]   <=   dout_BRAM4k_1[7:0];

                ifbuf3[7] <=      ifbuf3[15];
                ifbuf3[6] <=      ifbuf3[14];
                ifbuf3[5] <=      ifbuf3[13];
                ifbuf3[4] <=      ifbuf3[12];
                ifbuf3[3] <=      ifbuf3[11];
                ifbuf3[2] <=      ifbuf3[10];
                ifbuf3[1] <=      ifbuf3[9];
                ifbuf3[0] <=      ifbuf3[8];

                ifbuf2[24]   <=   ifmap_in02[63:56];
                ifbuf2[25]   <=   ifmap_in02[55:48];
                ifbuf2[26]   <=   ifmap_in02[47:40];
                ifbuf2[27]   <=   ifmap_in02[39:32];
                ifbuf2[28]   <=   ifmap_in02[31:24];
                ifbuf2[29]   <=   ifmap_in02[23:16];
                ifbuf2[30]   <=   ifmap_in02[15:8];
                ifbuf2[31]   <=   ifmap_in02[7:0];
//--------------------------------------------------                                
                ifbuf2[23] <=      ifbuf2[31];
                ifbuf2[22] <=      ifbuf2[30];
                ifbuf2[21] <=      ifbuf2[29];
                ifbuf2[20] <=      ifbuf2[28];
                ifbuf2[19] <=      ifbuf2[27];
                ifbuf2[18] <=      ifbuf2[26];
                ifbuf2[17] <=      ifbuf2[25];
                ifbuf2[16] <=      ifbuf2[24];

                ifbuf2[8]   <=    ifmap_in01[63:56];
                ifbuf2[9]   <=    ifmap_in01[55:48];
                ifbuf2[10]   <=   ifmap_in01[47:40];
                ifbuf2[11]   <=   ifmap_in01[39:32];
                ifbuf2[12]   <=   ifmap_in01[31:24];
                ifbuf2[13]   <=   ifmap_in01[23:16];
                ifbuf2[14]   <=   ifmap_in01[15:8];
                ifbuf2[15]   <=   ifmap_in01[7:0];

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
        //ifbuf5[31]
        `Start:begin
            
            regPad6[0]   <=      ifbuf6[1];
            ifbuf6[0]    <=      ifbuf6[2];
            ifbuf6[1]    <=      ifbuf6[3];
            ifbuf6[2]    <=      ifbuf6[4];
            ifbuf6[3]    <=      ifbuf6[5];
            ifbuf6[4]    <=      ifbuf6[6];
            ifbuf6[5]    <=      ifbuf6[7];
            ifbuf6[6]    <=      ifbuf6[8];
            ifbuf6[7]    <=      ifbuf6[9];
            ifbuf6[8]    <=      ifbuf6[10];
            ifbuf6[9]    <=      ifbuf6[11];
            ifbuf6[10]   <=      ifbuf6[12];
            ifbuf6[11]   <=      ifbuf6[13];
            ifbuf6[12]   <=      ifbuf6[14];
            ifbuf6[13]   <=      ifbuf6[15];

            regPad6[1]   <=      ifbuf6[17];
            ifbuf6[16]   <=      ifbuf6[18];
            ifbuf6[17]   <=      ifbuf6[19];
            ifbuf6[18]   <=      ifbuf6[20];
            ifbuf6[19]   <=      ifbuf6[21];
            ifbuf6[20]   <=      ifbuf6[22];
            ifbuf6[21]   <=      ifbuf6[23];
            ifbuf6[22]   <=      ifbuf6[24];
            ifbuf6[23]   <=      ifbuf6[25];
            ifbuf6[24]   <=      ifbuf6[26];
            ifbuf6[25]   <=      ifbuf6[27];
            ifbuf6[26]   <=      ifbuf6[28];
            ifbuf6[27]   <=      ifbuf6[29];
            ifbuf6[28]   <=      ifbuf6[30];
            ifbuf6[29]   <=      ifbuf6[31];

            
            regPad5[0]   <=      ifbuf5[1];
            ifbuf5[0]    <=      ifbuf5[2];
            ifbuf5[1]    <=      ifbuf5[3];
            ifbuf5[2]    <=      ifbuf5[4];
            ifbuf5[3]    <=      ifbuf5[5];
            ifbuf5[4]    <=      ifbuf5[6];
            ifbuf5[5]    <=      ifbuf5[7];
            ifbuf5[6]    <=      ifbuf5[8];
            ifbuf5[7]    <=      ifbuf5[9];
            ifbuf5[8]    <=      ifbuf5[10];
            ifbuf5[9]    <=      ifbuf5[11];
            ifbuf5[10]   <=      ifbuf5[12];
            ifbuf5[11]   <=      ifbuf5[13];
            ifbuf5[12]   <=      ifbuf5[14];
            ifbuf5[13]   <=      ifbuf5[15];

            regPad5[1]   <=      ifbuf5[17];
            ifbuf5[16]   <=      ifbuf5[18];
            ifbuf5[17]   <=      ifbuf5[19];
            ifbuf5[18]   <=      ifbuf5[20];
            ifbuf5[19]   <=      ifbuf5[21];
            ifbuf5[20]   <=      ifbuf5[22];
            ifbuf5[21]   <=      ifbuf5[23];
            ifbuf5[22]   <=      ifbuf5[24];
            ifbuf5[23]   <=      ifbuf5[25];
            ifbuf5[24]   <=      ifbuf5[26];
            ifbuf5[25]   <=      ifbuf5[27];
            ifbuf5[26]   <=      ifbuf5[28];
            ifbuf5[27]   <=      ifbuf5[29];
            ifbuf5[28]   <=      ifbuf5[30];
            ifbuf5[29]   <=      ifbuf5[31];


            regPad4[0]   <=      ifbuf4[1];
            ifbuf4[0]    <=      ifbuf4[2];
            ifbuf4[1]    <=      ifbuf4[3];
            ifbuf4[2]    <=      ifbuf4[4];
            ifbuf4[3]    <=      ifbuf4[5];
            ifbuf4[4]    <=      ifbuf4[6];
            ifbuf4[5]    <=      ifbuf4[7];
            ifbuf4[6]    <=      ifbuf4[8];
            ifbuf4[7]    <=      ifbuf4[9];
            ifbuf4[8]    <=      ifbuf4[10];
            ifbuf4[9]    <=      ifbuf4[11];
            ifbuf4[10]   <=      ifbuf4[12];
            ifbuf4[11]   <=      ifbuf4[13];
            ifbuf4[12]   <=      ifbuf4[14];
            ifbuf4[13]   <=      ifbuf1[15];
            ifbuf4[14]   <=      regPad6[2];
            ifbuf4[15]   <=      regPad6[0];
            regPad6[2]   <=      ifbuf6[0];



            regPad4[1]   <=      ifbuf4[17];
            ifbuf4[16]   <=      ifbuf4[18];
            ifbuf4[17]   <=      ifbuf4[19];
            ifbuf4[18]   <=      ifbuf4[20];
            ifbuf4[19]   <=      ifbuf4[21];
            ifbuf4[20]   <=      ifbuf4[22];
            ifbuf4[21]   <=      ifbuf4[23];
            ifbuf4[22]   <=      ifbuf4[24];
            ifbuf4[23]   <=      ifbuf4[25];
            ifbuf4[24]   <=      ifbuf4[26];
            ifbuf4[25]   <=      ifbuf4[27];
            ifbuf4[26]   <=      ifbuf4[28];
            ifbuf4[27]   <=      ifbuf4[29];
            ifbuf4[28]   <=      ifbuf4[30];
            ifbuf4[29]   <=      ifbuf4[31];
            ifbuf4[30]   <=      regPad6[3];
            ifbuf4[31]   <=      regPad6[1];
            regPad6[3]   <=      ifbuf6[16];

            regPad3[0]   <=      ifbuf3[1];
            ifbuf3[0]    <=      ifbuf3[2];
            ifbuf3[1]    <=      ifbuf3[3];
            ifbuf3[2]    <=      ifbuf3[4];
            ifbuf3[3]    <=      ifbuf3[5];
            ifbuf3[4]    <=      ifbuf3[6];
            ifbuf3[5]    <=      ifbuf3[7];
            ifbuf3[6]    <=      ifbuf3[8];
            ifbuf3[7]    <=      ifbuf3[9];
            ifbuf3[8]    <=      ifbuf3[10];
            ifbuf3[9]    <=      ifbuf3[11];
            ifbuf3[10]   <=      ifbuf3[12];
            ifbuf3[11]   <=      ifbuf3[13];
            ifbuf3[12]   <=      ifbuf3[14];
            ifbuf3[13]   <=      ifbuf3[15];

            regPad3[1]   <=      ifbuf3[17];
            ifbuf3[16]   <=      ifbuf3[18];
            ifbuf3[17]   <=      ifbuf3[19];
            ifbuf3[18]   <=      ifbuf3[20];
            ifbuf3[19]   <=      ifbuf3[21];
            ifbuf3[20]   <=      ifbuf3[22];
            ifbuf3[21]   <=      ifbuf3[23];
            ifbuf3[22]   <=      ifbuf3[24];
            ifbuf3[23]   <=      ifbuf3[25];
            ifbuf3[24]   <=      ifbuf3[26];
            ifbuf3[25]   <=      ifbuf3[27];
            ifbuf3[26]   <=      ifbuf3[28];
            ifbuf3[27]   <=      ifbuf3[29];
            ifbuf3[28]   <=      ifbuf3[30];
            ifbuf3[29]   <=      ifbuf3[31];


            regPad2[0]   <=      ifbuf2[1];
            ifbuf2[0]    <=      ifbuf2[2];
            ifbuf2[1]    <=      ifbuf2[3];
            ifbuf2[2]    <=      ifbuf2[4];
            ifbuf2[3]    <=      ifbuf2[5];
            ifbuf2[4]    <=      ifbuf2[6];
            ifbuf2[5]    <=      ifbuf2[7];
            ifbuf2[6]    <=      ifbuf2[8];
            ifbuf2[7]    <=      ifbuf2[9];
            ifbuf2[8]    <=      ifbuf2[10];
            ifbuf2[9]    <=      ifbuf2[11];
            ifbuf2[10]   <=      ifbuf2[12];
            ifbuf2[11]   <=      ifbuf2[13];
            ifbuf2[12]   <=      ifbuf2[14];
            ifbuf2[13]   <=      ifbuf2[15];

            regPad2[1]   <=      ifbuf2[17];
            ifbuf2[16]   <=      ifbuf2[18];
            ifbuf2[17]   <=      ifbuf2[19];
            ifbuf2[18]   <=      ifbuf2[20];
            ifbuf2[19]   <=      ifbuf2[21];
            ifbuf2[20]   <=      ifbuf2[22];
            ifbuf2[21]   <=      ifbuf2[23];
            ifbuf2[22]   <=      ifbuf2[24];
            ifbuf2[23]   <=      ifbuf2[25];
            ifbuf2[24]   <=      ifbuf2[26];
            ifbuf2[25]   <=      ifbuf2[27];
            ifbuf2[26]   <=      ifbuf2[28];
            ifbuf2[27]   <=      ifbuf2[29];
            ifbuf2[28]   <=      ifbuf2[30];
            ifbuf2[29]   <=      ifbuf2[31];


            regPad1[0]   <=      ifbuf1[1];
            ifbuf1[0]    <=      ifbuf1[2];
            ifbuf1[1]    <=      ifbuf1[3];
            ifbuf1[2]    <=      ifbuf1[4];
            ifbuf1[3]    <=      ifbuf1[5];
            ifbuf1[4]    <=      ifbuf1[6];
            ifbuf1[5]    <=      ifbuf1[7];
            ifbuf1[6]    <=      ifbuf1[8];
            ifbuf1[7]    <=      ifbuf1[9];
            ifbuf1[8]    <=      ifbuf1[10];
            ifbuf1[9]    <=      ifbuf1[11];
            ifbuf1[10]   <=      ifbuf1[12];
            ifbuf1[11]   <=      ifbuf1[13];
            ifbuf1[12]   <=      ifbuf1[14];
            ifbuf1[13]   <=      ifbuf1[15];
            ifbuf1[14]   <=      regPad3[2];
            ifbuf1[15]   <=      regPad3[0];
            regPad3[2]   <=      ifbuf3[0];

            regPad1[1]   <=      ifbuf1[17];
            ifbuf1[16]   <=      ifbuf1[18];
            ifbuf1[17]   <=      ifbuf1[19];
            ifbuf1[18]   <=      ifbuf1[20];
            ifbuf1[19]   <=      ifbuf1[21];
            ifbuf1[20]   <=      ifbuf1[22];
            ifbuf1[21]   <=      ifbuf1[23];
            ifbuf1[22]   <=      ifbuf1[24];
            ifbuf1[23]   <=      ifbuf1[25];
            ifbuf1[24]   <=      ifbuf1[26];
            ifbuf1[25]   <=      ifbuf1[27];
            ifbuf1[26]   <=      ifbuf1[28];
            ifbuf1[27]   <=      ifbuf1[29];
            ifbuf1[28]   <=      ifbuf1[30];
            ifbuf1[29]   <=      ifbuf1[31];
            ifbuf1[30]   <=      regPad3[3];
            ifbuf1[31]   <=      regPad3[1];
            regPad3[3]   <=      ifbuf3[16];


// need further change
            case ( Counter )
            6'd5 : begin
                ifbuf6[8]   <=   ifmap_in3[63:56];
                ifbuf6[9]   <=   ifmap_in3[55:48];
                ifbuf6[10]   <=   ifmap_in3[47:40];
                ifbuf6[11]   <=   ifmap_in3[39:32];
                ifbuf6[12]   <=   ifmap_in3[31:24];
                ifbuf6[13]   <=   ifmap_in3[23:16];
                ifbuf6[14]   <=   ifmap_in3[15:8];
                ifbuf6[15]   <=   ifmap_in3[7:0];

                ifbuf6[24]   <=   ifmap_in4[63:56];
                ifbuf6[25]   <=   ifmap_in4[55:48];
                ifbuf6[26]   <=   ifmap_in4[47:40];
                ifbuf6[27]   <=   ifmap_in4[39:32];
                ifbuf6[28]   <=   ifmap_in4[31:24];
                ifbuf6[29]   <=   ifmap_in4[23:16];
                ifbuf6[30]   <=   ifmap_in4[15:8];
                ifbuf6[31]   <=   ifmap_in4[7:0];

                ifbuf3[8]   <=   dout_BRAM4k_1[63:56];
                ifbuf3[9]   <=   dout_BRAM4k_1[55:48];
                ifbuf3[10]   <=   dout_BRAM4k_1[47:40];
                ifbuf3[11]   <=   dout_BRAM4k_1[39:32];
                ifbuf3[12]   <=   dout_BRAM4k_1[31:24];
                ifbuf3[13]   <=   dout_BRAM4k_1[23:16];
                ifbuf3[14]   <=   dout_BRAM4k_1[15:8];
                ifbuf3[15]   <=   dout_BRAM4k_1[7:0];
                
                ifbuf3[24]   <=   ifmap_in2[63:56];
                ifbuf3[25]   <=   ifmap_in2[55:48];
                ifbuf3[26]   <=   ifmap_in2[47:40];
                ifbuf3[27]   <=   ifmap_in2[39:32];
                ifbuf3[28]   <=   ifmap_in2[31:24];
                ifbuf3[29]   <=   ifmap_in2[23:16];
                ifbuf3[30]   <=   ifmap_in2[15:8];
                ifbuf3[31]   <=   ifmap_in2[7:0];

                ifbuf5[8]   <=   ifmap_in03[63:56];
                ifbuf5[9]   <=   ifmap_in03[55:48];
                ifbuf5[10]   <=   ifmap_in03[47:40];
                ifbuf5[11]   <=   ifmap_in03[39:32];
                ifbuf5[12]   <=   ifmap_in03[31:24];
                ifbuf5[13]   <=   ifmap_in03[23:16];
                ifbuf5[14]   <=   ifmap_in03[15:8];
                ifbuf5[15]   <=   ifmap_in03[7:0];

                ifbuf5[24]   <=   ifmap_in04[63:56];
                ifbuf5[25]   <=   ifmap_in04[55:48];
                ifbuf5[26]   <=   ifmap_in04[47:40];
                ifbuf5[27]   <=   ifmap_in04[39:32];
                ifbuf5[28]   <=   ifmap_in04[31:24];
                ifbuf5[29]   <=   ifmap_in04[23:16];
                ifbuf5[30]   <=   ifmap_in04[15:8];
                ifbuf5[31]   <=   ifmap_in04[7:0];

                ifbuf2[8]   <=   ifmap_in01[63:56];
                ifbuf2[9]   <=   ifmap_in01[55:48];
                ifbuf2[10]   <=   ifmap_in01[47:40];
                ifbuf2[11]   <=   ifmap_in01[39:32];
                ifbuf2[12]   <=   ifmap_in01[31:24];
                ifbuf2[13]   <=   ifmap_in01[23:16];
                ifbuf2[14]   <=   ifmap_in01[15:8];
                ifbuf2[15]   <=   ifmap_in01[7:0];
                
                ifbuf2[24]   <=   ifmap_in02[63:56];
                ifbuf2[25]   <=   ifmap_in02[55:48];
                ifbuf2[26]   <=   ifmap_in02[47:40];
                ifbuf2[27]   <=   ifmap_in02[39:32];
                ifbuf2[28]   <=   ifmap_in02[31:24];
                ifbuf2[29]   <=   ifmap_in02[23:16];
                ifbuf2[30]   <=   ifmap_in02[15:8];
                ifbuf2[31]   <=   ifmap_in02[7:0];

                Counter <= Counter + 1;
                Trashdata <= 0;
            end
            6'd9 : begin
                ifbuf6[8]   <=   ifmap_in3[63:56];
                ifbuf6[9]   <=   ifmap_in3[55:48];
                ifbuf6[10]   <=   ifmap_in3[47:40];
                ifbuf6[11]   <=   ifmap_in3[39:32];
                ifbuf6[12]   <=   ifmap_in3[31:24];
                ifbuf6[13]   <=   ifmap_in3[23:16];
                ifbuf6[14]   <=   ifmap_in3[15:8];
                ifbuf6[15]   <=   ifmap_in3[7:0];

                ifbuf6[24]   <=   ifmap_in4[63:56];
                ifbuf6[25]   <=   ifmap_in4[55:48];
                ifbuf6[26]   <=   ifmap_in4[47:40];
                ifbuf6[27]   <=   ifmap_in4[39:32];
                ifbuf6[28]   <=   ifmap_in4[31:24];
                ifbuf6[29]   <=   ifmap_in4[23:16];
                ifbuf6[30]   <=   ifmap_in4[15:8];
                ifbuf6[31]   <=   ifmap_in4[7:0];

                ifbuf3[8]   <=   dout_BRAM4k_1[63:56];
                ifbuf3[9]   <=   dout_BRAM4k_1[55:48];
                ifbuf3[10]   <=   dout_BRAM4k_1[47:40];
                ifbuf3[11]   <=   dout_BRAM4k_1[39:32];
                ifbuf3[12]   <=   dout_BRAM4k_1[31:24];
                ifbuf3[13]   <=   dout_BRAM4k_1[23:16];
                ifbuf3[14]   <=   dout_BRAM4k_1[15:8];
                ifbuf3[15]   <=   dout_BRAM4k_1[7:0];
                
                ifbuf3[24]   <=   ifmap_in2[63:56];
                ifbuf3[25]   <=   ifmap_in2[55:48];
                ifbuf3[26]   <=   ifmap_in2[47:40];
                ifbuf3[27]   <=   ifmap_in2[39:32];
                ifbuf3[28]   <=   ifmap_in2[31:24];
                ifbuf3[29]   <=   ifmap_in2[23:16];
                ifbuf3[30]   <=   ifmap_in2[15:8];
                ifbuf3[31]   <=   ifmap_in2[7:0];

                ifbuf5[8]   <=   ifmap_in03[63:56];
                ifbuf5[9]   <=   ifmap_in03[55:48];
                ifbuf5[10]   <=   ifmap_in03[47:40];
                ifbuf5[11]   <=   ifmap_in03[39:32];
                ifbuf5[12]   <=   ifmap_in03[31:24];
                ifbuf5[13]   <=   ifmap_in03[23:16];
                ifbuf5[14]   <=   ifmap_in03[15:8];
                ifbuf5[15]   <=   ifmap_in03[7:0];

                ifbuf5[24]   <=   ifmap_in04[63:56];
                ifbuf5[25]   <=   ifmap_in04[55:48];
                ifbuf5[26]   <=   ifmap_in04[47:40];
                ifbuf5[27]   <=   ifmap_in04[39:32];
                ifbuf5[28]   <=   ifmap_in04[31:24];
                ifbuf5[29]   <=   ifmap_in04[23:16];
                ifbuf5[30]   <=   ifmap_in04[15:8];
                ifbuf5[31]   <=   ifmap_in04[7:0];

                ifbuf2[8]   <=   ifmap_in01[63:56];
                ifbuf2[9]   <=   ifmap_in01[55:48];
                ifbuf2[10]   <=   ifmap_in01[47:40];
                ifbuf2[11]   <=   ifmap_in01[39:32];
                ifbuf2[12]   <=   ifmap_in01[31:24];
                ifbuf2[13]   <=   ifmap_in01[23:16];
                ifbuf2[14]   <=   ifmap_in01[15:8];
                ifbuf2[15]   <=   ifmap_in01[7:0];
                
                ifbuf2[24]   <=   ifmap_in02[63:56];
                ifbuf2[25]   <=   ifmap_in02[55:48];
                ifbuf2[26]   <=   ifmap_in02[47:40];
                ifbuf2[27]   <=   ifmap_in02[39:32];
                ifbuf2[28]   <=   ifmap_in02[31:24];
                ifbuf2[29]   <=   ifmap_in02[23:16];
                ifbuf2[30]   <=   ifmap_in02[15:8];
                ifbuf2[31]   <=   ifmap_in02[7:0];

                Counter <= 6'd1;
                Trashdata <= 0;
                if(Row == 5'd15) begin
                    Row <= 0;
                end else begin
                    Row <= Row + 1;                    
                end
            end

            6'd1 : begin
                ifbuf6[8]   <=      ifbuf6[10];
                ifbuf6[9]   <=      ifbuf6[11];
                ifbuf6[10]   <=      ifbuf6[12];
                ifbuf6[11]   <=      ifbuf6[13];
                ifbuf6[12]   <=      ifbuf6[14];
                ifbuf6[13]   <=      ifbuf6[15];
                ifbuf6[14]   <=      0;
                ifbuf6[15]   <=      0;

                ifbuf6[24]   <=      ifbuf6[26];
                ifbuf6[25]   <=      ifbuf6[27];
                ifbuf6[26]   <=      ifbuf6[28];
                ifbuf6[27]   <=      ifbuf6[29];
                ifbuf6[28]   <=      ifbuf6[30];
                ifbuf6[29]   <=      ifbuf6[31];
                ifbuf6[30]   <=      0;
                ifbuf6[31]   <=      0;

                ifbuf5[8]   <=      ifbuf5[10];
                ifbuf5[9]   <=      ifbuf5[11];
                ifbuf5[10]   <=      ifbuf5[12];
                ifbuf5[11]   <=      ifbuf5[13];
                ifbuf5[12]   <=      ifbuf5[14];
                ifbuf5[13]   <=      ifbuf5[15];
                ifbuf5[14]   <=      0;
                ifbuf5[15]   <=      0;

                ifbuf5[24]   <=      ifbuf5[26];
                ifbuf5[25]   <=      ifbuf5[27];
                ifbuf5[26]   <=      ifbuf5[28];
                ifbuf5[27]   <=      ifbuf5[29];
                ifbuf5[28]   <=      ifbuf5[30];
                ifbuf5[29]   <=      ifbuf5[31];
                ifbuf5[30]   <=      0;
                ifbuf5[31]   <=      0;

                ifbuf3[8]   <=      ifbuf3[10];
                ifbuf3[9]   <=      ifbuf3[11];
                ifbuf3[10]   <=      ifbuf3[12];
                ifbuf3[11]   <=      ifbuf3[13];
                ifbuf3[12]   <=      ifbuf3[14];
                ifbuf3[13]   <=      ifbuf3[15];
                ifbuf3[14]   <=      0;
                ifbuf3[15]   <=      0;

                ifbuf3[24]   <=      ifbuf3[26];
                ifbuf3[25]   <=      ifbuf3[27];
                ifbuf3[26]   <=      ifbuf3[28];
                ifbuf3[27]   <=      ifbuf3[29];
                ifbuf3[28]   <=      ifbuf3[30];
                ifbuf3[29]   <=      ifbuf3[31];
                ifbuf3[30]   <=      0;
                ifbuf3[31]   <=      0;

                ifbuf2[8]   <=      ifbuf2[10];
                ifbuf2[9]   <=      ifbuf2[11];
                ifbuf2[10]   <=      ifbuf2[12];
                ifbuf2[11]   <=      ifbuf2[13];
                ifbuf2[12]   <=      ifbuf2[14];
                ifbuf2[13]   <=      ifbuf2[15];
                ifbuf2[14]   <=      0;
                ifbuf2[15]   <=      0;

                ifbuf2[24]   <=      ifbuf2[26];
                ifbuf2[25]   <=      ifbuf2[27];
                ifbuf2[26]   <=      ifbuf2[28];
                ifbuf2[27]   <=      ifbuf2[29];
                ifbuf2[28]   <=      ifbuf2[30];
                ifbuf2[29]   <=      ifbuf2[31];
                ifbuf2[30]   <=      0;
                ifbuf2[31]   <=      0;

                Counter <= Counter + 1;
                Trashdata <= 0;
            end
            6'd8 : begin
                ifbuf6[8]   <=      ifbuf6[10];
                ifbuf6[9]   <=      ifbuf6[11];
                ifbuf6[10]   <=      ifbuf6[12];
                ifbuf6[11]   <=      ifbuf6[13];
                ifbuf6[12]   <=      ifbuf6[14];
                ifbuf6[13]   <=      ifbuf6[15];

                ifbuf6[24]   <=      ifbuf6[26];
                ifbuf6[25]   <=      ifbuf6[27];
                ifbuf6[26]   <=      ifbuf6[28];
                ifbuf6[27]   <=      ifbuf6[29];
                ifbuf6[28]   <=      ifbuf6[30];
                ifbuf6[29]   <=      ifbuf6[31];

                ifbuf5[8]   <=      ifbuf5[10];
                ifbuf5[9]   <=      ifbuf5[11];
                ifbuf5[10]   <=      ifbuf5[12];
                ifbuf5[11]   <=      ifbuf5[13];
                ifbuf5[12]   <=      ifbuf5[14];
                ifbuf5[13]   <=      ifbuf5[15];

                ifbuf5[24]   <=      ifbuf5[26];
                ifbuf5[25]   <=      ifbuf5[27];
                ifbuf5[26]   <=      ifbuf5[28];
                ifbuf5[27]   <=      ifbuf5[29];
                ifbuf5[28]   <=      ifbuf5[30];
                ifbuf5[29]   <=      ifbuf5[31];

                ifbuf3[8]   <=      ifbuf3[10];
                ifbuf3[9]   <=      ifbuf3[11];
                ifbuf3[10]   <=      ifbuf3[12];
                ifbuf3[11]   <=      ifbuf3[13];
                ifbuf3[12]   <=      ifbuf3[14];
                ifbuf3[13]   <=      ifbuf3[15];

                ifbuf3[24]   <=      ifbuf3[26];
                ifbuf3[25]   <=      ifbuf3[27];
                ifbuf3[26]   <=      ifbuf3[28];
                ifbuf3[27]   <=      ifbuf3[29];
                ifbuf3[28]   <=      ifbuf3[30];
                ifbuf3[29]   <=      ifbuf3[31];

                ifbuf2[8]   <=      ifbuf2[10];
                ifbuf2[9]   <=      ifbuf2[11];
                ifbuf2[10]   <=      ifbuf2[12];
                ifbuf2[11]   <=      ifbuf2[13];
                ifbuf2[12]   <=      ifbuf2[14];
                ifbuf2[13]   <=      ifbuf2[15];

                ifbuf2[24]   <=      ifbuf2[26];
                ifbuf2[25]   <=      ifbuf2[27];
                ifbuf2[26]   <=      ifbuf2[28];
                ifbuf2[27]   <=      ifbuf2[29];
                ifbuf2[28]   <=      ifbuf2[30];
                ifbuf2[29]   <=      ifbuf2[31];

                
                Counter <= Counter + 1;
                Trashdata <= 1;
            end
            default :begin
                ifbuf6[8]   <=      ifbuf6[10];
                ifbuf6[9]   <=      ifbuf6[11];
                ifbuf6[10]   <=      ifbuf6[12];
                ifbuf6[11]   <=      ifbuf6[13];
                ifbuf6[12]   <=      ifbuf6[14];
                ifbuf6[13]   <=      ifbuf6[15];

                ifbuf6[24]   <=      ifbuf6[26];
                ifbuf6[25]   <=      ifbuf6[27];
                ifbuf6[26]   <=      ifbuf6[28];
                ifbuf6[27]   <=      ifbuf6[29];
                ifbuf6[28]   <=      ifbuf6[30];
                ifbuf6[29]   <=      ifbuf6[31];

                ifbuf5[8]   <=      ifbuf5[10];
                ifbuf5[9]   <=      ifbuf5[11];
                ifbuf5[10]   <=      ifbuf5[12];
                ifbuf5[11]   <=      ifbuf5[13];
                ifbuf5[12]   <=      ifbuf5[14];
                ifbuf5[13]   <=      ifbuf5[15];

                ifbuf5[24]   <=      ifbuf5[26];
                ifbuf5[25]   <=      ifbuf5[27];
                ifbuf5[26]   <=      ifbuf5[28];
                ifbuf5[27]   <=      ifbuf5[29];
                ifbuf5[28]   <=      ifbuf5[30];
                ifbuf5[29]   <=      ifbuf5[31];

                ifbuf3[8]   <=      ifbuf3[10];
                ifbuf3[9]   <=      ifbuf3[11];
                ifbuf3[10]   <=      ifbuf3[12];
                ifbuf3[11]   <=      ifbuf3[13];
                ifbuf3[12]   <=      ifbuf3[14];
                ifbuf3[13]   <=      ifbuf3[15];

                ifbuf3[24]   <=      ifbuf3[26];
                ifbuf3[25]   <=      ifbuf3[27];
                ifbuf3[26]   <=      ifbuf3[28];
                ifbuf3[27]   <=      ifbuf3[29];
                ifbuf3[28]   <=      ifbuf3[30];
                ifbuf3[29]   <=      ifbuf3[31];

                ifbuf2[8]   <=      ifbuf2[10];
                ifbuf2[9]   <=      ifbuf2[11];
                ifbuf2[10]   <=      ifbuf2[12];
                ifbuf2[11]   <=      ifbuf2[13];
                ifbuf2[12]   <=      ifbuf2[14];
                ifbuf2[13]   <=      ifbuf2[15];

                ifbuf2[24]   <=      ifbuf2[26];
                ifbuf2[25]   <=      ifbuf2[27];
                ifbuf2[26]   <=      ifbuf2[28];
                ifbuf2[27]   <=      ifbuf2[29];
                ifbuf2[28]   <=      ifbuf2[30];
                ifbuf2[29]   <=      ifbuf2[31];
                
                Counter <= Counter + 1;
                Trashdata <= 0;
            end
            endcase
            
        end
        endcase
    end 
    `Layer5: begin 
        case ( Process )     
        `Init:begin
            ifbuf6[24]   <=   0;
            ifbuf6[25]   <=   0;
            ifbuf6[26]   <=   0;
            ifbuf6[27]   <=   0;
            ifbuf6[28]   <=   0;
            ifbuf6[29]   <=   0;
            ifbuf6[30]   <=   0;
            ifbuf6[31]   <=   0;
                
            ifbuf5[24]   <=   dout_BRAM4k_1[63:56];
            ifbuf5[25]   <=   dout_BRAM4k_1[55:48];
            ifbuf5[26]   <=   dout_BRAM4k_1[47:40];
            ifbuf5[27]   <=   dout_BRAM4k_1[39:32];
            ifbuf5[28]   <=   dout_BRAM4k_1[31:24];
            ifbuf5[29]   <=   dout_BRAM4k_1[23:16];
            ifbuf5[30]   <=   dout_BRAM4k_1[15:8];
            ifbuf5[31]   <=   dout_BRAM4k_1[7:0];  

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
            ProcessBubble3 <= `Start;
            ProcessBubble2 <= `Start;
            ProcessBubble1 <= `Start;
            Process        <= `Start;  
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
                
            ifbuf5[24]   <=   dout_BRAM4k_1[63:56];
            ifbuf5[25]   <=   dout_BRAM4k_1[55:48];
            ifbuf5[26]   <=   dout_BRAM4k_1[47:40];
            ifbuf5[27]   <=   dout_BRAM4k_1[39:32];
            ifbuf5[28]   <=   dout_BRAM4k_1[31:24];
            ifbuf5[29]   <=   dout_BRAM4k_1[23:16];
            ifbuf5[30]   <=   dout_BRAM4k_1[15:8];
            ifbuf5[31]   <=   dout_BRAM4k_1[7:0];  

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
            if(ProcessBubble2 == `Init) begin
            ifbuf6[23] <= plusi11  + plusi12  + plusi13 + ifbuf6[23];
            ifbuf6[22] <= plusi21  + plusi22  + plusi23 + ifbuf6[22];
            ifbuf6[21] <= plusi31  + plusi32  + plusi33 + ifbuf6[21];
            ifbuf6[20] <= plusi41  + plusi42  + plusi43 + ifbuf6[20];
            end
//----------------------------------------------------------
            if(ProcessBubble3 == `Init) begin
            ifbuf5[23] <= plusi11  + plusi12  + plusi13 + ifbuf5[23];
            ifbuf5[22] <= plusi21  + plusi22  + plusi23 + ifbuf5[22];
            ifbuf5[21] <= plusi31  + plusi32  + plusi33 + ifbuf5[21];
            ifbuf5[20] <= plusi41  + plusi42  + plusi43 + ifbuf5[20];
            end
//----------------------------------------------------------
            if(ProcessBubble4 == `Init) begin
            ifbuf4[23] <= plusi11  + plusi12  + plusi13 + ifbuf4[23];
            ifbuf4[22] <= plusi21  + plusi22  + plusi23 + ifbuf4[22];
            ifbuf4[21] <= plusi31  + plusi32  + plusi33 + ifbuf4[21];
            ifbuf4[20] <= plusi41  + plusi42  + plusi43 + ifbuf4[20];
            end
//----------------------------------------------------------
            if(ProcessBubble5 == `Init) begin
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
            ProcessBubble1 <= `Init;
            ProcessBubble2 <= ProcessBubble1;
            ProcessBubble3 <= ProcessBubble2;
            ProcessBubble4 <= ProcessBubble3;
            ProcessBubble5 <= ProcessBubble4;
            if(kernCounter == 64 && ProcessBubble5 == `Init) begin
                kernCounter <= 1 ; 
                Process <= `CalPool;
            end else if(kernCounter != 64 && ProcessBubble5 == `Init) begin
                Process <= ProcessBubble5; 
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
        ProcessBubble1 <= `Init;
        ProcessBubble2 <= ProcessBubble1;
        ProcessBubble3 <= ProcessBubble2;
        ProcessBubble4 <= ProcessBubble3;
        Process <= ProcessBubble4;
//-----------------------------------
            //6   (19 18 ) 17
            //5   (19 18 ) 17 16 15
            //4   (19 18 ) 17 16 
            //3   (19 18 ) 17  

//-----------------------------------

    end
    endcase
            end
*/
            endcase
    end
end

//-------------------------------

wire wb_enA1;
wire wb_enA2;
wire wb_enA3;
wire wb_enA4;
wire wb_enA5;
wire wb_enB1;
wire wb_enB2;
wire wb_enB3;
wire wb_enB4;
wire wb_enB5;

wire FinishWBA1;
wire FinishWBA2;
wire FinishWBA3;
wire FinishWBA4;
wire FinishWBA5;
wire FinishWBB1;
wire FinishWBB2;
wire FinishWBB3;
wire FinishWBB4;
wire FinishWBB5;

wire [18:0] psumA11;
wire [18:0] psumA12;
pe_group2 pe_group11(
    .clk(clk),
    .rst(rst),
    .weight1(weightA11),
    .weight2(weightA12),
    .weight3(weightA13),
    .weight4(weightA14),
    .weight5(weightA15),

    .ifmap1(regPad1[0]),
    .ifmap2(regPad1[1]),
    .ifmap3(ifbuf1[0]),
    .ifmap4(ifbuf1[1]),
    .ifmap5(ifbuf1[2]),
    .groupsum_out1(psumA11),
    .groupsum_out2(psumA12),
    .layer(Layer),
    .Process(Process),
    .wb_en(wb_enA1),
    .FinishFlag(FinishFlag),
    .FinishWB(FinishWBA1)
);
//----------------------------------------
wire [18:0] psumA21;
wire [18:0] psumA22;
pe_group2 pe_group12(
    .clk(clk),
    .rst(rst),
    .weight1(weightA21),
    .weight2(weightA22),
    .weight3(weightA23),
    .weight4(weightA24),
    .weight5(weightA25),

    .ifmap1(regPad2[0]),
    .ifmap2(regPad2[1]),
    .ifmap3(ifbuf2[0]),
    .ifmap4(ifbuf2[1]),
    .ifmap5(ifbuf2[2]),
    .groupsum_out1(psumA21),
    .groupsum_out2(psumA22),
    .layer(Layer),
    .Process(Process),
    .wb_en(wb_enA2),
    .FinishFlag(FinishFlag),
    .FinishWB(FinishWBA2)
);

//-------------------------------
wire [18:0] psumA31;
wire [18:0] psumA32;
pe_group2 pe_group13(
    .clk(clk),
    .rst(rst),
    .weight1(weightA31),
    .weight2(weightA32),
    .weight3(weightA33),
    .weight4(weightA34),
    .weight5(weightA35),

    .ifmap1(regPad3[0]),
    .ifmap2(regPad3[1]),
    .ifmap3(ifbuf3[0]),
    .ifmap4(ifbuf3[1]),
    .ifmap5(ifbuf3[2]),
    .groupsum_out1(psumA31),
    .groupsum_out2(psumA32),
    .layer(Layer),
    .Process(Process),
    .wb_en(wb_enA3),
    .FinishFlag(FinishFlag),
    .FinishWB(FinishWBA3)
);

wire [18:0] psumA41;
wire [18:0] psumA42;
pe_group2 pe_group14(
    .clk(clk),
    .rst(rst),
    .weight1(weightA41),
    .weight2(weightA42),
    .weight3(weightA43),
    .weight4(weightA44),
    .weight5(weightA45),

    .ifmap1(regPad4[0]),
    .ifmap2(regPad4[1]),
    .ifmap3(ifbuf4[0]),
    .ifmap4(ifbuf4[1]),
    .ifmap5(ifbuf4[2]),
    .groupsum_out1(psumA41),
    .groupsum_out2(psumA42),
    .layer(Layer),
    .Process(Process),
    .wb_en(wb_enA4),
    .FinishFlag(FinishFlag),
    .FinishWB(FinishWBA4)
);

wire [18:0] psumA51;
wire [18:0] psumA52;
pe_group2 pe_group15(
    .clk(clk),
    .rst(rst),
    .weight1(weightA51),
    .weight2(weightA52),
    .weight3(weightA53),
    .weight4(weightA54),
    .weight5(weightA55),

    .ifmap1(regPad5[0]),
    .ifmap2(regPad5[1]),
    .ifmap3(ifbuf5[0]),
    .ifmap4(ifbuf5[1]),
    .ifmap5(ifbuf5[2]),
    .groupsum_out1(psumA51),
    .groupsum_out2(psumA52),
    .layer(Layer),
    .Process(Process),
    .wb_en(wb_enA5),
    .FinishFlag(FinishFlag),
    .FinishWB(FinishWBA5)
);

//*****************************************************

wire [18:0] psumB11;
wire [18:0] psumB12;
pe_group2 pe_group21(
    .clk(clk),
    .rst(rst),
    .weight1(weightB11),
    .weight2(weightB12),
    .weight3(weightB13),
    .weight4(weightB14),
    .weight5(weightB15),

    .ifmap1(regPad1[0]),
    .ifmap2(regPad1[1]),
    .ifmap3(ifbuf1[0]),
    .ifmap4(ifbuf1[1]),
    .ifmap5(ifbuf1[2]),
    .groupsum_out1(psumB11),
    .groupsum_out2(psumB12),
    .layer(Layer),
    .Process(Process),
    .wb_en(wb_enB1),
    .FinishFlag(FinishFlag),
    .FinishWB(FinishWBB1)
);
//----------------------------------------


wire [18:0] psumB21;
wire [18:0] psumB22;
pe_group2 pe_group22(
    .clk(clk),
    .rst(rst),
    .weight1(weightB21),
    .weight2(weightB22),
    .weight3(weightB23),
    .weight4(weightB24),
    .weight5(weightB25),

    .ifmap1(regPad2[0]),
    .ifmap2(regPad2[1]),
    .ifmap3(ifbuf2[0]),
    .ifmap4(ifbuf2[1]),
    .ifmap5(ifbuf2[2]),
    .groupsum_out1(psumB21),
    .groupsum_out2(psumB22),
    .layer(Layer),
    .Process(Process),
    .wb_en(wb_enB2),
    .FinishFlag(FinishFlag),
    .FinishWB(FinishWBB2)
);

//-------------------------------
wire [18:0] psumB31;
wire [18:0] psumB32;
pe_group2 pe_group23(
    .clk(clk),
    .rst(rst),
    .weight1(weightB31),
    .weight2(weightB32),
    .weight3(weightB33),
    .weight4(weightB34),
    .weight5(weightB35),

    .ifmap1(regPad3[0]),
    .ifmap2(regPad3[1]),
    .ifmap3(ifbuf3[0]),
    .ifmap4(ifbuf3[1]),
    .ifmap5(ifbuf3[2]),
    .groupsum_out1(psumB31),
    .groupsum_out2(psumB32),
    .layer(Layer),
    .Process(Process),
    .wb_en(wb_enB3),
    .FinishFlag(FinishFlag),
    .FinishWB(FinishWBB3)
);

wire [18:0] psumB41;
wire [18:0] psumB42;
pe_group2 pe_group24(
    .clk(clk),
    .rst(rst),
    .weight1(weightB41),
    .weight2(weightB42),
    .weight3(weightB43),
    .weight4(weightB44),
    .weight5(weightB45),

    .ifmap1(regPad4[0]),
    .ifmap2(regPad4[1]),
    .ifmap3(ifbuf4[0]),
    .ifmap4(ifbuf4[1]),
    .ifmap5(ifbuf4[2]),
    .groupsum_out1(psumB41),
    .groupsum_out2(psumB42),
    .layer(Layer),
    .Process(Process),
    .wb_en(wb_enB4),
    .FinishFlag(FinishFlag),
    .FinishWB(FinishWBB4)
);

wire [18:0] psumB51;
wire [18:0] psumB52;
pe_group2 pe_group25(
    .clk(clk),
    .rst(rst),
    .weight1(weightB51),
    .weight2(weightB52),
    .weight3(weightB53),
    .weight4(weightB54),
    .weight5(weightB55),

    .ifmap1(regPad5[0]),
    .ifmap2(regPad5[1]),
    .ifmap3(ifbuf5[0]),
    .ifmap4(ifbuf5[1]),
    .ifmap5(ifbuf5[2]),
    .groupsum_out1(psumB51),
    .groupsum_out2(psumB52),
    .layer(Layer),
    .Process(Process),
    .wb_en(wb_enB5),
    .FinishFlag(FinishFlag),
    .FinishWB(FinishWBB5)
);



output wire we_BRAM32k;
output wire [11:0] addr_BRAM32k_1;
output wire [11:0] addr_BRAM32k_2;
output wire [63:0] din_BRAM32k_1;
output wire [63:0] din_BRAM32k_2;
input  wire [63:0] dout_BRAM32k_1;
input  wire [63:0] dout_BRAM32k_2;
 
wire [11:0] addr_BRAM32k_1_wb;
wire [11:0] addr_BRAM32k_2_wb;
assign addr_BRAM32k_1 = (Layer == `Layer1)? addr_BRAM32k_1_wb:addr_BRAM32k_1_pe;
assign addr_BRAM32k_2 = (Layer == `Layer1)? addr_BRAM32k_2_wb:addr_BRAM32k_2_pe;

writeback   WB(
    //in
    .clk(clk),
    .rst(rst),
    .sumA1(psumA11),//A
    .sumA2(psumA21),
    .sumA3(psumA31),
    .sumA4(psumA41),
    .sumA5(psumA51),
    .sumB1(psumB11),//B
    .sumB2(psumB21),
    .sumB3(psumB31),
    .sumB4(psumB41),
    .sumB5(psumB51),
    .Layer(Layer),
    .wb_en(wb_enA1),
    //out
    .we_BRAM32k(we_BRAM32k),
    .addr_BRAM32k_1(addr_BRAM32k_1_wb),
    .addr_BRAM32k_2(addr_BRAM32k_2_wb),
    .din_BRAM32k_1(din_BRAM32k_1),
    .din_BRAM32k_2(din_BRAM32k_2),
    .FinishWB(FinishWBA1)
);




endmodule