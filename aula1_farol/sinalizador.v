//cabeçalho
// nome...

module sinalizador(F,P,C,S);
	input F,P,C;
	output S;         //S - saida do sinalizador
	
	assign S = (F & ~P & ~C) | (F & ~P & ~C) | (F & P & ~C);
	
endmodule