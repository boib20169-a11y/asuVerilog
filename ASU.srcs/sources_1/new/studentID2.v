`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/16/2026 10:27:25 AM
// Design Name: 
// Module Name: studentID2
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


module studentID2(
    input Cin,
    input [3:0] X,
    input [3:0] Y,
    output [3:0] L,
    output [0:3] an
    );
    
    assign an = 4'b1000;
    wire [3:0] w1;
    asuLab inst1( .Cin(Cin), .X(X), .Y(Y), .S(w1), .Cout(), .Neg(), .Overflow()); //empty arguements = grounded
    studentNumber inst2( .S(w1), .L(L));

    
endmodule
