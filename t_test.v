`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:45:39 05/17/2016
// Design Name:   test
// Module Name:   E:/newcpu3.0/t_test.v
// Project Name:  newcpu3.0
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: test
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module t_test;

	// Inputs
	reg [3:0] in;
	reg control;
	reg clk;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	test uut (
		.in(in), 
		.control(control), 
		.clk(clk), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 0;
		control = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#50;clk = ~clk;
		in = 4;
		control = 1;
		#50;clk = ~clk;
		
		#50;clk = ~clk;
		in = 5;
		control = 1;
		#50;clk = ~clk;
		
		#50;clk = ~clk;
		in = 7;
		control = 0;
		#50;clk = ~clk;
		
		#50;clk = ~clk;
		in = 3;
		control = 1;
		#50;clk = ~clk;
		
		#50;clk = ~clk;
		in = 4;
		control = 0;
		#50;clk = ~clk;
        
		// Add stimulus here

	end
      
endmodule

