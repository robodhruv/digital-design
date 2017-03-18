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

-- DATE "03/18/2017 15:34:50"

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

ENTITY 	TopLevel IS
    PORT (
	TDI : IN std_logic;
	TDO : BUFFER std_logic;
	TMS : IN std_logic;
	TCLK : IN std_logic;
	TRST : IN std_logic
	);
END TopLevel;

-- Design Ports Information


ARCHITECTURE structure OF TopLevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_TDI : std_logic;
SIGNAL ww_TDO : std_logic;
SIGNAL ww_TMS : std_logic;
SIGNAL ww_TCLK : std_logic;
SIGNAL ww_TRST : std_logic;
SIGNAL \TCLK~combout\ : std_logic;
SIGNAL \TRST~combout\ : std_logic;
SIGNAL \TMS~combout\ : std_logic;
SIGNAL \scan_instance|current_state.s_shift~regout\ : std_logic;
SIGNAL \scan_instance|current_state.s_update~regout\ : std_logic;
SIGNAL \scan_instance|current_state.s_idle~regout\ : std_logic;
SIGNAL \scan_instance|current_state.s_DR~regout\ : std_logic;
SIGNAL \scan_instance|current_state.s_capture~regout\ : std_logic;
SIGNAL \scan_instance|Selector3~0\ : std_logic;
SIGNAL \TDI~combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1[2]~0_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|L2~1_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|quad0|fa4|co~0_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|quad0|fa4|co~1_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|quad1|fa2|co~0_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|quad1|fa2|add_instance_s0_1|s~0_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|quad1|fa4|co~0_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|quad1|fa3|add_instance_s0_1|s~4_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|quad1|fa1|co~0_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|quad1|fa4|add_instance_s0_2|s~0_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|quad0|fa3|add_instance_s0_1|s~4_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|quad0|fa3|add_instance_s0_1|s~5_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|quad1|fa3|add_instance_s0_1|s~5_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|quad0|fa2|add_instance_s0_1|s~0_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|quad0|fa4|add_instance_s0_2|s~0_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|quad0|fa4|add_instance_s0_2|s~1_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|adder1|bit_2|co~0_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|adder1|bit_3|co~0_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|quad2|fa2|add_instance_s0_1|s~0_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|quad2|fa4|co~0_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|quad2|fa2|co~0_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|quad2|fa1|co~0_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|quad2|fa3|add_instance_s0_1|s~4_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|quad2|fa4|add_instance_s0_2|s~0_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|adder1|bit_1|add_instance_s0_1|s~0_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|quad2|fa3|add_instance_s0_1|s~5_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|adder1|bit_2|add_instance_s0_2|s~0_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|adder2|bit_2|co~0_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|adder1|bit_3|add_instance_s0_2|s~0_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|adder2|bit_3|co~0_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|quad3|fa2|add_instance_s0_1|s~0_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|quad3|fa4|co~0_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|quad3|fa2|co~0_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|quad3|fa1|co~0_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|quad3|fa3|add_instance_s0_1|s~4_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|quad3|fa4|add_instance_s0_2|s~0_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|quad3|fa3|add_instance_s0_1|s~5_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|adder2|bit_1|add_instance_s0_1|s~0_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|adder2|bit_2|add_instance_s0_2|s~0_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|adder3|bit_2|co~0_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|adder2|bit_3|add_instance_s0_2|s~0_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|adder3|bit_3|co~0_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|adder3|bit_4|add_instance_s0_2|s~0_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|adder3|bit_3|add_instance_s0_2|s~0_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|adder3|bit_2|add_instance_s0_2|s~0_combout\ : std_logic;
SIGNAL \dut_inst|counter_inst|adder3|bit_1|add_instance_s0_1|s~0_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|L1\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \scan_instance|In_Reg|L2\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \scan_instance|Out_Reg|L1\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_TDI <= TDI;
TDO <= ww_TDO;
ww_TMS <= TMS;
ww_TCLK <= TCLK;
ww_TRST <= TRST;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TCLK~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_TCLK,
	combout => \TCLK~combout\);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TRST~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_TRST,
	combout => \TRST~combout\);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TMS~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_TMS,
	combout => \TMS~combout\);

-- Location: LC_X3_Y9_N9
\scan_instance|current_state.s_shift\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Selector3~0\ = ((!\TMS~combout\ & ((C1_current_state.s_shift) # (\scan_instance|current_state.s_capture~regout\))))
-- \scan_instance|current_state.s_shift~regout\ = DFFEAS(\scan_instance|Selector3~0\, GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3330",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TMS~combout\,
	datad => \scan_instance|current_state.s_capture~regout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Selector3~0\,
	regout => \scan_instance|current_state.s_shift~regout\);

-- Location: LC_X3_Y9_N6
\scan_instance|current_state.s_update\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_update~regout\ = DFFEAS(((\TMS~combout\ & ((\scan_instance|current_state.s_capture~regout\) # (\scan_instance|current_state.s_shift~regout\)))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TMS~combout\,
	datac => \scan_instance|current_state.s_capture~regout\,
	datad => \scan_instance|current_state.s_shift~regout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_update~regout\);

-- Location: LC_X3_Y9_N0
\scan_instance|current_state.s_idle\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_idle~regout\ = DFFEAS(((!\scan_instance|current_state.s_update~regout\ & ((\TMS~combout\) # (\scan_instance|current_state.s_idle~regout\)))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00fc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TMS~combout\,
	datac => \scan_instance|current_state.s_idle~regout\,
	datad => \scan_instance|current_state.s_update~regout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_idle~regout\);

-- Location: LC_X3_Y9_N8
\scan_instance|current_state.s_DR\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_DR~regout\ = DFFEAS(((\TMS~combout\ & ((\scan_instance|current_state.s_DR~regout\) # (!\scan_instance|current_state.s_idle~regout\)))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|current_state.s_DR~regout\,
	datac => \scan_instance|current_state.s_idle~regout\,
	datad => \TMS~combout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_DR~regout\);

-- Location: LC_X3_Y9_N1
\scan_instance|current_state.s_capture\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_capture~regout\ = DFFEAS(((!\TMS~combout\ & ((\scan_instance|current_state.s_DR~regout\)))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TMS~combout\,
	datad => \scan_instance|current_state.s_DR~regout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_capture~regout\);

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TDI~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_TDI,
	combout => \TDI~combout\);

-- Location: LC_X3_Y9_N7
\scan_instance|Out_Reg|L1[2]~0\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1[2]~0_combout\ = (\TRST~combout\) # ((!\TMS~combout\ & (\scan_instance|current_state.s_idle~regout\ & !\scan_instance|current_state.s_update~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaba",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \TMS~combout\,
	datac => \scan_instance|current_state.s_idle~regout\,
	datad => \scan_instance|current_state.s_update~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1[2]~0_combout\);

-- Location: LC_X3_Y9_N3
\scan_instance|In_Reg|L1[15]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(15) = DFFEAS(((\TDI~combout\ & (\scan_instance|Selector3~0\ & !\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[2]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TDI~combout\,
	datac => \scan_instance|Selector3~0\,
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(15));

-- Location: LC_X3_Y9_N5
\scan_instance|In_Reg|L1[14]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(14) = DFFEAS((\scan_instance|In_Reg|L1\(15) & (((\scan_instance|Selector3~0\ & !\TRST~combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[2]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|In_Reg|L1\(15),
	datac => \scan_instance|Selector3~0\,
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(14));

-- Location: LC_X4_Y9_N5
\scan_instance|In_Reg|L1[13]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(13) = DFFEAS((\scan_instance|Selector3~0\ & (((!\TRST~combout\ & \scan_instance|In_Reg|L1\(14))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[2]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Selector3~0\,
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(14),
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(13));

-- Location: LC_X4_Y9_N0
\scan_instance|In_Reg|L1[12]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(12) = DFFEAS((\scan_instance|In_Reg|L1\(13) & (((\scan_instance|Selector3~0\ & !\TRST~combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[2]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|In_Reg|L1\(13),
	datac => \scan_instance|Selector3~0\,
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(12));

-- Location: LC_X4_Y9_N1
\scan_instance|In_Reg|L1[11]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(11) = DFFEAS((\scan_instance|Selector3~0\ & (\scan_instance|In_Reg|L1\(12) & ((!\TRST~combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[2]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0088",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Selector3~0\,
	datab => \scan_instance|In_Reg|L1\(12),
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(11));

-- Location: LC_X4_Y9_N6
\scan_instance|In_Reg|L1[10]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(10) = DFFEAS(((\scan_instance|In_Reg|L1\(11) & (\scan_instance|Selector3~0\ & !\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[2]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|In_Reg|L1\(11),
	datac => \scan_instance|Selector3~0\,
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(10));

-- Location: LC_X4_Y9_N3
\scan_instance|In_Reg|L1[9]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(9) = DFFEAS((\scan_instance|In_Reg|L1\(10) & (((\scan_instance|Selector3~0\ & !\TRST~combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[2]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|In_Reg|L1\(10),
	datac => \scan_instance|Selector3~0\,
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(9));

-- Location: LC_X4_Y9_N8
\scan_instance|In_Reg|L1[8]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(8) = DFFEAS((\scan_instance|In_Reg|L1\(9) & (((\scan_instance|Selector3~0\ & !\TRST~combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[2]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|In_Reg|L1\(9),
	datac => \scan_instance|Selector3~0\,
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(8));

-- Location: LC_X4_Y9_N2
\scan_instance|In_Reg|L1[7]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(7) = DFFEAS((\scan_instance|In_Reg|L1\(8) & (((\scan_instance|Selector3~0\ & !\TRST~combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[2]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|In_Reg|L1\(8),
	datac => \scan_instance|Selector3~0\,
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(7));

-- Location: LC_X4_Y9_N7
\scan_instance|In_Reg|L1[6]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(6) = DFFEAS((\scan_instance|Selector3~0\ & (\scan_instance|In_Reg|L1\(7) & ((!\TRST~combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[2]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0088",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Selector3~0\,
	datab => \scan_instance|In_Reg|L1\(7),
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(6));

-- Location: LC_X4_Y9_N4
\scan_instance|In_Reg|L1[5]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(5) = DFFEAS((\scan_instance|Selector3~0\ & (\scan_instance|In_Reg|L1\(6) & ((!\TRST~combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[2]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0088",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Selector3~0\,
	datab => \scan_instance|In_Reg|L1\(6),
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(5));

-- Location: LC_X4_Y9_N9
\scan_instance|In_Reg|L1[4]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(4) = DFFEAS((\scan_instance|In_Reg|L1\(5) & (((\scan_instance|Selector3~0\ & !\TRST~combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[2]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|In_Reg|L1\(5),
	datac => \scan_instance|Selector3~0\,
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(4));

-- Location: LC_X3_Y7_N4
\scan_instance|In_Reg|L1[3]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(3) = DFFEAS(((\scan_instance|In_Reg|L1\(4) & (!\TRST~combout\ & \scan_instance|Selector3~0\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[2]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|In_Reg|L1\(4),
	datac => \TRST~combout\,
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(3));

-- Location: LC_X3_Y7_N6
\scan_instance|In_Reg|L1[2]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(2) = DFFEAS((\scan_instance|In_Reg|L1\(3) & (((!\TRST~combout\ & \scan_instance|Selector3~0\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[2]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|In_Reg|L1\(3),
	datac => \TRST~combout\,
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(2));

-- Location: LC_X3_Y7_N3
\scan_instance|In_Reg|L1[1]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(1) = DFFEAS((\scan_instance|In_Reg|L1\(2) & (((!\TRST~combout\ & \scan_instance|Selector3~0\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[2]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|In_Reg|L1\(2),
	datac => \TRST~combout\,
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(1));

-- Location: LC_X3_Y7_N5
\scan_instance|In_Reg|L1[0]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(0) = DFFEAS((\scan_instance|In_Reg|L1\(1) & (((!\TRST~combout\ & \scan_instance|Selector3~0\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[2]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|In_Reg|L1\(1),
	datac => \TRST~combout\,
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(0));

-- Location: LC_X3_Y9_N4
\scan_instance|In_Reg|L2~1\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2~1_combout\ = (\TRST~combout\) # ((\TMS~combout\ & ((\scan_instance|current_state.s_shift~regout\) # (\scan_instance|current_state.s_capture~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|current_state.s_shift~regout\,
	datac => \TMS~combout\,
	datad => \scan_instance|current_state.s_capture~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|L2~1_combout\);

-- Location: LC_X6_Y8_N5
\scan_instance|In_Reg|L2[12]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(12) = DFFEAS(((!\TRST~combout\ & ((\scan_instance|In_Reg|L1\(12))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(12),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(12));

-- Location: LC_X6_Y8_N6
\scan_instance|In_Reg|L2[13]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(13) = DFFEAS((((\scan_instance|In_Reg|L1\(13) & !\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \scan_instance|In_Reg|L1\(13),
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(13));

-- Location: LC_X6_Y8_N0
\scan_instance|In_Reg|L2[14]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(14) = DFFEAS(((!\TRST~combout\ & ((\scan_instance|In_Reg|L1\(14))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(14),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(14));

-- Location: LC_X6_Y8_N1
\scan_instance|In_Reg|L2[15]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(15) = DFFEAS((((\scan_instance|In_Reg|L1\(15) & !\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \scan_instance|In_Reg|L1\(15),
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(15));

-- Location: LC_X6_Y8_N7
\dut_inst|counter_inst|quad0|fa4|co~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|quad0|fa4|co~0_combout\ = (((\scan_instance|In_Reg|L2\(14) & \scan_instance|In_Reg|L2\(15))))

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
	datac => \scan_instance|In_Reg|L2\(14),
	datad => \scan_instance|In_Reg|L2\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|quad0|fa4|co~0_combout\);

-- Location: LC_X5_Y8_N3
\dut_inst|counter_inst|quad0|fa4|co~1\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|quad0|fa4|co~1_combout\ = (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(12) & (\scan_instance|In_Reg|L2\(13) & \dut_inst|counter_inst|quad0|fa4|co~0_combout\)))

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
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(12),
	datac => \scan_instance|In_Reg|L2\(13),
	datad => \dut_inst|counter_inst|quad0|fa4|co~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|quad0|fa4|co~1_combout\);

-- Location: LC_X2_Y8_N7
\scan_instance|In_Reg|L2[8]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(8) = DFFEAS((((!\TRST~combout\ & \scan_instance|In_Reg|L1\(8)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(8),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(8));

-- Location: LC_X2_Y8_N3
\scan_instance|In_Reg|L2[9]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(9) = DFFEAS((((!\TRST~combout\ & \scan_instance|In_Reg|L1\(9)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(9),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(9));

-- Location: LC_X2_Y8_N0
\dut_inst|counter_inst|quad1|fa2|co~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|quad1|fa2|co~0_combout\ = ((\TRST~combout\) # ((!\scan_instance|In_Reg|L2\(9)) # (!\scan_instance|In_Reg|L2\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(8),
	datad => \scan_instance|In_Reg|L2\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|quad1|fa2|co~0_combout\);

-- Location: LC_X2_Y8_N8
\scan_instance|In_Reg|L2[10]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(10) = DFFEAS((((!\TRST~combout\ & \scan_instance|In_Reg|L1\(10)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(10),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(10));

-- Location: LC_X2_Y8_N4
\scan_instance|In_Reg|L2[11]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(11) = DFFEAS((((!\TRST~combout\ & \scan_instance|In_Reg|L1\(11)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(11),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(11));

-- Location: LC_X2_Y8_N6
\dut_inst|counter_inst|quad1|fa2|add_instance_s0_1|s~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|quad1|fa2|add_instance_s0_1|s~0_combout\ = ((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(8) $ (\scan_instance|In_Reg|L2\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(8),
	datad => \scan_instance|In_Reg|L2\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|quad1|fa2|add_instance_s0_1|s~0_combout\);

-- Location: LC_X3_Y8_N6
\dut_inst|counter_inst|quad1|fa4|co~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|quad1|fa4|co~0_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(10) & ((\scan_instance|In_Reg|L2\(11)) # (\dut_inst|counter_inst|quad1|fa2|add_instance_s0_1|s~0_combout\))) # (!\scan_instance|In_Reg|L2\(10) & 
-- (\scan_instance|In_Reg|L2\(11) & \dut_inst|counter_inst|quad1|fa2|add_instance_s0_1|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3220",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(10),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(11),
	datad => \dut_inst|counter_inst|quad1|fa2|add_instance_s0_1|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|quad1|fa4|co~0_combout\);

-- Location: LC_X2_Y8_N5
\dut_inst|counter_inst|quad1|fa3|add_instance_s0_1|s~4\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|quad1|fa3|add_instance_s0_1|s~4_combout\ = ((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(11) $ (\scan_instance|In_Reg|L2\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(11),
	datad => \scan_instance|In_Reg|L2\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|quad1|fa3|add_instance_s0_1|s~4_combout\);

-- Location: LC_X2_Y8_N1
\dut_inst|counter_inst|quad1|fa1|co~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|quad1|fa1|co~0_combout\ = ((\TRST~combout\) # ((!\scan_instance|In_Reg|L2\(10)) # (!\scan_instance|In_Reg|L2\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(11),
	datad => \scan_instance|In_Reg|L2\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|quad1|fa1|co~0_combout\);

-- Location: LC_X2_Y8_N2
\dut_inst|counter_inst|quad1|fa4|add_instance_s0_2|s~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|quad1|fa4|add_instance_s0_2|s~0_combout\ = \dut_inst|counter_inst|quad1|fa2|co~0_combout\ $ (\dut_inst|counter_inst|quad1|fa1|co~0_combout\ $ (((\dut_inst|counter_inst|quad1|fa2|add_instance_s0_1|s~0_combout\ & 
-- \dut_inst|counter_inst|quad1|fa3|add_instance_s0_1|s~4_combout\))))

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
	dataa => \dut_inst|counter_inst|quad1|fa2|add_instance_s0_1|s~0_combout\,
	datab => \dut_inst|counter_inst|quad1|fa2|co~0_combout\,
	datac => \dut_inst|counter_inst|quad1|fa3|add_instance_s0_1|s~4_combout\,
	datad => \dut_inst|counter_inst|quad1|fa1|co~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|quad1|fa4|add_instance_s0_2|s~0_combout\);

-- Location: LC_X6_Y8_N3
\dut_inst|counter_inst|quad0|fa3|add_instance_s0_1|s~4\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|quad0|fa3|add_instance_s0_1|s~4_combout\ = ((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(14) $ (\scan_instance|In_Reg|L2\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(14),
	datad => \scan_instance|In_Reg|L2\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|quad0|fa3|add_instance_s0_1|s~4_combout\);

-- Location: LC_X6_Y8_N2
\dut_inst|counter_inst|quad0|fa3|add_instance_s0_1|s~5\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|quad0|fa3|add_instance_s0_1|s~5_combout\ = \dut_inst|counter_inst|quad0|fa3|add_instance_s0_1|s~4_combout\ $ (((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(13) $ (\scan_instance|In_Reg|L2\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ed12",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(13),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(12),
	datad => \dut_inst|counter_inst|quad0|fa3|add_instance_s0_1|s~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|quad0|fa3|add_instance_s0_1|s~5_combout\);

-- Location: LC_X2_Y8_N9
\dut_inst|counter_inst|quad1|fa3|add_instance_s0_1|s~5\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|quad1|fa3|add_instance_s0_1|s~5_combout\ = \dut_inst|counter_inst|quad1|fa3|add_instance_s0_1|s~4_combout\ $ (((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(9) $ (\scan_instance|In_Reg|L2\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e1d2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(9),
	datab => \TRST~combout\,
	datac => \dut_inst|counter_inst|quad1|fa3|add_instance_s0_1|s~4_combout\,
	datad => \scan_instance|In_Reg|L2\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|quad1|fa3|add_instance_s0_1|s~5_combout\);

-- Location: LC_X6_Y8_N4
\dut_inst|counter_inst|quad0|fa2|add_instance_s0_1|s~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|quad0|fa2|add_instance_s0_1|s~0_combout\ = ((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(12) $ (\scan_instance|In_Reg|L2\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(12),
	datad => \scan_instance|In_Reg|L2\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|quad0|fa2|add_instance_s0_1|s~0_combout\);

-- Location: LC_X6_Y8_N8
\dut_inst|counter_inst|quad0|fa4|add_instance_s0_2|s~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|quad0|fa4|add_instance_s0_2|s~0_combout\ = (!\TRST~combout\ & (\dut_inst|counter_inst|quad0|fa4|co~0_combout\ $ (((\scan_instance|In_Reg|L2\(12) & \scan_instance|In_Reg|L2\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1320",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(12),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(13),
	datad => \dut_inst|counter_inst|quad0|fa4|co~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|quad0|fa4|add_instance_s0_2|s~0_combout\);

-- Location: LC_X5_Y8_N7
\dut_inst|counter_inst|quad0|fa4|add_instance_s0_2|s~1\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|quad0|fa4|add_instance_s0_2|s~1_combout\ = (\dut_inst|counter_inst|quad0|fa4|add_instance_s0_2|s~0_combout\ $ (((\dut_inst|counter_inst|quad0|fa2|add_instance_s0_1|s~0_combout\ & 
-- \dut_inst|counter_inst|quad0|fa3|add_instance_s0_1|s~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3fc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut_inst|counter_inst|quad0|fa2|add_instance_s0_1|s~0_combout\,
	datac => \dut_inst|counter_inst|quad0|fa3|add_instance_s0_1|s~4_combout\,
	datad => \dut_inst|counter_inst|quad0|fa4|add_instance_s0_2|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|quad0|fa4|add_instance_s0_2|s~1_combout\);

-- Location: LC_X5_Y8_N8
\dut_inst|counter_inst|adder1|bit_2|co~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|adder1|bit_2|co~0_combout\ = (\dut_inst|counter_inst|quad1|fa4|add_instance_s0_2|s~0_combout\ & ((\dut_inst|counter_inst|quad0|fa4|add_instance_s0_2|s~1_combout\) # ((\dut_inst|counter_inst|quad0|fa3|add_instance_s0_1|s~5_combout\ & 
-- \dut_inst|counter_inst|quad1|fa3|add_instance_s0_1|s~5_combout\)))) # (!\dut_inst|counter_inst|quad1|fa4|add_instance_s0_2|s~0_combout\ & (\dut_inst|counter_inst|quad0|fa3|add_instance_s0_1|s~5_combout\ & 
-- (\dut_inst|counter_inst|quad1|fa3|add_instance_s0_1|s~5_combout\ & \dut_inst|counter_inst|quad0|fa4|add_instance_s0_2|s~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_inst|counter_inst|quad1|fa4|add_instance_s0_2|s~0_combout\,
	datab => \dut_inst|counter_inst|quad0|fa3|add_instance_s0_1|s~5_combout\,
	datac => \dut_inst|counter_inst|quad1|fa3|add_instance_s0_1|s~5_combout\,
	datad => \dut_inst|counter_inst|quad0|fa4|add_instance_s0_2|s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|adder1|bit_2|co~0_combout\);

-- Location: LC_X5_Y8_N2
\dut_inst|counter_inst|adder1|bit_3|co~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|adder1|bit_3|co~0_combout\ = (\dut_inst|counter_inst|quad0|fa4|co~1_combout\ & ((\dut_inst|counter_inst|adder1|bit_2|co~0_combout\) # ((!\dut_inst|counter_inst|quad1|fa2|co~0_combout\ & 
-- \dut_inst|counter_inst|quad1|fa4|co~0_combout\)))) # (!\dut_inst|counter_inst|quad0|fa4|co~1_combout\ & (!\dut_inst|counter_inst|quad1|fa2|co~0_combout\ & (\dut_inst|counter_inst|quad1|fa4|co~0_combout\ & 
-- \dut_inst|counter_inst|adder1|bit_2|co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_inst|counter_inst|quad0|fa4|co~1_combout\,
	datab => \dut_inst|counter_inst|quad1|fa2|co~0_combout\,
	datac => \dut_inst|counter_inst|quad1|fa4|co~0_combout\,
	datad => \dut_inst|counter_inst|adder1|bit_2|co~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|adder1|bit_3|co~0_combout\);

-- Location: LC_X5_Y9_N0
\scan_instance|In_Reg|L2[7]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(7) = DFFEAS((((!\TRST~combout\ & \scan_instance|In_Reg|L1\(7)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(7),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(7));

-- Location: LC_X5_Y9_N6
\scan_instance|In_Reg|L2[5]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(5) = DFFEAS((((!\TRST~combout\ & \scan_instance|In_Reg|L1\(5)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(5),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(5));

-- Location: LC_X5_Y9_N3
\scan_instance|In_Reg|L2[4]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(4) = DFFEAS((\scan_instance|In_Reg|L1\(4) & (((!\TRST~combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|In_Reg|L1\(4),
	datac => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(4));

-- Location: LC_X5_Y9_N7
\dut_inst|counter_inst|quad2|fa2|add_instance_s0_1|s~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|quad2|fa2|add_instance_s0_1|s~0_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(5) $ (\scan_instance|In_Reg|L2\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0550",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(5),
	datad => \scan_instance|In_Reg|L2\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|quad2|fa2|add_instance_s0_1|s~0_combout\);

-- Location: LC_X5_Y9_N4
\scan_instance|In_Reg|L2[6]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(6) = DFFEAS((((!\TRST~combout\ & \scan_instance|In_Reg|L1\(6)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(6),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(6));

-- Location: LC_X5_Y9_N8
\dut_inst|counter_inst|quad2|fa4|co~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|quad2|fa4|co~0_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(7) & ((\dut_inst|counter_inst|quad2|fa2|add_instance_s0_1|s~0_combout\) # (\scan_instance|In_Reg|L2\(6)))) # (!\scan_instance|In_Reg|L2\(7) & 
-- (\dut_inst|counter_inst|quad2|fa2|add_instance_s0_1|s~0_combout\ & \scan_instance|In_Reg|L2\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5440",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(7),
	datac => \dut_inst|counter_inst|quad2|fa2|add_instance_s0_1|s~0_combout\,
	datad => \scan_instance|In_Reg|L2\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|quad2|fa4|co~0_combout\);

-- Location: LC_X5_Y9_N9
\dut_inst|counter_inst|quad2|fa2|co~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|quad2|fa2|co~0_combout\ = (\TRST~combout\) # (((!\scan_instance|In_Reg|L2\(4)) # (!\scan_instance|In_Reg|L2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(5),
	datad => \scan_instance|In_Reg|L2\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|quad2|fa2|co~0_combout\);

-- Location: LC_X5_Y9_N5
\dut_inst|counter_inst|quad2|fa1|co~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|quad2|fa1|co~0_combout\ = (\TRST~combout\) # (((!\scan_instance|In_Reg|L2\(6)) # (!\scan_instance|In_Reg|L2\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(7),
	datad => \scan_instance|In_Reg|L2\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|quad2|fa1|co~0_combout\);

-- Location: LC_X5_Y9_N1
\dut_inst|counter_inst|quad2|fa3|add_instance_s0_1|s~4\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|quad2|fa3|add_instance_s0_1|s~4_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(7) $ (\scan_instance|In_Reg|L2\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0550",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(7),
	datad => \scan_instance|In_Reg|L2\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|quad2|fa3|add_instance_s0_1|s~4_combout\);

-- Location: LC_X5_Y9_N2
\dut_inst|counter_inst|quad2|fa4|add_instance_s0_2|s~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|quad2|fa4|add_instance_s0_2|s~0_combout\ = \dut_inst|counter_inst|quad2|fa1|co~0_combout\ $ (\dut_inst|counter_inst|quad2|fa2|co~0_combout\ $ (((\dut_inst|counter_inst|quad2|fa2|add_instance_s0_1|s~0_combout\ & 
-- \dut_inst|counter_inst|quad2|fa3|add_instance_s0_1|s~4_combout\))))

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
	dataa => \dut_inst|counter_inst|quad2|fa1|co~0_combout\,
	datab => \dut_inst|counter_inst|quad2|fa2|co~0_combout\,
	datac => \dut_inst|counter_inst|quad2|fa2|add_instance_s0_1|s~0_combout\,
	datad => \dut_inst|counter_inst|quad2|fa3|add_instance_s0_1|s~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|quad2|fa4|add_instance_s0_2|s~0_combout\);

-- Location: LC_X5_Y8_N0
\dut_inst|counter_inst|adder1|bit_1|add_instance_s0_1|s~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|adder1|bit_1|add_instance_s0_1|s~0_combout\ = \dut_inst|counter_inst|quad0|fa3|add_instance_s0_1|s~4_combout\ $ (\dut_inst|counter_inst|quad0|fa2|add_instance_s0_1|s~0_combout\ $ 
-- (\dut_inst|counter_inst|quad1|fa2|add_instance_s0_1|s~0_combout\ $ (\dut_inst|counter_inst|quad1|fa3|add_instance_s0_1|s~4_combout\)))

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
	dataa => \dut_inst|counter_inst|quad0|fa3|add_instance_s0_1|s~4_combout\,
	datab => \dut_inst|counter_inst|quad0|fa2|add_instance_s0_1|s~0_combout\,
	datac => \dut_inst|counter_inst|quad1|fa2|add_instance_s0_1|s~0_combout\,
	datad => \dut_inst|counter_inst|quad1|fa3|add_instance_s0_1|s~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|adder1|bit_1|add_instance_s0_1|s~0_combout\);

-- Location: LC_X5_Y8_N5
\dut_inst|counter_inst|quad2|fa3|add_instance_s0_1|s~5\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|quad2|fa3|add_instance_s0_1|s~5_combout\ = \dut_inst|counter_inst|quad2|fa3|add_instance_s0_1|s~4_combout\ $ (((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(4) $ (\scan_instance|In_Reg|L2\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eb14",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(4),
	datac => \scan_instance|In_Reg|L2\(5),
	datad => \dut_inst|counter_inst|quad2|fa3|add_instance_s0_1|s~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|quad2|fa3|add_instance_s0_1|s~5_combout\);

-- Location: LC_X5_Y8_N1
\dut_inst|counter_inst|adder1|bit_2|add_instance_s0_2|s~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|adder1|bit_2|add_instance_s0_2|s~0_combout\ = \dut_inst|counter_inst|quad1|fa4|add_instance_s0_2|s~0_combout\ $ (\dut_inst|counter_inst|quad0|fa4|add_instance_s0_2|s~1_combout\ $ 
-- (((\dut_inst|counter_inst|quad1|fa3|add_instance_s0_1|s~5_combout\ & \dut_inst|counter_inst|quad0|fa3|add_instance_s0_1|s~5_combout\))))

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
	dataa => \dut_inst|counter_inst|quad1|fa4|add_instance_s0_2|s~0_combout\,
	datab => \dut_inst|counter_inst|quad0|fa4|add_instance_s0_2|s~1_combout\,
	datac => \dut_inst|counter_inst|quad1|fa3|add_instance_s0_1|s~5_combout\,
	datad => \dut_inst|counter_inst|quad0|fa3|add_instance_s0_1|s~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|adder1|bit_2|add_instance_s0_2|s~0_combout\);

-- Location: LC_X5_Y8_N9
\dut_inst|counter_inst|adder2|bit_2|co~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|adder2|bit_2|co~0_combout\ = (\dut_inst|counter_inst|quad2|fa4|add_instance_s0_2|s~0_combout\ & ((\dut_inst|counter_inst|adder1|bit_2|add_instance_s0_2|s~0_combout\) # 
-- ((\dut_inst|counter_inst|adder1|bit_1|add_instance_s0_1|s~0_combout\ & \dut_inst|counter_inst|quad2|fa3|add_instance_s0_1|s~5_combout\)))) # (!\dut_inst|counter_inst|quad2|fa4|add_instance_s0_2|s~0_combout\ & 
-- (\dut_inst|counter_inst|adder1|bit_1|add_instance_s0_1|s~0_combout\ & (\dut_inst|counter_inst|quad2|fa3|add_instance_s0_1|s~5_combout\ & \dut_inst|counter_inst|adder1|bit_2|add_instance_s0_2|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_inst|counter_inst|quad2|fa4|add_instance_s0_2|s~0_combout\,
	datab => \dut_inst|counter_inst|adder1|bit_1|add_instance_s0_1|s~0_combout\,
	datac => \dut_inst|counter_inst|quad2|fa3|add_instance_s0_1|s~5_combout\,
	datad => \dut_inst|counter_inst|adder1|bit_2|add_instance_s0_2|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|adder2|bit_2|co~0_combout\);

-- Location: LC_X4_Y8_N3
\dut_inst|counter_inst|adder1|bit_3|add_instance_s0_2|s~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|adder1|bit_3|add_instance_s0_2|s~0_combout\ = \dut_inst|counter_inst|quad0|fa4|co~1_combout\ $ (\dut_inst|counter_inst|adder1|bit_2|co~0_combout\ $ (((!\dut_inst|counter_inst|quad1|fa2|co~0_combout\ & 
-- \dut_inst|counter_inst|quad1|fa4|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4bb4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_inst|counter_inst|quad1|fa2|co~0_combout\,
	datab => \dut_inst|counter_inst|quad1|fa4|co~0_combout\,
	datac => \dut_inst|counter_inst|quad0|fa4|co~1_combout\,
	datad => \dut_inst|counter_inst|adder1|bit_2|co~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|adder1|bit_3|add_instance_s0_2|s~0_combout\);

-- Location: LC_X4_Y8_N4
\dut_inst|counter_inst|adder2|bit_3|co~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|adder2|bit_3|co~0_combout\ = (\dut_inst|counter_inst|adder2|bit_2|co~0_combout\ & ((\dut_inst|counter_inst|adder1|bit_3|add_instance_s0_2|s~0_combout\) # ((\dut_inst|counter_inst|quad2|fa4|co~0_combout\ & 
-- !\dut_inst|counter_inst|quad2|fa2|co~0_combout\)))) # (!\dut_inst|counter_inst|adder2|bit_2|co~0_combout\ & (\dut_inst|counter_inst|quad2|fa4|co~0_combout\ & (!\dut_inst|counter_inst|quad2|fa2|co~0_combout\ & 
-- \dut_inst|counter_inst|adder1|bit_3|add_instance_s0_2|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f220",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_inst|counter_inst|quad2|fa4|co~0_combout\,
	datab => \dut_inst|counter_inst|quad2|fa2|co~0_combout\,
	datac => \dut_inst|counter_inst|adder2|bit_2|co~0_combout\,
	datad => \dut_inst|counter_inst|adder1|bit_3|add_instance_s0_2|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|adder2|bit_3|co~0_combout\);

-- Location: LC_X3_Y7_N9
\scan_instance|In_Reg|L2[3]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(3) = DFFEAS((\scan_instance|In_Reg|L1\(3) & (((!\TRST~combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|In_Reg|L1\(3),
	datac => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(3));

-- Location: LC_X3_Y7_N0
\scan_instance|In_Reg|L2[2]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(2) = DFFEAS((\scan_instance|In_Reg|L1\(2) & (((!\TRST~combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|In_Reg|L1\(2),
	datac => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(2));

-- Location: LC_X3_Y8_N0
\scan_instance|In_Reg|L2[1]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(1) = DFFEAS((\scan_instance|In_Reg|L1\(1) & (((!\TRST~combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|In_Reg|L1\(1),
	datac => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(1));

-- Location: LC_X3_Y8_N3
\scan_instance|In_Reg|L2[0]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(0) = DFFEAS((((!\TRST~combout\ & \scan_instance|In_Reg|L1\(0)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(0),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(0));

-- Location: LC_X3_Y8_N5
\dut_inst|counter_inst|quad3|fa2|add_instance_s0_1|s~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|quad3|fa2|add_instance_s0_1|s~0_combout\ = ((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(1) $ (\scan_instance|In_Reg|L2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(1),
	datad => \scan_instance|In_Reg|L2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|quad3|fa2|add_instance_s0_1|s~0_combout\);

-- Location: LC_X3_Y7_N2
\dut_inst|counter_inst|quad3|fa4|co~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|quad3|fa4|co~0_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(3) & ((\scan_instance|In_Reg|L2\(2)) # (\dut_inst|counter_inst|quad3|fa2|add_instance_s0_1|s~0_combout\))) # (!\scan_instance|In_Reg|L2\(3) & 
-- (\scan_instance|In_Reg|L2\(2) & \dut_inst|counter_inst|quad3|fa2|add_instance_s0_1|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5440",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(3),
	datac => \scan_instance|In_Reg|L2\(2),
	datad => \dut_inst|counter_inst|quad3|fa2|add_instance_s0_1|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|quad3|fa4|co~0_combout\);

-- Location: LC_X3_Y8_N7
\dut_inst|counter_inst|quad3|fa2|co~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|quad3|fa2|co~0_combout\ = (((\TRST~combout\) # (!\scan_instance|In_Reg|L2\(0))) # (!\scan_instance|In_Reg|L2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \scan_instance|In_Reg|L2\(1),
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|quad3|fa2|co~0_combout\);

-- Location: LC_X3_Y7_N8
\dut_inst|counter_inst|quad3|fa1|co~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|quad3|fa1|co~0_combout\ = (\TRST~combout\) # (((!\scan_instance|In_Reg|L2\(3)) # (!\scan_instance|In_Reg|L2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(2),
	datad => \scan_instance|In_Reg|L2\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|quad3|fa1|co~0_combout\);

-- Location: LC_X3_Y7_N7
\dut_inst|counter_inst|quad3|fa3|add_instance_s0_1|s~4\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|quad3|fa3|add_instance_s0_1|s~4_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(2) $ (\scan_instance|In_Reg|L2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0550",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(2),
	datad => \scan_instance|In_Reg|L2\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|quad3|fa3|add_instance_s0_1|s~4_combout\);

-- Location: LC_X3_Y8_N8
\dut_inst|counter_inst|quad3|fa4|add_instance_s0_2|s~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|quad3|fa4|add_instance_s0_2|s~0_combout\ = \dut_inst|counter_inst|quad3|fa2|co~0_combout\ $ (\dut_inst|counter_inst|quad3|fa1|co~0_combout\ $ (((\dut_inst|counter_inst|quad3|fa2|add_instance_s0_1|s~0_combout\ & 
-- \dut_inst|counter_inst|quad3|fa3|add_instance_s0_1|s~4_combout\))))

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
	dataa => \dut_inst|counter_inst|quad3|fa2|add_instance_s0_1|s~0_combout\,
	datab => \dut_inst|counter_inst|quad3|fa2|co~0_combout\,
	datac => \dut_inst|counter_inst|quad3|fa1|co~0_combout\,
	datad => \dut_inst|counter_inst|quad3|fa3|add_instance_s0_1|s~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|quad3|fa4|add_instance_s0_2|s~0_combout\);

-- Location: LC_X3_Y8_N2
\dut_inst|counter_inst|quad3|fa3|add_instance_s0_1|s~5\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|quad3|fa3|add_instance_s0_1|s~5_combout\ = \dut_inst|counter_inst|quad3|fa3|add_instance_s0_1|s~4_combout\ $ (((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(0) $ (\scan_instance|In_Reg|L2\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eb14",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(0),
	datac => \scan_instance|In_Reg|L2\(1),
	datad => \dut_inst|counter_inst|quad3|fa3|add_instance_s0_1|s~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|quad3|fa3|add_instance_s0_1|s~5_combout\);

-- Location: LC_X5_Y8_N6
\dut_inst|counter_inst|adder2|bit_1|add_instance_s0_1|s~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|adder2|bit_1|add_instance_s0_1|s~0_combout\ = ((\dut_inst|counter_inst|adder1|bit_1|add_instance_s0_1|s~0_combout\ $ (\dut_inst|counter_inst|quad2|fa3|add_instance_s0_1|s~5_combout\)))

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
	datac => \dut_inst|counter_inst|adder1|bit_1|add_instance_s0_1|s~0_combout\,
	datad => \dut_inst|counter_inst|quad2|fa3|add_instance_s0_1|s~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|adder2|bit_1|add_instance_s0_1|s~0_combout\);

-- Location: LC_X5_Y8_N4
\dut_inst|counter_inst|adder2|bit_2|add_instance_s0_2|s~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|adder2|bit_2|add_instance_s0_2|s~0_combout\ = \dut_inst|counter_inst|quad2|fa4|add_instance_s0_2|s~0_combout\ $ (\dut_inst|counter_inst|adder1|bit_2|add_instance_s0_2|s~0_combout\ $ 
-- (((\dut_inst|counter_inst|adder1|bit_1|add_instance_s0_1|s~0_combout\ & \dut_inst|counter_inst|quad2|fa3|add_instance_s0_1|s~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "956a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_inst|counter_inst|quad2|fa4|add_instance_s0_2|s~0_combout\,
	datab => \dut_inst|counter_inst|adder1|bit_1|add_instance_s0_1|s~0_combout\,
	datac => \dut_inst|counter_inst|quad2|fa3|add_instance_s0_1|s~5_combout\,
	datad => \dut_inst|counter_inst|adder1|bit_2|add_instance_s0_2|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|adder2|bit_2|add_instance_s0_2|s~0_combout\);

-- Location: LC_X4_Y8_N0
\dut_inst|counter_inst|adder3|bit_2|co~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|adder3|bit_2|co~0_combout\ = (\dut_inst|counter_inst|quad3|fa4|add_instance_s0_2|s~0_combout\ & ((\dut_inst|counter_inst|adder2|bit_2|add_instance_s0_2|s~0_combout\) # 
-- ((\dut_inst|counter_inst|quad3|fa3|add_instance_s0_1|s~5_combout\ & \dut_inst|counter_inst|adder2|bit_1|add_instance_s0_1|s~0_combout\)))) # (!\dut_inst|counter_inst|quad3|fa4|add_instance_s0_2|s~0_combout\ & 
-- (\dut_inst|counter_inst|quad3|fa3|add_instance_s0_1|s~5_combout\ & (\dut_inst|counter_inst|adder2|bit_1|add_instance_s0_1|s~0_combout\ & \dut_inst|counter_inst|adder2|bit_2|add_instance_s0_2|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_inst|counter_inst|quad3|fa4|add_instance_s0_2|s~0_combout\,
	datab => \dut_inst|counter_inst|quad3|fa3|add_instance_s0_1|s~5_combout\,
	datac => \dut_inst|counter_inst|adder2|bit_1|add_instance_s0_1|s~0_combout\,
	datad => \dut_inst|counter_inst|adder2|bit_2|add_instance_s0_2|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|adder3|bit_2|co~0_combout\);

-- Location: LC_X4_Y8_N1
\dut_inst|counter_inst|adder2|bit_3|add_instance_s0_2|s~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|adder2|bit_3|add_instance_s0_2|s~0_combout\ = \dut_inst|counter_inst|adder2|bit_2|co~0_combout\ $ (\dut_inst|counter_inst|adder1|bit_3|add_instance_s0_2|s~0_combout\ $ (((\dut_inst|counter_inst|quad2|fa4|co~0_combout\ & 
-- !\dut_inst|counter_inst|quad2|fa2|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2dd2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_inst|counter_inst|quad2|fa4|co~0_combout\,
	datab => \dut_inst|counter_inst|quad2|fa2|co~0_combout\,
	datac => \dut_inst|counter_inst|adder2|bit_2|co~0_combout\,
	datad => \dut_inst|counter_inst|adder1|bit_3|add_instance_s0_2|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|adder2|bit_3|add_instance_s0_2|s~0_combout\);

-- Location: LC_X4_Y8_N2
\dut_inst|counter_inst|adder3|bit_3|co~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|adder3|bit_3|co~0_combout\ = (\dut_inst|counter_inst|adder3|bit_2|co~0_combout\ & ((\dut_inst|counter_inst|adder2|bit_3|add_instance_s0_2|s~0_combout\) # ((\dut_inst|counter_inst|quad3|fa4|co~0_combout\ & 
-- !\dut_inst|counter_inst|quad3|fa2|co~0_combout\)))) # (!\dut_inst|counter_inst|adder3|bit_2|co~0_combout\ & (\dut_inst|counter_inst|quad3|fa4|co~0_combout\ & (!\dut_inst|counter_inst|quad3|fa2|co~0_combout\ & 
-- \dut_inst|counter_inst|adder2|bit_3|add_instance_s0_2|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f220",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_inst|counter_inst|quad3|fa4|co~0_combout\,
	datab => \dut_inst|counter_inst|quad3|fa2|co~0_combout\,
	datac => \dut_inst|counter_inst|adder3|bit_2|co~0_combout\,
	datad => \dut_inst|counter_inst|adder2|bit_3|add_instance_s0_2|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|adder3|bit_3|co~0_combout\);

-- Location: LC_X4_Y8_N5
\dut_inst|counter_inst|adder3|bit_4|add_instance_s0_2|s~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|adder3|bit_4|add_instance_s0_2|s~0_combout\ = (\dut_inst|counter_inst|adder1|bit_3|co~0_combout\ $ (\dut_inst|counter_inst|adder2|bit_3|co~0_combout\ $ (\dut_inst|counter_inst|adder3|bit_3|co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut_inst|counter_inst|adder1|bit_3|co~0_combout\,
	datac => \dut_inst|counter_inst|adder2|bit_3|co~0_combout\,
	datad => \dut_inst|counter_inst|adder3|bit_3|co~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|adder3|bit_4|add_instance_s0_2|s~0_combout\);

-- Location: LC_X4_Y8_N6
\scan_instance|Out_Reg|L1[3]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(3) = DFFEAS((\scan_instance|Selector3~0\ & ((\TRST~combout\ & ((\dut_inst|counter_inst|adder3|bit_4|add_instance_s0_2|s~0_combout\))) # (!\TRST~combout\ & (\scan_instance|In_Reg|L1\(0))))) # (!\scan_instance|Selector3~0\ & 
-- (((\dut_inst|counter_inst|adder3|bit_4|add_instance_s0_2|s~0_combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[2]~0_combout\, , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fb08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|In_Reg|L1\(0),
	datab => \scan_instance|Selector3~0\,
	datac => \TRST~combout\,
	datad => \dut_inst|counter_inst|adder3|bit_4|add_instance_s0_2|s~0_combout\,
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(3));

-- Location: LC_X4_Y8_N8
\dut_inst|counter_inst|adder3|bit_3|add_instance_s0_2|s~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|adder3|bit_3|add_instance_s0_2|s~0_combout\ = \dut_inst|counter_inst|adder2|bit_3|add_instance_s0_2|s~0_combout\ $ (\dut_inst|counter_inst|adder3|bit_2|co~0_combout\ $ (((\dut_inst|counter_inst|quad3|fa4|co~0_combout\ & 
-- !\dut_inst|counter_inst|quad3|fa2|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c96",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_inst|counter_inst|quad3|fa4|co~0_combout\,
	datab => \dut_inst|counter_inst|adder2|bit_3|add_instance_s0_2|s~0_combout\,
	datac => \dut_inst|counter_inst|adder3|bit_2|co~0_combout\,
	datad => \dut_inst|counter_inst|quad3|fa2|co~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|adder3|bit_3|add_instance_s0_2|s~0_combout\);

-- Location: LC_X4_Y8_N9
\scan_instance|Out_Reg|L1[2]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(2) = DFFEAS((\TRST~combout\ & (((\dut_inst|counter_inst|adder3|bit_3|add_instance_s0_2|s~0_combout\)))) # (!\TRST~combout\ & ((\scan_instance|Selector3~0\ & (\scan_instance|Out_Reg|L1\(3))) # (!\scan_instance|Selector3~0\ & 
-- ((\dut_inst|counter_inst|adder3|bit_3|add_instance_s0_2|s~0_combout\))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[2]~0_combout\, , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef40",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datab => \scan_instance|Out_Reg|L1\(3),
	datac => \scan_instance|Selector3~0\,
	datad => \dut_inst|counter_inst|adder3|bit_3|add_instance_s0_2|s~0_combout\,
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(2));

-- Location: LC_X4_Y8_N7
\dut_inst|counter_inst|adder3|bit_2|add_instance_s0_2|s~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|adder3|bit_2|add_instance_s0_2|s~0_combout\ = \dut_inst|counter_inst|quad3|fa4|add_instance_s0_2|s~0_combout\ $ (\dut_inst|counter_inst|adder2|bit_2|add_instance_s0_2|s~0_combout\ $ 
-- (((\dut_inst|counter_inst|quad3|fa3|add_instance_s0_1|s~5_combout\ & \dut_inst|counter_inst|adder2|bit_1|add_instance_s0_1|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "956a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_inst|counter_inst|quad3|fa4|add_instance_s0_2|s~0_combout\,
	datab => \dut_inst|counter_inst|quad3|fa3|add_instance_s0_1|s~5_combout\,
	datac => \dut_inst|counter_inst|adder2|bit_1|add_instance_s0_1|s~0_combout\,
	datad => \dut_inst|counter_inst|adder2|bit_2|add_instance_s0_2|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|adder3|bit_2|add_instance_s0_2|s~0_combout\);

-- Location: LC_X3_Y8_N9
\scan_instance|Out_Reg|L1[1]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(1) = DFFEAS((\TRST~combout\ & (((\dut_inst|counter_inst|adder3|bit_2|add_instance_s0_2|s~0_combout\)))) # (!\TRST~combout\ & ((\scan_instance|Selector3~0\ & (\scan_instance|Out_Reg|L1\(2))) # (!\scan_instance|Selector3~0\ & 
-- ((\dut_inst|counter_inst|adder3|bit_2|add_instance_s0_2|s~0_combout\))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[2]~0_combout\, , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef20",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Out_Reg|L1\(2),
	datab => \TRST~combout\,
	datac => \scan_instance|Selector3~0\,
	datad => \dut_inst|counter_inst|adder3|bit_2|add_instance_s0_2|s~0_combout\,
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(1));

-- Location: LC_X3_Y8_N1
\dut_inst|counter_inst|adder3|bit_1|add_instance_s0_1|s~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|counter_inst|adder3|bit_1|add_instance_s0_1|s~0_combout\ = \dut_inst|counter_inst|quad3|fa2|add_instance_s0_1|s~0_combout\ $ (\dut_inst|counter_inst|quad3|fa3|add_instance_s0_1|s~4_combout\ $ 
-- (\dut_inst|counter_inst|quad2|fa3|add_instance_s0_1|s~5_combout\ $ (\dut_inst|counter_inst|adder1|bit_1|add_instance_s0_1|s~0_combout\)))

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
	dataa => \dut_inst|counter_inst|quad3|fa2|add_instance_s0_1|s~0_combout\,
	datab => \dut_inst|counter_inst|quad3|fa3|add_instance_s0_1|s~4_combout\,
	datac => \dut_inst|counter_inst|quad2|fa3|add_instance_s0_1|s~5_combout\,
	datad => \dut_inst|counter_inst|adder1|bit_1|add_instance_s0_1|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|counter_inst|adder3|bit_1|add_instance_s0_1|s~0_combout\);

-- Location: LC_X3_Y8_N4
\scan_instance|Out_Reg|L1[0]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(0) = DFFEAS((\TRST~combout\ & (((\dut_inst|counter_inst|adder3|bit_1|add_instance_s0_1|s~0_combout\)))) # (!\TRST~combout\ & ((\scan_instance|Selector3~0\ & (\scan_instance|Out_Reg|L1\(1))) # (!\scan_instance|Selector3~0\ & 
-- ((\dut_inst|counter_inst|adder3|bit_1|add_instance_s0_1|s~0_combout\))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[2]~0_combout\, , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef40",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datab => \scan_instance|Out_Reg|L1\(1),
	datac => \scan_instance|Selector3~0\,
	datad => \dut_inst|counter_inst|adder3|bit_1|add_instance_s0_1|s~0_combout\,
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(0));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\TDO~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \scan_instance|Out_Reg|L1\(0),
	oe => VCC,
	padio => ww_TDO);
END structure;


