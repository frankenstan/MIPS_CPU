`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:36:33 05/11/2016 
// Design Name: 
// Module Name:    Extender 
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
module Extender(
    input [15:0] imme,
	 input a2,
	 output [31:0] ximme
    );
	 assign ximme = a2 ? {(imme[15] ? 16'hffff : 16'h0) , imme} : {16'h0 , imme};

endmodule
