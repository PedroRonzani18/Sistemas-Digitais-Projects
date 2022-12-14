/*
Nomes: Pedro Augusto, Tulio Horta
Projeto: somador de 1 bit
Data: 29/09/2022
*/

module somador1(A,B,TE,HEX0);

	input A,B,TE;
	output [0:6] HEX0;
	
	wire S,TS; // variaveis intermediarias
	
	assign S = A ^ B ^ TE;
	assign TS = (A&TE) | (B&TE) | (A&B);
	
	// decod (TS,S,A,B,C,D,E,F,G)
	   decod (TS,S,HEX0[0], HEX0[1], HEX0[2], HEX0[3], HEX0[4], HEX0[5], HEX0[6]);

	
endmodule
