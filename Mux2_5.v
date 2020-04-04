`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:31:03 05/11/2016 
// Design Name: 
// Module Name:    Mux2_5 
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
module Mux4_5(
    input [4:0] a0,a1,a2,a3,
	 input [1:0] s,
	 output [4:0] y
    );
	 function [4:0] select;
	    input [4:0] a0,a1,a2,a3;
		 input [1:0] s;
		 case(s)
		  2'b00:select=a0;
		  2'b01:select=a1;
		  2'b10:select=a2;
		  2'b11:select=a3;
		 endcase
     endfunction
	  assign y=select(a0,a1,a2,a3,s);

endmodule
