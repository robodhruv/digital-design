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

-- DATE "03/10/2017 14:27:13"

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
	input_vector : IN std_logic_vector(6 DOWNTO 0);
	output_vector : BUFFER std_logic_vector(0 DOWNTO 0)
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
SIGNAL ww_input_vector : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(0 DOWNTO 0);
SIGNAL \T|d0|master|qsig~1_combout\ : std_logic;
SIGNAL \B|A5b|AA4|c~0_combout\ : std_logic;
SIGNAL \T|d2|slave|qsig~1_combout\ : std_logic;
SIGNAL \G|d0|master|qsig~1_combout\ : std_logic;
SIGNAL \T|d2|master|qsig~0_combout\ : std_logic;
SIGNAL \T|d2|slave|qsig~0_combout\ : std_logic;
SIGNAL \T|d0|master|qsig~2_combout\ : std_logic;
SIGNAL \G|d0|master|qsig~0_combout\ : std_logic;
SIGNAL \T|d0|master|qsig~0_combout\ : std_logic;
SIGNAL \T|d0|master|qsig~3_combout\ : std_logic;
SIGNAL \T|d0|slave|qsig~0_combout\ : std_logic;
SIGNAL \T|A7|c~0_combout\ : std_logic;
SIGNAL \G|A53|AA4|c~0_combout\ : std_logic;
SIGNAL \B|d1|master|qsig~0_combout\ : std_logic;
SIGNAL \B|d1|master|qsig~1_combout\ : std_logic;
SIGNAL \B|d1|master|qsig~2_combout\ : std_logic;
SIGNAL \B|d1|master|qsig~3_combout\ : std_logic;
SIGNAL \B|d1|master|qsig~4_combout\ : std_logic;
SIGNAL \B|d1|slave|qsig~0_combout\ : std_logic;
SIGNAL \B|d0|master|qsig~0_combout\ : std_logic;
SIGNAL \B|A13|c~1_combout\ : std_logic;
SIGNAL \B|d0|master|qsig~1_combout\ : std_logic;
SIGNAL \B|d0|master|qsig~2_combout\ : std_logic;
SIGNAL \B|d0|slave|qsig~0_combout\ : std_logic;
SIGNAL \B|A13|c~0_combout\ : std_logic;
SIGNAL \K|A5f|AA4|c~0_combout\ : std_logic;
SIGNAL \G|A52|AA4|c~0_combout\ : std_logic;
SIGNAL \G|d1|master|qsig~2_combout\ : std_logic;
SIGNAL \G|d1|master|qsig~4_combout\ : std_logic;
SIGNAL \G|d1|master|qsig~3_combout\ : std_logic;
SIGNAL \G|d1|slave|qsig~0_combout\ : std_logic;
SIGNAL \G|d0|master|qsig~2_combout\ : std_logic;
SIGNAL \G|d0|slave|qsig~1_combout\ : std_logic;
SIGNAL \G|d0|master|qsig~3_combout\ : std_logic;
SIGNAL \G|d0|master|qsig~4_combout\ : std_logic;
SIGNAL \G|d0|master|qsig~5_combout\ : std_logic;
SIGNAL \G|d0|slave|qsig~0_combout\ : std_logic;
SIGNAL \G|A8|c~0_combout\ : std_logic;
SIGNAL \K|d0|master|qsig~0_combout\ : std_logic;
SIGNAL \B|A5b|AA4|c~1_combout\ : std_logic;
SIGNAL \K|d2|master|qsig~2_combout\ : std_logic;
SIGNAL \K|d2|master|qsig~3_combout\ : std_logic;
SIGNAL \K|d2|master|qsig~4_combout\ : std_logic;
SIGNAL \K|d2|slave|qsig~0_combout\ : std_logic;
SIGNAL \K|d0|master|qsig~1_combout\ : std_logic;
SIGNAL \K|d0|master|qsig~2_combout\ : std_logic;
SIGNAL \K|d0|slave|qsig~0_combout\ : std_logic;
SIGNAL \output_vector~0_combout\ : std_logic;
SIGNAL \output_vector~1_combout\ : std_logic;
SIGNAL \output_vector~2_combout\ : std_logic;
SIGNAL \output_vector~3_combout\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(6 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: LC_X2_Y8_N8
\T|d0|master|qsig~1\ : maxv_lcell
-- Equation(s):
-- \T|d0|master|qsig~1_combout\ = (\input_vector~combout\(5) & (((\T|d0|master|qsig~3_combout\)))) # (!\input_vector~combout\(5) & ((\input_vector~combout\(6)) # ((!\T|d0|slave|qsig~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4f5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \input_vector~combout\(6),
	datac => \T|d0|master|qsig~3_combout\,
	datad => \T|d0|slave|qsig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \T|d0|master|qsig~1_combout\);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: LC_X8_Y9_N9
\B|A5b|AA4|c~0\ : maxv_lcell
-- Equation(s):
-- \B|A5b|AA4|c~0_combout\ = (!\input_vector~combout\(0) & (!\input_vector~combout\(2) & (!\input_vector~combout\(3) & \input_vector~combout\(1))))

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
	dataa => \input_vector~combout\(0),
	datab => \input_vector~combout\(2),
	datac => \input_vector~combout\(3),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \B|A5b|AA4|c~0_combout\);

-- Location: LC_X2_Y7_N7
\T|d2|slave|qsig~1\ : maxv_lcell
-- Equation(s):
-- \T|d2|slave|qsig~1_combout\ = (((\input_vector~combout\(5) & \T|d2|master|qsig~0_combout\)))

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
	datac => \input_vector~combout\(5),
	datad => \T|d2|master|qsig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \T|d2|slave|qsig~1_combout\);

-- Location: LC_X1_Y7_N5
\G|d0|master|qsig~1\ : maxv_lcell
-- Equation(s):
-- \G|d0|master|qsig~1_combout\ = (((!\input_vector~combout\(6) & !\input_vector~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \input_vector~combout\(6),
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \G|d0|master|qsig~1_combout\);

-- Location: LC_X2_Y8_N0
\T|d2|master|qsig~0\ : maxv_lcell
-- Equation(s):
-- \T|d2|master|qsig~0_combout\ = (\T|d2|slave|qsig~1_combout\) # ((\G|d0|master|qsig~1_combout\ & ((\T|d0|slave|qsig~0_combout\) # (!\T|d0|master|qsig~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T|d2|slave|qsig~1_combout\,
	datab => \G|d0|master|qsig~1_combout\,
	datac => \T|d0|slave|qsig~0_combout\,
	datad => \T|d0|master|qsig~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \T|d2|master|qsig~0_combout\);

-- Location: LC_X2_Y8_N1
\T|d2|slave|qsig~0\ : maxv_lcell
-- Equation(s):
-- \T|d2|slave|qsig~0_combout\ = ((GLOBAL(\input_vector~combout\(5)) & ((\T|d2|master|qsig~0_combout\))) # (!GLOBAL(\input_vector~combout\(5)) & (\T|d2|slave|qsig~0_combout\)))

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
	datab => \T|d2|slave|qsig~0_combout\,
	datac => \T|d2|master|qsig~0_combout\,
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \T|d2|slave|qsig~0_combout\);

-- Location: LC_X2_Y8_N2
\T|d0|master|qsig~2\ : maxv_lcell
-- Equation(s):
-- \T|d0|master|qsig~2_combout\ = ((!\T|d2|slave|qsig~0_combout\ & ((!\B|A5b|AA4|c~0_combout\) # (!\input_vector~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "003f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(4),
	datac => \B|A5b|AA4|c~0_combout\,
	datad => \T|d2|slave|qsig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \T|d0|master|qsig~2_combout\);

-- Location: LC_X1_Y7_N1
\G|d0|master|qsig~0\ : maxv_lcell
-- Equation(s):
-- \G|d0|master|qsig~0_combout\ = (\input_vector~combout\(2) & (((!\input_vector~combout\(3) & !\input_vector~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datac => \input_vector~combout\(3),
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \G|d0|master|qsig~0_combout\);

-- Location: LC_X2_Y8_N4
\T|d0|master|qsig~0\ : maxv_lcell
-- Equation(s):
-- \T|d0|master|qsig~0_combout\ = (!\input_vector~combout\(0) & (\input_vector~combout\(4) & (\G|d0|master|qsig~0_combout\ & !\input_vector~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \input_vector~combout\(4),
	datac => \G|d0|master|qsig~0_combout\,
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \T|d0|master|qsig~0_combout\);

-- Location: LC_X2_Y8_N5
\T|d0|master|qsig~3\ : maxv_lcell
-- Equation(s):
-- \T|d0|master|qsig~3_combout\ = (\T|d0|master|qsig~1_combout\) # ((\T|d0|master|qsig~0_combout\) # ((\T|d0|master|qsig~2_combout\ & !\input_vector~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffae",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T|d0|master|qsig~1_combout\,
	datab => \T|d0|master|qsig~2_combout\,
	datac => \input_vector~combout\(5),
	datad => \T|d0|master|qsig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \T|d0|master|qsig~3_combout\);

-- Location: LC_X2_Y8_N7
\T|d0|slave|qsig~0\ : maxv_lcell
-- Equation(s):
-- \T|d0|slave|qsig~0_combout\ = ((GLOBAL(\input_vector~combout\(5)) & ((\T|d0|master|qsig~3_combout\))) # (!GLOBAL(\input_vector~combout\(5)) & (\T|d0|slave|qsig~0_combout\)))

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
	datab => \T|d0|slave|qsig~0_combout\,
	datac => \T|d0|master|qsig~3_combout\,
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \T|d0|slave|qsig~0_combout\);

-- Location: LC_X5_Y9_N2
\T|A7|c~0\ : maxv_lcell
-- Equation(s):
-- \T|A7|c~0_combout\ = (\input_vector~combout\(4) & (!\input_vector~combout\(6) & (\T|d0|slave|qsig~0_combout\ & \B|A5b|AA4|c~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datab => \input_vector~combout\(6),
	datac => \T|d0|slave|qsig~0_combout\,
	datad => \B|A5b|AA4|c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \T|A7|c~0_combout\);

-- Location: LC_X8_Y9_N4
\G|A53|AA4|c~0\ : maxv_lcell
-- Equation(s):
-- \G|A53|AA4|c~0_combout\ = (!\input_vector~combout\(4) & (\input_vector~combout\(2) & (\input_vector~combout\(3) & \input_vector~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datab => \input_vector~combout\(2),
	datac => \input_vector~combout\(3),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \G|A53|AA4|c~0_combout\);

-- Location: LC_X8_Y9_N6
\B|d1|master|qsig~0\ : maxv_lcell
-- Equation(s):
-- \B|d1|master|qsig~0_combout\ = (\input_vector~combout\(0) & (\input_vector~combout\(3) & (!\input_vector~combout\(4) & !\input_vector~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(4),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \B|d1|master|qsig~0_combout\);

-- Location: LC_X1_Y7_N6
\B|d1|master|qsig~1\ : maxv_lcell
-- Equation(s):
-- \B|d1|master|qsig~1_combout\ = (\G|d0|master|qsig~1_combout\ & (((\B|d0|slave|qsig~0_combout\) # (!\B|d1|master|qsig~0_combout\)) # (!\input_vector~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f700",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \B|d1|master|qsig~0_combout\,
	datac => \B|d0|slave|qsig~0_combout\,
	datad => \G|d0|master|qsig~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \B|d1|master|qsig~1_combout\);

-- Location: LC_X1_Y7_N7
\B|d1|master|qsig~2\ : maxv_lcell
-- Equation(s):
-- \B|d1|master|qsig~2_combout\ = (\input_vector~combout\(5) & ((\B|d1|master|qsig~4_combout\) # ((\B|d1|slave|qsig~0_combout\ & \B|d1|master|qsig~1_combout\)))) # (!\input_vector~combout\(5) & (((\B|d1|slave|qsig~0_combout\ & 
-- \B|d1|master|qsig~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \B|d1|master|qsig~4_combout\,
	datac => \B|d1|slave|qsig~0_combout\,
	datad => \B|d1|master|qsig~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \B|d1|master|qsig~2_combout\);

-- Location: LC_X2_Y7_N8
\B|d1|master|qsig~3\ : maxv_lcell
-- Equation(s):
-- \B|d1|master|qsig~3_combout\ = ((!\input_vector~combout\(5) & ((\input_vector~combout\(6)) # (\B|d0|slave|qsig~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(6),
	datac => \input_vector~combout\(5),
	datad => \B|d0|slave|qsig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \B|d1|master|qsig~3_combout\);

-- Location: LC_X2_Y7_N9
\B|d1|master|qsig~4\ : maxv_lcell
-- Equation(s):
-- \B|d1|master|qsig~4_combout\ = (\B|d1|master|qsig~2_combout\) # ((!\input_vector~combout\(4) & (\B|A5b|AA4|c~0_combout\ & \B|d1|master|qsig~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datab => \B|d1|master|qsig~2_combout\,
	datac => \B|A5b|AA4|c~0_combout\,
	datad => \B|d1|master|qsig~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \B|d1|master|qsig~4_combout\);

-- Location: LC_X2_Y7_N3
\B|d1|slave|qsig~0\ : maxv_lcell
-- Equation(s):
-- \B|d1|slave|qsig~0_combout\ = ((GLOBAL(\input_vector~combout\(5)) & (\B|d1|master|qsig~4_combout\)) # (!GLOBAL(\input_vector~combout\(5)) & ((\B|d1|slave|qsig~0_combout\))))

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
	datab => \B|d1|master|qsig~4_combout\,
	datac => \B|d1|slave|qsig~0_combout\,
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \B|d1|slave|qsig~0_combout\);

-- Location: LC_X2_Y7_N0
\B|d0|master|qsig~0\ : maxv_lcell
-- Equation(s):
-- \B|d0|master|qsig~0_combout\ = ((\G|A53|AA4|c~0_combout\ & (\input_vector~combout\(0) & \B|d1|slave|qsig~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \G|A53|AA4|c~0_combout\,
	datac => \input_vector~combout\(0),
	datad => \B|d1|slave|qsig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \B|d0|master|qsig~0_combout\);

-- Location: LC_X2_Y7_N4
\B|A13|c~1\ : maxv_lcell
-- Equation(s):
-- \B|A13|c~1_combout\ = ((\B|A5b|AA4|c~0_combout\ & (!\input_vector~combout\(4) & !\B|d1|slave|qsig~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \B|A5b|AA4|c~0_combout\,
	datac => \input_vector~combout\(4),
	datad => \B|d1|slave|qsig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \B|A13|c~1_combout\);

-- Location: LC_X2_Y7_N5
\B|d0|master|qsig~1\ : maxv_lcell
-- Equation(s):
-- \B|d0|master|qsig~1_combout\ = ((\B|A13|c~1_combout\) # ((\B|d0|slave|qsig~0_combout\ & !\B|d0|master|qsig~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \B|d0|slave|qsig~0_combout\,
	datac => \B|d0|master|qsig~0_combout\,
	datad => \B|A13|c~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \B|d0|master|qsig~1_combout\);

-- Location: LC_X2_Y7_N6
\B|d0|master|qsig~2\ : maxv_lcell
-- Equation(s):
-- \B|d0|master|qsig~2_combout\ = (GLOBAL(\input_vector~combout\(5)) & (\B|d0|master|qsig~2_combout\)) # (!GLOBAL(\input_vector~combout\(5)) & (((\input_vector~combout\(6)) # (\B|d0|master|qsig~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbb8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B|d0|master|qsig~2_combout\,
	datab => \input_vector~combout\(5),
	datac => \input_vector~combout\(6),
	datad => \B|d0|master|qsig~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \B|d0|master|qsig~2_combout\);

-- Location: LC_X2_Y7_N2
\B|d0|slave|qsig~0\ : maxv_lcell
-- Equation(s):
-- \B|d0|slave|qsig~0_combout\ = ((GLOBAL(\input_vector~combout\(5)) & ((\B|d0|master|qsig~2_combout\))) # (!GLOBAL(\input_vector~combout\(5)) & (\B|d0|slave|qsig~0_combout\)))

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
	datab => \B|d0|slave|qsig~0_combout\,
	datac => \B|d0|master|qsig~2_combout\,
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \B|d0|slave|qsig~0_combout\);

-- Location: LC_X2_Y8_N6
\B|A13|c~0\ : maxv_lcell
-- Equation(s):
-- \B|A13|c~0_combout\ = (((!\B|d0|slave|qsig~0_combout\ & !\input_vector~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \B|d0|slave|qsig~0_combout\,
	datad => \input_vector~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \B|A13|c~0_combout\);

-- Location: LC_X8_Y9_N8
\K|A5f|AA4|c~0\ : maxv_lcell
-- Equation(s):
-- \K|A5f|AA4|c~0_combout\ = (\input_vector~combout\(0) & (\input_vector~combout\(2) & (!\input_vector~combout\(3) & !\input_vector~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \input_vector~combout\(2),
	datac => \input_vector~combout\(3),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \K|A5f|AA4|c~0_combout\);

-- Location: LC_X8_Y9_N5
\G|A52|AA4|c~0\ : maxv_lcell
-- Equation(s):
-- \G|A52|AA4|c~0_combout\ = (((\input_vector~combout\(4) & \K|A5f|AA4|c~0_combout\)))

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
	datac => \input_vector~combout\(4),
	datad => \K|A5f|AA4|c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \G|A52|AA4|c~0_combout\);

-- Location: LC_X1_Y8_N9
\G|d1|master|qsig~2\ : maxv_lcell
-- Equation(s):
-- \G|d1|master|qsig~2_combout\ = (\input_vector~combout\(5) & ((\G|d1|master|qsig~3_combout\) # ((\G|A52|AA4|c~0_combout\ & \G|d0|master|qsig~2_combout\)))) # (!\input_vector~combout\(5) & (\G|A52|AA4|c~0_combout\ & ((\G|d0|master|qsig~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \G|A52|AA4|c~0_combout\,
	datac => \G|d1|master|qsig~3_combout\,
	datad => \G|d0|master|qsig~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \G|d1|master|qsig~2_combout\);

-- Location: LC_X1_Y8_N1
\G|d1|master|qsig~4\ : maxv_lcell
-- Equation(s):
-- \G|d1|master|qsig~4_combout\ = (!\input_vector~combout\(6) & (!\input_vector~combout\(5) & ((\input_vector~combout\(0)) # (!\G|A53|AA4|c~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000d",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G|A53|AA4|c~0_combout\,
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(6),
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \G|d1|master|qsig~4_combout\);

-- Location: LC_X1_Y8_N0
\G|d1|master|qsig~3\ : maxv_lcell
-- Equation(s):
-- \G|d1|master|qsig~3_combout\ = (\G|d1|master|qsig~2_combout\) # ((!\G|d0|slave|qsig~0_combout\ & (\G|d1|slave|qsig~0_combout\ & \G|d1|master|qsig~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G|d0|slave|qsig~0_combout\,
	datab => \G|d1|slave|qsig~0_combout\,
	datac => \G|d1|master|qsig~2_combout\,
	datad => \G|d1|master|qsig~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \G|d1|master|qsig~3_combout\);

-- Location: LC_X1_Y8_N7
\G|d1|slave|qsig~0\ : maxv_lcell
-- Equation(s):
-- \G|d1|slave|qsig~0_combout\ = ((GLOBAL(\input_vector~combout\(5)) & (\G|d1|master|qsig~3_combout\)) # (!GLOBAL(\input_vector~combout\(5)) & ((\G|d1|slave|qsig~0_combout\))))

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
	datab => \G|d1|master|qsig~3_combout\,
	datac => \G|d1|slave|qsig~0_combout\,
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \G|d1|slave|qsig~0_combout\);

-- Location: LC_X1_Y8_N8
\G|d0|master|qsig~2\ : maxv_lcell
-- Equation(s):
-- \G|d0|master|qsig~2_combout\ = (!\input_vector~combout\(5) & (!\G|d1|slave|qsig~0_combout\ & (!\input_vector~combout\(6) & \G|d0|slave|qsig~0_combout\)))

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
	dataa => \input_vector~combout\(5),
	datab => \G|d1|slave|qsig~0_combout\,
	datac => \input_vector~combout\(6),
	datad => \G|d0|slave|qsig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \G|d0|master|qsig~2_combout\);

-- Location: LC_X1_Y7_N8
\G|d0|slave|qsig~1\ : maxv_lcell
-- Equation(s):
-- \G|d0|slave|qsig~1_combout\ = (\input_vector~combout\(5) & (((\G|d0|master|qsig~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datad => \G|d0|master|qsig~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \G|d0|slave|qsig~1_combout\);

-- Location: LC_X1_Y8_N3
\G|d0|master|qsig~3\ : maxv_lcell
-- Equation(s):
-- \G|d0|master|qsig~3_combout\ = (\input_vector~combout\(0) & ((\input_vector~combout\(6)) # ((!\G|d1|slave|qsig~0_combout\ & !\G|d0|slave|qsig~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "888c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \input_vector~combout\(0),
	datac => \G|d1|slave|qsig~0_combout\,
	datad => \G|d0|slave|qsig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \G|d0|master|qsig~3_combout\);

-- Location: LC_X1_Y8_N4
\G|d0|master|qsig~4\ : maxv_lcell
-- Equation(s):
-- \G|d0|master|qsig~4_combout\ = (\input_vector~combout\(1) & (!\input_vector~combout\(4) & (\G|d0|master|qsig~0_combout\ & \G|d0|master|qsig~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(4),
	datac => \G|d0|master|qsig~0_combout\,
	datad => \G|d0|master|qsig~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \G|d0|master|qsig~4_combout\);

-- Location: LC_X1_Y8_N5
\G|d0|master|qsig~5\ : maxv_lcell
-- Equation(s):
-- \G|d0|master|qsig~5_combout\ = (\G|d0|slave|qsig~1_combout\) # ((\G|d0|master|qsig~4_combout\) # ((\G|d0|master|qsig~2_combout\ & !\G|A52|AA4|c~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffce",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G|d0|master|qsig~2_combout\,
	datab => \G|d0|slave|qsig~1_combout\,
	datac => \G|A52|AA4|c~0_combout\,
	datad => \G|d0|master|qsig~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \G|d0|master|qsig~5_combout\);

-- Location: LC_X1_Y8_N6
\G|d0|slave|qsig~0\ : maxv_lcell
-- Equation(s):
-- \G|d0|slave|qsig~0_combout\ = ((GLOBAL(\input_vector~combout\(5)) & (\G|d0|master|qsig~5_combout\)) # (!GLOBAL(\input_vector~combout\(5)) & ((\G|d0|slave|qsig~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G|d0|master|qsig~5_combout\,
	datac => \G|d0|slave|qsig~0_combout\,
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \G|d0|slave|qsig~0_combout\);

-- Location: LC_X2_Y8_N3
\G|A8|c~0\ : maxv_lcell
-- Equation(s):
-- \G|A8|c~0_combout\ = ((!\input_vector~combout\(6) & (!\G|d0|slave|qsig~0_combout\ & \G|d1|slave|qsig~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(6),
	datac => \G|d0|slave|qsig~0_combout\,
	datad => \G|d1|slave|qsig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \G|A8|c~0_combout\);

-- Location: LC_X8_Y9_N3
\K|d0|master|qsig~0\ : maxv_lcell
-- Equation(s):
-- \K|d0|master|qsig~0_combout\ = (\input_vector~combout\(3) & (!\input_vector~combout\(2) & (!\input_vector~combout\(4) & \input_vector~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(3),
	datab => \input_vector~combout\(2),
	datac => \input_vector~combout\(4),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \K|d0|master|qsig~0_combout\);

-- Location: LC_X8_Y9_N7
\B|A5b|AA4|c~1\ : maxv_lcell
-- Equation(s):
-- \B|A5b|AA4|c~1_combout\ = (!\input_vector~combout\(0) & (((!\input_vector~combout\(3) & \input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datac => \input_vector~combout\(3),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \B|A5b|AA4|c~1_combout\);

-- Location: LC_X8_Y10_N4
\K|d2|master|qsig~2\ : maxv_lcell
-- Equation(s):
-- \K|d2|master|qsig~2_combout\ = (\input_vector~combout\(2) & (\B|A5b|AA4|c~1_combout\ & ((\K|d0|slave|qsig~0_combout\) # (!\K|d2|slave|qsig~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \B|A5b|AA4|c~1_combout\,
	datac => \K|d2|slave|qsig~0_combout\,
	datad => \K|d0|slave|qsig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \K|d2|master|qsig~2_combout\);

-- Location: LC_X8_Y10_N8
\K|d2|master|qsig~3\ : maxv_lcell
-- Equation(s):
-- \K|d2|master|qsig~3_combout\ = (\input_vector~combout\(4) & (((\output_vector~0_combout\)))) # (!\input_vector~combout\(4) & ((\K|d2|master|qsig~2_combout\) # ((!\K|A5f|AA4|c~0_combout\ & \output_vector~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fb50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datab => \K|A5f|AA4|c~0_combout\,
	datac => \K|d2|master|qsig~2_combout\,
	datad => \output_vector~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \K|d2|master|qsig~3_combout\);

-- Location: LC_X8_Y10_N9
\K|d2|master|qsig~4\ : maxv_lcell
-- Equation(s):
-- \K|d2|master|qsig~4_combout\ = (GLOBAL(\input_vector~combout\(5)) & (\K|d2|master|qsig~4_combout\)) # (!GLOBAL(\input_vector~combout\(5)) & (((!\input_vector~combout\(6) & \K|d2|master|qsig~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8b88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \K|d2|master|qsig~4_combout\,
	datab => \input_vector~combout\(5),
	datac => \input_vector~combout\(6),
	datad => \K|d2|master|qsig~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \K|d2|master|qsig~4_combout\);

-- Location: LC_X8_Y10_N6
\K|d2|slave|qsig~0\ : maxv_lcell
-- Equation(s):
-- \K|d2|slave|qsig~0_combout\ = ((GLOBAL(\input_vector~combout\(5)) & ((\K|d2|master|qsig~4_combout\))) # (!GLOBAL(\input_vector~combout\(5)) & (\K|d2|slave|qsig~0_combout\)))

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
	datab => \K|d2|slave|qsig~0_combout\,
	datac => \K|d2|master|qsig~4_combout\,
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \K|d2|slave|qsig~0_combout\);

-- Location: LC_X8_Y10_N1
\K|d0|master|qsig~1\ : maxv_lcell
-- Equation(s):
-- \K|d0|master|qsig~1_combout\ = (\input_vector~combout\(6)) # ((\K|d0|master|qsig~0_combout\ & (\input_vector~combout\(1))) # (!\K|d0|master|qsig~0_combout\ & ((!\K|d2|slave|qsig~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8fd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \K|d0|master|qsig~0_combout\,
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(6),
	datad => \K|d2|slave|qsig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \K|d0|master|qsig~1_combout\);

-- Location: LC_X8_Y10_N2
\K|d0|master|qsig~2\ : maxv_lcell
-- Equation(s):
-- \K|d0|master|qsig~2_combout\ = (GLOBAL(\input_vector~combout\(5)) & (((\K|d0|master|qsig~2_combout\)))) # (!GLOBAL(\input_vector~combout\(5)) & (((\K|d0|master|qsig~1_combout\)) # (!\K|d0|slave|qsig~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0dd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \K|d0|slave|qsig~0_combout\,
	datab => \K|d0|master|qsig~1_combout\,
	datac => \K|d0|master|qsig~2_combout\,
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \K|d0|master|qsig~2_combout\);

-- Location: LC_X8_Y10_N3
\K|d0|slave|qsig~0\ : maxv_lcell
-- Equation(s):
-- \K|d0|slave|qsig~0_combout\ = ((GLOBAL(\input_vector~combout\(5)) & (\K|d0|master|qsig~2_combout\)) # (!GLOBAL(\input_vector~combout\(5)) & ((\K|d0|slave|qsig~0_combout\))))

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
	datab => \K|d0|master|qsig~2_combout\,
	datac => \K|d0|slave|qsig~0_combout\,
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \K|d0|slave|qsig~0_combout\);

-- Location: LC_X8_Y10_N7
\output_vector~0\ : maxv_lcell
-- Equation(s):
-- \output_vector~0_combout\ = (\K|d0|slave|qsig~0_combout\) # (((\K|d2|slave|qsig~0_combout\)))

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
	dataa => \K|d0|slave|qsig~0_combout\,
	datad => \K|d2|slave|qsig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \output_vector~0_combout\);

-- Location: LC_X8_Y10_N0
\output_vector~1\ : maxv_lcell
-- Equation(s):
-- \output_vector~1_combout\ = (\K|A5f|AA4|c~0_combout\ & (\output_vector~0_combout\ & (!\input_vector~combout\(6) & !\input_vector~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \K|A5f|AA4|c~0_combout\,
	datab => \output_vector~0_combout\,
	datac => \input_vector~combout\(6),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \output_vector~1_combout\);

-- Location: LC_X8_Y9_N1
\output_vector~2\ : maxv_lcell
-- Equation(s):
-- \output_vector~2_combout\ = (\output_vector~1_combout\) # ((!\input_vector~combout\(0) & (\G|A8|c~0_combout\ & \G|A53|AA4|c~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \G|A8|c~0_combout\,
	datac => \G|A53|AA4|c~0_combout\,
	datad => \output_vector~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \output_vector~2_combout\);

-- Location: LC_X8_Y9_N2
\output_vector~3\ : maxv_lcell
-- Equation(s):
-- \output_vector~3_combout\ = (\T|A7|c~0_combout\) # ((\output_vector~2_combout\) # ((\B|A13|c~0_combout\ & \B|A13|c~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T|A7|c~0_combout\,
	datab => \B|A13|c~0_combout\,
	datac => \B|A13|c~1_combout\,
	datad => \output_vector~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \output_vector~3_combout\);

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \output_vector~3_combout\,
	oe => VCC,
	padio => ww_output_vector(0));
END structure;


