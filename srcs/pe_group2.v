module pe_group2(
    clk,
    rst,
    weight1_in,
    weight2_in,
    weight3_in,
    weight4_in,
    weight5_in,
    ifmap_in1,
    ifmap_in2,
    ifmap_in3,
    ifmap_in4,
    ifmap_in5,
    groupsum_out1,
    groupsum_out2,
    layer,
    Process,
    we_en,
    FinishFlag,
    FinishWB
);

input                                    clk;
input                                    rst;
input                  [3:0]             layer;

input        signed    [7:0]             weight1_in;
input        signed    [7:0]             weight2_in;
input        signed    [7:0]             weight3_in;
input        signed    [7:0]             weight4_in;
input        signed    [7:0]             weight5_in;

input        signed    [7:0]             ifmap_in1;
input        signed    [7:0]             ifmap_in2;
input        signed    [7:0]             ifmap_in3;
input        signed    [7:0]             ifmap_in4;
input        signed    [7:0]             ifmap_in5;
input                  [2:0]             Process  ;

reg          signed    [7:0]             storeeven1;
reg          signed    [7:0]             storeeven2;
reg          signed    [15:0]            prod1;
reg          signed    [15:0]            prod2;
reg          signed    [15:0]            prod3;
reg          signed    [15:0]            prod4;
reg          signed    [15:0]            prod5;
reg          signed    [15:0]            prod6;
reg          signed    [17:0]            half1;
reg          signed    [17:0]            half2;

output  reg  signed    [17:0]            groupsum_out1;
output  reg  signed    [17:0]            groupsum_out2;
output  reg       wb_en;

reg  wb_en_bub2;
reg  wb_en_bub1;

always @(posedge clk or negedge rst) begin
    if (rst == `RstEnable) begin
        prod1 <= 0;
        prod2 <= 0;
        prod3 <= 0;
        prod4 <= 0;
        prod5 <= 0;
        half1 <= 0;
        half2 <= 0;
        groupsum_out1 <= 0;
        wb_en_bub2      <= 0;
        wb_en_bub1      <= 0;
        wb_en           <= 0;
    end else if ( Process == `Start or FinishFlag == 1 ) begin
        prod1 <= ifmap1 * weight1_in;
        prod2 <= ifmap2 * weight2_in;
        prod3 <= ifmap3 * weight3_in;
        prod4 <= ifmap4 * weight4_in;
        prod5 <= ifmap5 * weight5_in;
        wb_en_bub2 <= 1; //冒泡

        half1 <= prod1 + prod2 + prod3;
        half2 <= prod4 + prod5 + prod6;
        wb_en_bub1 <= wb_en_bub2; //冒泡
        wb_en           <=  wb_en_bub1; //冒泡
    if (layer == 1) begin
        groupsum_out1   <=  half1 + half2;
    end
    end else  begin
        prod1 <= 0;
        prod2 <= 0;
        prod3 <= 0;
        prod4 <= 0;
        prod5 <= 0;
        half1 <= 0;
        half2 <= 0;
        groupsum_out1 <= 0;
        wb_en_bub2      <= 0;
        wb_en_bub1      <= 0;
        wb_en           <= 0;
    end
end


//--------------------------------
reg        FinishWB_Bub2 ;
reg        FinishWB_Bub1 ;
 output    reg        FinishWB      ;
always @(posedge clk or negedge wb_en or negedge rst) begin 
//当wb_en出现下降沿，意味着WB中的运算结束，
//WriteBack流水线仍然在工作,原先的使能信号如果立即置零则会终止流水，
//因此，在wb_en出现下降沿的时候给出一个控制信号
//负责在下一级流水完成之后终止流水。
    if(rst == `RstEnable) begin
        FinishWB_Bub2 <= 0;
        FinishWB_Bub1 <= 0;
        FinishWB      <= 0;
    end else if(Process[0] == 1)begin
        FinishWB <= 1;
    end else begin
        FinishWB_Bub2 <= 0;
        FinishWB_Bub1 <= FinishWB_Bub2;
        FinishWB      <= FinishWB_Bub1; //先使用这个三拍的打拍，后期可以根据层数更改。
    end
end


endmodule