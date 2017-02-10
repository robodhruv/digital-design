transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/dhruv-shah/Desktop/IIT Bombay 2015-19/Sem 4/EE214/EE214 - Experiment 2/Submission/PriorityEncoder/DUT.vhd}
vcom -93 -work work {/home/dhruv-shah/Desktop/IIT Bombay 2015-19/Sem 4/EE214/EE214 - Experiment 2/Submission/PriorityEncoder/PriorityEncoder.vhd}

vcom -93 -work work {/home/dhruv-shah/Desktop/IIT Bombay 2015-19/Sem 4/EE214/Quartus Projects/Encoder/../../EE214 - Experiment 2/Submission/PriorityEncoder/Testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
