module pe_group(
    // enable updates of ifmap rows and weights
    weight_en,
    // load weight from BRAM
    weight1_in,
    weight2_in,
    weight3_in,
    weight4_in,
    weight5_in,
    // load ifmap, 256-bit continuous, but BRAM has only 64-bit wide
    ifmap_in1,
    ifmap_in2,
    ifmap_in3,
    ifmap_in4,
    groupsum_out1,
    groupsum_out2,
    clk,
    calculate_en,
    layer,
);

input                                    clk;
input                  [3:0]             layer;
input                                    weight_en;
input        signed    [7:0]             weight1_in;
input        signed    [7:0]             weight2_in;
input        signed    [7:0]             weight3_in;
input        signed    [7:0]             weight4_in;
input        signed    [7:0]             weight5_in;

input        signed    [7:0]             ifmap_in1;
input        signed    [7:0]             ifmap_in2;
input        signed    [7:0]             ifmap_in3;
input        signed    [7:0]             ifmap_in4;

reg          signed    [7:0]             storeeven1;
reg          signed    [7:0]             storeeven2;
reg          signed    [7:0]             ifmap1;
reg          signed    [7:0]             ifmap2;
reg          signed    [7:0]             ifmap3;
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


always @(posedge weight_en) begin
    if (layer == 1) begin
        weight1 <= weight1_in;
        weight2 <= weight2_in;
        weight3 <= weight3_in;
        weight4 <= weight4_in;
        weight5 <= weight5_in;
        weight6 <= 0;
    end
    
    
    if (layer == 3 || layer == 4) begin
        weight1 <= weight1_in;
        weight2 <= weight2_in;
        weight3 <= weight3_in;
        weight4 <= weight1_in;
        weight5 <= weight2_in;
        weight6 <= weight3_in;
    end
end

always @(posedge clk) begin
    if (layer == 1) begin   
        ifmap1 <= ifmap2;
        ifmap2 <= ifmap3;
        ifmap3 <= ifmap4;
        ifmap4 <= ifmap5;
        ifmap5 <= ifmap_in1;
    end
    if (layer == 3) begin
        ifmap1 <= ifmap2;
        ifmap2 <= ifmap3;
        ifmap3 <= ifmap_in1;
        ifmap4 <= ifmap5;
        ifmap5 <= ifmap6;
        ifmap6 <= ifmap_in2;
    end
    if (layer == 4) begin
        ifmap1 <= ifmap3;
        ifmap2 <= storeeven1;
        ifmap3 <= ifmap_in1;
        storeeven <= ifmap_in3;
        ifmap4 <= ifmap6;
        ifmap5 <= storeeven2;
        ifmap6 <= ifmap_in2;
        storeeven2 <= ifmap_in4;
    end
    if (calculate_en == 1) begin
        prod1 <= ifmap1 * weight1;
        prod2 <= ifmap2 * weight2;
        prod3 <= ifmap3 * weight3;
        prod4 <= ifmap4 * weight4;
        prod5 <= ifmap5 * weight5;
        prod6 <= ifmap6 * weight6;
    end
    else begin
        prod1 <= 0;
        prod2 <= 0;
        prod3 <= 0;
        prod4 <= 0;
        prod5 <= 0;
        prod6 <= 0;
    end
    half1 <= prod1 + prod2 + prod3;
    half2 <= prod4 + prod5 + prod6;

    if (layer == 1) begin
        groupsum_out1 <= half1 + half2;
    end
    if (layer == 3 || layer == 4) begin
        groupsum_out1 <= half1;
        groupsum_out2 <= half2;
    end
    

end

endmodule









