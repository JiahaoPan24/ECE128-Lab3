`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/17 15:36:17
// Design Name: 
// Module Name: adder_CLA
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module adder_CLA(input cin,[1:0] a,[1:0]b, output [6:0]seg);
wire p0,p1,g0,g1,c0,c1,c2;
wire [1:0] s;
wire [3:0] bcd_w;

assign p0 = a[0]^b[0];
assign g0 = a[0]&b[0];
assign p1 = a[1]^b[1];
assign g1 = a[1]&b[1];

assign c0 = cin;
assign c1 = g0|p0&c0;
assign c2 = g1|p1&c1;

assign s[0] = p0^c0;
assign s[1] = p1^c1;

assign bcd_w = {1'b0, c2, s};
BCD_7 uut2(bcd_w,seg);
endmodule
