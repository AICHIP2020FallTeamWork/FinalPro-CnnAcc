//pe--pegroups-writeback
//this module is for the sum calculation and write back to the BRAM
`include "defines.v"
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
    din_BRAM32k_2,
    FinishWB
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
    output      reg       [11:0] addr_BRAM32k_2;
    output      reg       [63:0] din_BRAM32k_1;
    output      reg       [63:0] din_BRAM32k_2;
          reg       [63:0] din_1;
          reg       [63:0] din_2;
//------
    reg     [`Byte]  plusi1;
    reg     [`Byte]  plusi2;

//======
always @(posedge clk or negedge rst) begin
    if (rst == `RstEnable) begin
    end
    else begin
        case(Layer)
            `Layer1: begin
                if(wb_en == 0 && FinishFlag == 0) begin

                end else if(wb_en == 1 || FinishFlag == 1) begin
                    //--
                    plusiA1 <= sumA1 + sumA2 + sumA3;
                    plusiA2 <= sumA4 + sumA5;
                    plusiB1 <= sumB1 + sumB2 + sumB3;
                    plusiB2 <= sumB4 + sumB5;
                    //--
                    case (Zuhe)
                    `First:begin
                        din_BRAM32k_1 <= din_1;
                        din_BRAM32k_2 <= din_2;
                        din_1[`ByteOne] <= plusiA1 + plusiA2;
                        din_2[`ByteOne] <= plusiB1 + plusiB2;
                        Zuhe<=`Second;
                        we_BRAM32k              <= 1;
                    end
                    `Second:begin
                        din_1[`ByteTwo] <= plusiA1 + plusiA2;
                        din_2[`ByteTwo] <= plusiB1 + plusiB2;
                        Zuhe<=`Third;
                        we_BRAM32k              <= 0;

                    end
                    `Third:begin
                        din_1[`ByteThr] <= plusiA1 + plusiA2;
                        din_2[`ByteThr] <= plusiB1 + plusiB2;
                        Zuhe<=`Forth;            
                    end
                    `Forth:begin
                        din_1[`ByteFor] <= plusiA1 + plusiA2;
                        din_2[`ByteFor] <= plusiB1 + plusiB2;
                        Zuhe<=`Fifth;
                        we_BRAM32k              <= 0;
                    end
                    `Fifth:begin
                        din_1[`ByteFiv] <= plusiA1 + plusiA2;
                        din_2[`ByteFiv] <= plusiB1 + plusiB2;
                        Zuhe<=`Sixth;
                        we_BRAM32k              <= 0;
                    end
                    `Sixth:begin
                        din_1[`ByteSix] <= plusiA1 + plusiA2;
                        din_2[`ByteSix] <= plusiB1 + plusiB2;
                        Zuhe<=`Seventh; 
                        we_BRAM32k              <= 0;
                    end
                    `Seventh:begin
                        din_1[`ByteSev] <= plusiA1 + plusiA2;
                        din_2[`ByteSev] <= plusiB1 + plusiB2;
                        Zuhe<=`Eighth;
                        we_BRAM32k              <= 0;
                        addr_BRAM32k_1   <= addr_BRAM32k_1 + 1;
                        addr_BRAM32k_2   <= addr_BRAM32k_2 + 1;
                    end
                    `Eighth:begin
                        din_1[`ByteEig] <= plusiA1 + plusiA2;
                        din_2[`ByteEig] <= plusiB1 + plusiB2;
                        if(Counter < 4) begin
                            Zuhe<=`First;
                            Counter = Counter + 1;
                        end else begin
                            Zuhe<=`Ninth;
                            Counter <= 1;
                        end
                        we_BRAM32k              <= 0;
                    end
                    `Ninth:begin //为数据流打空拍（trashdata）
                        din_BRAM32k_1 <= din_1;
                        din_BRAM32k_2 <= din_2;
                        Zuhe<=`Zero;
                        we_BRAM32k              <= 1;
                    end
                    `Tenth:begin //为数据流打空拍（trashdata）
                        Zuhe<=`Zero;
                        we_BRAM32k              <= 0;
                    end
                    endcase
                    //--
                    //写完八个字之后才开始干活。
                    //1个周期之后发出地址。 
                    //两个周期写入使能

                end
            end
            // `Layer2:
            // `Layer3:
            // `Layer4:
            // `Layer5:
        endcase
end
end
endmodule