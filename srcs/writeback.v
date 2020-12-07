//pe--pegroups-writeback
//this module is for the sum calculation and write back to the BRAM
module writeback(
    clk,
    rst,
    sum1,
    sum2,
    sum3,
    sum4,
    sum5,
    State,

    we_BRAM32k,
    addr_BRAM32k_1,
    addr_BRAM32k_2,
    din_BRAM32k_1,
    din_BRAM32k_2
    );
//-----------
    input   clk;
    input   rst;
    input   [`Byte]  sum1;
    input   [`Byte]  sum2;
    input   [`Byte]  sum3;
    input   [`Byte]  sum4;
    input   [`Byte]  sum5;
    input   [3:0]       Layer;
    output      reg       we_BRAM32k;
    output      reg       [11:0] addr_BRAM32k_1;
    output      reg        [11:0] addr_BRAM32k_2;
    output      reg       [63:0] din_BRAM32k_1;
    output      reg         [63:0] din_BRAM32k_2;

case(Layer)
    `Layer1:
    `Layer2:
    `Layer3:
    `Layer4:
    `Layer5:
endcase

endmodule