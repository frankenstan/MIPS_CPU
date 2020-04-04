`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:32:36 05/11/2016 
// Design Name: 
// Module Name:    Mux2_32 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Mux2_32(
    input [31:0] a0,a1,
	 input s,
	 output [31:0] y
    );
	 assign y = s ? a1 : a0;


endmodule