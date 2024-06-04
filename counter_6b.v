`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2024 01:01:21 PM
// Design Name: 
// Module Name: counter_6b
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


module counter_6b(
    input clock,
    input en,
    input reset,
    output reg [5:0]out
    );
    
    always @(posedge clock) begin
        if(reset == 0) 
            out<=0;
        else if (en ==1 ) 
            out<= out+1;
    
    end
    
    
endmodule
