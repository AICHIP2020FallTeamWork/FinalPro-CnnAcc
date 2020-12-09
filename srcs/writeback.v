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
//------
    reg     [`Byte]  plusi1;
    reg     [`Byte]  plusi2;

//======

case(Layer)
    `Layer1: begin
        if(wb_en) begin
            //--
            plusi1 <= sum1 + sum2 + sum3;
            plusi2 <= sum4 + sum5;
            addr_BRAM32k_1   <= addr_BRAM32k_1 + 1;
            //--
            case (Zuhe)
            `Zero:begin
                Zuhe<=`First;
                we_BRAM32k              <= 0;
            end
            `First:begin
                din_BRAM32k_1[`ByteOne] <= plusi1 + plusi2;
                Zuhe<=`Second;
                we_BRAM32k              <= 0;
            end
            `Second:begin
                din_BRAM32k_1[`ByteTwo] <= plusi1 + plusi2;
                Zuhe<=`Third;
                we_BRAM32k              <= 0;

            end
            `Third:begin
                din_BRAM32k_1[`ByteThr] <= plusi1 + plusi2;
                Zuhe<=`Forth;            
            end
            `Forth:begin
                din_BRAM32k_1[`ByteFor] <= plusi1 + plusi2;
                Zuhe<=`Fifth;
                we_BRAM32k              <= 0;
            end
            `Fifth:begin
                din_BRAM32k_1[`ByteFiv] <= plusi1 + plusi2;
                Zuhe<=`Sixth;
                we_BRAM32k              <= 0;
            end
            `Sixth:begin
                din_BRAM32k_1[`ByteSix] <= plusi1 + plusi2;
                Zuhe<=`Seventh; 
                we_BRAM32k              <= 0;
            end
            `Seventh:begin
                din_BRAM32k_1[`ByteSev] <= plusi1 + plusi2;
                Zuhe<=`Eighth;
                we_BRAM32k              <= 0;
            end
            `Eighth:begin
                din_BRAM32k_1[`ByteEig] <= plusi1 + plusi2;
                Zuhe<=`Zero;
                we_BRAM32k              <= 1;
            end
            endcase
            //--
            //写完八个字之后才开始干活。
            //1个周期之后发出地址。 
            //两个周期写入使能

        end
    end
    `Layer2:
    `Layer3:
    `Layer4:
    `Layer5:
endcase

endmodule