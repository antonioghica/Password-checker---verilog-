`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2024 01:28:22 PM
// Design Name: 
// Module Name: pass_check_fsm
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


module pass_check_fsm(
    input en,
    input clock,
    input reset,
    input [7:0]data_in,
    output pass_ok
    );
    
    localparam stare0 = 3'b 000;
    localparam stare1 = 3'b 001;
    localparam stare2 = 3'b 010;
    localparam stare3 = 3'b 011;
    localparam stare4 = 3'b 100;
    localparam stare5 = 3'b 101;
    
    reg[2:0] stare,stare_next;
    
    
    always @(posedge clock) begin
        if(reset == 1)  
            stare <= stare0;
        else    
            stare <= stare_next;
    end
    
    
    always @(*) begin
        stare_next = stare;
        case(stare)
            stare0: if(en==1 && data_in=="t")
                stare_next= stare1;
               else 
                stare_next= stare0;
                
                stare1: if(en==1 && data_in=="e")
                stare_next= stare2;
               else 
                stare_next= stare0;
                
                stare2: if(en==1 && data_in=="o")
                stare_next= stare3;
               else 
                stare_next= stare0;
                
                stare3: if(en==1 && data_in=="r")
                stare_next= stare4;
               else 
                stare_next= stare0;
                
                
                stare4: if(en==1 && data_in=="o")
                stare_next= stare5;
               else 
                stare_next= stare0;
                stare5 : stare_next= stare0;
              endcase
        
    end
    
    assign pass_ok = (stare == stare5);
    
    
    
    
endmodule
