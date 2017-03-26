transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/dhruv-shah/Desktop/IIT Bombay 2015-19/Sem 4/EE214/EE214 - Experiment 8/xor.vhd}
vcom -93 -work work {/home/dhruv-shah/Desktop/IIT Bombay 2015-19/Sem 4/EE214/EE214 - Experiment 8/subtractor.vhd}
vcom -93 -work work {/home/dhruv-shah/Desktop/IIT Bombay 2015-19/Sem 4/EE214/EE214 - Experiment 8/mux16.vhd}
vcom -93 -work work {/home/dhruv-shah/Desktop/IIT Bombay 2015-19/Sem 4/EE214/EE214 - Experiment 8/mux8.vhd}
vcom -93 -work work {/home/dhruv-shah/Desktop/IIT Bombay 2015-19/Sem 4/EE214/EE214 - Experiment 8/mux.vhd}
vcom -93 -work work {/home/dhruv-shah/Desktop/IIT Bombay 2015-19/Sem 4/EE214/EE214 - Experiment 8/EightBitSubtractor.vhd}
vcom -93 -work work {/home/dhruv-shah/Desktop/IIT Bombay 2015-19/Sem 4/EE214/EE214 - Experiment 8/EE224.vhd}
vcom -93 -work work {/home/dhruv-shah/Desktop/IIT Bombay 2015-19/Sem 4/EE214/EE214 - Experiment 8/DUT.vhd}
vcom -93 -work work {/home/dhruv-shah/Desktop/IIT Bombay 2015-19/Sem 4/EE214/EE214 - Experiment 8/sub16.vhd}
vcom -93 -work work {/home/dhruv-shah/Desktop/IIT Bombay 2015-19/Sem 4/EE214/EE214 - Experiment 8/reg16.vhd}
vcom -93 -work work {/home/dhruv-shah/Desktop/IIT Bombay 2015-19/Sem 4/EE214/EE214 - Experiment 8/equal.vhd}
vcom -93 -work work {/home/dhruv-shah/Desktop/IIT Bombay 2015-19/Sem 4/EE214/EE214 - Experiment 8/divider.vhd}
vcom -93 -work work {/home/dhruv-shah/Desktop/IIT Bombay 2015-19/Sem 4/EE214/EE214 - Experiment 8/countdown.vhd}

vcom -93 -work work {/home/dhruv-shah/Desktop/IIT Bombay 2015-19/Sem 4/EE214/Quartus Projects/Divider/../../EE214 - Experiment 8/Testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
