`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:32:16 05/17/2016 
// Design Name: 
// Module Name:    forB 
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
module forB(
    input [31:0] branch,
	 input [31:0] npc,
	 output [31:0] forbranchR
    );
	 assign forbranchR = npc + 4*branch;


endmodule
