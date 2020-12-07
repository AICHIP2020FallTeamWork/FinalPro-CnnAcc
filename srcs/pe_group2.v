module pe_group(
    rst,
    weight_en,
    weight1_in,
    weight2_in,
    weight3_in,
    weight4_in,
    weight5_in,
    weight6_in,
    ifmap_in1,
    ifmap_in2,
    ifmap_in3,
    ifmap_in4,
    ifmap_in5,
    groupsum_out1,
    groupsum_out2,
    clk,
    calculate_en,
    layer,
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


always @(posedge clk) begin
    if (calculate_en == 1 ) begin
        prod1 <= ifmap1 * weight1_in;
        prod2 <= ifmap2 * weight2_in;
        prod3 <= ifmap3 * weight3_in;
        prod4 <= ifmap4 * weight4_in;
        prod5 <= ifmap5 * weight5_in;

        half1 <= prod1 + prod2 + prod3;
        half2 <= prod4 + prod5 + prod6;

    if (layer == 1) begin
        groupsum_out1 <= half1 + half2;
    end
    end
end
endmodule