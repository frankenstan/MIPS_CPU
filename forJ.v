`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:38:55 05/11/2016 
// Design Name: 
// Module Name:    forJ 
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
module forJ(
    input [25:0] j,
	 input [31:0] npc,
	 output [31:0] r
    );
	 assign r={npc[31:28] , j , 2'b00};


endmodule