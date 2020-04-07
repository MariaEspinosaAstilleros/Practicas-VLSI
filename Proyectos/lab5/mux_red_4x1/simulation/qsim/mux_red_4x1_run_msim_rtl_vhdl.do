transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/Practicas-VLSI/Proyectos/lab5/mux_red_4x1/mux_red_4x1.vhd}
vcom -93 -work work {E:/Practicas-VLSI/Componentes/mux2x1.vhd}

