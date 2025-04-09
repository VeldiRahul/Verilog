`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2025 22:16:27
// Design Name: 
// Module Name: half_add
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


module half_add(sum,carry,A,B);
input A , B;
output reg sum,carry;
always @(*)begin
sum=A^B;
carry=A&B;
end
endmodule
