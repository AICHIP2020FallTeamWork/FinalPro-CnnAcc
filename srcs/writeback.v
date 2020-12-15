//pe--pegroups-writeback
//this module is for the sum calculation and write back to the BRAM
`include "defines.v"

module writeback(
    clk,
    rst,
    sumA1,
    sumA2,
    sumA3,
    sumA4,
    sumA5,
    sumB1,
    sumB2,
    sumB3,
    sumB4,
    sumB5,
    // State,
    Layer,
    wb_en,
    

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
    input   [18:0] sumA1;
    input   [18:0] sumA2;
    input   [18:0] sumA3;
    input   [18:0] sumA4;
    input   [18:0] sumA5;
    input   [18:0] sumB1;
    input   [18:0] sumB2;
    input   [18:0] sumB3;
    input   [18:0] sumB4;
    input   [18:0] sumB5;
    input   [3:0]       Layer;
    // input   [4:0]       State;
    input wb_en;
    input FinishWB;
    output      reg       we_BRAM32k;
    output      reg       [11:0] addr_BRAM32k_1;
    output      reg       [11:0] addr_BRAM32k_2;
    output      reg       [63:0] din_BRAM32k_1;
    output      reg       [63:0] din_BRAM32k_2;
          reg       [63:0] din_1;
          reg       [63:0] din_2;
//------
    reg     [14:0]  plusiA;
    reg     [14:0]  plusiB;
    reg     [3:0]   Zuhe;
    reg     [3:0]   Counter;
//======
//======
always @(posedge clk or negedge rst) begin
    if (rst == `RstEnable) begin
        plusiA <= 0;
        plusiB <= 0;
        din_1 <= 0;
        din_2 <= 0;
        Zuhe <=  `Zero; 
        Counter <= 1;
        addr_BRAM32k_1   <= 0;
        addr_BRAM32k_2   <= 128;
    end else begin
        case(Layer) 
            `Layer1: begin
                 if(wb_en == 1 || FinishWB == 1) begin
                    plusiA <= ($signed(sumA1) + $signed(sumA2) + $signed(sumA3) + $signed(sumA4) + $signed(sumA5))>>>9;
                    plusiB <= ($signed(sumB1) + $signed(sumB2) + $signed(sumB3) + $signed(sumB4) + $signed(sumB5))>>>9;
                    case(Zuhe)
                        `Zero:begin
                            Zuhe<=`First;
                            we_BRAM32k              <= 0;
                        end
                        `First:begin
                            din_BRAM32k_1 <= din_1;
                            din_BRAM32k_2 <= din_2;
                            if($signed(plusiA)>$signed(`PosiFull15) ) begin
                                din_1[`ByteEig] <= `PosiFull;
                            end else if($signed(plusiA)<$signed(`NegFull15))
                                din_1[`ByteEig] <= `NegFull;
                            else begin
                                din_1[`ByteEig] <= plusiA;
                            end
                            if($signed(plusiB)>$signed(`PosiFull15) ) begin
                                din_2[`ByteEig] <= `PosiFull;
                            end else if($signed(plusiB)<$signed(`NegFull15))
                                din_2[`ByteEig] <= `NegFull;
                            else begin
                                din_2[`ByteEig] <= plusiB;
                            end
                            Zuhe    <=  `Second;
                            we_BRAM32k              <= 1;
                            end
                        `Second:begin
                            if($signed(plusiA)>$signed(`PosiFull15) ) begin
                                din_1[`ByteSev] <= `PosiFull;
                            end else if($signed(plusiA)<$signed(`NegFull15))
                                din_1[`ByteSev] <= `NegFull;
                            else begin
                                din_1[`ByteSev] <= plusiA;
                            end
                            if($signed(plusiB)>$signed(`PosiFull15) ) begin
                                din_2[`ByteSev] <= `PosiFull;
                            end else if($signed(plusiB)<$signed(`NegFull15))
                                din_2[`ByteSev] <= `NegFull;
                            else begin
                                din_2[`ByteSev] <= plusiB;
                            end                            
                            Zuhe<=`Third;
                            we_BRAM32k              <= 0;
                            end
                        `Third:begin
                            if($signed(plusiA)>$signed(`PosiFull15) ) begin
                                din_1[`ByteSix] <= `PosiFull;
                            end else if($signed(plusiA)<$signed(`NegFull15))
                                din_1[`ByteSix] <= `NegFull;
                            else begin
                                din_1[`ByteSix] <= plusiA;
                            end
                            if($signed(plusiB)>$signed(`PosiFull15) ) begin
                                din_2[`ByteSix] <= `PosiFull;
                            end else if($signed(plusiB)<$signed(`NegFull15))
                                din_2[`ByteSix] <= `NegFull;
                            else begin
                                din_2[`ByteSix] <= plusiB;
                            end    
                            Zuhe<=`Forth;            
                        end
                        `Forth: begin
                            if($signed(plusiA)>$signed(`PosiFull15) ) begin
                                din_1[`ByteFiv] <= `PosiFull;
                            end else if($signed(plusiA)<$signed(`NegFull15))
                                din_1[`ByteFiv] <= `NegFull;
                            else begin
                                din_1[`ByteFiv] <= plusiA;
                            end
                            if($signed(plusiB)>$signed(`PosiFull15) ) begin
                                din_2[`ByteFiv] <= `PosiFull;
                            end else if($signed(plusiB)<$signed(`NegFull15))
                                din_2[`ByteFiv] <= `NegFull;
                            else begin
                                din_2[`ByteFiv] <= plusiB;
                            end
                            Zuhe<=`Fifth;
                            we_BRAM32k              <= 0;
                        end
                        `Fifth:begin
                            if($signed(plusiA)>$signed(`PosiFull15) ) begin
                                din_1[`ByteFor] <= `PosiFull;
                            end else if($signed(plusiA)<$signed(`NegFull15))
                                din_1[`ByteFor] <= `NegFull;
                            else begin
                                din_1[`ByteFor] <= plusiA;
                            end
                            if($signed(plusiB)>$signed(`PosiFull15) ) begin
                                din_2[`ByteFor] <= `PosiFull;
                            end else if($signed(plusiB)<$signed(`NegFull15))
                                din_2[`ByteFor] <= `NegFull;
                            else begin
                                din_2[`ByteFor] <= plusiB;
                            end                            
                            Zuhe<=`Sixth;
                            we_BRAM32k              <= 0;
                        end
                        `Sixth:begin
                            if($signed(plusiA)>$signed(`PosiFull15) ) begin
                                din_1[`ByteThr] <= `PosiFull;
                            end else if($signed(plusiA)<$signed(`NegFull15))
                                din_1[`ByteThr] <= `NegFull;
                            else begin
                                din_1[`ByteThr] <= plusiA;
                            end
                            if($signed(plusiB)>$signed(`PosiFull15) ) begin
                                din_2[`ByteThr] <= `PosiFull;
                            end else if($signed(plusiB)<$signed(`NegFull15))
                                din_2[`ByteThr] <= `NegFull;
                            else begin
                                din_2[`ByteThr] <= plusiB;
                            end                            
                            Zuhe<=`Seventh; 
                            we_BRAM32k              <= 0;
                        end
                        `Seventh:begin
                            if($signed(plusiA)>$signed(`PosiFull15) ) begin
                                din_1[`ByteTwo] <= `PosiFull;
                            end else if($signed(plusiA)<$signed(`NegFull15))
                                din_1[`ByteTwo] <= `NegFull;
                            else begin
                                din_1[`ByteTwo] <= plusiA;
                            end
                            if($signed(plusiB)>$signed(`PosiFull15) ) begin
                                din_2[`ByteTwo] <= `PosiFull;
                            end else if($signed(plusiB)<$signed(`NegFull15))
                                din_2[`ByteTwo] <= `NegFull;
                            else begin
                                din_2[`ByteTwo] <= plusiB;
                            end                            
                            Zuhe<=`Eighth;
                            we_BRAM32k              <= 0;
                            addr_BRAM32k_1   <= addr_BRAM32k_1 + 1;
                            addr_BRAM32k_2   <= addr_BRAM32k_2 + 1;
                        end
                        `Eighth:begin
                            if($signed(plusiA)>$signed(`PosiFull15) ) begin
                                din_1[`ByteOne] <= `PosiFull;
                            end else if($signed(plusiA)<$signed(`NegFull15))
                                din_1[`ByteOne] <= `NegFull;
                            else begin
                                din_1[`ByteOne] <= plusiA;
                            end
                            if($signed(plusiB)>$signed(`PosiFull15) ) begin
                                din_2[`ByteOne] <= `PosiFull;
                            end else if($signed(plusiB)<$signed(`NegFull15))
                                din_2[`ByteOne] <= `NegFull;
                            else begin
                                din_2[`ByteOne] <= plusiB;
                            end                            
                            if(Counter < 4) begin
                                Zuhe<=`First;
                                Counter = Counter + 1;
                            end else begin
                                Zuhe<=`Ninth;
                                Counter <= 1;
                            end
                            we_BRAM32k              <= 0;
                        end
                        `Ninth:begin 
                            din_BRAM32k_1 <= din_1;
                            din_BRAM32k_2 <= din_2;
                            Zuhe<=`Tenth;
                            we_BRAM32k              <= 1;
                        end
                        `Tenth:begin 
                            Zuhe<=`First;
                            we_BRAM32k              <= 0;
                        end
                    endcase

                end else begin
                plusiA <= 0;
                plusiB <= 0;
                din_1 <= 0;
                din_2 <= 0;
                Zuhe <=  `Zero;
                end
            end
//             `Layer3:
//             `Layer4:
//             `Layer5:
        endcase
    end
end
endmodule