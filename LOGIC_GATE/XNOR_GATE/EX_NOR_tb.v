`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.04.2025 19:50:10
// Design Name: 
// Module Name: EX_NOR_tb
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


module EX_NOR_tb();
reg A,B;
wire Y;
EX_NOR_GATE dut(Y,A,B);
initial begin 
$monitor("Time=%0t A=%b B=%b Y=%b",$time,A,B,Y);
    A=0;B=0;
 #5 A=0;B=1;
 #5 A=1;B=0;
 #5 A=1;B=1; 
 #10 $finish;
 end 
 endmodule 