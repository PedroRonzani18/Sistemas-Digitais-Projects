/*
Projeto: divisor 
Nome: Pedro Augusto, Tulio Horta
Data: 17/11/2022
*/

module divisor(reset,CLOCK_50,novo_clock);
	input reset;
	input CLOCK_50;
	
	output novo_clock; // saida Q[23] +- 50M/16.000.000
	
	// variavel intermediaria
	reg [23:0] Q; //contador de 24  bits
	
	initial
	begin
		Q = 24'b000;
	end
	
	//assign novo_clock = Q[23]; // novo_clock = 50M/2^24 = 3Hz
	
	always @ (posedge CLOCK_50 or posedge reset)
	begin
		if(reset == 1'b1)
		begin
			Q = 24'b000;
		end
		else
			begin
			Q = Q+1;
			end
	end
		
	assign novo_clock = Q[23];
endmodule