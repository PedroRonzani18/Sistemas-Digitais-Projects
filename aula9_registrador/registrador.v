/*
Nomes: Pedro Augusto, Tulio Horta
Data: 10/11/22
Projeto: registrador
*/

module registrador(Q3,Q2,Q1,Q0,in,reset,clock);
input reset, clock, in;
output reg Q3,Q2,Q1,Q0;

//clock borda de subida
//reset quando for 0

always @ (posedge clock or negedge reset) // todos tem que estar com borda
	begin
		if(reset == 0) // se reset for 0, todos viram 1
			begin
				Q3 = 1'b0;
				Q2 = 1'b0;
				Q1 = 1'b0;
				Q0 = 1'b0;
			end
		else
			begin	
				Q3 = in;
				Q2 = Q3;
				Q1 = Q2;
				Q0 = Q1;
			end
	end

endmodule