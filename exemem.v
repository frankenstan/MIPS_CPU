`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:45:16 05/11/2016 
// Design Name: 
// Module Name:    exemem 
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
module exemem(
    input [31:0] emI,ALUR,forBR,exea9R,
	 input zero,clk,
	 input a12,Reset,
	 output reg [31:0] emO,tDM,ta6,mema9R,
	 output reg tCU
    );
	 always @(posedge clk or negedge Reset)
	 if ((a12 == 1) | ~Reset)
	 begin
	 emO <= 0; tDM <= 0; ta6 <= 0; tCU <= 0; mema9R <= 0;
	 end
	 
	 else
	 begin
	 emO <= emI; tDM <= ALUR; ta6 <= forBR; tCU <= zero; mema9R <= exea9R;
	 end


endmodule
