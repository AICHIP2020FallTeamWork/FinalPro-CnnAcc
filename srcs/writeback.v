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
    sumA6,
    sumB1,
    sumB2,
    sumB3,
    sumB4,
    sumB5,
    sumB6,
    sumA1_,
    sumA2_,
    sumA3_,
    sumA4_,
    sumA5_,
    sumA6_,
    sumB1_,
    sumB2_,
    sumB3_,
    sumB4_,
    sumB5_,
    sumB6_,
    // State,
    Layer,
    wb_en,
    

    we_BRAM32k,
    addr_BRAM32k_1,
    addr_BRAM32k_2,
    din_BRAM32k_1,
    din_BRAM32k_2,
    FinishWB,
    we_CB_i
    );
//-----------
    input   clk;
    input   rst;
    input   we_CB_i;
    input signed   [18:0] sumA1;
    input signed   [18:0] sumA2;
    input signed   [18:0] sumA3;
    input signed   [18:0] sumA4;
    input signed   [18:0] sumA5;
    input signed   [18:0] sumA6;
    input signed   [18:0] sumB1;
    input signed   [18:0] sumB2;
    input signed   [18:0] sumB3;
    input signed   [18:0] sumB4;
    input signed   [18:0] sumB5;
    input signed   [18:0] sumB6;
    input signed   [18:0] sumA1_;
    input signed   [18:0] sumA2_;
    input signed   [18:0] sumA3_;
    input signed   [18:0] sumA4_;
    input signed   [18:0] sumA5_;
    input signed   [18:0] sumA6_;
    input signed   [18:0] sumB1_;
    input signed   [18:0] sumB2_;
    input signed   [18:0] sumB3_;
    input signed   [18:0] sumB4_;
    input signed   [18:0] sumB5_;
    input signed   [18:0] sumB6_;
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
    reg  signed   [21:0]      plusi1; // kernels
    reg  signed   [21:0]      plusi2; // kernels
    reg  signed   [21:0]      plusi3; // kernels
    reg  signed   [21:0]      plusi4; // kernels
    reg  signed   [21:0]      plusi5; // kernels
    reg  signed   [21:0]      plusi6; // kernels
    reg  signed   [21:0]      plusi7; // kernels
    reg  signed   [21:0]      plusi8; // kernels
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
        we_BRAM32k              <= 0;
        // for layer5
        we_BRAMtemp <= 0;
        addr_BRAMtemp_1 <= 0;

    end else begin
        case(Layer) 
            `Layer1: begin
                 if(wb_en == 1 || FinishWB == 1) begin
                    if(wb_en == 0)begin
                        addr_BRAM32k_1 <= addr_BRAM32k_1 + 128;
                        addr_BRAM32k_2 <= addr_BRAM32k_2 + 128;
                    end 
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
                            if(Counter != 1) begin
                                we_BRAM32k              <= 1;
                            end else begin
                                we_BRAM32k              <= 0;                                
                            end
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

                end else  begin
                plusiA <= 0;
                plusiB <= 0;
                din_1 <= 0;
                din_2 <= 0;
                Zuhe <=  `Zero;
                end
            end
//             `Layer3:
            `Layer4: begin
                if(doneflag_CB == 1) begin
                    we_BRAMtemp <= 1;
                    din_BRAMtemp_1 <= dout_CB;
                    addr_BRAMtemp_1 <= addr_BRAMtemp_1 + 1;
                end else begin
                    we_BRAMtemp <= 0;
                    din_BRAMtemp_1 <= 64'bz;
                end
            end
            `Layer5: begin
                if(doneflag_CB == 1) begin
                    we_BRAMtemp <= 1;
                    din_BRAMtemp_1 <= dout_CB;
                    addr_BRAMtemp_1 <= addr_BRAMtemp_1 + 1;
                end else begin
                    we_BRAMtemp <= 0;
                    din_BRAMtemp_1 <= 64'bz;
                end
            end
        endcase
    end
end


reg [`stateLength] StateCB;

always @ (posedge clk or negedge rst) begin // this part is for controlling channelBuf.
    if(!rst) begin
        // below codes are added for layer5
        plusi1 <=0;
        plusi2 <=0;
        plusi3 <=0;
        plusi4 <=0;
        plusi5 <=0;
        plusi6 <=0;
        plusi7 <=0;
        plusi8 <=0;
        // wdata_CB8 <= 0;
        // wdata_CB1 <= 0;
        // wdata_CB2 <= 0;
        // wdata_CB3 <= 0;
        // wdata_CB4 <= 0;
        // wdata_CB5 <= 0;
        // wdata_CB6 <= 0;
        // wdata_CB7 <= 0;
        // waddr_CB <= 0;
        we_CB <= 0; //always enable;
        StateCB <= `First;
    end else begin
        case(Layer)
            `Layer1:begin
                we_CB <= 0;
            end
            `Layer5 ||`Layer4  :begin
                if(wb_en) begin
                    if(we_CB_i) begin
                        case(StateCB)
                            `First:begin
                                we_CB <= 1;
                                wdata_CB1  <= sumA1 + sumA2 + sumA3;
                                wdata_CB2  <= sumA1_ + sumA2_ + sumA3_;
                                wdata_CB3  <= sumA4 + sumA5 + sumA6;
                                wdata_CB4  <= sumA4_ + sumA5_ + sumA6_;
                                wdata_CB5  <= sumB1 + sumB2 + sumB3;
                                wdata_CB6  <= sumB1_ + sumB2_ + sumB3_;
                                wdata_CB7  <= sumB4 + sumB5 + sumB6;
                                wdata_CB8  <= sumB4_ + sumB5_ + sumB6_;
                                waddr_CB <= 0;
                                StateCB <= `Second ;
                            end
                            `Second:begin
                                we_CB <= 1;
                                wdata_CB1  <= sumA1 + sumA2 + sumA3;
                                wdata_CB2  <= sumA1_ + sumA2_ + sumA3_;
                                wdata_CB3  <= sumA4 + sumA5 + sumA6;
                                wdata_CB4  <= sumA4_ + sumA5_ + sumA6_;
                                wdata_CB5  <= sumB1 + sumB2 + sumB3;
                                wdata_CB6  <= sumB1_ + sumB2_ + sumB3_;
                                wdata_CB7  <= sumB4 + sumB5 + sumB6;
                                wdata_CB8  <= sumB4_ + sumB5_ + sumB6_;
                                waddr_CB   <= waddr_CB + 1; 
                            end
                        endcase
                    end
                end
            end
        endcase
    end
end



reg [5:0]   waddr_CB;
reg signed [21:0] wdata_CB1;
reg signed [21:0] wdata_CB2;
reg signed [21:0] wdata_CB3;
reg signed [21:0] wdata_CB4;
reg signed [21:0] wdata_CB5;
reg signed [21:0] wdata_CB6;
reg signed [21:0] wdata_CB7;
reg signed [21:0] wdata_CB8;
reg we_CB;
wire doneflag_CB;
wire [63:0] dout_CB;
channelBuf CB(
    .clk(clk),
    .we(we_CB),
    .rst(rst),
    .waddr(waddr_CB),
    .wdata1(wdata_CB1),
    .wdata2(wdata_CB2),
    .wdata3(wdata_CB3),
    .wdata4(wdata_CB4),
    .wdata5(wdata_CB5),
    .wdata6(wdata_CB6),
    .wdata7(wdata_CB7),
    .wdata8(wdata_CB8),
    .done(doneflag_CB),
    .dout(dout_CB)
);
//--this is the temperoray bram for debug in layer 5
//--when debug is over it will be abandoned
    reg we_BRAMtemp;
    reg [8:0] addr_BRAMtemp_1;
    reg [8:0] addr_BRAMtemp_2;
    reg  [63:0] din_BRAMtemp_1;
    reg   [63:0] din_BRAMtemp_2;
    wire [63:0] dout_BRAMtemp_1;
    wire [63:0] dout_BRAMtemp_2;
    BRAM4k bramtemp(
        .addra(addr_BRAMtemp_1),
        .addrb(addr_BRAMtemp_2),
        .clka(clk),
        .clkb(clk),
        .dina(din_BRAMtemp_1),
        .dinb(din_BRAMtemp_2),
        .douta(dout_BRAMtemp_1),
        .doutb(dout_BRAMtemp_2),
        .wea(we_BRAMtemp),
        .web(we_BRAMtemp)
    );



endmodule