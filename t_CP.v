`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:48:45 05/20/2016
// Design Name:   CPU
// Module Name:   E:/newcpu3.0/t_CP.v
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

module t_CP;

	// Inputs
	reg clk;
	reg Reset;
	//reg [31:0] PC;

	// Outputs
	wire [31:0] d;
	wire [31:0] nPC;
	wire [1:0] a6;
	wire [2:0] a5;
	wire [1:0] a0;
	wire [1:0] a3;
	wire [1:0] a4;
	wire [1:0] a11;
	wire [31:0] a3R;
	wire [31:0] idQa;
	wire [31:0] a4R;
	wire [31:0] a6R;
	wire [31:0] imO;
	wire [31:0] iiO;
	wire [31:0] ieO;
	wire [31:0] emO;
	wire [31:0] mwO;
	wire [31:0] exeALUR;
	wire [31:0] a8R;

	// Instantiate the Unit Under Test (UUT)
	CPU uut (
		.clk(clk), 
		.Reset(Reset), 
		//.PC(PC), 
		.d(d), 
		.nPC(nPC),
		.a6(a6), 
		.a5(a5),
		.a0(a0),
		.a3(a3),
		.a4(a4),
		.a11(a11),
		.a3R(a3R),
		.idQa(idQa),
		.a4R(a4R),
		.a6R(a6R),
		.imO(imO),
		.iiO(iiO),
		.ieO(ieO),
		.emO(emO),
		.mwO(mwO),
		.exeALUR(exeALUR),
		.a8R(a8R)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		Reset = 0;
		//PC = 0;

		// Wait 100 ns for global reset to finish
		#100;
		clk = 0;Reset = 1;
		#50;
		clk = 1;
		end
		always begin
		   #50;
			clk = ~clk;
		
        
		// Add stimulus here

	end
      
endmodule

