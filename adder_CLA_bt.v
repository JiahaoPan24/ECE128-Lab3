`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/17 16:24:03
// Design Name: 
// Module Name: adder_CLA_bt
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


module adder_CLA_bt();
    wire [6:0] segt;
    reg [1:0] at,bt;
    reg cint;
    
    adder_CLA uut(cint,at,bt,segt);
    initial begin
        #10 at=2'b00; bt=2'b00; cint=1'b0;
        #10 at=2'b01; bt=2'b00; cint=1'b0;
        #10 at=2'b01; bt=2'b01; cint=1'b0;
        #10 at=2'b10; bt=2'b01; cint=1'b0;
        
        #10 at=2'b10; bt=2'b10; cint=1'b1;
        #10 at=2'b11; bt=2'b10; cint=1'b1;
        #10 at=2'b11; bt=2'b11; cint=1'b1;
        #10 $stop;
    end
endmodule
