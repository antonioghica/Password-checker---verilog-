module ram_consonants(
    input [5:0]addr,
    input w_en,
    input clock,
    input [7:0]w_data,
    output [7:0]r_data
    );
    
    reg [7:0] memorie_efectiva [0:63];
    assign r_data = memorie_efectiva[addr];
    
    always@(posedge clock) begin
        if(w_en == 1)
            memorie_efectiva[addr] <= r_data;
         
    end 
    
    
endmodule