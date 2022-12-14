/*
Nomes: Pedro Augusto, Tulio Horta
Projeto: comaprador de 4 bits usando estrutura hierárquica
Data: 15/09/2022
*/

module comparador_novo (A,B,ig,me,ma);
	
	input [3:0]A,B;
	output ig,me,ma;
	wire [3:0] aux_ig, aux_ma, aux_me; //variaveis de tamanho 4 bits
		
//module comparador(ig,me,ma,a,b,ha);

//enable = parte do circuito que permite ou não que o sistma continue
//enable nesse caso = seta vermelha (Aeqbin)
//se for igual, ha = 1, fazenfoq ue circuito continue
//se for diferente, sai ddo comparador e faz com que o circuito continua

	comparador(aux_ig[3],aux_me[3],aux_ma[3], A[3], B[3], 1);
	comparador(aux_ig[2],aux_me[2],aux_ma[2], A[2], B[2], aux_ig[3]); //aux_ig[3] é o enabler do anterior
	comparador(aux_ig[1],aux_me[1],aux_ma[1], A[1], B[1], aux_ig[2]); //aux_ig[2] é o enabler do anterior	
	comparador(aux_ig[0],aux_me[0],aux_ma[0], A[0], B[0], aux_ig[1]); //aux_ig[1] é o enabler do anterior
	
	assign ig = aux_ig[0];
	assign ma = aux_ma[3] | aux_ma[2] | aux_ma[1] | aux_ma[0];
	assign me = aux_me[3] | aux_me[2] | aux_me[1] | aux_me[0];
	
endmodule