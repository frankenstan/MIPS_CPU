`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:05:15 05/13/2016
// Design Name:   Reg
// Module Name:   E:/newcpu3.0/t_Reg.v
// Project Name:  newcpu3.0
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Reg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module t_Reg;

	// Inputs
	reg [4:0] Rna;
	reg [4:0] Rnb;
	reg [4:0] Wn;
	reg a1;
	reg clk;
	reg Reset;
	reg [31:0] Wd;

	// Outputs
	wire [31:0] Qa;
	wire [31:0] Qb;

	// Instantiate the Unit Under Test (UUT)
	Reg uut (
		.Rna(Rna), 
		.Rnb(Rnb), 
		.Wn(Wn), 
		.a1(a1), 
		.clk(clk), 
		.Reset(Reset), 
		.Wd(Wd), 
		.Qa(Qa), 
		.Qb(Qb)
	);

	initial begin
		// Initialize Inputs
		Rna = 0;
		Rnb = 0;
		Wn = 0;
		a1 = 0;
		clk = 0;
		Reset = 0;
		Wd = 0;

		// Wait 100 ns for global reset to finish
		#100;
		clk = ~clk;
		a1 = 1;
		Reset = 1;
		Rna = 1;
		Rnb = 2;
		#50;
      clk = ~clk;
		a1 = 0;
		Reset = 1;
		Rna = 1;
		Rnb = 2;
		#50;
      clk = ~clk;
		a1 = 1;
		Reset = 1;
		Rna = 1;
		Rnb = 2;
		#50;
      clk = ~clk;
		a1 = 0;
		Reset = 1;
		Rna = 1;
		Rnb = 2;
		// Add stimulus here

	end
      
endmodule

