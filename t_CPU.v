`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:48:07 05/20/2016
// Design Name:   CPU
// Module Name:   E:/newcpu3.0/t_CPU.v
// Project Name:  newcpu3.0
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CPU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module t_CPU;

	// Inputs
	reg clk;
	reg Reset;
	reg [31:0] PC;

	// Outputs
	wire [31:0] d;
	wire [31:0] nPC;

	// Instantiate the Unit Under Test (UUT)
	CPU uut (
		.clk(clk), 
		.Reset(Reset), 
		.PC(PC), 
		.d(d), 
		.nPC(nPC)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		Reset = 0;
		PC = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

