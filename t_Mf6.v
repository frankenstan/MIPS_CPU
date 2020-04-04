`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:06:01 05/20/2016
// Design Name:   Muxfa6
// Module Name:   E:/newcpu3.0/t_Mf6.v
// Project Name:  newcpu3.0
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Muxfa6
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module t_Mf6;

	// Inputs
	reg [31:0] a0;
	reg [31:0] a1;
	reg [31:0] a2;
	reg [31:0] a3;
	reg [2:0] s;

	// Outputs
	wire [31:0] y;

	// Instantiate the Unit Under Test (UUT)
	Muxfa6 uut (
		.a0(a0), 
		.a1(a1), 
		.a2(a2), 
		.a3(a3), 
		.s(s), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		a0 = 0;
		a1 = 0;
		a2 = 0;
		a3 = 0;
		s = 5;

		// Wait 100 ns for global reset to finish
		#100;
		
		a0=1;
		a1=2;
		a2=3;
		a3=4;
		s=4;
        
		#100;
		
		a0=1;
		a1=2;
		a2=3;
		a3=4;
		s=1;
		
		#100;
		
		a0=1;
		a1=2;
		a2=3;
		a3=4;
		s=2;
		
		#100;
		
		a0=1;
		a1=2;
		a2=3;
		a3=4;
		s=0;
		
		#100;
		
		a0=1;
		a1=2;
		a2=3;
		a3=4;
		s=7;
		// Add stimulus here

	end
      
endmodule

