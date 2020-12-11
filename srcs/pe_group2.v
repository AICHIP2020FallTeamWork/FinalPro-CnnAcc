module pe_group2(
    clk,
    rst,
    weight1,
    weight2,
    weight3,
    weight4,
    weight5,
    ifmap1,
    ifmap2,
    ifmap3,
    ifmap4,
    ifmap5,
    groupsum_out1,
    groupsum_out2,
    layer,
    Process,
    wb_en,
    FinishFlag,
    FinishWB
);

input                                    clk;
input                                    rst;
input                  [3:0]             layer;

input        signed    [7:0]             weight1;
input        signed    [7:0]             weight2;
input        signed    [7:0]             weight3;
input        signed    [7:0]             weight4;
input        signed    [7:0]             weight5;

input        signed    [7:0]             ifmap1;
input        signed    [7:0]             ifmap2;
input        signed    [7:0]             ifmap3;
input        signed    [7:0]             ifmap4;
input        signed    [7:0]             ifmap5;
input                  [2:0]             Process  ;

input                            FinishFlag;

reg          signed    [7:0]             storeeven1;
reg          signed    [7:0]             storeeven2;
reg          signed    [15:0]            prod1;
reg          signed    [15:0]            prod2;
reg          signed    [15:0]            prod3;
reg          signed    [15:0]            prod4;
reg          signed    [15:0]            prod5;
reg          signed    [15:0]            prod6;
reg          signed    [10:0]            half1; //[10:0]是为了量化
reg          signed    [10:0]            half2;

output  reg  signed    [10:0]            groupsum_out1;
output  reg  signed    [10:0]            groupsum_out2;
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
    end else if ( Process == `Start  ||  FinishFlag == 1 ) begin
        prod1 <= $signed(ifmap1) * $signed(weight1);
        prod2 <= $signed(ifmap2) * $signed(weight2);
        prod3 <= $signed(ifmap3) * $signed(weight3);
        prod4 <= $signed(ifmap4) * $signed(weight4);
        prod5 <= $signed(ifmap5) * $signed(weight5);
        wb_en_bub2 <= 1; //冒泡

        half1 <= ($signed(prod1) + $signed(prod2) + $signed(prod3))>>>7;
        half2 <= ($signed(prod4) + $signed(prod5) + $signed(prod6))>>>7;
        wb_en_bub1 <= wb_en_bub2; //冒泡
        wb_en           <=  wb_en_bub1; //冒泡
    if (layer == 1) begin
        groupsum_out1   <=  ($signed(half1) + $signed(half2))>>>1;
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
always @(posedge clk or negedge rst) begin 
//当wb_en出现下降沿，意味着WB中的运算结束，
//WriteBack流水线仍然在工作,原先的使能信号如果立即置零则会终止流水，
//因此，在wb_en出现下降沿的时候给出一个控制信号
//负责在下一级流水完成之后终止流水。
    if(rst == `RstEnable) begin
        FinishWB_Bub2 <= 0;
        FinishWB_Bub1 <= 0;
        FinishWB      <= 0;
    end else if(wb_en == 1)begin
        FinishWB <= 1;
    end else begin
        FinishWB_Bub2 <= 0;
        FinishWB_Bub1 <= FinishWB_Bub2;
        FinishWB      <= FinishWB_Bub1; //先使用这个三拍的打拍，后期可以根据层数更改。
    end
end


endmodule