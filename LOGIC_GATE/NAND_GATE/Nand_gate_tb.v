`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2025 20:43:33
// Design Name: 
// Module Name: Nand_gate_tb
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



module nand_tb();
  reg A, B;
  wire Y;

  NAND_GATE dut(A,B,Y);

  initial begin
    $monitor("time=%0t, A=%b, B=%b, Y=%b", $time, A, B, Y);
    A = 0; B = 0;
    #5 A = 0; B = 1;
    #5 A = 1; B = 0;
    #5 A = 1; B = 1;
    #5 $finish;
  end
endmodule

