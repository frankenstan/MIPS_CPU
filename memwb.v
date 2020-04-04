`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:45:28 05/11/2016 
// Design Name: 
// Module Name:    memwb 
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
module memwb(
    input [31:0] mwI,fem,fdm,
	 input clk,Reset,
	 output reg[31:0] mwO,ta81,ta82
    );
	 always @(posedge clk or negedge Reset)
	 if (Reset == 0)
	   begin
		mwO <= 0; ta81 <= 0; ta82 <= 0;
		end
	 
	 else
	   begin
		mwO <= mwI; ta81 <= fem; ta82 <= fdm;
		end


endmodule
