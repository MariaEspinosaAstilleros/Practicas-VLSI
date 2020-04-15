transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/Practicas-VLSI/Componentes/aluSR.vhd}
vcom -93 -work work {E:/Practicas-VLSI/Proyectos/lab4/sumador-restador/lab4.vhd}

