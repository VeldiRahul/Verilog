`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.04.2025 23:39:32
// Design Name: 
// Module Name: XOR_GATE_tb
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


module XOR_GATE_tb();
reg A ,B ;
wire Y;
XOR_GATE dut(A,B,Y);
   initial begin 
   $monitor("Time = %0, A=%b;B=%b; Y=%b", A,B,Y);
       A=0;B=0;
    #5 A=0;B=1;
    #5 A=1;B=0;
    #5 A=1;B=1;
    #10 $finish;
    end 
endmodule
