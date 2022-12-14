/*
Nomes: Pedro Augusto, Tulio Horta
Projeto: somador de 1 bit
Data: 29/09/2022
*/

module somador1(A,B,TE,TS,S);

	input A,B,TE;
	
	output S,TS;
	
	assign S = A ^ B ^ TE;
	assign TS = (A&TE) | (B&TE) | (A&B);
	
endmodule
