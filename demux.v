`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2024 01:48:25 PM
// Design Name: 
// Module Name: demux
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


module demux(
    input [7:0] in,
    input sel,
    output reg out0,
    output reg out1
    );
    
    always @(*) begin
        if( sel == 0) 
            out0 = in;
        else if(sel == 1)
            out1 = in;
    end
    
    
endmodule
