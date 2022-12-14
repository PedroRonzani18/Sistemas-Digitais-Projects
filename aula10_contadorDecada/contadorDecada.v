/*
Nomes: Pedro Augusto, Tulio Horta
Data: 17/11/22
Projeto: contador de década
*/

module contadorDecada (CLOCK_50, HEX0, SW);
	
input CLOCK_50;
output  [0:6] HEX0;
input [17:0] SW;

wire preset, reset;

reg [3:0] Q; // variavel intermediaria

wire novo_clock;

assign preset = SW[16]; 

assign reset = SW[17];
	
divisor div2 (reset,CLOCK_50,novo_clock);	
	
initial
	begin
		Q <= 4'b0000;
	end

always @ (posedge novo_clock or posedge reset or posedge preset) // pos = subida
	begin
		if (reset == 1'b1)
			begin
				Q <= 4'b0000;
			end
		
		else if(preset == 1'b1)
			begin
				Q <= 4'b1001;
			end
		
		else if(Q == 4'b1001)
			begin
				Q <= 4'b0000;
			end
		
		else
			begin
				Q <= Q + 1'b1;
			end
	end

decodBCD bloco(Q[3:0],HEX0[0:6]);

endmodule