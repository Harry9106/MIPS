onerror {exit -code 1}
vlib work
vlog -work work DE0_NANO.vo
vlog -work work ejercicio1_fixed.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.mips_vlg_vec_tst -voptargs="+acc"
vcd file -direction DE0_NANO.msim.vcd
vcd add -internal mips_vlg_vec_tst/*
vcd add -internal mips_vlg_vec_tst/i1/*
run -all
quit -f
