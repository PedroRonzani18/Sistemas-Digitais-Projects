/*
Projeto: mux_2canais
Dupla: Pedro Augusto, Tulio Horta
Data: 22/09
*/

module mux_2canais(X,Y, sel, saida);
input X, Y, sel;
output saida;

assign saida = (~sel & X) | (sel & Y);

endmodule