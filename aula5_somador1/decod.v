/*
Nomes: Pedro Augusto, Tulio Horta
Projeto: decodificador
Data: 29/09/2022
*/

module decod (TS,S,A,B,C,D,E,F,G);

	input TS,S;
	output A,B,C,D,E,F,G;
	
	assign A = ~TS & S;
	assign B = 0;
	assign C = TS & ~S;
	assign D = ~TS & S;
	assign E = (S);
	assign F = (TS | S);
	assign G = (~TS);
	
endmodule