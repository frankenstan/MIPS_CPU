`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:40:51 05/11/2016 
// Design Name: 
// Module Name:    forS 
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
module forS(
    input [4:0] shift,
	 output [31:0] forSR
    );
	 assign forSR={27'b0,shift};


endmodule
