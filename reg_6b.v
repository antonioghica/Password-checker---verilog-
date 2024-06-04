`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2024 01:03:31 PM
// Design Name: 
// Module Name: reg_6b
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


module reg_6b(
    input [5:0]in,
    input clock,
    input reset,
    output reg [5:0] out
    );
    
    always @(posedge clock) begin
        if(reset == 1) 
            out<=0;
       else 
            out<= in;




    end 
    
    
endmodule
