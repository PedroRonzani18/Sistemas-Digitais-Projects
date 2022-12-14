transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/pedro/OneDrive/Documentos/SD_projetos/aula3_comparador_novo {C:/Users/pedro/OneDrive/Documentos/SD_projetos/aula3_comparador_novo/comparador_novo.v}
vlog -vlog01compat -work work +incdir+C:/Users/pedro/OneDrive/Documentos/SD_projetos/aula3_comparador_novo {C:/Users/pedro/OneDrive/Documentos/SD_projetos/aula3_comparador_novo/comparador.v}

