/*
Projeto: testbench
Dupla: Pedro Augusto, Tulio Horta
Data: 03/11
*/

module testbench_mux_2_canais;
// Nao tem input e output

// Canais de entrada
reg tb_I0, tb_I1;

// Entrada de selecao
reg tb_sel;

wire tb_s_out;

parameter stop_time = 1000;

mux_2canais dut (tb_I0, tb_I1, tb_sel, tb_s_out);

initial
begin
	repeat(3)
	begin
		tb_sel = 0; tb_I0 = 0; tb_I1 = 0;
	#10 
		tb_sel = 0; tb_I0 = 1; tb_I1 = 0;
	#10 
		tb_sel = 0; tb_I0 = 0; tb_I1 = 1;
	#10 
		tb_sel = 0; tb_I0 = 1; tb_I1 = 1;
	#10 
		tb_sel = 1; tb_I0 = 0; tb_I1 = 0;
	#10 
		tb_sel = 1; tb_I0 = 1; tb_I1 = 0;
	#10 
		tb_sel = 1; tb_I0 = 0; tb_I1 = 1;
	#10 
		tb_sel = 1; tb_I0 = 1; tb_I1 = 1;
	#10;
	end
end

endmodule

