transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/home/julam5/Desktop/lab3/lab3_p2 {/home/julam5/Desktop/lab3/lab3_p2/sdram_master.v}

