`define RstEnable 1'b0
`define RstDisable 1'b1

`define Layer1 4'b0001
`define Layer2 4'd2
`define Layer3 4'd3
`define Layer4 4'd4
`define Layer5 4'd5

`define Idle    3'b110
`define Init     3'b000
`define Start    3'b001
`define CalPool  3'b010


`define Byte 7:0

`define ByteOne 7:0
`define ByteTwo 15:8
`define ByteThr 23:16
`define ByteFor 32:24
`define ByteFiv 39:32
`define ByteSix 47:40
`define ByteSev 55:48
`define ByteEig 63:56
`define ByteNin 72:64

`define Zero  4'd0 
`define First  4'd1
`define Second  4'd2
`define Third  4'd3
`define Forth  4'd4 
`define Fifth  4'd5 
`define Sixth  4'd6 
`define Seventh  4'd7 
`define Eighth  4'd8 
`define Ninth  4'd9 
`define Tenth  4'd10 

`define PosiFull 8'b01111111
`define NegFull  8'b10000000
`define PosiFull15 15'b0000_0000_1111_111
`define NegFull15  15'b1111_1111_0000_000