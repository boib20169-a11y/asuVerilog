`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/14/2026 11:01:14 AM
// Design Name: 
// Module Name: ssegLab3
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


module ssegLab3(
    input [3:0] bcd,
    input neg,
            output reg [1:7] leds2,
            output reg [1:7] leds
    );
    
    
    always @(*) begin
    if (neg == 1'b1) begin
    leds2 = 7'b0000001;
    end
    else begin
    leds2 = 7'b0000000;
    end 
    end
    
    always @(*) begin
    case(bcd)
    
    4'd0: leds = 7'b0000001;
    4'd1: leds = 7'b1001111;
    4'd2: leds = 7'b0010010;
    4'd3: leds = 7'b0000110;
    4'd4: leds = 7'b1001100;
    4'd5: leds = 7'b0100100;
    4'd6: leds = 7'b0100000;
    4'd7: leds = 7'b0001111;
    4'd8: leds = 7'b0000000;
    4'd9: leds = 7'b0000100;

    
    default: leds = 7'b0000000;
    endcase
    end
    
    
    
    
    
    
endmodule
