`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/14/2026 01:05:50 PM
// Design Name: 
// Module Name: studentNumber
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


module studentNumber(
    input [3:0] S,
    output [3:0] L
    );
    
    assign L[3] = S[2] & ~S[1] & S[0];
    assign L[2] = (S[3] & ~S[0]) | (S[2] & S[1] & ~S[0]) | (~S[3] & ~S[2] & ~S[1] & S[0]);
    assign L[1] = S[2] & ( S[1] ~^ S[0]);
    assign L[0] = (~S[2] & ~S[1]) | (~S[1] & S[0]) + (~S[2] & S[0]);
    
endmodule
