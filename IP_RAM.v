`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:34:21 05/11/2016 
// Design Name: 
// Module Name:    IP_RAM 
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
module IP_RAM(
    input [31:0] ALUR,DataI,
	 input clk,a7,
	 output [31:0] DataO
    );
	 reg [31:0] ram[0:31];
	 assign DataO=ram[ALUR[6:2]];
	 always@(posedge clk)begin
	   if(a7)ram[ALUR]=DataI;
	   end
	 
	 integer i;
	 initial begin
	 for(i=0 ; i<32 ; i=i+1)
	   ram[i]=0;
	 end


endmodule

