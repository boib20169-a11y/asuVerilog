`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/15/2026 07:20:58 PM
// Design Name: 
// Module Name: studenID
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


module studentID(
    input Cin,
    input [3:0] X,
    input [3:0] Y,
    output [1:7] leds,
    output [0:3] an
    );
    
    assign an = 4'b0111;
    wire [3:0] w1, w2;
    asuLab inst1( .Cin(Cin), .X(X), .Y(Y), .S(w1), .Cout(), .Neg(), .Overflow()); //empty arguements = grounded
    studentNumber inst2( .S(w1), .L(w2));
    ssegLab3 inst3( .bcd(w2), .neg(), .leds2(), .leds(leds));
    
endmodule
