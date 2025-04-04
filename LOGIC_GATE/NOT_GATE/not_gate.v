`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2025 23:16:27
// Design Name: 
// Module Name: not_gate
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


module not_gate(A,Y);
input A;
output Y; 
assign Y =~A;
endmodule

module not_gate_tb();
reg A;
wire Y;
not_gate dut(A,Y);
initial begin 
$monitor("$Time=%0t  A=%b , Y=%b",$time ,A ,Y);
        A=0;
      #2 A=1;
     #5 $stop;
      end 
      endmodule 
