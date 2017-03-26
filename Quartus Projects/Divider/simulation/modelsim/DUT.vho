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

-- DATE "03/25/2017 19:08:35"

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
	input_vector : IN std_logic_vector(35 DOWNTO 0);
	output_vector : BUFFER std_logic_vector(33 DOWNTO 0)
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
SIGNAL ww_input_vector : std_logic_vector(35 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(33 DOWNTO 0);
SIGNAL \divide|inits~0_combout\ : std_logic;
SIGNAL \divide|output_ready~0_combout\ : std_logic;
SIGNAL \divide|countdown_predicate|s~0_combout\ : std_logic;
SIGNAL \divide|countdown_predicate|s~1_combout\ : std_logic;
SIGNAL \divide|countdown_predicate|s~6_combout\ : std_logic;
SIGNAL \divide|countdown_predicate|s~2_combout\ : std_logic;
SIGNAL \divide|countdown_predicate|s~3_combout\ : std_logic;
SIGNAL \divide|countdown_predicate|s~4_combout\ : std_logic;
SIGNAL \divide|countdown_predicate|s~5_combout\ : std_logic;
SIGNAL \divide|d0|master|qsig~0_combout\ : std_logic;
SIGNAL \divide|compute_done~combout\ : std_logic;
SIGNAL \divide|d1|master|qsig~0_combout\ : std_logic;
SIGNAL \divide|d1|master|qsig~1_combout\ : std_logic;
SIGNAL \divide|d1|slave|qsig~0_combout\ : std_logic;
SIGNAL \divide|nq0~0_combout\ : std_logic;
SIGNAL \divide|d0|master|qsig~1_combout\ : std_logic;
SIGNAL \divide|d0|master|qsig~2_combout\ : std_logic;
SIGNAL \divide|d0|slave|qsig~0_combout\ : std_logic;
SIGNAL \divide|output_ready~combout\ : std_logic;
SIGNAL \divide|fullsub|sub1|bit_2|do\ : std_logic;
SIGNAL \divide|fullsub|sub1|bit_2|out_instance_2|s~0\ : std_logic;
SIGNAL \divide|reset_R|mux82|mux_1|b~0\ : std_logic;
SIGNAL \divide|fullsub|sub1|bit_3|do\ : std_logic;
SIGNAL \divide|fullsub|sub1|bit_3|out_instance_2|s~0\ : std_logic;
SIGNAL \divide|reset_R|mux82|mux_2|b~0\ : std_logic;
SIGNAL \divide|fullsub|sub1|bit_4|do\ : std_logic;
SIGNAL \divide|fullsub|sub1|bit_4|out_instance_2|s~0\ : std_logic;
SIGNAL \divide|reset_R|mux82|mux_3|b~0\ : std_logic;
SIGNAL \divide|fullsub|sub1|bit_5|do\ : std_logic;
SIGNAL \divide|fullsub|sub1|bit_5|out_instance_2|s~0\ : std_logic;
SIGNAL \divide|reset_R|mux82|mux_4|b~0\ : std_logic;
SIGNAL \divide|fullsub|sub1|bit_6|do\ : std_logic;
SIGNAL \divide|fullsub|sub1|bit_6|out_instance_2|s~0\ : std_logic;
SIGNAL \divide|reset_R|mux82|mux_5|b~0\ : std_logic;
SIGNAL \divide|fullsub|sub1|bit_7|do\ : std_logic;
SIGNAL \divide|fullsub|sub1|bit_7|out_instance_2|s~0\ : std_logic;
SIGNAL \divide|reset_R|mux82|mux_6|b~0\ : std_logic;
SIGNAL \divide|fullsub|sub1|bit_8|do\ : std_logic;
SIGNAL \divide|fullsub|sub1|bit_8|out_instance_2|s~0\ : std_logic;
SIGNAL \divide|reset_R|mux82|mux_7|b~0\ : std_logic;
SIGNAL \divide|fullsub|sub2|bit_1|do\ : std_logic;
SIGNAL \divide|fullsub|sub2|bit_1|out_instance_2|s~0\ : std_logic;
SIGNAL \divide|reset_R|mux81|mux_0|b~0\ : std_logic;
SIGNAL \divide|fullsub|sub2|bit_2|do\ : std_logic;
SIGNAL \divide|fullsub|sub2|bit_2|out_instance_2|s~0\ : std_logic;
SIGNAL \divide|reset_R|mux81|mux_1|b~0\ : std_logic;
SIGNAL \divide|fullsub|sub2|bit_3|do\ : std_logic;
SIGNAL \divide|fullsub|sub2|bit_3|out_instance_2|s~0\ : std_logic;
SIGNAL \divide|reset_R|mux81|mux_2|b~0\ : std_logic;
SIGNAL \divide|fullsub|sub2|bit_4|do\ : std_logic;
SIGNAL \divide|fullsub|sub2|bit_4|out_instance_2|s~0\ : std_logic;
SIGNAL \divide|reset_R|mux81|mux_3|b~0\ : std_logic;
SIGNAL \divide|fullsub|sub2|bit_5|do\ : std_logic;
SIGNAL \divide|fullsub|sub2|bit_5|out_instance_2|s~0\ : std_logic;
SIGNAL \divide|reset_R|mux81|mux_4|b~0\ : std_logic;
SIGNAL \divide|fullsub|sub2|bit_6|do\ : std_logic;
SIGNAL \divide|fullsub|sub2|bit_6|out_instance_2|s~0\ : std_logic;
SIGNAL \divide|reset_R|mux81|mux_5|b~0\ : std_logic;
SIGNAL \divide|fullsub|sub2|bit_7|out_instance_2|s~0\ : std_logic;
SIGNAL \divide|reset_R|mux81|mux_6|b~0\ : std_logic;
SIGNAL \divide|fullsub|sub2|bit_7|do\ : std_logic;
SIGNAL \divide|fullsub|sub2|bit_8|do\ : std_logic;
SIGNAL \divide|reset_R|mux82|mux_0|b~0\ : std_logic;
SIGNAL \divide|ready|master|qsig~0_combout\ : std_logic;
SIGNAL \divide|ready|slave|qsig~0_combout\ : std_logic;
SIGNAL \divide|ready|q~combout\ : std_logic;
SIGNAL \divide|update_count|DOUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \divide|load_divisor|DOUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \divide|update_R|DOUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \divide|update_quotient|DOUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \divide|update_remainder|DOUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \divide|load_dividend|DOUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \input_vector~combout\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \divide|ALT_INV_output_ready~combout\ : std_logic;

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\divide|ALT_INV_output_ready~combout\ <= NOT \divide|output_ready~combout\;

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[34]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(34),
	combout => \input_vector~combout\(34));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[35]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(35),
	combout => \input_vector~combout\(35));

-- Location: LC_X3_Y8_N5
\divide|inits~0\ : maxv_lcell
-- Equation(s):
-- \divide|inits~0_combout\ = (!\input_vector~combout\(34) & (((\divide|d1|slave|qsig~0_combout\) # (\divide|d0|slave|qsig~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5550",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(34),
	datac => \divide|d1|slave|qsig~0_combout\,
	datad => \divide|d0|slave|qsig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|inits~0_combout\);

-- Location: LC_X2_Y8_N5
\divide|output_ready~0\ : maxv_lcell
-- Equation(s):
-- \divide|output_ready~0_combout\ = (((\input_vector~combout\(34)) # (!\divide|d1|slave|qsig~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \input_vector~combout\(34),
	datad => \divide|d1|slave|qsig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|output_ready~0_combout\);

-- Location: LC_X2_Y8_N2
\divide|update_count|DOUT[0]\ : maxv_lcell
-- Equation(s):
-- \divide|update_count|DOUT\(0) = DFFEAS(((\input_vector~combout\(34)) # ((!\divide|d0|slave|qsig~0_combout\ & !\divide|d1|slave|qsig~0_combout\))) # (!\divide|update_count|DOUT\(0)), GLOBAL(\input_vector~combout\(35)), VCC, , 
-- \divide|output_ready~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3f7",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	dataa => \divide|d0|slave|qsig~0_combout\,
	datab => \divide|update_count|DOUT\(0),
	datac => \input_vector~combout\(34),
	datad => \divide|d1|slave|qsig~0_combout\,
	aclr => GND,
	ena => \divide|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divide|update_count|DOUT\(0));

-- Location: LC_X4_Y8_N0
\divide|update_count|DOUT[1]\ : maxv_lcell
-- Equation(s):
-- \divide|update_count|DOUT\(1) = DFFEAS(((\divide|update_count|DOUT\(1) $ (!\divide|update_count|DOUT\(0))) # (!\divide|inits~0_combout\)), GLOBAL(\input_vector~combout\(35)), VCC, , \divide|output_ready~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f33f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	datab => \divide|inits~0_combout\,
	datac => \divide|update_count|DOUT\(1),
	datad => \divide|update_count|DOUT\(0),
	aclr => GND,
	ena => \divide|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divide|update_count|DOUT\(1));

-- Location: LC_X4_Y8_N3
\divide|update_count|DOUT[2]\ : maxv_lcell
-- Equation(s):
-- \divide|update_count|DOUT\(2) = DFFEAS((\divide|update_count|DOUT\(2) $ (((!\divide|update_count|DOUT\(0) & !\divide|update_count|DOUT\(1))))) # (!\divide|inits~0_combout\), GLOBAL(\input_vector~combout\(35)), VCC, , \divide|output_ready~0_combout\, , , , 
-- )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a9ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	dataa => \divide|update_count|DOUT\(2),
	datab => \divide|update_count|DOUT\(0),
	datac => \divide|update_count|DOUT\(1),
	datad => \divide|inits~0_combout\,
	aclr => GND,
	ena => \divide|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divide|update_count|DOUT\(2));

-- Location: LC_X4_Y8_N1
\divide|countdown_predicate|s~0\ : maxv_lcell
-- Equation(s):
-- \divide|countdown_predicate|s~0_combout\ = (!\divide|update_count|DOUT\(2) & (((!\divide|update_count|DOUT\(1) & !\divide|update_count|DOUT\(0)))))

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
	dataa => \divide|update_count|DOUT\(2),
	datac => \divide|update_count|DOUT\(1),
	datad => \divide|update_count|DOUT\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|countdown_predicate|s~0_combout\);

-- Location: LC_X4_Y8_N4
\divide|update_count|DOUT[3]\ : maxv_lcell
-- Equation(s):
-- \divide|update_count|DOUT\(3) = DFFEAS(((\divide|countdown_predicate|s~0_combout\ $ (\divide|update_count|DOUT\(3))) # (!\divide|inits~0_combout\)), GLOBAL(\input_vector~combout\(35)), VCC, , \divide|output_ready~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3cff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	datab => \divide|countdown_predicate|s~0_combout\,
	datac => \divide|update_count|DOUT\(3),
	datad => \divide|inits~0_combout\,
	aclr => GND,
	ena => \divide|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divide|update_count|DOUT\(3));

-- Location: LC_X4_Y8_N5
\divide|update_count|DOUT[4]\ : maxv_lcell
-- Equation(s):
-- \divide|update_count|DOUT\(4) = DFFEAS((\divide|update_count|DOUT\(4) $ (((\divide|countdown_predicate|s~0_combout\ & !\divide|update_count|DOUT\(3))))) # (!\divide|inits~0_combout\), GLOBAL(\input_vector~combout\(35)), VCC, , 
-- \divide|output_ready~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a6ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	dataa => \divide|update_count|DOUT\(4),
	datab => \divide|countdown_predicate|s~0_combout\,
	datac => \divide|update_count|DOUT\(3),
	datad => \divide|inits~0_combout\,
	aclr => GND,
	ena => \divide|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divide|update_count|DOUT\(4));

-- Location: LC_X4_Y8_N2
\divide|countdown_predicate|s~1\ : maxv_lcell
-- Equation(s):
-- \divide|countdown_predicate|s~1_combout\ = (!\divide|update_count|DOUT\(3) & (((!\divide|update_count|DOUT\(4) & \divide|countdown_predicate|s~0_combout\))))

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
	dataa => \divide|update_count|DOUT\(3),
	datac => \divide|update_count|DOUT\(4),
	datad => \divide|countdown_predicate|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|countdown_predicate|s~1_combout\);

-- Location: LC_X4_Y8_N9
\divide|update_count|DOUT[5]\ : maxv_lcell
-- Equation(s):
-- \divide|update_count|DOUT\(5) = DFFEAS(((\divide|countdown_predicate|s~1_combout\ $ (\divide|update_count|DOUT\(5))) # (!\divide|inits~0_combout\)), GLOBAL(\input_vector~combout\(35)), VCC, , \divide|output_ready~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3cff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	datab => \divide|countdown_predicate|s~1_combout\,
	datac => \divide|update_count|DOUT\(5),
	datad => \divide|inits~0_combout\,
	aclr => GND,
	ena => \divide|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divide|update_count|DOUT\(5));

-- Location: LC_X5_Y8_N4
\divide|update_count|DOUT[6]\ : maxv_lcell
-- Equation(s):
-- \divide|update_count|DOUT\(6) = DFFEAS((\divide|update_count|DOUT\(6) $ (((!\divide|update_count|DOUT\(5) & \divide|countdown_predicate|s~1_combout\)))) # (!\divide|inits~0_combout\), GLOBAL(\input_vector~combout\(35)), VCC, , 
-- \divide|output_ready~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b4ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	dataa => \divide|update_count|DOUT\(5),
	datab => \divide|countdown_predicate|s~1_combout\,
	datac => \divide|update_count|DOUT\(6),
	datad => \divide|inits~0_combout\,
	aclr => GND,
	ena => \divide|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divide|update_count|DOUT\(6));

-- Location: LC_X5_Y8_N3
\divide|countdown_predicate|s~6\ : maxv_lcell
-- Equation(s):
-- \divide|countdown_predicate|s~6_combout\ = (!\divide|update_count|DOUT\(6) & (((!\divide|update_count|DOUT\(5) & \divide|countdown_predicate|s~1_combout\))))

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
	dataa => \divide|update_count|DOUT\(6),
	datac => \divide|update_count|DOUT\(5),
	datad => \divide|countdown_predicate|s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|countdown_predicate|s~6_combout\);

-- Location: LC_X5_Y8_N2
\divide|update_count|DOUT[7]\ : maxv_lcell
-- Equation(s):
-- \divide|update_count|DOUT\(7) = DFFEAS((\divide|update_count|DOUT\(7) $ (((\divide|countdown_predicate|s~6_combout\)))) # (!\divide|inits~0_combout\), GLOBAL(\input_vector~combout\(35)), VCC, , \divide|output_ready~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77dd",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	dataa => \divide|inits~0_combout\,
	datab => \divide|update_count|DOUT\(7),
	datad => \divide|countdown_predicate|s~6_combout\,
	aclr => GND,
	ena => \divide|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divide|update_count|DOUT\(7));

-- Location: LC_X5_Y8_N8
\divide|countdown_predicate|s~2\ : maxv_lcell
-- Equation(s):
-- \divide|countdown_predicate|s~2_combout\ = (!\divide|update_count|DOUT\(5) & (!\divide|update_count|DOUT\(7) & (!\divide|update_count|DOUT\(6) & \divide|countdown_predicate|s~1_combout\)))

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
	dataa => \divide|update_count|DOUT\(5),
	datab => \divide|update_count|DOUT\(7),
	datac => \divide|update_count|DOUT\(6),
	datad => \divide|countdown_predicate|s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|countdown_predicate|s~2_combout\);

-- Location: LC_X5_Y8_N9
\divide|update_count|DOUT[8]\ : maxv_lcell
-- Equation(s):
-- \divide|update_count|DOUT\(8) = DFFEAS(((\divide|countdown_predicate|s~2_combout\ $ (\divide|update_count|DOUT\(8))) # (!\divide|inits~0_combout\)), GLOBAL(\input_vector~combout\(35)), VCC, , \divide|output_ready~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "66ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	dataa => \divide|countdown_predicate|s~2_combout\,
	datab => \divide|update_count|DOUT\(8),
	datad => \divide|inits~0_combout\,
	aclr => GND,
	ena => \divide|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divide|update_count|DOUT\(8));

-- Location: LC_X5_Y8_N7
\divide|update_count|DOUT[9]\ : maxv_lcell
-- Equation(s):
-- \divide|update_count|DOUT\(9) = DFFEAS((\divide|update_count|DOUT\(9) $ (((\divide|countdown_predicate|s~2_combout\ & !\divide|update_count|DOUT\(8))))) # (!\divide|inits~0_combout\), GLOBAL(\input_vector~combout\(35)), VCC, , 
-- \divide|output_ready~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d2ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	dataa => \divide|countdown_predicate|s~2_combout\,
	datab => \divide|update_count|DOUT\(8),
	datac => \divide|update_count|DOUT\(9),
	datad => \divide|inits~0_combout\,
	aclr => GND,
	ena => \divide|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divide|update_count|DOUT\(9));

-- Location: LC_X5_Y8_N0
\divide|countdown_predicate|s~3\ : maxv_lcell
-- Equation(s):
-- \divide|countdown_predicate|s~3_combout\ = ((!\divide|update_count|DOUT\(8) & (!\divide|update_count|DOUT\(9) & \divide|countdown_predicate|s~2_combout\)))

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
	datab => \divide|update_count|DOUT\(8),
	datac => \divide|update_count|DOUT\(9),
	datad => \divide|countdown_predicate|s~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|countdown_predicate|s~3_combout\);

-- Location: LC_X5_Y8_N5
\divide|update_count|DOUT[10]\ : maxv_lcell
-- Equation(s):
-- \divide|update_count|DOUT\(10) = DFFEAS(((\divide|update_count|DOUT\(10) $ (\divide|countdown_predicate|s~3_combout\)) # (!\divide|inits~0_combout\)), GLOBAL(\input_vector~combout\(35)), VCC, , \divide|output_ready~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5aff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	dataa => \divide|update_count|DOUT\(10),
	datac => \divide|countdown_predicate|s~3_combout\,
	datad => \divide|inits~0_combout\,
	aclr => GND,
	ena => \divide|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divide|update_count|DOUT\(10));

-- Location: LC_X5_Y8_N6
\divide|update_count|DOUT[11]\ : maxv_lcell
-- Equation(s):
-- \divide|update_count|DOUT\(11) = DFFEAS((\divide|update_count|DOUT\(11) $ (((\divide|countdown_predicate|s~3_combout\ & !\divide|update_count|DOUT\(10))))) # (!\divide|inits~0_combout\), GLOBAL(\input_vector~combout\(35)), VCC, , 
-- \divide|output_ready~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a6ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	dataa => \divide|update_count|DOUT\(11),
	datab => \divide|countdown_predicate|s~3_combout\,
	datac => \divide|update_count|DOUT\(10),
	datad => \divide|inits~0_combout\,
	aclr => GND,
	ena => \divide|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divide|update_count|DOUT\(11));

-- Location: LC_X5_Y8_N1
\divide|countdown_predicate|s~4\ : maxv_lcell
-- Equation(s):
-- \divide|countdown_predicate|s~4_combout\ = (!\divide|update_count|DOUT\(11) & (((!\divide|update_count|DOUT\(10) & \divide|countdown_predicate|s~3_combout\))))

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
	dataa => \divide|update_count|DOUT\(11),
	datac => \divide|update_count|DOUT\(10),
	datad => \divide|countdown_predicate|s~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|countdown_predicate|s~4_combout\);

-- Location: LC_X4_Y8_N7
\divide|update_count|DOUT[12]\ : maxv_lcell
-- Equation(s):
-- \divide|update_count|DOUT\(12) = DFFEAS(((\divide|update_count|DOUT\(12) $ (\divide|countdown_predicate|s~4_combout\)) # (!\divide|inits~0_combout\)), GLOBAL(\input_vector~combout\(35)), VCC, , \divide|output_ready~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3ff3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	datab => \divide|inits~0_combout\,
	datac => \divide|update_count|DOUT\(12),
	datad => \divide|countdown_predicate|s~4_combout\,
	aclr => GND,
	ena => \divide|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divide|update_count|DOUT\(12));

-- Location: LC_X4_Y8_N8
\divide|update_count|DOUT[13]\ : maxv_lcell
-- Equation(s):
-- \divide|update_count|DOUT\(13) = DFFEAS((\divide|update_count|DOUT\(13) $ (((!\divide|update_count|DOUT\(12) & \divide|countdown_predicate|s~4_combout\)))) # (!\divide|inits~0_combout\), GLOBAL(\input_vector~combout\(35)), VCC, , 
-- \divide|output_ready~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b7bb",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	dataa => \divide|update_count|DOUT\(13),
	datab => \divide|inits~0_combout\,
	datac => \divide|update_count|DOUT\(12),
	datad => \divide|countdown_predicate|s~4_combout\,
	aclr => GND,
	ena => \divide|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divide|update_count|DOUT\(13));

-- Location: LC_X4_Y8_N6
\divide|countdown_predicate|s~5\ : maxv_lcell
-- Equation(s):
-- \divide|countdown_predicate|s~5_combout\ = (!\divide|update_count|DOUT\(13) & (((!\divide|update_count|DOUT\(12) & \divide|countdown_predicate|s~4_combout\))))

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
	dataa => \divide|update_count|DOUT\(13),
	datac => \divide|update_count|DOUT\(12),
	datad => \divide|countdown_predicate|s~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|countdown_predicate|s~5_combout\);

-- Location: LC_X3_Y8_N2
\divide|update_count|DOUT[14]\ : maxv_lcell
-- Equation(s):
-- \divide|update_count|DOUT\(14) = DFFEAS(((\divide|countdown_predicate|s~5_combout\ $ (\divide|update_count|DOUT\(14))) # (!\divide|inits~0_combout\)), GLOBAL(\input_vector~combout\(35)), VCC, , \divide|output_ready~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5faf",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	dataa => \divide|countdown_predicate|s~5_combout\,
	datac => \divide|inits~0_combout\,
	datad => \divide|update_count|DOUT\(14),
	aclr => GND,
	ena => \divide|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divide|update_count|DOUT\(14));

-- Location: LC_X3_Y8_N8
\divide|update_count|DOUT[15]\ : maxv_lcell
-- Equation(s):
-- \divide|update_count|DOUT\(15) = DFFEAS((\divide|update_count|DOUT\(15) $ (((!\divide|update_count|DOUT\(14) & \divide|countdown_predicate|s~5_combout\)))) # (!\divide|inits~0_combout\), GLOBAL(\input_vector~combout\(35)), VCC, , 
-- \divide|output_ready~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "df75",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	dataa => \divide|inits~0_combout\,
	datab => \divide|update_count|DOUT\(14),
	datac => \divide|countdown_predicate|s~5_combout\,
	datad => \divide|update_count|DOUT\(15),
	aclr => GND,
	ena => \divide|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divide|update_count|DOUT\(15));

-- Location: LC_X3_Y8_N1
\divide|d0|master|qsig~0\ : maxv_lcell
-- Equation(s):
-- \divide|d0|master|qsig~0_combout\ = (!\input_vector~combout\(34) & (((!\divide|d1|slave|qsig~0_combout\ & \divide|d0|slave|qsig~0_combout\))))

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
	dataa => \input_vector~combout\(34),
	datac => \divide|d1|slave|qsig~0_combout\,
	datad => \divide|d0|slave|qsig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|d0|master|qsig~0_combout\);

-- Location: LC_X3_Y8_N9
\divide|compute_done\ : maxv_lcell
-- Equation(s):
-- \divide|compute_done~combout\ = (!\divide|update_count|DOUT\(15) & (!\divide|update_count|DOUT\(14) & (\divide|countdown_predicate|s~5_combout\ & \divide|d0|master|qsig~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \divide|update_count|DOUT\(15),
	datab => \divide|update_count|DOUT\(14),
	datac => \divide|countdown_predicate|s~5_combout\,
	datad => \divide|d0|master|qsig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|compute_done~combout\);

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: LC_X2_Y8_N1
\divide|d1|master|qsig~0\ : maxv_lcell
-- Equation(s):
-- \divide|d1|master|qsig~0_combout\ = (!\input_vector~combout\(0) & (!\input_vector~combout\(34) & (!\divide|d0|slave|qsig~0_combout\ & \divide|d1|slave|qsig~0_combout\)))

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
	datab => \input_vector~combout\(34),
	datac => \divide|d0|slave|qsig~0_combout\,
	datad => \divide|d1|slave|qsig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|d1|master|qsig~0_combout\);

-- Location: LC_X3_Y8_N7
\divide|d1|master|qsig~1\ : maxv_lcell
-- Equation(s):
-- \divide|d1|master|qsig~1_combout\ = (GLOBAL(\input_vector~combout\(35)) & (\divide|d1|master|qsig~1_combout\)) # (!GLOBAL(\input_vector~combout\(35)) & (((\divide|compute_done~combout\) # (\divide|d1|master|qsig~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aafc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \divide|d1|master|qsig~1_combout\,
	datab => \divide|compute_done~combout\,
	datac => \divide|d1|master|qsig~0_combout\,
	datad => \input_vector~combout\(35),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|d1|master|qsig~1_combout\);

-- Location: LC_X3_Y8_N4
\divide|d1|slave|qsig~0\ : maxv_lcell
-- Equation(s):
-- \divide|d1|slave|qsig~0_combout\ = ((GLOBAL(\input_vector~combout\(35)) & ((\divide|d1|master|qsig~1_combout\))) # (!GLOBAL(\input_vector~combout\(35)) & (\divide|d1|slave|qsig~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \divide|d1|slave|qsig~0_combout\,
	datac => \divide|d1|master|qsig~1_combout\,
	datad => \input_vector~combout\(35),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|d1|slave|qsig~0_combout\);

-- Location: LC_X2_Y8_N8
\divide|nq0~0\ : maxv_lcell
-- Equation(s):
-- \divide|nq0~0_combout\ = (\input_vector~combout\(1) & ((\input_vector~combout\(34)) # ((!\divide|d0|slave|qsig~0_combout\ & !\divide|d1|slave|qsig~0_combout\))))

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
	dataa => \input_vector~combout\(34),
	datab => \input_vector~combout\(1),
	datac => \divide|d0|slave|qsig~0_combout\,
	datad => \divide|d1|slave|qsig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|nq0~0_combout\);

-- Location: LC_X3_Y8_N6
\divide|d0|master|qsig~1\ : maxv_lcell
-- Equation(s):
-- \divide|d0|master|qsig~1_combout\ = (\divide|d0|master|qsig~0_combout\ & ((\divide|update_count|DOUT\(15)) # ((\divide|update_count|DOUT\(14)) # (!\divide|countdown_predicate|s~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \divide|update_count|DOUT\(15),
	datab => \divide|update_count|DOUT\(14),
	datac => \divide|countdown_predicate|s~5_combout\,
	datad => \divide|d0|master|qsig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|d0|master|qsig~1_combout\);

-- Location: LC_X3_Y8_N0
\divide|d0|master|qsig~2\ : maxv_lcell
-- Equation(s):
-- \divide|d0|master|qsig~2_combout\ = (GLOBAL(\input_vector~combout\(35)) & (((\divide|d0|master|qsig~2_combout\)))) # (!GLOBAL(\input_vector~combout\(35)) & ((\divide|nq0~0_combout\) # ((\divide|d0|master|qsig~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccfa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \divide|nq0~0_combout\,
	datab => \divide|d0|master|qsig~2_combout\,
	datac => \divide|d0|master|qsig~1_combout\,
	datad => \input_vector~combout\(35),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|d0|master|qsig~2_combout\);

-- Location: LC_X3_Y8_N3
\divide|d0|slave|qsig~0\ : maxv_lcell
-- Equation(s):
-- \divide|d0|slave|qsig~0_combout\ = ((GLOBAL(\input_vector~combout\(35)) & ((\divide|d0|master|qsig~2_combout\))) # (!GLOBAL(\input_vector~combout\(35)) & (\divide|d0|slave|qsig~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \divide|d0|slave|qsig~0_combout\,
	datac => \divide|d0|master|qsig~2_combout\,
	datad => \input_vector~combout\(35),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|d0|slave|qsig~0_combout\);

-- Location: LC_X2_Y8_N3
\divide|output_ready\ : maxv_lcell
-- Equation(s):
-- \divide|output_ready~combout\ = (\divide|d0|slave|qsig~0_combout\) # (((\input_vector~combout\(34)) # (!\divide|d1|slave|qsig~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \divide|d0|slave|qsig~0_combout\,
	datac => \input_vector~combout\(34),
	datad => \divide|d1|slave|qsig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|output_ready~combout\);

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(18),
	combout => \input_vector~combout\(18));

-- Location: LC_X2_Y7_N1
\divide|load_dividend|DOUT[0]\ : maxv_lcell
-- Equation(s):
-- \divide|load_dividend|DOUT\(0) = DFFEAS(((\input_vector~combout\(18))), GLOBAL(\input_vector~combout\(35)), VCC, , \divide|nq0~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	datab => \input_vector~combout\(18),
	aclr => GND,
	ena => \divide|nq0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divide|load_dividend|DOUT\(0));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(16),
	combout => \input_vector~combout\(16));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(15),
	combout => \input_vector~combout\(15));

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(14),
	combout => \input_vector~combout\(14));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(12),
	combout => \input_vector~combout\(12));

-- Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(11),
	combout => \input_vector~combout\(11));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(10),
	combout => \input_vector~combout\(10));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(9),
	combout => \input_vector~combout\(9));

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(8),
	combout => \input_vector~combout\(8));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: LC_X5_Y7_N2
\divide|load_divisor|DOUT[1]\ : maxv_lcell
-- Equation(s):
-- \divide|fullsub|sub1|bit_2|do\ = (\divide|update_R|DOUT\(0) & (\divide|load_divisor|DOUT\(0) & (F1_DOUT[1] & !\divide|load_dividend|DOUT\(0)))) # (!\divide|update_R|DOUT\(0) & ((F1_DOUT[1]) # ((\divide|load_divisor|DOUT\(0) & 
-- !\divide|load_dividend|DOUT\(0)))))
-- \divide|load_divisor|DOUT\(1) = DFFEAS(\divide|fullsub|sub1|bit_2|do\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|nq0~0_combout\, \input_vector~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50d4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	dataa => \divide|update_R|DOUT\(0),
	datab => \divide|load_divisor|DOUT\(0),
	datac => \input_vector~combout\(3),
	datad => \divide|load_dividend|DOUT\(0),
	aclr => GND,
	sload => VCC,
	ena => \divide|nq0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|fullsub|sub1|bit_2|do\,
	regout => \divide|load_divisor|DOUT\(1));

-- Location: LC_X5_Y7_N3
\divide|load_divisor|DOUT[2]\ : maxv_lcell
-- Equation(s):
-- \divide|fullsub|sub1|bit_3|do\ = ((\divide|update_R|DOUT\(1) & (F1_DOUT[2] & \divide|fullsub|sub1|bit_2|do\)) # (!\divide|update_R|DOUT\(1) & ((F1_DOUT[2]) # (\divide|fullsub|sub1|bit_2|do\))))
-- \divide|load_divisor|DOUT\(2) = DFFEAS(\divide|fullsub|sub1|bit_3|do\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|nq0~0_combout\, \input_vector~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f330",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	datab => \divide|update_R|DOUT\(1),
	datac => \input_vector~combout\(4),
	datad => \divide|fullsub|sub1|bit_2|do\,
	aclr => GND,
	sload => VCC,
	ena => \divide|nq0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|fullsub|sub1|bit_3|do\,
	regout => \divide|load_divisor|DOUT\(2));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: LC_X5_Y7_N9
\divide|load_divisor|DOUT[0]\ : maxv_lcell
-- Equation(s):
-- \divide|fullsub|sub1|bit_2|out_instance_2|s~0\ = \divide|load_divisor|DOUT\(1) $ (\divide|update_R|DOUT\(0) $ (((!\divide|load_dividend|DOUT\(0) & F1_DOUT[0]))))
-- \divide|load_divisor|DOUT\(0) = DFFEAS(\divide|fullsub|sub1|bit_2|out_instance_2|s~0\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|nq0~0_combout\, \input_vector~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "659a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	dataa => \divide|load_divisor|DOUT\(1),
	datab => \divide|load_dividend|DOUT\(0),
	datac => \input_vector~combout\(2),
	datad => \divide|update_R|DOUT\(0),
	aclr => GND,
	sload => VCC,
	ena => \divide|nq0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|fullsub|sub1|bit_2|out_instance_2|s~0\,
	regout => \divide|load_divisor|DOUT\(0));

-- Location: LC_X6_Y7_N5
\divide|update_remainder|DOUT[1]\ : maxv_lcell
-- Equation(s):
-- \divide|reset_R|mux82|mux_1|b~0\ = (\divide|inits~0_combout\ & ((\divide|fullsub|sub2|bit_8|do\ & ((\divide|update_R|DOUT\(0)))) # (!\divide|fullsub|sub2|bit_8|do\ & (\divide|fullsub|sub1|bit_2|out_instance_2|s~0\))))
-- \divide|update_remainder|DOUT\(1) = DFFEAS(\divide|reset_R|mux82|mux_1|b~0\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|compute_done~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	dataa => \divide|fullsub|sub1|bit_2|out_instance_2|s~0\,
	datab => \divide|update_R|DOUT\(0),
	datac => \divide|inits~0_combout\,
	datad => \divide|fullsub|sub2|bit_8|do\,
	aclr => GND,
	ena => \divide|compute_done~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|reset_R|mux82|mux_1|b~0\,
	regout => \divide|update_remainder|DOUT\(1));

-- Location: LC_X4_Y7_N2
\divide|update_R|DOUT[1]\ : maxv_lcell
-- Equation(s):
-- \divide|fullsub|sub1|bit_3|out_instance_2|s~0\ = \divide|load_divisor|DOUT\(2) $ (((F3_DOUT[1] $ (\divide|fullsub|sub1|bit_2|do\))))
-- \divide|update_R|DOUT\(1) = DFFEAS(\divide|fullsub|sub1|bit_3|out_instance_2|s~0\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|output_ready~0_combout\, \divide|reset_R|mux82|mux_1|b~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	dataa => \divide|load_divisor|DOUT\(2),
	datac => \divide|reset_R|mux82|mux_1|b~0\,
	datad => \divide|fullsub|sub1|bit_2|do\,
	aclr => GND,
	sload => VCC,
	ena => \divide|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|fullsub|sub1|bit_3|out_instance_2|s~0\,
	regout => \divide|update_R|DOUT\(1));

-- Location: LC_X4_Y7_N6
\divide|update_remainder|DOUT[2]\ : maxv_lcell
-- Equation(s):
-- \divide|reset_R|mux82|mux_2|b~0\ = (\divide|inits~0_combout\ & ((\divide|fullsub|sub2|bit_8|do\ & ((\divide|update_R|DOUT\(1)))) # (!\divide|fullsub|sub2|bit_8|do\ & (\divide|fullsub|sub1|bit_3|out_instance_2|s~0\))))
-- \divide|update_remainder|DOUT\(2) = DFFEAS(\divide|reset_R|mux82|mux_2|b~0\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|compute_done~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	dataa => \divide|fullsub|sub1|bit_3|out_instance_2|s~0\,
	datab => \divide|update_R|DOUT\(1),
	datac => \divide|inits~0_combout\,
	datad => \divide|fullsub|sub2|bit_8|do\,
	aclr => GND,
	ena => \divide|compute_done~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|reset_R|mux82|mux_2|b~0\,
	regout => \divide|update_remainder|DOUT\(2));

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: LC_X5_Y7_N4
\divide|load_divisor|DOUT[3]\ : maxv_lcell
-- Equation(s):
-- \divide|fullsub|sub1|bit_4|do\ = ((\divide|update_R|DOUT\(2) & (F1_DOUT[3] & \divide|fullsub|sub1|bit_3|do\)) # (!\divide|update_R|DOUT\(2) & ((F1_DOUT[3]) # (\divide|fullsub|sub1|bit_3|do\))))
-- \divide|load_divisor|DOUT\(3) = DFFEAS(\divide|fullsub|sub1|bit_4|do\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|nq0~0_combout\, \input_vector~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f330",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	datab => \divide|update_R|DOUT\(2),
	datac => \input_vector~combout\(5),
	datad => \divide|fullsub|sub1|bit_3|do\,
	aclr => GND,
	sload => VCC,
	ena => \divide|nq0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|fullsub|sub1|bit_4|do\,
	regout => \divide|load_divisor|DOUT\(3));

-- Location: LC_X4_Y7_N7
\divide|update_R|DOUT[2]\ : maxv_lcell
-- Equation(s):
-- \divide|fullsub|sub1|bit_4|out_instance_2|s~0\ = (\divide|fullsub|sub1|bit_3|do\ $ (F3_DOUT[2] $ (\divide|load_divisor|DOUT\(3))))
-- \divide|update_R|DOUT\(2) = DFFEAS(\divide|fullsub|sub1|bit_4|out_instance_2|s~0\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|output_ready~0_combout\, \divide|reset_R|mux82|mux_2|b~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	datab => \divide|fullsub|sub1|bit_3|do\,
	datac => \divide|reset_R|mux82|mux_2|b~0\,
	datad => \divide|load_divisor|DOUT\(3),
	aclr => GND,
	sload => VCC,
	ena => \divide|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|fullsub|sub1|bit_4|out_instance_2|s~0\,
	regout => \divide|update_R|DOUT\(2));

-- Location: LC_X4_Y7_N4
\divide|update_remainder|DOUT[3]\ : maxv_lcell
-- Equation(s):
-- \divide|reset_R|mux82|mux_3|b~0\ = (\divide|inits~0_combout\ & ((\divide|fullsub|sub2|bit_8|do\ & (\divide|update_R|DOUT\(2))) # (!\divide|fullsub|sub2|bit_8|do\ & ((\divide|fullsub|sub1|bit_4|out_instance_2|s~0\)))))
-- \divide|update_remainder|DOUT\(3) = DFFEAS(\divide|reset_R|mux82|mux_3|b~0\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|compute_done~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	dataa => \divide|update_R|DOUT\(2),
	datab => \divide|fullsub|sub1|bit_4|out_instance_2|s~0\,
	datac => \divide|inits~0_combout\,
	datad => \divide|fullsub|sub2|bit_8|do\,
	aclr => GND,
	ena => \divide|compute_done~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|reset_R|mux82|mux_3|b~0\,
	regout => \divide|update_remainder|DOUT\(3));

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: LC_X5_Y7_N5
\divide|load_divisor|DOUT[4]\ : maxv_lcell
-- Equation(s):
-- \divide|fullsub|sub1|bit_5|do\ = ((\divide|update_R|DOUT\(3) & (F1_DOUT[4] & \divide|fullsub|sub1|bit_4|do\)) # (!\divide|update_R|DOUT\(3) & ((F1_DOUT[4]) # (\divide|fullsub|sub1|bit_4|do\))))
-- \divide|load_divisor|DOUT\(4) = DFFEAS(\divide|fullsub|sub1|bit_5|do\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|nq0~0_combout\, \input_vector~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f330",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	datab => \divide|update_R|DOUT\(3),
	datac => \input_vector~combout\(6),
	datad => \divide|fullsub|sub1|bit_4|do\,
	aclr => GND,
	sload => VCC,
	ena => \divide|nq0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|fullsub|sub1|bit_5|do\,
	regout => \divide|load_divisor|DOUT\(4));

-- Location: LC_X4_Y7_N3
\divide|update_R|DOUT[3]\ : maxv_lcell
-- Equation(s):
-- \divide|fullsub|sub1|bit_5|out_instance_2|s~0\ = (\divide|fullsub|sub1|bit_4|do\ $ (F3_DOUT[3] $ (\divide|load_divisor|DOUT\(4))))
-- \divide|update_R|DOUT\(3) = DFFEAS(\divide|fullsub|sub1|bit_5|out_instance_2|s~0\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|output_ready~0_combout\, \divide|reset_R|mux82|mux_3|b~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	datab => \divide|fullsub|sub1|bit_4|do\,
	datac => \divide|reset_R|mux82|mux_3|b~0\,
	datad => \divide|load_divisor|DOUT\(4),
	aclr => GND,
	sload => VCC,
	ena => \divide|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|fullsub|sub1|bit_5|out_instance_2|s~0\,
	regout => \divide|update_R|DOUT\(3));

-- Location: LC_X6_Y7_N3
\divide|update_remainder|DOUT[4]\ : maxv_lcell
-- Equation(s):
-- \divide|reset_R|mux82|mux_4|b~0\ = (\divide|inits~0_combout\ & ((\divide|fullsub|sub2|bit_8|do\ & (\divide|update_R|DOUT\(3))) # (!\divide|fullsub|sub2|bit_8|do\ & ((\divide|fullsub|sub1|bit_5|out_instance_2|s~0\)))))
-- \divide|update_remainder|DOUT\(4) = DFFEAS(\divide|reset_R|mux82|mux_4|b~0\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|compute_done~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	dataa => \divide|update_R|DOUT\(3),
	datab => \divide|fullsub|sub1|bit_5|out_instance_2|s~0\,
	datac => \divide|inits~0_combout\,
	datad => \divide|fullsub|sub2|bit_8|do\,
	aclr => GND,
	ena => \divide|compute_done~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|reset_R|mux82|mux_4|b~0\,
	regout => \divide|update_remainder|DOUT\(4));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(7),
	combout => \input_vector~combout\(7));

-- Location: LC_X5_Y7_N6
\divide|load_divisor|DOUT[5]\ : maxv_lcell
-- Equation(s):
-- \divide|fullsub|sub1|bit_6|do\ = ((\divide|update_R|DOUT\(4) & (F1_DOUT[5] & \divide|fullsub|sub1|bit_5|do\)) # (!\divide|update_R|DOUT\(4) & ((F1_DOUT[5]) # (\divide|fullsub|sub1|bit_5|do\))))
-- \divide|load_divisor|DOUT\(5) = DFFEAS(\divide|fullsub|sub1|bit_6|do\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|nq0~0_combout\, \input_vector~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f330",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	datab => \divide|update_R|DOUT\(4),
	datac => \input_vector~combout\(7),
	datad => \divide|fullsub|sub1|bit_5|do\,
	aclr => GND,
	sload => VCC,
	ena => \divide|nq0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|fullsub|sub1|bit_6|do\,
	regout => \divide|load_divisor|DOUT\(5));

-- Location: LC_X4_Y7_N8
\divide|update_R|DOUT[4]\ : maxv_lcell
-- Equation(s):
-- \divide|fullsub|sub1|bit_6|out_instance_2|s~0\ = \divide|fullsub|sub1|bit_5|do\ $ (((F3_DOUT[4] $ (\divide|load_divisor|DOUT\(5)))))
-- \divide|update_R|DOUT\(4) = DFFEAS(\divide|fullsub|sub1|bit_6|out_instance_2|s~0\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|output_ready~0_combout\, \divide|reset_R|mux82|mux_4|b~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	dataa => \divide|fullsub|sub1|bit_5|do\,
	datac => \divide|reset_R|mux82|mux_4|b~0\,
	datad => \divide|load_divisor|DOUT\(5),
	aclr => GND,
	sload => VCC,
	ena => \divide|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|fullsub|sub1|bit_6|out_instance_2|s~0\,
	regout => \divide|update_R|DOUT\(4));

-- Location: LC_X5_Y7_N7
\divide|load_divisor|DOUT[6]\ : maxv_lcell
-- Equation(s):
-- \divide|fullsub|sub1|bit_7|do\ = ((\divide|update_R|DOUT\(5) & (F1_DOUT[6] & \divide|fullsub|sub1|bit_6|do\)) # (!\divide|update_R|DOUT\(5) & ((F1_DOUT[6]) # (\divide|fullsub|sub1|bit_6|do\))))
-- \divide|load_divisor|DOUT\(6) = DFFEAS(\divide|fullsub|sub1|bit_7|do\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|nq0~0_combout\, \input_vector~combout\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f330",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	datab => \divide|update_R|DOUT\(5),
	datac => \input_vector~combout\(8),
	datad => \divide|fullsub|sub1|bit_6|do\,
	aclr => GND,
	sload => VCC,
	ena => \divide|nq0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|fullsub|sub1|bit_7|do\,
	regout => \divide|load_divisor|DOUT\(6));

-- Location: LC_X3_Y7_N7
\divide|update_remainder|DOUT[5]\ : maxv_lcell
-- Equation(s):
-- \divide|reset_R|mux82|mux_5|b~0\ = (\divide|inits~0_combout\ & ((\divide|fullsub|sub2|bit_8|do\ & (\divide|update_R|DOUT\(4))) # (!\divide|fullsub|sub2|bit_8|do\ & ((\divide|fullsub|sub1|bit_6|out_instance_2|s~0\)))))
-- \divide|update_remainder|DOUT\(5) = DFFEAS(\divide|reset_R|mux82|mux_5|b~0\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|compute_done~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	dataa => \divide|update_R|DOUT\(4),
	datab => \divide|fullsub|sub1|bit_6|out_instance_2|s~0\,
	datac => \divide|inits~0_combout\,
	datad => \divide|fullsub|sub2|bit_8|do\,
	aclr => GND,
	ena => \divide|compute_done~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|reset_R|mux82|mux_5|b~0\,
	regout => \divide|update_remainder|DOUT\(5));

-- Location: LC_X3_Y7_N5
\divide|update_R|DOUT[5]\ : maxv_lcell
-- Equation(s):
-- \divide|fullsub|sub1|bit_7|out_instance_2|s~0\ = (\divide|load_divisor|DOUT\(6) $ (F3_DOUT[5] $ (\divide|fullsub|sub1|bit_6|do\)))
-- \divide|update_R|DOUT\(5) = DFFEAS(\divide|fullsub|sub1|bit_7|out_instance_2|s~0\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|output_ready~0_combout\, \divide|reset_R|mux82|mux_5|b~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	datab => \divide|load_divisor|DOUT\(6),
	datac => \divide|reset_R|mux82|mux_5|b~0\,
	datad => \divide|fullsub|sub1|bit_6|do\,
	aclr => GND,
	sload => VCC,
	ena => \divide|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|fullsub|sub1|bit_7|out_instance_2|s~0\,
	regout => \divide|update_R|DOUT\(5));

-- Location: LC_X5_Y7_N8
\divide|load_divisor|DOUT[7]\ : maxv_lcell
-- Equation(s):
-- \divide|fullsub|sub1|bit_8|do\ = (\divide|update_R|DOUT\(6) & (((F1_DOUT[7] & \divide|fullsub|sub1|bit_7|do\)))) # (!\divide|update_R|DOUT\(6) & (((F1_DOUT[7]) # (\divide|fullsub|sub1|bit_7|do\))))
-- \divide|load_divisor|DOUT\(7) = DFFEAS(\divide|fullsub|sub1|bit_8|do\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|nq0~0_combout\, \input_vector~combout\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f550",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	dataa => \divide|update_R|DOUT\(6),
	datac => \input_vector~combout\(9),
	datad => \divide|fullsub|sub1|bit_7|do\,
	aclr => GND,
	sload => VCC,
	ena => \divide|nq0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|fullsub|sub1|bit_8|do\,
	regout => \divide|load_divisor|DOUT\(7));

-- Location: LC_X4_Y7_N1
\divide|update_remainder|DOUT[6]\ : maxv_lcell
-- Equation(s):
-- \divide|reset_R|mux82|mux_6|b~0\ = (\divide|inits~0_combout\ & ((\divide|fullsub|sub2|bit_8|do\ & ((\divide|update_R|DOUT\(5)))) # (!\divide|fullsub|sub2|bit_8|do\ & (\divide|fullsub|sub1|bit_7|out_instance_2|s~0\))))
-- \divide|update_remainder|DOUT\(6) = DFFEAS(\divide|reset_R|mux82|mux_6|b~0\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|compute_done~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c088",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	dataa => \divide|fullsub|sub1|bit_7|out_instance_2|s~0\,
	datab => \divide|inits~0_combout\,
	datac => \divide|update_R|DOUT\(5),
	datad => \divide|fullsub|sub2|bit_8|do\,
	aclr => GND,
	ena => \divide|compute_done~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|reset_R|mux82|mux_6|b~0\,
	regout => \divide|update_remainder|DOUT\(6));

-- Location: LC_X4_Y7_N9
\divide|update_R|DOUT[6]\ : maxv_lcell
-- Equation(s):
-- \divide|fullsub|sub1|bit_8|out_instance_2|s~0\ = (\divide|load_divisor|DOUT\(7) $ (F3_DOUT[6] $ (\divide|fullsub|sub1|bit_7|do\)))
-- \divide|update_R|DOUT\(6) = DFFEAS(\divide|fullsub|sub1|bit_8|out_instance_2|s~0\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|output_ready~0_combout\, \divide|reset_R|mux82|mux_6|b~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	datab => \divide|load_divisor|DOUT\(7),
	datac => \divide|reset_R|mux82|mux_6|b~0\,
	datad => \divide|fullsub|sub1|bit_7|do\,
	aclr => GND,
	sload => VCC,
	ena => \divide|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|fullsub|sub1|bit_8|out_instance_2|s~0\,
	regout => \divide|update_R|DOUT\(6));

-- Location: LC_X5_Y7_N1
\divide|load_divisor|DOUT[8]\ : maxv_lcell
-- Equation(s):
-- \divide|fullsub|sub2|bit_1|do\ = ((\divide|update_R|DOUT\(7) & (F1_DOUT[8] & \divide|fullsub|sub1|bit_8|do\)) # (!\divide|update_R|DOUT\(7) & ((F1_DOUT[8]) # (\divide|fullsub|sub1|bit_8|do\))))
-- \divide|load_divisor|DOUT\(8) = DFFEAS(\divide|fullsub|sub2|bit_1|do\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|nq0~0_combout\, \input_vector~combout\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f330",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	datab => \divide|update_R|DOUT\(7),
	datac => \input_vector~combout\(10),
	datad => \divide|fullsub|sub1|bit_8|do\,
	aclr => GND,
	sload => VCC,
	ena => \divide|nq0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|fullsub|sub2|bit_1|do\,
	regout => \divide|load_divisor|DOUT\(8));

-- Location: LC_X3_Y7_N6
\divide|update_remainder|DOUT[7]\ : maxv_lcell
-- Equation(s):
-- \divide|reset_R|mux82|mux_7|b~0\ = (\divide|inits~0_combout\ & ((\divide|fullsub|sub2|bit_8|do\ & (\divide|update_R|DOUT\(6))) # (!\divide|fullsub|sub2|bit_8|do\ & ((\divide|fullsub|sub1|bit_8|out_instance_2|s~0\)))))
-- \divide|update_remainder|DOUT\(7) = DFFEAS(\divide|reset_R|mux82|mux_7|b~0\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|compute_done~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	dataa => \divide|update_R|DOUT\(6),
	datab => \divide|fullsub|sub1|bit_8|out_instance_2|s~0\,
	datac => \divide|inits~0_combout\,
	datad => \divide|fullsub|sub2|bit_8|do\,
	aclr => GND,
	ena => \divide|compute_done~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|reset_R|mux82|mux_7|b~0\,
	regout => \divide|update_remainder|DOUT\(7));

-- Location: LC_X3_Y7_N8
\divide|update_R|DOUT[7]\ : maxv_lcell
-- Equation(s):
-- \divide|fullsub|sub2|bit_1|out_instance_2|s~0\ = (\divide|load_divisor|DOUT\(8) $ (F3_DOUT[7] $ (\divide|fullsub|sub1|bit_8|do\)))
-- \divide|update_R|DOUT\(7) = DFFEAS(\divide|fullsub|sub2|bit_1|out_instance_2|s~0\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|output_ready~0_combout\, \divide|reset_R|mux82|mux_7|b~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	datab => \divide|load_divisor|DOUT\(8),
	datac => \divide|reset_R|mux82|mux_7|b~0\,
	datad => \divide|fullsub|sub1|bit_8|do\,
	aclr => GND,
	sload => VCC,
	ena => \divide|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|fullsub|sub2|bit_1|out_instance_2|s~0\,
	regout => \divide|update_R|DOUT\(7));

-- Location: LC_X5_Y7_N0
\divide|load_divisor|DOUT[9]\ : maxv_lcell
-- Equation(s):
-- \divide|fullsub|sub2|bit_2|do\ = ((\divide|update_R|DOUT\(8) & (F1_DOUT[9] & \divide|fullsub|sub2|bit_1|do\)) # (!\divide|update_R|DOUT\(8) & ((F1_DOUT[9]) # (\divide|fullsub|sub2|bit_1|do\))))
-- \divide|load_divisor|DOUT\(9) = DFFEAS(\divide|fullsub|sub2|bit_2|do\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|nq0~0_combout\, \input_vector~combout\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f330",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	datab => \divide|update_R|DOUT\(8),
	datac => \input_vector~combout\(11),
	datad => \divide|fullsub|sub2|bit_1|do\,
	aclr => GND,
	sload => VCC,
	ena => \divide|nq0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|fullsub|sub2|bit_2|do\,
	regout => \divide|load_divisor|DOUT\(9));

-- Location: LC_X3_Y7_N4
\divide|update_remainder|DOUT[8]\ : maxv_lcell
-- Equation(s):
-- \divide|reset_R|mux81|mux_0|b~0\ = (\divide|inits~0_combout\ & ((\divide|fullsub|sub2|bit_8|do\ & ((\divide|update_R|DOUT\(7)))) # (!\divide|fullsub|sub2|bit_8|do\ & (\divide|fullsub|sub2|bit_1|out_instance_2|s~0\))))
-- \divide|update_remainder|DOUT\(8) = DFFEAS(\divide|reset_R|mux81|mux_0|b~0\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|compute_done~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	dataa => \divide|fullsub|sub2|bit_1|out_instance_2|s~0\,
	datab => \divide|update_R|DOUT\(7),
	datac => \divide|inits~0_combout\,
	datad => \divide|fullsub|sub2|bit_8|do\,
	aclr => GND,
	ena => \divide|compute_done~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|reset_R|mux81|mux_0|b~0\,
	regout => \divide|update_remainder|DOUT\(8));

-- Location: LC_X3_Y7_N9
\divide|update_R|DOUT[8]\ : maxv_lcell
-- Equation(s):
-- \divide|fullsub|sub2|bit_2|out_instance_2|s~0\ = \divide|load_divisor|DOUT\(9) $ (((F3_DOUT[8] $ (\divide|fullsub|sub2|bit_1|do\))))
-- \divide|update_R|DOUT\(8) = DFFEAS(\divide|fullsub|sub2|bit_2|out_instance_2|s~0\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|output_ready~0_combout\, \divide|reset_R|mux81|mux_0|b~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	dataa => \divide|load_divisor|DOUT\(9),
	datac => \divide|reset_R|mux81|mux_0|b~0\,
	datad => \divide|fullsub|sub2|bit_1|do\,
	aclr => GND,
	sload => VCC,
	ena => \divide|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|fullsub|sub2|bit_2|out_instance_2|s~0\,
	regout => \divide|update_R|DOUT\(8));

-- Location: LC_X6_Y7_N6
\divide|load_divisor|DOUT[10]\ : maxv_lcell
-- Equation(s):
-- \divide|fullsub|sub2|bit_3|do\ = ((\divide|update_R|DOUT\(9) & (F1_DOUT[10] & \divide|fullsub|sub2|bit_2|do\)) # (!\divide|update_R|DOUT\(9) & ((F1_DOUT[10]) # (\divide|fullsub|sub2|bit_2|do\))))
-- \divide|load_divisor|DOUT\(10) = DFFEAS(\divide|fullsub|sub2|bit_3|do\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|nq0~0_combout\, \input_vector~combout\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f330",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	datab => \divide|update_R|DOUT\(9),
	datac => \input_vector~combout\(12),
	datad => \divide|fullsub|sub2|bit_2|do\,
	aclr => GND,
	sload => VCC,
	ena => \divide|nq0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|fullsub|sub2|bit_3|do\,
	regout => \divide|load_divisor|DOUT\(10));

-- Location: LC_X6_Y7_N4
\divide|update_remainder|DOUT[9]\ : maxv_lcell
-- Equation(s):
-- \divide|reset_R|mux81|mux_1|b~0\ = (\divide|inits~0_combout\ & ((\divide|fullsub|sub2|bit_8|do\ & (\divide|update_R|DOUT\(8))) # (!\divide|fullsub|sub2|bit_8|do\ & ((\divide|fullsub|sub2|bit_2|out_instance_2|s~0\)))))
-- \divide|update_remainder|DOUT\(9) = DFFEAS(\divide|reset_R|mux81|mux_1|b~0\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|compute_done~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	dataa => \divide|update_R|DOUT\(8),
	datab => \divide|fullsub|sub2|bit_2|out_instance_2|s~0\,
	datac => \divide|inits~0_combout\,
	datad => \divide|fullsub|sub2|bit_8|do\,
	aclr => GND,
	ena => \divide|compute_done~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|reset_R|mux81|mux_1|b~0\,
	regout => \divide|update_remainder|DOUT\(9));

-- Location: LC_X8_Y7_N9
\divide|update_R|DOUT[9]\ : maxv_lcell
-- Equation(s):
-- \divide|fullsub|sub2|bit_3|out_instance_2|s~0\ = (\divide|load_divisor|DOUT\(10) $ (F3_DOUT[9] $ (\divide|fullsub|sub2|bit_2|do\)))
-- \divide|update_R|DOUT\(9) = DFFEAS(\divide|fullsub|sub2|bit_3|out_instance_2|s~0\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|output_ready~0_combout\, \divide|reset_R|mux81|mux_1|b~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	datab => \divide|load_divisor|DOUT\(10),
	datac => \divide|reset_R|mux81|mux_1|b~0\,
	datad => \divide|fullsub|sub2|bit_2|do\,
	aclr => GND,
	sload => VCC,
	ena => \divide|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|fullsub|sub2|bit_3|out_instance_2|s~0\,
	regout => \divide|update_R|DOUT\(9));

-- Location: LC_X7_Y7_N0
\divide|update_remainder|DOUT[10]\ : maxv_lcell
-- Equation(s):
-- \divide|reset_R|mux81|mux_2|b~0\ = (\divide|inits~0_combout\ & ((\divide|fullsub|sub2|bit_8|do\ & (\divide|update_R|DOUT\(9))) # (!\divide|fullsub|sub2|bit_8|do\ & ((\divide|fullsub|sub2|bit_3|out_instance_2|s~0\)))))
-- \divide|update_remainder|DOUT\(10) = DFFEAS(\divide|reset_R|mux81|mux_2|b~0\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|compute_done~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	dataa => \divide|update_R|DOUT\(9),
	datab => \divide|fullsub|sub2|bit_3|out_instance_2|s~0\,
	datac => \divide|inits~0_combout\,
	datad => \divide|fullsub|sub2|bit_8|do\,
	aclr => GND,
	ena => \divide|compute_done~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|reset_R|mux81|mux_2|b~0\,
	regout => \divide|update_remainder|DOUT\(10));

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

-- Location: LC_X6_Y7_N7
\divide|load_divisor|DOUT[11]\ : maxv_lcell
-- Equation(s):
-- \divide|fullsub|sub2|bit_4|do\ = ((\divide|update_R|DOUT\(10) & (F1_DOUT[11] & \divide|fullsub|sub2|bit_3|do\)) # (!\divide|update_R|DOUT\(10) & ((F1_DOUT[11]) # (\divide|fullsub|sub2|bit_3|do\))))
-- \divide|load_divisor|DOUT\(11) = DFFEAS(\divide|fullsub|sub2|bit_4|do\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|nq0~0_combout\, \input_vector~combout\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f330",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	datab => \divide|update_R|DOUT\(10),
	datac => \input_vector~combout\(13),
	datad => \divide|fullsub|sub2|bit_3|do\,
	aclr => GND,
	sload => VCC,
	ena => \divide|nq0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|fullsub|sub2|bit_4|do\,
	regout => \divide|load_divisor|DOUT\(11));

-- Location: LC_X7_Y7_N9
\divide|update_R|DOUT[10]\ : maxv_lcell
-- Equation(s):
-- \divide|fullsub|sub2|bit_4|out_instance_2|s~0\ = (\divide|fullsub|sub2|bit_3|do\ $ (F3_DOUT[10] $ (\divide|load_divisor|DOUT\(11))))
-- \divide|update_R|DOUT\(10) = DFFEAS(\divide|fullsub|sub2|bit_4|out_instance_2|s~0\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|output_ready~0_combout\, \divide|reset_R|mux81|mux_2|b~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	datab => \divide|fullsub|sub2|bit_3|do\,
	datac => \divide|reset_R|mux81|mux_2|b~0\,
	datad => \divide|load_divisor|DOUT\(11),
	aclr => GND,
	sload => VCC,
	ena => \divide|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|fullsub|sub2|bit_4|out_instance_2|s~0\,
	regout => \divide|update_R|DOUT\(10));

-- Location: LC_X6_Y7_N8
\divide|load_divisor|DOUT[12]\ : maxv_lcell
-- Equation(s):
-- \divide|fullsub|sub2|bit_5|do\ = ((\divide|update_R|DOUT\(11) & (F1_DOUT[12] & \divide|fullsub|sub2|bit_4|do\)) # (!\divide|update_R|DOUT\(11) & ((F1_DOUT[12]) # (\divide|fullsub|sub2|bit_4|do\))))
-- \divide|load_divisor|DOUT\(12) = DFFEAS(\divide|fullsub|sub2|bit_5|do\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|nq0~0_combout\, \input_vector~combout\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f330",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	datab => \divide|update_R|DOUT\(11),
	datac => \input_vector~combout\(14),
	datad => \divide|fullsub|sub2|bit_4|do\,
	aclr => GND,
	sload => VCC,
	ena => \divide|nq0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|fullsub|sub2|bit_5|do\,
	regout => \divide|load_divisor|DOUT\(12));

-- Location: LC_X7_Y7_N3
\divide|update_remainder|DOUT[11]\ : maxv_lcell
-- Equation(s):
-- \divide|reset_R|mux81|mux_3|b~0\ = (\divide|inits~0_combout\ & ((\divide|fullsub|sub2|bit_8|do\ & (\divide|update_R|DOUT\(10))) # (!\divide|fullsub|sub2|bit_8|do\ & ((\divide|fullsub|sub2|bit_4|out_instance_2|s~0\)))))
-- \divide|update_remainder|DOUT\(11) = DFFEAS(\divide|reset_R|mux81|mux_3|b~0\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|compute_done~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	dataa => \divide|update_R|DOUT\(10),
	datab => \divide|fullsub|sub2|bit_4|out_instance_2|s~0\,
	datac => \divide|inits~0_combout\,
	datad => \divide|fullsub|sub2|bit_8|do\,
	aclr => GND,
	ena => \divide|compute_done~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|reset_R|mux81|mux_3|b~0\,
	regout => \divide|update_remainder|DOUT\(11));

-- Location: LC_X7_Y7_N2
\divide|update_R|DOUT[11]\ : maxv_lcell
-- Equation(s):
-- \divide|fullsub|sub2|bit_5|out_instance_2|s~0\ = \divide|load_divisor|DOUT\(12) $ (((F3_DOUT[11] $ (\divide|fullsub|sub2|bit_4|do\))))
-- \divide|update_R|DOUT\(11) = DFFEAS(\divide|fullsub|sub2|bit_5|out_instance_2|s~0\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|output_ready~0_combout\, \divide|reset_R|mux81|mux_3|b~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	dataa => \divide|load_divisor|DOUT\(12),
	datac => \divide|reset_R|mux81|mux_3|b~0\,
	datad => \divide|fullsub|sub2|bit_4|do\,
	aclr => GND,
	sload => VCC,
	ena => \divide|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|fullsub|sub2|bit_5|out_instance_2|s~0\,
	regout => \divide|update_R|DOUT\(11));

-- Location: LC_X6_Y7_N0
\divide|load_divisor|DOUT[13]\ : maxv_lcell
-- Equation(s):
-- \divide|fullsub|sub2|bit_6|do\ = ((\divide|update_R|DOUT\(12) & (F1_DOUT[13] & \divide|fullsub|sub2|bit_5|do\)) # (!\divide|update_R|DOUT\(12) & ((F1_DOUT[13]) # (\divide|fullsub|sub2|bit_5|do\))))
-- \divide|load_divisor|DOUT\(13) = DFFEAS(\divide|fullsub|sub2|bit_6|do\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|nq0~0_combout\, \input_vector~combout\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f330",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	datab => \divide|update_R|DOUT\(12),
	datac => \input_vector~combout\(15),
	datad => \divide|fullsub|sub2|bit_5|do\,
	aclr => GND,
	sload => VCC,
	ena => \divide|nq0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|fullsub|sub2|bit_6|do\,
	regout => \divide|load_divisor|DOUT\(13));

-- Location: LC_X7_Y7_N7
\divide|update_remainder|DOUT[12]\ : maxv_lcell
-- Equation(s):
-- \divide|reset_R|mux81|mux_4|b~0\ = (\divide|inits~0_combout\ & ((\divide|fullsub|sub2|bit_8|do\ & (\divide|update_R|DOUT\(11))) # (!\divide|fullsub|sub2|bit_8|do\ & ((\divide|fullsub|sub2|bit_5|out_instance_2|s~0\)))))
-- \divide|update_remainder|DOUT\(12) = DFFEAS(\divide|reset_R|mux81|mux_4|b~0\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|compute_done~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	dataa => \divide|update_R|DOUT\(11),
	datab => \divide|fullsub|sub2|bit_5|out_instance_2|s~0\,
	datac => \divide|inits~0_combout\,
	datad => \divide|fullsub|sub2|bit_8|do\,
	aclr => GND,
	ena => \divide|compute_done~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|reset_R|mux81|mux_4|b~0\,
	regout => \divide|update_remainder|DOUT\(12));

-- Location: LC_X7_Y7_N4
\divide|update_R|DOUT[12]\ : maxv_lcell
-- Equation(s):
-- \divide|fullsub|sub2|bit_6|out_instance_2|s~0\ = \divide|load_divisor|DOUT\(13) $ (((F3_DOUT[12] $ (\divide|fullsub|sub2|bit_5|do\))))
-- \divide|update_R|DOUT\(12) = DFFEAS(\divide|fullsub|sub2|bit_6|out_instance_2|s~0\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|output_ready~0_combout\, \divide|reset_R|mux81|mux_4|b~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	dataa => \divide|load_divisor|DOUT\(13),
	datac => \divide|reset_R|mux81|mux_4|b~0\,
	datad => \divide|fullsub|sub2|bit_5|do\,
	aclr => GND,
	sload => VCC,
	ena => \divide|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|fullsub|sub2|bit_6|out_instance_2|s~0\,
	regout => \divide|update_R|DOUT\(12));

-- Location: LC_X6_Y7_N1
\divide|load_divisor|DOUT[14]\ : maxv_lcell
-- Equation(s):
-- \divide|fullsub|sub2|bit_7|do\ = ((\divide|update_R|DOUT\(13) & (F1_DOUT[14] & \divide|fullsub|sub2|bit_6|do\)) # (!\divide|update_R|DOUT\(13) & ((F1_DOUT[14]) # (\divide|fullsub|sub2|bit_6|do\))))
-- \divide|load_divisor|DOUT\(14) = DFFEAS(\divide|fullsub|sub2|bit_7|do\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|nq0~0_combout\, \input_vector~combout\(16), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f330",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	datab => \divide|update_R|DOUT\(13),
	datac => \input_vector~combout\(16),
	datad => \divide|fullsub|sub2|bit_6|do\,
	aclr => GND,
	sload => VCC,
	ena => \divide|nq0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|fullsub|sub2|bit_7|do\,
	regout => \divide|load_divisor|DOUT\(14));

-- Location: LC_X7_Y7_N5
\divide|update_remainder|DOUT[13]\ : maxv_lcell
-- Equation(s):
-- \divide|reset_R|mux81|mux_5|b~0\ = (\divide|inits~0_combout\ & ((\divide|fullsub|sub2|bit_8|do\ & (\divide|update_R|DOUT\(12))) # (!\divide|fullsub|sub2|bit_8|do\ & ((\divide|fullsub|sub2|bit_6|out_instance_2|s~0\)))))
-- \divide|update_remainder|DOUT\(13) = DFFEAS(\divide|reset_R|mux81|mux_5|b~0\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|compute_done~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	dataa => \divide|inits~0_combout\,
	datab => \divide|update_R|DOUT\(12),
	datac => \divide|fullsub|sub2|bit_6|out_instance_2|s~0\,
	datad => \divide|fullsub|sub2|bit_8|do\,
	aclr => GND,
	ena => \divide|compute_done~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|reset_R|mux81|mux_5|b~0\,
	regout => \divide|update_remainder|DOUT\(13));

-- Location: LC_X7_Y7_N8
\divide|update_R|DOUT[13]\ : maxv_lcell
-- Equation(s):
-- \divide|fullsub|sub2|bit_7|out_instance_2|s~0\ = \divide|load_divisor|DOUT\(14) $ (((F3_DOUT[13] $ (\divide|fullsub|sub2|bit_6|do\))))
-- \divide|update_R|DOUT\(13) = DFFEAS(\divide|fullsub|sub2|bit_7|out_instance_2|s~0\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|output_ready~0_combout\, \divide|reset_R|mux81|mux_5|b~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	dataa => \divide|load_divisor|DOUT\(14),
	datac => \divide|reset_R|mux81|mux_5|b~0\,
	datad => \divide|fullsub|sub2|bit_6|do\,
	aclr => GND,
	sload => VCC,
	ena => \divide|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|fullsub|sub2|bit_7|out_instance_2|s~0\,
	regout => \divide|update_R|DOUT\(13));

-- Location: LC_X7_Y7_N6
\divide|update_remainder|DOUT[14]\ : maxv_lcell
-- Equation(s):
-- \divide|reset_R|mux81|mux_6|b~0\ = (\divide|inits~0_combout\ & ((\divide|fullsub|sub2|bit_8|do\ & (\divide|update_R|DOUT\(13))) # (!\divide|fullsub|sub2|bit_8|do\ & ((\divide|fullsub|sub2|bit_7|out_instance_2|s~0\)))))
-- \divide|update_remainder|DOUT\(14) = DFFEAS(\divide|reset_R|mux81|mux_6|b~0\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|compute_done~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b080",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	dataa => \divide|update_R|DOUT\(13),
	datab => \divide|fullsub|sub2|bit_8|do\,
	datac => \divide|inits~0_combout\,
	datad => \divide|fullsub|sub2|bit_7|out_instance_2|s~0\,
	aclr => GND,
	ena => \divide|compute_done~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|reset_R|mux81|mux_6|b~0\,
	regout => \divide|update_remainder|DOUT\(14));

-- Location: LC_X7_Y7_N1
\divide|update_R|DOUT[14]\ : maxv_lcell
-- Equation(s):
-- \divide|update_R|DOUT\(14) = DFFEAS(GND, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|output_ready~0_combout\, \divide|reset_R|mux81|mux_6|b~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	datac => \divide|reset_R|mux81|mux_6|b~0\,
	aclr => GND,
	sload => VCC,
	ena => \divide|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divide|update_R|DOUT\(14));

-- Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(17),
	combout => \input_vector~combout\(17));

-- Location: LC_X6_Y7_N2
\divide|load_divisor|DOUT[15]\ : maxv_lcell
-- Equation(s):
-- \divide|fullsub|sub2|bit_8|do\ = (\divide|update_R|DOUT\(14) & (((F1_DOUT[15] & \divide|fullsub|sub2|bit_7|do\)))) # (!\divide|update_R|DOUT\(14) & (((F1_DOUT[15]) # (\divide|fullsub|sub2|bit_7|do\))))
-- \divide|load_divisor|DOUT\(15) = DFFEAS(\divide|fullsub|sub2|bit_8|do\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|nq0~0_combout\, \input_vector~combout\(17), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f550",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	dataa => \divide|update_R|DOUT\(14),
	datac => \input_vector~combout\(17),
	datad => \divide|fullsub|sub2|bit_7|do\,
	aclr => GND,
	sload => VCC,
	ena => \divide|nq0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|fullsub|sub2|bit_8|do\,
	regout => \divide|load_divisor|DOUT\(15));

-- Location: LC_X4_Y7_N5
\divide|update_remainder|DOUT[0]\ : maxv_lcell
-- Equation(s):
-- \divide|reset_R|mux82|mux_0|b~0\ = (\divide|inits~0_combout\ & (\divide|load_dividend|DOUT\(0) $ (((\divide|load_divisor|DOUT\(0) & !\divide|fullsub|sub2|bit_8|do\)))))
-- \divide|update_remainder|DOUT\(0) = DFFEAS(\divide|reset_R|mux82|mux_0|b~0\, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|compute_done~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a060",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	dataa => \divide|load_dividend|DOUT\(0),
	datab => \divide|load_divisor|DOUT\(0),
	datac => \divide|inits~0_combout\,
	datad => \divide|fullsub|sub2|bit_8|do\,
	aclr => GND,
	ena => \divide|compute_done~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|reset_R|mux82|mux_0|b~0\,
	regout => \divide|update_remainder|DOUT\(0));

-- Location: LC_X4_Y7_N0
\divide|update_R|DOUT[0]\ : maxv_lcell
-- Equation(s):
-- \divide|update_R|DOUT\(0) = DFFEAS(GND, GLOBAL(\input_vector~combout\(35)), VCC, , \divide|output_ready~0_combout\, \divide|reset_R|mux82|mux_0|b~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	datac => \divide|reset_R|mux82|mux_0|b~0\,
	aclr => GND,
	sload => VCC,
	ena => \divide|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divide|update_R|DOUT\(0));

-- Location: LC_X6_Y7_N9
\divide|update_remainder|DOUT[15]\ : maxv_lcell
-- Equation(s):
-- \divide|update_remainder|DOUT\(15) = DFFEAS((\divide|update_R|DOUT\(14) & (\divide|load_divisor|DOUT\(15) $ (((!\divide|fullsub|sub2|bit_7|do\))))), GLOBAL(\input_vector~combout\(35)), VCC, , \divide|compute_done~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8822",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	dataa => \divide|update_R|DOUT\(14),
	datab => \divide|load_divisor|DOUT\(15),
	datad => \divide|fullsub|sub2|bit_7|do\,
	aclr => GND,
	ena => \divide|compute_done~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divide|update_remainder|DOUT\(15));

-- Location: LC_X3_Y7_N3
\divide|update_quotient|DOUT[0]\ : maxv_lcell
-- Equation(s):
-- \divide|update_quotient|DOUT\(0) = DFFEAS((((!\divide|fullsub|sub2|bit_8|do\))), GLOBAL(\input_vector~combout\(35)), VCC, , \divide|compute_done~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(35),
	datad => \divide|fullsub|sub2|bit_8|do\,
	aclr => GND,
	ena => \divide|compute_done~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divide|update_quotient|DOUT\(0));

-- Location: LC_X2_Y8_N6
\divide|ready|master|qsig~0\ : maxv_lcell
-- Equation(s):
-- \divide|ready|master|qsig~0_combout\ = ((GLOBAL(\input_vector~combout\(35)) & ((\divide|ready|master|qsig~0_combout\))) # (!GLOBAL(\input_vector~combout\(35)) & (\input_vector~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datac => \divide|ready|master|qsig~0_combout\,
	datad => \input_vector~combout\(35),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|ready|master|qsig~0_combout\);

-- Location: LC_X2_Y8_N7
\divide|ready|slave|qsig~0\ : maxv_lcell
-- Equation(s):
-- \divide|ready|slave|qsig~0_combout\ = ((GLOBAL(\input_vector~combout\(35)) & ((\divide|ready|master|qsig~0_combout\))) # (!GLOBAL(\input_vector~combout\(35)) & (\divide|ready|slave|qsig~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(35),
	datac => \divide|ready|slave|qsig~0_combout\,
	datad => \divide|ready|master|qsig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|ready|slave|qsig~0_combout\);

-- Location: LC_X2_Y8_N4
\divide|ready|q\ : maxv_lcell
-- Equation(s):
-- \divide|ready|q~combout\ = ((\divide|ready|slave|qsig~0_combout\ & (!\input_vector~combout\(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \divide|ready|slave|qsig~0_combout\,
	datac => \input_vector~combout\(34),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \divide|ready|q~combout\);

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(19));

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(20));

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[21]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(21));

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[22]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(22));

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[23]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(23));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[24]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(24));

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[25]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(25));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[26]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(26));

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[27]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(27));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[28]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(28));

-- Location: PIN_106,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[29]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(29));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[30]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(30));

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[31]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(31));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[32]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(32));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[33]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(33));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \divide|ALT_INV_output_ready~combout\,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \divide|update_remainder|DOUT\(0),
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \divide|update_remainder|DOUT\(1),
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \divide|update_remainder|DOUT\(2),
	oe => VCC,
	padio => ww_output_vector(3));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \divide|update_remainder|DOUT\(3),
	oe => VCC,
	padio => ww_output_vector(4));

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \divide|update_remainder|DOUT\(4),
	oe => VCC,
	padio => ww_output_vector(5));

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \divide|update_remainder|DOUT\(5),
	oe => VCC,
	padio => ww_output_vector(6));

-- Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \divide|update_remainder|DOUT\(6),
	oe => VCC,
	padio => ww_output_vector(7));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \divide|update_remainder|DOUT\(7),
	oe => VCC,
	padio => ww_output_vector(8));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \divide|update_remainder|DOUT\(8),
	oe => VCC,
	padio => ww_output_vector(9));

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \divide|update_remainder|DOUT\(9),
	oe => VCC,
	padio => ww_output_vector(10));

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \divide|update_remainder|DOUT\(10),
	oe => VCC,
	padio => ww_output_vector(11));

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \divide|update_remainder|DOUT\(11),
	oe => VCC,
	padio => ww_output_vector(12));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \divide|update_remainder|DOUT\(12),
	oe => VCC,
	padio => ww_output_vector(13));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \divide|update_remainder|DOUT\(13),
	oe => VCC,
	padio => ww_output_vector(14));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \divide|update_remainder|DOUT\(14),
	oe => VCC,
	padio => ww_output_vector(15));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \divide|update_remainder|DOUT\(15),
	oe => VCC,
	padio => ww_output_vector(16));

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \divide|update_quotient|DOUT\(0),
	oe => VCC,
	padio => ww_output_vector(17));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_output_vector(18));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_output_vector(19));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_output_vector(20));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[21]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_output_vector(21));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[22]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_output_vector(22));

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[23]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_output_vector(23));

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[24]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_output_vector(24));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[25]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_output_vector(25));

-- Location: PIN_110,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[26]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_output_vector(26));

-- Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[27]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_output_vector(27));

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[28]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_output_vector(28));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[29]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_output_vector(29));

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[30]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_output_vector(30));

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[31]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_output_vector(31));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[32]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_output_vector(32));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[33]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \divide|ready|q~combout\,
	oe => VCC,
	padio => ww_output_vector(33));
END structure;


