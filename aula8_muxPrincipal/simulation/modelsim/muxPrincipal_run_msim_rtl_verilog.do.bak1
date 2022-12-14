transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/pedro/OneDrive/Documentos/SD_projetos/aula8_muxPrincipal {C:/Users/pedro/OneDrive/Documentos/SD_projetos/aula8_muxPrincipal/muxPrincipal.v}
vlog -vlog01compat -work work +incdir+C:/Users/pedro/OneDrive/Documentos/SD_projetos/aula8_muxPrincipal {C:/Users/pedro/OneDrive/Documentos/SD_projetos/aula8_muxPrincipal/mux_2canais.v}

vlog -vlog01compat -work work +incdir+C:/Users/pedro/OneDrive/Documentos/SD_projetos/aula8_muxPrincipal {C:/Users/pedro/OneDrive/Documentos/SD_projetos/aula8_muxPrincipal/testbench_mux_2_canais.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L rtl_work -L work -voptargs="+acc"  testbench_mux_2_canais

add wave *
view structure
view signals
run -all
