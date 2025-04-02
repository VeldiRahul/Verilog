`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.04.2025 12:42:42
// Design Name: AND GATE
// Module Name: and_gate
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


module and_gate(A,B, Y );
input A,B;
output Y;
reg Y;
always @(*)begin 
Y = A & B;
end 
endmodule

module tb;
reg A,B;
wire Y;
and_gate dut(A,B,Y);
    initial begin
        A = 1'b0; B = 1'b0;
     #5 A = 1'b0; B = 1'b1;
     #5 A = 1'b1; B = 1'b0;
     #5 A = 1'b1; B = 1'b1;
         #10 $finish;
    end             
endmodule