`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:29:37 05/11/2016 
// Design Name: 
// Module Name:    Reg 
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
module Reg(
          input [4:0]  Rna,Rnb,Wn,//���˿ڼĴ�����a��b�Լ�д�˿ڼĴ�����
			 input  a1,clk,Reset,    
			 input [31:0]  Wd,
			 output [31:0] Qa,Qb
    );
	 
    reg [31:0] Register[1:31]; //����31��32λ�ļĴ���
	 //Read data
	 assign Qa = (Rna == 0) ? 0 : Register[Rna];
	 assign Qb = (Rnb == 0) ? 0 : Register[Rnb]; 
	 //Write data
	 integer i; 
	 
	 always @ (negedge clk or negedge Reset)
	 if (Reset == 0)
	     begin
  		  for(i = 1 ; i <= 31 ; i = i + 1) 
		    Register[i] <= 0 ;
        end		
	 else
		   begin
			 Register[Wn] <= Wd;
			end

endmodule