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

-- DATE "03/18/2017 15:46:24"

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
	output_vector : BUFFER std_logic_vector(3 DOWNTO 0)
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
SIGNAL ww_output_vector : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter_inst|quad3|fa3|add_instance_s0_1|s~0_combout\ : std_logic;
SIGNAL \counter_inst|quad0|fa3|add_instance_s0_1|s~0_combout\ : std_logic;
SIGNAL \counter_inst|quad2|fa3|add_instance_s0_1|s~0_combout\ : std_logic;
SIGNAL \counter_inst|quad1|fa3|add_instance_s0_1|s~0_combout\ : std_logic;
SIGNAL \counter_inst|adder3|bit_1|add_instance_s0_1|s~0_combout\ : std_logic;
SIGNAL \counter_inst|adder1|bit_1|add_instance_s0_1|s~0_combout\ : std_logic;
SIGNAL \counter_inst|quad0|fa4|add_instance_s0_2|s~0_combout\ : std_logic;
SIGNAL \counter_inst|quad1|fa4|add_instance_s0_2|s~0_combout\ : std_logic;
SIGNAL \counter_inst|adder1|bit_2|add_instance_s0_2|s~0_combout\ : std_logic;
SIGNAL \counter_inst|quad2|fa4|add_instance_s0_2|s~0_combout\ : std_logic;
SIGNAL \counter_inst|adder2|bit_2|add_instance_s0_2|s~0_combout\ : std_logic;
SIGNAL \counter_inst|adder2|bit_1|add_instance_s0_1|s~0_combout\ : std_logic;
SIGNAL \counter_inst|quad3|fa4|add_instance_s0_2|s~0_combout\ : std_logic;
SIGNAL \counter_inst|adder3|bit_2|add_instance_s0_2|s~0_combout\ : std_logic;
SIGNAL \counter_inst|quad3|fa2|co~0_combout\ : std_logic;
SIGNAL \counter_inst|adder3|bit_2|co~0_combout\ : std_logic;
SIGNAL \counter_inst|quad3|fa4|co~0_combout\ : std_logic;
SIGNAL \counter_inst|quad2|fa4|co~0_combout\ : std_logic;
SIGNAL \counter_inst|quad1|fa2|co~0_combout\ : std_logic;
SIGNAL \counter_inst|quad0|fa4|co~0_combout\ : std_logic;
SIGNAL \counter_inst|quad1|fa4|co~0_combout\ : std_logic;
SIGNAL \counter_inst|adder1|bit_2|co~0_combout\ : std_logic;
SIGNAL \counter_inst|adder1|bit_3|add_instance_s0_2|s~0_combout\ : std_logic;
SIGNAL \counter_inst|adder2|bit_2|co~0_combout\ : std_logic;
SIGNAL \counter_inst|quad2|fa2|co~0_combout\ : std_logic;
SIGNAL \counter_inst|adder2|bit_3|add_instance_s0_2|s~0_combout\ : std_logic;
SIGNAL \counter_inst|adder3|bit_3|add_instance_s0_2|s~0_combout\ : std_logic;
SIGNAL \counter_inst|adder2|bit_3|co~0_combout\ : std_logic;
SIGNAL \counter_inst|adder1|bit_3|co~0_combout\ : std_logic;
SIGNAL \counter_inst|adder3|bit_3|co~0_combout\ : std_logic;
SIGNAL \counter_inst|adder3|bit_4|add_instance_s0_2|s~0_combout\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: LC_X12_Y7_N2
\counter_inst|quad3|fa3|add_instance_s0_1|s~0\ : maxv_lcell
-- Equation(s):
-- \counter_inst|quad3|fa3|add_instance_s0_1|s~0_combout\ = \input_vector~combout\(2) $ (\input_vector~combout\(3) $ (\input_vector~combout\(1) $ (\input_vector~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter_inst|quad3|fa3|add_instance_s0_1|s~0_combout\);

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(12),
	combout => \input_vector~combout\(12));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(13),
	combout => \input_vector~combout\(13));

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(14),
	combout => \input_vector~combout\(14));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(15),
	combout => \input_vector~combout\(15));

-- Location: LC_X7_Y7_N6
\counter_inst|quad0|fa3|add_instance_s0_1|s~0\ : maxv_lcell
-- Equation(s):
-- \counter_inst|quad0|fa3|add_instance_s0_1|s~0_combout\ = \input_vector~combout\(12) $ (\input_vector~combout\(13) $ (\input_vector~combout\(14) $ (\input_vector~combout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(12),
	datab => \input_vector~combout\(13),
	datac => \input_vector~combout\(14),
	datad => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter_inst|quad0|fa3|add_instance_s0_1|s~0_combout\);

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(7),
	combout => \input_vector~combout\(7));

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: LC_X16_Y3_N8
\counter_inst|quad2|fa3|add_instance_s0_1|s~0\ : maxv_lcell
-- Equation(s):
-- \counter_inst|quad2|fa3|add_instance_s0_1|s~0_combout\ = \input_vector~combout\(4) $ (\input_vector~combout\(7) $ (\input_vector~combout\(6) $ (\input_vector~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datab => \input_vector~combout\(7),
	datac => \input_vector~combout\(6),
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter_inst|quad2|fa3|add_instance_s0_1|s~0_combout\);

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(8),
	combout => \input_vector~combout\(8));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(10),
	combout => \input_vector~combout\(10));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(11),
	combout => \input_vector~combout\(11));

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(9),
	combout => \input_vector~combout\(9));

-- Location: LC_X7_Y7_N5
\counter_inst|quad1|fa3|add_instance_s0_1|s~0\ : maxv_lcell
-- Equation(s):
-- \counter_inst|quad1|fa3|add_instance_s0_1|s~0_combout\ = \input_vector~combout\(8) $ (\input_vector~combout\(10) $ (\input_vector~combout\(11) $ (\input_vector~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datab => \input_vector~combout\(10),
	datac => \input_vector~combout\(11),
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter_inst|quad1|fa3|add_instance_s0_1|s~0_combout\);

-- Location: LC_X12_Y6_N3
\counter_inst|adder3|bit_1|add_instance_s0_1|s~0\ : maxv_lcell
-- Equation(s):
-- \counter_inst|adder3|bit_1|add_instance_s0_1|s~0_combout\ = \counter_inst|quad3|fa3|add_instance_s0_1|s~0_combout\ $ (\counter_inst|quad0|fa3|add_instance_s0_1|s~0_combout\ $ (\counter_inst|quad2|fa3|add_instance_s0_1|s~0_combout\ $ 
-- (\counter_inst|quad1|fa3|add_instance_s0_1|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_inst|quad3|fa3|add_instance_s0_1|s~0_combout\,
	datab => \counter_inst|quad0|fa3|add_instance_s0_1|s~0_combout\,
	datac => \counter_inst|quad2|fa3|add_instance_s0_1|s~0_combout\,
	datad => \counter_inst|quad1|fa3|add_instance_s0_1|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter_inst|adder3|bit_1|add_instance_s0_1|s~0_combout\);

-- Location: LC_X12_Y6_N9
\counter_inst|adder1|bit_1|add_instance_s0_1|s~0\ : maxv_lcell
-- Equation(s):
-- \counter_inst|adder1|bit_1|add_instance_s0_1|s~0_combout\ = ((\counter_inst|quad0|fa3|add_instance_s0_1|s~0_combout\ $ (\counter_inst|quad1|fa3|add_instance_s0_1|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter_inst|quad0|fa3|add_instance_s0_1|s~0_combout\,
	datad => \counter_inst|quad1|fa3|add_instance_s0_1|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter_inst|adder1|bit_1|add_instance_s0_1|s~0_combout\);

-- Location: LC_X7_Y7_N4
\counter_inst|quad0|fa4|add_instance_s0_2|s~0\ : maxv_lcell
-- Equation(s):
-- \counter_inst|quad0|fa4|add_instance_s0_2|s~0_combout\ = (\input_vector~combout\(12) & ((\input_vector~combout\(13) & ((!\input_vector~combout\(15)) # (!\input_vector~combout\(14)))) # (!\input_vector~combout\(13) & ((\input_vector~combout\(14)) # 
-- (\input_vector~combout\(15)))))) # (!\input_vector~combout\(12) & ((\input_vector~combout\(13) & ((\input_vector~combout\(14)) # (\input_vector~combout\(15)))) # (!\input_vector~combout\(13) & (\input_vector~combout\(14) & \input_vector~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(12),
	datab => \input_vector~combout\(13),
	datac => \input_vector~combout\(14),
	datad => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter_inst|quad0|fa4|add_instance_s0_2|s~0_combout\);

-- Location: LC_X7_Y7_N0
\counter_inst|quad1|fa4|add_instance_s0_2|s~0\ : maxv_lcell
-- Equation(s):
-- \counter_inst|quad1|fa4|add_instance_s0_2|s~0_combout\ = (\input_vector~combout\(8) & ((\input_vector~combout\(10) & ((!\input_vector~combout\(9)) # (!\input_vector~combout\(11)))) # (!\input_vector~combout\(10) & ((\input_vector~combout\(11)) # 
-- (\input_vector~combout\(9)))))) # (!\input_vector~combout\(8) & ((\input_vector~combout\(10) & ((\input_vector~combout\(11)) # (\input_vector~combout\(9)))) # (!\input_vector~combout\(10) & (\input_vector~combout\(11) & \input_vector~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datab => \input_vector~combout\(10),
	datac => \input_vector~combout\(11),
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter_inst|quad1|fa4|add_instance_s0_2|s~0_combout\);

-- Location: LC_X12_Y6_N4
\counter_inst|adder1|bit_2|add_instance_s0_2|s~0\ : maxv_lcell
-- Equation(s):
-- \counter_inst|adder1|bit_2|add_instance_s0_2|s~0_combout\ = \counter_inst|quad0|fa4|add_instance_s0_2|s~0_combout\ $ (\counter_inst|quad1|fa4|add_instance_s0_2|s~0_combout\ $ (((\counter_inst|quad0|fa3|add_instance_s0_1|s~0_combout\ & 
-- \counter_inst|quad1|fa3|add_instance_s0_1|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9666",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_inst|quad0|fa4|add_instance_s0_2|s~0_combout\,
	datab => \counter_inst|quad1|fa4|add_instance_s0_2|s~0_combout\,
	datac => \counter_inst|quad0|fa3|add_instance_s0_1|s~0_combout\,
	datad => \counter_inst|quad1|fa3|add_instance_s0_1|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter_inst|adder1|bit_2|add_instance_s0_2|s~0_combout\);

-- Location: LC_X16_Y3_N5
\counter_inst|quad2|fa4|add_instance_s0_2|s~0\ : maxv_lcell
-- Equation(s):
-- \counter_inst|quad2|fa4|add_instance_s0_2|s~0_combout\ = (\input_vector~combout\(4) & ((\input_vector~combout\(7) & ((!\input_vector~combout\(5)) # (!\input_vector~combout\(6)))) # (!\input_vector~combout\(7) & ((\input_vector~combout\(6)) # 
-- (\input_vector~combout\(5)))))) # (!\input_vector~combout\(4) & ((\input_vector~combout\(7) & ((\input_vector~combout\(6)) # (\input_vector~combout\(5)))) # (!\input_vector~combout\(7) & (\input_vector~combout\(6) & \input_vector~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datab => \input_vector~combout\(7),
	datac => \input_vector~combout\(6),
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter_inst|quad2|fa4|add_instance_s0_2|s~0_combout\);

-- Location: LC_X12_Y6_N2
\counter_inst|adder2|bit_2|add_instance_s0_2|s~0\ : maxv_lcell
-- Equation(s):
-- \counter_inst|adder2|bit_2|add_instance_s0_2|s~0_combout\ = \counter_inst|adder1|bit_2|add_instance_s0_2|s~0_combout\ $ (\counter_inst|quad2|fa4|add_instance_s0_2|s~0_combout\ $ (((\counter_inst|quad2|fa3|add_instance_s0_1|s~0_combout\ & 
-- \counter_inst|adder1|bit_1|add_instance_s0_1|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8778",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_inst|quad2|fa3|add_instance_s0_1|s~0_combout\,
	datab => \counter_inst|adder1|bit_1|add_instance_s0_1|s~0_combout\,
	datac => \counter_inst|adder1|bit_2|add_instance_s0_2|s~0_combout\,
	datad => \counter_inst|quad2|fa4|add_instance_s0_2|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter_inst|adder2|bit_2|add_instance_s0_2|s~0_combout\);

-- Location: LC_X12_Y6_N7
\counter_inst|adder2|bit_1|add_instance_s0_1|s~0\ : maxv_lcell
-- Equation(s):
-- \counter_inst|adder2|bit_1|add_instance_s0_1|s~0_combout\ = \counter_inst|quad2|fa3|add_instance_s0_1|s~0_combout\ $ (((\counter_inst|quad0|fa3|add_instance_s0_1|s~0_combout\ $ (\counter_inst|quad1|fa3|add_instance_s0_1|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_inst|quad2|fa3|add_instance_s0_1|s~0_combout\,
	datac => \counter_inst|quad0|fa3|add_instance_s0_1|s~0_combout\,
	datad => \counter_inst|quad1|fa3|add_instance_s0_1|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter_inst|adder2|bit_1|add_instance_s0_1|s~0_combout\);

-- Location: LC_X12_Y7_N7
\counter_inst|quad3|fa4|add_instance_s0_2|s~0\ : maxv_lcell
-- Equation(s):
-- \counter_inst|quad3|fa4|add_instance_s0_2|s~0_combout\ = (\input_vector~combout\(2) & ((\input_vector~combout\(3) & ((!\input_vector~combout\(0)) # (!\input_vector~combout\(1)))) # (!\input_vector~combout\(3) & ((\input_vector~combout\(1)) # 
-- (\input_vector~combout\(0)))))) # (!\input_vector~combout\(2) & ((\input_vector~combout\(3) & ((\input_vector~combout\(1)) # (\input_vector~combout\(0)))) # (!\input_vector~combout\(3) & (\input_vector~combout\(1) & \input_vector~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter_inst|quad3|fa4|add_instance_s0_2|s~0_combout\);

-- Location: LC_X12_Y6_N6
\counter_inst|adder3|bit_2|add_instance_s0_2|s~0\ : maxv_lcell
-- Equation(s):
-- \counter_inst|adder3|bit_2|add_instance_s0_2|s~0_combout\ = \counter_inst|adder2|bit_2|add_instance_s0_2|s~0_combout\ $ (\counter_inst|quad3|fa4|add_instance_s0_2|s~0_combout\ $ (((\counter_inst|quad3|fa3|add_instance_s0_1|s~0_combout\ & 
-- \counter_inst|adder2|bit_1|add_instance_s0_1|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "936c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_inst|quad3|fa3|add_instance_s0_1|s~0_combout\,
	datab => \counter_inst|adder2|bit_2|add_instance_s0_2|s~0_combout\,
	datac => \counter_inst|adder2|bit_1|add_instance_s0_1|s~0_combout\,
	datad => \counter_inst|quad3|fa4|add_instance_s0_2|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter_inst|adder3|bit_2|add_instance_s0_2|s~0_combout\);

-- Location: LC_X12_Y7_N6
\counter_inst|quad3|fa2|co~0\ : maxv_lcell
-- Equation(s):
-- \counter_inst|quad3|fa2|co~0_combout\ = (((\input_vector~combout\(1) & \input_vector~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter_inst|quad3|fa2|co~0_combout\);

-- Location: LC_X12_Y6_N5
\counter_inst|adder3|bit_2|co~0\ : maxv_lcell
-- Equation(s):
-- \counter_inst|adder3|bit_2|co~0_combout\ = (\counter_inst|adder2|bit_2|add_instance_s0_2|s~0_combout\ & ((\counter_inst|quad3|fa4|add_instance_s0_2|s~0_combout\) # ((\counter_inst|quad3|fa3|add_instance_s0_1|s~0_combout\ & 
-- \counter_inst|adder2|bit_1|add_instance_s0_1|s~0_combout\)))) # (!\counter_inst|adder2|bit_2|add_instance_s0_2|s~0_combout\ & (\counter_inst|quad3|fa3|add_instance_s0_1|s~0_combout\ & (\counter_inst|adder2|bit_1|add_instance_s0_1|s~0_combout\ & 
-- \counter_inst|quad3|fa4|add_instance_s0_2|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_inst|quad3|fa3|add_instance_s0_1|s~0_combout\,
	datab => \counter_inst|adder2|bit_2|add_instance_s0_2|s~0_combout\,
	datac => \counter_inst|adder2|bit_1|add_instance_s0_1|s~0_combout\,
	datad => \counter_inst|quad3|fa4|add_instance_s0_2|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter_inst|adder3|bit_2|co~0_combout\);

-- Location: LC_X12_Y7_N4
\counter_inst|quad3|fa4|co~0\ : maxv_lcell
-- Equation(s):
-- \counter_inst|quad3|fa4|co~0_combout\ = (\input_vector~combout\(2) & ((\input_vector~combout\(3)) # (\input_vector~combout\(1) $ (\input_vector~combout\(0))))) # (!\input_vector~combout\(2) & (\input_vector~combout\(3) & (\input_vector~combout\(1) $ 
-- (\input_vector~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter_inst|quad3|fa4|co~0_combout\);

-- Location: LC_X16_Y3_N6
\counter_inst|quad2|fa4|co~0\ : maxv_lcell
-- Equation(s):
-- \counter_inst|quad2|fa4|co~0_combout\ = (\input_vector~combout\(7) & ((\input_vector~combout\(6)) # (\input_vector~combout\(4) $ (\input_vector~combout\(5))))) # (!\input_vector~combout\(7) & (\input_vector~combout\(6) & (\input_vector~combout\(4) $ 
-- (\input_vector~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datab => \input_vector~combout\(7),
	datac => \input_vector~combout\(6),
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter_inst|quad2|fa4|co~0_combout\);

-- Location: LC_X7_Y7_N8
\counter_inst|quad1|fa2|co~0\ : maxv_lcell
-- Equation(s):
-- \counter_inst|quad1|fa2|co~0_combout\ = (((\input_vector~combout\(8) & \input_vector~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \input_vector~combout\(8),
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter_inst|quad1|fa2|co~0_combout\);

-- Location: LC_X7_Y7_N9
\counter_inst|quad0|fa4|co~0\ : maxv_lcell
-- Equation(s):
-- \counter_inst|quad0|fa4|co~0_combout\ = (\input_vector~combout\(12) & (\input_vector~combout\(13) & (\input_vector~combout\(14) & \input_vector~combout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(12),
	datab => \input_vector~combout\(13),
	datac => \input_vector~combout\(14),
	datad => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter_inst|quad0|fa4|co~0_combout\);

-- Location: LC_X7_Y7_N1
\counter_inst|quad1|fa4|co~0\ : maxv_lcell
-- Equation(s):
-- \counter_inst|quad1|fa4|co~0_combout\ = (\input_vector~combout\(10) & ((\input_vector~combout\(11)) # (\input_vector~combout\(8) $ (\input_vector~combout\(9))))) # (!\input_vector~combout\(10) & (\input_vector~combout\(11) & (\input_vector~combout\(8) $ 
-- (\input_vector~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datab => \input_vector~combout\(10),
	datac => \input_vector~combout\(11),
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter_inst|quad1|fa4|co~0_combout\);

-- Location: LC_X7_Y7_N2
\counter_inst|adder1|bit_2|co~0\ : maxv_lcell
-- Equation(s):
-- \counter_inst|adder1|bit_2|co~0_combout\ = (\counter_inst|quad0|fa4|add_instance_s0_2|s~0_combout\ & ((\counter_inst|quad1|fa4|add_instance_s0_2|s~0_combout\) # ((\counter_inst|quad0|fa3|add_instance_s0_1|s~0_combout\ & 
-- \counter_inst|quad1|fa3|add_instance_s0_1|s~0_combout\)))) # (!\counter_inst|quad0|fa4|add_instance_s0_2|s~0_combout\ & (\counter_inst|quad0|fa3|add_instance_s0_1|s~0_combout\ & (\counter_inst|quad1|fa4|add_instance_s0_2|s~0_combout\ & 
-- \counter_inst|quad1|fa3|add_instance_s0_1|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_inst|quad0|fa3|add_instance_s0_1|s~0_combout\,
	datab => \counter_inst|quad0|fa4|add_instance_s0_2|s~0_combout\,
	datac => \counter_inst|quad1|fa4|add_instance_s0_2|s~0_combout\,
	datad => \counter_inst|quad1|fa3|add_instance_s0_1|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter_inst|adder1|bit_2|co~0_combout\);

-- Location: LC_X7_Y7_N3
\counter_inst|adder1|bit_3|add_instance_s0_2|s~0\ : maxv_lcell
-- Equation(s):
-- \counter_inst|adder1|bit_3|add_instance_s0_2|s~0_combout\ = \counter_inst|quad0|fa4|co~0_combout\ $ (\counter_inst|adder1|bit_2|co~0_combout\ $ (((\counter_inst|quad1|fa2|co~0_combout\ & \counter_inst|quad1|fa4|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "936c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_inst|quad1|fa2|co~0_combout\,
	datab => \counter_inst|quad0|fa4|co~0_combout\,
	datac => \counter_inst|quad1|fa4|co~0_combout\,
	datad => \counter_inst|adder1|bit_2|co~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter_inst|adder1|bit_3|add_instance_s0_2|s~0_combout\);

-- Location: LC_X12_Y6_N8
\counter_inst|adder2|bit_2|co~0\ : maxv_lcell
-- Equation(s):
-- \counter_inst|adder2|bit_2|co~0_combout\ = (\counter_inst|adder1|bit_2|add_instance_s0_2|s~0_combout\ & ((\counter_inst|quad2|fa4|add_instance_s0_2|s~0_combout\) # ((\counter_inst|quad2|fa3|add_instance_s0_1|s~0_combout\ & 
-- \counter_inst|adder1|bit_1|add_instance_s0_1|s~0_combout\)))) # (!\counter_inst|adder1|bit_2|add_instance_s0_2|s~0_combout\ & (\counter_inst|quad2|fa3|add_instance_s0_1|s~0_combout\ & (\counter_inst|adder1|bit_1|add_instance_s0_1|s~0_combout\ & 
-- \counter_inst|quad2|fa4|add_instance_s0_2|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f880",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_inst|quad2|fa3|add_instance_s0_1|s~0_combout\,
	datab => \counter_inst|adder1|bit_1|add_instance_s0_1|s~0_combout\,
	datac => \counter_inst|adder1|bit_2|add_instance_s0_2|s~0_combout\,
	datad => \counter_inst|quad2|fa4|add_instance_s0_2|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter_inst|adder2|bit_2|co~0_combout\);

-- Location: LC_X16_Y3_N2
\counter_inst|quad2|fa2|co~0\ : maxv_lcell
-- Equation(s):
-- \counter_inst|quad2|fa2|co~0_combout\ = ((\input_vector~combout\(5) & ((\input_vector~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(5),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter_inst|quad2|fa2|co~0_combout\);

-- Location: LC_X16_Y3_N4
\counter_inst|adder2|bit_3|add_instance_s0_2|s~0\ : maxv_lcell
-- Equation(s):
-- \counter_inst|adder2|bit_3|add_instance_s0_2|s~0_combout\ = \counter_inst|adder1|bit_3|add_instance_s0_2|s~0_combout\ $ (\counter_inst|adder2|bit_2|co~0_combout\ $ (((\counter_inst|quad2|fa4|co~0_combout\ & \counter_inst|quad2|fa2|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "963c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_inst|quad2|fa4|co~0_combout\,
	datab => \counter_inst|adder1|bit_3|add_instance_s0_2|s~0_combout\,
	datac => \counter_inst|adder2|bit_2|co~0_combout\,
	datad => \counter_inst|quad2|fa2|co~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter_inst|adder2|bit_3|add_instance_s0_2|s~0_combout\);

-- Location: LC_X12_Y7_N5
\counter_inst|adder3|bit_3|add_instance_s0_2|s~0\ : maxv_lcell
-- Equation(s):
-- \counter_inst|adder3|bit_3|add_instance_s0_2|s~0_combout\ = \counter_inst|adder3|bit_2|co~0_combout\ $ (\counter_inst|adder2|bit_3|add_instance_s0_2|s~0_combout\ $ (((\counter_inst|quad3|fa2|co~0_combout\ & \counter_inst|quad3|fa4|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "936c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_inst|quad3|fa2|co~0_combout\,
	datab => \counter_inst|adder3|bit_2|co~0_combout\,
	datac => \counter_inst|quad3|fa4|co~0_combout\,
	datad => \counter_inst|adder2|bit_3|add_instance_s0_2|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter_inst|adder3|bit_3|add_instance_s0_2|s~0_combout\);

-- Location: LC_X16_Y3_N9
\counter_inst|adder2|bit_3|co~0\ : maxv_lcell
-- Equation(s):
-- \counter_inst|adder2|bit_3|co~0_combout\ = (\counter_inst|adder1|bit_3|add_instance_s0_2|s~0_combout\ & ((\counter_inst|adder2|bit_2|co~0_combout\) # ((\counter_inst|quad2|fa4|co~0_combout\ & \counter_inst|quad2|fa2|co~0_combout\)))) # 
-- (!\counter_inst|adder1|bit_3|add_instance_s0_2|s~0_combout\ & (\counter_inst|quad2|fa4|co~0_combout\ & (\counter_inst|adder2|bit_2|co~0_combout\ & \counter_inst|quad2|fa2|co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_inst|quad2|fa4|co~0_combout\,
	datab => \counter_inst|adder1|bit_3|add_instance_s0_2|s~0_combout\,
	datac => \counter_inst|adder2|bit_2|co~0_combout\,
	datad => \counter_inst|quad2|fa2|co~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter_inst|adder2|bit_3|co~0_combout\);

-- Location: LC_X7_Y7_N7
\counter_inst|adder1|bit_3|co~0\ : maxv_lcell
-- Equation(s):
-- \counter_inst|adder1|bit_3|co~0_combout\ = (\counter_inst|quad0|fa4|co~0_combout\ & ((\counter_inst|adder1|bit_2|co~0_combout\) # ((\counter_inst|quad1|fa2|co~0_combout\ & \counter_inst|quad1|fa4|co~0_combout\)))) # (!\counter_inst|quad0|fa4|co~0_combout\ 
-- & (\counter_inst|quad1|fa2|co~0_combout\ & (\counter_inst|quad1|fa4|co~0_combout\ & \counter_inst|adder1|bit_2|co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_inst|quad1|fa2|co~0_combout\,
	datab => \counter_inst|quad0|fa4|co~0_combout\,
	datac => \counter_inst|quad1|fa4|co~0_combout\,
	datad => \counter_inst|adder1|bit_2|co~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter_inst|adder1|bit_3|co~0_combout\);

-- Location: LC_X12_Y7_N9
\counter_inst|adder3|bit_3|co~0\ : maxv_lcell
-- Equation(s):
-- \counter_inst|adder3|bit_3|co~0_combout\ = (\counter_inst|adder3|bit_2|co~0_combout\ & ((\counter_inst|adder2|bit_3|add_instance_s0_2|s~0_combout\) # ((\counter_inst|quad3|fa2|co~0_combout\ & \counter_inst|quad3|fa4|co~0_combout\)))) # 
-- (!\counter_inst|adder3|bit_2|co~0_combout\ & (\counter_inst|quad3|fa2|co~0_combout\ & (\counter_inst|quad3|fa4|co~0_combout\ & \counter_inst|adder2|bit_3|add_instance_s0_2|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_inst|quad3|fa2|co~0_combout\,
	datab => \counter_inst|adder3|bit_2|co~0_combout\,
	datac => \counter_inst|quad3|fa4|co~0_combout\,
	datad => \counter_inst|adder2|bit_3|add_instance_s0_2|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter_inst|adder3|bit_3|co~0_combout\);

-- Location: LC_X12_Y7_N8
\counter_inst|adder3|bit_4|add_instance_s0_2|s~0\ : maxv_lcell
-- Equation(s):
-- \counter_inst|adder3|bit_4|add_instance_s0_2|s~0_combout\ = \counter_inst|adder2|bit_3|co~0_combout\ $ (((\counter_inst|adder1|bit_3|co~0_combout\ $ (\counter_inst|adder3|bit_3|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_inst|adder2|bit_3|co~0_combout\,
	datac => \counter_inst|adder1|bit_3|co~0_combout\,
	datad => \counter_inst|adder3|bit_3|co~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter_inst|adder3|bit_4|add_instance_s0_2|s~0_combout\);

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \counter_inst|adder3|bit_1|add_instance_s0_1|s~0_combout\,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \counter_inst|adder3|bit_2|add_instance_s0_2|s~0_combout\,
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \counter_inst|adder3|bit_3|add_instance_s0_2|s~0_combout\,
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \counter_inst|adder3|bit_4|add_instance_s0_2|s~0_combout\,
	oe => VCC,
	padio => ww_output_vector(3));
END structure;


