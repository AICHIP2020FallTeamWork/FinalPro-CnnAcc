module pe_group2(
    clk,
    rst,
    weight1,
    weight2,
    weight3,
    weight4,
    weight5,
    weight6,
    ifmap1,
    ifmap2,
    ifmap3,
    ifmap4,
    ifmap5,
    ifmap6,
    groupsum_out1,
    groupsum_out2,
    layer,
    Process,
    wb_en,
    FinishFlag,
    FinishWB,

);

input                                    clk;
input                                    rst;

input                  [3:0]             layer;

input        signed    [7:0]             weight1;
input        signed    [7:0]             weight2;
input        signed    [7:0]             weight3;
input        signed    [7:0]             weight4;
input        signed    [7:0]             weight5;
input        signed    [7:0]             weight6;

input        signed    [7:0]             ifmap1;
input        signed    [7:0]             ifmap2;
input        signed    [7:0]             ifmap3;
input        signed    [7:0]             ifmap4;
input        signed    [7:0]             ifmap5;
input        signed    [7:0]             ifmap6;
input                  [`prolenth]             Process  ;

input                            FinishFlag;

reg          signed    [7:0]             storeeven1;
reg          signed    [7:0]             storeeven2;
reg          signed    [14:0]            prod1;
reg          signed    [14:0]            prod2;
reg          signed    [14:0]            prod3;
reg          signed    [14:0]            prod4;
reg          signed    [14:0]            prod5;
reg          signed    [14:0]            prod6;
reg          signed    [17:0]            half1; //[10:0]��?������
reg          signed    [17:0]            half2;

output  reg  signed    [18:0]            groupsum_out1;
output  reg  signed    [18:0]            groupsum_out2;
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
        prod6 <= 0;
        half1 <= 0;
        half2 <= 0;
        groupsum_out1 <= 0;
        groupsum_out2 <= 0;
        wb_en_bub2      <= 0;
        wb_en_bub1      <= 0;
        wb_en           <= 0;

    end else if ( (Process != `Idle && Process != `Init) ||  FinishFlag == 1 ) begin

        prod1 <= $signed(ifmap1) * $signed(weight1);
        prod2 <= $signed(ifmap2) * $signed(weight2);
        prod3 <= $signed(ifmap3) * $signed(weight3);
        prod4 <= $signed(ifmap4) * $signed(weight4);
        prod5 <= $signed(ifmap5) * $signed(weight5);
        prod6 <= $signed(ifmap6) * $signed(weight6);
        wb_en_bub2 <= 1; //�


        half1 <= ($signed(prod1) + $signed(prod2) + $signed(prod3));
        half2 <= ($signed(prod4) + $signed(prod5) + $signed(prod6));
        wb_en_bub1 <= wb_en_bub2; //�

        wb_en           <=  wb_en_bub1; //�


        case (layer)
        `Layer1: begin
            groupsum_out1   <=  ($signed(half1) + $signed(half2));
        end 
        `Layer5: begin
            groupsum_out1   <=  $signed(half1);
            groupsum_out2   <=  $signed(half2);
        end 
        endcase;

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

reg        FinishWB_Bub2 ;
reg        FinishWB_Bub1 ;
 output    reg        FinishWB      ;
always @(posedge clk or negedge rst) begin 
    if(rst == `RstEnable) begin
        FinishWB      <= 0;
    end else if(rst == `RstDisable && wb_en == 1)begin
        FinishWB      <= 1;
    end else begin
        FinishWB      <= 0; 
    end
end
//--------------------------------
// reg        FinishWB_Bub2 ;
// reg        FinishWB_Bub1 ;
//  output    reg        FinishWB      ;
// always @(posedge clk or negedge rst) begin 
//     if(rst == `RstEnable) begin
//         FinishWB_Bub2 <= 0;
//         FinishWB_Bub1 <= 0;
//         FinishWB      <= 0;
//     end else if(rst == `RstDisable && wb_en == 1)begin
//         FinishWB <= 1;
//         FinishWB_Bub1 <= 1;
//         FinishWB_Bub2 <= 1;
//     end else begin
//         FinishWB_Bub2 <= 0;
//         FinishWB_Bub1 <= FinishWB_Bub2;
//         FinishWB      <= FinishWB_Bub1; //��?��������??��?����?��?��?������?�?
//     end
// end


endmodule