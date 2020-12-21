`define RstEnable 1'b0
`define RstDisable 1'b1

`define ZeroBtye 8'b00000000
`define Layer1 4'b0001
`define Layer2 4'd2
`define Layer3 4'd3
`define Layer4 4'd4
`define Layer5 4'd5

`define prolenth   3:0
`define Idle       4'b1110
`define Init       4'b0000
`define Start      4'b0111
`define upHalf     4'b0110
`define loHalf     4'b1000
`define Stop       4'b1100
`define InitUp     4'b0100
`define InitLo     4'b0010




`define Byte 7:0

`define ByteOne 7:0
`define ByteTwo 15:8
`define ByteThr 23:16
`define ByteFor 31:24
`define ByteFiv 39:32
`define ByteSix 47:40
`define ByteSev 55:48
`define ByteEig 63:56
`define ByteNin 71:64

`define stateLength 3:0
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