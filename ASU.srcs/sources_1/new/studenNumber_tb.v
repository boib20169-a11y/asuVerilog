`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/15/2026 08:07:21 PM
// Design Name: 
// Module Name: studenNumber_tb
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


module studentNumber_tb;
reg [3:0] S;
wire [3:0] L;
studentNumber u0( .S(S), .L(L));

initial begin
S = 4'd0;
#50 S = 4'd1; //5
#50 S = 4'd3; //1




end
endmodule
