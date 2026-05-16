`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/16/2026 10:31:53 AM
// Design Name: 
// Module Name: studentID2_tb
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


module studentID2_tb;
reg Cin;
reg [3:0] X, Y;
wire [3:0] L;

studentID2 inst1( .Cin(Cin), .X(X), .Y(Y), .L(L));
initial begin
X = 4'd0; //displays 1
Y = 4'd0;
Cin = 1'b0;


#50
X = 4'd3; //displays 9
Y = 4'd2;

#50 //displays 5
X = 4'd6;
Y = 4'd5;
Cin = 1'b1;

#50 //displays 1
X = 4'd9;
Y = 4'd5;
Cin = 1'b1;

#50 //displays 2: 150129425
X = 4'd5;
Y = 4'd1;
Cin = 1'b0;

#50 //displays 2: 150129425
X = 4'd11;
Y = 4'd5;
Cin = 1'b1;

#50 //displays 9: 150129425
X = 4'd12;
Y = 4'd5;
Cin = 1'b1;

#50 //displays 4: 150129425
X = 4'd13;
Y = 4'd5;
Cin = 1'b1;

#50 //displays 2: 1501294251
X = 4'd14;
Y = 4'd5;
Cin = 1'b1;

#50 //displays 5: 1501294251
X = 4'd15;
Y = 4'd5;
Cin = 1'b1;

#50 //displays 1: 1501294251
X = 4'd15;
Y = 4'd4;
Cin = 1'b1;


end

endmodule
