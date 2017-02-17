-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "02/14/2017 15:00:41"

-- 
-- Device: Altera 5M1270ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	DUT IS
    PORT (
	input_vector : IN std_logic_vector(15 DOWNTO 0);
	output_vector : OUT std_logic_vector(7 DOWNTO 0)
	);
END DUT;

-- Design Ports Information


ARCHITECTURE structure OF DUT IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input_vector : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(7 DOWNTO 0);
SIGNAL \add_sll|right_shift|zero_check~0_combout\ : std_logic;
SIGNAL \add_sll|right_shift|zero_check~1_combout\ : std_logic;
SIGNAL \add_sll|right_shift|final|mux_7|b~0_combout\ : std_logic;
SIGNAL \add_sll|right_shift|final|mux_7|b~1_combout\ : std_logic;
SIGNAL \add_sll|right_shift|final|mux_6|b~0_combout\ : std_logic;
SIGNAL \add_sll|right_shift|final|mux_6|b~1_combout\ : std_logic;
SIGNAL \add_sll|right_shift|final|mux_6|b~2_combout\ : std_logic;
SIGNAL \add_sll|right_shift|final|mux_5|b~0_combout\ : std_logic;
SIGNAL \add_sll|right_shift|final|mux_5|b~1_combout\ : std_logic;
SIGNAL \add_sll|right_shift|final|mux_4|b~0_combout\ : std_logic;
SIGNAL \add_sll|right_shift|final|mux_4|b~1_combout\ : std_logic;
SIGNAL \add_sll|right_shift|final|mux_4|b~2_combout\ : std_logic;
SIGNAL \add_sll|right_shift|final|mux_3|b~0_combout\ : std_logic;
SIGNAL \add_sll|right_shift|lev2|mux_3|b~0_combout\ : std_logic;
SIGNAL \add_sll|right_shift|lev2|mux_3|b~1_combout\ : std_logic;
SIGNAL \add_sll|right_shift|final|mux_3|b~1_combout\ : std_logic;
SIGNAL \add_sll|right_shift|lev2|mux_2|b~0_combout\ : std_logic;
SIGNAL \add_sll|right_shift|lev2|mux_2|b~1_combout\ : std_logic;
SIGNAL \add_sll|right_shift|final|mux_2|b~0_combout\ : std_logic;
SIGNAL \add_sll|right_shift|lev2|mux_1|b~0_combout\ : std_logic;
SIGNAL \add_sll|right_shift|lev2|mux_1|b~1_combout\ : std_logic;
SIGNAL \add_sll|right_shift|final|mux_1|b~0_combout\ : std_logic;
SIGNAL \add_sll|right_shift|final|mux_0|b~0_combout\ : std_logic;
SIGNAL \add_sll|right_shift|final|mux_0|b~1_combout\ : std_logic;
SIGNAL \add_sll|right_shift|final|mux_0|b~2_combout\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: LC_X9_Y10_N2
\add_sll|right_shift|zero_check~0\ : maxv_lcell
-- Equation(s):
-- \add_sll|right_shift|zero_check~0_combout\ = (\input_vector~combout\(6)) # ((\input_vector~combout\(3)) # ((\input_vector~combout\(5)) # (\input_vector~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(5),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_sll|right_shift|zero_check~0_combout\);

-- Location: PIN_108,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(7),
	combout => \input_vector~combout\(7));

-- Location: LC_X16_Y10_N6
\add_sll|right_shift|zero_check~1\ : maxv_lcell
-- Equation(s):
-- \add_sll|right_shift|zero_check~1_combout\ = (\add_sll|right_shift|zero_check~0_combout\) # (((\input_vector~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_sll|right_shift|zero_check~0_combout\,
	datad => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_sll|right_shift|zero_check~1_combout\);

-- Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(8),
	combout => \input_vector~combout\(8));

-- Location: PIN_106,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: LC_X15_Y9_N5
\add_sll|right_shift|final|mux_7|b~0\ : maxv_lcell
-- Equation(s):
-- \add_sll|right_shift|final|mux_7|b~0_combout\ = (\input_vector~combout\(8) & (((!\input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_sll|right_shift|final|mux_7|b~0_combout\);

-- Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: LC_X15_Y9_N2
\add_sll|right_shift|final|mux_7|b~1\ : maxv_lcell
-- Equation(s):
-- \add_sll|right_shift|final|mux_7|b~1_combout\ = (!\add_sll|right_shift|zero_check~1_combout\ & (!\input_vector~combout\(2) & (\add_sll|right_shift|final|mux_7|b~0_combout\ & !\input_vector~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_sll|right_shift|zero_check~1_combout\,
	datab => \input_vector~combout\(2),
	datac => \add_sll|right_shift|final|mux_7|b~0_combout\,
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_sll|right_shift|final|mux_7|b~1_combout\);

-- Location: PIN_109,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(9),
	combout => \input_vector~combout\(9));

-- Location: LC_X16_Y10_N3
\add_sll|right_shift|final|mux_6|b~0\ : maxv_lcell
-- Equation(s):
-- \add_sll|right_shift|final|mux_6|b~0_combout\ = (!\input_vector~combout\(1) & ((\input_vector~combout\(0) & (\input_vector~combout\(8))) # (!\input_vector~combout\(0) & ((\input_vector~combout\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00d8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \input_vector~combout\(8),
	datac => \input_vector~combout\(9),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_sll|right_shift|final|mux_6|b~0_combout\);

-- Location: LC_X16_Y10_N9
\add_sll|right_shift|final|mux_6|b~1\ : maxv_lcell
-- Equation(s):
-- \add_sll|right_shift|final|mux_6|b~1_combout\ = (!\add_sll|right_shift|zero_check~0_combout\ & (!\input_vector~combout\(7) & (!\input_vector~combout\(2) & \add_sll|right_shift|final|mux_6|b~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_sll|right_shift|zero_check~0_combout\,
	datab => \input_vector~combout\(7),
	datac => \input_vector~combout\(2),
	datad => \add_sll|right_shift|final|mux_6|b~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_sll|right_shift|final|mux_6|b~1_combout\);

-- Location: LC_X16_Y10_N2
\add_sll|right_shift|final|mux_6|b~2\ : maxv_lcell
-- Equation(s):
-- \add_sll|right_shift|final|mux_6|b~2_combout\ = (!\add_sll|right_shift|zero_check~0_combout\ & (((!\input_vector~combout\(2) & !\input_vector~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_sll|right_shift|zero_check~0_combout\,
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_sll|right_shift|final|mux_6|b~2_combout\);

-- Location: PIN_110,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(10),
	combout => \input_vector~combout\(10));

-- Location: LC_X16_Y10_N4
\add_sll|right_shift|final|mux_5|b~0\ : maxv_lcell
-- Equation(s):
-- \add_sll|right_shift|final|mux_5|b~0_combout\ = (\input_vector~combout\(0) & (((\input_vector~combout\(1))))) # (!\input_vector~combout\(0) & ((\input_vector~combout\(1) & (\input_vector~combout\(8))) # (!\input_vector~combout\(1) & 
-- ((\input_vector~combout\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \input_vector~combout\(8),
	datac => \input_vector~combout\(10),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_sll|right_shift|final|mux_5|b~0_combout\);

-- Location: LC_X16_Y10_N5
\add_sll|right_shift|final|mux_5|b~1\ : maxv_lcell
-- Equation(s):
-- \add_sll|right_shift|final|mux_5|b~1_combout\ = (\add_sll|right_shift|final|mux_6|b~2_combout\ & ((\input_vector~combout\(0) & (!\add_sll|right_shift|final|mux_5|b~0_combout\ & \input_vector~combout\(9))) # (!\input_vector~combout\(0) & 
-- (\add_sll|right_shift|final|mux_5|b~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4840",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \add_sll|right_shift|final|mux_6|b~2_combout\,
	datac => \add_sll|right_shift|final|mux_5|b~0_combout\,
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_sll|right_shift|final|mux_5|b~1_combout\);

-- Location: LC_X16_Y10_N8
\add_sll|right_shift|final|mux_4|b~0\ : maxv_lcell
-- Equation(s):
-- \add_sll|right_shift|final|mux_4|b~0_combout\ = (\input_vector~combout\(1) & (((\input_vector~combout\(8))))) # (!\input_vector~combout\(1) & (\input_vector~combout\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(10),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_sll|right_shift|final|mux_4|b~0_combout\);

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(11),
	combout => \input_vector~combout\(11));

-- Location: LC_X15_Y10_N9
\add_sll|right_shift|final|mux_4|b~1\ : maxv_lcell
-- Equation(s):
-- \add_sll|right_shift|final|mux_4|b~1_combout\ = ((\input_vector~combout\(1) & (\input_vector~combout\(9))) # (!\input_vector~combout\(1) & ((\input_vector~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(9),
	datac => \input_vector~combout\(11),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_sll|right_shift|final|mux_4|b~1_combout\);

-- Location: LC_X16_Y10_N7
\add_sll|right_shift|final|mux_4|b~2\ : maxv_lcell
-- Equation(s):
-- \add_sll|right_shift|final|mux_4|b~2_combout\ = (\add_sll|right_shift|final|mux_6|b~2_combout\ & ((\input_vector~combout\(0) & (\add_sll|right_shift|final|mux_4|b~0_combout\)) # (!\input_vector~combout\(0) & 
-- ((\add_sll|right_shift|final|mux_4|b~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_sll|right_shift|final|mux_4|b~0_combout\,
	datab => \add_sll|right_shift|final|mux_6|b~2_combout\,
	datac => \add_sll|right_shift|final|mux_4|b~1_combout\,
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_sll|right_shift|final|mux_4|b~2_combout\);

-- Location: LC_X15_Y10_N2
\add_sll|right_shift|final|mux_3|b~0\ : maxv_lcell
-- Equation(s):
-- \add_sll|right_shift|final|mux_3|b~0_combout\ = (!\input_vector~combout\(2) & ((\input_vector~combout\(1) & (\input_vector~combout\(9))) # (!\input_vector~combout\(1) & ((\input_vector~combout\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4450",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \input_vector~combout\(9),
	datac => \input_vector~combout\(11),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_sll|right_shift|final|mux_3|b~0_combout\);

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(12),
	combout => \input_vector~combout\(12));

-- Location: LC_X15_Y9_N7
\add_sll|right_shift|lev2|mux_3|b~0\ : maxv_lcell
-- Equation(s):
-- \add_sll|right_shift|lev2|mux_3|b~0_combout\ = (\input_vector~combout\(1) & (((\input_vector~combout\(10))))) # (!\input_vector~combout\(1) & (((\input_vector~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datac => \input_vector~combout\(10),
	datad => \input_vector~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_sll|right_shift|lev2|mux_3|b~0_combout\);

-- Location: LC_X15_Y9_N4
\add_sll|right_shift|lev2|mux_3|b~1\ : maxv_lcell
-- Equation(s):
-- \add_sll|right_shift|lev2|mux_3|b~1_combout\ = (\input_vector~combout\(2) & (\input_vector~combout\(8) & ((!\input_vector~combout\(1))))) # (!\input_vector~combout\(2) & (((\add_sll|right_shift|lev2|mux_3|b~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datab => \input_vector~combout\(2),
	datac => \add_sll|right_shift|lev2|mux_3|b~0_combout\,
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_sll|right_shift|lev2|mux_3|b~1_combout\);

-- Location: LC_X15_Y9_N1
\add_sll|right_shift|final|mux_3|b~1\ : maxv_lcell
-- Equation(s):
-- \add_sll|right_shift|final|mux_3|b~1_combout\ = (!\add_sll|right_shift|zero_check~1_combout\ & ((\input_vector~combout\(0) & (\add_sll|right_shift|final|mux_3|b~0_combout\)) # (!\input_vector~combout\(0) & 
-- ((\add_sll|right_shift|lev2|mux_3|b~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4450",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_sll|right_shift|zero_check~1_combout\,
	datab => \add_sll|right_shift|final|mux_3|b~0_combout\,
	datac => \add_sll|right_shift|lev2|mux_3|b~1_combout\,
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_sll|right_shift|final|mux_3|b~1_combout\);

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(13),
	combout => \input_vector~combout\(13));

-- Location: LC_X15_Y10_N5
\add_sll|right_shift|lev2|mux_2|b~0\ : maxv_lcell
-- Equation(s):
-- \add_sll|right_shift|lev2|mux_2|b~0_combout\ = ((\input_vector~combout\(1) & ((\input_vector~combout\(11)))) # (!\input_vector~combout\(1) & (\input_vector~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(13),
	datac => \input_vector~combout\(11),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_sll|right_shift|lev2|mux_2|b~0_combout\);

-- Location: LC_X15_Y10_N8
\add_sll|right_shift|lev2|mux_2|b~1\ : maxv_lcell
-- Equation(s):
-- \add_sll|right_shift|lev2|mux_2|b~1_combout\ = (\input_vector~combout\(2) & (\input_vector~combout\(9) & ((!\input_vector~combout\(1))))) # (!\input_vector~combout\(2) & (((\add_sll|right_shift|lev2|mux_2|b~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50d8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \input_vector~combout\(9),
	datac => \add_sll|right_shift|lev2|mux_2|b~0_combout\,
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_sll|right_shift|lev2|mux_2|b~1_combout\);

-- Location: LC_X15_Y9_N9
\add_sll|right_shift|final|mux_2|b~0\ : maxv_lcell
-- Equation(s):
-- \add_sll|right_shift|final|mux_2|b~0_combout\ = (!\add_sll|right_shift|zero_check~1_combout\ & ((\input_vector~combout\(0) & ((\add_sll|right_shift|lev2|mux_3|b~1_combout\))) # (!\input_vector~combout\(0) & 
-- (\add_sll|right_shift|lev2|mux_2|b~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5044",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_sll|right_shift|zero_check~1_combout\,
	datab => \add_sll|right_shift|lev2|mux_2|b~1_combout\,
	datac => \add_sll|right_shift|lev2|mux_3|b~1_combout\,
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_sll|right_shift|final|mux_2|b~0_combout\);

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(14),
	combout => \input_vector~combout\(14));

-- Location: LC_X15_Y9_N6
\add_sll|right_shift|lev2|mux_1|b~0\ : maxv_lcell
-- Equation(s):
-- \add_sll|right_shift|lev2|mux_1|b~0_combout\ = (\input_vector~combout\(2) & ((\input_vector~combout\(1) & (\input_vector~combout\(8))) # (!\input_vector~combout\(1) & ((\input_vector~combout\(10)))))) # (!\input_vector~combout\(2) & 
-- (((\input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datab => \input_vector~combout\(2),
	datac => \input_vector~combout\(10),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_sll|right_shift|lev2|mux_1|b~0_combout\);

-- Location: LC_X15_Y9_N0
\add_sll|right_shift|lev2|mux_1|b~1\ : maxv_lcell
-- Equation(s):
-- \add_sll|right_shift|lev2|mux_1|b~1_combout\ = (\input_vector~combout\(2) & (((\add_sll|right_shift|lev2|mux_1|b~0_combout\)))) # (!\input_vector~combout\(2) & ((\add_sll|right_shift|lev2|mux_1|b~0_combout\ & ((\input_vector~combout\(12)))) # 
-- (!\add_sll|right_shift|lev2|mux_1|b~0_combout\ & (\input_vector~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2c2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(14),
	datab => \input_vector~combout\(2),
	datac => \add_sll|right_shift|lev2|mux_1|b~0_combout\,
	datad => \input_vector~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_sll|right_shift|lev2|mux_1|b~1_combout\);

-- Location: LC_X15_Y9_N8
\add_sll|right_shift|final|mux_1|b~0\ : maxv_lcell
-- Equation(s):
-- \add_sll|right_shift|final|mux_1|b~0_combout\ = (!\add_sll|right_shift|zero_check~1_combout\ & ((\input_vector~combout\(0) & (\add_sll|right_shift|lev2|mux_2|b~1_combout\)) # (!\input_vector~combout\(0) & 
-- ((\add_sll|right_shift|lev2|mux_1|b~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4450",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_sll|right_shift|zero_check~1_combout\,
	datab => \add_sll|right_shift|lev2|mux_2|b~1_combout\,
	datac => \add_sll|right_shift|lev2|mux_1|b~1_combout\,
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_sll|right_shift|final|mux_1|b~0_combout\);

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(15),
	combout => \input_vector~combout\(15));

-- Location: LC_X15_Y10_N4
\add_sll|right_shift|final|mux_0|b~0\ : maxv_lcell
-- Equation(s):
-- \add_sll|right_shift|final|mux_0|b~0_combout\ = (\input_vector~combout\(2) & (((\input_vector~combout\(11)) # (\input_vector~combout\(1))))) # (!\input_vector~combout\(2) & (\input_vector~combout\(15) & ((!\input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \input_vector~combout\(15),
	datac => \input_vector~combout\(11),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_sll|right_shift|final|mux_0|b~0_combout\);

-- Location: LC_X15_Y10_N6
\add_sll|right_shift|final|mux_0|b~1\ : maxv_lcell
-- Equation(s):
-- \add_sll|right_shift|final|mux_0|b~1_combout\ = (\add_sll|right_shift|final|mux_0|b~0_combout\ & (((\input_vector~combout\(9)) # (!\input_vector~combout\(1))))) # (!\add_sll|right_shift|final|mux_0|b~0_combout\ & (\input_vector~combout\(13) & 
-- ((\input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_sll|right_shift|final|mux_0|b~0_combout\,
	datab => \input_vector~combout\(13),
	datac => \input_vector~combout\(9),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_sll|right_shift|final|mux_0|b~1_combout\);

-- Location: LC_X15_Y9_N3
\add_sll|right_shift|final|mux_0|b~2\ : maxv_lcell
-- Equation(s):
-- \add_sll|right_shift|final|mux_0|b~2_combout\ = (!\add_sll|right_shift|zero_check~1_combout\ & ((\input_vector~combout\(0) & ((\add_sll|right_shift|lev2|mux_1|b~1_combout\))) # (!\input_vector~combout\(0) & 
-- (\add_sll|right_shift|final|mux_0|b~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5044",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_sll|right_shift|zero_check~1_combout\,
	datab => \add_sll|right_shift|final|mux_0|b~1_combout\,
	datac => \add_sll|right_shift|lev2|mux_1|b~1_combout\,
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_sll|right_shift|final|mux_0|b~2_combout\);

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_sll|right_shift|final|mux_7|b~1_combout\,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_sll|right_shift|final|mux_6|b~1_combout\,
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_sll|right_shift|final|mux_5|b~1_combout\,
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_sll|right_shift|final|mux_4|b~2_combout\,
	oe => VCC,
	padio => ww_output_vector(3));

-- Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_sll|right_shift|final|mux_3|b~1_combout\,
	oe => VCC,
	padio => ww_output_vector(4));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_sll|right_shift|final|mux_2|b~0_combout\,
	oe => VCC,
	padio => ww_output_vector(5));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_sll|right_shift|final|mux_1|b~0_combout\,
	oe => VCC,
	padio => ww_output_vector(6));

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_sll|right_shift|final|mux_0|b~2_combout\,
	oe => VCC,
	padio => ww_output_vector(7));
END structure;


