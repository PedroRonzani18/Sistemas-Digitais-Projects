/*
Projeto: muxPrincipal
Dupla: Pedro Augusto, Tulio Horta
Data: 03/11
*/

module muxPrincipal(I, Sel, O);

input [0:3] I;
input [0:1] Sel;

output O; 

wire [0:1] SI;

mux_2canais(I[0], I[1], Sel[0], SI[0]);
mux_2canais(I[2], I[3], Sel[0], SI[1]);
mux_2canais(SI[0], SI[1], Sel[1], O);

endmodule
