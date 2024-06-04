`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2024 02:51:16 PM
// Design Name: 
// Module Name: top
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


module top(
    input clock,
    input reset,
    input en,
    input [7:0]data_in,
    output [7:0] data_read,
    output consonants,
    output vowels,
    output check
    );
    
    wire [5:0]w0;
    counter_6b counter_6b(
        .en(en),
        .clock(clock),
        .reset(rest),
        .out(w0)
    );
    wire [5:0]w1;
    reg_6b reg_6b_0(
        .in(w0),
        .clock(clock),
        .reset(reset),
        .out(w1)    
    );
    
    wire w2;   
    vowel_checker_struct vowel_checker_struct_0(
        .data_in(data_in),
        .is_vowel(w2)  
    );
    
    
    
    pass_check_fsm pass_check_fsm_0(
    
        .en(en),
        .clock(clock),
        .reset
        .data_in(data_in),
    
    );
    
    
    // MODIFICA NUMELE LA FIECARE MODUL IN PARE LA FIECARE INTRATE SA FIE CLOCK DACA ZICE SA FIE CLOCK NU CLCK SAU ALTCV
    
    
    
    
    
    
endmodule
