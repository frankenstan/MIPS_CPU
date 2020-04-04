`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:03:44 05/10/2016 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [31:0] a,b,
	 input [2:0] a5,
	 output zero,
	 output [31:0] r
    );
	 wire [4:0] c;
	 assign c=a[4:0];
	 
	 assign r= (a5 == 3'b000) ? a+b :
	           (a5 == 3'b001) ? a-b :
				  (a5 == 3'b010) ? a&b :
				  (a5 == 3'b011) ? a|b :
				  (a5 == 3'b100) ? a^b :
				  (a5 == 3'b101) ? (b[31] ? -1-((-b)/(2**(c+1))) : b/(2**(c+1))) :
				  (a5 == 3'b110) ? (b/(2**(c+1))) :
				  (a5 == 3'b111) ? b*(2**(c+1)) :
				  32'hxxxxxxxx;
	
	  assign zero = ~r;


endmodule

