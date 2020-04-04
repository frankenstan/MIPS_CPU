`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:00:29 05/20/2016 
// Design Name: 
// Module Name:    forBranch 
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
module forBranch(
    input [31:0] branch,
	 input [31:0] npc,
	 output [31:0] forbranchR
    );
	 assign forbranchR = npc + 4*branch;


endmodule
