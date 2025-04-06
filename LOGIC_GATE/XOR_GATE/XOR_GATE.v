`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.04.2025 23:39:08
// Design Name: 
// Module Name: XOR_GATE
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


module XOR_GATE(A,B,Y);
input A,B;
output reg Y;
always @(A,B,Y) begin
Y= A^B;
end
endmodule
