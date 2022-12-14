//Nome: Pedro Augusto 
//Projeto: comparador
//Data: 08/09/22

module comparador(ig,me,ma,a,b);

input a,b;
output ig,me,ma;
assign ma = a & ~b;
assign me = ~a & b;
assign ig = (~a & ~b) | (a&b);

endmodule