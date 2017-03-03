ghdl -i EE224.vhd
ghdl -a DUT.vhd
ghdl -a bomb_detector.vhd
ghdl -a gun_detector.vhd
ghdl -a Testbench.vhd
ghdl -m Testbench
