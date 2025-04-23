`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:  
// Create Date: 
// Design Name: 
// Module Name: DFlipFlop
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


module DFlipFlop(output reg Q, output Qb, input D,clk);

    //Logic
    initial Q=1'b0;
    
    always@ (posedge clk)   begin   
        Q <= D;
        end
   
    assign Qb = ~Q;

endmodule
