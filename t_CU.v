`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:58:46 05/14/2016
// Design Name:   ControlUnit
// Module Name:   E:/newcpu3.0/t_CU.v
// Project Name:  newcpu3.0
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ControlUnit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module t_CU;

	// Inputs
	reg zero;
	reg clk;
	reg [31:0] iiO;
	reg [31:0] ieO;
	reg [31:0] emO;
	reg [31:0] mwO;

	// Outputs
	wire [1:0] a0;
	wire a1;
	wire a2;
	wire a7;
	wire a8;
	wire [2:0] a5;
	wire [1:0] a3;
	wire [1:0] a4;
	wire [1:0] a6;
	wire [1:0] a9; 
	wire [1:0] a10;
	wire [1:0] a11;
	wire a12;

	// Instantiate the Unit Under Test (UUT)
	ControlUnit uut (
		.zero(zero), 
		.clk(clk), 
		.iiO(iiO), 
		.ieO(ieO), 
		.emO(emO), 
		.mwO(mwO), 
		.a0(a0), 
		.a1(a1), 
		.a2(a2), 
		.a7(a7), 
		.a8(a8), 
		.a5(a5), 
		.a3(a3), 
		.a4(a4), 
		.a6(a6), 
		.a9(a9), 
		.a10(a10), 
		.a11(a11), 
		.a12(a12)
	);

	initial begin
		// Initialize Inputs
		zero = 0;
		clk = 0;
		iiO = 0;
		ieO = 0;
		emO = 0;
		mwO = 0;

		// Wait 100 ns for global reset to finish
		#50; clk = ~clk;
		iiO = 32'h00100000;
		ieO = 32'h00100000;
		emO = 32'h00100000;
		mwO = 32'h00100000;
		#50; clk = ~clk;
		
		#50; clk = ~clk;
		iiO = 32'h04100000;
		ieO = 32'h04100000;
		emO = 32'h04100000;
		mwO = 32'h04100000;
		#50; clk = ~clk;
		
		#50; clk = ~clk;
		iiO = 32'h04200000;
		ieO = 32'h04200000;
		emO = 32'h04200000;
		mwO = 32'h04200000;
		#50; clk = ~clk;
		
		#50; clk = ~clk;
		iiO = 32'h04400000;
		ieO = 32'h04400000;
		emO = 32'h04400000;
		mwO = 32'h04400000;
		#50; clk = ~clk;
        
		#50; clk = ~clk;
		iiO = 32'h08100000;
		ieO = 32'h08100000;
		emO = 32'h08100000;
		mwO = 32'h08100000;
		#50; clk = ~clk;
		
		#50; clk = ~clk;
		iiO = 32'h08200000;
		ieO = 32'h08200000;
		emO = 32'h08200000;
		mwO = 32'h08200000;
		#50; clk = ~clk;
		
		#50; clk = ~clk;
		iiO = 32'h08300000;
		ieO = 32'h08300000;
		emO = 32'h08300000;
		mwO = 32'h08300000;
		#50; clk = ~clk;
		
		#50; clk = ~clk;
		iiO = 32'h14000000;
		ieO = 32'h14000000;
		emO = 32'h14000000;
		mwO = 32'h14000000;
		#50; clk = ~clk;
		
		#50; clk = ~clk;
		iiO = 32'h24000000;
		ieO = 32'h24000000;
		emO = 32'h24000000;
		mwO = 32'h24000000;
		#50; clk = ~clk;
		
		#50; clk = ~clk;
		iiO = 32'h28000000;
		ieO = 32'h28000000;
		emO = 32'h28000000;
		mwO = 32'h28000000;
		#50; clk = ~clk;
		
		#50; clk = ~clk;
		iiO = 32'h30000000;
		ieO = 32'h30000000;
		emO = 32'h30000000;
		mwO = 32'h30000000;
		#50; clk = ~clk;
		
		#50; clk = ~clk;
		iiO = 32'h34000000;
		ieO = 32'h34000000;
		emO = 32'h34000000;
		mwO = 32'h34000000;
		#50; clk = ~clk;
		
		#50; clk = ~clk;
		iiO = 32'h38000000;
		ieO = 32'h38000000;
		emO = 32'h38000000;
		mwO = 32'h38000000;
		#50; clk = ~clk;
		
		#50; clk = ~clk;
		iiO = 32'h3c000000;
		ieO = 32'h3c000000;
		emO = 32'h3c000000;
		mwO = 32'h3c000000;
		#50; clk = ~clk;
		
		#50; clk = ~clk;
		iiO = 32'h40000000;
		ieO = 32'h40000000;
		emO = 32'h40000000;
		mwO = 32'h40000000;
		#50; clk = ~clk;
		
		#50; clk = ~clk;
		iiO = 32'h48000000;
		ieO = 32'h48000000;
		emO = 32'h48000000;
		mwO = 32'h48000000;
		#50; clk = ~clk;
		// Add stimulus here

	end
      
endmodule

