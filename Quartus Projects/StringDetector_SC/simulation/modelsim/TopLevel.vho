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

-- DATE "03/10/2017 15:42:37"

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
SIGNAL \TMS~combout\ : std_logic;
SIGNAL \TRST~combout\ : std_logic;
SIGNAL \scan_instance|current_state.s_idle~regout\ : std_logic;
SIGNAL \scan_instance|current_state.s_DR~regout\ : std_logic;
SIGNAL \scan_instance|current_state.s_capture~regout\ : std_logic;
SIGNAL \scan_instance|current_state.s_shift~regout\ : std_logic;
SIGNAL \scan_instance|current_state.s_update~regout\ : std_logic;
SIGNAL \scan_instance|Selector0~0_combout\ : std_logic;
SIGNAL \scan_instance|cap_shft~0_combout\ : std_logic;
SIGNAL \TDI~combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|L1[2]~1_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|L2~1_combout\ : std_logic;
SIGNAL \dut_inst|K|d0|master|qsig~1_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[5]~1_combout\ : std_logic;
SIGNAL \dut_inst|K|d2|master|qsig~3_combout\ : std_logic;
SIGNAL \dut_inst|K|d2|master|qsig~1_combout\ : std_logic;
SIGNAL \dut_inst|G|d0|master|qsig~22_combout\ : std_logic;
SIGNAL \dut_inst|K|d2|master|qsig~4_combout\ : std_logic;
SIGNAL \dut_inst|K|A5f|AA4|c~0_combout\ : std_logic;
SIGNAL \dut_inst|K|d2|master|qsig~2_combout\ : std_logic;
SIGNAL \dut_inst|K|d2|slave|qsig~1_combout\ : std_logic;
SIGNAL \dut_inst|K|d2|master|qsig~5_combout\ : std_logic;
SIGNAL \dut_inst|K|d2|slave|qsig~0_combout\ : std_logic;
SIGNAL \dut_inst|K|d1|master|qsig~0_combout\ : std_logic;
SIGNAL \dut_inst|K|A5i|AA1|c~0_combout\ : std_logic;
SIGNAL \dut_inst|G|A53|AA4|c~2_combout\ : std_logic;
SIGNAL \dut_inst|G|A53|AA4|c~3_combout\ : std_logic;
SIGNAL \dut_inst|K|d1|master|qsig~1_combout\ : std_logic;
SIGNAL \dut_inst|K|d1|master|qsig~2_combout\ : std_logic;
SIGNAL \dut_inst|K|d1|slave|qsig~0_combout\ : std_logic;
SIGNAL \dut_inst|K|d0|master|qsig~2_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[6]~2_combout\ : std_logic;
SIGNAL \dut_inst|K|d0|master|qsig~3_combout\ : std_logic;
SIGNAL \dut_inst|K|d0|master|qsig~4_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[2]~3_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[1]~4_combout\ : std_logic;
SIGNAL \dut_inst|K|d0|master|qsig~5_combout\ : std_logic;
SIGNAL \dut_inst|K|d0|master|qsig~6_combout\ : std_logic;
SIGNAL \dut_inst|K|d0|slave|qsig~0_combout\ : std_logic;
SIGNAL \dut_inst|K|d2|master|qsig~0_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~15_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~19_combout\ : std_logic;
SIGNAL \dut_inst|T|A5r|AA4|c~0_combout\ : std_logic;
SIGNAL \dut_inst|G|A52|AA4|c~2_combout\ : std_logic;
SIGNAL \dut_inst|G|A52|AA4|c~3_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[0]~0_combout\ : std_logic;
SIGNAL \dut_inst|G|d1|master|qsig~0_combout\ : std_logic;
SIGNAL \dut_inst|G|d1|slave|qsig~1_combout\ : std_logic;
SIGNAL \dut_inst|G|d0|slave|qsig~1_combout\ : std_logic;
SIGNAL \dut_inst|G|d0|master|qsig~6_combout\ : std_logic;
SIGNAL \dut_inst|G|d0|master|qsig~3_combout\ : std_logic;
SIGNAL \dut_inst|G|d0|master|qsig~25_combout\ : std_logic;
SIGNAL \dut_inst|G|d0|master|qsig~24_combout\ : std_logic;
SIGNAL \dut_inst|G|d0|slave|qsig~0_combout\ : std_logic;
SIGNAL \dut_inst|G|d0|master|qsig~23_combout\ : std_logic;
SIGNAL \dut_inst|G|d1|master|qsig~1_combout\ : std_logic;
SIGNAL \dut_inst|G|d1|slave|qsig~0_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~20_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~21_combout\ : std_logic;
SIGNAL \dut_inst|K|d0|master|qsig~0_combout\ : std_logic;
SIGNAL \dut_inst|T|A5e|AA1|c~0_combout\ : std_logic;
SIGNAL \dut_inst|B|A5b|AA4|c~combout\ : std_logic;
SIGNAL \dut_inst|B|d0|master|qsig~2_combout\ : std_logic;
SIGNAL \dut_inst|B|d0|master|qsig~0_combout\ : std_logic;
SIGNAL \dut_inst|B|d0|master|qsig~1_combout\ : std_logic;
SIGNAL \dut_inst|B|d0|master|qsig~3_combout\ : std_logic;
SIGNAL \dut_inst|B|d0|slave|qsig~0_combout\ : std_logic;
SIGNAL \dut_inst|B|d1|master|qsig~0_combout\ : std_logic;
SIGNAL \dut_inst|B|d1|master|qsig~1_combout\ : std_logic;
SIGNAL \dut_inst|B|d1|master|qsig~2_combout\ : std_logic;
SIGNAL \dut_inst|B|d1|master|qsig~3_combout\ : std_logic;
SIGNAL \dut_inst|B|d1|slave|qsig~0_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~3_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~23_combout\ : std_logic;
SIGNAL \dut_inst|T|A5r|AA4|c~1_combout\ : std_logic;
SIGNAL \dut_inst|T|d1|master|qsig~0_combout\ : std_logic;
SIGNAL \dut_inst|T|d0|master|qsig~0_combout\ : std_logic;
SIGNAL \dut_inst|T|d0|master|qsig~1_combout\ : std_logic;
SIGNAL \dut_inst|T|d0|master|qsig~2_combout\ : std_logic;
SIGNAL \dut_inst|T|d0|master|qsig~3_combout\ : std_logic;
SIGNAL \dut_inst|T|d0|slave|qsig~0_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~16_combout\ : std_logic;
SIGNAL \dut_inst|T|d2|master|qsig~0_combout\ : std_logic;
SIGNAL \dut_inst|T|d2|master|qsig~1_combout\ : std_logic;
SIGNAL \dut_inst|T|d2|master|qsig~2_combout\ : std_logic;
SIGNAL \dut_inst|T|d2|slave|qsig~0_combout\ : std_logic;
SIGNAL \dut_inst|T|d1|master|qsig~1_combout\ : std_logic;
SIGNAL \dut_inst|T|d1|master|qsig~2_combout\ : std_logic;
SIGNAL \dut_inst|T|d1|slave|qsig~0_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~17_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~18_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~22_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|L1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \scan_instance|In_Reg|L2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \scan_instance|Out_Reg|L1\ : std_logic_vector(0 DOWNTO 0);

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

-- Location: LC_X3_Y7_N9
\scan_instance|current_state.s_idle\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_idle~regout\ = DFFEAS(((!\scan_instance|current_state.s_update~regout\ & ((\TMS~combout\) # (\scan_instance|current_state.s_idle~regout\)))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3330",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|current_state.s_update~regout\,
	datac => \TMS~combout\,
	datad => \scan_instance|current_state.s_idle~regout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_idle~regout\);

-- Location: LC_X3_Y7_N1
\scan_instance|current_state.s_DR\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_DR~regout\ = DFFEAS(((\TMS~combout\ & ((\scan_instance|current_state.s_DR~regout\) # (!\scan_instance|current_state.s_idle~regout\)))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|current_state.s_idle~regout\,
	datac => \TMS~combout\,
	datad => \scan_instance|current_state.s_DR~regout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_DR~regout\);

-- Location: LC_X3_Y7_N3
\scan_instance|current_state.s_capture\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_capture~regout\ = DFFEAS((((!\TMS~combout\ & \scan_instance|current_state.s_DR~regout\))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

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
	datac => \TMS~combout\,
	datad => \scan_instance|current_state.s_DR~regout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_capture~regout\);

-- Location: LC_X3_Y7_N2
\scan_instance|current_state.s_shift\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_shift~regout\ = DFFEAS(((!\TMS~combout\ & ((\scan_instance|current_state.s_shift~regout\) # (\scan_instance|current_state.s_capture~regout\)))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|current_state.s_shift~regout\,
	datac => \TMS~combout\,
	datad => \scan_instance|current_state.s_capture~regout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_shift~regout\);

-- Location: LC_X3_Y7_N7
\scan_instance|current_state.s_update\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_update~regout\ = DFFEAS(((\TMS~combout\ & ((\scan_instance|current_state.s_shift~regout\) # (\scan_instance|current_state.s_capture~regout\)))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|current_state.s_shift~regout\,
	datac => \TMS~combout\,
	datad => \scan_instance|current_state.s_capture~regout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_update~regout\);

-- Location: LC_X3_Y7_N0
\scan_instance|Selector0~0\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Selector0~0_combout\ = ((\scan_instance|current_state.s_update~regout\) # ((\TMS~combout\) # (!\scan_instance|current_state.s_idle~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \scan_instance|current_state.s_update~regout\,
	datac => \TMS~combout\,
	datad => \scan_instance|current_state.s_idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Selector0~0_combout\);

-- Location: LC_X3_Y7_N6
\scan_instance|cap_shft~0\ : maxv_lcell
-- Equation(s):
-- \scan_instance|cap_shft~0_combout\ = (!\TRST~combout\ & (!\TMS~combout\ & ((\scan_instance|current_state.s_shift~regout\) # (\scan_instance|current_state.s_capture~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0504",
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
	combout => \scan_instance|cap_shft~0_combout\);

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

-- Location: LC_X3_Y7_N4
\scan_instance|In_Reg|L1[2]~1\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1[2]~1_combout\ = (\TRST~combout\) # ((!\scan_instance|current_state.s_update~regout\ & (!\TMS~combout\ & \scan_instance|current_state.s_idle~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "abaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|current_state.s_update~regout\,
	datac => \TMS~combout\,
	datad => \scan_instance|current_state.s_idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|L1[2]~1_combout\);

-- Location: LC_X3_Y7_N8
\scan_instance|In_Reg|L1[6]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(6) = DFFEAS((\scan_instance|cap_shft~0_combout\ & (\TDI~combout\)), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L1[2]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8888",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|cap_shft~0_combout\,
	datab => \TDI~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(6));

-- Location: LC_X3_Y7_N5
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

-- Location: LC_X4_Y6_N4
\scan_instance|In_Reg|L2[6]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(6) = DFFEAS(((!\TRST~combout\ & ((\scan_instance|In_Reg|L1\(6))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

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
	datad => \scan_instance|In_Reg|L1\(6),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(6));

-- Location: LC_X5_Y5_N2
\scan_instance|In_Reg|L1[5]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(5) = DFFEAS(((\scan_instance|cap_shft~0_combout\ & ((\scan_instance|In_Reg|L1\(6))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L1[2]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|cap_shft~0_combout\,
	datad => \scan_instance|In_Reg|L1\(6),
	aclr => GND,
	ena => \scan_instance|In_Reg|L1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(5));

-- Location: LC_X4_Y6_N5
\scan_instance|In_Reg|L2[5]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(5) = DFFEAS(((!\TRST~combout\ & ((\scan_instance|In_Reg|L1\(5))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

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
	datad => \scan_instance|In_Reg|L1\(5),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(5));

-- Location: LC_X5_Y5_N6
\scan_instance|In_Reg|L1[4]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(4) = DFFEAS(((\scan_instance|cap_shft~0_combout\ & ((\scan_instance|In_Reg|L1\(5))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L1[2]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|cap_shft~0_combout\,
	datad => \scan_instance|In_Reg|L1\(5),
	aclr => GND,
	ena => \scan_instance|In_Reg|L1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(4));

-- Location: LC_X5_Y5_N8
\scan_instance|In_Reg|L1[3]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(3) = DFFEAS((((\scan_instance|In_Reg|L1\(4) & \scan_instance|cap_shft~0_combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L1[2]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \scan_instance|In_Reg|L1\(4),
	datad => \scan_instance|cap_shft~0_combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(3));

-- Location: LC_X5_Y5_N0
\scan_instance|In_Reg|L1[2]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(2) = DFFEAS(((\scan_instance|cap_shft~0_combout\ & ((\scan_instance|In_Reg|L1\(3))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L1[2]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|cap_shft~0_combout\,
	datad => \scan_instance|In_Reg|L1\(3),
	aclr => GND,
	ena => \scan_instance|In_Reg|L1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(2));

-- Location: LC_X5_Y5_N4
\scan_instance|In_Reg|L1[1]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(1) = DFFEAS((((\scan_instance|In_Reg|L1\(2) & \scan_instance|cap_shft~0_combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L1[2]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \scan_instance|In_Reg|L1\(2),
	datad => \scan_instance|cap_shft~0_combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(1));

-- Location: LC_X5_Y5_N5
\scan_instance|In_Reg|L1[0]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(0) = DFFEAS((((\scan_instance|In_Reg|L1\(1) & \scan_instance|cap_shft~0_combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L1[2]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \scan_instance|In_Reg|L1\(1),
	datad => \scan_instance|cap_shft~0_combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(0));

-- Location: LC_X5_Y6_N3
\scan_instance|In_Reg|L2[0]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(0) = DFFEAS(((!\TRST~combout\ & ((\scan_instance|In_Reg|L1\(0))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

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
	datad => \scan_instance|In_Reg|L1\(0),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(0));

-- Location: LC_X5_Y6_N2
\scan_instance|In_Reg|L2[4]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(4) = DFFEAS((((!\TRST~combout\ & \scan_instance|In_Reg|L1\(4)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

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
	datad => \scan_instance|In_Reg|L1\(4),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(4));

-- Location: LC_X5_Y6_N9
\scan_instance|In_Reg|L2[3]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(3) = DFFEAS((((!\TRST~combout\ & \scan_instance|In_Reg|L1\(3)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

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
	datad => \scan_instance|In_Reg|L1\(3),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(3));

-- Location: LC_X6_Y6_N5
\dut_inst|K|d0|master|qsig~1\ : maxv_lcell
-- Equation(s):
-- \dut_inst|K|d0|master|qsig~1_combout\ = (\scan_instance|In_Reg|L2\(0) & (!\scan_instance|In_Reg|L2\(4) & (\scan_instance|In_Reg|L2\(3) & !\TRST~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(0),
	datab => \scan_instance|In_Reg|L2\(4),
	datac => \scan_instance|In_Reg|L2\(3),
	datad => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|K|d0|master|qsig~1_combout\);

-- Location: LC_X6_Y6_N8
\scan_instance|In_Reg|PO[5]~1\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[5]~1_combout\ = (((\scan_instance|In_Reg|L2\(5) & !\TRST~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \scan_instance|In_Reg|L2\(5),
	datad => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[5]~1_combout\);

-- Location: LC_X4_Y6_N9
\scan_instance|In_Reg|L2[1]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(1) = DFFEAS(((!\TRST~combout\ & ((\scan_instance|In_Reg|L1\(1))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

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
	datad => \scan_instance|In_Reg|L1\(1),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(1));

-- Location: LC_X4_Y6_N8
\dut_inst|K|d2|master|qsig~3\ : maxv_lcell
-- Equation(s):
-- \dut_inst|K|d2|master|qsig~3_combout\ = (!\TRST~combout\ & (!\dut_inst|K|d2|slave|qsig~0_combout\ & (!\scan_instance|In_Reg|L2\(0) & \scan_instance|In_Reg|L2\(1))))

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
	dataa => \TRST~combout\,
	datab => \dut_inst|K|d2|slave|qsig~0_combout\,
	datac => \scan_instance|In_Reg|L2\(0),
	datad => \scan_instance|In_Reg|L2\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|K|d2|master|qsig~3_combout\);

-- Location: LC_X5_Y6_N5
\scan_instance|In_Reg|L2[2]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(2) = DFFEAS((((!\TRST~combout\ & \scan_instance|In_Reg|L1\(2)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

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
	datad => \scan_instance|In_Reg|L1\(2),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(2));

-- Location: LC_X4_Y6_N6
\dut_inst|K|d2|master|qsig~1\ : maxv_lcell
-- Equation(s):
-- \dut_inst|K|d2|master|qsig~1_combout\ = (!\TRST~combout\ & (!\scan_instance|In_Reg|L2\(4) & (!\scan_instance|In_Reg|L2\(3) & \scan_instance|In_Reg|L2\(2))))

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
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(4),
	datac => \scan_instance|In_Reg|L2\(3),
	datad => \scan_instance|In_Reg|L2\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|K|d2|master|qsig~1_combout\);

-- Location: LC_X4_Y6_N2
\dut_inst|G|d0|master|qsig~22\ : maxv_lcell
-- Equation(s):
-- \dut_inst|G|d0|master|qsig~22_combout\ = (\TRST~combout\) # (((!\scan_instance|In_Reg|L2\(5) & !\scan_instance|In_Reg|L2\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(5),
	datad => \scan_instance|In_Reg|L2\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|G|d0|master|qsig~22_combout\);

-- Location: LC_X4_Y6_N1
\dut_inst|K|d2|master|qsig~4\ : maxv_lcell
-- Equation(s):
-- \dut_inst|K|d2|master|qsig~4_combout\ = (\dut_inst|K|d2|master|qsig~3_combout\ & (\dut_inst|K|d2|master|qsig~0_combout\ & (\dut_inst|K|d2|master|qsig~1_combout\ & \dut_inst|G|d0|master|qsig~22_combout\)))

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
	dataa => \dut_inst|K|d2|master|qsig~3_combout\,
	datab => \dut_inst|K|d2|master|qsig~0_combout\,
	datac => \dut_inst|K|d2|master|qsig~1_combout\,
	datad => \dut_inst|G|d0|master|qsig~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|K|d2|master|qsig~4_combout\);

-- Location: LC_X4_Y6_N7
\dut_inst|K|A5f|AA4|c~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|K|A5f|AA4|c~0_combout\ = (!\TRST~combout\ & (!\scan_instance|In_Reg|L2\(1) & (\scan_instance|In_Reg|L2\(0) & \dut_inst|K|d2|master|qsig~1_combout\)))

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
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(1),
	datac => \scan_instance|In_Reg|L2\(0),
	datad => \dut_inst|K|d2|master|qsig~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|K|A5f|AA4|c~0_combout\);

-- Location: LC_X4_Y6_N3
\dut_inst|K|d2|master|qsig~2\ : maxv_lcell
-- Equation(s):
-- \dut_inst|K|d2|master|qsig~2_combout\ = ((\dut_inst|K|d2|master|qsig~0_combout\ & (!\dut_inst|K|A5f|AA4|c~0_combout\ & \dut_inst|G|d0|master|qsig~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut_inst|K|d2|master|qsig~0_combout\,
	datac => \dut_inst|K|A5f|AA4|c~0_combout\,
	datad => \dut_inst|G|d0|master|qsig~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|K|d2|master|qsig~2_combout\);

-- Location: LC_X3_Y6_N9
\dut_inst|K|d2|slave|qsig~1\ : maxv_lcell
-- Equation(s):
-- \dut_inst|K|d2|slave|qsig~1_combout\ = ((\scan_instance|In_Reg|L2\(5) & (!\TRST~combout\ & \dut_inst|K|d2|master|qsig~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \scan_instance|In_Reg|L2\(5),
	datac => \TRST~combout\,
	datad => \dut_inst|K|d2|master|qsig~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|K|d2|slave|qsig~1_combout\);

-- Location: LC_X3_Y6_N3
\dut_inst|K|d2|master|qsig~5\ : maxv_lcell
-- Equation(s):
-- \dut_inst|K|d2|master|qsig~5_combout\ = (\dut_inst|K|d2|master|qsig~4_combout\) # ((\dut_inst|K|d2|slave|qsig~1_combout\) # ((\dut_inst|K|d2|slave|qsig~0_combout\ & \dut_inst|K|d2|master|qsig~2_combout\)))

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
	dataa => \dut_inst|K|d2|master|qsig~4_combout\,
	datab => \dut_inst|K|d2|slave|qsig~0_combout\,
	datac => \dut_inst|K|d2|master|qsig~2_combout\,
	datad => \dut_inst|K|d2|slave|qsig~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|K|d2|master|qsig~5_combout\);

-- Location: LC_X3_Y9_N0
\dut_inst|K|d2|slave|qsig~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|K|d2|slave|qsig~0_combout\ = (\TRST~combout\ & (((\dut_inst|K|d2|slave|qsig~0_combout\)))) # (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(5) & ((\dut_inst|K|d2|master|qsig~5_combout\))) # (!\scan_instance|In_Reg|L2\(5) & 
-- (\dut_inst|K|d2|slave|qsig~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4b0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(5),
	datac => \dut_inst|K|d2|slave|qsig~0_combout\,
	datad => \dut_inst|K|d2|master|qsig~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|K|d2|slave|qsig~0_combout\);

-- Location: LC_X4_Y6_N0
\dut_inst|K|d1|master|qsig~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|K|d1|master|qsig~0_combout\ = (!\dut_inst|K|d2|slave|qsig~0_combout\ & ((\TRST~combout\) # ((!\scan_instance|In_Reg|L2\(5) & !\scan_instance|In_Reg|L2\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(5),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(6),
	datad => \dut_inst|K|d2|slave|qsig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|K|d1|master|qsig~0_combout\);

-- Location: LC_X5_Y6_N1
\dut_inst|K|A5i|AA1|c~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|K|A5i|AA1|c~0_combout\ = ((\scan_instance|In_Reg|L2\(4)) # ((!\scan_instance|In_Reg|L2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \scan_instance|In_Reg|L2\(4),
	datad => \scan_instance|In_Reg|L2\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|K|A5i|AA1|c~0_combout\);

-- Location: LC_X5_Y6_N0
\dut_inst|G|A53|AA4|c~2\ : maxv_lcell
-- Equation(s):
-- \dut_inst|G|A53|AA4|c~2_combout\ = (\scan_instance|In_Reg|L2\(2) & (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(1) & !\dut_inst|K|A5i|AA1|c~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(2),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(1),
	datad => \dut_inst|K|A5i|AA1|c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|G|A53|AA4|c~2_combout\);

-- Location: LC_X5_Y6_N6
\dut_inst|G|A53|AA4|c~3\ : maxv_lcell
-- Equation(s):
-- \dut_inst|G|A53|AA4|c~3_combout\ = (\dut_inst|G|A53|AA4|c~2_combout\ & (((\TRST~combout\)) # (!\scan_instance|In_Reg|L2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d0d0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(0),
	datab => \TRST~combout\,
	datac => \dut_inst|G|A53|AA4|c~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|G|A53|AA4|c~3_combout\);

-- Location: LC_X5_Y6_N7
\dut_inst|K|d1|master|qsig~1\ : maxv_lcell
-- Equation(s):
-- \dut_inst|K|d1|master|qsig~1_combout\ = (\dut_inst|K|d1|master|qsig~0_combout\ & ((\dut_inst|K|d1|slave|qsig~0_combout\) # ((\dut_inst|K|d0|slave|qsig~0_combout\ & \dut_inst|G|A53|AA4|c~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a8a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_inst|K|d1|master|qsig~0_combout\,
	datab => \dut_inst|K|d0|slave|qsig~0_combout\,
	datac => \dut_inst|K|d1|slave|qsig~0_combout\,
	datad => \dut_inst|G|A53|AA4|c~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|K|d1|master|qsig~1_combout\);

-- Location: LC_X6_Y6_N0
\dut_inst|K|d1|master|qsig~2\ : maxv_lcell
-- Equation(s):
-- \dut_inst|K|d1|master|qsig~2_combout\ = (\dut_inst|K|d1|master|qsig~1_combout\) # ((\dut_inst|K|d2|master|qsig~2_combout\) # ((\scan_instance|In_Reg|PO[5]~1_combout\ & \dut_inst|K|d1|master|qsig~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[5]~1_combout\,
	datab => \dut_inst|K|d1|master|qsig~1_combout\,
	datac => \dut_inst|K|d1|master|qsig~2_combout\,
	datad => \dut_inst|K|d2|master|qsig~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|K|d1|master|qsig~2_combout\);

-- Location: LC_X3_Y6_N4
\dut_inst|K|d1|slave|qsig~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|K|d1|slave|qsig~0_combout\ = (\TRST~combout\ & (((\dut_inst|K|d1|slave|qsig~0_combout\)))) # (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(5) & ((\dut_inst|K|d1|master|qsig~2_combout\))) # (!\scan_instance|In_Reg|L2\(5) & 
-- (\dut_inst|K|d1|slave|qsig~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4b0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(5),
	datac => \dut_inst|K|d1|slave|qsig~0_combout\,
	datad => \dut_inst|K|d1|master|qsig~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|K|d1|slave|qsig~0_combout\);

-- Location: LC_X3_Y6_N7
\dut_inst|K|d0|master|qsig~2\ : maxv_lcell
-- Equation(s):
-- \dut_inst|K|d0|master|qsig~2_combout\ = (!\TRST~combout\ & (!\scan_instance|In_Reg|L2\(5) & (\scan_instance|In_Reg|L2\(1) & !\scan_instance|In_Reg|L2\(2))))

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
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(5),
	datac => \scan_instance|In_Reg|L2\(1),
	datad => \scan_instance|In_Reg|L2\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|K|d0|master|qsig~2_combout\);

-- Location: LC_X3_Y6_N5
\scan_instance|In_Reg|PO[6]~2\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[6]~2_combout\ = (!\TRST~combout\ & (((\scan_instance|In_Reg|L2\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[6]~2_combout\);

-- Location: LC_X3_Y6_N6
\dut_inst|K|d0|master|qsig~3\ : maxv_lcell
-- Equation(s):
-- \dut_inst|K|d0|master|qsig~3_combout\ = (\dut_inst|K|d0|master|qsig~2_combout\ & ((\scan_instance|In_Reg|PO[6]~2_combout\) # ((!\dut_inst|K|d1|slave|qsig~0_combout\ & !\dut_inst|K|d2|slave|qsig~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_inst|K|d1|slave|qsig~0_combout\,
	datab => \dut_inst|K|d2|slave|qsig~0_combout\,
	datac => \dut_inst|K|d0|master|qsig~2_combout\,
	datad => \scan_instance|In_Reg|PO[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|K|d0|master|qsig~3_combout\);

-- Location: LC_X6_Y6_N9
\dut_inst|K|d0|master|qsig~4\ : maxv_lcell
-- Equation(s):
-- \dut_inst|K|d0|master|qsig~4_combout\ = (\dut_inst|K|d0|master|qsig~1_combout\ & ((\dut_inst|K|d0|master|qsig~3_combout\) # ((\dut_inst|K|d0|master|qsig~6_combout\ & \scan_instance|In_Reg|PO[5]~1_combout\)))) # (!\dut_inst|K|d0|master|qsig~1_combout\ & 
-- (\dut_inst|K|d0|master|qsig~6_combout\ & ((\scan_instance|In_Reg|PO[5]~1_combout\))))

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
	dataa => \dut_inst|K|d0|master|qsig~1_combout\,
	datab => \dut_inst|K|d0|master|qsig~6_combout\,
	datac => \dut_inst|K|d0|master|qsig~3_combout\,
	datad => \scan_instance|In_Reg|PO[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|K|d0|master|qsig~4_combout\);

-- Location: LC_X6_Y6_N4
\scan_instance|In_Reg|PO[2]~3\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[2]~3_combout\ = (\scan_instance|In_Reg|L2\(2) & (((!\TRST~combout\))))

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
	dataa => \scan_instance|In_Reg|L2\(2),
	datad => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[2]~3_combout\);

-- Location: LC_X6_Y6_N7
\scan_instance|In_Reg|PO[1]~4\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[1]~4_combout\ = (((\scan_instance|In_Reg|L2\(1) & !\TRST~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \scan_instance|In_Reg|L2\(1),
	datad => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[1]~4_combout\);

-- Location: LC_X6_Y6_N6
\dut_inst|K|d0|master|qsig~5\ : maxv_lcell
-- Equation(s):
-- \dut_inst|K|d0|master|qsig~5_combout\ = (\scan_instance|In_Reg|PO[2]~3_combout\) # ((\scan_instance|In_Reg|PO[1]~4_combout\) # ((!\dut_inst|K|d0|master|qsig~1_combout\) # (!\dut_inst|K|d1|slave|qsig~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "efff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[2]~3_combout\,
	datab => \scan_instance|In_Reg|PO[1]~4_combout\,
	datac => \dut_inst|K|d1|slave|qsig~0_combout\,
	datad => \dut_inst|K|d0|master|qsig~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|K|d0|master|qsig~5_combout\);

-- Location: LC_X3_Y6_N8
\dut_inst|K|d0|master|qsig~6\ : maxv_lcell
-- Equation(s):
-- \dut_inst|K|d0|master|qsig~6_combout\ = (\dut_inst|K|d0|master|qsig~4_combout\) # ((\dut_inst|K|d0|master|qsig~5_combout\ & (\dut_inst|K|d1|master|qsig~0_combout\ & \dut_inst|K|d0|slave|qsig~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_inst|K|d0|master|qsig~4_combout\,
	datab => \dut_inst|K|d0|master|qsig~5_combout\,
	datac => \dut_inst|K|d1|master|qsig~0_combout\,
	datad => \dut_inst|K|d0|slave|qsig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|K|d0|master|qsig~6_combout\);

-- Location: LC_X3_Y6_N2
\dut_inst|K|d0|slave|qsig~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|K|d0|slave|qsig~0_combout\ = (\TRST~combout\ & (\dut_inst|K|d0|slave|qsig~0_combout\)) # (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(5) & ((\dut_inst|K|d0|master|qsig~6_combout\))) # (!\scan_instance|In_Reg|L2\(5) & 
-- (\dut_inst|K|d0|slave|qsig~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc8c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \dut_inst|K|d0|slave|qsig~0_combout\,
	datac => \scan_instance|In_Reg|L2\(5),
	datad => \dut_inst|K|d0|master|qsig~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|K|d0|slave|qsig~0_combout\);

-- Location: LC_X3_Y9_N7
\dut_inst|K|d2|master|qsig~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|K|d2|master|qsig~0_combout\ = (\dut_inst|K|d1|slave|qsig~0_combout\ & (((!\TRST~combout\ & \scan_instance|In_Reg|L2\(6))) # (!\dut_inst|K|d0|slave|qsig~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(6),
	datac => \dut_inst|K|d0|slave|qsig~0_combout\,
	datad => \dut_inst|K|d1|slave|qsig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|K|d2|master|qsig~0_combout\);

-- Location: LC_X3_Y8_N7
\scan_instance|Out_Reg|mux1[0]~15\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~15_combout\ = ((!\scan_instance|cap_shft~0_combout\ & ((\TRST~combout\) # (!\scan_instance|In_Reg|L2\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00af",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(6),
	datad => \scan_instance|cap_shft~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~15_combout\);

-- Location: LC_X3_Y9_N5
\scan_instance|Out_Reg|mux1[0]~19\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~19_combout\ = (\dut_inst|K|d2|master|qsig~0_combout\ & (\dut_inst|K|A5f|AA4|c~0_combout\ & (\scan_instance|Out_Reg|mux1[0]~15_combout\ & \dut_inst|K|d2|slave|qsig~0_combout\)))

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
	dataa => \dut_inst|K|d2|master|qsig~0_combout\,
	datab => \dut_inst|K|A5f|AA4|c~0_combout\,
	datac => \scan_instance|Out_Reg|mux1[0]~15_combout\,
	datad => \dut_inst|K|d2|slave|qsig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~19_combout\);

-- Location: LC_X5_Y6_N8
\dut_inst|T|A5r|AA4|c~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|T|A5r|AA4|c~0_combout\ = ((\scan_instance|In_Reg|L2\(4) & ((!\scan_instance|In_Reg|L2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \scan_instance|In_Reg|L2\(4),
	datad => \scan_instance|In_Reg|L2\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|T|A5r|AA4|c~0_combout\);

-- Location: LC_X4_Y7_N5
\dut_inst|G|A52|AA4|c~2\ : maxv_lcell
-- Equation(s):
-- \dut_inst|G|A52|AA4|c~2_combout\ = (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(2) & (!\scan_instance|In_Reg|L2\(1) & \dut_inst|T|A5r|AA4|c~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(2),
	datac => \scan_instance|In_Reg|L2\(1),
	datad => \dut_inst|T|A5r|AA4|c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|G|A52|AA4|c~2_combout\);

-- Location: LC_X4_Y7_N6
\dut_inst|G|A52|AA4|c~3\ : maxv_lcell
-- Equation(s):
-- \dut_inst|G|A52|AA4|c~3_combout\ = ((\scan_instance|In_Reg|L2\(0) & (!\TRST~combout\ & \dut_inst|G|A52|AA4|c~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \scan_instance|In_Reg|L2\(0),
	datac => \TRST~combout\,
	datad => \dut_inst|G|A52|AA4|c~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|G|A52|AA4|c~3_combout\);

-- Location: LC_X5_Y9_N1
\scan_instance|In_Reg|PO[0]~0\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[0]~0_combout\ = ((!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[0]~0_combout\);

-- Location: LC_X5_Y6_N4
\dut_inst|G|d1|master|qsig~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|G|d1|master|qsig~0_combout\ = (\dut_inst|G|d0|master|qsig~22_combout\ & (\scan_instance|Out_Reg|mux1[0]~20_combout\ & ((\scan_instance|In_Reg|PO[0]~0_combout\) # (!\dut_inst|G|A53|AA4|c~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[0]~0_combout\,
	datab => \dut_inst|G|A53|AA4|c~2_combout\,
	datac => \dut_inst|G|d0|master|qsig~22_combout\,
	datad => \scan_instance|Out_Reg|mux1[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|G|d1|master|qsig~0_combout\);

-- Location: LC_X4_Y7_N4
\dut_inst|G|d1|slave|qsig~1\ : maxv_lcell
-- Equation(s):
-- \dut_inst|G|d1|slave|qsig~1_combout\ = (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(5) & ((\dut_inst|G|d1|master|qsig~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(5),
	datad => \dut_inst|G|d1|master|qsig~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|G|d1|slave|qsig~1_combout\);

-- Location: LC_X4_Y7_N8
\dut_inst|G|d0|slave|qsig~1\ : maxv_lcell
-- Equation(s):
-- \dut_inst|G|d0|slave|qsig~1_combout\ = ((\scan_instance|In_Reg|L2\(5) & (!\TRST~combout\ & \dut_inst|G|d0|master|qsig~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \scan_instance|In_Reg|L2\(5),
	datac => \TRST~combout\,
	datad => \dut_inst|G|d0|master|qsig~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|G|d0|slave|qsig~1_combout\);

-- Location: LC_X5_Y7_N7
\dut_inst|G|d0|master|qsig~6\ : maxv_lcell
-- Equation(s):
-- \dut_inst|G|d0|master|qsig~6_combout\ = (!\scan_instance|In_Reg|L2\(5) & ((\scan_instance|In_Reg|L2\(6)) # ((!\dut_inst|G|d1|slave|qsig~0_combout\ & !\dut_inst|G|d0|slave|qsig~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4445",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(5),
	datab => \scan_instance|In_Reg|L2\(6),
	datac => \dut_inst|G|d1|slave|qsig~0_combout\,
	datad => \dut_inst|G|d0|slave|qsig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|G|d0|master|qsig~6_combout\);

-- Location: LC_X5_Y7_N8
\dut_inst|G|d0|master|qsig~3\ : maxv_lcell
-- Equation(s):
-- \dut_inst|G|d0|master|qsig~3_combout\ = (!\scan_instance|In_Reg|L2\(4) & (!\scan_instance|In_Reg|L2\(3) & (\scan_instance|In_Reg|L2\(2) & \dut_inst|G|d0|master|qsig~6_combout\)))

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
	dataa => \scan_instance|In_Reg|L2\(4),
	datab => \scan_instance|In_Reg|L2\(3),
	datac => \scan_instance|In_Reg|L2\(2),
	datad => \dut_inst|G|d0|master|qsig~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|G|d0|master|qsig~3_combout\);

-- Location: LC_X4_Y7_N0
\dut_inst|G|d0|master|qsig~25\ : maxv_lcell
-- Equation(s):
-- \dut_inst|G|d0|master|qsig~25_combout\ = (\scan_instance|In_Reg|L2\(1) & (\scan_instance|In_Reg|L2\(0) & (!\TRST~combout\ & \dut_inst|G|d0|master|qsig~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(1),
	datab => \scan_instance|In_Reg|L2\(0),
	datac => \TRST~combout\,
	datad => \dut_inst|G|d0|master|qsig~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|G|d0|master|qsig~25_combout\);

-- Location: LC_X4_Y7_N2
\dut_inst|G|d0|master|qsig~24\ : maxv_lcell
-- Equation(s):
-- \dut_inst|G|d0|master|qsig~24_combout\ = (\dut_inst|G|d0|slave|qsig~1_combout\) # ((\dut_inst|G|d0|master|qsig~25_combout\) # ((!\dut_inst|G|A52|AA4|c~3_combout\ & \dut_inst|G|d0|master|qsig~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbfa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_inst|G|d0|slave|qsig~1_combout\,
	datab => \dut_inst|G|A52|AA4|c~3_combout\,
	datac => \dut_inst|G|d0|master|qsig~25_combout\,
	datad => \dut_inst|G|d0|master|qsig~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|G|d0|master|qsig~24_combout\);

-- Location: LC_X4_Y7_N7
\dut_inst|G|d0|slave|qsig~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|G|d0|slave|qsig~0_combout\ = (\TRST~combout\ & (((\dut_inst|G|d0|slave|qsig~0_combout\)))) # (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(5) & ((\dut_inst|G|d0|master|qsig~24_combout\))) # (!\scan_instance|In_Reg|L2\(5) & 
-- (\dut_inst|G|d0|slave|qsig~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4b0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(5),
	datac => \dut_inst|G|d0|slave|qsig~0_combout\,
	datad => \dut_inst|G|d0|master|qsig~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|G|d0|slave|qsig~0_combout\);

-- Location: LC_X4_Y7_N9
\dut_inst|G|d0|master|qsig~23\ : maxv_lcell
-- Equation(s):
-- \dut_inst|G|d0|master|qsig~23_combout\ = ((\dut_inst|G|d0|master|qsig~22_combout\ & (\dut_inst|G|d0|slave|qsig~0_combout\ & !\dut_inst|G|d1|slave|qsig~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut_inst|G|d0|master|qsig~22_combout\,
	datac => \dut_inst|G|d0|slave|qsig~0_combout\,
	datad => \dut_inst|G|d1|slave|qsig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|G|d0|master|qsig~23_combout\);

-- Location: LC_X4_Y7_N3
\dut_inst|G|d1|master|qsig~1\ : maxv_lcell
-- Equation(s):
-- \dut_inst|G|d1|master|qsig~1_combout\ = (\dut_inst|G|d1|master|qsig~0_combout\) # ((\dut_inst|G|d1|slave|qsig~1_combout\) # ((\dut_inst|G|A52|AA4|c~3_combout\ & \dut_inst|G|d0|master|qsig~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_inst|G|A52|AA4|c~3_combout\,
	datab => \dut_inst|G|d1|master|qsig~0_combout\,
	datac => \dut_inst|G|d1|slave|qsig~1_combout\,
	datad => \dut_inst|G|d0|master|qsig~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|G|d1|master|qsig~1_combout\);

-- Location: LC_X4_Y7_N1
\dut_inst|G|d1|slave|qsig~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|G|d1|slave|qsig~0_combout\ = (\TRST~combout\ & (\dut_inst|G|d1|slave|qsig~0_combout\)) # (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(5) & ((\dut_inst|G|d1|master|qsig~1_combout\))) # (!\scan_instance|In_Reg|L2\(5) & 
-- (\dut_inst|G|d1|slave|qsig~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc8c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \dut_inst|G|d1|slave|qsig~0_combout\,
	datac => \scan_instance|In_Reg|L2\(5),
	datad => \dut_inst|G|d1|master|qsig~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|G|d1|slave|qsig~0_combout\);

-- Location: LC_X3_Y9_N1
\scan_instance|Out_Reg|mux1[0]~20\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~20_combout\ = (((\dut_inst|G|d1|slave|qsig~0_combout\ & !\dut_inst|G|d0|slave|qsig~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut_inst|G|d1|slave|qsig~0_combout\,
	datad => \dut_inst|G|d0|slave|qsig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~20_combout\);

-- Location: LC_X3_Y9_N2
\scan_instance|Out_Reg|mux1[0]~21\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~21_combout\ = (\scan_instance|Out_Reg|mux1[0]~19_combout\) # ((\scan_instance|Out_Reg|mux1[0]~20_combout\ & (\scan_instance|Out_Reg|mux1[0]~15_combout\ & \dut_inst|G|A53|AA4|c~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|mux1[0]~19_combout\,
	datab => \scan_instance|Out_Reg|mux1[0]~20_combout\,
	datac => \scan_instance|Out_Reg|mux1[0]~15_combout\,
	datad => \dut_inst|G|A53|AA4|c~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~21_combout\);

-- Location: LC_X4_Y9_N1
\dut_inst|K|d0|master|qsig~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|K|d0|master|qsig~0_combout\ = ((!\TRST~combout\ & (!\scan_instance|In_Reg|L2\(2) & \scan_instance|In_Reg|L2\(1))))

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
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(2),
	datad => \scan_instance|In_Reg|L2\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|K|d0|master|qsig~0_combout\);

-- Location: LC_X5_Y7_N5
\dut_inst|T|A5e|AA1|c~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|T|A5e|AA1|c~0_combout\ = ((!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(4)) # (\scan_instance|In_Reg|L2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \scan_instance|In_Reg|L2\(4),
	datac => \scan_instance|In_Reg|L2\(3),
	datad => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|T|A5e|AA1|c~0_combout\);

-- Location: LC_X5_Y9_N0
\dut_inst|B|A5b|AA4|c\ : maxv_lcell
-- Equation(s):
-- \dut_inst|B|A5b|AA4|c~combout\ = (\dut_inst|K|d0|master|qsig~0_combout\ & (!\dut_inst|T|A5e|AA1|c~0_combout\ & ((\TRST~combout\) # (!\scan_instance|In_Reg|L2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00b0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(0),
	datac => \dut_inst|K|d0|master|qsig~0_combout\,
	datad => \dut_inst|T|A5e|AA1|c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|B|A5b|AA4|c~combout\);

-- Location: LC_X3_Y6_N0
\dut_inst|B|d0|master|qsig~2\ : maxv_lcell
-- Equation(s):
-- \dut_inst|B|d0|master|qsig~2_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(5) & ((\dut_inst|B|d0|master|qsig~3_combout\))) # (!\scan_instance|In_Reg|L2\(5) & (\scan_instance|In_Reg|L2\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(6),
	datab => \scan_instance|In_Reg|L2\(5),
	datac => \dut_inst|B|d0|master|qsig~3_combout\,
	datad => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|B|d0|master|qsig~2_combout\);

-- Location: LC_X1_Y6_N2
\dut_inst|B|d0|master|qsig~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|B|d0|master|qsig~0_combout\ = (\TRST~combout\) # (((!\dut_inst|B|d1|slave|qsig~0_combout\) # (!\scan_instance|In_Reg|L2\(0))))

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
	datac => \scan_instance|In_Reg|L2\(0),
	datad => \dut_inst|B|d1|slave|qsig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|B|d0|master|qsig~0_combout\);

-- Location: LC_X6_Y6_N2
\dut_inst|B|d0|master|qsig~1\ : maxv_lcell
-- Equation(s):
-- \dut_inst|B|d0|master|qsig~1_combout\ = (!\scan_instance|In_Reg|PO[5]~1_combout\ & (\dut_inst|B|d0|slave|qsig~0_combout\ & ((\dut_inst|B|d0|master|qsig~0_combout\) # (!\dut_inst|G|A53|AA4|c~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[5]~1_combout\,
	datab => \dut_inst|G|A53|AA4|c~2_combout\,
	datac => \dut_inst|B|d0|slave|qsig~0_combout\,
	datad => \dut_inst|B|d0|master|qsig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|B|d0|master|qsig~1_combout\);

-- Location: LC_X6_Y6_N3
\dut_inst|B|d0|master|qsig~3\ : maxv_lcell
-- Equation(s):
-- \dut_inst|B|d0|master|qsig~3_combout\ = (\dut_inst|B|d0|master|qsig~2_combout\) # ((\dut_inst|B|d0|master|qsig~1_combout\) # ((!\scan_instance|In_Reg|PO[5]~1_combout\ & \scan_instance|Out_Reg|mux1[0]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[5]~1_combout\,
	datab => \scan_instance|Out_Reg|mux1[0]~23_combout\,
	datac => \dut_inst|B|d0|master|qsig~2_combout\,
	datad => \dut_inst|B|d0|master|qsig~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|B|d0|master|qsig~3_combout\);

-- Location: LC_X3_Y9_N8
\dut_inst|B|d0|slave|qsig~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|B|d0|slave|qsig~0_combout\ = (\TRST~combout\ & (((\dut_inst|B|d0|slave|qsig~0_combout\)))) # (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(5) & (\dut_inst|B|d0|master|qsig~3_combout\)) # (!\scan_instance|In_Reg|L2\(5) & 
-- ((\dut_inst|B|d0|slave|qsig~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fb40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(5),
	datac => \dut_inst|B|d0|master|qsig~3_combout\,
	datad => \dut_inst|B|d0|slave|qsig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|B|d0|slave|qsig~0_combout\);

-- Location: LC_X5_Y9_N2
\dut_inst|B|d1|master|qsig~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|B|d1|master|qsig~0_combout\ = ((\dut_inst|B|d0|slave|qsig~0_combout\) # ((!\TRST~combout\ & \scan_instance|In_Reg|L2\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(6),
	datad => \dut_inst|B|d0|slave|qsig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|B|d1|master|qsig~0_combout\);

-- Location: LC_X5_Y9_N3
\dut_inst|B|d1|master|qsig~1\ : maxv_lcell
-- Equation(s):
-- \dut_inst|B|d1|master|qsig~1_combout\ = (\scan_instance|In_Reg|PO[5]~1_combout\ & (\dut_inst|B|d1|master|qsig~3_combout\)) # (!\scan_instance|In_Reg|PO[5]~1_combout\ & (((\dut_inst|B|A5b|AA4|c~combout\ & \dut_inst|B|d1|master|qsig~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[5]~1_combout\,
	datab => \dut_inst|B|d1|master|qsig~3_combout\,
	datac => \dut_inst|B|A5b|AA4|c~combout\,
	datad => \dut_inst|B|d1|master|qsig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|B|d1|master|qsig~1_combout\);

-- Location: LC_X6_Y6_N1
\dut_inst|B|d1|master|qsig~2\ : maxv_lcell
-- Equation(s):
-- \dut_inst|B|d1|master|qsig~2_combout\ = ((\scan_instance|In_Reg|PO[1]~4_combout\) # ((\dut_inst|B|d0|slave|qsig~0_combout\) # (!\dut_inst|K|d0|master|qsig~1_combout\))) # (!\scan_instance|In_Reg|PO[2]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[2]~3_combout\,
	datab => \scan_instance|In_Reg|PO[1]~4_combout\,
	datac => \dut_inst|B|d0|slave|qsig~0_combout\,
	datad => \dut_inst|K|d0|master|qsig~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|B|d1|master|qsig~2_combout\);

-- Location: LC_X5_Y7_N2
\dut_inst|B|d1|master|qsig~3\ : maxv_lcell
-- Equation(s):
-- \dut_inst|B|d1|master|qsig~3_combout\ = (\dut_inst|B|d1|master|qsig~1_combout\) # ((\dut_inst|G|d0|master|qsig~22_combout\ & (\dut_inst|B|d1|master|qsig~2_combout\ & \dut_inst|B|d1|slave|qsig~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_inst|G|d0|master|qsig~22_combout\,
	datab => \dut_inst|B|d1|master|qsig~1_combout\,
	datac => \dut_inst|B|d1|master|qsig~2_combout\,
	datad => \dut_inst|B|d1|slave|qsig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|B|d1|master|qsig~3_combout\);

-- Location: LC_X5_Y7_N1
\dut_inst|B|d1|slave|qsig~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|B|d1|slave|qsig~0_combout\ = (\scan_instance|In_Reg|L2\(5) & ((\TRST~combout\ & (\dut_inst|B|d1|slave|qsig~0_combout\)) # (!\TRST~combout\ & ((\dut_inst|B|d1|master|qsig~3_combout\))))) # (!\scan_instance|In_Reg|L2\(5) & 
-- (\dut_inst|B|d1|slave|qsig~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cec4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(5),
	datab => \dut_inst|B|d1|slave|qsig~0_combout\,
	datac => \TRST~combout\,
	datad => \dut_inst|B|d1|master|qsig~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|B|d1|slave|qsig~0_combout\);

-- Location: LC_X5_Y7_N6
\scan_instance|Out_Reg|mux1[0]~3\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~3_combout\ = (!\scan_instance|In_Reg|L2\(4) & (!\scan_instance|In_Reg|L2\(3) & (!\scan_instance|In_Reg|L2\(0) & !\dut_inst|B|d1|slave|qsig~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(4),
	datab => \scan_instance|In_Reg|L2\(3),
	datac => \scan_instance|In_Reg|L2\(0),
	datad => \dut_inst|B|d1|slave|qsig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~3_combout\);

-- Location: LC_X2_Y9_N9
\scan_instance|Out_Reg|mux1[0]~23\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~23_combout\ = (!\TRST~combout\ & (!\scan_instance|In_Reg|L2\(2) & (\scan_instance|In_Reg|L2\(1) & \scan_instance|Out_Reg|mux1[0]~3_combout\)))

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
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(2),
	datac => \scan_instance|In_Reg|L2\(1),
	datad => \scan_instance|Out_Reg|mux1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~23_combout\);

-- Location: LC_X4_Y9_N8
\dut_inst|T|A5r|AA4|c~1\ : maxv_lcell
-- Equation(s):
-- \dut_inst|T|A5r|AA4|c~1_combout\ = (\dut_inst|T|A5r|AA4|c~0_combout\ & (!\scan_instance|In_Reg|L2\(0) & (!\TRST~combout\ & \dut_inst|K|d0|master|qsig~0_combout\)))

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
	dataa => \dut_inst|T|A5r|AA4|c~0_combout\,
	datab => \scan_instance|In_Reg|L2\(0),
	datac => \TRST~combout\,
	datad => \dut_inst|K|d0|master|qsig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|T|A5r|AA4|c~1_combout\);

-- Location: LC_X4_Y9_N4
\dut_inst|T|d1|master|qsig~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|T|d1|master|qsig~0_combout\ = (((\dut_inst|T|d0|slave|qsig~0_combout\ & !\dut_inst|T|d2|slave|qsig~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut_inst|T|d0|slave|qsig~0_combout\,
	datad => \dut_inst|T|d2|slave|qsig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|T|d1|master|qsig~0_combout\);

-- Location: LC_X4_Y9_N9
\dut_inst|T|d0|master|qsig~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|T|d0|master|qsig~0_combout\ = (\dut_inst|T|d1|master|qsig~0_combout\ & (\dut_inst|G|d0|master|qsig~22_combout\ & ((!\dut_inst|T|A5r|AA4|c~1_combout\) # (!\dut_inst|T|d1|slave|qsig~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_inst|T|d1|master|qsig~0_combout\,
	datab => \dut_inst|G|d0|master|qsig~22_combout\,
	datac => \dut_inst|T|d1|slave|qsig~0_combout\,
	datad => \dut_inst|T|A5r|AA4|c~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|T|d0|master|qsig~0_combout\);

-- Location: LC_X5_Y9_N7
\dut_inst|T|d0|master|qsig~1\ : maxv_lcell
-- Equation(s):
-- \dut_inst|T|d0|master|qsig~1_combout\ = (\dut_inst|T|d1|slave|qsig~0_combout\ & (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(6)))) # (!\dut_inst|T|d1|slave|qsig~0_combout\ & (((!\TRST~combout\ & \scan_instance|In_Reg|L2\(6))) # 
-- (!\dut_inst|T|d2|slave|qsig~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3075",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_inst|T|d1|slave|qsig~0_combout\,
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(6),
	datad => \dut_inst|T|d2|slave|qsig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|T|d0|master|qsig~1_combout\);

-- Location: LC_X5_Y9_N8
\dut_inst|T|d0|master|qsig~2\ : maxv_lcell
-- Equation(s):
-- \dut_inst|T|d0|master|qsig~2_combout\ = (!\scan_instance|In_Reg|PO[5]~1_combout\ & (!\scan_instance|In_Reg|PO[0]~0_combout\ & (\dut_inst|G|A52|AA4|c~2_combout\ & \dut_inst|T|d0|master|qsig~1_combout\)))

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
	dataa => \scan_instance|In_Reg|PO[5]~1_combout\,
	datab => \scan_instance|In_Reg|PO[0]~0_combout\,
	datac => \dut_inst|G|A52|AA4|c~2_combout\,
	datad => \dut_inst|T|d0|master|qsig~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|T|d0|master|qsig~2_combout\);

-- Location: LC_X5_Y9_N9
\dut_inst|T|d0|master|qsig~3\ : maxv_lcell
-- Equation(s):
-- \dut_inst|T|d0|master|qsig~3_combout\ = (\dut_inst|T|d0|master|qsig~0_combout\) # ((\dut_inst|T|d0|master|qsig~2_combout\) # ((\scan_instance|In_Reg|PO[5]~1_combout\ & \dut_inst|T|d0|master|qsig~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[5]~1_combout\,
	datab => \dut_inst|T|d0|master|qsig~3_combout\,
	datac => \dut_inst|T|d0|master|qsig~0_combout\,
	datad => \dut_inst|T|d0|master|qsig~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|T|d0|master|qsig~3_combout\);

-- Location: LC_X4_Y9_N6
\dut_inst|T|d0|slave|qsig~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|T|d0|slave|qsig~0_combout\ = (\TRST~combout\ & (\dut_inst|T|d0|slave|qsig~0_combout\)) # (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(5) & ((\dut_inst|T|d0|master|qsig~3_combout\))) # (!\scan_instance|In_Reg|L2\(5) & 
-- (\dut_inst|T|d0|slave|qsig~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_inst|T|d0|slave|qsig~0_combout\,
	datab => \dut_inst|T|d0|master|qsig~3_combout\,
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|T|d0|slave|qsig~0_combout\);

-- Location: LC_X4_Y9_N5
\scan_instance|Out_Reg|mux1[0]~16\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~16_combout\ = (!\dut_inst|T|d0|slave|qsig~0_combout\ & (((\dut_inst|T|d2|slave|qsig~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_inst|T|d0|slave|qsig~0_combout\,
	datad => \dut_inst|T|d2|slave|qsig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~16_combout\);

-- Location: LC_X4_Y9_N0
\dut_inst|T|d2|master|qsig~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|T|d2|master|qsig~0_combout\ = (!\scan_instance|In_Reg|L2\(6) & (!\dut_inst|T|d0|slave|qsig~0_combout\ & (\dut_inst|T|d1|slave|qsig~0_combout\ & !\scan_instance|In_Reg|PO[5]~1_combout\)))

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
	dataa => \scan_instance|In_Reg|L2\(6),
	datab => \dut_inst|T|d0|slave|qsig~0_combout\,
	datac => \dut_inst|T|d1|slave|qsig~0_combout\,
	datad => \scan_instance|In_Reg|PO[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|T|d2|master|qsig~0_combout\);

-- Location: LC_X4_Y9_N7
\dut_inst|T|d2|master|qsig~1\ : maxv_lcell
-- Equation(s):
-- \dut_inst|T|d2|master|qsig~1_combout\ = (\dut_inst|T|A5r|AA4|c~1_combout\ & (((\dut_inst|T|d2|master|qsig~0_combout\)))) # (!\dut_inst|T|A5r|AA4|c~1_combout\ & (\scan_instance|Out_Reg|mux1[0]~16_combout\ & ((\dut_inst|G|d0|master|qsig~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|mux1[0]~16_combout\,
	datab => \dut_inst|T|d2|master|qsig~0_combout\,
	datac => \dut_inst|G|d0|master|qsig~22_combout\,
	datad => \dut_inst|T|A5r|AA4|c~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|T|d2|master|qsig~1_combout\);

-- Location: LC_X4_Y9_N2
\dut_inst|T|d2|master|qsig~2\ : maxv_lcell
-- Equation(s):
-- \dut_inst|T|d2|master|qsig~2_combout\ = (\dut_inst|T|d2|master|qsig~1_combout\) # ((!GLOBAL(\TRST~combout\) & (\dut_inst|T|d2|master|qsig~2_combout\ & \scan_instance|In_Reg|L2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "baaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_inst|T|d2|master|qsig~1_combout\,
	datab => \TRST~combout\,
	datac => \dut_inst|T|d2|master|qsig~2_combout\,
	datad => \scan_instance|In_Reg|L2\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|T|d2|master|qsig~2_combout\);

-- Location: LC_X4_Y9_N3
\dut_inst|T|d2|slave|qsig~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|T|d2|slave|qsig~0_combout\ = (\scan_instance|In_Reg|L2\(5) & ((\TRST~combout\ & (\dut_inst|T|d2|slave|qsig~0_combout\)) # (!\TRST~combout\ & ((\dut_inst|T|d2|master|qsig~2_combout\))))) # (!\scan_instance|In_Reg|L2\(5) & 
-- (\dut_inst|T|d2|slave|qsig~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aea2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_inst|T|d2|slave|qsig~0_combout\,
	datab => \scan_instance|In_Reg|L2\(5),
	datac => \TRST~combout\,
	datad => \dut_inst|T|d2|master|qsig~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|T|d2|slave|qsig~0_combout\);

-- Location: LC_X5_Y9_N4
\dut_inst|T|d1|master|qsig~1\ : maxv_lcell
-- Equation(s):
-- \dut_inst|T|d1|master|qsig~1_combout\ = (\dut_inst|T|d2|slave|qsig~0_combout\ & (!\dut_inst|T|d0|slave|qsig~0_combout\ & (\dut_inst|T|d1|slave|qsig~0_combout\))) # (!\dut_inst|T|d2|slave|qsig~0_combout\ & (\dut_inst|T|d0|slave|qsig~0_combout\ & 
-- ((\dut_inst|T|d1|slave|qsig~0_combout\) # (\dut_inst|K|A5f|AA4|c~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6460",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_inst|T|d2|slave|qsig~0_combout\,
	datab => \dut_inst|T|d0|slave|qsig~0_combout\,
	datac => \dut_inst|T|d1|slave|qsig~0_combout\,
	datad => \dut_inst|K|A5f|AA4|c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|T|d1|master|qsig~1_combout\);

-- Location: LC_X5_Y9_N5
\dut_inst|T|d1|master|qsig~2\ : maxv_lcell
-- Equation(s):
-- \dut_inst|T|d1|master|qsig~2_combout\ = (\scan_instance|In_Reg|PO[5]~1_combout\ & (((\dut_inst|T|d1|master|qsig~2_combout\)))) # (!\scan_instance|In_Reg|PO[5]~1_combout\ & (\dut_inst|T|d1|master|qsig~1_combout\ & 
-- ((!\scan_instance|In_Reg|PO[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_inst|T|d1|master|qsig~1_combout\,
	datab => \dut_inst|T|d1|master|qsig~2_combout\,
	datac => \scan_instance|In_Reg|PO[6]~2_combout\,
	datad => \scan_instance|In_Reg|PO[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|T|d1|master|qsig~2_combout\);

-- Location: LC_X5_Y9_N6
\dut_inst|T|d1|slave|qsig~0\ : maxv_lcell
-- Equation(s):
-- \dut_inst|T|d1|slave|qsig~0_combout\ = (\scan_instance|In_Reg|L2\(5) & ((\TRST~combout\ & (\dut_inst|T|d1|slave|qsig~0_combout\)) # (!\TRST~combout\ & ((\dut_inst|T|d1|master|qsig~2_combout\))))) # (!\scan_instance|In_Reg|L2\(5) & 
-- (\dut_inst|T|d1|slave|qsig~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aea2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_inst|T|d1|slave|qsig~0_combout\,
	datab => \scan_instance|In_Reg|L2\(5),
	datac => \TRST~combout\,
	datad => \dut_inst|T|d1|master|qsig~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_inst|T|d1|slave|qsig~0_combout\);

-- Location: LC_X3_Y9_N3
\scan_instance|Out_Reg|mux1[0]~17\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~17_combout\ = (\scan_instance|Out_Reg|mux1[0]~15_combout\ & (\dut_inst|T|A5r|AA4|c~1_combout\ & (!\dut_inst|T|d1|slave|qsig~0_combout\ & \scan_instance|Out_Reg|mux1[0]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|mux1[0]~15_combout\,
	datab => \dut_inst|T|A5r|AA4|c~1_combout\,
	datac => \dut_inst|T|d1|slave|qsig~0_combout\,
	datad => \scan_instance|Out_Reg|mux1[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~17_combout\);

-- Location: LC_X3_Y9_N4
\scan_instance|Out_Reg|mux1[0]~18\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~18_combout\ = (\scan_instance|Out_Reg|mux1[0]~17_combout\) # ((\scan_instance|Out_Reg|mux1[0]~23_combout\ & (!\dut_inst|B|d0|slave|qsig~0_combout\ & \scan_instance|Out_Reg|mux1[0]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|mux1[0]~23_combout\,
	datab => \dut_inst|B|d0|slave|qsig~0_combout\,
	datac => \scan_instance|Out_Reg|mux1[0]~15_combout\,
	datad => \scan_instance|Out_Reg|mux1[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~18_combout\);

-- Location: LC_X3_Y9_N6
\scan_instance|Out_Reg|mux1[0]~22\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~22_combout\ = (\scan_instance|Out_Reg|mux1[0]~21_combout\) # ((\scan_instance|Out_Reg|mux1[0]~18_combout\) # ((\scan_instance|In_Reg|L1\(0) & \scan_instance|cap_shft~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|mux1[0]~21_combout\,
	datab => \scan_instance|Out_Reg|mux1[0]~18_combout\,
	datac => \scan_instance|In_Reg|L1\(0),
	datad => \scan_instance|cap_shft~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~22_combout\);

-- Location: LC_X3_Y9_N9
\scan_instance|Out_Reg|L1[0]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(0) = DFFEAS((\scan_instance|Selector0~0_combout\ & (\scan_instance|Out_Reg|L1\(0))) # (!\scan_instance|Selector0~0_combout\ & ((\TRST~combout\ & (\scan_instance|Out_Reg|L1\(0))) # (!\TRST~combout\ & 
-- ((\scan_instance|Out_Reg|mux1[0]~22_combout\))))), GLOBAL(\TCLK~combout\), VCC, , , , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccd8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Selector0~0_combout\,
	datab => \scan_instance|Out_Reg|L1\(0),
	datac => \scan_instance|Out_Reg|mux1[0]~22_combout\,
	datad => \TRST~combout\,
	aclr => GND,
	sclr => \TRST~combout\,
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


