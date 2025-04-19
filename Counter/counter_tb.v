`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2025 13:06:34
// Design Name: 
// Module Name: counter_tb
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


module counter_tb();
reg clk,reset;
wire[5:0] hours,min,sec;
couter x1(clk,reset,hours,min,sec);
initial 
begin 
clk=0;
reset=1;
#10 reset=0;
#10000000 reset =1;
#5 reset=1;
#10 $stop;
end 
always 
#1 clk =~clk;
endmodule
