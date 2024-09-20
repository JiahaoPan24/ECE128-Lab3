`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/17 14:32:16
// Design Name: 
// Module Name: adder_BCD_7
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


module adder_BCD_7(a,b,cin,seg);
input [1:0] a,b;
input cin;
output [6:0] seg;

wire cout_w;
wire [1:0] s_w;
wire [3:0] bcd_w;

adder2 uut1(a,b,cin,cout_w,s_w);
assign bcd_w = {1'b0, cout_w, s_w};
BCD_7 uut2(bcd_w,seg);

endmodule
