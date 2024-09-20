`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/17 13:57:32
// Design Name: 
// Module Name: adder1
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


module adder1(A,B,CI,CO,SUM);

input A,B,CI;
output CO;
output SUM;


wire Y1, Y2, Y3, Y4, Y5, Y6, Y7;
wire NA, NB, NCI;
wire X1, X2, X3;

not N4(NA, A);
not N5(NB, B);
not N6(NCI, CI);

and A1(Y1, A, B);
and A2(Y2, B, CI);
and A3(Y3, CI, A);
and A4(Y4, A, NB, NCI);
and A5(Y5, NA, B, NCI);
and A6(Y6, NA, NB, CI);
and A7(Y7, A, B, CI);

or O1(CO, Y1, Y2, Y3);
or O2(SUM, Y4, Y5, Y6, Y7);
 
endmodule
