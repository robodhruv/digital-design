transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {DUT.vho}

vcom -93 -work work {/home/dhruv-shah/Desktop/IIT Bombay 2015-19/Sem 4/EE214/Quartus Projects/Encoder/../../EE214 - Experiment 2/Submission/PriorityEncoder/Testbench.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /dut_instance=DUT_vhd.sdo -L maxv -L gate_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
