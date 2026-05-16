`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/15/2026 04:57:55 PM
// Design Name: 
// Module Name: asuLab_tb2
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
`timescale 1ns / 1ps;

module asuLab_tb2;



reg Cin;
reg [3:0] X, Y;

wire [3:0] S;
wire Cout;
wire Neg;
wire Overflow;

asuLab u0( .Cin(Cin), .X(X), .Y(Y), .S(S), .Cout(Cout), .Neg(Neg), .Overflow(Overflow));
initial begin
    X = 0;
    Y = 0;
    Cin = 0;
    
    #50 
    X = 4'd9; 
    Y = 4'd5; 
    Cin = 1'b1; //should be 4
    
    #50 
    X = 4'd4; 
    Y = 4'd0; 
    Cin = 1'b0; //should be 4
    
    #50 
    X = 4'd10; 
    Y = 4'd5; 
    Cin = 1'b1; //should be 5
    
    #50 
    X = 4'd5; 
    Y = 4'd0; 
    Cin = 1'b0; //should be 5

end



endmodule
