`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2025 22:46:34
// Design Name: OR GATE
// Module Name: or_gate
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


module or_gate(A,B,Y);
input A,B;
output Y;
reg Y;
always@(*)begin 
Y = A|B;
end 
endmodule

module or_gate_tb;
reg A,B;    
wire Y;
or_gate dut(A,B,Y);
    initial begin 
    $monitor("Time=%0t;A=%b;B=%b;Y=%b",$time,A,B,Y);
    A=0;B=0;
   #5 A=0;B=1; 
   #5 A=1;B=0; 
   #5 A=1;B=1; 
   #10 $finish;
   end
   endmodule 
