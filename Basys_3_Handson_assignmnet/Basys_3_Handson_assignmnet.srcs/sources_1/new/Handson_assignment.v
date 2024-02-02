`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2024 13:27:20
// Design Name: 
// Module Name: top_module
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


module handson_assignment(
        // sw=switch
        input [2:0] sw, //[2:0] and [0:2] is the same, [2:0] is industrial standard, [MSB to LSB]
        output [1:0] led
    );

//keep led 1 in "ON" state 
assign led[1] = 1'b1; //1'b1 1 bit, binary number

//Approach 1-RTL register transfer level;
//nand u0(led[0], sw[1], sw[0]);

//Approach 2-Assign;
//assign led[0] =((sw[2] & sw[1]) | sw[0]);

//Approach 3-Always; (better approach cause can streamline process, more efficient code)
reg led_r;
always @(*) begin
    led_r <= ((sw[2] & sw[1]) | sw[0]); //<= means "equal", not "less than or equal to"
end

assign led[0] = led_r; 

endmodule
