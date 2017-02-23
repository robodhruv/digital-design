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

-- DATE "02/17/2017 14:32:15"

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
SIGNAL \dut|a|bit_2|add_instance_s0_2|s~5\ : std_logic;
SIGNAL \TCLK~combout\ : std_logic;
SIGNAL \TMS~combout\ : std_logic;
SIGNAL \TRST~combout\ : std_logic;
SIGNAL \scan_instance|current_state.s_idle~regout\ : std_logic;
SIGNAL \scan_instance|current_state.s_DR~regout\ : std_logic;
SIGNAL \scan_instance|current_state.s_capture~regout\ : std_logic;
SIGNAL \scan_instance|current_state.s_shift~regout\ : std_logic;
SIGNAL \scan_instance|current_state.s_update~regout\ : std_logic;
SIGNAL \scan_instance|Selector0~0_combout\ : std_logic;
SIGNAL \scan_instance|Selector3~0\ : std_logic;
SIGNAL \TDI~combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1[6]~2_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|L2~1_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[16]~2_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[14]~15_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[6]~6_combout\ : std_logic;
SIGNAL \dut|d|bit_8|out_instance_2|s~0_combout\ : std_logic;
SIGNAL \dut|d|bit_1|do~0_combout\ : std_logic;
SIGNAL \dut|d|bit_2|do~combout\ : std_logic;
SIGNAL \dut|d|bit_3|do~combout\ : std_logic;
SIGNAL \dut|d|bit_4|do~combout\ : std_logic;
SIGNAL \dut|d|bit_5|do~combout\ : std_logic;
SIGNAL \dut|d|bit_6|do~combout\ : std_logic;
SIGNAL \dut|d|bit_8|out_instance_2|s~1_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[5]~5_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[7]~4_combout\ : std_logic;
SIGNAL \dut|c|zero_check~0_combout\ : std_logic;
SIGNAL \dut|c|zero_check~1_combout\ : std_logic;
SIGNAL \dut|c|lev3|mux_0|b~1_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[15]~16_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[11]~11_combout\ : std_logic;
SIGNAL \dut|c|lev3|mux_0|b~0_combout\ : std_logic;
SIGNAL \dut|b|right_shift|lev1|mux_2|b~0_combout\ : std_logic;
SIGNAL \dut|b|right_shift|lev2|mux_1|b~0_combout\ : std_logic;
SIGNAL \dut|b|right_shift|lev1|mux_3|b~0_combout\ : std_logic;
SIGNAL \dut|b|right_shift|lev2|mux_1|b~1_combout\ : std_logic;
SIGNAL \dut|b|right_shift|lev3|mux_0|b~0_combout\ : std_logic;
SIGNAL \dut|b|right_shift|lev3|mux_0|b~1_combout\ : std_logic;
SIGNAL \dut|b|right_shift|final|mux_0|b~0_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[17]~3_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[0]~7_combout\ : std_logic;
SIGNAL \dut|c|final|mux_7|b~7_combout\ : std_logic;
SIGNAL \dut|d|bit_2|do~0_combout\ : std_logic;
SIGNAL \dut|c|final|mux_7|b~5_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[12]~1_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[4]~13_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[3]~12_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[2]~9_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[10]~10_combout\ : std_logic;
SIGNAL \dut|a|bit_1|co~0_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[9]~8_combout\ : std_logic;
SIGNAL \dut|a|bit_2|add_instance_s0_2|s~7_cout0\ : std_logic;
SIGNAL \dut|a|bit_2|add_instance_s0_2|s~7COUT1_41\ : std_logic;
SIGNAL \dut|a|bit_2|add_instance_s0_2|s~2\ : std_logic;
SIGNAL \dut|a|bit_2|add_instance_s0_2|s~2COUT1_42\ : std_logic;
SIGNAL \dut|a|bit_2|add_instance_s0_2|s~12\ : std_logic;
SIGNAL \dut|a|bit_2|add_instance_s0_2|s~12COUT1_43\ : std_logic;
SIGNAL \dut|a|bit_2|add_instance_s0_2|s~17\ : std_logic;
SIGNAL \dut|a|bit_2|add_instance_s0_2|s~17COUT1_44\ : std_logic;
SIGNAL \dut|a|bit_2|add_instance_s0_2|s~22\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[13]~14_combout\ : std_logic;
SIGNAL \dut|a|bit_2|add_instance_s0_2|s~27\ : std_logic;
SIGNAL \dut|a|bit_2|add_instance_s0_2|s~27COUT1_45\ : std_logic;
SIGNAL \dut|a|bit_2|add_instance_s0_2|s~32\ : std_logic;
SIGNAL \dut|a|bit_2|add_instance_s0_2|s~32COUT1_46\ : std_logic;
SIGNAL \dut|a|bit_2|add_instance_s0_2|s~35_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~13_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~14_combout\ : std_logic;
SIGNAL \dut|c|final|mux_7|b~4_combout\ : std_logic;
SIGNAL \dut|b|right_shift|lev2|mux_2|b~0_combout\ : std_logic;
SIGNAL \dut|b|right_shift|final|mux_1|b~0_combout\ : std_logic;
SIGNAL \dut|c|final|mux_7|b~6_combout\ : std_logic;
SIGNAL \dut|c|final|mux_6|b~0_combout\ : std_logic;
SIGNAL \dut|a|bit_2|add_instance_s0_2|s~30_combout\ : std_logic;
SIGNAL \dut|d|bit_7|out_instance_2|s~0_combout\ : std_logic;
SIGNAL \dut|d|bit_7|out_instance_2|s~1_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~11_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~12_combout\ : std_logic;
SIGNAL \dut|d|bit_6|out_instance_2|s~8_combout\ : std_logic;
SIGNAL \dut|b|right_shift|lev2|mux_3|b~0_combout\ : std_logic;
SIGNAL \dut|b|right_shift|final|mux_2|b~0_combout\ : std_logic;
SIGNAL \dut|c|final|mux_5|b~0_combout\ : std_logic;
SIGNAL \dut|c|lev2|mux_5|b~0_combout\ : std_logic;
SIGNAL \dut|c|final|mux_5|b~1_combout\ : std_logic;
SIGNAL \dut|a|bit_2|add_instance_s0_2|s~25_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~9_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~10_combout\ : std_logic;
SIGNAL \dut|c|lev2|mux_4|b~0_combout\ : std_logic;
SIGNAL \dut|c|final|mux_4|b~0_combout\ : std_logic;
SIGNAL \dut|b|right_shift|lev2|mux_4|b~0_combout\ : std_logic;
SIGNAL \dut|b|right_shift|final|mux_3|b~9_combout\ : std_logic;
SIGNAL \dut|b|right_shift|final|mux_3|b~8_combout\ : std_logic;
SIGNAL \dut|d|bit_5|out_instance_2|s~2_combout\ : std_logic;
SIGNAL \dut|a|bit_2|add_instance_s0_2|s~20_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~7_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~8_combout\ : std_logic;
SIGNAL \dut|d|bit_4|out_instance_2|s~2_combout\ : std_logic;
SIGNAL \dut|b|right_shift|lev2|mux_5|b~0_combout\ : std_logic;
SIGNAL \dut|b|right_shift|final|mux_4|b~0_combout\ : std_logic;
SIGNAL \dut|c|lev2|mux_3|b~0_combout\ : std_logic;
SIGNAL \dut|c|lev2|mux_3|b~1_combout\ : std_logic;
SIGNAL \dut|c|final|mux_3|b~3_combout\ : std_logic;
SIGNAL \dut|c|final|mux_3|b~2_combout\ : std_logic;
SIGNAL \dut|a|bit_2|add_instance_s0_2|s~15_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~5_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~6_combout\ : std_logic;
SIGNAL \dut|c|lev1|mux_2|b~0_combout\ : std_logic;
SIGNAL \dut|c|lev2|mux_2|b~0_combout\ : std_logic;
SIGNAL \dut|c|final|mux_2|b~0_combout\ : std_logic;
SIGNAL \dut|b|right_shift|final|mux_5|b~0_combout\ : std_logic;
SIGNAL \dut|b|right_shift|final|mux_5|b~1_combout\ : std_logic;
SIGNAL \dut|a|bit_2|add_instance_s0_2|s~10_combout\ : std_logic;
SIGNAL \dut|d|bit_3|out_instance_2|s~2_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~3_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~4_combout\ : std_logic;
SIGNAL \dut|d|bit_2|out_instance_2|s~2_combout\ : std_logic;
SIGNAL \dut|b|right_shift|final|mux_6|b~0_combout\ : std_logic;
SIGNAL \dut|a|bit_2|add_instance_s0_2|s~0_combout\ : std_logic;
SIGNAL \dut|c|lev2|mux_1|b~0_combout\ : std_logic;
SIGNAL \dut|c|lev2|mux_1|b~1_combout\ : std_logic;
SIGNAL \dut|c|lev2|mux_1|b~2_combout\ : std_logic;
SIGNAL \dut|c|final|mux_1|b~0_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~0_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~1_combout\ : std_logic;
SIGNAL \dut|a|bit_1|add_instance_s0_1|s~0_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~0_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~1_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[8]~0_combout\ : std_logic;
SIGNAL \dut|c|lev3|mux_0|b~2_combout\ : std_logic;
SIGNAL \dut|c|lev3|mux_0|b~3_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~2_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~3_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~4_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|L1\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \scan_instance|In_Reg|L2\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \scan_instance|Out_Reg|L1\ : std_logic_vector(7 DOWNTO 0);

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

-- Location: LC_X4_Y7_N1
\scan_instance|current_state.s_idle\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_idle~regout\ = DFFEAS(((!\scan_instance|current_state.s_update~regout\ & ((\scan_instance|current_state.s_idle~regout\) # (\TMS~combout\)))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

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
	datab => \scan_instance|current_state.s_idle~regout\,
	datac => \TMS~combout\,
	datad => \scan_instance|current_state.s_update~regout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_idle~regout\);

-- Location: LC_X4_Y7_N2
\scan_instance|current_state.s_DR\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_DR~regout\ = DFFEAS(((\TMS~combout\ & ((\scan_instance|current_state.s_DR~regout\) # (!\scan_instance|current_state.s_idle~regout\)))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|current_state.s_DR~regout\,
	datac => \TMS~combout\,
	datad => \scan_instance|current_state.s_idle~regout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_DR~regout\);

-- Location: LC_X4_Y7_N7
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

-- Location: LC_X4_Y7_N0
\scan_instance|current_state.s_shift\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Selector3~0\ = ((!\TMS~combout\ & ((\scan_instance|current_state.s_capture~regout\) # (C1_current_state.s_shift))))
-- \scan_instance|current_state.s_shift~regout\ = DFFEAS(\scan_instance|Selector3~0\, GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00fc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|current_state.s_capture~regout\,
	datad => \TMS~combout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Selector3~0\,
	regout => \scan_instance|current_state.s_shift~regout\);

-- Location: LC_X4_Y7_N9
\scan_instance|current_state.s_update\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_update~regout\ = DFFEAS(((\TMS~combout\ & ((\scan_instance|current_state.s_shift~regout\) # (\scan_instance|current_state.s_capture~regout\)))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|current_state.s_shift~regout\,
	datac => \scan_instance|current_state.s_capture~regout\,
	datad => \TMS~combout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_update~regout\);

-- Location: LC_X3_Y7_N2
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

-- Location: LC_X3_Y7_N3
\scan_instance|Out_Reg|L1[6]~2\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1[6]~2_combout\ = (\TRST~combout\) # ((!\TMS~combout\ & (!\scan_instance|current_state.s_update~regout\ & \scan_instance|current_state.s_idle~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TMS~combout\,
	datab => \scan_instance|current_state.s_update~regout\,
	datac => \TRST~combout\,
	datad => \scan_instance|current_state.s_idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1[6]~2_combout\);

-- Location: LC_X4_Y6_N2
\scan_instance|In_Reg|L1[17]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(17) = DFFEAS(((\TDI~combout\ & (\scan_instance|Selector3~0\ & !\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[6]~2_combout\, , , , )

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
	ena => \scan_instance|Out_Reg|L1[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(17));

-- Location: LC_X4_Y6_N9
\scan_instance|In_Reg|L1[16]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(16) = DFFEAS(((\scan_instance|In_Reg|L1\(17) & (\scan_instance|Selector3~0\ & !\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[6]~2_combout\, , , , )

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
	datab => \scan_instance|In_Reg|L1\(17),
	datac => \scan_instance|Selector3~0\,
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(16));

-- Location: LC_X4_Y6_N6
\scan_instance|In_Reg|L1[15]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(15) = DFFEAS(((\scan_instance|In_Reg|L1\(16) & (\scan_instance|Selector3~0\ & !\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[6]~2_combout\, , , , )

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
	datab => \scan_instance|In_Reg|L1\(16),
	datac => \scan_instance|Selector3~0\,
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(15));

-- Location: LC_X5_Y6_N4
\scan_instance|In_Reg|L1[14]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(14) = DFFEAS((!\TRST~combout\ & (((\scan_instance|In_Reg|L1\(15) & \scan_instance|Selector3~0\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[6]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datac => \scan_instance|In_Reg|L1\(15),
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(14));

-- Location: LC_X5_Y6_N2
\scan_instance|In_Reg|L1[13]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(13) = DFFEAS(((\scan_instance|Selector3~0\ & (\scan_instance|In_Reg|L1\(14) & !\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[6]~2_combout\, , , , )

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
	datab => \scan_instance|Selector3~0\,
	datac => \scan_instance|In_Reg|L1\(14),
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(13));

-- Location: LC_X3_Y7_N8
\scan_instance|In_Reg|L1[12]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(12) = DFFEAS((\scan_instance|Selector3~0\ & (((!\TRST~combout\ & \scan_instance|In_Reg|L1\(13))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[6]~2_combout\, , , , )

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
	datad => \scan_instance|In_Reg|L1\(13),
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(12));

-- Location: LC_X3_Y7_N7
\scan_instance|In_Reg|L1[11]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(11) = DFFEAS(((\scan_instance|In_Reg|L1\(12) & (!\TRST~combout\ & \scan_instance|Selector3~0\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[6]~2_combout\, , , , )

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
	datab => \scan_instance|In_Reg|L1\(12),
	datac => \TRST~combout\,
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(11));

-- Location: LC_X3_Y7_N4
\scan_instance|In_Reg|L1[10]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(10) = DFFEAS(((\scan_instance|In_Reg|L1\(11) & (!\TRST~combout\ & \scan_instance|Selector3~0\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[6]~2_combout\, , , , )

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
	datab => \scan_instance|In_Reg|L1\(11),
	datac => \TRST~combout\,
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(10));

-- Location: LC_X7_Y9_N5
\scan_instance|In_Reg|L1[9]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(9) = DFFEAS(((\scan_instance|In_Reg|L1\(10) & (!\TRST~combout\ & \scan_instance|Selector3~0\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[6]~2_combout\, , , , )

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
	datab => \scan_instance|In_Reg|L1\(10),
	datac => \TRST~combout\,
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(9));

-- Location: LC_X7_Y9_N6
\scan_instance|In_Reg|L1[8]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(8) = DFFEAS((\scan_instance|In_Reg|L1\(9) & (((!\TRST~combout\ & \scan_instance|Selector3~0\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[6]~2_combout\, , , , )

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
	dataa => \scan_instance|In_Reg|L1\(9),
	datac => \TRST~combout\,
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(8));

-- Location: LC_X7_Y9_N7
\scan_instance|In_Reg|L1[7]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(7) = DFFEAS((\scan_instance|In_Reg|L1\(8) & (((!\TRST~combout\ & \scan_instance|Selector3~0\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[6]~2_combout\, , , , )

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
	dataa => \scan_instance|In_Reg|L1\(8),
	datac => \TRST~combout\,
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(7));

-- Location: LC_X3_Y8_N0
\scan_instance|In_Reg|L1[6]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(6) = DFFEAS(((\scan_instance|In_Reg|L1\(7) & (!\TRST~combout\ & \scan_instance|Selector3~0\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[6]~2_combout\, , , , )

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
	datab => \scan_instance|In_Reg|L1\(7),
	datac => \TRST~combout\,
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(6));

-- Location: LC_X3_Y8_N2
\scan_instance|In_Reg|L1[5]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(5) = DFFEAS(((\scan_instance|In_Reg|L1\(6) & (!\TRST~combout\ & \scan_instance|Selector3~0\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[6]~2_combout\, , , , )

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
	datab => \scan_instance|In_Reg|L1\(6),
	datac => \TRST~combout\,
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(5));

-- Location: LC_X3_Y8_N1
\scan_instance|In_Reg|L1[4]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(4) = DFFEAS(((\scan_instance|In_Reg|L1\(5) & (!\TRST~combout\ & \scan_instance|Selector3~0\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[6]~2_combout\, , , , )

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
	datab => \scan_instance|In_Reg|L1\(5),
	datac => \TRST~combout\,
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(4));

-- Location: LC_X3_Y8_N9
\scan_instance|In_Reg|L1[3]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(3) = DFFEAS(((\scan_instance|In_Reg|L1\(4) & (!\TRST~combout\ & \scan_instance|Selector3~0\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[6]~2_combout\, , , , )

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
	ena => \scan_instance|Out_Reg|L1[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(3));

-- Location: LC_X5_Y10_N8
\scan_instance|In_Reg|L1[2]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(2) = DFFEAS(((!\TRST~combout\ & (\scan_instance|Selector3~0\ & \scan_instance|In_Reg|L1\(3)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[6]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TRST~combout\,
	datac => \scan_instance|Selector3~0\,
	datad => \scan_instance|In_Reg|L1\(3),
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(2));

-- Location: LC_X5_Y10_N4
\scan_instance|In_Reg|L1[1]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(1) = DFFEAS((\scan_instance|In_Reg|L1\(2) & (((\scan_instance|Selector3~0\ & !\TRST~combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[6]~2_combout\, , , , )

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
	dataa => \scan_instance|In_Reg|L1\(2),
	datac => \scan_instance|Selector3~0\,
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(1));

-- Location: LC_X7_Y9_N9
\scan_instance|In_Reg|L1[0]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(0) = DFFEAS((\scan_instance|In_Reg|L1\(1) & (((!\TRST~combout\ & \scan_instance|Selector3~0\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[6]~2_combout\, , , , )

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
	ena => \scan_instance|Out_Reg|L1[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(0));

-- Location: LC_X4_Y7_N6
\scan_instance|In_Reg|L2~1\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2~1_combout\ = (\TRST~combout\) # ((\TMS~combout\ & ((\scan_instance|current_state.s_shift~regout\) # (\scan_instance|current_state.s_capture~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|current_state.s_shift~regout\,
	datac => \scan_instance|current_state.s_capture~regout\,
	datad => \TMS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|L2~1_combout\);

-- Location: LC_X4_Y6_N3
\scan_instance|In_Reg|L2[16]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(16) = DFFEAS((!\TRST~combout\ & (((\scan_instance|In_Reg|L1\(16))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(16),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(16));

-- Location: LC_X4_Y6_N5
\scan_instance|In_Reg|PO[16]~2\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[16]~2_combout\ = (!\TRST~combout\ & (((\scan_instance|In_Reg|L2\(16)))))

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
	datad => \scan_instance|In_Reg|L2\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[16]~2_combout\);

-- Location: LC_X4_Y10_N7
\scan_instance|In_Reg|L2[14]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(14) = DFFEAS((((!\TRST~combout\ & \scan_instance|In_Reg|L1\(14)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

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
	datad => \scan_instance|In_Reg|L1\(14),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(14));

-- Location: LC_X5_Y10_N6
\scan_instance|In_Reg|PO[14]~15\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[14]~15_combout\ = ((!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(14)))))

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
	datad => \scan_instance|In_Reg|L2\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[14]~15_combout\);

-- Location: LC_X5_Y9_N0
\scan_instance|In_Reg|L2[6]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(6) = DFFEAS((!\TRST~combout\ & (((\scan_instance|In_Reg|L1\(6))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(6),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(6));

-- Location: LC_X5_Y9_N2
\scan_instance|In_Reg|PO[6]~6\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[6]~6_combout\ = (((\scan_instance|In_Reg|L2\(6) & !\TRST~combout\)))

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
	datac => \scan_instance|In_Reg|L2\(6),
	datad => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[6]~6_combout\);

-- Location: LC_X5_Y8_N0
\scan_instance|In_Reg|L2[7]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(7) = DFFEAS((((\scan_instance|In_Reg|L1\(7) & !\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

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
	datac => \scan_instance|In_Reg|L1\(7),
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(7));

-- Location: LC_X5_Y6_N5
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

-- Location: LC_X5_Y6_N7
\dut|d|bit_8|out_instance_2|s~0\ : maxv_lcell
-- Equation(s):
-- \dut|d|bit_8|out_instance_2|s~0_combout\ = (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(7) $ ((\scan_instance|In_Reg|L2\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1414",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(7),
	datac => \scan_instance|In_Reg|L2\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|bit_8|out_instance_2|s~0_combout\);

-- Location: LC_X4_Y8_N7
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

-- Location: LC_X6_Y9_N2
\scan_instance|In_Reg|L2[13]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(13) = DFFEAS(((!\TRST~combout\ & ((\scan_instance|In_Reg|L1\(13))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

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
	datad => \scan_instance|In_Reg|L1\(13),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(13));

-- Location: LC_X4_Y8_N8
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

-- Location: LC_X3_Y10_N8
\scan_instance|In_Reg|L2[12]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(12) = DFFEAS((((!\TRST~combout\ & \scan_instance|In_Reg|L1\(12)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

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
	datad => \scan_instance|In_Reg|L1\(12),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(12));

-- Location: LC_X3_Y7_N9
\scan_instance|In_Reg|L2[11]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(11) = DFFEAS(((\scan_instance|In_Reg|L1\(11) & (!\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|In_Reg|L1\(11),
	datac => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(11));

-- Location: LC_X4_Y8_N0
\scan_instance|In_Reg|L2[3]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(3) = DFFEAS(((\scan_instance|In_Reg|L1\(3) & (!\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|In_Reg|L1\(3),
	datac => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(3));

-- Location: LC_X5_Y7_N4
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

-- Location: LC_X4_Y10_N5
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

-- Location: LC_X6_Y9_N4
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

-- Location: LC_X6_Y9_N0
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

-- Location: LC_X5_Y9_N6
\scan_instance|In_Reg|L2[0]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(0) = DFFEAS((((\scan_instance|In_Reg|L1\(0) & !\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

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
	datac => \scan_instance|In_Reg|L1\(0),
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(0));

-- Location: LC_X6_Y9_N8
\scan_instance|In_Reg|L2[8]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(8) = DFFEAS((((\scan_instance|In_Reg|L1\(8) & !\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

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
	datac => \scan_instance|In_Reg|L1\(8),
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(8));

-- Location: LC_X6_Y9_N3
\dut|d|bit_1|do~0\ : maxv_lcell
-- Equation(s):
-- \dut|d|bit_1|do~0_combout\ = (\TRST~combout\) # (((\scan_instance|In_Reg|L2\(8)) # (!\scan_instance|In_Reg|L2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(0),
	datad => \scan_instance|In_Reg|L2\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|bit_1|do~0_combout\);

-- Location: LC_X6_Y9_N9
\dut|d|bit_2|do\ : maxv_lcell
-- Equation(s):
-- \dut|d|bit_2|do~combout\ = (\scan_instance|In_Reg|L2\(1) & (((!\TRST~combout\ & !\scan_instance|In_Reg|L2\(9))) # (!\dut|d|bit_1|do~0_combout\))) # (!\scan_instance|In_Reg|L2\(1) & (!\dut|d|bit_1|do~0_combout\ & ((\TRST~combout\) # 
-- (!\scan_instance|In_Reg|L2\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "02ef",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(1),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(9),
	datad => \dut|d|bit_1|do~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|bit_2|do~combout\);

-- Location: LC_X6_Y9_N5
\dut|d|bit_3|do\ : maxv_lcell
-- Equation(s):
-- \dut|d|bit_3|do~combout\ = (\scan_instance|In_Reg|L2\(10) & (\dut|d|bit_2|do~combout\ & ((\TRST~combout\) # (\scan_instance|In_Reg|L2\(2))))) # (!\scan_instance|In_Reg|L2\(10) & ((\dut|d|bit_2|do~combout\) # ((!\TRST~combout\ & 
-- \scan_instance|In_Reg|L2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(10),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(2),
	datad => \dut|d|bit_2|do~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|bit_3|do~combout\);

-- Location: LC_X6_Y9_N6
\dut|d|bit_4|do\ : maxv_lcell
-- Equation(s):
-- \dut|d|bit_4|do~combout\ = (\scan_instance|In_Reg|L2\(11) & (\dut|d|bit_3|do~combout\ & ((\TRST~combout\) # (\scan_instance|In_Reg|L2\(3))))) # (!\scan_instance|In_Reg|L2\(11) & ((\dut|d|bit_3|do~combout\) # ((!\TRST~combout\ & 
-- \scan_instance|In_Reg|L2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(11),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(3),
	datad => \dut|d|bit_3|do~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|bit_4|do~combout\);

-- Location: LC_X6_Y9_N7
\dut|d|bit_5|do\ : maxv_lcell
-- Equation(s):
-- \dut|d|bit_5|do~combout\ = (\TRST~combout\ & (((\dut|d|bit_4|do~combout\)))) # (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(4) & ((\dut|d|bit_4|do~combout\) # (!\scan_instance|In_Reg|L2\(12)))) # (!\scan_instance|In_Reg|L2\(4) & 
-- (!\scan_instance|In_Reg|L2\(12) & \dut|d|bit_4|do~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef04",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(4),
	datac => \scan_instance|In_Reg|L2\(12),
	datad => \dut|d|bit_4|do~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|bit_5|do~combout\);

-- Location: LC_X5_Y9_N8
\dut|d|bit_6|do\ : maxv_lcell
-- Equation(s):
-- \dut|d|bit_6|do~combout\ = (\TRST~combout\ & (((\dut|d|bit_5|do~combout\)))) # (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(5) & ((\dut|d|bit_5|do~combout\) # (!\scan_instance|In_Reg|L2\(13)))) # (!\scan_instance|In_Reg|L2\(5) & 
-- (!\scan_instance|In_Reg|L2\(13) & \dut|d|bit_5|do~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef04",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(5),
	datac => \scan_instance|In_Reg|L2\(13),
	datad => \dut|d|bit_5|do~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|bit_6|do~combout\);

-- Location: LC_X5_Y9_N9
\dut|d|bit_8|out_instance_2|s~1\ : maxv_lcell
-- Equation(s):
-- \dut|d|bit_8|out_instance_2|s~1_combout\ = \dut|d|bit_8|out_instance_2|s~0_combout\ $ (((\scan_instance|In_Reg|PO[14]~15_combout\ & (\scan_instance|In_Reg|PO[6]~6_combout\ & \dut|d|bit_6|do~combout\)) # (!\scan_instance|In_Reg|PO[14]~15_combout\ & 
-- ((\scan_instance|In_Reg|PO[6]~6_combout\) # (\dut|d|bit_6|do~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2db4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[14]~15_combout\,
	datab => \scan_instance|In_Reg|PO[6]~6_combout\,
	datac => \dut|d|bit_8|out_instance_2|s~0_combout\,
	datad => \dut|d|bit_6|do~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|bit_8|out_instance_2|s~1_combout\);

-- Location: LC_X4_Y8_N5
\scan_instance|In_Reg|PO[5]~5\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[5]~5_combout\ = ((\scan_instance|In_Reg|L2\(5) & (!\TRST~combout\)))

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
	datab => \scan_instance|In_Reg|L2\(5),
	datac => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[5]~5_combout\);

-- Location: LC_X5_Y8_N9
\scan_instance|In_Reg|PO[7]~4\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[7]~4_combout\ = ((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[7]~4_combout\);

-- Location: LC_X4_Y8_N6
\dut|c|zero_check~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|zero_check~0_combout\ = (!\TRST~combout\ & (((\scan_instance|In_Reg|L2\(3)) # (\scan_instance|In_Reg|L2\(4)))))

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
	dataa => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(3),
	datad => \scan_instance|In_Reg|L2\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|zero_check~0_combout\);

-- Location: LC_X5_Y8_N3
\dut|c|zero_check~1\ : maxv_lcell
-- Equation(s):
-- \dut|c|zero_check~1_combout\ = (\scan_instance|In_Reg|PO[5]~5_combout\) # ((\scan_instance|In_Reg|PO[7]~4_combout\) # ((\dut|c|zero_check~0_combout\) # (\scan_instance|In_Reg|PO[6]~6_combout\)))

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
	dataa => \scan_instance|In_Reg|PO[5]~5_combout\,
	datab => \scan_instance|In_Reg|PO[7]~4_combout\,
	datac => \dut|c|zero_check~0_combout\,
	datad => \scan_instance|In_Reg|PO[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|zero_check~1_combout\);

-- Location: LC_X5_Y10_N0
\dut|c|lev3|mux_0|b~1\ : maxv_lcell
-- Equation(s):
-- \dut|c|lev3|mux_0|b~1_combout\ = ((!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(0)) # (\scan_instance|In_Reg|L2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(0),
	datad => \scan_instance|In_Reg|L2\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|lev3|mux_0|b~1_combout\);

-- Location: LC_X5_Y6_N8
\scan_instance|In_Reg|PO[15]~16\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[15]~16_combout\ = (((\scan_instance|In_Reg|L2\(15) & !\TRST~combout\)))

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
	datac => \scan_instance|In_Reg|L2\(15),
	datad => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[15]~16_combout\);

-- Location: LC_X3_Y7_N1
\scan_instance|In_Reg|PO[11]~11\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[11]~11_combout\ = (((!\TRST~combout\ & \scan_instance|In_Reg|L2\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[11]~11_combout\);

-- Location: LC_X4_Y10_N6
\dut|c|lev3|mux_0|b~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|lev3|mux_0|b~0_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(0)) # ((\scan_instance|In_Reg|L2\(2) & !\scan_instance|In_Reg|L2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(2),
	datab => \scan_instance|In_Reg|L2\(0),
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|lev3|mux_0|b~0_combout\);

-- Location: LC_X5_Y9_N7
\dut|b|right_shift|lev1|mux_2|b~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|right_shift|lev1|mux_2|b~0_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(2) & (\scan_instance|In_Reg|L2\(9))) # (!\scan_instance|In_Reg|L2\(2) & ((\scan_instance|In_Reg|L2\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(9),
	datab => \scan_instance|In_Reg|L2\(13),
	datac => \scan_instance|In_Reg|L2\(2),
	datad => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|right_shift|lev1|mux_2|b~0_combout\);

-- Location: LC_X4_Y10_N4
\dut|b|right_shift|lev2|mux_1|b~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|right_shift|lev2|mux_1|b~0_combout\ = (\scan_instance|In_Reg|L2\(2) & ((\scan_instance|In_Reg|L2\(10)) # ((\TRST~combout\ & \scan_instance|In_Reg|L2\(14))))) # (!\scan_instance|In_Reg|L2\(2) & (((\scan_instance|In_Reg|L2\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fad0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(2),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(14),
	datad => \scan_instance|In_Reg|L2\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|right_shift|lev2|mux_1|b~0_combout\);

-- Location: LC_X4_Y10_N9
\dut|b|right_shift|lev1|mux_3|b~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|right_shift|lev1|mux_3|b~0_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(2) & ((\scan_instance|In_Reg|L2\(8)))) # (!\scan_instance|In_Reg|L2\(2) & (\scan_instance|In_Reg|L2\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3210",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(2),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(12),
	datad => \scan_instance|In_Reg|L2\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|right_shift|lev1|mux_3|b~0_combout\);

-- Location: LC_X4_Y10_N0
\dut|b|right_shift|lev2|mux_1|b~1\ : maxv_lcell
-- Equation(s):
-- \dut|b|right_shift|lev2|mux_1|b~1_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(1) & ((\dut|b|right_shift|lev1|mux_3|b~0_combout\))) # (!\scan_instance|In_Reg|L2\(1) & (\dut|b|right_shift|lev2|mux_1|b~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3210",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(1),
	datab => \TRST~combout\,
	datac => \dut|b|right_shift|lev2|mux_1|b~0_combout\,
	datad => \dut|b|right_shift|lev1|mux_3|b~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|right_shift|lev2|mux_1|b~1_combout\);

-- Location: LC_X4_Y10_N1
\dut|b|right_shift|lev3|mux_0|b~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|right_shift|lev3|mux_0|b~0_combout\ = (\dut|c|lev3|mux_0|b~1_combout\ & ((\dut|c|lev3|mux_0|b~0_combout\ & ((\dut|b|right_shift|lev2|mux_1|b~1_combout\))) # (!\dut|c|lev3|mux_0|b~0_combout\ & (\dut|b|right_shift|lev1|mux_2|b~0_combout\)))) # 
-- (!\dut|c|lev3|mux_0|b~1_combout\ & (\dut|c|lev3|mux_0|b~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|c|lev3|mux_0|b~1_combout\,
	datab => \dut|c|lev3|mux_0|b~0_combout\,
	datac => \dut|b|right_shift|lev1|mux_2|b~0_combout\,
	datad => \dut|b|right_shift|lev2|mux_1|b~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|right_shift|lev3|mux_0|b~0_combout\);

-- Location: LC_X4_Y10_N2
\dut|b|right_shift|lev3|mux_0|b~1\ : maxv_lcell
-- Equation(s):
-- \dut|b|right_shift|lev3|mux_0|b~1_combout\ = (\dut|c|lev3|mux_0|b~1_combout\ & (((\dut|b|right_shift|lev3|mux_0|b~0_combout\)))) # (!\dut|c|lev3|mux_0|b~1_combout\ & ((\dut|b|right_shift|lev3|mux_0|b~0_combout\ & 
-- ((\scan_instance|In_Reg|PO[11]~11_combout\))) # (!\dut|b|right_shift|lev3|mux_0|b~0_combout\ & (\scan_instance|In_Reg|PO[15]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|c|lev3|mux_0|b~1_combout\,
	datab => \scan_instance|In_Reg|PO[15]~16_combout\,
	datac => \scan_instance|In_Reg|PO[11]~11_combout\,
	datad => \dut|b|right_shift|lev3|mux_0|b~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|right_shift|lev3|mux_0|b~1_combout\);

-- Location: LC_X4_Y10_N3
\dut|b|right_shift|final|mux_0|b~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|right_shift|final|mux_0|b~0_combout\ = (((!\dut|c|zero_check~1_combout\ & \dut|b|right_shift|lev3|mux_0|b~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|c|zero_check~1_combout\,
	datad => \dut|b|right_shift|lev3|mux_0|b~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|right_shift|final|mux_0|b~0_combout\);

-- Location: LC_X4_Y6_N8
\scan_instance|In_Reg|L2[17]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(17) = DFFEAS((!\TRST~combout\ & (((\scan_instance|In_Reg|L1\(17))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(17),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(17));

-- Location: LC_X4_Y6_N7
\scan_instance|In_Reg|PO[17]~3\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[17]~3_combout\ = (!\TRST~combout\ & (((\scan_instance|In_Reg|L2\(17)))))

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
	datad => \scan_instance|In_Reg|L2\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[17]~3_combout\);

-- Location: LC_X6_Y8_N2
\scan_instance|In_Reg|PO[0]~7\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[0]~7_combout\ = (((\scan_instance|In_Reg|L2\(0) & !\TRST~combout\)))

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
	datac => \scan_instance|In_Reg|L2\(0),
	datad => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[0]~7_combout\);

-- Location: LC_X5_Y8_N6
\dut|c|final|mux_7|b~7\ : maxv_lcell
-- Equation(s):
-- \dut|c|final|mux_7|b~7_combout\ = ((!\TRST~combout\ & (!\scan_instance|In_Reg|L2\(2) & !\dut|c|zero_check~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(2),
	datad => \dut|c|zero_check~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|final|mux_7|b~7_combout\);

-- Location: LC_X5_Y10_N7
\dut|d|bit_2|do~0\ : maxv_lcell
-- Equation(s):
-- \dut|d|bit_2|do~0_combout\ = ((!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(1)))))

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
	datad => \scan_instance|In_Reg|L2\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|bit_2|do~0_combout\);

-- Location: LC_X5_Y8_N4
\dut|c|final|mux_7|b~5\ : maxv_lcell
-- Equation(s):
-- \dut|c|final|mux_7|b~5_combout\ = (!\scan_instance|In_Reg|PO[0]~7_combout\ & (\scan_instance|In_Reg|L2\(15) & (\dut|c|final|mux_7|b~7_combout\ & !\dut|d|bit_2|do~0_combout\)))

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
	dataa => \scan_instance|In_Reg|PO[0]~7_combout\,
	datab => \scan_instance|In_Reg|L2\(15),
	datac => \dut|c|final|mux_7|b~7_combout\,
	datad => \dut|d|bit_2|do~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|final|mux_7|b~5_combout\);

-- Location: LC_X3_Y10_N5
\scan_instance|In_Reg|PO[12]~1\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[12]~1_combout\ = (((!\TRST~combout\ & \scan_instance|In_Reg|L2\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[12]~1_combout\);

-- Location: LC_X4_Y8_N3
\scan_instance|In_Reg|PO[4]~13\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[4]~13_combout\ = (((!\TRST~combout\ & \scan_instance|In_Reg|L2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[4]~13_combout\);

-- Location: LC_X4_Y8_N4
\scan_instance|In_Reg|PO[3]~12\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[3]~12_combout\ = (!\TRST~combout\ & (((\scan_instance|In_Reg|L2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[3]~12_combout\);

-- Location: LC_X4_Y10_N8
\scan_instance|In_Reg|PO[2]~9\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[2]~9_combout\ = ((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[2]~9_combout\);

-- Location: LC_X4_Y7_N8
\scan_instance|In_Reg|PO[10]~10\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[10]~10_combout\ = (((!\TRST~combout\ & \scan_instance|In_Reg|L2\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[10]~10_combout\);

-- Location: LC_X3_Y9_N8
\dut|a|bit_1|co~0\ : maxv_lcell
-- Equation(s):
-- \dut|a|bit_1|co~0_combout\ = (\TRST~combout\) # (((!\scan_instance|In_Reg|L2\(0)) # (!\scan_instance|In_Reg|L2\(8))))

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
	datac => \scan_instance|In_Reg|L2\(8),
	datad => \scan_instance|In_Reg|L2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|a|bit_1|co~0_combout\);

-- Location: LC_X3_Y9_N9
\scan_instance|In_Reg|PO[9]~8\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[9]~8_combout\ = (((!\TRST~combout\ & \scan_instance|In_Reg|L2\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[9]~8_combout\);

-- Location: LC_X3_Y9_N0
\dut|a|bit_2|add_instance_s0_2|s~7\ : maxv_lcell
-- Equation(s):
-- \dut|a|bit_2|add_instance_s0_2|s~7_cout0\ = CARRY((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(1))))
-- \dut|a|bit_2|add_instance_s0_2|s~7COUT1_41\ = CARRY((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff44",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|a|bit_2|add_instance_s0_2|s~5\,
	cout0 => \dut|a|bit_2|add_instance_s0_2|s~7_cout0\,
	cout1 => \dut|a|bit_2|add_instance_s0_2|s~7COUT1_41\);

-- Location: LC_X3_Y9_N1
\dut|a|bit_2|add_instance_s0_2|s~0\ : maxv_lcell
-- Equation(s):
-- \dut|a|bit_2|add_instance_s0_2|s~0_combout\ = \dut|a|bit_1|co~0_combout\ $ (\scan_instance|In_Reg|PO[9]~8_combout\ $ ((!\dut|a|bit_2|add_instance_s0_2|s~7_cout0\)))
-- \dut|a|bit_2|add_instance_s0_2|s~2\ = CARRY((\dut|a|bit_1|co~0_combout\ & ((!\dut|a|bit_2|add_instance_s0_2|s~7_cout0\) # (!\scan_instance|In_Reg|PO[9]~8_combout\))) # (!\dut|a|bit_1|co~0_combout\ & (!\scan_instance|In_Reg|PO[9]~8_combout\ & 
-- !\dut|a|bit_2|add_instance_s0_2|s~7_cout0\)))
-- \dut|a|bit_2|add_instance_s0_2|s~2COUT1_42\ = CARRY((\dut|a|bit_1|co~0_combout\ & ((!\dut|a|bit_2|add_instance_s0_2|s~7COUT1_41\) # (!\scan_instance|In_Reg|PO[9]~8_combout\))) # (!\dut|a|bit_1|co~0_combout\ & (!\scan_instance|In_Reg|PO[9]~8_combout\ & 
-- !\dut|a|bit_2|add_instance_s0_2|s~7COUT1_41\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|a|bit_1|co~0_combout\,
	datab => \scan_instance|In_Reg|PO[9]~8_combout\,
	cin0 => \dut|a|bit_2|add_instance_s0_2|s~7_cout0\,
	cin1 => \dut|a|bit_2|add_instance_s0_2|s~7COUT1_41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|a|bit_2|add_instance_s0_2|s~0_combout\,
	cout0 => \dut|a|bit_2|add_instance_s0_2|s~2\,
	cout1 => \dut|a|bit_2|add_instance_s0_2|s~2COUT1_42\);

-- Location: LC_X3_Y9_N2
\dut|a|bit_2|add_instance_s0_2|s~10\ : maxv_lcell
-- Equation(s):
-- \dut|a|bit_2|add_instance_s0_2|s~10_combout\ = \scan_instance|In_Reg|PO[2]~9_combout\ $ (\scan_instance|In_Reg|PO[10]~10_combout\ $ ((!\dut|a|bit_2|add_instance_s0_2|s~2\)))
-- \dut|a|bit_2|add_instance_s0_2|s~12\ = CARRY((\scan_instance|In_Reg|PO[2]~9_combout\ & ((\scan_instance|In_Reg|PO[10]~10_combout\) # (!\dut|a|bit_2|add_instance_s0_2|s~2\))) # (!\scan_instance|In_Reg|PO[2]~9_combout\ & 
-- (\scan_instance|In_Reg|PO[10]~10_combout\ & !\dut|a|bit_2|add_instance_s0_2|s~2\)))
-- \dut|a|bit_2|add_instance_s0_2|s~12COUT1_43\ = CARRY((\scan_instance|In_Reg|PO[2]~9_combout\ & ((\scan_instance|In_Reg|PO[10]~10_combout\) # (!\dut|a|bit_2|add_instance_s0_2|s~2COUT1_42\))) # (!\scan_instance|In_Reg|PO[2]~9_combout\ & 
-- (\scan_instance|In_Reg|PO[10]~10_combout\ & !\dut|a|bit_2|add_instance_s0_2|s~2COUT1_42\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[2]~9_combout\,
	datab => \scan_instance|In_Reg|PO[10]~10_combout\,
	cin0 => \dut|a|bit_2|add_instance_s0_2|s~2\,
	cin1 => \dut|a|bit_2|add_instance_s0_2|s~2COUT1_42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|a|bit_2|add_instance_s0_2|s~10_combout\,
	cout0 => \dut|a|bit_2|add_instance_s0_2|s~12\,
	cout1 => \dut|a|bit_2|add_instance_s0_2|s~12COUT1_43\);

-- Location: LC_X3_Y9_N3
\dut|a|bit_2|add_instance_s0_2|s~15\ : maxv_lcell
-- Equation(s):
-- \dut|a|bit_2|add_instance_s0_2|s~15_combout\ = \scan_instance|In_Reg|PO[11]~11_combout\ $ (\scan_instance|In_Reg|PO[3]~12_combout\ $ ((\dut|a|bit_2|add_instance_s0_2|s~12\)))
-- \dut|a|bit_2|add_instance_s0_2|s~17\ = CARRY((\scan_instance|In_Reg|PO[11]~11_combout\ & (!\scan_instance|In_Reg|PO[3]~12_combout\ & !\dut|a|bit_2|add_instance_s0_2|s~12\)) # (!\scan_instance|In_Reg|PO[11]~11_combout\ & 
-- ((!\dut|a|bit_2|add_instance_s0_2|s~12\) # (!\scan_instance|In_Reg|PO[3]~12_combout\))))
-- \dut|a|bit_2|add_instance_s0_2|s~17COUT1_44\ = CARRY((\scan_instance|In_Reg|PO[11]~11_combout\ & (!\scan_instance|In_Reg|PO[3]~12_combout\ & !\dut|a|bit_2|add_instance_s0_2|s~12COUT1_43\)) # (!\scan_instance|In_Reg|PO[11]~11_combout\ & 
-- ((!\dut|a|bit_2|add_instance_s0_2|s~12COUT1_43\) # (!\scan_instance|In_Reg|PO[3]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[11]~11_combout\,
	datab => \scan_instance|In_Reg|PO[3]~12_combout\,
	cin0 => \dut|a|bit_2|add_instance_s0_2|s~12\,
	cin1 => \dut|a|bit_2|add_instance_s0_2|s~12COUT1_43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|a|bit_2|add_instance_s0_2|s~15_combout\,
	cout0 => \dut|a|bit_2|add_instance_s0_2|s~17\,
	cout1 => \dut|a|bit_2|add_instance_s0_2|s~17COUT1_44\);

-- Location: LC_X3_Y9_N4
\dut|a|bit_2|add_instance_s0_2|s~20\ : maxv_lcell
-- Equation(s):
-- \dut|a|bit_2|add_instance_s0_2|s~20_combout\ = \scan_instance|In_Reg|PO[12]~1_combout\ $ (\scan_instance|In_Reg|PO[4]~13_combout\ $ ((!\dut|a|bit_2|add_instance_s0_2|s~17\)))
-- \dut|a|bit_2|add_instance_s0_2|s~22\ = CARRY((\scan_instance|In_Reg|PO[12]~1_combout\ & ((\scan_instance|In_Reg|PO[4]~13_combout\) # (!\dut|a|bit_2|add_instance_s0_2|s~17COUT1_44\))) # (!\scan_instance|In_Reg|PO[12]~1_combout\ & 
-- (\scan_instance|In_Reg|PO[4]~13_combout\ & !\dut|a|bit_2|add_instance_s0_2|s~17COUT1_44\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[12]~1_combout\,
	datab => \scan_instance|In_Reg|PO[4]~13_combout\,
	cin0 => \dut|a|bit_2|add_instance_s0_2|s~17\,
	cin1 => \dut|a|bit_2|add_instance_s0_2|s~17COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|a|bit_2|add_instance_s0_2|s~20_combout\,
	cout => \dut|a|bit_2|add_instance_s0_2|s~22\);

-- Location: LC_X6_Y9_N1
\scan_instance|In_Reg|PO[13]~14\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[13]~14_combout\ = ((!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(13)))))

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
	datad => \scan_instance|In_Reg|L2\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[13]~14_combout\);

-- Location: LC_X3_Y9_N5
\dut|a|bit_2|add_instance_s0_2|s~25\ : maxv_lcell
-- Equation(s):
-- \dut|a|bit_2|add_instance_s0_2|s~25_combout\ = \scan_instance|In_Reg|PO[13]~14_combout\ $ (\scan_instance|In_Reg|PO[5]~5_combout\ $ ((\dut|a|bit_2|add_instance_s0_2|s~22\)))
-- \dut|a|bit_2|add_instance_s0_2|s~27\ = CARRY((\scan_instance|In_Reg|PO[13]~14_combout\ & (!\scan_instance|In_Reg|PO[5]~5_combout\ & !\dut|a|bit_2|add_instance_s0_2|s~22\)) # (!\scan_instance|In_Reg|PO[13]~14_combout\ & 
-- ((!\dut|a|bit_2|add_instance_s0_2|s~22\) # (!\scan_instance|In_Reg|PO[5]~5_combout\))))
-- \dut|a|bit_2|add_instance_s0_2|s~27COUT1_45\ = CARRY((\scan_instance|In_Reg|PO[13]~14_combout\ & (!\scan_instance|In_Reg|PO[5]~5_combout\ & !\dut|a|bit_2|add_instance_s0_2|s~22\)) # (!\scan_instance|In_Reg|PO[13]~14_combout\ & 
-- ((!\dut|a|bit_2|add_instance_s0_2|s~22\) # (!\scan_instance|In_Reg|PO[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[13]~14_combout\,
	datab => \scan_instance|In_Reg|PO[5]~5_combout\,
	cin => \dut|a|bit_2|add_instance_s0_2|s~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|a|bit_2|add_instance_s0_2|s~25_combout\,
	cout0 => \dut|a|bit_2|add_instance_s0_2|s~27\,
	cout1 => \dut|a|bit_2|add_instance_s0_2|s~27COUT1_45\);

-- Location: LC_X3_Y9_N6
\dut|a|bit_2|add_instance_s0_2|s~30\ : maxv_lcell
-- Equation(s):
-- \dut|a|bit_2|add_instance_s0_2|s~30_combout\ = \scan_instance|In_Reg|PO[6]~6_combout\ $ (\scan_instance|In_Reg|PO[14]~15_combout\ $ ((!(!\dut|a|bit_2|add_instance_s0_2|s~22\ & \dut|a|bit_2|add_instance_s0_2|s~27\) # (\dut|a|bit_2|add_instance_s0_2|s~22\ & 
-- \dut|a|bit_2|add_instance_s0_2|s~27COUT1_45\))))
-- \dut|a|bit_2|add_instance_s0_2|s~32\ = CARRY((\scan_instance|In_Reg|PO[6]~6_combout\ & ((\scan_instance|In_Reg|PO[14]~15_combout\) # (!\dut|a|bit_2|add_instance_s0_2|s~27\))) # (!\scan_instance|In_Reg|PO[6]~6_combout\ & 
-- (\scan_instance|In_Reg|PO[14]~15_combout\ & !\dut|a|bit_2|add_instance_s0_2|s~27\)))
-- \dut|a|bit_2|add_instance_s0_2|s~32COUT1_46\ = CARRY((\scan_instance|In_Reg|PO[6]~6_combout\ & ((\scan_instance|In_Reg|PO[14]~15_combout\) # (!\dut|a|bit_2|add_instance_s0_2|s~27COUT1_45\))) # (!\scan_instance|In_Reg|PO[6]~6_combout\ & 
-- (\scan_instance|In_Reg|PO[14]~15_combout\ & !\dut|a|bit_2|add_instance_s0_2|s~27COUT1_45\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[6]~6_combout\,
	datab => \scan_instance|In_Reg|PO[14]~15_combout\,
	cin => \dut|a|bit_2|add_instance_s0_2|s~22\,
	cin0 => \dut|a|bit_2|add_instance_s0_2|s~27\,
	cin1 => \dut|a|bit_2|add_instance_s0_2|s~27COUT1_45\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|a|bit_2|add_instance_s0_2|s~30_combout\,
	cout0 => \dut|a|bit_2|add_instance_s0_2|s~32\,
	cout1 => \dut|a|bit_2|add_instance_s0_2|s~32COUT1_46\);

-- Location: LC_X3_Y9_N7
\dut|a|bit_2|add_instance_s0_2|s~35\ : maxv_lcell
-- Equation(s):
-- \dut|a|bit_2|add_instance_s0_2|s~35_combout\ = (\scan_instance|In_Reg|PO[7]~4_combout\ $ ((!\dut|a|bit_2|add_instance_s0_2|s~22\ & \dut|a|bit_2|add_instance_s0_2|s~32\) # (\dut|a|bit_2|add_instance_s0_2|s~22\ & 
-- \dut|a|bit_2|add_instance_s0_2|s~32COUT1_46\) $ (\scan_instance|In_Reg|PO[15]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \scan_instance|In_Reg|PO[7]~4_combout\,
	datad => \scan_instance|In_Reg|PO[15]~16_combout\,
	cin => \dut|a|bit_2|add_instance_s0_2|s~22\,
	cin0 => \dut|a|bit_2|add_instance_s0_2|s~32\,
	cin1 => \dut|a|bit_2|add_instance_s0_2|s~32COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|a|bit_2|add_instance_s0_2|s~35_combout\);

-- Location: LC_X4_Y9_N7
\scan_instance|Out_Reg|L1~13\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~13_combout\ = (\scan_instance|In_Reg|PO[17]~3_combout\ & ((\scan_instance|In_Reg|PO[16]~2_combout\) # ((\dut|c|final|mux_7|b~5_combout\)))) # (!\scan_instance|In_Reg|PO[17]~3_combout\ & (!\scan_instance|In_Reg|PO[16]~2_combout\ & 
-- ((\dut|a|bit_2|add_instance_s0_2|s~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[17]~3_combout\,
	datab => \scan_instance|In_Reg|PO[16]~2_combout\,
	datac => \dut|c|final|mux_7|b~5_combout\,
	datad => \dut|a|bit_2|add_instance_s0_2|s~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~13_combout\);

-- Location: LC_X4_Y9_N8
\scan_instance|Out_Reg|L1~14\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~14_combout\ = (\scan_instance|In_Reg|PO[16]~2_combout\ & ((\scan_instance|Out_Reg|L1~13_combout\ & ((\dut|b|right_shift|final|mux_0|b~0_combout\))) # (!\scan_instance|Out_Reg|L1~13_combout\ & 
-- (\dut|d|bit_8|out_instance_2|s~1_combout\)))) # (!\scan_instance|In_Reg|PO[16]~2_combout\ & (((\scan_instance|Out_Reg|L1~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[16]~2_combout\,
	datab => \dut|d|bit_8|out_instance_2|s~1_combout\,
	datac => \dut|b|right_shift|final|mux_0|b~0_combout\,
	datad => \scan_instance|Out_Reg|L1~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~14_combout\);

-- Location: LC_X4_Y9_N9
\scan_instance|Out_Reg|L1[7]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(7) = DFFEAS((\scan_instance|Selector3~0\ & ((\TRST~combout\ & ((\scan_instance|Out_Reg|L1~14_combout\))) # (!\TRST~combout\ & (\scan_instance|In_Reg|L1\(0))))) # (!\scan_instance|Selector3~0\ & 
-- (((\scan_instance|Out_Reg|L1~14_combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[6]~2_combout\, , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Selector3~0\,
	datab => \scan_instance|In_Reg|L1\(0),
	datac => \TRST~combout\,
	datad => \scan_instance|Out_Reg|L1~14_combout\,
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(7));

-- Location: LC_X5_Y10_N1
\dut|c|final|mux_7|b~4\ : maxv_lcell
-- Equation(s):
-- \dut|c|final|mux_7|b~4_combout\ = ((!\TRST~combout\ & ((!\scan_instance|In_Reg|L2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|final|mux_7|b~4_combout\);

-- Location: LC_X5_Y10_N5
\dut|b|right_shift|lev2|mux_2|b~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|right_shift|lev2|mux_2|b~0_combout\ = (\dut|d|bit_2|do~0_combout\ & (\scan_instance|In_Reg|L2\(11) & (\dut|c|final|mux_7|b~4_combout\))) # (!\dut|d|bit_2|do~0_combout\ & (((\dut|b|right_shift|lev1|mux_2|b~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(11),
	datab => \dut|c|final|mux_7|b~4_combout\,
	datac => \dut|b|right_shift|lev1|mux_2|b~0_combout\,
	datad => \dut|d|bit_2|do~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|right_shift|lev2|mux_2|b~0_combout\);

-- Location: LC_X5_Y9_N4
\dut|b|right_shift|final|mux_1|b~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|right_shift|final|mux_1|b~0_combout\ = (!\dut|c|zero_check~1_combout\ & ((\scan_instance|In_Reg|PO[0]~7_combout\ & (\dut|b|right_shift|lev2|mux_2|b~0_combout\)) # (!\scan_instance|In_Reg|PO[0]~7_combout\ & 
-- ((\dut|b|right_shift|lev2|mux_1|b~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5140",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|c|zero_check~1_combout\,
	datab => \scan_instance|In_Reg|PO[0]~7_combout\,
	datac => \dut|b|right_shift|lev2|mux_2|b~0_combout\,
	datad => \dut|b|right_shift|lev2|mux_1|b~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|right_shift|final|mux_1|b~0_combout\);

-- Location: LC_X5_Y8_N8
\dut|c|final|mux_7|b~6\ : maxv_lcell
-- Equation(s):
-- \dut|c|final|mux_7|b~6_combout\ = (!\scan_instance|In_Reg|L2\(2) & (!\scan_instance|In_Reg|L2\(1) & (!\TRST~combout\ & !\dut|c|zero_check~1_combout\)))

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
	dataa => \scan_instance|In_Reg|L2\(2),
	datab => \scan_instance|In_Reg|L2\(1),
	datac => \TRST~combout\,
	datad => \dut|c|zero_check~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|final|mux_7|b~6_combout\);

-- Location: LC_X5_Y8_N1
\dut|c|final|mux_6|b~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|final|mux_6|b~0_combout\ = (\dut|c|final|mux_7|b~6_combout\ & ((\scan_instance|In_Reg|PO[0]~7_combout\ & ((\scan_instance|In_Reg|L2\(15)))) # (!\scan_instance|In_Reg|PO[0]~7_combout\ & (\scan_instance|In_Reg|L2\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ca00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(14),
	datab => \scan_instance|In_Reg|L2\(15),
	datac => \scan_instance|In_Reg|PO[0]~7_combout\,
	datad => \dut|c|final|mux_7|b~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|final|mux_6|b~0_combout\);

-- Location: LC_X5_Y9_N3
\dut|d|bit_7|out_instance_2|s~0\ : maxv_lcell
-- Equation(s):
-- \dut|d|bit_7|out_instance_2|s~0_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(6) $ (\scan_instance|In_Reg|L2\(14)))))

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
	datac => \scan_instance|In_Reg|L2\(6),
	datad => \scan_instance|In_Reg|L2\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|bit_7|out_instance_2|s~0_combout\);

-- Location: LC_X5_Y9_N1
\dut|d|bit_7|out_instance_2|s~1\ : maxv_lcell
-- Equation(s):
-- \dut|d|bit_7|out_instance_2|s~1_combout\ = \dut|d|bit_7|out_instance_2|s~0_combout\ $ (((\scan_instance|In_Reg|PO[13]~14_combout\ & (\scan_instance|In_Reg|PO[5]~5_combout\ & \dut|d|bit_5|do~combout\)) # (!\scan_instance|In_Reg|PO[13]~14_combout\ & 
-- ((\scan_instance|In_Reg|PO[5]~5_combout\) # (\dut|d|bit_5|do~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2db4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[13]~14_combout\,
	datab => \scan_instance|In_Reg|PO[5]~5_combout\,
	datac => \dut|d|bit_7|out_instance_2|s~0_combout\,
	datad => \dut|d|bit_5|do~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|bit_7|out_instance_2|s~1_combout\);

-- Location: LC_X4_Y9_N0
\scan_instance|Out_Reg|L1~11\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~11_combout\ = (\scan_instance|In_Reg|PO[17]~3_combout\ & (\scan_instance|In_Reg|PO[16]~2_combout\)) # (!\scan_instance|In_Reg|PO[17]~3_combout\ & ((\scan_instance|In_Reg|PO[16]~2_combout\ & 
-- ((\dut|d|bit_7|out_instance_2|s~1_combout\))) # (!\scan_instance|In_Reg|PO[16]~2_combout\ & (\dut|a|bit_2|add_instance_s0_2|s~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[17]~3_combout\,
	datab => \scan_instance|In_Reg|PO[16]~2_combout\,
	datac => \dut|a|bit_2|add_instance_s0_2|s~30_combout\,
	datad => \dut|d|bit_7|out_instance_2|s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~11_combout\);

-- Location: LC_X4_Y9_N1
\scan_instance|Out_Reg|L1~12\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~12_combout\ = (\scan_instance|In_Reg|PO[17]~3_combout\ & ((\scan_instance|Out_Reg|L1~11_combout\ & (\dut|b|right_shift|final|mux_1|b~0_combout\)) # (!\scan_instance|Out_Reg|L1~11_combout\ & ((\dut|c|final|mux_6|b~0_combout\))))) 
-- # (!\scan_instance|In_Reg|PO[17]~3_combout\ & (((\scan_instance|Out_Reg|L1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[17]~3_combout\,
	datab => \dut|b|right_shift|final|mux_1|b~0_combout\,
	datac => \dut|c|final|mux_6|b~0_combout\,
	datad => \scan_instance|Out_Reg|L1~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~12_combout\);

-- Location: LC_X4_Y9_N2
\scan_instance|Out_Reg|L1[6]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(6) = DFFEAS((\scan_instance|Selector3~0\ & ((\TRST~combout\ & ((\scan_instance|Out_Reg|L1~12_combout\))) # (!\TRST~combout\ & (\scan_instance|Out_Reg|L1\(7))))) # (!\scan_instance|Selector3~0\ & 
-- (((\scan_instance|Out_Reg|L1~12_combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[6]~2_combout\, , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Selector3~0\,
	datab => \scan_instance|Out_Reg|L1\(7),
	datac => \TRST~combout\,
	datad => \scan_instance|Out_Reg|L1~12_combout\,
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(6));

-- Location: LC_X5_Y9_N5
\dut|d|bit_6|out_instance_2|s~8\ : maxv_lcell
-- Equation(s):
-- \dut|d|bit_6|out_instance_2|s~8_combout\ = \dut|d|bit_5|do~combout\ $ (((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(5) $ (\scan_instance|In_Reg|L2\(13))))))

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
	datab => \scan_instance|In_Reg|L2\(5),
	datac => \scan_instance|In_Reg|L2\(13),
	datad => \dut|d|bit_5|do~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|bit_6|out_instance_2|s~8_combout\);

-- Location: LC_X5_Y10_N9
\dut|b|right_shift|lev2|mux_3|b~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|right_shift|lev2|mux_3|b~0_combout\ = (\dut|d|bit_2|do~0_combout\ & (\scan_instance|In_Reg|L2\(10) & ((\dut|c|final|mux_7|b~4_combout\)))) # (!\dut|d|bit_2|do~0_combout\ & (((\dut|b|right_shift|lev1|mux_3|b~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b830",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(10),
	datab => \dut|d|bit_2|do~0_combout\,
	datac => \dut|b|right_shift|lev1|mux_3|b~0_combout\,
	datad => \dut|c|final|mux_7|b~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|right_shift|lev2|mux_3|b~0_combout\);

-- Location: LC_X4_Y9_N6
\dut|b|right_shift|final|mux_2|b~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|right_shift|final|mux_2|b~0_combout\ = (!\dut|c|zero_check~1_combout\ & ((\scan_instance|In_Reg|PO[0]~7_combout\ & (\dut|b|right_shift|lev2|mux_3|b~0_combout\)) # (!\scan_instance|In_Reg|PO[0]~7_combout\ & 
-- ((\dut|b|right_shift|lev2|mux_2|b~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0d08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[0]~7_combout\,
	datab => \dut|b|right_shift|lev2|mux_3|b~0_combout\,
	datac => \dut|c|zero_check~1_combout\,
	datad => \dut|b|right_shift|lev2|mux_2|b~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|right_shift|final|mux_2|b~0_combout\);

-- Location: LC_X5_Y8_N5
\dut|c|final|mux_5|b~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|final|mux_5|b~0_combout\ = (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(0) & (\scan_instance|In_Reg|L2\(14) & !\scan_instance|In_Reg|L2\(1))))

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
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(0),
	datac => \scan_instance|In_Reg|L2\(14),
	datad => \scan_instance|In_Reg|L2\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|final|mux_5|b~0_combout\);

-- Location: LC_X5_Y8_N2
\dut|c|lev2|mux_5|b~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|lev2|mux_5|b~0_combout\ = (\TRST~combout\ & (((\scan_instance|In_Reg|L2\(13))))) # (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(1) & (\scan_instance|In_Reg|L2\(15))) # (!\scan_instance|In_Reg|L2\(1) & ((\scan_instance|In_Reg|L2\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(15),
	datac => \scan_instance|In_Reg|L2\(1),
	datad => \scan_instance|In_Reg|L2\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|lev2|mux_5|b~0_combout\);

-- Location: LC_X5_Y8_N7
\dut|c|final|mux_5|b~1\ : maxv_lcell
-- Equation(s):
-- \dut|c|final|mux_5|b~1_combout\ = (\dut|c|final|mux_7|b~7_combout\ & ((\dut|c|final|mux_5|b~0_combout\) # ((\dut|c|lev2|mux_5|b~0_combout\ & !\scan_instance|In_Reg|PO[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ae00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|c|final|mux_5|b~0_combout\,
	datab => \dut|c|lev2|mux_5|b~0_combout\,
	datac => \scan_instance|In_Reg|PO[0]~7_combout\,
	datad => \dut|c|final|mux_7|b~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|final|mux_5|b~1_combout\);

-- Location: LC_X4_Y9_N3
\scan_instance|Out_Reg|L1~9\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~9_combout\ = (\scan_instance|In_Reg|PO[17]~3_combout\ & ((\scan_instance|In_Reg|PO[16]~2_combout\) # ((\dut|c|final|mux_5|b~1_combout\)))) # (!\scan_instance|In_Reg|PO[17]~3_combout\ & (!\scan_instance|In_Reg|PO[16]~2_combout\ & 
-- ((\dut|a|bit_2|add_instance_s0_2|s~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[17]~3_combout\,
	datab => \scan_instance|In_Reg|PO[16]~2_combout\,
	datac => \dut|c|final|mux_5|b~1_combout\,
	datad => \dut|a|bit_2|add_instance_s0_2|s~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~9_combout\);

-- Location: LC_X4_Y9_N4
\scan_instance|Out_Reg|L1~10\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~10_combout\ = (\scan_instance|In_Reg|PO[16]~2_combout\ & ((\scan_instance|Out_Reg|L1~9_combout\ & ((\dut|b|right_shift|final|mux_2|b~0_combout\))) # (!\scan_instance|Out_Reg|L1~9_combout\ & 
-- (\dut|d|bit_6|out_instance_2|s~8_combout\)))) # (!\scan_instance|In_Reg|PO[16]~2_combout\ & (((\scan_instance|Out_Reg|L1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[16]~2_combout\,
	datab => \dut|d|bit_6|out_instance_2|s~8_combout\,
	datac => \dut|b|right_shift|final|mux_2|b~0_combout\,
	datad => \scan_instance|Out_Reg|L1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~10_combout\);

-- Location: LC_X4_Y9_N5
\scan_instance|Out_Reg|L1[5]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(5) = DFFEAS((\scan_instance|Selector3~0\ & ((\TRST~combout\ & ((\scan_instance|Out_Reg|L1~10_combout\))) # (!\TRST~combout\ & (\scan_instance|Out_Reg|L1\(6))))) # (!\scan_instance|Selector3~0\ & 
-- (((\scan_instance|Out_Reg|L1~10_combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[6]~2_combout\, , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Selector3~0\,
	datab => \scan_instance|Out_Reg|L1\(6),
	datac => \TRST~combout\,
	datad => \scan_instance|Out_Reg|L1~10_combout\,
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(5));

-- Location: LC_X6_Y10_N2
\dut|c|lev2|mux_4|b~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|lev2|mux_4|b~0_combout\ = (\TRST~combout\ & (((\scan_instance|In_Reg|L2\(12))))) # (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(1) & (\scan_instance|In_Reg|L2\(14))) # (!\scan_instance|In_Reg|L2\(1) & ((\scan_instance|In_Reg|L2\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(14),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(12),
	datad => \scan_instance|In_Reg|L2\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|lev2|mux_4|b~0_combout\);

-- Location: LC_X6_Y8_N1
\dut|c|final|mux_4|b~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|final|mux_4|b~0_combout\ = ((\scan_instance|In_Reg|PO[0]~7_combout\ & (!\dut|c|lev2|mux_5|b~0_combout\)) # (!\scan_instance|In_Reg|PO[0]~7_combout\ & ((!\dut|c|lev2|mux_4|b~0_combout\)))) # (!\dut|c|final|mux_7|b~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "47ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|c|lev2|mux_5|b~0_combout\,
	datab => \scan_instance|In_Reg|PO[0]~7_combout\,
	datac => \dut|c|lev2|mux_4|b~0_combout\,
	datad => \dut|c|final|mux_7|b~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|final|mux_4|b~0_combout\);

-- Location: LC_X6_Y7_N0
\dut|b|right_shift|lev2|mux_4|b~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|right_shift|lev2|mux_4|b~0_combout\ = (\TRST~combout\ & (((\scan_instance|In_Reg|L2\(11))))) # (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(1) & (\scan_instance|In_Reg|L2\(9))) # (!\scan_instance|In_Reg|L2\(1) & 
-- ((\scan_instance|In_Reg|L2\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(9),
	datab => \scan_instance|In_Reg|L2\(11),
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|right_shift|lev2|mux_4|b~0_combout\);

-- Location: LC_X6_Y8_N3
\dut|b|right_shift|final|mux_3|b~9\ : maxv_lcell
-- Equation(s):
-- \dut|b|right_shift|final|mux_3|b~9_combout\ = (\scan_instance|In_Reg|L2\(0) & (!\TRST~combout\ & (\dut|b|right_shift|lev2|mux_4|b~0_combout\ & !\scan_instance|In_Reg|L2\(2))))

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
	datab => \TRST~combout\,
	datac => \dut|b|right_shift|lev2|mux_4|b~0_combout\,
	datad => \scan_instance|In_Reg|L2\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|right_shift|final|mux_3|b~9_combout\);

-- Location: LC_X7_Y8_N0
\dut|b|right_shift|final|mux_3|b~8\ : maxv_lcell
-- Equation(s):
-- \dut|b|right_shift|final|mux_3|b~8_combout\ = (!\dut|c|zero_check~1_combout\ & ((\dut|b|right_shift|final|mux_3|b~9_combout\) # ((!\scan_instance|In_Reg|PO[0]~7_combout\ & \dut|b|right_shift|lev2|mux_3|b~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5510",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|c|zero_check~1_combout\,
	datab => \scan_instance|In_Reg|PO[0]~7_combout\,
	datac => \dut|b|right_shift|lev2|mux_3|b~0_combout\,
	datad => \dut|b|right_shift|final|mux_3|b~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|right_shift|final|mux_3|b~8_combout\);

-- Location: LC_X7_Y8_N7
\dut|d|bit_5|out_instance_2|s~2\ : maxv_lcell
-- Equation(s):
-- \dut|d|bit_5|out_instance_2|s~2_combout\ = \dut|d|bit_4|do~combout\ $ (((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(4) $ (\scan_instance|In_Reg|L2\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f906",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(4),
	datab => \scan_instance|In_Reg|L2\(12),
	datac => \TRST~combout\,
	datad => \dut|d|bit_4|do~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|bit_5|out_instance_2|s~2_combout\);

-- Location: LC_X7_Y8_N4
\scan_instance|Out_Reg|L1~7\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~7_combout\ = (\scan_instance|In_Reg|PO[16]~2_combout\ & ((\scan_instance|In_Reg|PO[17]~3_combout\) # ((\dut|d|bit_5|out_instance_2|s~2_combout\)))) # (!\scan_instance|In_Reg|PO[16]~2_combout\ & 
-- (!\scan_instance|In_Reg|PO[17]~3_combout\ & ((\dut|a|bit_2|add_instance_s0_2|s~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[16]~2_combout\,
	datab => \scan_instance|In_Reg|PO[17]~3_combout\,
	datac => \dut|d|bit_5|out_instance_2|s~2_combout\,
	datad => \dut|a|bit_2|add_instance_s0_2|s~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~7_combout\);

-- Location: LC_X7_Y8_N5
\scan_instance|Out_Reg|L1~8\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~8_combout\ = (\scan_instance|In_Reg|PO[17]~3_combout\ & ((\scan_instance|Out_Reg|L1~7_combout\ & ((\dut|b|right_shift|final|mux_3|b~8_combout\))) # (!\scan_instance|Out_Reg|L1~7_combout\ & (!\dut|c|final|mux_4|b~0_combout\)))) # 
-- (!\scan_instance|In_Reg|PO[17]~3_combout\ & (((\scan_instance|Out_Reg|L1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f344",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|c|final|mux_4|b~0_combout\,
	datab => \scan_instance|In_Reg|PO[17]~3_combout\,
	datac => \dut|b|right_shift|final|mux_3|b~8_combout\,
	datad => \scan_instance|Out_Reg|L1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~8_combout\);

-- Location: LC_X7_Y8_N6
\scan_instance|Out_Reg|L1[4]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(4) = DFFEAS((\TRST~combout\ & (((\scan_instance|Out_Reg|L1~8_combout\)))) # (!\TRST~combout\ & ((\scan_instance|Selector3~0\ & (\scan_instance|Out_Reg|L1\(5))) # (!\scan_instance|Selector3~0\ & 
-- ((\scan_instance|Out_Reg|L1~8_combout\))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[6]~2_combout\, , , \TRST~combout\, )

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
	dataa => \scan_instance|Out_Reg|L1\(5),
	datab => \TRST~combout\,
	datac => \scan_instance|Selector3~0\,
	datad => \scan_instance|Out_Reg|L1~8_combout\,
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(4));

-- Location: LC_X6_Y7_N1
\dut|d|bit_4|out_instance_2|s~2\ : maxv_lcell
-- Equation(s):
-- \dut|d|bit_4|out_instance_2|s~2_combout\ = \dut|d|bit_3|do~combout\ $ (((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(11) $ (\scan_instance|In_Reg|L2\(3))))))

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
	datab => \scan_instance|In_Reg|L2\(11),
	datac => \scan_instance|In_Reg|L2\(3),
	datad => \dut|d|bit_3|do~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|bit_4|out_instance_2|s~2_combout\);

-- Location: LC_X6_Y8_N5
\dut|b|right_shift|lev2|mux_5|b~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|right_shift|lev2|mux_5|b~0_combout\ = (\TRST~combout\ & (((\scan_instance|In_Reg|L2\(10))))) # (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(1) & (\scan_instance|In_Reg|L2\(8))) # (!\scan_instance|In_Reg|L2\(1) & 
-- ((\scan_instance|In_Reg|L2\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(8),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(1),
	datad => \scan_instance|In_Reg|L2\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|right_shift|lev2|mux_5|b~0_combout\);

-- Location: LC_X6_Y7_N4
\dut|b|right_shift|final|mux_4|b~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|right_shift|final|mux_4|b~0_combout\ = ((\scan_instance|In_Reg|PO[0]~7_combout\ & (!\dut|b|right_shift|lev2|mux_5|b~0_combout\)) # (!\scan_instance|In_Reg|PO[0]~7_combout\ & ((!\dut|b|right_shift|lev2|mux_4|b~0_combout\)))) # 
-- (!\dut|c|final|mux_7|b~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "53ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|b|right_shift|lev2|mux_5|b~0_combout\,
	datab => \dut|b|right_shift|lev2|mux_4|b~0_combout\,
	datac => \scan_instance|In_Reg|PO[0]~7_combout\,
	datad => \dut|c|final|mux_7|b~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|right_shift|final|mux_4|b~0_combout\);

-- Location: LC_X5_Y7_N3
\dut|c|lev2|mux_3|b~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|lev2|mux_3|b~0_combout\ = (\scan_instance|In_Reg|L2\(2) & (((\scan_instance|In_Reg|L2\(1))))) # (!\scan_instance|In_Reg|L2\(2) & ((\scan_instance|In_Reg|L2\(1) & (\scan_instance|In_Reg|L2\(13))) # (!\scan_instance|In_Reg|L2\(1) & 
-- ((\scan_instance|In_Reg|L2\(11))))))

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
	dataa => \scan_instance|In_Reg|L2\(2),
	datab => \scan_instance|In_Reg|L2\(13),
	datac => \scan_instance|In_Reg|L2\(11),
	datad => \scan_instance|In_Reg|L2\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|lev2|mux_3|b~0_combout\);

-- Location: LC_X5_Y7_N1
\dut|c|lev2|mux_3|b~1\ : maxv_lcell
-- Equation(s):
-- \dut|c|lev2|mux_3|b~1_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(2) & (\scan_instance|In_Reg|L2\(15) & !\dut|c|lev2|mux_3|b~0_combout\)) # (!\scan_instance|In_Reg|L2\(2) & ((\dut|c|lev2|mux_3|b~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0508",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(2),
	datab => \scan_instance|In_Reg|L2\(15),
	datac => \TRST~combout\,
	datad => \dut|c|lev2|mux_3|b~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|lev2|mux_3|b~1_combout\);

-- Location: LC_X6_Y7_N5
\dut|c|final|mux_3|b~3\ : maxv_lcell
-- Equation(s):
-- \dut|c|final|mux_3|b~3_combout\ = (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(0) & (\dut|c|lev2|mux_4|b~0_combout\ & !\scan_instance|In_Reg|L2\(2))))

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
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(0),
	datac => \dut|c|lev2|mux_4|b~0_combout\,
	datad => \scan_instance|In_Reg|L2\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|final|mux_3|b~3_combout\);

-- Location: LC_X6_Y7_N6
\dut|c|final|mux_3|b~2\ : maxv_lcell
-- Equation(s):
-- \dut|c|final|mux_3|b~2_combout\ = (!\dut|c|zero_check~1_combout\ & ((\dut|c|final|mux_3|b~3_combout\) # ((\dut|c|lev2|mux_3|b~1_combout\ & !\scan_instance|In_Reg|PO[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|c|lev2|mux_3|b~1_combout\,
	datab => \scan_instance|In_Reg|PO[0]~7_combout\,
	datac => \dut|c|final|mux_3|b~3_combout\,
	datad => \dut|c|zero_check~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|final|mux_3|b~2_combout\);

-- Location: LC_X6_Y7_N7
\scan_instance|Out_Reg|L1~5\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~5_combout\ = (\scan_instance|In_Reg|PO[16]~2_combout\ & (\scan_instance|In_Reg|PO[17]~3_combout\)) # (!\scan_instance|In_Reg|PO[16]~2_combout\ & ((\scan_instance|In_Reg|PO[17]~3_combout\ & (\dut|c|final|mux_3|b~2_combout\)) # 
-- (!\scan_instance|In_Reg|PO[17]~3_combout\ & ((\dut|a|bit_2|add_instance_s0_2|s~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[16]~2_combout\,
	datab => \scan_instance|In_Reg|PO[17]~3_combout\,
	datac => \dut|c|final|mux_3|b~2_combout\,
	datad => \dut|a|bit_2|add_instance_s0_2|s~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~5_combout\);

-- Location: LC_X6_Y7_N8
\scan_instance|Out_Reg|L1~6\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~6_combout\ = (\scan_instance|In_Reg|PO[16]~2_combout\ & ((\scan_instance|Out_Reg|L1~5_combout\ & ((!\dut|b|right_shift|final|mux_4|b~0_combout\))) # (!\scan_instance|Out_Reg|L1~5_combout\ & 
-- (\dut|d|bit_4|out_instance_2|s~2_combout\)))) # (!\scan_instance|In_Reg|PO[16]~2_combout\ & (((\scan_instance|Out_Reg|L1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[16]~2_combout\,
	datab => \dut|d|bit_4|out_instance_2|s~2_combout\,
	datac => \dut|b|right_shift|final|mux_4|b~0_combout\,
	datad => \scan_instance|Out_Reg|L1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~6_combout\);

-- Location: LC_X6_Y7_N9
\scan_instance|Out_Reg|L1[3]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(3) = DFFEAS((\TRST~combout\ & (((\scan_instance|Out_Reg|L1~6_combout\)))) # (!\TRST~combout\ & ((\scan_instance|Selector3~0\ & (\scan_instance|Out_Reg|L1\(4))) # (!\scan_instance|Selector3~0\ & 
-- ((\scan_instance|Out_Reg|L1~6_combout\))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[6]~2_combout\, , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fb40",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datab => \scan_instance|Selector3~0\,
	datac => \scan_instance|Out_Reg|L1\(4),
	datad => \scan_instance|Out_Reg|L1~6_combout\,
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(3));

-- Location: LC_X5_Y10_N2
\dut|c|lev1|mux_2|b~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|lev1|mux_2|b~0_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(2) & (\scan_instance|In_Reg|L2\(14))) # (!\scan_instance|In_Reg|L2\(2) & ((\scan_instance|In_Reg|L2\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0d08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(2),
	datab => \scan_instance|In_Reg|L2\(14),
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|lev1|mux_2|b~0_combout\);

-- Location: LC_X5_Y10_N3
\dut|c|lev2|mux_2|b~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|lev2|mux_2|b~0_combout\ = (\dut|d|bit_2|do~0_combout\ & (\scan_instance|In_Reg|L2\(12) & (\dut|c|final|mux_7|b~4_combout\))) # (!\dut|d|bit_2|do~0_combout\ & (((\dut|c|lev1|mux_2|b~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8f80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(12),
	datab => \dut|c|final|mux_7|b~4_combout\,
	datac => \dut|d|bit_2|do~0_combout\,
	datad => \dut|c|lev1|mux_2|b~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|lev2|mux_2|b~0_combout\);

-- Location: LC_X4_Y8_N9
\dut|c|final|mux_2|b~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|final|mux_2|b~0_combout\ = (!\dut|c|zero_check~1_combout\ & ((\scan_instance|In_Reg|PO[0]~7_combout\ & ((\dut|c|lev2|mux_3|b~1_combout\))) # (!\scan_instance|In_Reg|PO[0]~7_combout\ & (\dut|c|lev2|mux_2|b~0_combout\))))

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
	dataa => \dut|c|zero_check~1_combout\,
	datab => \dut|c|lev2|mux_2|b~0_combout\,
	datac => \dut|c|lev2|mux_3|b~1_combout\,
	datad => \scan_instance|In_Reg|PO[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|final|mux_2|b~0_combout\);

-- Location: LC_X6_Y8_N0
\dut|b|right_shift|final|mux_5|b~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|right_shift|final|mux_5|b~0_combout\ = (\scan_instance|In_Reg|L2\(9) & (\scan_instance|In_Reg|L2\(0) & (!\scan_instance|In_Reg|L2\(1) & !\TRST~combout\)))

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
	dataa => \scan_instance|In_Reg|L2\(9),
	datab => \scan_instance|In_Reg|L2\(0),
	datac => \scan_instance|In_Reg|L2\(1),
	datad => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|right_shift|final|mux_5|b~0_combout\);

-- Location: LC_X6_Y8_N4
\dut|b|right_shift|final|mux_5|b~1\ : maxv_lcell
-- Equation(s):
-- \dut|b|right_shift|final|mux_5|b~1_combout\ = (\dut|c|final|mux_7|b~7_combout\ & ((\dut|b|right_shift|final|mux_5|b~0_combout\) # ((\dut|b|right_shift|lev2|mux_5|b~0_combout\ & !\scan_instance|In_Reg|PO[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|b|right_shift|lev2|mux_5|b~0_combout\,
	datab => \scan_instance|In_Reg|PO[0]~7_combout\,
	datac => \dut|c|final|mux_7|b~7_combout\,
	datad => \dut|b|right_shift|final|mux_5|b~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|right_shift|final|mux_5|b~1_combout\);

-- Location: LC_X6_Y8_N6
\dut|d|bit_3|out_instance_2|s~2\ : maxv_lcell
-- Equation(s):
-- \dut|d|bit_3|out_instance_2|s~2_combout\ = \dut|d|bit_2|do~combout\ $ (((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(2) $ (\scan_instance|In_Reg|L2\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f906",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(2),
	datab => \scan_instance|In_Reg|L2\(10),
	datac => \TRST~combout\,
	datad => \dut|d|bit_2|do~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|bit_3|out_instance_2|s~2_combout\);

-- Location: LC_X3_Y8_N6
\scan_instance|Out_Reg|L1~3\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~3_combout\ = (\scan_instance|In_Reg|PO[17]~3_combout\ & (\scan_instance|In_Reg|PO[16]~2_combout\)) # (!\scan_instance|In_Reg|PO[17]~3_combout\ & ((\scan_instance|In_Reg|PO[16]~2_combout\ & 
-- ((\dut|d|bit_3|out_instance_2|s~2_combout\))) # (!\scan_instance|In_Reg|PO[16]~2_combout\ & (\dut|a|bit_2|add_instance_s0_2|s~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[17]~3_combout\,
	datab => \scan_instance|In_Reg|PO[16]~2_combout\,
	datac => \dut|a|bit_2|add_instance_s0_2|s~10_combout\,
	datad => \dut|d|bit_3|out_instance_2|s~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~3_combout\);

-- Location: LC_X3_Y8_N7
\scan_instance|Out_Reg|L1~4\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~4_combout\ = (\scan_instance|In_Reg|PO[17]~3_combout\ & ((\scan_instance|Out_Reg|L1~3_combout\ & ((\dut|b|right_shift|final|mux_5|b~1_combout\))) # (!\scan_instance|Out_Reg|L1~3_combout\ & (\dut|c|final|mux_2|b~0_combout\)))) # 
-- (!\scan_instance|In_Reg|PO[17]~3_combout\ & (((\scan_instance|Out_Reg|L1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[17]~3_combout\,
	datab => \dut|c|final|mux_2|b~0_combout\,
	datac => \dut|b|right_shift|final|mux_5|b~1_combout\,
	datad => \scan_instance|Out_Reg|L1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~4_combout\);

-- Location: LC_X3_Y8_N8
\scan_instance|Out_Reg|L1[2]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(2) = DFFEAS((\scan_instance|Selector3~0\ & ((\TRST~combout\ & ((\scan_instance|Out_Reg|L1~4_combout\))) # (!\TRST~combout\ & (\scan_instance|Out_Reg|L1\(3))))) # (!\scan_instance|Selector3~0\ & 
-- (((\scan_instance|Out_Reg|L1~4_combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[6]~2_combout\, , , \TRST~combout\, )

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
	dataa => \scan_instance|Out_Reg|L1\(3),
	datab => \scan_instance|Selector3~0\,
	datac => \TRST~combout\,
	datad => \scan_instance|Out_Reg|L1~4_combout\,
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(2));

-- Location: LC_X6_Y8_N8
\dut|d|bit_2|out_instance_2|s~2\ : maxv_lcell
-- Equation(s):
-- \dut|d|bit_2|out_instance_2|s~2_combout\ = \dut|d|bit_1|do~0_combout\ $ (((\TRST~combout\) # (\scan_instance|In_Reg|L2\(9) $ (!\scan_instance|In_Reg|L2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "12ed",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(9),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(1),
	datad => \dut|d|bit_1|do~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|bit_2|out_instance_2|s~2_combout\);

-- Location: LC_X4_Y8_N2
\dut|b|right_shift|final|mux_6|b~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|right_shift|final|mux_6|b~0_combout\ = (\dut|c|final|mux_7|b~6_combout\ & ((\scan_instance|In_Reg|PO[0]~7_combout\ & ((\scan_instance|In_Reg|L2\(8)))) # (!\scan_instance|In_Reg|PO[0]~7_combout\ & (\scan_instance|In_Reg|L2\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(9),
	datab => \scan_instance|In_Reg|PO[0]~7_combout\,
	datac => \scan_instance|In_Reg|L2\(8),
	datad => \dut|c|final|mux_7|b~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|right_shift|final|mux_6|b~0_combout\);

-- Location: LC_X5_Y7_N0
\dut|c|lev2|mux_1|b~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|lev2|mux_1|b~0_combout\ = (\TRST~combout\ & (((\scan_instance|In_Reg|L2\(11))))) # (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(2) & (\scan_instance|In_Reg|L2\(15))) # (!\scan_instance|In_Reg|L2\(2) & ((\scan_instance|In_Reg|L2\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(15),
	datac => \scan_instance|In_Reg|L2\(11),
	datad => \scan_instance|In_Reg|L2\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|lev2|mux_1|b~0_combout\);

-- Location: LC_X5_Y7_N5
\dut|c|lev2|mux_1|b~1\ : maxv_lcell
-- Equation(s):
-- \dut|c|lev2|mux_1|b~1_combout\ = (\TRST~combout\ & (\scan_instance|In_Reg|L2\(9))) # (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(2) & ((\scan_instance|In_Reg|L2\(13)))) # (!\scan_instance|In_Reg|L2\(2) & (\scan_instance|In_Reg|L2\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(9),
	datac => \scan_instance|In_Reg|L2\(13),
	datad => \scan_instance|In_Reg|L2\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|lev2|mux_1|b~1_combout\);

-- Location: LC_X5_Y7_N6
\dut|c|lev2|mux_1|b~2\ : maxv_lcell
-- Equation(s):
-- \dut|c|lev2|mux_1|b~2_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(1) & (\dut|c|lev2|mux_1|b~0_combout\)) # (!\scan_instance|In_Reg|L2\(1) & ((\dut|c|lev2|mux_1|b~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5140",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(1),
	datac => \dut|c|lev2|mux_1|b~0_combout\,
	datad => \dut|c|lev2|mux_1|b~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|lev2|mux_1|b~2_combout\);

-- Location: LC_X4_Y8_N1
\dut|c|final|mux_1|b~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|final|mux_1|b~0_combout\ = (!\dut|c|zero_check~1_combout\ & ((\scan_instance|In_Reg|PO[0]~7_combout\ & (\dut|c|lev2|mux_2|b~0_combout\)) # (!\scan_instance|In_Reg|PO[0]~7_combout\ & ((\dut|c|lev2|mux_1|b~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5140",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|c|zero_check~1_combout\,
	datab => \scan_instance|In_Reg|PO[0]~7_combout\,
	datac => \dut|c|lev2|mux_2|b~0_combout\,
	datad => \dut|c|lev2|mux_1|b~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|final|mux_1|b~0_combout\);

-- Location: LC_X3_Y8_N3
\scan_instance|Out_Reg|L1~0\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~0_combout\ = (\scan_instance|In_Reg|PO[17]~3_combout\ & (((\scan_instance|In_Reg|PO[16]~2_combout\) # (\dut|c|final|mux_1|b~0_combout\)))) # (!\scan_instance|In_Reg|PO[17]~3_combout\ & (\dut|a|bit_2|add_instance_s0_2|s~0_combout\ 
-- & (!\scan_instance|In_Reg|PO[16]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aea4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[17]~3_combout\,
	datab => \dut|a|bit_2|add_instance_s0_2|s~0_combout\,
	datac => \scan_instance|In_Reg|PO[16]~2_combout\,
	datad => \dut|c|final|mux_1|b~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~0_combout\);

-- Location: LC_X3_Y8_N4
\scan_instance|Out_Reg|L1~1\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~1_combout\ = (\scan_instance|In_Reg|PO[16]~2_combout\ & ((\scan_instance|Out_Reg|L1~0_combout\ & ((\dut|b|right_shift|final|mux_6|b~0_combout\))) # (!\scan_instance|Out_Reg|L1~0_combout\ & 
-- (\dut|d|bit_2|out_instance_2|s~2_combout\)))) # (!\scan_instance|In_Reg|PO[16]~2_combout\ & (((\scan_instance|Out_Reg|L1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|d|bit_2|out_instance_2|s~2_combout\,
	datab => \scan_instance|In_Reg|PO[16]~2_combout\,
	datac => \dut|b|right_shift|final|mux_6|b~0_combout\,
	datad => \scan_instance|Out_Reg|L1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~1_combout\);

-- Location: LC_X3_Y8_N5
\scan_instance|Out_Reg|L1[1]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(1) = DFFEAS((\scan_instance|Selector3~0\ & ((\TRST~combout\ & ((\scan_instance|Out_Reg|L1~1_combout\))) # (!\TRST~combout\ & (\scan_instance|Out_Reg|L1\(2))))) # (!\scan_instance|Selector3~0\ & 
-- (((\scan_instance|Out_Reg|L1~1_combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[6]~2_combout\, , , \TRST~combout\, )

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
	dataa => \scan_instance|Out_Reg|L1\(2),
	datab => \scan_instance|Selector3~0\,
	datac => \TRST~combout\,
	datad => \scan_instance|Out_Reg|L1~1_combout\,
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(1));

-- Location: LC_X3_Y7_N5
\dut|a|bit_1|add_instance_s0_1|s~0\ : maxv_lcell
-- Equation(s):
-- \dut|a|bit_1|add_instance_s0_1|s~0_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(0) $ (\scan_instance|In_Reg|L2\(8)))))

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
	datac => \scan_instance|In_Reg|L2\(0),
	datad => \scan_instance|In_Reg|L2\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|a|bit_1|add_instance_s0_1|s~0_combout\);

-- Location: LC_X6_Y8_N9
\scan_instance|Out_Reg|mux1[0]~0\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~0_combout\ = ((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(8) & !\scan_instance|In_Reg|L2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(8),
	datad => \scan_instance|In_Reg|L2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~0_combout\);

-- Location: LC_X6_Y7_N3
\scan_instance|Out_Reg|mux1[0]~1\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~1_combout\ = ((\TRST~combout\) # ((!\scan_instance|In_Reg|L2\(2) & !\scan_instance|In_Reg|L2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \scan_instance|In_Reg|L2\(2),
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~1_combout\);

-- Location: LC_X5_Y7_N2
\scan_instance|In_Reg|PO[8]~0\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[8]~0_combout\ = (((!\TRST~combout\ & \scan_instance|In_Reg|L2\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[8]~0_combout\);

-- Location: LC_X5_Y7_N7
\dut|c|lev3|mux_0|b~2\ : maxv_lcell
-- Equation(s):
-- \dut|c|lev3|mux_0|b~2_combout\ = (\dut|c|lev3|mux_0|b~1_combout\ & (((\dut|c|lev1|mux_2|b~0_combout\ & !\dut|c|lev3|mux_0|b~0_combout\)))) # (!\dut|c|lev3|mux_0|b~1_combout\ & ((\scan_instance|In_Reg|PO[8]~0_combout\) # 
-- ((\dut|c|lev3|mux_0|b~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|c|lev3|mux_0|b~1_combout\,
	datab => \scan_instance|In_Reg|PO[8]~0_combout\,
	datac => \dut|c|lev1|mux_2|b~0_combout\,
	datad => \dut|c|lev3|mux_0|b~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|lev3|mux_0|b~2_combout\);

-- Location: LC_X5_Y7_N8
\dut|c|lev3|mux_0|b~3\ : maxv_lcell
-- Equation(s):
-- \dut|c|lev3|mux_0|b~3_combout\ = (\dut|c|lev3|mux_0|b~0_combout\ & ((\dut|c|lev3|mux_0|b~2_combout\ & ((\scan_instance|In_Reg|PO[12]~1_combout\))) # (!\dut|c|lev3|mux_0|b~2_combout\ & (\dut|c|lev2|mux_1|b~2_combout\)))) # (!\dut|c|lev3|mux_0|b~0_combout\ 
-- & (((\dut|c|lev3|mux_0|b~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|c|lev2|mux_1|b~2_combout\,
	datab => \dut|c|lev3|mux_0|b~0_combout\,
	datac => \scan_instance|In_Reg|PO[12]~1_combout\,
	datad => \dut|c|lev3|mux_0|b~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|lev3|mux_0|b~3_combout\);

-- Location: LC_X5_Y7_N9
\scan_instance|Out_Reg|mux1[0]~2\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~2_combout\ = (\scan_instance|In_Reg|PO[16]~2_combout\ & (\scan_instance|Out_Reg|mux1[0]~0_combout\ & (\scan_instance|Out_Reg|mux1[0]~1_combout\))) # (!\scan_instance|In_Reg|PO[16]~2_combout\ & 
-- (((\dut|c|lev3|mux_0|b~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d580",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[16]~2_combout\,
	datab => \scan_instance|Out_Reg|mux1[0]~0_combout\,
	datac => \scan_instance|Out_Reg|mux1[0]~1_combout\,
	datad => \dut|c|lev3|mux_0|b~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~2_combout\);

-- Location: LC_X4_Y7_N3
\scan_instance|Out_Reg|mux1[0]~3\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~3_combout\ = (\scan_instance|In_Reg|PO[17]~3_combout\ & (((\scan_instance|Out_Reg|mux1[0]~2_combout\ & !\dut|c|zero_check~1_combout\)))) # (!\scan_instance|In_Reg|PO[17]~3_combout\ & 
-- (\dut|a|bit_1|add_instance_s0_1|s~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "22e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|a|bit_1|add_instance_s0_1|s~0_combout\,
	datab => \scan_instance|In_Reg|PO[17]~3_combout\,
	datac => \scan_instance|Out_Reg|mux1[0]~2_combout\,
	datad => \dut|c|zero_check~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~3_combout\);

-- Location: LC_X4_Y7_N4
\scan_instance|Out_Reg|mux1[0]~4\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~4_combout\ = (\scan_instance|Selector3~0\ & ((\TRST~combout\ & ((\scan_instance|Out_Reg|mux1[0]~3_combout\))) # (!\TRST~combout\ & (\scan_instance|Out_Reg|L1\(1))))) # (!\scan_instance|Selector3~0\ & 
-- (((\scan_instance|Out_Reg|mux1[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Selector3~0\,
	datab => \scan_instance|Out_Reg|L1\(1),
	datac => \TRST~combout\,
	datad => \scan_instance|Out_Reg|mux1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~4_combout\);

-- Location: LC_X4_Y7_N5
\scan_instance|Out_Reg|L1[0]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(0) = DFFEAS((\scan_instance|Selector0~0_combout\ & (\scan_instance|Out_Reg|L1\(0))) # (!\scan_instance|Selector0~0_combout\ & ((\TRST~combout\ & (\scan_instance|Out_Reg|L1\(0))) # (!\TRST~combout\ & 
-- ((\scan_instance|Out_Reg|mux1[0]~4_combout\))))), GLOBAL(\TCLK~combout\), VCC, , , , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aba8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Out_Reg|L1\(0),
	datab => \scan_instance|Selector0~0_combout\,
	datac => \TRST~combout\,
	datad => \scan_instance|Out_Reg|mux1[0]~4_combout\,
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


