/*
Nome: Pedro Augusto, Tulio Horta
Projeto: somador de 4 bits
Data: 06/10/2022
*/

module somador4(A,B,S,HEX0,HEX1,TE0);

	input [3:0]A;
	input [3:0]B;
	
	output [4:0]S;
	output [0:6]HEX0;
	output [0:6]HEX1;
	
	wire [0:3]TS;
	input TE0;
	
	//somador1(A,B,TE,TS,S);
	
	somador1(A[0], B[0],   TE0, TS[0], S[0]);
	somador1(A[1], B[1], TS[0], TS[1], S[1]);
	somador1(A[2], B[2], TS[1], TS[2], S[2]);
	somador1(A[3], B[3], TS[2], S[4], S[3]);
	
	wire [0:3]dezena, unidade;
	
	assign dezena = S/10;
	assign unidade = S%10;
	
	//module decod(E,S);
	
	decod(unidade[0:3],HEX0[0:6]);
	decod(dezena[0:3],HEX1[0:6]);

endmodule