`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/17 14:26:36
// Design Name: 
// Module Name: adder2
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


module adder2(input[1:0] a,b,input cin, output C, [1:0] s);

wire c;
adder1 A1(a[0],b[0],cin,c,s[0]);
adder1 A2(a[1],b[1],c,C,s[1]);


endmodule
