`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/14/2026 10:02:29 AM
// Design Name: 
// Module Name: asuLab
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


module asuLab(
    input Cin,
    input [3:0] X,
    input [3:0] Y,
    output [3:0] S,
    output Cout,
    output Neg,
    output Overflow
    );
    
    reg [4:0] Sum; 
    
    always @(*) begin
    if (Cin == 1'b1) begin
    Sum = {1'b0, X} + {1'b0, ~Y} + 1'b1; //1s compliment with concat of for the carryout cin subtracts!
    end
    else begin
    Sum = {1'b0, X} + {1'b0, Y} + 1'b0;
    end
    end
    
    assign Neg = Sum[3];
    assign S = Sum[3:0];
    assign Cout = Sum[4];
    assign Overflow = Cout; // because unsigned representation and not limited to 7 to -8 or 2^(n-1) -1 or -2^(n-1)
    
    
    
    
endmodule
