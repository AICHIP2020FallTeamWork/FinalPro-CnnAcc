module agu(
    clk,
    addr_in0,
    addr_in1,
    addr_in2,
    addr_in3,
    addr_in4,
    addr_in5,
    addr_in6,
    addr_in7,  
    addr_wt
);

input                           clk;

parameter      [7:0]            K;
parameter      [7:0]            Wcha;   // number of channel in weight and input
parameter      [7:0]            Wrow;   // number of rows in weight
parameter      [7:0]            Wcol;   // number of columns in weight
parameter      [7:0]            Row;    // number of rows in ifmap
parameter      [7:0]            Col;    // number of columns in ifmap
parameter      [7:0]            Bitwidth;   // address length for one bit
parameter      [7:0]            Sample_area;    // address area for one image sample


reg            [7:0]            addrk;  // the kernel working on
reg            [7:0]            addrwcha;   // the channel working on
reg            [7:0]            addrrow;    // the row working on
reg            [7:0]            waitcol;    // we need to wait for PE dealing with columns
reg            [3:0]            i;

output  reg    [19:0]           addr_in0;
output  reg    [19:0]           addr_in1;
output  reg    [19:0]           addr_in2;
output  reg    [19:0]           addr_in3;
output  reg    [19:0]           addr_in4;     
output  reg    [19:0]           addr_in5;
output  reg    [19:0]           addr_in6;
output  reg    [19:0]           addr_in7;
// each denote the address of a ifmap row needed by a PE set
output  reg    [15:0]           addr_wt;
// the address of the weight channel needed by PE sets (shared by all PE sets)



initial begin
    addrk = 0;
    addrwcha = 0;
    addrrow = 0;
end

always @(posedge clk) begin
    if (waitcol < Col)
        waitcol <= waitcol + 1;
    
    else begin
        if (addrrow < Row)
            addrrow <= addrrow + 1;
        else begin
            if (addrwcha < Wcha)
                addrwcha <= addrwcha + 1;
            else begin
                addrwcha = 1;
                addrk <= addrk + 1;
            end
        end
    end

end

always @* begin
    addr_in0 = Row * Col * Wcha * addrk + Row * Col * addrwcha + Col * addrrow;
    addr_in1 = 1 * Sample_area + Row * Col * Wcha * addrk + Row * Col * addrwcha + Col * addrrow;
    addr_in2 = 2 * Sample_area + Row * Col * Wcha * addrk + Row * Col * addrwcha + Col * addrrow;
    addr_in3 = 3 * Sample_area + Row * Col * Wcha * addrk + Row * Col * addrwcha + Col * addrrow;
    addr_in4 = 4 * Sample_area + Row * Col * Wcha * addrk + Row * Col * addrwcha + Col * addrrow;
    addr_in5 = 5 * Sample_area + Row * Col * Wcha * addrk + Row * Col * addrwcha + Col * addrrow;
    addr_in6 = 6 * Sample_area + Row * Col * Wcha * addrk + Row * Col * addrwcha + Col * addrrow;
    addr_in7 = 7 * Sample_area + Row * Col * Wcha * addrk + Row * Col * addrwcha + Col * addrrow;
    addr_wt = Wrow * Wcol * Wcha * addrk + Wrow * Wcol * addrwcha;
end

endmodule

