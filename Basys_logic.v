`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/01/2024 01:27:25 PM
// Design Name: 
// Module Name: Basys_logic
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


module Basys_logic(
        input [2:0] sw, //declare the input switch
        output led // declare the output LED
);

assign led = (sw[1] & sw[0])|sw[2]; //defining the gate logic
endmodule
