`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:34:58 05/11/2016 
// Design Name: 
// Module Name:    PC 
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
module PC(
    input [31:0] nPC,
	 input clk,Reset,
	 output reg [31:0] PC
    );
	 always@(posedge clk or negedge Reset) begin
	    if(Reset==0) PC<=0;
		 else      PC<=nPC;
	  end


endmodule