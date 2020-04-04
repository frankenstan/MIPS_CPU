`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:45:05 05/11/2016 
// Design Name: 
// Module Name:    idexe 
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
module idexe(
    input [31:0] ieI,Qa,Qb,exR,forSR,PC,
	 input [1:0] a11,
	 input clk,Reset,
	 output reg [31:0] ieO,ta30,ta40,ta41,ta31,tfB
    );
	 always @(posedge clk or negedge Reset)
	 if((a11 == 2) | ~Reset)
	 begin
	 ieO <= 0; ta30 <= 0; ta40 <= 0; ta41 <= 0; ta31 <= 0; tfB <= 0;
	 end
	 
	 else if(a11 == 0)
	 begin
    ieO <= ieI; ta30 <= Qa; ta40 <= Qb; ta41 <= exR; ta31 <= forSR; tfB <= PC;	 
	 end


endmodule
