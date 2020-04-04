`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:06:20 05/10/2016 
// Design Name: 
// Module Name:    ifid 
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
module ifid(
    input [31:0] iiI,PCp4,
	 input [1:0] a10,
	 input clk,Reset,
	 output reg [31:0] iiO,forBJ
    );
	 
	 always@(posedge clk or negedge Reset)
	  
	  if((a10 == 2) | ~Reset) begin iiO<=0; forBJ<=0; end
	  
	  else if (a10 == 0) begin iiO <= iiI; forBJ <= PCp4; end
	 


endmodule
