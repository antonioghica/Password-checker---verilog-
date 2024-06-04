`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2024 01:51:31 PM
// Design Name: 
// Module Name: ram_vowels
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


module ram_vowels(
    input [5:0]addr,
    input w_en,
    input clock,
    input [7:0]w_data    
    );
    
    reg [7:0] memorie_efectiva [0:63];
    assign r_data = memorie_efectiva[addr];
    
    always@(posedge clock) begin
        if(w_en == 1)
            memorie_efectiva[addr] <= r_data;
         
    end 
    
    
endmodule
