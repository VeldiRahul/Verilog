`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2025 22:42:23
// Design Name: 
// Module Name: half_add_tb
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


module half_add_tb();
reg A ,B;
wire sum , carry;
half_add dut(sum,carry,A,B);
initial begin 
       $monitor("A=%b B=%b Sum=%b carry =%b",A,B,sum,carry);
       A=0;B=0;
     #5 A=0;B=1;
     #5 A=1;B=0;
     #5 A=1;B=1;
     #10 $finish;
     end 
endmodule
