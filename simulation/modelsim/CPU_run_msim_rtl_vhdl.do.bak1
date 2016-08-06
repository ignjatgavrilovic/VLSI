transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/mihai_000/Desktop/VLSI rojekat desktop/VLSI projekat/VLSI/IF_BLOCK.vhd}
vcom -93 -work work {C:/Users/mihai_000/Desktop/VLSI rojekat desktop/VLSI projekat/VLSI/CPU.vhd}

vcom -93 -work work {C:/Users/mihai_000/Desktop/VLSI rojekat desktop/VLSI projekat/VLSI/simulation/modelsim/CPU.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  cpu_vhd_tst

add wave *
view structure
view signals
run 2 ms
