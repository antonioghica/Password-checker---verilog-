`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2024 01:07:49 PM
// Design Name: 
// Module Name: vowe_checker_struct
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


module vowe_checker_struct(
    input [7:0]data_in,
    output is_vowel
    );
    
assign is_vowel=(data_in =="a" || data_in=="e" || data_in=="i" || data_in =="o" || data_in == "u")?1:0;
    
endmodule
