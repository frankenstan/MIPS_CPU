`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:57:49 05/14/2016 
// Design Name: 
// Module Name:    CPU 
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
module CPU(
    input clk,Reset,
	 output [31:0] d,nPC,a6R,imO,iiO,ieO,emO,mwO,exeALUR,a3R,a4R,idQa,a8R,
	 output [1:0] a6,a0,a3,a4,a11,
	 output [2:0] a5
    ); 
	 
	 wire [31:0] a8R , idQa , idQb , idforSR , idExR , idPC , forJR , 
					 exeQa , exeforSR , a3R , exeQb , a4R , exea9R , exeALUR , exeExR , exePC , exeforBR , 
					 memALUR , mema9R , memDMO , memforBR ,PC,
					 wbALUR , wbDMO;
	 
	 wire [4:0] a0R , RN;
	 
	 wire [2:0] a5;
	 
	 wire [1:0] a0 , a3 , a4 , a9 , a10 , a11;
	 
	 wire a1 , a2 , exezero , a7 , a8 , memzero , a12;
	 
	 assign nPC = a6R;
	 assign d = a8R;
	 
	
 ControlUnit CU(memzero , clk , iiO , ieO , emO , mwO , a1 , a2 , a7 , a8 , a12 , a5 , a0 , a3 , a4 , a9 , a10 , a11 , a6 , RN);
	 
	 
	 PC PC01(a6R , clk , Reset , PC);
	 
	    Muxfa6 Mux0(PC+4 , memforBR , PC , forJR , a6 , a6R);
	 
	    IP_ROM IM(PC , imO);
	 
	 ifid IFandID(imO , PC+4 , a10 , clk , Reset , iiO , idPC);
	 
	    Reg Regfile(iiO[9:5] , iiO[4:0] , a0R , a1 , clk , Reset , a8R , idQa , idQb); 
	 
	    Mux4_5 Mux1(iiO[4:0] , iiO[14:10] , RN , 5'b0 , a0 , a0R);
	 
	    forS forshift(iiO[19:15] , idforSR);
	 
	    Extender Ex(iiO[25:10] , a2 , idExR);
	 
	    forJ forjump(iiO[25:0] , idPC , forJR);
	 
	 idexe IDandEXE(iiO , idQa , idQb , idExR , idforSR , idPC , a11 , clk , Reset , ieO , exeQa , exeQb , exeExR , exeforSR , exePC);
	 
	    Mux4_32 Mux2(exeQa , exeforSR , memALUR , a8R , a3 , a3R);
	 
	    Mux4_32 Mux3(exeQb , exeExR , memALUR , a8R , a4 , a4R);
	 
	    Mux4_32 Mux4(exeQb , memALUR , a8R , 0 , a9 , exea9R);
	 
	    ALU ALU(a3R , a4R , a5 , exezero , exeALUR); 
	 
	    forBranch forbranch(exeExR , exePC , exeforBR);
	 
	 exemem EXEandMEM(ieO , exeALUR , exeforBR , exea9R , exezero , clk , a12 , Reset , emO , memALUR , memforBR , mema9R , memzero);
	 
	    IP_RAM DM(memALUR , mema9R , clk , a7 , memDMO);
	
	 memwb MEMandWB(emO , memALUR , memDMO , clk , Reset , mwO , wbALUR , wbDMO);
	 
	    Mux2_32 Mux5(wbALUR , wbDMO , a8 , a8R);


endmodule
