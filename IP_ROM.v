`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:41:58 05/11/2016 
// Design Name: 
// Module Name:    IP_ROM 
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
module IP_ROM(
    input [31:0] PC,
	 output [31:0] Inst
    );
	 
	 wire [31:0] rom[0:63];
	 	 
	 assign Inst=rom[PC[7:2]];
	 
	 /*assign rom[6'h0] = 32'h15b14c22; //addi rt(2) rs(1)(6c53)  4
	 assign rom[6'h1] = 32'h17d72483; //addi  rt(3) rs(4)(f5c9)  8
	 assign rom[6'h2] = 32'h04101443; //and rd(5) rs(2) rt(3)  12
	 assign rom[6'h3] = 32'h04201843; //or rd(6) rs(2) rt(3) 16
	 assign rom[6'h4] = 32'h04401c43; //xor rd(7) rs(2) rt(3) 20
	 assign rom[6'h5] = 32'h0812a003; //sra(5) rd(8) rt(3) 24
	 assign rom[6'h6] = 32'h08242405; //srl(8) rd(9) rt(5) 28
	 assign rom[6'h7] = 32'h08322807; //sll(4) rd(10) rt(7) 32
	 assign rom[6'h8] = 32'h26960843; //andi  rt(11) rs(2)(a582) 36
	 assign rom[6'h9] = 32'h00103043; //add rd(12) rs(2) rt(3) 40
	 assign rom[6'ha] = 32'h2a90c06d; //ori rt(13) rs(3)(a430) 44
	 assign rom[6'hb] = 32'h3066644e; //xori rt(14) rs(2)(1999) 48
	 assign rom[6'hc] = 32'h0010404f; //add rd(16) rs(2) rt(15) 52
	 assign rom[6'hd] = 32'h3f589050; //beq rs(2) rt(16)(d624) (jump to 32h)358c8
	 assign rom[6'he] = 32'h0;
	 assign rom[6'hf] = 32'h0;
	 
	 assign rom[6'h10] = 32'h0;
	 assign rom[6'h11] = 32'h0;
	 assign rom[6'h12] = 32'h0;
	 assign rom[6'h13] = 32'h0;
	 assign rom[6'h14] = 32'h0;
	 assign rom[6'h15] = 32'h0;
	 assign rom[6'h16] = 32'h00104843; //add rd(18) rs(2) rt(3) 456745c
	 assign rom[6'h17] = 32'h0;
	 assign rom[6'h18] = 32'h0;
	 assign rom[6'h19] = 32'h0;
	 assign rom[6'h1a] = 32'h0;
	 assign rom[6'h1b] = 32'h0;
	 assign rom[6'h1c] = 32'h0;
	 assign rom[6'h1d] = 32'h0;
	 assign rom[6'h1e] = 32'h0;
	 assign rom[6'h1f] = 32'h0;
	 
	 assign rom[6'h20] = 32'h0;
	 assign rom[6'h21] = 32'h0;
	 assign rom[6'h22] = 32'h0;
	 assign rom[6'h23] = 32'h0;
	 assign rom[6'h24] = 32'h0;
	 assign rom[6'h25] = 32'h0;
	 assign rom[6'h26] = 32'h0;
	 assign rom[6'h27] = 32'h0;
	 assign rom[6'h28] = 32'h0;
	 assign rom[6'h29] = 32'h0;
	 assign rom[6'h2a] = 32'h0;
	 assign rom[6'h2b] = 32'h0;
	 assign rom[6'h2c] = 32'h0;
	 assign rom[6'h2d] = 32'h0;
	 assign rom[6'h2e] = 32'h0;
	 assign rom[6'h2f] = 32'h0;
	 
	 assign rom[6'h30] = 0;
	 assign rom[6'h31] = 0;
	 assign rom[6'h32] = 32'h380000c7; //store rt(7) 0000(rs(6)) 358cc
	 assign rom[6'h33] = 32'h428c2843; //bne rs(2) rt(3)(a30a) (jump to 3eh)5e4f8
	 assign rom[6'h34] = 0;
	 assign rom[6'h35] = 0;
	 assign rom[6'h36] = 0;
	 assign rom[6'h37] = 0;
	 assign rom[6'h38] = 0;
	 assign rom[6'h39] = 0;
	 assign rom[6'h3a] = 0;
	 assign rom[6'h3b] = 0;
	 assign rom[6'h3c] = 0;
	 assign rom[6'h3d] = 0;
	 assign rom[6'h3e] = 32'h340000d1; //load rt(17) 0000(rs(6)) 5e4fc
	 assign rom[6'h3f] = 32'h49159d16; //jump 1159d16 (jump to 16h) 4567458*/
	 
	 assign rom[6'h00]=32'b0;//op6 func6 shift5 rd5 rs5 rt5
	 assign rom[6'h01]=32'b00110100000000000000000000000001;//001101 000000 00000 00000 00000 00001 load 0+rs0=>rt1
	 assign rom[6'h02]=32'b00000000000100000000110000100010;//000000 000001 00000 00011 00001 00010 add rd3<=rs1+rs2
	 assign rom[6'h03]=32'b00110100000000000000000001100100;//001101 000000 00000 00000 00011 00100 load 0+rs3=>rt4
	 assign rom[6'h04]=32'b00000000001000000001010010000001;//000000 000010 00000 00101 00100 00001 sub rd5<=rs4-rt1
	 assign rom[6'h05]=32'b00000000010000000001010010100100;//000000 000100 00000 00101 00101 00100 mul rd5<=rs5*rt4
	 assign rom[6'h06]=32'b00001000001100010001100000000101;//000010 000011 00010 00110 00000 00101 sll 2 rd6<=rt5<<
	 assign rom[6'h07]=32'b00000100010000000001110011000110;//000001 000100 00000 00111 00110 00110 xor rd7<=rs6xorrt6
	 assign rom[6'h08]=32'b00111100000000000000010011000110;//001111 000000 00000 00001 00110 00110 beq 1 rs6 rt6
	 assign rom[6'h09]=32'b01001000000000000000000000001011;//010010 000000 00000 00000 00000 01011 jmp 0BH
	 assign rom[6'h0A]=32'b01000011111111111111100010100110;//010000 111111 11111 11110 00101 00110 bne -2 rs5 rt6
	 assign rom[6'h0B]=32'b00100111111111111110100010101000;//001001 111111 11111 11010 00101 01000 andi rs5=>rt8
	 assign rom[6'h0C]=32'b00011000000000000001010010001001;//000110 000000 00000 00101 00100 01001 muli 5*rs4=>rt9
	 assign rom[6'h0D]=32'b00010111111111111111110100101010;//000101 111111 11111 11111 01001 01010 addi -1+rs9=>rt10
	 assign rom[6'h0E]=32'b00001000000100101010110000000110;//000010 000001 00101 01011 00000 00110 sra 5 rd11<=rt6>>
	 assign rom[6'h0F]=32'b00001000001000101011000000000110;//000010 000010 00101 01100 00000 00110 srl 5 rd12<=rt6>>
	 
	 assign rom[6'h10]=32'b00000100001000000011010101101100;//000001 000010 00000 01101 01011 01100 or rd13<=rs11orrt12
	 assign rom[6'h11]=32'b00000100000100000011100101101100;//000001 000001 00000 01110 01011 01100 and rd14<=rs11andrt12
	 assign rom[6'h12]=32'b00101000000000000000010101101110;//001010 000000 00000 00001 01011 01110 ori 1ors11=?rt14
	 assign rom[6'h13]=32'b00111000000000000010000000001110;//001110 000000 00000 01000 00000 01110 store 8+rs0<=rt14
	 assign rom[6'h14]=32'b0;
	 assign rom[6'h15]=32'b0;
	 assign rom[6'h16]=32'b0;
	 assign rom[6'h17]=32'b0;
	 assign rom[6'h18]=32'b0;
	 assign rom[6'h19]=32'b0;
	 assign rom[6'h1A]=32'b0;
	 assign rom[6'h1B]=32'b0;
	 assign rom[6'h1C]=32'b0;
	 assign rom[6'h1D]=32'b0;
	 assign rom[6'h1E]=32'b0;
	 assign rom[6'h1F]=32'b0;
	 
	 assign rom[6'h20]=32'b0;
	 assign rom[6'h21]=32'b0;
	 assign rom[6'h22]=32'b0;
	 assign rom[6'h23]=32'h00000000;
	 assign rom[6'h24]=32'h00000000;
	 assign rom[6'h25]=32'h00000000;
	 assign rom[6'h26]=32'h00000000;
	 assign rom[6'h27]=32'h00000000;
	 assign rom[6'h28]=32'h00000000;
	 assign rom[6'h29]=32'h00000000;
	 assign rom[6'h2A]=32'h00000000;
	 assign rom[6'h2B]=32'h00000000;
	 assign rom[6'h2C]=32'h00000000;
	 assign rom[6'h2D]=32'h00000000;
	 assign rom[6'h2E]=32'h00000000;
	 assign rom[6'h2F]=32'h00000000;
	 
	 assign rom[6'h30]=32'h00000000;
	 assign rom[6'h31]=32'h00000000;
	 assign rom[6'h32]=32'h00000000;
	 assign rom[6'h33]=32'h00000000;
	 assign rom[6'h34]=32'h00000000;
	 assign rom[6'h35]=32'h00000000;
	 assign rom[6'h36]=32'h00000000;
	 assign rom[6'h37]=32'h00000000;
	 assign rom[6'h38]=32'h00000000;
	 assign rom[6'h39]=32'h00000000;
	 assign rom[6'h3A]=32'h00000000;
	 assign rom[6'h3B]=32'h00000000;
	 assign rom[6'h3C]=32'h00000000;
	 assign rom[6'h3D]=32'h00000000;
	 assign rom[6'h3E]=32'h00000000;
	 assign rom[6'h3F]=32'h00000000;

endmodule
