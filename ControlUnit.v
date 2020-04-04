`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:46:05 05/11/2016 
// Design Name: 
// Module Name:    ControlUnit 
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
module ControlUnit(
    input zero,clk,
	 input [31:0] iiO,ieO,emO,mwO,
	 output a1,a2,a7,a8,a12,
	 output [2:0] a5,
	 output [1:0] a0,a3,a4,a9,a10,a11,a6,
	 output [4:0] RegNumber
    );
	 wire a,b,c;
    assign a0 = (clk & (mwO[31:26] < 14)) ? 2 : //A|B|C
	             ((~clk) & (iiO[31:26] < 3)) ? 1 : //A
					 ((~clk) & (iiO[31:26] > 4) & (iiO[31:26] < 14)) ? 0 : 3; //B and C 
	 
	 assign a1 = (clk & (mwO[31:26] < 14)) ? 1 : //A|B|C
	             ((~clk) & (iiO[31:26] < 17)); //A|B|C|D|E
	 
	 assign a2 = (iiO[28] & ~iiO[27] & iiO[26]) | (iiO[28] & iiO[27] & ~iiO[26]); //addi load|store
	 assign a7 = (emO[31:26] == 13) ? 1 : 0; //store
	 assign a8 = (mwO[31:26] == 14) ? 1 : 0; //load
	 
	 assign a5[2] = (~ieO[30] & ~ieO[29] & ieO[27]) | (~ieO[29] & ~ieO[28] & ieO[26] & ieO[22]) | (ieO[28] & ~ieO[27] & ~ieO[26]); //sra srl sll|xor|xori
	 assign a5[1] = (~ieO[30] & ~ieO[29] & ieO[27] & ieO[21]) | (~ieO[29] & ~ieO[28] & ieO[26] & ~ieO[22]) | (ieO[29] & ~ieO[28]); //srl sll|and or|andi ori
    assign a5[0] = (ieO[28] & ieO[27] & ieO[26]) | (ieO[30] & ~ieO[27]) | (ieO[29] & ~ieO[28] & ieO[27]) | (~ieO[30] & ~ieO[29] & ~ieO[28] & ieO[27] & ieO[20]) | 
	                (~ieO[29] & ~ieO[28] & ieO[26] & ieO[21]); //beq|bne|ori|sra sll|or
	 
    assign a = ~(((ieO[31:26] == 1) & (emO[31:26] < 3) & (ieO[9:5] == emO[14:10])) | //AAX and not shift
					 ((ieO[31:26] == 1) & (emO[31:26] > 4) & (emO[31:26] < 13) & (ieO[9:5] == emO[4:0])) | //ABX and not shift
					 ((ieO[31:26] > 4) & (ieO[31:26] < 14) & (emO[31:26] < 3) & (ieO[9:5] == emO[14:10])) | //BAX|CAX
					 ((ieO[31:26] > 4) & (ieO[31:26] < 14) & ((emO[31:26] > 4) & (emO[31:26] < 13)) & (ieO[9:5] == emO[4:0])) | //BBX|CBX
					 ((ieO[31:26] == 14) & (emO[31:26] < 3) & (ieO[9:5] == emO[14:10])) | //DAX and ieO(rs)=emO(rd)
					 ((ieO[31:26] == 14) & (emO[31:26] > 4) & (emO[31:26] < 13) & (ieO[9:5] == emO[4:0])) | //DBX and ieO(rs)=emO(rt)
					 (((ieO[31:26] == 15) | (ieO[31:26] == 16)) & (emO[31:26] < 3) & (ieO[9:5] == emO[14:10])) | //EAX
					 (((ieO[31:26] == 15) | (ieO[31:26] == 16)) & ((emO[31:26] > 4) & (emO[31:26] < 13)) & (ieO[9:5] == emO[4:0]))); //EBX
	 
	 assign b = ~(((ieO[31:26] < 3) & (emO[31:26] < 3) & (ieO[4:0] == emO[14:10])) | //AAX
					  ((ieO[31:26] < 3) & (emO[31:26] > 4) & (emO[31:26] < 13) & (ieO[4:0] == emO[4:0])) | //ABX
					  (((ieO[31:26] == 15) | (ieO[31:26] == 16)) & (emO[31:26] < 3) & (ieO[4:0] == emO[14:10])) | //EAX
					  (((ieO[31:26] == 15) | (ieO[31:26] == 16)) & ((emO[31:26] > 4) & (emO[31:26] < 13)) & (ieO[4:0] == emO[4:0])));
					  
	 assign c = ~(((ieO[31:26] == 14) & (emO[31:26] < 3) & (ieO[4:0] == emO[14:10])) | //DAX and ieO(rt)=emO(rd)
					  ((ieO[31:26] == 14) & ((emO[31:26] > 4) & (emO[31:26] < 13)) & (ieO[4:0] == emO[4:0]))); //DBX and ieO(rt)=emO(rt)

	 assign a6 = (iiO[30] & iiO[27]) ? 3 : //jump
	             
					 (((ieO[31:26] < 3) & (emO[31:26] == 13) & ((ieO[9:5] == emO[4:0]) | (ieO[4:0] == emO[4:0]))) | //ACX
					 (((ieO[31:26] > 4) & (ieO[31:26] < 14)) & (emO[31:26] == 13) & (ieO[9:5] == emO[4:0])) | //BCX|CCX
					 ((ieO[31:26] == 14) & (emO[31:26] == 13) & ((ieO[9:5] == emO[4:0]) | (ieO[4:0] == emO[4:0]))) | //DCX
					 (((ieO[31:26] == 15) | (ieO[31:26] == 16)) & (emO[31:26] == 13) & ((ieO[9:5] == emO[4:0]) | (ieO[4:0] == emO[4:0]))) | //ECX
					 (iiO[31:26] == 15) | (iiO[31:26] == 16) | (ieO[31:26] == 15) | (ieO[31:26] == 16)) ? 2 : //possible to branch
					 
					 ((zero & (emO[31:26] == 15)) | (~zero & (emO[31:26] == 16))) ? 1 : 2'b00; //enable to branch
	 
	 assign a3 = a & (((ieO[31:26] < 3) & (mwO[31:26] < 3) & (ieO[9:5] == mwO[14:10])) | //AXA and not shift
	             ((ieO[31:26] < 3) & ((mwO[31:26] > 4) & (mwO[31:26] < 14)) & (ieO[9:5] == mwO[4:0])) | //(AXB or AXC) and not shift
					 ((ieO[31:26] > 4) & (ieO[31:26] < 14) & (mwO[31:26] < 3) & (ieO[9:5] == mwO[14:10])) | //BXA or CXA
					 ((ieO[31:26] > 4) & (ieO[31:26] < 14) & ((mwO[31:26] > 4) & (mwO[31:26] < 14)) & (ieO[9:5] == mwO[4:0])) | //BXB|BXC|CXB|CXC
					 ((ieO[31:26] == 14) & (mwO[31:26] < 3) & (ieO[9:5] == mwO[14:10])) | //DXA and ieO(rs)=mwO(rd)
					 ((ieO[31:26] == 14) & ((mwO[31:26] > 4) & (mwO[31:26] < 14)) & (ieO[9:5] == mwO[4:0])) | //(DXB|DXC) and ieO(rs)=mwO(rt)
					 (((ieO[31:26] == 15) | (ieO[31:26] == 16)) & (mwO[31:26] < 3) & (ieO[9:5] == mwO[14:10])) | //EXA
					 (((ieO[31:26] == 15) | (ieO[31:26] == 16)) & (mwO[31:26] > 4) & (mwO[31:26] < 14) & (ieO[9:5] == mwO[4:0]))) ? 3 : //EXB|EXC
					 
					 (((ieO[31:26] == 1) & (emO[31:26] < 3) & (ieO[9:5] == emO[14:10])) | //AAX and not shift
					 ((ieO[31:26] == 1) & (emO[31:26] > 4) & (emO[31:26] < 13) & (ieO[9:5] == emO[4:0])) | //ABX and not shift
					 ((ieO[31:26] > 4) & (ieO[31:26] < 14) & (emO[31:26] < 3) & (ieO[9:5] == emO[14:10])) | //BAX|CAX
					 ((ieO[31:26] > 4) & (ieO[31:26] < 14) & ((emO[31:26] > 4) & (emO[31:26] < 13)) & (ieO[9:5] == emO[4:0])) | //BBX|CBX
					 ((ieO[31:26] == 14) & (emO[31:26] < 3) & (ieO[9:5] == emO[14:10])) | //DAX and ieO(rs)=emO(rd)
					 ((ieO[31:26] == 14) & (emO[31:26] > 4) & (emO[31:26] < 13) & (ieO[9:5] == emO[4:0])) | //DBX and ieO(rs)=emO(rt)
					 (((ieO[31:26] == 15) | (ieO[31:26] == 16)) & (emO[31:26] < 3) & (ieO[9:5] == emO[14:10])) | //EAX
					 (((ieO[31:26] == 15) | (ieO[31:26] == 16)) & ((emO[31:26] > 4) & (emO[31:26] < 13)) & (ieO[9:5] == emO[4:0]))) ? 2 : //EBX
					 
					 (ieO[31:26] == 2) ? 1 : 0; //shift
					 
	  assign a4 = b & (((ieO[31:26] < 3) & (mwO[31:26] < 3) & (ieO[4:0] == mwO[14:10])) | //AXA
	              ((ieO[31:26] < 3) & ((mwO[31:26] > 4) & (mwO[31:26] < 14)) & (ieO[4:0] == mwO[4:0])) | //AXB|AXC
					  (((ieO[31:26] == 15) | (ieO[31:26] == 16)) & (mwO[31:26] < 3) & (ieO[4:0] == mwO[14:10])) | //EXA
					  (((ieO[31:26] == 15) | (ieO[31:26] == 16)) & ((mwO[31:26] > 4) & (mwO[31:26] < 14)) & (ieO[4:0] == mwO[4:0]))) ? 3 : //EXB|EXC
					  
					  (((ieO[31:26] < 3) & (emO[31:26] < 3) & (ieO[4:0] == emO[14:10])) | //AAX
					  ((ieO[31:26] < 3) & ((emO[31:26] > 4) & (emO[31:26] < 13)) & (ieO[4:0] == emO[4:0])) | //ABX
					  (((ieO[31:26] == 15) | (ieO[31:26] == 16)) & (emO[31:26] < 3) & (ieO[4:0] == emO[14:10])) | //EAX
					  (((ieO[31:26] == 15) | (ieO[31:26] == 16)) & ((emO[31:26] > 4) & (emO[31:26] < 13)) & (ieO[4:0] == emO[4:0]))) ? 2 : //EBX
					  
					  ((ieO[31:26] > 2) & (ieO[31:26] < 15)) ? 1 : 0; //instructions which include an imme
			  
	  assign a9 = c & (((ieO[31:26] == 14) & (mwO[31:26] < 3) & (ieO[4:0] == mwO[14:10])) | //DXA and ieO(rt)=mwO(rd)
	              ((ieO[31:26] == 14) & ((mwO[31:26] > 4) & (mwO[31:26] < 14)) & (ieO[4:0] == mwO[4:0]))) ? 2 : //(DXB|DXC) and ieO(rt)=mwO(rt)
					  
					  (((ieO[31:26] == 14) & (emO[31:26] < 3) & (ieO[4:0] == emO[14:10])) | //DAX and ieO(rt)=emO(rd)
					  ((ieO[31:26] == 14) & ((emO[31:26] > 4) & (emO[31:26] < 13)) & (ieO[4:0] == emO[4:0]))) ? 1 : 0; //DBX and ieO(rt)=emO(rt)
					  
	  assign a10 = ((zero & (emO[31:26] == 15)) | (~zero & (emO[31:26] == 16)) | //enable to branch
	               (iiO[30] & iiO[27])) ? 2 : //jump
						
						(((ieO[31:26] < 3) & (emO[31:26] == 13) & ((ieO[9:5] == emO[4:0]) | (ieO[4:0] == emO[4:0]))) | //ACX
						(((ieO[31:26] > 4) & (ieO[31:26] < 14)) & (emO[31:26] == 13) & (ieO[9:5] == emO[4:0])) | //BCX|CCX
						((ieO[31:26] == 14) & (emO[31:26] == 13) & ((ieO[9:5] == emO[4:0]) | (ieO[4:0] == emO[4:0]))) | //DCX
						(((ieO[31:26] == 15) | (ieO[31:26] == 16)) & (emO[31:26] == 13) & ((ieO[9:5] == emO[4:0]) | (ieO[4:0] == emO[4:0])))) ? 1 : 0; //ECX
	  
	  assign a11 = ((zero & (emO[31:26] == 15)) | (~zero & (emO[31:26] == 16)) | (iiO[30] & iiO[27])) ? 2 : //enable to branch|jump
	               
						(((ieO[31:26] < 3) & (emO[31:26] == 13) & ((ieO[9:5] == emO[4:0]) | (ieO[4:0] == emO[4:0]))) | //ACX
						(((ieO[31:26] > 4) & (ieO[31:26] < 14)) & (emO[31:26] == 13) & (ieO[9:5] == emO[4:0]))  | //BCX|CCX
						((ieO[31:26] == 14) & (emO[31:26] == 13) & ((ieO[9:5] == emO[4:0]) | (ieO[4:0] == emO[4:0]))) | //DCX
						(((ieO[31:26] == 15) | (ieO[31:26] == 16)) & (emO[31:26] == 13) & ((ieO[9:5] == emO[4:0]) | (ieO[4:0] == emO[4:0])))) ? 1 : 0;//ECX
						
	  assign a12 = ((zero & (emO[31:26] == 15)) | (~zero & (emO[31:26] == 16))) ? 1 : 0;//enable to branch
	  
	  assign RegNumber = (mwO[31:26] < 3) ? mwO[14:10] : //A
	                     (mwO[31:26] < 14) ? mwO[4:0] : 0; //B|C
	 
endmodule
