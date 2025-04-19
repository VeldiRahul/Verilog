`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2025 13:06:12
// Design Name: Rahul Veldi
// Module Name: couter
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


module couter(clk,reset,hours,min,sec);
input clk , reset;
output reg [5:0] hours=0,min=0,sec=0;
always@(posedge clk or posedge reset)begin 
if(reset)
    {hours,min,sec}=0;
 else 
    begin 
      if(sec==6'd59)
          begin 
             sec<=0;
      if(min==6'd59)
         begin min<=0;
      if(hours==6'd23)
            hours<=0;
       else
          hours<=hours+1'd1;
       end
       else
           min<= min+1'd1; 
       end 
        else
           sec<=sec+1'd1; 
       end 
end  
endmodule 
