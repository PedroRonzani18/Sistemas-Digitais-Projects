//Nome: Pedro Augusto 
//Projeto: comparador
//Data: 08/09/22

module comparador(ig,me,ma,a,b,ha);

input a,b,ha;
output ig,me,ma;
assign ma = (a & ~b) & ha;
assign me = (~a & b) & ha;
assign ig = ((~a & ~b) | (a&b)) & ha;

endmodule