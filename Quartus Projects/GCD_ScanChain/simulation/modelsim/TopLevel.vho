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

-- DATE "04/10/2017 14:58:46"

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
SIGNAL \dut|data|divider|datap|comparator|LessThan0~5\ : std_logic;
SIGNAL \dut|data|divider|datap|comparator|LessThan0~10\ : std_logic;
SIGNAL \dut|data|divider|datap|comparator|LessThan0~15\ : std_logic;
SIGNAL \dut|data|divider|datap|comparator|LessThan0~20\ : std_logic;
SIGNAL \dut|data|divider|datap|comparator|LessThan0~25\ : std_logic;
SIGNAL \dut|data|divider|datap|comparator|LessThan0~30\ : std_logic;
SIGNAL \dut|data|divider|datap|comparator|LessThan0~35\ : std_logic;
SIGNAL \dut|data|divider|datap|comparator|LessThan0~40\ : std_logic;
SIGNAL \dut|data|divider|datap|comparator|LessThan0~45\ : std_logic;
SIGNAL \dut|data|divider|datap|comparator|LessThan0~50\ : std_logic;
SIGNAL \dut|data|divider|datap|comparator|LessThan0~55\ : std_logic;
SIGNAL \dut|data|divider|datap|comparator|LessThan0~60\ : std_logic;
SIGNAL \dut|data|divider|datap|comparator|LessThan0~65\ : std_logic;
SIGNAL \dut|data|divider|datap|comparator|LessThan0~70\ : std_logic;
SIGNAL \dut|data|divider|datap|comparator|LessThan0~75\ : std_logic;
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
SIGNAL \scan_instance|Out_Reg|L1[4]~0_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|L2~1_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[17]~0_combout\ : std_logic;
SIGNAL \dut|control|T0~1_combout\ : std_logic;
SIGNAL \dut|data|dr1|Dout[0]~3_combout\ : std_logic;
SIGNAL \dut|control|fsm_state~10_combout\ : std_logic;
SIGNAL \dut|data|divider|control|fsm_state~16_combout\ : std_logic;
SIGNAL \dut|data|divider|datap|dr2|Dout[13]~2_combout\ : std_logic;
SIGNAL \dut|data|divider|datap|dr5|Dout[0]~0_combout\ : std_logic;
SIGNAL \dut|data|divider|control|fsm_state~21_combout\ : std_logic;
SIGNAL \dut|data|divider|control|fsm_state~22_combout\ : std_logic;
SIGNAL \dut|data|divider|control|fsm_state.comparing~regout\ : std_logic;
SIGNAL \dut|data|dr1|Dout[15]~2_combout\ : std_logic;
SIGNAL \dut|data|divider|datap|subtract|add14|s~0_combout\ : std_logic;
SIGNAL \dut|data|divider|datap|subtract|add13|s~0_combout\ : std_logic;
SIGNAL \dut|data|divider|datap|subtract|add12|s~0_combout\ : std_logic;
SIGNAL \dut|data|divider|datap|subtract|add11|s~0_combout\ : std_logic;
SIGNAL \dut|data|divider|datap|subtract|add10|s~0_combout\ : std_logic;
SIGNAL \dut|data|divider|datap|subtract|add9|s~0_combout\ : std_logic;
SIGNAL \dut|data|divider|datap|subtract|add8|s~0_combout\ : std_logic;
SIGNAL \dut|data|divider|datap|subtract|add7|s~0_combout\ : std_logic;
SIGNAL \dut|data|divider|datap|subtract|add6|s~0_combout\ : std_logic;
SIGNAL \dut|data|divider|datap|subtract|add4|cout~0_combout\ : std_logic;
SIGNAL \dut|data|divider|datap|subtract|add5|s~0_combout\ : std_logic;
SIGNAL \dut|data|divider|datap|x1~combout\ : std_logic;
SIGNAL \dut|data|divider|datap|subtract|add5|cout~0_combout\ : std_logic;
SIGNAL \dut|data|divider|datap|subtract|add6|cout~0_combout\ : std_logic;
SIGNAL \dut|data|divider|datap|subtract|add7|cout~0_combout\ : std_logic;
SIGNAL \dut|data|divider|datap|subtract|add8|cout~0_combout\ : std_logic;
SIGNAL \dut|data|divider|datap|subtract|add9|cout~0_combout\ : std_logic;
SIGNAL \dut|data|divider|datap|subtract|add10|cout~0_combout\ : std_logic;
SIGNAL \dut|data|divider|datap|subtract|add11|cout~0_combout\ : std_logic;
SIGNAL \dut|data|divider|datap|subtract|add12|cout~0_combout\ : std_logic;
SIGNAL \dut|data|divider|datap|subtract|add13|cout~0_combout\ : std_logic;
SIGNAL \dut|data|divider|datap|DDREG_in[15]~16_combout\ : std_logic;
SIGNAL \dut|data|divider|datap|subtract|add2|s~0_combout\ : std_logic;
SIGNAL \dut|data|dr1|Dout[0]~0_combout\ : std_logic;
SIGNAL \dut|data|divider|datap|subtract|add1|s~0_combout\ : std_logic;
SIGNAL \dut|data|divider|datap|subtract|add1|cout~0_combout\ : std_logic;
SIGNAL \dut|data|divider|datap|comparator|LessThan0~77_cout0\ : std_logic;
SIGNAL \dut|data|divider|datap|comparator|LessThan0~77COUT1_81\ : std_logic;
SIGNAL \dut|data|divider|datap|comparator|LessThan0~72_cout0\ : std_logic;
SIGNAL \dut|data|divider|datap|comparator|LessThan0~72COUT1_82\ : std_logic;
SIGNAL \dut|data|divider|datap|comparator|LessThan0~67_cout\ : std_logic;
SIGNAL \dut|data|divider|datap|subtract|add3|s~0_combout\ : std_logic;
SIGNAL \dut|data|divider|datap|subtract|add2|cout~0_combout\ : std_logic;
SIGNAL \dut|data|divider|datap|comparator|LessThan0~62_cout0\ : std_logic;
SIGNAL \dut|data|divider|datap|comparator|LessThan0~62COUT1_83\ : std_logic;
SIGNAL \dut|data|divider|datap|comparator|LessThan0~57_cout0\ : std_logic;
SIGNAL \dut|data|divider|datap|comparator|LessThan0~57COUT1_84\ : std_logic;
SIGNAL \dut|data|divider|datap|comparator|LessThan0~52_cout0\ : std_logic;
SIGNAL \dut|data|divider|datap|comparator|LessThan0~52COUT1_85\ : std_logic;
SIGNAL \dut|data|divider|datap|comparator|LessThan0~47_cout0\ : std_logic;
SIGNAL \dut|data|divider|datap|comparator|LessThan0~47COUT1_86\ : std_logic;
SIGNAL \dut|data|divider|datap|comparator|LessThan0~42_cout\ : std_logic;
SIGNAL \dut|data|divider|datap|comparator|LessThan0~37_cout0\ : std_logic;
SIGNAL \dut|data|divider|datap|comparator|LessThan0~37COUT1_87\ : std_logic;
SIGNAL \dut|data|divider|datap|comparator|LessThan0~32_cout0\ : std_logic;
SIGNAL \dut|data|divider|datap|comparator|LessThan0~32COUT1_88\ : std_logic;
SIGNAL \dut|data|divider|datap|comparator|LessThan0~27_cout0\ : std_logic;
SIGNAL \dut|data|divider|datap|comparator|LessThan0~27COUT1_89\ : std_logic;
SIGNAL \dut|data|divider|datap|comparator|LessThan0~22_cout0\ : std_logic;
SIGNAL \dut|data|divider|datap|comparator|LessThan0~22COUT1_90\ : std_logic;
SIGNAL \dut|data|divider|datap|comparator|LessThan0~17_cout\ : std_logic;
SIGNAL \dut|data|divider|datap|comparator|LessThan0~12_cout0\ : std_logic;
SIGNAL \dut|data|divider|datap|comparator|LessThan0~12COUT1_91\ : std_logic;
SIGNAL \dut|data|divider|datap|comparator|LessThan0~7_cout0\ : std_logic;
SIGNAL \dut|data|divider|datap|comparator|LessThan0~7COUT1_92\ : std_logic;
SIGNAL \dut|data|divider|datap|comparator|LessThan0~0_combout\ : std_logic;
SIGNAL \dut|data|divider|control|fsm_state.subtracting~regout\ : std_logic;
SIGNAL \dut|data|divider|control|fsm_state.doing~regout\ : std_logic;
SIGNAL \dut|data|divider|control|fsm_state.donestate~regout\ : std_logic;
SIGNAL \dut|data|divider|control|fsm_state.phi~regout\ : std_logic;
SIGNAL \dut|data|divider|control|fsm_state.leftshift~regout\ : std_logic;
SIGNAL \dut|data|divider|datap|DRREG_in[14]~0_combout\ : std_logic;
SIGNAL \dut|data|divider|datap|dr2|Dout[15]~3_combout\ : std_logic;
SIGNAL \dut|data|divider|datap|dr2|Dout[15]~0_combout\ : std_logic;
SIGNAL \dut|data|divider|datap|subtract|add3|cout~0_combout\ : std_logic;
SIGNAL \dut|data|divider|datap|subtract|add4|s~0_combout\ : std_logic;
SIGNAL \dut|data|comparator|LessThan0~1_combout\ : std_logic;
SIGNAL \dut|data|comparator|LessThan0~3_combout\ : std_logic;
SIGNAL \dut|data|comparator|LessThan0~2_combout\ : std_logic;
SIGNAL \dut|data|comparator|LessThan0~0_combout\ : std_logic;
SIGNAL \dut|data|comparator|LessThan0~4_combout\ : std_logic;
SIGNAL \dut|control|fsm_state.input2~regout\ : std_logic;
SIGNAL \dut|control|T2~0_combout\ : std_logic;
SIGNAL \dut|data|x2~0_combout\ : std_logic;
SIGNAL \dut|control|fsm_state.doDivide~regout\ : std_logic;
SIGNAL \dut|control|fsm_state.checkRem~regout\ : std_logic;
SIGNAL \dut|data|x3~0_combout\ : std_logic;
SIGNAL \dut|control|fsm_state.donestate~regout\ : std_logic;
SIGNAL \dut|control|fsm_state.phi~regout\ : std_logic;
SIGNAL \dut|control|T0~0_combout\ : std_logic;
SIGNAL \dut|control|fsm_state.input1~regout\ : std_logic;
SIGNAL \dut|control|T1~0_combout\ : std_logic;
SIGNAL \dut|data|divider|datap|dr2|Dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dut|data|dr5|Dout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \scan_instance|In_Reg|L1\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \dut|data|dr2|Dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dut|data|divider|datap|dr5|Dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \scan_instance|In_Reg|L2\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \scan_instance|In_Reg|PO\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \dut|data|divider|datap|dr1|Dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dut|data|dr1|Dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \scan_instance|Out_Reg|L1\ : std_logic_vector(15 DOWNTO 0);

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

-- Location: LC_X3_Y7_N5
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

-- Location: LC_X4_Y6_N4
\scan_instance|current_state.s_update\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_update~regout\ = DFFEAS(((\TMS~combout\ & ((\scan_instance|current_state.s_shift~regout\) # (\scan_instance|current_state.s_capture~regout\)))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

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
	datac => \scan_instance|current_state.s_shift~regout\,
	datad => \scan_instance|current_state.s_capture~regout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_update~regout\);

-- Location: LC_X4_Y6_N8
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

-- Location: LC_X4_Y5_N8
\scan_instance|current_state.s_DR\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_DR~regout\ = DFFEAS(((\TMS~combout\ & ((\scan_instance|current_state.s_DR~regout\) # (!\scan_instance|current_state.s_idle~regout\)))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc0c",
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
	datad => \scan_instance|current_state.s_DR~regout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_DR~regout\);

-- Location: LC_X3_Y7_N9
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

-- Location: LC_X4_Y6_N3
\scan_instance|Out_Reg|L1[4]~0\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1[4]~0_combout\ = (\TRST~combout\) # ((!\TMS~combout\ & (!\scan_instance|current_state.s_update~regout\ & \scan_instance|current_state.s_idle~regout\)))

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
	datab => \TMS~combout\,
	datac => \scan_instance|current_state.s_update~regout\,
	datad => \scan_instance|current_state.s_idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1[4]~0_combout\);

-- Location: LC_X4_Y8_N2
\scan_instance|In_Reg|L1[19]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(19) = DFFEAS(((!\TRST~combout\ & (\TDI~combout\ & \scan_instance|Selector3~0\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[4]~0_combout\, , , , )

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
	datac => \TDI~combout\,
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(19));

-- Location: LC_X4_Y6_N7
\scan_instance|In_Reg|L1[18]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(18) = DFFEAS((\scan_instance|In_Reg|L1\(19) & (((!\TRST~combout\ & \scan_instance|Selector3~0\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[4]~0_combout\, , , , )

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
	dataa => \scan_instance|In_Reg|L1\(19),
	datac => \TRST~combout\,
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(18));

-- Location: LC_X4_Y8_N5
\scan_instance|In_Reg|L1[17]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(17) = DFFEAS(((\scan_instance|In_Reg|L1\(18) & (!\TRST~combout\ & \scan_instance|Selector3~0\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[4]~0_combout\, , , , )

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
	datab => \scan_instance|In_Reg|L1\(18),
	datac => \TRST~combout\,
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(17));

-- Location: LC_X5_Y7_N5
\scan_instance|In_Reg|L1[16]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(16) = DFFEAS((\scan_instance|In_Reg|L1\(17) & (!\TRST~combout\ & ((\scan_instance|Selector3~0\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2200",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|In_Reg|L1\(17),
	datab => \TRST~combout\,
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(16));

-- Location: LC_X5_Y6_N7
\scan_instance|In_Reg|L1[15]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(15) = DFFEAS(((!\TRST~combout\ & (\scan_instance|In_Reg|L1\(16) & \scan_instance|Selector3~0\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[4]~0_combout\, , , , )

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
	datac => \scan_instance|In_Reg|L1\(16),
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(15));

-- Location: LC_X3_Y7_N3
\scan_instance|In_Reg|L1[14]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(14) = DFFEAS(((!\TRST~combout\ & (\scan_instance|Selector3~0\ & \scan_instance|In_Reg|L1\(15)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[4]~0_combout\, , , , )

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
	datad => \scan_instance|In_Reg|L1\(15),
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(14));

-- Location: LC_X3_Y7_N4
\scan_instance|In_Reg|L1[13]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(13) = DFFEAS(((!\TRST~combout\ & (\scan_instance|Selector3~0\ & \scan_instance|In_Reg|L1\(14)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[4]~0_combout\, , , , )

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
	datad => \scan_instance|In_Reg|L1\(14),
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(13));

-- Location: LC_X3_Y7_N6
\scan_instance|In_Reg|L1[12]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(12) = DFFEAS(((!\TRST~combout\ & (\scan_instance|Selector3~0\ & \scan_instance|In_Reg|L1\(13)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[4]~0_combout\, , , , )

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
	datad => \scan_instance|In_Reg|L1\(13),
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(12));

-- Location: LC_X5_Y7_N7
\scan_instance|In_Reg|L1[11]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(11) = DFFEAS(((!\TRST~combout\ & (\scan_instance|In_Reg|L1\(12) & \scan_instance|Selector3~0\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[4]~0_combout\, , , , )

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
	datac => \scan_instance|In_Reg|L1\(12),
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(11));

-- Location: LC_X4_Y8_N6
\scan_instance|In_Reg|L1[10]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(10) = DFFEAS(((!\TRST~combout\ & (\scan_instance|In_Reg|L1\(11) & \scan_instance|Selector3~0\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[4]~0_combout\, , , , )

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
	datac => \scan_instance|In_Reg|L1\(11),
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(10));

-- Location: LC_X4_Y6_N2
\scan_instance|In_Reg|L1[9]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(9) = DFFEAS((!\TRST~combout\ & (\scan_instance|In_Reg|L1\(10) & ((\scan_instance|Selector3~0\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4400",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L1\(10),
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(9));

-- Location: LC_X4_Y6_N6
\scan_instance|In_Reg|L1[8]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(8) = DFFEAS(((\scan_instance|In_Reg|L1\(9) & (!\TRST~combout\ & \scan_instance|Selector3~0\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[4]~0_combout\, , , , )

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
	datab => \scan_instance|In_Reg|L1\(9),
	datac => \TRST~combout\,
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(8));

-- Location: LC_X4_Y6_N1
\scan_instance|In_Reg|L1[7]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(7) = DFFEAS((\scan_instance|In_Reg|L1\(8) & (((!\TRST~combout\ & \scan_instance|Selector3~0\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[4]~0_combout\, , , , )

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
	ena => \scan_instance|Out_Reg|L1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(7));

-- Location: LC_X4_Y6_N9
\scan_instance|In_Reg|L1[6]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(6) = DFFEAS(((!\TRST~combout\ & (\scan_instance|In_Reg|L1\(7) & \scan_instance|Selector3~0\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[4]~0_combout\, , , , )

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
	datac => \scan_instance|In_Reg|L1\(7),
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(6));

-- Location: LC_X3_Y6_N5
\scan_instance|In_Reg|L1[5]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(5) = DFFEAS((!\TRST~combout\ & (((\scan_instance|In_Reg|L1\(6) & \scan_instance|Selector3~0\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[4]~0_combout\, , , , )

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
	datac => \scan_instance|In_Reg|L1\(6),
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(5));

-- Location: LC_X3_Y7_N8
\scan_instance|In_Reg|L1[4]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(4) = DFFEAS((\scan_instance|Selector3~0\ & (((!\TRST~combout\ & \scan_instance|In_Reg|L1\(5))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[4]~0_combout\, , , , )

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
	datad => \scan_instance|In_Reg|L1\(5),
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(4));

-- Location: LC_X5_Y6_N5
\scan_instance|In_Reg|L1[3]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(3) = DFFEAS(((!\TRST~combout\ & (\scan_instance|In_Reg|L1\(4) & \scan_instance|Selector3~0\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[4]~0_combout\, , , , )

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
	datac => \scan_instance|In_Reg|L1\(4),
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(3));

-- Location: LC_X3_Y7_N1
\scan_instance|In_Reg|L1[2]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(2) = DFFEAS(((!\TRST~combout\ & (\scan_instance|Selector3~0\ & \scan_instance|In_Reg|L1\(3)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[4]~0_combout\, , , , )

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
	ena => \scan_instance|Out_Reg|L1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(2));

-- Location: LC_X4_Y6_N0
\scan_instance|In_Reg|L1[1]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(1) = DFFEAS(((!\TRST~combout\ & (\scan_instance|In_Reg|L1\(2) & \scan_instance|Selector3~0\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[4]~0_combout\, , , , )

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
	datac => \scan_instance|In_Reg|L1\(2),
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(1));

-- Location: LC_X4_Y6_N5
\scan_instance|In_Reg|L1[0]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(0) = DFFEAS(((\scan_instance|In_Reg|L1\(1) & (!\TRST~combout\ & \scan_instance|Selector3~0\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[4]~0_combout\, , , , )

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
	datab => \scan_instance|In_Reg|L1\(1),
	datac => \TRST~combout\,
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(0));

-- Location: LC_X3_Y7_N2
\scan_instance|In_Reg|L2~1\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2~1_combout\ = (\TRST~combout\) # ((\TMS~combout\ & ((\scan_instance|current_state.s_shift~regout\) # (\scan_instance|current_state.s_capture~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \TMS~combout\,
	datac => \scan_instance|current_state.s_shift~regout\,
	datad => \scan_instance|current_state.s_capture~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|L2~1_combout\);

-- Location: LC_X7_Y7_N0
\scan_instance|In_Reg|L2[16]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(16) = DFFEAS(((!\TRST~combout\ & ((\scan_instance|In_Reg|L1\(16))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

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
	datad => \scan_instance|In_Reg|L1\(16),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(16));

-- Location: LC_X12_Y3_N2
\scan_instance|In_Reg|PO[16]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO\(16) = LCELL(((!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(16))))))

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
	datad => \scan_instance|In_Reg|L2\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO\(16));

-- Location: LC_X2_Y6_N4
\scan_instance|In_Reg|L2[18]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(18) = DFFEAS((!\TRST~combout\ & (((\scan_instance|In_Reg|L1\(18))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

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
	datad => \scan_instance|In_Reg|L1\(18),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(18));

-- Location: LC_X5_Y7_N6
\scan_instance|In_Reg|L2[17]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(17) = DFFEAS((\scan_instance|In_Reg|L1\(17) & (!\TRST~combout\)), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2222",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|In_Reg|L1\(17),
	datab => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(17));

-- Location: LC_X5_Y7_N9
\scan_instance|In_Reg|PO[17]~0\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[17]~0_combout\ = (\scan_instance|In_Reg|L2\(17) & (((!\TRST~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(17),
	datac => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[17]~0_combout\);

-- Location: LC_X4_Y8_N4
\scan_instance|In_Reg|L2[19]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(19) = DFFEAS(((\scan_instance|In_Reg|L1\(19) & (!\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

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
	datab => \scan_instance|In_Reg|L1\(19),
	datac => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(19));

-- Location: LC_X6_Y8_N8
\dut|control|T0~1\ : maxv_lcell
-- Equation(s):
-- \dut|control|T0~1_combout\ = ((!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(19)))))

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
	datad => \scan_instance|In_Reg|L2\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|control|T0~1_combout\);

-- Location: LC_X6_Y8_N2
\dut|data|dr1|Dout[0]~3\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr1|Dout[0]~3_combout\ = ((!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(18)))))

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
	datad => \scan_instance|In_Reg|L2\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|dr1|Dout[0]~3_combout\);

-- Location: LC_X6_Y8_N3
\dut|control|fsm_state~10\ : maxv_lcell
-- Equation(s):
-- \dut|control|fsm_state~10_combout\ = (\dut|data|dr1|Dout[0]~3_combout\ & (((\dut|control|fsm_state.input1~regout\)))) # (!\dut|data|dr1|Dout[0]~3_combout\ & (\dut|control|fsm_state.input2~regout\ & ((!\dut|data|dr5|Dout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|data|dr1|Dout[0]~3_combout\,
	datab => \dut|control|fsm_state.input2~regout\,
	datac => \dut|control|fsm_state.input1~regout\,
	datad => \dut|data|dr5|Dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|control|fsm_state~10_combout\);

-- Location: LC_X5_Y10_N1
\dut|data|divider|control|fsm_state~16\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|control|fsm_state~16_combout\ = (\dut|control|fsm_state.doDivide~regout\ & (((!\dut|data|divider|control|fsm_state.phi~regout\))))

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
	dataa => \dut|control|fsm_state.doDivide~regout\,
	datad => \dut|data|divider|control|fsm_state.phi~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|control|fsm_state~16_combout\);

-- Location: LC_X6_Y10_N7
\dut|data|divider|datap|dr2|Dout[13]~2\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr2|Dout[13]~2_combout\ = (\dut|data|divider|datap|dr2|Dout[15]~0_combout\) # ((\dut|data|divider|control|fsm_state~16_combout\) # ((!\dut|data|divider|datap|dr5|Dout\(0) & \dut|data|divider|control|fsm_state.doing~regout\)))

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
	dataa => \dut|data|divider|datap|dr2|Dout[15]~0_combout\,
	datab => \dut|data|divider|datap|dr5|Dout\(0),
	datac => \dut|data|divider|control|fsm_state~16_combout\,
	datad => \dut|data|divider|control|fsm_state.doing~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|dr2|Dout[13]~2_combout\);

-- Location: LC_X5_Y9_N2
\dut|data|divider|datap|dr5|Dout[15]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr5|Dout\(15) = DFFEAS((!\dut|data|divider|datap|dr2|Dout\(15) & (((\dut|data|divider|datap|dr5|Dout\(14) & \dut|data|divider|control|fsm_state.leftshift~regout\)))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , 
-- \dut|data|divider|datap|dr2|Dout[13]~2_combout\, , , , )

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
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|datap|dr2|Dout\(15),
	datac => \dut|data|divider|datap|dr5|Dout\(14),
	datad => \dut|data|divider|control|fsm_state.leftshift~regout\,
	aclr => GND,
	ena => \dut|data|divider|datap|dr2|Dout[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr5|Dout\(15));

-- Location: LC_X5_Y9_N3
\dut|data|divider|datap|dr5|Dout[14]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr5|Dout\(14) = DFFEAS((!\dut|data|divider|control|fsm_state~16_combout\ & ((\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & (\dut|data|divider|datap|dr5|Dout\(13))) # (!\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & 
-- ((\dut|data|divider|datap|dr5|Dout\(15)))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|dr2|Dout[13]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2230",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|datap|dr5|Dout\(13),
	datab => \dut|data|divider|control|fsm_state~16_combout\,
	datac => \dut|data|divider|datap|dr5|Dout\(15),
	datad => \dut|data|divider|datap|dr2|Dout[15]~0_combout\,
	aclr => GND,
	ena => \dut|data|divider|datap|dr2|Dout[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr5|Dout\(14));

-- Location: LC_X5_Y9_N6
\dut|data|divider|datap|dr5|Dout[13]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr5|Dout\(13) = DFFEAS((!\dut|data|divider|control|fsm_state~16_combout\ & ((\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & (\dut|data|divider|datap|dr5|Dout\(12))) # (!\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & 
-- ((\dut|data|divider|datap|dr5|Dout\(14)))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|dr2|Dout[13]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2230",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|datap|dr5|Dout\(12),
	datab => \dut|data|divider|control|fsm_state~16_combout\,
	datac => \dut|data|divider|datap|dr5|Dout\(14),
	datad => \dut|data|divider|datap|dr2|Dout[15]~0_combout\,
	aclr => GND,
	ena => \dut|data|divider|datap|dr2|Dout[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr5|Dout\(13));

-- Location: LC_X5_Y9_N4
\dut|data|divider|datap|dr5|Dout[12]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr5|Dout\(12) = DFFEAS((!\dut|data|divider|control|fsm_state~16_combout\ & ((\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & ((\dut|data|divider|datap|dr5|Dout\(11)))) # (!\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & 
-- (\dut|data|divider|datap|dr5|Dout\(13))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|dr2|Dout[13]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3202",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|datap|dr5|Dout\(13),
	datab => \dut|data|divider|control|fsm_state~16_combout\,
	datac => \dut|data|divider|datap|dr2|Dout[15]~0_combout\,
	datad => \dut|data|divider|datap|dr5|Dout\(11),
	aclr => GND,
	ena => \dut|data|divider|datap|dr2|Dout[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr5|Dout\(12));

-- Location: LC_X6_Y9_N1
\dut|data|divider|datap|dr5|Dout[11]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr5|Dout\(11) = DFFEAS((!\dut|data|divider|control|fsm_state~16_combout\ & ((\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & (\dut|data|divider|datap|dr5|Dout\(10))) # (!\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & 
-- ((\dut|data|divider|datap|dr5|Dout\(12)))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|dr2|Dout[13]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|datap|dr5|Dout\(10),
	datab => \dut|data|divider|datap|dr5|Dout\(12),
	datac => \dut|data|divider|control|fsm_state~16_combout\,
	datad => \dut|data|divider|datap|dr2|Dout[15]~0_combout\,
	aclr => GND,
	ena => \dut|data|divider|datap|dr2|Dout[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr5|Dout\(11));

-- Location: LC_X6_Y9_N6
\dut|data|divider|datap|dr5|Dout[10]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr5|Dout\(10) = DFFEAS((!\dut|data|divider|control|fsm_state~16_combout\ & ((\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & (\dut|data|divider|datap|dr5|Dout\(9))) # (!\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & 
-- ((\dut|data|divider|datap|dr5|Dout\(11)))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|dr2|Dout[13]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2320",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|datap|dr5|Dout\(9),
	datab => \dut|data|divider|control|fsm_state~16_combout\,
	datac => \dut|data|divider|datap|dr2|Dout[15]~0_combout\,
	datad => \dut|data|divider|datap|dr5|Dout\(11),
	aclr => GND,
	ena => \dut|data|divider|datap|dr2|Dout[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr5|Dout\(10));

-- Location: LC_X6_Y9_N3
\dut|data|divider|datap|dr5|Dout[9]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr5|Dout\(9) = DFFEAS((!\dut|data|divider|control|fsm_state~16_combout\ & ((\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & ((\dut|data|divider|datap|dr5|Dout\(8)))) # (!\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & 
-- (\dut|data|divider|datap|dr5|Dout\(10))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|dr2|Dout[13]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3022",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|datap|dr5|Dout\(10),
	datab => \dut|data|divider|control|fsm_state~16_combout\,
	datac => \dut|data|divider|datap|dr5|Dout\(8),
	datad => \dut|data|divider|datap|dr2|Dout[15]~0_combout\,
	aclr => GND,
	ena => \dut|data|divider|datap|dr2|Dout[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr5|Dout\(9));

-- Location: LC_X6_Y9_N4
\dut|data|divider|datap|dr5|Dout[8]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr5|Dout\(8) = DFFEAS((!\dut|data|divider|control|fsm_state~16_combout\ & ((\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & (\dut|data|divider|datap|dr5|Dout\(7))) # (!\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & 
-- ((\dut|data|divider|datap|dr5|Dout\(9)))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|dr2|Dout[13]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2320",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|datap|dr5|Dout\(7),
	datab => \dut|data|divider|control|fsm_state~16_combout\,
	datac => \dut|data|divider|datap|dr2|Dout[15]~0_combout\,
	datad => \dut|data|divider|datap|dr5|Dout\(9),
	aclr => GND,
	ena => \dut|data|divider|datap|dr2|Dout[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr5|Dout\(8));

-- Location: LC_X6_Y9_N8
\dut|data|divider|datap|dr5|Dout[7]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr5|Dout\(7) = DFFEAS((!\dut|data|divider|control|fsm_state~16_combout\ & ((\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & ((\dut|data|divider|datap|dr5|Dout\(6)))) # (!\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & 
-- (\dut|data|divider|datap|dr5|Dout\(8))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|dr2|Dout[13]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3202",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|datap|dr5|Dout\(8),
	datab => \dut|data|divider|control|fsm_state~16_combout\,
	datac => \dut|data|divider|datap|dr2|Dout[15]~0_combout\,
	datad => \dut|data|divider|datap|dr5|Dout\(6),
	aclr => GND,
	ena => \dut|data|divider|datap|dr2|Dout[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr5|Dout\(7));

-- Location: LC_X6_Y9_N9
\dut|data|divider|datap|dr5|Dout[6]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr5|Dout\(6) = DFFEAS((!\dut|data|divider|control|fsm_state~16_combout\ & ((\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & (\dut|data|divider|datap|dr5|Dout\(5))) # (!\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & 
-- ((\dut|data|divider|datap|dr5|Dout\(7)))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|dr2|Dout[13]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3120",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|datap|dr2|Dout[15]~0_combout\,
	datab => \dut|data|divider|control|fsm_state~16_combout\,
	datac => \dut|data|divider|datap|dr5|Dout\(5),
	datad => \dut|data|divider|datap|dr5|Dout\(7),
	aclr => GND,
	ena => \dut|data|divider|datap|dr2|Dout[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr5|Dout\(6));

-- Location: LC_X6_Y9_N7
\dut|data|divider|datap|dr5|Dout[5]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr5|Dout\(5) = DFFEAS((!\dut|data|divider|control|fsm_state~16_combout\ & ((\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & ((\dut|data|divider|datap|dr5|Dout\(4)))) # (!\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & 
-- (\dut|data|divider|datap|dr5|Dout\(6))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|dr2|Dout[13]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e04",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|datap|dr2|Dout[15]~0_combout\,
	datab => \dut|data|divider|datap|dr5|Dout\(6),
	datac => \dut|data|divider|control|fsm_state~16_combout\,
	datad => \dut|data|divider|datap|dr5|Dout\(4),
	aclr => GND,
	ena => \dut|data|divider|datap|dr2|Dout[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr5|Dout\(5));

-- Location: LC_X6_Y9_N2
\dut|data|divider|datap|dr5|Dout[4]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr5|Dout\(4) = DFFEAS((!\dut|data|divider|control|fsm_state~16_combout\ & ((\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & ((\dut|data|divider|datap|dr5|Dout\(3)))) # (!\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & 
-- (\dut|data|divider|datap|dr5|Dout\(5))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|dr2|Dout[13]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5044",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|control|fsm_state~16_combout\,
	datab => \dut|data|divider|datap|dr5|Dout\(5),
	datac => \dut|data|divider|datap|dr5|Dout\(3),
	datad => \dut|data|divider|datap|dr2|Dout[15]~0_combout\,
	aclr => GND,
	ena => \dut|data|divider|datap|dr2|Dout[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr5|Dout\(4));

-- Location: LC_X6_Y9_N0
\dut|data|divider|datap|dr5|Dout[3]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr5|Dout\(3) = DFFEAS((!\dut|data|divider|control|fsm_state~16_combout\ & ((\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & (\dut|data|divider|datap|dr5|Dout\(2))) # (!\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & 
-- ((\dut|data|divider|datap|dr5|Dout\(4)))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|dr2|Dout[13]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|datap|dr5|Dout\(2),
	datab => \dut|data|divider|datap|dr5|Dout\(4),
	datac => \dut|data|divider|control|fsm_state~16_combout\,
	datad => \dut|data|divider|datap|dr2|Dout[15]~0_combout\,
	aclr => GND,
	ena => \dut|data|divider|datap|dr2|Dout[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr5|Dout\(3));

-- Location: LC_X6_Y9_N5
\dut|data|divider|datap|dr5|Dout[2]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr5|Dout\(2) = DFFEAS((!\dut|data|divider|control|fsm_state~16_combout\ & ((\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & (\dut|data|divider|datap|dr5|Dout\(1))) # (!\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & 
-- ((\dut|data|divider|datap|dr5|Dout\(3)))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|dr2|Dout[13]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4450",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|control|fsm_state~16_combout\,
	datab => \dut|data|divider|datap|dr5|Dout\(1),
	datac => \dut|data|divider|datap|dr5|Dout\(3),
	datad => \dut|data|divider|datap|dr2|Dout[15]~0_combout\,
	aclr => GND,
	ena => \dut|data|divider|datap|dr2|Dout[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr5|Dout\(2));

-- Location: LC_X6_Y10_N5
\dut|data|divider|datap|dr5|Dout[1]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr5|Dout\(1) = DFFEAS((!\dut|data|divider|control|fsm_state~16_combout\ & ((\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & ((\dut|data|divider|datap|dr5|Dout\(0)))) # (!\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & 
-- (\dut|data|divider|datap|dr5|Dout\(2))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|dr2|Dout[13]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e04",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|datap|dr2|Dout[15]~0_combout\,
	datab => \dut|data|divider|datap|dr5|Dout\(2),
	datac => \dut|data|divider|control|fsm_state~16_combout\,
	datad => \dut|data|divider|datap|dr5|Dout\(0),
	aclr => GND,
	ena => \dut|data|divider|datap|dr2|Dout[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr5|Dout\(1));

-- Location: LC_X6_Y10_N1
\dut|data|divider|datap|dr5|Dout[0]~0\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr5|Dout[0]~0_combout\ = (!\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & ((\dut|data|divider|datap|dr5|Dout\(0)) # ((\dut|data|divider|datap|dr5|Dout\(1) & \dut|data|divider|control|fsm_state.doing~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5444",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|data|divider|datap|dr2|Dout[15]~0_combout\,
	datab => \dut|data|divider|datap|dr5|Dout\(0),
	datac => \dut|data|divider|datap|dr5|Dout\(1),
	datad => \dut|data|divider|control|fsm_state.doing~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|dr5|Dout[0]~0_combout\);

-- Location: LC_X6_Y10_N2
\dut|data|divider|datap|dr5|Dout[0]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr5|Dout\(0) = DFFEAS((\dut|data|divider|datap|dr2|Dout[13]~2_combout\ & ((\dut|data|divider|control|fsm_state~16_combout\) # ((\dut|data|divider|datap|dr5|Dout[0]~0_combout\)))) # (!\dut|data|divider|datap|dr2|Dout[13]~2_combout\ 
-- & (((\dut|data|divider|datap|dr5|Dout\(0))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcac",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|control|fsm_state~16_combout\,
	datab => \dut|data|divider|datap|dr5|Dout\(0),
	datac => \dut|data|divider|datap|dr2|Dout[13]~2_combout\,
	datad => \dut|data|divider|datap|dr5|Dout[0]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr5|Dout\(0));

-- Location: LC_X5_Y10_N9
\dut|data|divider|control|fsm_state~21\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|control|fsm_state~21_combout\ = (\dut|data|divider|control|fsm_state.leftshift~regout\ & (!\dut|data|divider|control|fsm_state.comparing~regout\ & (\dut|data|divider|datap|dr2|Dout\(15) & 
-- !\dut|data|divider|control|fsm_state.subtracting~regout\)))

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
	dataa => \dut|data|divider|control|fsm_state.leftshift~regout\,
	datab => \dut|data|divider|control|fsm_state.comparing~regout\,
	datac => \dut|data|divider|datap|dr2|Dout\(15),
	datad => \dut|data|divider|control|fsm_state.subtracting~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|control|fsm_state~21_combout\);

-- Location: LC_X6_Y10_N3
\dut|data|divider|control|fsm_state~22\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|control|fsm_state~22_combout\ = (\dut|data|divider|control|fsm_state.doing~regout\ & (((!\dut|data|divider|datap|dr5|Dout\(0))))) # (!\dut|data|divider|control|fsm_state.doing~regout\ & 
-- (!\dut|data|divider|control|fsm_state.donestate~regout\ & ((\dut|data|divider|control|fsm_state~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3350",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|data|divider|control|fsm_state.donestate~regout\,
	datab => \dut|data|divider|datap|dr5|Dout\(0),
	datac => \dut|data|divider|control|fsm_state~21_combout\,
	datad => \dut|data|divider|control|fsm_state.doing~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|control|fsm_state~22_combout\);

-- Location: LC_X6_Y10_N4
\dut|data|divider|control|fsm_state.comparing\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|control|fsm_state.comparing~regout\ = DFFEAS(((\dut|data|divider|control|fsm_state~22_combout\ & ((\TRST~combout\) # (!\scan_instance|In_Reg|L2\(17))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , , , , , )

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
	clk => \scan_instance|In_Reg|PO\(16),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(17),
	datad => \dut|data|divider|control|fsm_state~22_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|control|fsm_state.comparing~regout\);

-- Location: LC_X2_Y7_N9
\scan_instance|In_Reg|L2[14]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(14) = DFFEAS((!\TRST~combout\ & (((\scan_instance|In_Reg|L1\(14))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

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
	datad => \scan_instance|In_Reg|L1\(14),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(14));

-- Location: LC_X1_Y6_N3
\dut|data|dr2|Dout[14]\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr2|Dout\(14) = DFFEAS((\dut|control|T2~0_combout\ & (((!\TRST~combout\ & \scan_instance|In_Reg|L2\(14))))) # (!\dut|control|T2~0_combout\ & (\dut|data|divider|datap|dr1|Dout\(14))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , 
-- \dut|data|x2~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4e44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|control|T2~0_combout\,
	datab => \dut|data|divider|datap|dr1|Dout\(14),
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(14),
	aclr => GND,
	ena => \dut|data|x2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|dr2|Dout\(14));

-- Location: LC_X2_Y6_N1
\dut|data|dr1|Dout[15]~2\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr1|Dout[15]~2_combout\ = (\dut|control|fsm_state.checkRem~regout\) # ((\scan_instance|In_Reg|L2\(18) & (!\TRST~combout\ & \dut|control|fsm_state.input1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cecc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(18),
	datab => \dut|control|fsm_state.checkRem~regout\,
	datac => \TRST~combout\,
	datad => \dut|control|fsm_state.input1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|dr1|Dout[15]~2_combout\);

-- Location: LC_X4_Y7_N8
\dut|data|dr1|Dout[14]\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr1|Dout\(14) = DFFEAS((\dut|control|T1~0_combout\ & (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(14))))) # (!\dut|control|T1~0_combout\ & (((\dut|data|dr2|Dout\(14))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , 
-- \dut|data|dr1|Dout[15]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7250",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|control|T1~0_combout\,
	datab => \TRST~combout\,
	datac => \dut|data|dr2|Dout\(14),
	datad => \scan_instance|In_Reg|L2\(14),
	aclr => GND,
	ena => \dut|data|dr1|Dout[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|dr1|Dout\(14));

-- Location: LC_X2_Y10_N7
\dut|data|divider|datap|subtract|add14|s~0\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|subtract|add14|s~0_combout\ = ((\dut|data|divider|datap|dr2|Dout\(14) $ (\dut|data|divider|datap|dr1|Dout\(14))))

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
	datac => \dut|data|divider|datap|dr2|Dout\(14),
	datad => \dut|data|divider|datap|dr1|Dout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|subtract|add14|s~0_combout\);

-- Location: LC_X5_Y7_N2
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

-- Location: LC_X1_Y6_N8
\dut|data|dr2|Dout[13]\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr2|Dout\(13) = DFFEAS((\dut|control|T2~0_combout\ & (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(13)))) # (!\dut|control|T2~0_combout\ & (((\dut|data|divider|datap|dr1|Dout\(13))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , 
-- \dut|data|x2~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7520",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|control|T2~0_combout\,
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(13),
	datad => \dut|data|divider|datap|dr1|Dout\(13),
	aclr => GND,
	ena => \dut|data|x2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|dr2|Dout\(13));

-- Location: LC_X4_Y7_N3
\dut|data|dr1|Dout[13]\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr1|Dout\(13) = DFFEAS((\dut|control|T1~0_combout\ & (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(13)))) # (!\dut|control|T1~0_combout\ & (((\dut|data|dr2|Dout\(13))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , 
-- \dut|data|dr1|Dout[15]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7520",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|control|T1~0_combout\,
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(13),
	datad => \dut|data|dr2|Dout\(13),
	aclr => GND,
	ena => \dut|data|dr1|Dout[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|dr1|Dout\(13));

-- Location: LC_X4_Y9_N8
\dut|data|divider|datap|subtract|add13|s~0\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|subtract|add13|s~0_combout\ = ((\dut|data|divider|datap|dr1|Dout\(13) $ (\dut|data|divider|datap|dr2|Dout\(13))))

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
	datac => \dut|data|divider|datap|dr1|Dout\(13),
	datad => \dut|data|divider|datap|dr2|Dout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|subtract|add13|s~0_combout\);

-- Location: LC_X1_Y10_N0
\dut|data|divider|datap|subtract|add12|s~0\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|subtract|add12|s~0_combout\ = ((\dut|data|divider|datap|dr2|Dout\(12) $ (\dut|data|divider|datap|dr1|Dout\(12))))

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
	datac => \dut|data|divider|datap|dr2|Dout\(12),
	datad => \dut|data|divider|datap|dr1|Dout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|subtract|add12|s~0_combout\);

-- Location: LC_X5_Y7_N3
\scan_instance|In_Reg|L2[12]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(12) = DFFEAS(((!\TRST~combout\ & (\scan_instance|In_Reg|L1\(12)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L1\(12),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(12));

-- Location: LC_X1_Y6_N9
\dut|data|dr2|Dout[12]\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr2|Dout\(12) = DFFEAS((\dut|control|T2~0_combout\ & (((!\TRST~combout\ & \scan_instance|In_Reg|L2\(12))))) # (!\dut|control|T2~0_combout\ & (\dut|data|divider|datap|dr1|Dout\(12))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , 
-- \dut|data|x2~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4e44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|control|T2~0_combout\,
	datab => \dut|data|divider|datap|dr1|Dout\(12),
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(12),
	aclr => GND,
	ena => \dut|data|x2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|dr2|Dout\(12));

-- Location: LC_X4_Y7_N1
\dut|data|dr1|Dout[12]\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr1|Dout\(12) = DFFEAS((\dut|control|T1~0_combout\ & (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(12)))) # (!\dut|control|T1~0_combout\ & (((\dut|data|dr2|Dout\(12))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , 
-- \dut|data|dr1|Dout[15]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4f40",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(12),
	datac => \dut|control|T1~0_combout\,
	datad => \dut|data|dr2|Dout\(12),
	aclr => GND,
	ena => \dut|data|dr1|Dout[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|dr1|Dout\(12));

-- Location: LC_X2_Y7_N1
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

-- Location: LC_X1_Y6_N7
\dut|data|dr2|Dout[11]\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr2|Dout\(11) = DFFEAS((\dut|control|T2~0_combout\ & (((!\TRST~combout\ & \scan_instance|In_Reg|L2\(11))))) # (!\dut|control|T2~0_combout\ & (\dut|data|divider|datap|dr1|Dout\(11))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , 
-- \dut|data|x2~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4e44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|control|T2~0_combout\,
	datab => \dut|data|divider|datap|dr1|Dout\(11),
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(11),
	aclr => GND,
	ena => \dut|data|x2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|dr2|Dout\(11));

-- Location: LC_X2_Y7_N3
\dut|data|dr1|Dout[11]\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr1|Dout\(11) = DFFEAS((\dut|control|T1~0_combout\ & (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(11)))) # (!\dut|control|T1~0_combout\ & (((\dut|data|dr2|Dout\(11))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , 
-- \dut|data|dr1|Dout[15]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7520",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|control|T1~0_combout\,
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(11),
	datad => \dut|data|dr2|Dout\(11),
	aclr => GND,
	ena => \dut|data|dr1|Dout[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|dr1|Dout\(11));

-- Location: LC_X1_Y10_N2
\dut|data|divider|datap|subtract|add11|s~0\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|subtract|add11|s~0_combout\ = ((\dut|data|divider|datap|dr2|Dout\(11) $ (\dut|data|divider|datap|dr1|Dout\(11))))

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
	datac => \dut|data|divider|datap|dr2|Dout\(11),
	datad => \dut|data|divider|datap|dr1|Dout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|subtract|add11|s~0_combout\);

-- Location: LC_X1_Y10_N6
\dut|data|divider|datap|subtract|add10|s~0\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|subtract|add10|s~0_combout\ = ((\dut|data|divider|datap|dr1|Dout\(10) $ (\dut|data|divider|datap|dr2|Dout\(10))))

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
	datac => \dut|data|divider|datap|dr1|Dout\(10),
	datad => \dut|data|divider|datap|dr2|Dout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|subtract|add10|s~0_combout\);

-- Location: LC_X2_Y7_N6
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

-- Location: LC_X2_Y8_N3
\dut|data|dr2|Dout[10]\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr2|Dout\(10) = DFFEAS((\dut|control|T2~0_combout\ & (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(10))))) # (!\dut|control|T2~0_combout\ & (((\dut|data|divider|datap|dr1|Dout\(10))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , 
-- \dut|data|x2~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \TRST~combout\,
	datab => \dut|data|divider|datap|dr1|Dout\(10),
	datac => \scan_instance|In_Reg|L2\(10),
	datad => \dut|control|T2~0_combout\,
	aclr => GND,
	ena => \dut|data|x2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|dr2|Dout\(10));

-- Location: LC_X2_Y8_N0
\dut|data|dr1|Dout[10]\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr1|Dout\(10) = DFFEAS((\dut|control|T1~0_combout\ & (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(10)))) # (!\dut|control|T1~0_combout\ & (((\dut|data|dr2|Dout\(10))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , 
-- \dut|data|dr1|Dout[15]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7340",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \TRST~combout\,
	datab => \dut|control|T1~0_combout\,
	datac => \scan_instance|In_Reg|L2\(10),
	datad => \dut|data|dr2|Dout\(10),
	aclr => GND,
	ena => \dut|data|dr1|Dout[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|dr1|Dout\(10));

-- Location: LC_X1_Y10_N4
\dut|data|divider|datap|subtract|add9|s~0\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|subtract|add9|s~0_combout\ = \dut|data|divider|datap|dr1|Dout\(9) $ ((((\dut|data|divider|datap|dr2|Dout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|data|divider|datap|dr1|Dout\(9),
	datac => \dut|data|divider|datap|dr2|Dout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|subtract|add9|s~0_combout\);

-- Location: LC_X2_Y7_N2
\scan_instance|In_Reg|L2[9]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(9) = DFFEAS((!\TRST~combout\ & (((\scan_instance|In_Reg|L1\(9))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datac => \scan_instance|In_Reg|L1\(9),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(9));

-- Location: LC_X1_Y6_N0
\dut|data|dr2|Dout[9]\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr2|Dout\(9) = DFFEAS((\dut|control|T2~0_combout\ & (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(9))))) # (!\dut|control|T2~0_combout\ & (((\dut|data|divider|datap|dr1|Dout\(9))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , 
-- \dut|data|x2~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7250",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|control|T2~0_combout\,
	datab => \TRST~combout\,
	datac => \dut|data|divider|datap|dr1|Dout\(9),
	datad => \scan_instance|In_Reg|L2\(9),
	aclr => GND,
	ena => \dut|data|x2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|dr2|Dout\(9));

-- Location: LC_X2_Y6_N6
\dut|data|dr1|Dout[9]\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr1|Dout\(9) = DFFEAS((\dut|control|T1~0_combout\ & (\scan_instance|In_Reg|L2\(9) & (!\TRST~combout\))) # (!\dut|control|T1~0_combout\ & (((\dut|data|dr2|Dout\(9))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , 
-- \dut|data|dr1|Dout[15]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5d08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|control|T1~0_combout\,
	datab => \scan_instance|In_Reg|L2\(9),
	datac => \TRST~combout\,
	datad => \dut|data|dr2|Dout\(9),
	aclr => GND,
	ena => \dut|data|dr1|Dout[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|dr1|Dout\(9));

-- Location: LC_X2_Y7_N4
\scan_instance|In_Reg|L2[8]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(8) = DFFEAS(((\scan_instance|In_Reg|L1\(8) & (!\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

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
	datab => \scan_instance|In_Reg|L1\(8),
	datac => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(8));

-- Location: LC_X1_Y6_N1
\dut|data|dr2|Dout[8]\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr2|Dout\(8) = DFFEAS((\dut|control|T2~0_combout\ & (\scan_instance|In_Reg|L2\(8) & (!\TRST~combout\))) # (!\dut|control|T2~0_combout\ & (((\dut|data|divider|datap|dr1|Dout\(8))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , 
-- \dut|data|x2~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2f20",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \scan_instance|In_Reg|L2\(8),
	datab => \TRST~combout\,
	datac => \dut|control|T2~0_combout\,
	datad => \dut|data|divider|datap|dr1|Dout\(8),
	aclr => GND,
	ena => \dut|data|x2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|dr2|Dout\(8));

-- Location: LC_X2_Y6_N3
\dut|data|dr1|Dout[8]\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr1|Dout\(8) = DFFEAS((\dut|control|T1~0_combout\ & (\scan_instance|In_Reg|L2\(8) & ((!\TRST~combout\)))) # (!\dut|control|T1~0_combout\ & (((\dut|data|dr2|Dout\(8))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , 
-- \dut|data|dr1|Dout[15]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50d8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|control|T1~0_combout\,
	datab => \scan_instance|In_Reg|L2\(8),
	datac => \dut|data|dr2|Dout\(8),
	datad => \TRST~combout\,
	aclr => GND,
	ena => \dut|data|dr1|Dout[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|dr1|Dout\(8));

-- Location: LC_X1_Y10_N8
\dut|data|divider|datap|subtract|add8|s~0\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|subtract|add8|s~0_combout\ = ((\dut|data|divider|datap|dr2|Dout\(8) $ (\dut|data|divider|datap|dr1|Dout\(8))))

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
	datac => \dut|data|divider|datap|dr2|Dout\(8),
	datad => \dut|data|divider|datap|dr1|Dout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|subtract|add8|s~0_combout\);

-- Location: LC_X2_Y7_N8
\scan_instance|In_Reg|L2[7]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(7) = DFFEAS(((!\TRST~combout\ & ((\scan_instance|In_Reg|L1\(7))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

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
	datad => \scan_instance|In_Reg|L1\(7),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(7));

-- Location: LC_X1_Y6_N5
\dut|data|dr2|Dout[7]\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr2|Dout\(7) = DFFEAS((\dut|control|T2~0_combout\ & (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(7)))) # (!\dut|control|T2~0_combout\ & (((\dut|data|divider|datap|dr1|Dout\(7))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , 
-- \dut|data|x2~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7520",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|control|T2~0_combout\,
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(7),
	datad => \dut|data|divider|datap|dr1|Dout\(7),
	aclr => GND,
	ena => \dut|data|x2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|dr2|Dout\(7));

-- Location: LC_X2_Y6_N2
\dut|data|dr1|Dout[7]\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr1|Dout\(7) = DFFEAS((\dut|control|T1~0_combout\ & (\scan_instance|In_Reg|L2\(7) & (!\TRST~combout\))) # (!\dut|control|T1~0_combout\ & (((\dut|data|dr2|Dout\(7))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , 
-- \dut|data|dr1|Dout[15]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5d08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|control|T1~0_combout\,
	datab => \scan_instance|In_Reg|L2\(7),
	datac => \TRST~combout\,
	datad => \dut|data|dr2|Dout\(7),
	aclr => GND,
	ena => \dut|data|dr1|Dout[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|dr1|Dout\(7));

-- Location: LC_X3_Y8_N6
\dut|data|divider|datap|subtract|add7|s~0\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|subtract|add7|s~0_combout\ = ((\dut|data|divider|datap|dr1|Dout\(7) $ (\dut|data|divider|datap|dr2|Dout\(7))))

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
	datac => \dut|data|divider|datap|dr1|Dout\(7),
	datad => \dut|data|divider|datap|dr2|Dout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|subtract|add7|s~0_combout\);

-- Location: LC_X2_Y7_N5
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

-- Location: LC_X2_Y8_N2
\dut|data|dr2|Dout[6]\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr2|Dout\(6) = DFFEAS((\dut|control|T2~0_combout\ & (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(6)))) # (!\dut|control|T2~0_combout\ & (((\dut|data|divider|datap|dr1|Dout\(6))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , 
-- \dut|data|x2~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "44f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(6),
	datac => \dut|data|divider|datap|dr1|Dout\(6),
	datad => \dut|control|T2~0_combout\,
	aclr => GND,
	ena => \dut|data|x2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|dr2|Dout\(6));

-- Location: LC_X2_Y6_N5
\dut|data|dr1|Dout[6]\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr1|Dout\(6) = DFFEAS((\dut|control|T1~0_combout\ & (\scan_instance|In_Reg|L2\(6) & (!\TRST~combout\))) # (!\dut|control|T1~0_combout\ & (((\dut|data|dr2|Dout\(6))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , 
-- \dut|data|dr1|Dout[15]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5d08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|control|T1~0_combout\,
	datab => \scan_instance|In_Reg|L2\(6),
	datac => \TRST~combout\,
	datad => \dut|data|dr2|Dout\(6),
	aclr => GND,
	ena => \dut|data|dr1|Dout[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|dr1|Dout\(6));

-- Location: LC_X3_Y8_N1
\dut|data|divider|datap|subtract|add6|s~0\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|subtract|add6|s~0_combout\ = \dut|data|divider|datap|dr2|Dout\(6) $ ((((\dut|data|divider|datap|dr1|Dout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|data|divider|datap|dr2|Dout\(6),
	datad => \dut|data|divider|datap|dr1|Dout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|subtract|add6|s~0_combout\);

-- Location: LC_X2_Y7_N7
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

-- Location: LC_X2_Y8_N8
\dut|data|dr2|Dout[5]\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr2|Dout\(5) = DFFEAS((\dut|control|T2~0_combout\ & (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(5)))) # (!\dut|control|T2~0_combout\ & (((\dut|data|divider|datap|dr1|Dout\(5))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , 
-- \dut|data|x2~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7520",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|control|T2~0_combout\,
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(5),
	datad => \dut|data|divider|datap|dr1|Dout\(5),
	aclr => GND,
	ena => \dut|data|x2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|dr2|Dout\(5));

-- Location: LC_X2_Y6_N0
\dut|data|dr1|Dout[5]\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr1|Dout\(5) = DFFEAS((\dut|control|T1~0_combout\ & (\scan_instance|In_Reg|L2\(5) & ((!\TRST~combout\)))) # (!\dut|control|T1~0_combout\ & (((\dut|data|dr2|Dout\(5))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , 
-- \dut|data|dr1|Dout[15]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0acc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \scan_instance|In_Reg|L2\(5),
	datab => \dut|data|dr2|Dout\(5),
	datac => \TRST~combout\,
	datad => \dut|control|T1~0_combout\,
	aclr => GND,
	ena => \dut|data|dr1|Dout[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|dr1|Dout\(5));

-- Location: LC_X3_Y10_N5
\dut|data|divider|datap|subtract|add4|cout~0\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|subtract|add4|cout~0_combout\ = ((\dut|data|divider|datap|dr1|Dout\(4) & ((\dut|data|divider|datap|subtract|add3|cout~0_combout\) # (!\dut|data|divider|datap|dr2|Dout\(4)))) # (!\dut|data|divider|datap|dr1|Dout\(4) & 
-- (!\dut|data|divider|datap|dr2|Dout\(4) & \dut|data|divider|datap|subtract|add3|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut|data|divider|datap|dr1|Dout\(4),
	datac => \dut|data|divider|datap|dr2|Dout\(4),
	datad => \dut|data|divider|datap|subtract|add3|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|subtract|add4|cout~0_combout\);

-- Location: LC_X2_Y9_N8
\dut|data|divider|datap|subtract|add5|s~0\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|subtract|add5|s~0_combout\ = ((\dut|data|divider|datap|dr2|Dout\(5) $ (\dut|data|divider|datap|dr1|Dout\(5))))

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
	datac => \dut|data|divider|datap|dr2|Dout\(5),
	datad => \dut|data|divider|datap|dr1|Dout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|subtract|add5|s~0_combout\);

-- Location: LC_X5_Y10_N7
\dut|data|divider|datap|x1\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|x1~combout\ = (\dut|data|divider|control|fsm_state.subtracting~regout\) # ((\dut|control|fsm_state.doDivide~regout\ & ((!\dut|data|divider|control|fsm_state.phi~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|control|fsm_state.doDivide~regout\,
	datab => \dut|data|divider|control|fsm_state.subtracting~regout\,
	datad => \dut|data|divider|control|fsm_state.phi~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|x1~combout\);

-- Location: LC_X3_Y10_N3
\dut|data|divider|datap|dr1|Dout[5]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr1|Dout\(5) = DFFEAS((\dut|data|divider|control|fsm_state~16_combout\ & (\dut|data|dr1|Dout\(5))) # (!\dut|data|divider|control|fsm_state~16_combout\ & ((\dut|data|divider|datap|subtract|add4|cout~0_combout\ $ 
-- (!\dut|data|divider|datap|subtract|add5|s~0_combout\)))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|x1~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d88d",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|control|fsm_state~16_combout\,
	datab => \dut|data|dr1|Dout\(5),
	datac => \dut|data|divider|datap|subtract|add4|cout~0_combout\,
	datad => \dut|data|divider|datap|subtract|add5|s~0_combout\,
	aclr => GND,
	ena => \dut|data|divider|datap|x1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr1|Dout\(5));

-- Location: LC_X3_Y10_N6
\dut|data|divider|datap|subtract|add5|cout~0\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|subtract|add5|cout~0_combout\ = (\dut|data|divider|datap|dr1|Dout\(5) & (((\dut|data|divider|datap|subtract|add4|cout~0_combout\) # (!\dut|data|divider|datap|dr2|Dout\(5))))) # (!\dut|data|divider|datap|dr1|Dout\(5) & 
-- (((!\dut|data|divider|datap|dr2|Dout\(5) & \dut|data|divider|datap|subtract|add4|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|data|divider|datap|dr1|Dout\(5),
	datac => \dut|data|divider|datap|dr2|Dout\(5),
	datad => \dut|data|divider|datap|subtract|add4|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|subtract|add5|cout~0_combout\);

-- Location: LC_X3_Y8_N2
\dut|data|divider|datap|dr1|Dout[6]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr1|Dout\(6) = DFFEAS((\dut|data|divider|control|fsm_state~16_combout\ & (\dut|data|dr1|Dout\(6))) # (!\dut|data|divider|control|fsm_state~16_combout\ & ((\dut|data|divider|datap|subtract|add6|s~0_combout\ $ 
-- (!\dut|data|divider|datap|subtract|add5|cout~0_combout\)))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|x1~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b88b",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|dr1|Dout\(6),
	datab => \dut|data|divider|control|fsm_state~16_combout\,
	datac => \dut|data|divider|datap|subtract|add6|s~0_combout\,
	datad => \dut|data|divider|datap|subtract|add5|cout~0_combout\,
	aclr => GND,
	ena => \dut|data|divider|datap|x1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr1|Dout\(6));

-- Location: LC_X3_Y10_N7
\dut|data|divider|datap|subtract|add6|cout~0\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|subtract|add6|cout~0_combout\ = (\dut|data|divider|datap|dr2|Dout\(6) & (((\dut|data|divider|datap|dr1|Dout\(6) & \dut|data|divider|datap|subtract|add5|cout~0_combout\)))) # (!\dut|data|divider|datap|dr2|Dout\(6) & 
-- (((\dut|data|divider|datap|dr1|Dout\(6)) # (\dut|data|divider|datap|subtract|add5|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f550",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|data|divider|datap|dr2|Dout\(6),
	datac => \dut|data|divider|datap|dr1|Dout\(6),
	datad => \dut|data|divider|datap|subtract|add5|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|subtract|add6|cout~0_combout\);

-- Location: LC_X3_Y8_N0
\dut|data|divider|datap|dr1|Dout[7]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr1|Dout\(7) = DFFEAS((\dut|data|divider|control|fsm_state~16_combout\ & (\dut|data|dr1|Dout\(7))) # (!\dut|data|divider|control|fsm_state~16_combout\ & ((\dut|data|divider|datap|subtract|add7|s~0_combout\ $ 
-- (!\dut|data|divider|datap|subtract|add6|cout~0_combout\)))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|x1~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b88b",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|dr1|Dout\(7),
	datab => \dut|data|divider|control|fsm_state~16_combout\,
	datac => \dut|data|divider|datap|subtract|add7|s~0_combout\,
	datad => \dut|data|divider|datap|subtract|add6|cout~0_combout\,
	aclr => GND,
	ena => \dut|data|divider|datap|x1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr1|Dout\(7));

-- Location: LC_X3_Y10_N8
\dut|data|divider|datap|subtract|add7|cout~0\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|subtract|add7|cout~0_combout\ = (\dut|data|divider|datap|dr1|Dout\(7) & (((\dut|data|divider|datap|subtract|add6|cout~0_combout\) # (!\dut|data|divider|datap|dr2|Dout\(7))))) # (!\dut|data|divider|datap|dr1|Dout\(7) & 
-- (((!\dut|data|divider|datap|dr2|Dout\(7) & \dut|data|divider|datap|subtract|add6|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|data|divider|datap|dr1|Dout\(7),
	datac => \dut|data|divider|datap|dr2|Dout\(7),
	datad => \dut|data|divider|datap|subtract|add6|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|subtract|add7|cout~0_combout\);

-- Location: LC_X3_Y10_N4
\dut|data|divider|datap|dr1|Dout[8]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr1|Dout\(8) = DFFEAS((\dut|data|divider|control|fsm_state~16_combout\ & (\dut|data|dr1|Dout\(8))) # (!\dut|data|divider|control|fsm_state~16_combout\ & ((\dut|data|divider|datap|subtract|add8|s~0_combout\ $ 
-- (!\dut|data|divider|datap|subtract|add7|cout~0_combout\)))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|x1~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d88d",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|control|fsm_state~16_combout\,
	datab => \dut|data|dr1|Dout\(8),
	datac => \dut|data|divider|datap|subtract|add8|s~0_combout\,
	datad => \dut|data|divider|datap|subtract|add7|cout~0_combout\,
	aclr => GND,
	ena => \dut|data|divider|datap|x1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr1|Dout\(8));

-- Location: LC_X3_Y10_N9
\dut|data|divider|datap|subtract|add8|cout~0\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|subtract|add8|cout~0_combout\ = (\dut|data|divider|datap|dr1|Dout\(8) & (((\dut|data|divider|datap|subtract|add7|cout~0_combout\) # (!\dut|data|divider|datap|dr2|Dout\(8))))) # (!\dut|data|divider|datap|dr1|Dout\(8) & 
-- (((!\dut|data|divider|datap|dr2|Dout\(8) & \dut|data|divider|datap|subtract|add7|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|data|divider|datap|dr1|Dout\(8),
	datac => \dut|data|divider|datap|dr2|Dout\(8),
	datad => \dut|data|divider|datap|subtract|add7|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|subtract|add8|cout~0_combout\);

-- Location: LC_X1_Y10_N5
\dut|data|divider|datap|dr1|Dout[9]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr1|Dout\(9) = DFFEAS((\dut|data|divider|control|fsm_state~16_combout\ & (((\dut|data|dr1|Dout\(9))))) # (!\dut|data|divider|control|fsm_state~16_combout\ & (\dut|data|divider|datap|subtract|add9|s~0_combout\ $ 
-- (((!\dut|data|divider|datap|subtract|add8|cout~0_combout\))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|x1~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cac5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|datap|subtract|add9|s~0_combout\,
	datab => \dut|data|dr1|Dout\(9),
	datac => \dut|data|divider|control|fsm_state~16_combout\,
	datad => \dut|data|divider|datap|subtract|add8|cout~0_combout\,
	aclr => GND,
	ena => \dut|data|divider|datap|x1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr1|Dout\(9));

-- Location: LC_X3_Y10_N0
\dut|data|divider|datap|subtract|add9|cout~0\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|subtract|add9|cout~0_combout\ = ((\dut|data|divider|datap|dr1|Dout\(9) & ((\dut|data|divider|datap|subtract|add8|cout~0_combout\) # (!\dut|data|divider|datap|dr2|Dout\(9)))) # (!\dut|data|divider|datap|dr1|Dout\(9) & 
-- (!\dut|data|divider|datap|dr2|Dout\(9) & \dut|data|divider|datap|subtract|add8|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut|data|divider|datap|dr1|Dout\(9),
	datac => \dut|data|divider|datap|dr2|Dout\(9),
	datad => \dut|data|divider|datap|subtract|add8|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|subtract|add9|cout~0_combout\);

-- Location: LC_X1_Y10_N7
\dut|data|divider|datap|dr1|Dout[10]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr1|Dout\(10) = DFFEAS((\dut|data|divider|control|fsm_state~16_combout\ & (((\dut|data|dr1|Dout\(10))))) # (!\dut|data|divider|control|fsm_state~16_combout\ & (\dut|data|divider|datap|subtract|add10|s~0_combout\ $ 
-- (((!\dut|data|divider|datap|subtract|add9|cout~0_combout\))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|x1~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cac5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|datap|subtract|add10|s~0_combout\,
	datab => \dut|data|dr1|Dout\(10),
	datac => \dut|data|divider|control|fsm_state~16_combout\,
	datad => \dut|data|divider|datap|subtract|add9|cout~0_combout\,
	aclr => GND,
	ena => \dut|data|divider|datap|x1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr1|Dout\(10));

-- Location: LC_X3_Y10_N1
\dut|data|divider|datap|subtract|add10|cout~0\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|subtract|add10|cout~0_combout\ = ((\dut|data|divider|datap|dr2|Dout\(10) & (\dut|data|divider|datap|dr1|Dout\(10) & \dut|data|divider|datap|subtract|add9|cout~0_combout\)) # (!\dut|data|divider|datap|dr2|Dout\(10) & 
-- ((\dut|data|divider|datap|dr1|Dout\(10)) # (\dut|data|divider|datap|subtract|add9|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut|data|divider|datap|dr2|Dout\(10),
	datac => \dut|data|divider|datap|dr1|Dout\(10),
	datad => \dut|data|divider|datap|subtract|add9|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|subtract|add10|cout~0_combout\);

-- Location: LC_X2_Y10_N8
\dut|data|divider|datap|dr1|Dout[11]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr1|Dout\(11) = DFFEAS((\dut|data|divider|control|fsm_state~16_combout\ & (\dut|data|dr1|Dout\(11))) # (!\dut|data|divider|control|fsm_state~16_combout\ & ((\dut|data|divider|datap|subtract|add11|s~0_combout\ $ 
-- (!\dut|data|divider|datap|subtract|add10|cout~0_combout\)))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|x1~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aca3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|dr1|Dout\(11),
	datab => \dut|data|divider|datap|subtract|add11|s~0_combout\,
	datac => \dut|data|divider|control|fsm_state~16_combout\,
	datad => \dut|data|divider|datap|subtract|add10|cout~0_combout\,
	aclr => GND,
	ena => \dut|data|divider|datap|x1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr1|Dout\(11));

-- Location: LC_X2_Y10_N1
\dut|data|divider|datap|subtract|add11|cout~0\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|subtract|add11|cout~0_combout\ = (\dut|data|divider|datap|dr1|Dout\(11) & (((\dut|data|divider|datap|subtract|add10|cout~0_combout\)) # (!\dut|data|divider|datap|dr2|Dout\(11)))) # (!\dut|data|divider|datap|dr1|Dout\(11) & 
-- (!\dut|data|divider|datap|dr2|Dout\(11) & ((\dut|data|divider|datap|subtract|add10|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|data|divider|datap|dr1|Dout\(11),
	datab => \dut|data|divider|datap|dr2|Dout\(11),
	datad => \dut|data|divider|datap|subtract|add10|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|subtract|add11|cout~0_combout\);

-- Location: LC_X2_Y10_N0
\dut|data|divider|datap|dr1|Dout[12]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr1|Dout\(12) = DFFEAS((\dut|data|divider|control|fsm_state~16_combout\ & (((\dut|data|dr1|Dout\(12))))) # (!\dut|data|divider|control|fsm_state~16_combout\ & (\dut|data|divider|datap|subtract|add12|s~0_combout\ $ 
-- (((!\dut|data|divider|datap|subtract|add11|cout~0_combout\))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|x1~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cac5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|datap|subtract|add12|s~0_combout\,
	datab => \dut|data|dr1|Dout\(12),
	datac => \dut|data|divider|control|fsm_state~16_combout\,
	datad => \dut|data|divider|datap|subtract|add11|cout~0_combout\,
	aclr => GND,
	ena => \dut|data|divider|datap|x1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr1|Dout\(12));

-- Location: LC_X2_Y10_N2
\dut|data|divider|datap|subtract|add12|cout~0\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|subtract|add12|cout~0_combout\ = ((\dut|data|divider|datap|dr1|Dout\(12) & ((\dut|data|divider|datap|subtract|add11|cout~0_combout\) # (!\dut|data|divider|datap|dr2|Dout\(12)))) # (!\dut|data|divider|datap|dr1|Dout\(12) & 
-- (!\dut|data|divider|datap|dr2|Dout\(12) & \dut|data|divider|datap|subtract|add11|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut|data|divider|datap|dr1|Dout\(12),
	datac => \dut|data|divider|datap|dr2|Dout\(12),
	datad => \dut|data|divider|datap|subtract|add11|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|subtract|add12|cout~0_combout\);

-- Location: LC_X2_Y10_N6
\dut|data|divider|datap|dr1|Dout[13]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr1|Dout\(13) = DFFEAS((\dut|data|divider|control|fsm_state~16_combout\ & (\dut|data|dr1|Dout\(13))) # (!\dut|data|divider|control|fsm_state~16_combout\ & ((\dut|data|divider|datap|subtract|add13|s~0_combout\ $ 
-- (!\dut|data|divider|datap|subtract|add12|cout~0_combout\)))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|x1~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aca3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|dr1|Dout\(13),
	datab => \dut|data|divider|datap|subtract|add13|s~0_combout\,
	datac => \dut|data|divider|control|fsm_state~16_combout\,
	datad => \dut|data|divider|datap|subtract|add12|cout~0_combout\,
	aclr => GND,
	ena => \dut|data|divider|datap|x1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr1|Dout\(13));

-- Location: LC_X2_Y10_N3
\dut|data|divider|datap|subtract|add13|cout~0\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|subtract|add13|cout~0_combout\ = (\dut|data|divider|datap|dr1|Dout\(13) & (((\dut|data|divider|datap|subtract|add12|cout~0_combout\) # (!\dut|data|divider|datap|dr2|Dout\(13))))) # (!\dut|data|divider|datap|dr1|Dout\(13) & 
-- (((!\dut|data|divider|datap|dr2|Dout\(13) & \dut|data|divider|datap|subtract|add12|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|data|divider|datap|dr1|Dout\(13),
	datac => \dut|data|divider|datap|dr2|Dout\(13),
	datad => \dut|data|divider|datap|subtract|add12|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|subtract|add13|cout~0_combout\);

-- Location: LC_X2_Y10_N9
\dut|data|divider|datap|dr1|Dout[14]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr1|Dout\(14) = DFFEAS((\dut|data|divider|control|fsm_state~16_combout\ & (\dut|data|dr1|Dout\(14))) # (!\dut|data|divider|control|fsm_state~16_combout\ & ((\dut|data|divider|datap|subtract|add14|s~0_combout\ $ 
-- (!\dut|data|divider|datap|subtract|add13|cout~0_combout\)))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|x1~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aca3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|dr1|Dout\(14),
	datab => \dut|data|divider|datap|subtract|add14|s~0_combout\,
	datac => \dut|data|divider|control|fsm_state~16_combout\,
	datad => \dut|data|divider|datap|subtract|add13|cout~0_combout\,
	aclr => GND,
	ena => \dut|data|divider|datap|x1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr1|Dout\(14));

-- Location: LC_X2_Y10_N4
\dut|data|divider|datap|DDREG_in[15]~16\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|DDREG_in[15]~16_combout\ = \dut|data|divider|datap|dr2|Dout\(15) $ (((\dut|data|divider|datap|dr1|Dout\(14) & ((\dut|data|divider|datap|subtract|add13|cout~0_combout\) # (!\dut|data|divider|datap|dr2|Dout\(14)))) # 
-- (!\dut|data|divider|datap|dr1|Dout\(14) & (!\dut|data|divider|datap|dr2|Dout\(14) & \dut|data|divider|datap|subtract|add13|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "65a6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|data|divider|datap|dr2|Dout\(15),
	datab => \dut|data|divider|datap|dr1|Dout\(14),
	datac => \dut|data|divider|datap|dr2|Dout\(14),
	datad => \dut|data|divider|datap|subtract|add13|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|DDREG_in[15]~16_combout\);

-- Location: LC_X2_Y10_N5
\dut|data|divider|datap|dr1|Dout[15]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr1|Dout\(15) = DFFEAS((\dut|data|divider|control|fsm_state~16_combout\ & (((\dut|data|dr1|Dout\(15))))) # (!\dut|data|divider|control|fsm_state~16_combout\ & (\dut|data|divider|datap|dr1|Dout\(15) $ 
-- (((!\dut|data|divider|datap|DDREG_in[15]~16_combout\))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|x1~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cac5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|datap|dr1|Dout\(15),
	datab => \dut|data|dr1|Dout\(15),
	datac => \dut|data|divider|control|fsm_state~16_combout\,
	datad => \dut|data|divider|datap|DDREG_in[15]~16_combout\,
	aclr => GND,
	ena => \dut|data|divider|datap|x1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr1|Dout\(15));

-- Location: LC_X5_Y7_N8
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

-- Location: LC_X4_Y7_N9
\dut|data|dr1|Dout[2]\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr1|Dout\(2) = DFFEAS((\dut|control|T1~0_combout\ & (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(2)))) # (!\dut|control|T1~0_combout\ & (((\dut|data|dr2|Dout\(2))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , 
-- \dut|data|dr1|Dout[15]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7340",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \TRST~combout\,
	datab => \dut|control|T1~0_combout\,
	datac => \scan_instance|In_Reg|L2\(2),
	datad => \dut|data|dr2|Dout\(2),
	aclr => GND,
	ena => \dut|data|dr1|Dout[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|dr1|Dout\(2));

-- Location: LC_X4_Y10_N7
\dut|data|divider|datap|subtract|add2|s~0\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|subtract|add2|s~0_combout\ = ((\dut|data|divider|datap|dr1|Dout\(2) $ (\dut|data|divider|datap|dr2|Dout\(2))))

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
	datac => \dut|data|divider|datap|dr1|Dout\(2),
	datad => \dut|data|divider|datap|dr2|Dout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|subtract|add2|s~0_combout\);

-- Location: LC_X6_Y7_N9
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

-- Location: LC_X3_Y8_N8
\dut|data|dr1|Dout[0]~0\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr1|Dout[0]~0_combout\ = ((\dut|control|fsm_state.checkRem~regout\ & (\dut|data|dr2|Dout\(0))) # (!\dut|control|fsm_state.checkRem~regout\ & ((\dut|data|dr1|Dout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|data|dr2|Dout\(0),
	datac => \dut|control|fsm_state.checkRem~regout\,
	datad => \dut|data|dr1|Dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|dr1|Dout[0]~0_combout\);

-- Location: LC_X3_Y6_N3
\dut|data|dr1|Dout[0]\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr1|Dout\(0) = DFFEAS((\dut|control|T1~0_combout\ & (((\scan_instance|In_Reg|L2\(0))))) # (!\dut|control|T1~0_combout\ & (((\dut|data|dr1|Dout[0]~0_combout\)))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|control|T1~0_combout\,
	datac => \scan_instance|In_Reg|L2\(0),
	datad => \dut|data|dr1|Dout[0]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|dr1|Dout\(0));

-- Location: LC_X5_Y10_N8
\dut|data|divider|datap|dr1|Dout[0]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr1|Dout\(0) = DFFEAS((\dut|data|divider|control|fsm_state~16_combout\ & (((\dut|data|dr1|Dout\(0))))) # (!\dut|data|divider|control|fsm_state~16_combout\ & (\dut|data|divider|datap|dr1|Dout\(0) $ 
-- (((\dut|data|divider|datap|dr2|Dout\(0)))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|x1~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d1e2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|datap|dr1|Dout\(0),
	datab => \dut|data|divider|control|fsm_state~16_combout\,
	datac => \dut|data|dr1|Dout\(0),
	datad => \dut|data|divider|datap|dr2|Dout\(0),
	aclr => GND,
	ena => \dut|data|divider|datap|x1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr1|Dout\(0));

-- Location: LC_X2_Y8_N6
\dut|data|dr2|Dout[0]\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr2|Dout\(0) = DFFEAS((\dut|control|T2~0_combout\ & (((!\TRST~combout\ & \scan_instance|In_Reg|L2\(0))))) # (!\dut|control|T2~0_combout\ & (\dut|data|divider|datap|dr1|Dout\(0))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , 
-- \dut|data|x2~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2e22",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|datap|dr1|Dout\(0),
	datab => \dut|control|T2~0_combout\,
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(0),
	aclr => GND,
	ena => \dut|data|x2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|dr2|Dout\(0));

-- Location: LC_X5_Y7_N1
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

-- Location: LC_X5_Y10_N0
\dut|data|divider|datap|subtract|add1|s~0\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|subtract|add1|s~0_combout\ = \dut|data|divider|datap|dr2|Dout\(1) $ (\dut|data|divider|datap|dr1|Dout\(1) $ (((\dut|data|divider|datap|dr1|Dout\(0)) # (!\dut|data|divider|datap|dr2|Dout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a569",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|data|divider|datap|dr2|Dout\(1),
	datab => \dut|data|divider|datap|dr2|Dout\(0),
	datac => \dut|data|divider|datap|dr1|Dout\(1),
	datad => \dut|data|divider|datap|dr1|Dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|subtract|add1|s~0_combout\);

-- Location: LC_X2_Y6_N9
\dut|data|dr1|Dout[1]\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr1|Dout\(1) = DFFEAS((\dut|control|T1~0_combout\ & (((\scan_instance|In_Reg|L2\(1) & !\TRST~combout\)))) # (!\dut|control|T1~0_combout\ & (\dut|data|dr2|Dout\(1))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , 
-- \dut|data|dr1|Dout[15]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0caa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|dr2|Dout\(1),
	datab => \scan_instance|In_Reg|L2\(1),
	datac => \TRST~combout\,
	datad => \dut|control|T1~0_combout\,
	aclr => GND,
	ena => \dut|data|dr1|Dout[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|dr1|Dout\(1));

-- Location: LC_X5_Y10_N3
\dut|data|divider|datap|dr1|Dout[1]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr1|Dout\(1) = DFFEAS((\dut|control|fsm_state.doDivide~regout\ & ((\dut|data|divider|control|fsm_state.phi~regout\ & (!\dut|data|divider|datap|subtract|add1|s~0_combout\)) # (!\dut|data|divider|control|fsm_state.phi~regout\ & 
-- ((\dut|data|dr1|Dout\(1)))))) # (!\dut|control|fsm_state.doDivide~regout\ & (!\dut|data|divider|datap|subtract|add1|s~0_combout\)), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|x1~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33b1",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|control|fsm_state.doDivide~regout\,
	datab => \dut|data|divider|datap|subtract|add1|s~0_combout\,
	datac => \dut|data|dr1|Dout\(1),
	datad => \dut|data|divider|control|fsm_state.phi~regout\,
	aclr => GND,
	ena => \dut|data|divider|datap|x1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr1|Dout\(1));

-- Location: LC_X2_Y8_N5
\dut|data|dr2|Dout[1]\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr2|Dout\(1) = DFFEAS((\dut|control|T2~0_combout\ & (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(1)))) # (!\dut|control|T2~0_combout\ & (((\dut|data|divider|datap|dr1|Dout\(1))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , 
-- \dut|data|x2~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7340",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \TRST~combout\,
	datab => \dut|control|T2~0_combout\,
	datac => \scan_instance|In_Reg|L2\(1),
	datad => \dut|data|divider|datap|dr1|Dout\(1),
	aclr => GND,
	ena => \dut|data|x2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|dr2|Dout\(1));

-- Location: LC_X4_Y10_N0
\dut|data|divider|datap|dr2|Dout[1]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr2|Dout\(1) = DFFEAS(((\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & (\dut|data|divider|datap|dr2|Dout\(0))) # (!\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & ((\dut|data|divider|datap|dr2|Dout\(2))))), 
-- GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|dr2|Dout[13]~2_combout\, \dut|data|dr2|Dout\(1), , , \dut|data|divider|control|fsm_state~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|datap|dr2|Dout\(0),
	datab => \dut|data|divider|datap|dr2|Dout\(2),
	datac => \dut|data|dr2|Dout\(1),
	datad => \dut|data|divider|datap|dr2|Dout[15]~0_combout\,
	aclr => GND,
	sload => \dut|data|divider|control|fsm_state~16_combout\,
	ena => \dut|data|divider|datap|dr2|Dout[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr2|Dout\(1));

-- Location: LC_X4_Y10_N5
\dut|data|divider|datap|dr2|Dout[0]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr2|Dout\(0) = DFFEAS((\dut|data|divider|control|fsm_state~16_combout\ & (\dut|data|dr2|Dout\(0))) # (!\dut|data|divider|control|fsm_state~16_combout\ & (((\dut|data|divider|datap|dr2|Dout\(1) & 
-- !\dut|data|divider|datap|dr2|Dout[15]~0_combout\)))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|dr2|Dout[13]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88d8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|control|fsm_state~16_combout\,
	datab => \dut|data|dr2|Dout\(0),
	datac => \dut|data|divider|datap|dr2|Dout\(1),
	datad => \dut|data|divider|datap|dr2|Dout[15]~0_combout\,
	aclr => GND,
	ena => \dut|data|divider|datap|dr2|Dout[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr2|Dout\(0));

-- Location: LC_X4_Y10_N2
\dut|data|divider|datap|subtract|add1|cout~0\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|subtract|add1|cout~0_combout\ = (\dut|data|divider|datap|dr2|Dout\(1) & (\dut|data|divider|datap|dr1|Dout\(1) & ((\dut|data|divider|datap|dr1|Dout\(0)) # (!\dut|data|divider|datap|dr2|Dout\(0))))) # 
-- (!\dut|data|divider|datap|dr2|Dout\(1) & (((\dut|data|divider|datap|dr1|Dout\(1)) # (\dut|data|divider|datap|dr1|Dout\(0))) # (!\dut|data|divider|datap|dr2|Dout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f371",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|data|divider|datap|dr2|Dout\(0),
	datab => \dut|data|divider|datap|dr2|Dout\(1),
	datac => \dut|data|divider|datap|dr1|Dout\(1),
	datad => \dut|data|divider|datap|dr1|Dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|subtract|add1|cout~0_combout\);

-- Location: LC_X5_Y10_N6
\dut|data|divider|datap|dr1|Dout[2]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr1|Dout\(2) = DFFEAS((\dut|data|divider|control|fsm_state~16_combout\ & (\dut|data|dr1|Dout\(2))) # (!\dut|data|divider|control|fsm_state~16_combout\ & ((\dut|data|divider|datap|subtract|add2|s~0_combout\ $ 
-- (!\dut|data|divider|datap|subtract|add1|cout~0_combout\)))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|x1~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aca3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|dr1|Dout\(2),
	datab => \dut|data|divider|datap|subtract|add2|s~0_combout\,
	datac => \dut|data|divider|control|fsm_state~16_combout\,
	datad => \dut|data|divider|datap|subtract|add1|cout~0_combout\,
	aclr => GND,
	ena => \dut|data|divider|datap|x1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr1|Dout\(2));

-- Location: LC_X2_Y8_N1
\dut|data|dr2|Dout[2]\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr2|Dout\(2) = DFFEAS((\dut|control|T2~0_combout\ & (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(2))))) # (!\dut|control|T2~0_combout\ & (((\dut|data|divider|datap|dr1|Dout\(2))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , 
-- \dut|data|x2~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7430",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \TRST~combout\,
	datab => \dut|control|T2~0_combout\,
	datac => \dut|data|divider|datap|dr1|Dout\(2),
	datad => \scan_instance|In_Reg|L2\(2),
	aclr => GND,
	ena => \dut|data|x2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|dr2|Dout\(2));

-- Location: LC_X4_Y10_N1
\dut|data|divider|datap|dr2|Dout[2]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr2|Dout\(2) = DFFEAS((\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & (((\dut|data|divider|datap|dr2|Dout\(1))))) # (!\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & (\dut|data|divider|datap|dr2|Dout\(3))), 
-- GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|dr2|Dout[13]~2_combout\, \dut|data|dr2|Dout\(2), , , \dut|data|divider|control|fsm_state~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|datap|dr2|Dout\(3),
	datab => \dut|data|divider|datap|dr2|Dout[15]~0_combout\,
	datac => \dut|data|dr2|Dout\(2),
	datad => \dut|data|divider|datap|dr2|Dout\(1),
	aclr => GND,
	sload => \dut|data|divider|control|fsm_state~16_combout\,
	ena => \dut|data|divider|datap|dr2|Dout[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr2|Dout\(2));

-- Location: LC_X3_Y9_N2
\dut|data|divider|datap|comparator|LessThan0~77\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|comparator|LessThan0~77_cout0\ = CARRY((\dut|data|divider|datap|dr2|Dout\(0) & (!\dut|data|divider|datap|dr1|Dout\(0))))
-- \dut|data|divider|datap|comparator|LessThan0~77COUT1_81\ = CARRY((\dut|data|divider|datap|dr2|Dout\(0) & (!\dut|data|divider|datap|dr1|Dout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff22",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|data|divider|datap|dr2|Dout\(0),
	datab => \dut|data|divider|datap|dr1|Dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|comparator|LessThan0~75\,
	cout0 => \dut|data|divider|datap|comparator|LessThan0~77_cout0\,
	cout1 => \dut|data|divider|datap|comparator|LessThan0~77COUT1_81\);

-- Location: LC_X3_Y9_N3
\dut|data|divider|datap|comparator|LessThan0~72\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|comparator|LessThan0~72_cout0\ = CARRY((\dut|data|divider|datap|dr2|Dout\(1) & (\dut|data|divider|datap|dr1|Dout\(1) & !\dut|data|divider|datap|comparator|LessThan0~77_cout0\)) # (!\dut|data|divider|datap|dr2|Dout\(1) & 
-- ((\dut|data|divider|datap|dr1|Dout\(1)) # (!\dut|data|divider|datap|comparator|LessThan0~77_cout0\))))
-- \dut|data|divider|datap|comparator|LessThan0~72COUT1_82\ = CARRY((\dut|data|divider|datap|dr2|Dout\(1) & (\dut|data|divider|datap|dr1|Dout\(1) & !\dut|data|divider|datap|comparator|LessThan0~77COUT1_81\)) # (!\dut|data|divider|datap|dr2|Dout\(1) & 
-- ((\dut|data|divider|datap|dr1|Dout\(1)) # (!\dut|data|divider|datap|comparator|LessThan0~77COUT1_81\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|data|divider|datap|dr2|Dout\(1),
	datab => \dut|data|divider|datap|dr1|Dout\(1),
	cin0 => \dut|data|divider|datap|comparator|LessThan0~77_cout0\,
	cin1 => \dut|data|divider|datap|comparator|LessThan0~77COUT1_81\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|comparator|LessThan0~70\,
	cout0 => \dut|data|divider|datap|comparator|LessThan0~72_cout0\,
	cout1 => \dut|data|divider|datap|comparator|LessThan0~72COUT1_82\);

-- Location: LC_X3_Y9_N4
\dut|data|divider|datap|comparator|LessThan0~67\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|comparator|LessThan0~67_cout\ = CARRY((\dut|data|divider|datap|dr2|Dout\(2) & ((!\dut|data|divider|datap|comparator|LessThan0~72COUT1_82\) # (!\dut|data|divider|datap|dr1|Dout\(2)))) # (!\dut|data|divider|datap|dr2|Dout\(2) & 
-- (!\dut|data|divider|datap|dr1|Dout\(2) & !\dut|data|divider|datap|comparator|LessThan0~72COUT1_82\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|data|divider|datap|dr2|Dout\(2),
	datab => \dut|data|divider|datap|dr1|Dout\(2),
	cin0 => \dut|data|divider|datap|comparator|LessThan0~72_cout0\,
	cin1 => \dut|data|divider|datap|comparator|LessThan0~72COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|comparator|LessThan0~65\,
	cout => \dut|data|divider|datap|comparator|LessThan0~67_cout\);

-- Location: LC_X5_Y7_N0
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

-- Location: LC_X2_Y8_N9
\dut|data|dr2|Dout[3]\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr2|Dout\(3) = DFFEAS((\dut|control|T2~0_combout\ & (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(3))))) # (!\dut|control|T2~0_combout\ & (((\dut|data|divider|datap|dr1|Dout\(3))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , 
-- \dut|data|x2~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7430",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \TRST~combout\,
	datab => \dut|control|T2~0_combout\,
	datac => \dut|data|divider|datap|dr1|Dout\(3),
	datad => \scan_instance|In_Reg|L2\(3),
	aclr => GND,
	ena => \dut|data|x2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|dr2|Dout\(3));

-- Location: LC_X2_Y8_N7
\dut|data|dr1|Dout[3]\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr1|Dout\(3) = DFFEAS((\dut|control|T1~0_combout\ & (((!\TRST~combout\ & \scan_instance|In_Reg|L2\(3))))) # (!\dut|control|T1~0_combout\ & (\dut|data|dr2|Dout\(3))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , 
-- \dut|data|dr1|Dout[15]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4e44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|control|T1~0_combout\,
	datab => \dut|data|dr2|Dout\(3),
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(3),
	aclr => GND,
	ena => \dut|data|dr1|Dout[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|dr1|Dout\(3));

-- Location: LC_X4_Y10_N6
\dut|data|divider|datap|subtract|add3|s~0\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|subtract|add3|s~0_combout\ = ((\dut|data|divider|datap|dr1|Dout\(3) $ (\dut|data|divider|datap|dr2|Dout\(3))))

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
	datac => \dut|data|divider|datap|dr1|Dout\(3),
	datad => \dut|data|divider|datap|dr2|Dout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|subtract|add3|s~0_combout\);

-- Location: LC_X4_Y10_N3
\dut|data|divider|datap|subtract|add2|cout~0\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|subtract|add2|cout~0_combout\ = ((\dut|data|divider|datap|dr2|Dout\(2) & (\dut|data|divider|datap|dr1|Dout\(2) & \dut|data|divider|datap|subtract|add1|cout~0_combout\)) # (!\dut|data|divider|datap|dr2|Dout\(2) & 
-- ((\dut|data|divider|datap|dr1|Dout\(2)) # (\dut|data|divider|datap|subtract|add1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut|data|divider|datap|dr2|Dout\(2),
	datac => \dut|data|divider|datap|dr1|Dout\(2),
	datad => \dut|data|divider|datap|subtract|add1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|subtract|add2|cout~0_combout\);

-- Location: LC_X5_Y10_N2
\dut|data|divider|datap|dr1|Dout[3]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr1|Dout\(3) = DFFEAS((\dut|data|divider|control|fsm_state~16_combout\ & (\dut|data|dr1|Dout\(3))) # (!\dut|data|divider|control|fsm_state~16_combout\ & ((\dut|data|divider|datap|subtract|add3|s~0_combout\ $ 
-- (!\dut|data|divider|datap|subtract|add2|cout~0_combout\)))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|x1~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b88b",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|dr1|Dout\(3),
	datab => \dut|data|divider|control|fsm_state~16_combout\,
	datac => \dut|data|divider|datap|subtract|add3|s~0_combout\,
	datad => \dut|data|divider|datap|subtract|add2|cout~0_combout\,
	aclr => GND,
	ena => \dut|data|divider|datap|x1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr1|Dout\(3));

-- Location: LC_X3_Y9_N5
\dut|data|divider|datap|comparator|LessThan0~62\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|comparator|LessThan0~62_cout0\ = CARRY((\dut|data|divider|datap|dr2|Dout\(3) & (\dut|data|divider|datap|dr1|Dout\(3) & !\dut|data|divider|datap|comparator|LessThan0~67_cout\)) # (!\dut|data|divider|datap|dr2|Dout\(3) & 
-- ((\dut|data|divider|datap|dr1|Dout\(3)) # (!\dut|data|divider|datap|comparator|LessThan0~67_cout\))))
-- \dut|data|divider|datap|comparator|LessThan0~62COUT1_83\ = CARRY((\dut|data|divider|datap|dr2|Dout\(3) & (\dut|data|divider|datap|dr1|Dout\(3) & !\dut|data|divider|datap|comparator|LessThan0~67_cout\)) # (!\dut|data|divider|datap|dr2|Dout\(3) & 
-- ((\dut|data|divider|datap|dr1|Dout\(3)) # (!\dut|data|divider|datap|comparator|LessThan0~67_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|data|divider|datap|dr2|Dout\(3),
	datab => \dut|data|divider|datap|dr1|Dout\(3),
	cin => \dut|data|divider|datap|comparator|LessThan0~67_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|comparator|LessThan0~60\,
	cout0 => \dut|data|divider|datap|comparator|LessThan0~62_cout0\,
	cout1 => \dut|data|divider|datap|comparator|LessThan0~62COUT1_83\);

-- Location: LC_X3_Y9_N6
\dut|data|divider|datap|comparator|LessThan0~57\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|comparator|LessThan0~57_cout0\ = CARRY((\dut|data|divider|datap|dr1|Dout\(4) & (\dut|data|divider|datap|dr2|Dout\(4) & !\dut|data|divider|datap|comparator|LessThan0~62_cout0\)) # (!\dut|data|divider|datap|dr1|Dout\(4) & 
-- ((\dut|data|divider|datap|dr2|Dout\(4)) # (!\dut|data|divider|datap|comparator|LessThan0~62_cout0\))))
-- \dut|data|divider|datap|comparator|LessThan0~57COUT1_84\ = CARRY((\dut|data|divider|datap|dr1|Dout\(4) & (\dut|data|divider|datap|dr2|Dout\(4) & !\dut|data|divider|datap|comparator|LessThan0~62COUT1_83\)) # (!\dut|data|divider|datap|dr1|Dout\(4) & 
-- ((\dut|data|divider|datap|dr2|Dout\(4)) # (!\dut|data|divider|datap|comparator|LessThan0~62COUT1_83\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|data|divider|datap|dr1|Dout\(4),
	datab => \dut|data|divider|datap|dr2|Dout\(4),
	cin => \dut|data|divider|datap|comparator|LessThan0~67_cout\,
	cin0 => \dut|data|divider|datap|comparator|LessThan0~62_cout0\,
	cin1 => \dut|data|divider|datap|comparator|LessThan0~62COUT1_83\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|comparator|LessThan0~55\,
	cout0 => \dut|data|divider|datap|comparator|LessThan0~57_cout0\,
	cout1 => \dut|data|divider|datap|comparator|LessThan0~57COUT1_84\);

-- Location: LC_X3_Y9_N7
\dut|data|divider|datap|comparator|LessThan0~52\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|comparator|LessThan0~52_cout0\ = CARRY((\dut|data|divider|datap|dr2|Dout\(5) & (\dut|data|divider|datap|dr1|Dout\(5) & !\dut|data|divider|datap|comparator|LessThan0~57_cout0\)) # (!\dut|data|divider|datap|dr2|Dout\(5) & 
-- ((\dut|data|divider|datap|dr1|Dout\(5)) # (!\dut|data|divider|datap|comparator|LessThan0~57_cout0\))))
-- \dut|data|divider|datap|comparator|LessThan0~52COUT1_85\ = CARRY((\dut|data|divider|datap|dr2|Dout\(5) & (\dut|data|divider|datap|dr1|Dout\(5) & !\dut|data|divider|datap|comparator|LessThan0~57COUT1_84\)) # (!\dut|data|divider|datap|dr2|Dout\(5) & 
-- ((\dut|data|divider|datap|dr1|Dout\(5)) # (!\dut|data|divider|datap|comparator|LessThan0~57COUT1_84\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|data|divider|datap|dr2|Dout\(5),
	datab => \dut|data|divider|datap|dr1|Dout\(5),
	cin => \dut|data|divider|datap|comparator|LessThan0~67_cout\,
	cin0 => \dut|data|divider|datap|comparator|LessThan0~57_cout0\,
	cin1 => \dut|data|divider|datap|comparator|LessThan0~57COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|comparator|LessThan0~50\,
	cout0 => \dut|data|divider|datap|comparator|LessThan0~52_cout0\,
	cout1 => \dut|data|divider|datap|comparator|LessThan0~52COUT1_85\);

-- Location: LC_X3_Y9_N8
\dut|data|divider|datap|comparator|LessThan0~47\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|comparator|LessThan0~47_cout0\ = CARRY((\dut|data|divider|datap|dr1|Dout\(6) & (\dut|data|divider|datap|dr2|Dout\(6) & !\dut|data|divider|datap|comparator|LessThan0~52_cout0\)) # (!\dut|data|divider|datap|dr1|Dout\(6) & 
-- ((\dut|data|divider|datap|dr2|Dout\(6)) # (!\dut|data|divider|datap|comparator|LessThan0~52_cout0\))))
-- \dut|data|divider|datap|comparator|LessThan0~47COUT1_86\ = CARRY((\dut|data|divider|datap|dr1|Dout\(6) & (\dut|data|divider|datap|dr2|Dout\(6) & !\dut|data|divider|datap|comparator|LessThan0~52COUT1_85\)) # (!\dut|data|divider|datap|dr1|Dout\(6) & 
-- ((\dut|data|divider|datap|dr2|Dout\(6)) # (!\dut|data|divider|datap|comparator|LessThan0~52COUT1_85\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|data|divider|datap|dr1|Dout\(6),
	datab => \dut|data|divider|datap|dr2|Dout\(6),
	cin => \dut|data|divider|datap|comparator|LessThan0~67_cout\,
	cin0 => \dut|data|divider|datap|comparator|LessThan0~52_cout0\,
	cin1 => \dut|data|divider|datap|comparator|LessThan0~52COUT1_85\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|comparator|LessThan0~45\,
	cout0 => \dut|data|divider|datap|comparator|LessThan0~47_cout0\,
	cout1 => \dut|data|divider|datap|comparator|LessThan0~47COUT1_86\);

-- Location: LC_X3_Y9_N9
\dut|data|divider|datap|comparator|LessThan0~42\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|comparator|LessThan0~42_cout\ = CARRY((\dut|data|divider|datap|dr1|Dout\(7) & ((!\dut|data|divider|datap|comparator|LessThan0~47COUT1_86\) # (!\dut|data|divider|datap|dr2|Dout\(7)))) # (!\dut|data|divider|datap|dr1|Dout\(7) & 
-- (!\dut|data|divider|datap|dr2|Dout\(7) & !\dut|data|divider|datap|comparator|LessThan0~47COUT1_86\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|data|divider|datap|dr1|Dout\(7),
	datab => \dut|data|divider|datap|dr2|Dout\(7),
	cin => \dut|data|divider|datap|comparator|LessThan0~67_cout\,
	cin0 => \dut|data|divider|datap|comparator|LessThan0~47_cout0\,
	cin1 => \dut|data|divider|datap|comparator|LessThan0~47COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|comparator|LessThan0~40\,
	cout => \dut|data|divider|datap|comparator|LessThan0~42_cout\);

-- Location: LC_X4_Y9_N0
\dut|data|divider|datap|comparator|LessThan0~37\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|comparator|LessThan0~37_cout0\ = CARRY((\dut|data|divider|datap|dr1|Dout\(8) & (\dut|data|divider|datap|dr2|Dout\(8) & !\dut|data|divider|datap|comparator|LessThan0~42_cout\)) # (!\dut|data|divider|datap|dr1|Dout\(8) & 
-- ((\dut|data|divider|datap|dr2|Dout\(8)) # (!\dut|data|divider|datap|comparator|LessThan0~42_cout\))))
-- \dut|data|divider|datap|comparator|LessThan0~37COUT1_87\ = CARRY((\dut|data|divider|datap|dr1|Dout\(8) & (\dut|data|divider|datap|dr2|Dout\(8) & !\dut|data|divider|datap|comparator|LessThan0~42_cout\)) # (!\dut|data|divider|datap|dr1|Dout\(8) & 
-- ((\dut|data|divider|datap|dr2|Dout\(8)) # (!\dut|data|divider|datap|comparator|LessThan0~42_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|data|divider|datap|dr1|Dout\(8),
	datab => \dut|data|divider|datap|dr2|Dout\(8),
	cin => \dut|data|divider|datap|comparator|LessThan0~42_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|comparator|LessThan0~35\,
	cout0 => \dut|data|divider|datap|comparator|LessThan0~37_cout0\,
	cout1 => \dut|data|divider|datap|comparator|LessThan0~37COUT1_87\);

-- Location: LC_X4_Y9_N1
\dut|data|divider|datap|comparator|LessThan0~32\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|comparator|LessThan0~32_cout0\ = CARRY((\dut|data|divider|datap|dr1|Dout\(9) & ((!\dut|data|divider|datap|comparator|LessThan0~37_cout0\) # (!\dut|data|divider|datap|dr2|Dout\(9)))) # (!\dut|data|divider|datap|dr1|Dout\(9) & 
-- (!\dut|data|divider|datap|dr2|Dout\(9) & !\dut|data|divider|datap|comparator|LessThan0~37_cout0\)))
-- \dut|data|divider|datap|comparator|LessThan0~32COUT1_88\ = CARRY((\dut|data|divider|datap|dr1|Dout\(9) & ((!\dut|data|divider|datap|comparator|LessThan0~37COUT1_87\) # (!\dut|data|divider|datap|dr2|Dout\(9)))) # (!\dut|data|divider|datap|dr1|Dout\(9) & 
-- (!\dut|data|divider|datap|dr2|Dout\(9) & !\dut|data|divider|datap|comparator|LessThan0~37COUT1_87\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|data|divider|datap|dr1|Dout\(9),
	datab => \dut|data|divider|datap|dr2|Dout\(9),
	cin => \dut|data|divider|datap|comparator|LessThan0~42_cout\,
	cin0 => \dut|data|divider|datap|comparator|LessThan0~37_cout0\,
	cin1 => \dut|data|divider|datap|comparator|LessThan0~37COUT1_87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|comparator|LessThan0~30\,
	cout0 => \dut|data|divider|datap|comparator|LessThan0~32_cout0\,
	cout1 => \dut|data|divider|datap|comparator|LessThan0~32COUT1_88\);

-- Location: LC_X4_Y9_N2
\dut|data|divider|datap|comparator|LessThan0~27\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|comparator|LessThan0~27_cout0\ = CARRY((\dut|data|divider|datap|dr1|Dout\(10) & (\dut|data|divider|datap|dr2|Dout\(10) & !\dut|data|divider|datap|comparator|LessThan0~32_cout0\)) # (!\dut|data|divider|datap|dr1|Dout\(10) & 
-- ((\dut|data|divider|datap|dr2|Dout\(10)) # (!\dut|data|divider|datap|comparator|LessThan0~32_cout0\))))
-- \dut|data|divider|datap|comparator|LessThan0~27COUT1_89\ = CARRY((\dut|data|divider|datap|dr1|Dout\(10) & (\dut|data|divider|datap|dr2|Dout\(10) & !\dut|data|divider|datap|comparator|LessThan0~32COUT1_88\)) # (!\dut|data|divider|datap|dr1|Dout\(10) & 
-- ((\dut|data|divider|datap|dr2|Dout\(10)) # (!\dut|data|divider|datap|comparator|LessThan0~32COUT1_88\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|data|divider|datap|dr1|Dout\(10),
	datab => \dut|data|divider|datap|dr2|Dout\(10),
	cin => \dut|data|divider|datap|comparator|LessThan0~42_cout\,
	cin0 => \dut|data|divider|datap|comparator|LessThan0~32_cout0\,
	cin1 => \dut|data|divider|datap|comparator|LessThan0~32COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|comparator|LessThan0~25\,
	cout0 => \dut|data|divider|datap|comparator|LessThan0~27_cout0\,
	cout1 => \dut|data|divider|datap|comparator|LessThan0~27COUT1_89\);

-- Location: LC_X4_Y9_N3
\dut|data|divider|datap|comparator|LessThan0~22\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|comparator|LessThan0~22_cout0\ = CARRY((\dut|data|divider|datap|dr2|Dout\(11) & (\dut|data|divider|datap|dr1|Dout\(11) & !\dut|data|divider|datap|comparator|LessThan0~27_cout0\)) # (!\dut|data|divider|datap|dr2|Dout\(11) & 
-- ((\dut|data|divider|datap|dr1|Dout\(11)) # (!\dut|data|divider|datap|comparator|LessThan0~27_cout0\))))
-- \dut|data|divider|datap|comparator|LessThan0~22COUT1_90\ = CARRY((\dut|data|divider|datap|dr2|Dout\(11) & (\dut|data|divider|datap|dr1|Dout\(11) & !\dut|data|divider|datap|comparator|LessThan0~27COUT1_89\)) # (!\dut|data|divider|datap|dr2|Dout\(11) & 
-- ((\dut|data|divider|datap|dr1|Dout\(11)) # (!\dut|data|divider|datap|comparator|LessThan0~27COUT1_89\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|data|divider|datap|dr2|Dout\(11),
	datab => \dut|data|divider|datap|dr1|Dout\(11),
	cin => \dut|data|divider|datap|comparator|LessThan0~42_cout\,
	cin0 => \dut|data|divider|datap|comparator|LessThan0~27_cout0\,
	cin1 => \dut|data|divider|datap|comparator|LessThan0~27COUT1_89\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|comparator|LessThan0~20\,
	cout0 => \dut|data|divider|datap|comparator|LessThan0~22_cout0\,
	cout1 => \dut|data|divider|datap|comparator|LessThan0~22COUT1_90\);

-- Location: LC_X4_Y9_N4
\dut|data|divider|datap|comparator|LessThan0~17\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|comparator|LessThan0~17_cout\ = CARRY((\dut|data|divider|datap|dr2|Dout\(12) & ((!\dut|data|divider|datap|comparator|LessThan0~22COUT1_90\) # (!\dut|data|divider|datap|dr1|Dout\(12)))) # (!\dut|data|divider|datap|dr2|Dout\(12) & 
-- (!\dut|data|divider|datap|dr1|Dout\(12) & !\dut|data|divider|datap|comparator|LessThan0~22COUT1_90\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|data|divider|datap|dr2|Dout\(12),
	datab => \dut|data|divider|datap|dr1|Dout\(12),
	cin => \dut|data|divider|datap|comparator|LessThan0~42_cout\,
	cin0 => \dut|data|divider|datap|comparator|LessThan0~22_cout0\,
	cin1 => \dut|data|divider|datap|comparator|LessThan0~22COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|comparator|LessThan0~15\,
	cout => \dut|data|divider|datap|comparator|LessThan0~17_cout\);

-- Location: LC_X4_Y9_N5
\dut|data|divider|datap|comparator|LessThan0~12\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|comparator|LessThan0~12_cout0\ = CARRY((\dut|data|divider|datap|dr2|Dout\(13) & (\dut|data|divider|datap|dr1|Dout\(13) & !\dut|data|divider|datap|comparator|LessThan0~17_cout\)) # (!\dut|data|divider|datap|dr2|Dout\(13) & 
-- ((\dut|data|divider|datap|dr1|Dout\(13)) # (!\dut|data|divider|datap|comparator|LessThan0~17_cout\))))
-- \dut|data|divider|datap|comparator|LessThan0~12COUT1_91\ = CARRY((\dut|data|divider|datap|dr2|Dout\(13) & (\dut|data|divider|datap|dr1|Dout\(13) & !\dut|data|divider|datap|comparator|LessThan0~17_cout\)) # (!\dut|data|divider|datap|dr2|Dout\(13) & 
-- ((\dut|data|divider|datap|dr1|Dout\(13)) # (!\dut|data|divider|datap|comparator|LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|data|divider|datap|dr2|Dout\(13),
	datab => \dut|data|divider|datap|dr1|Dout\(13),
	cin => \dut|data|divider|datap|comparator|LessThan0~17_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|comparator|LessThan0~10\,
	cout0 => \dut|data|divider|datap|comparator|LessThan0~12_cout0\,
	cout1 => \dut|data|divider|datap|comparator|LessThan0~12COUT1_91\);

-- Location: LC_X4_Y9_N6
\dut|data|divider|datap|comparator|LessThan0~7\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|comparator|LessThan0~7_cout0\ = CARRY((\dut|data|divider|datap|dr1|Dout\(14) & (\dut|data|divider|datap|dr2|Dout\(14) & !\dut|data|divider|datap|comparator|LessThan0~12_cout0\)) # (!\dut|data|divider|datap|dr1|Dout\(14) & 
-- ((\dut|data|divider|datap|dr2|Dout\(14)) # (!\dut|data|divider|datap|comparator|LessThan0~12_cout0\))))
-- \dut|data|divider|datap|comparator|LessThan0~7COUT1_92\ = CARRY((\dut|data|divider|datap|dr1|Dout\(14) & (\dut|data|divider|datap|dr2|Dout\(14) & !\dut|data|divider|datap|comparator|LessThan0~12COUT1_91\)) # (!\dut|data|divider|datap|dr1|Dout\(14) & 
-- ((\dut|data|divider|datap|dr2|Dout\(14)) # (!\dut|data|divider|datap|comparator|LessThan0~12COUT1_91\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|data|divider|datap|dr1|Dout\(14),
	datab => \dut|data|divider|datap|dr2|Dout\(14),
	cin => \dut|data|divider|datap|comparator|LessThan0~17_cout\,
	cin0 => \dut|data|divider|datap|comparator|LessThan0~12_cout0\,
	cin1 => \dut|data|divider|datap|comparator|LessThan0~12COUT1_91\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|comparator|LessThan0~5\,
	cout0 => \dut|data|divider|datap|comparator|LessThan0~7_cout0\,
	cout1 => \dut|data|divider|datap|comparator|LessThan0~7COUT1_92\);

-- Location: LC_X4_Y9_N7
\dut|data|divider|datap|comparator|LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|comparator|LessThan0~0_combout\ = (\dut|data|divider|datap|dr1|Dout\(15) & ((((!\dut|data|divider|datap|comparator|LessThan0~17_cout\ & \dut|data|divider|datap|comparator|LessThan0~7_cout0\) # 
-- (\dut|data|divider|datap|comparator|LessThan0~17_cout\ & \dut|data|divider|datap|comparator|LessThan0~7COUT1_92\) & \dut|data|divider|datap|dr2|Dout\(15))))) # (!\dut|data|divider|datap|dr1|Dout\(15) & 
-- ((((!\dut|data|divider|datap|comparator|LessThan0~17_cout\ & \dut|data|divider|datap|comparator|LessThan0~7_cout0\) # (\dut|data|divider|datap|comparator|LessThan0~17_cout\ & \dut|data|divider|datap|comparator|LessThan0~7COUT1_92\)) # 
-- (\dut|data|divider|datap|dr2|Dout\(15)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f550",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|data|divider|datap|dr1|Dout\(15),
	datad => \dut|data|divider|datap|dr2|Dout\(15),
	cin => \dut|data|divider|datap|comparator|LessThan0~17_cout\,
	cin0 => \dut|data|divider|datap|comparator|LessThan0~7_cout0\,
	cin1 => \dut|data|divider|datap|comparator|LessThan0~7COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|comparator|LessThan0~0_combout\);

-- Location: LC_X6_Y10_N8
\dut|data|divider|control|fsm_state.subtracting\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|control|fsm_state.subtracting~regout\ = DFFEAS((\dut|data|divider|control|fsm_state.comparing~regout\ & (!\dut|data|divider|datap|comparator|LessThan0~0_combout\ & ((\TRST~combout\) # (!\scan_instance|In_Reg|L2\(17))))), 
-- GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00b0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(17),
	datac => \dut|data|divider|control|fsm_state.comparing~regout\,
	datad => \dut|data|divider|datap|comparator|LessThan0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|control|fsm_state.subtracting~regout\);

-- Location: LC_X6_Y10_N9
\dut|data|divider|control|fsm_state.doing\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|control|fsm_state.doing~regout\ = DFFEAS((!\scan_instance|In_Reg|PO[17]~0_combout\ & ((\dut|data|divider|control|fsm_state.subtracting~regout\) # ((\dut|data|divider|control|fsm_state.comparing~regout\ & 
-- \dut|data|divider|datap|comparator|LessThan0~0_combout\)))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3222",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|control|fsm_state.subtracting~regout\,
	datab => \scan_instance|In_Reg|PO[17]~0_combout\,
	datac => \dut|data|divider|control|fsm_state.comparing~regout\,
	datad => \dut|data|divider|datap|comparator|LessThan0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|control|fsm_state.doing~regout\);

-- Location: LC_X6_Y10_N6
\dut|data|divider|control|fsm_state.donestate\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|control|fsm_state.donestate~regout\ = DFFEAS((\dut|data|divider|control|fsm_state.doing~regout\ & (\dut|data|divider|datap|dr5|Dout\(0) & ((\TRST~combout\) # (!\scan_instance|In_Reg|L2\(17))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), 
-- VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \TRST~combout\,
	datab => \dut|data|divider|control|fsm_state.doing~regout\,
	datac => \scan_instance|In_Reg|L2\(17),
	datad => \dut|data|divider|datap|dr5|Dout\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|control|fsm_state.donestate~regout\);

-- Location: LC_X6_Y7_N8
\dut|data|divider|control|fsm_state.phi\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|control|fsm_state.phi~regout\ = DFFEAS((!\scan_instance|In_Reg|PO[17]~0_combout\ & (!\dut|data|divider|control|fsm_state.donestate~regout\ & ((\dut|data|divider|control|fsm_state.phi~regout\) # 
-- (\dut|control|fsm_state.doDivide~regout\)))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0054",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \scan_instance|In_Reg|PO[17]~0_combout\,
	datab => \dut|data|divider|control|fsm_state.phi~regout\,
	datac => \dut|control|fsm_state.doDivide~regout\,
	datad => \dut|data|divider|control|fsm_state.donestate~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|control|fsm_state.phi~regout\);

-- Location: LC_X5_Y10_N4
\dut|data|divider|control|fsm_state.leftshift\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|control|fsm_state.leftshift~regout\ = DFFEAS((!\scan_instance|In_Reg|PO[17]~0_combout\ & ((\dut|data|divider|datap|dr2|Dout[15]~0_combout\) # ((!\dut|data|divider|control|fsm_state.phi~regout\ & 
-- \dut|control|fsm_state.doDivide~regout\)))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3130",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|control|fsm_state.phi~regout\,
	datab => \scan_instance|In_Reg|PO[17]~0_combout\,
	datac => \dut|data|divider|datap|dr2|Dout[15]~0_combout\,
	datad => \dut|control|fsm_state.doDivide~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|control|fsm_state.leftshift~regout\);

-- Location: LC_X5_Y9_N9
\dut|data|divider|datap|DRREG_in[14]~0\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|DRREG_in[14]~0_combout\ = (((\dut|data|divider|datap|dr2|Dout\(13) & \dut|data|divider|control|fsm_state.leftshift~regout\)))

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
	datac => \dut|data|divider|datap|dr2|Dout\(13),
	datad => \dut|data|divider|control|fsm_state.leftshift~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|DRREG_in[14]~0_combout\);

-- Location: LC_X5_Y9_N5
\dut|data|divider|datap|dr2|Dout[14]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr2|Dout\(14) = DFFEAS((\dut|data|divider|control|fsm_state~16_combout\ & (((\dut|data|dr2|Dout\(14))))) # (!\dut|data|divider|control|fsm_state~16_combout\ & ((\dut|data|divider|datap|dr2|Dout\(15)) # 
-- ((\dut|data|divider|datap|DRREG_in[14]~0_combout\)))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|dr2|Dout[13]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ee",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|datap|dr2|Dout\(15),
	datab => \dut|data|divider|datap|DRREG_in[14]~0_combout\,
	datac => \dut|data|dr2|Dout\(14),
	datad => \dut|data|divider|control|fsm_state~16_combout\,
	aclr => GND,
	ena => \dut|data|divider|datap|dr2|Dout[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr2|Dout\(14));

-- Location: LC_X2_Y7_N0
\scan_instance|In_Reg|L2[15]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(15) = DFFEAS((((!\TRST~combout\ & \scan_instance|In_Reg|L1\(15)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

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
	datad => \scan_instance|In_Reg|L1\(15),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(15));

-- Location: LC_X1_Y6_N4
\dut|data|dr2|Dout[15]\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr2|Dout\(15) = DFFEAS((\dut|control|T2~0_combout\ & (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(15)))) # (!\dut|control|T2~0_combout\ & (((\dut|data|divider|datap|dr1|Dout\(15))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , 
-- \dut|data|x2~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7520",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|control|T2~0_combout\,
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(15),
	datad => \dut|data|divider|datap|dr1|Dout\(15),
	aclr => GND,
	ena => \dut|data|x2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|dr2|Dout\(15));

-- Location: LC_X5_Y9_N7
\dut|data|divider|datap|dr2|Dout[15]~3\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr2|Dout[15]~3_combout\ = (\dut|data|divider|control|fsm_state~16_combout\ & (((\dut|data|dr2|Dout\(15))))) # (!\dut|data|divider|control|fsm_state~16_combout\ & (\dut|data|divider|datap|dr2|Dout\(15) & 
-- ((!\dut|data|divider|datap|dr2|Dout[13]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|data|divider|datap|dr2|Dout\(15),
	datab => \dut|data|divider|control|fsm_state~16_combout\,
	datac => \dut|data|dr2|Dout\(15),
	datad => \dut|data|divider|datap|dr2|Dout[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|dr2|Dout[15]~3_combout\);

-- Location: LC_X5_Y9_N8
\dut|data|divider|datap|dr2|Dout[15]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr2|Dout\(15) = DFFEAS((\dut|data|divider|datap|dr2|Dout[15]~3_combout\) # ((\dut|data|divider|datap|dr2|Dout\(14) & (!\dut|data|divider|control|fsm_state~16_combout\ & \dut|data|divider|datap|dr2|Dout[15]~0_combout\))), 
-- GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff20",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|datap|dr2|Dout\(14),
	datab => \dut|data|divider|control|fsm_state~16_combout\,
	datac => \dut|data|divider|datap|dr2|Dout[15]~0_combout\,
	datad => \dut|data|divider|datap|dr2|Dout[15]~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr2|Dout\(15));

-- Location: LC_X5_Y10_N5
\dut|data|divider|datap|dr2|Dout[15]~0\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr2|Dout[15]~0_combout\ = (((!\dut|data|divider|datap|dr2|Dout\(15) & \dut|data|divider|control|fsm_state.leftshift~regout\)))

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
	datac => \dut|data|divider|datap|dr2|Dout\(15),
	datad => \dut|data|divider|control|fsm_state.leftshift~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|dr2|Dout[15]~0_combout\);

-- Location: LC_X2_Y9_N4
\dut|data|divider|datap|dr2|Dout[13]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr2|Dout\(13) = DFFEAS((\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & (\dut|data|divider|datap|dr2|Dout\(12))) # (!\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & (((\dut|data|divider|datap|dr2|Dout\(14))))), 
-- GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|dr2|Dout[13]~2_combout\, \dut|data|dr2|Dout\(13), , , \dut|data|divider|control|fsm_state~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|datap|dr2|Dout\(12),
	datab => \dut|data|divider|datap|dr2|Dout[15]~0_combout\,
	datac => \dut|data|dr2|Dout\(13),
	datad => \dut|data|divider|datap|dr2|Dout\(14),
	aclr => GND,
	sload => \dut|data|divider|control|fsm_state~16_combout\,
	ena => \dut|data|divider|datap|dr2|Dout[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr2|Dout\(13));

-- Location: LC_X2_Y9_N3
\dut|data|divider|datap|dr2|Dout[12]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr2|Dout\(12) = DFFEAS(((\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & ((\dut|data|divider|datap|dr2|Dout\(11)))) # (!\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & (\dut|data|divider|datap|dr2|Dout\(13)))), 
-- GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|dr2|Dout[13]~2_combout\, \dut|data|dr2|Dout\(12), , , \dut|data|divider|control|fsm_state~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|datap|dr2|Dout\(13),
	datab => \dut|data|divider|datap|dr2|Dout\(11),
	datac => \dut|data|dr2|Dout\(12),
	datad => \dut|data|divider|datap|dr2|Dout[15]~0_combout\,
	aclr => GND,
	sload => \dut|data|divider|control|fsm_state~16_combout\,
	ena => \dut|data|divider|datap|dr2|Dout[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr2|Dout\(12));

-- Location: LC_X2_Y9_N9
\dut|data|divider|datap|dr2|Dout[11]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr2|Dout\(11) = DFFEAS(((\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & ((\dut|data|divider|datap|dr2|Dout\(10)))) # (!\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & (\dut|data|divider|datap|dr2|Dout\(12)))), 
-- GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|dr2|Dout[13]~2_combout\, \dut|data|dr2|Dout\(11), , , \dut|data|divider|control|fsm_state~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|datap|dr2|Dout\(12),
	datab => \dut|data|divider|datap|dr2|Dout\(10),
	datac => \dut|data|dr2|Dout\(11),
	datad => \dut|data|divider|datap|dr2|Dout[15]~0_combout\,
	aclr => GND,
	sload => \dut|data|divider|control|fsm_state~16_combout\,
	ena => \dut|data|divider|datap|dr2|Dout[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr2|Dout\(11));

-- Location: LC_X2_Y9_N7
\dut|data|divider|datap|dr2|Dout[10]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr2|Dout\(10) = DFFEAS(((\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & ((\dut|data|divider|datap|dr2|Dout\(9)))) # (!\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & (\dut|data|divider|datap|dr2|Dout\(11)))), 
-- GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|dr2|Dout[13]~2_combout\, \dut|data|dr2|Dout\(10), , , \dut|data|divider|control|fsm_state~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|datap|dr2|Dout\(11),
	datab => \dut|data|divider|datap|dr2|Dout\(9),
	datac => \dut|data|dr2|Dout\(10),
	datad => \dut|data|divider|datap|dr2|Dout[15]~0_combout\,
	aclr => GND,
	sload => \dut|data|divider|control|fsm_state~16_combout\,
	ena => \dut|data|divider|datap|dr2|Dout[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr2|Dout\(10));

-- Location: LC_X2_Y9_N1
\dut|data|divider|datap|dr2|Dout[9]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr2|Dout\(9) = DFFEAS(((\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & (\dut|data|divider|datap|dr2|Dout\(8))) # (!\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & ((\dut|data|divider|datap|dr2|Dout\(10))))), 
-- GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|dr2|Dout[13]~2_combout\, \dut|data|dr2|Dout\(9), , , \dut|data|divider|control|fsm_state~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|datap|dr2|Dout\(8),
	datab => \dut|data|divider|datap|dr2|Dout\(10),
	datac => \dut|data|dr2|Dout\(9),
	datad => \dut|data|divider|datap|dr2|Dout[15]~0_combout\,
	aclr => GND,
	sload => \dut|data|divider|control|fsm_state~16_combout\,
	ena => \dut|data|divider|datap|dr2|Dout[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr2|Dout\(9));

-- Location: LC_X2_Y9_N6
\dut|data|divider|datap|dr2|Dout[8]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr2|Dout\(8) = DFFEAS(((\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & (\dut|data|divider|datap|dr2|Dout\(7))) # (!\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & ((\dut|data|divider|datap|dr2|Dout\(9))))), 
-- GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|dr2|Dout[13]~2_combout\, \dut|data|dr2|Dout\(8), , , \dut|data|divider|control|fsm_state~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|datap|dr2|Dout\(7),
	datab => \dut|data|divider|datap|dr2|Dout\(9),
	datac => \dut|data|dr2|Dout\(8),
	datad => \dut|data|divider|datap|dr2|Dout[15]~0_combout\,
	aclr => GND,
	sload => \dut|data|divider|control|fsm_state~16_combout\,
	ena => \dut|data|divider|datap|dr2|Dout[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr2|Dout\(8));

-- Location: LC_X2_Y9_N2
\dut|data|divider|datap|dr2|Dout[7]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr2|Dout\(7) = DFFEAS(((\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & ((\dut|data|divider|datap|dr2|Dout\(6)))) # (!\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & (\dut|data|divider|datap|dr2|Dout\(8)))), 
-- GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|dr2|Dout[13]~2_combout\, \dut|data|dr2|Dout\(7), , , \dut|data|divider|control|fsm_state~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|datap|dr2|Dout\(8),
	datab => \dut|data|divider|datap|dr2|Dout\(6),
	datac => \dut|data|dr2|Dout\(7),
	datad => \dut|data|divider|datap|dr2|Dout[15]~0_combout\,
	aclr => GND,
	sload => \dut|data|divider|control|fsm_state~16_combout\,
	ena => \dut|data|divider|datap|dr2|Dout[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr2|Dout\(7));

-- Location: LC_X2_Y9_N0
\dut|data|divider|datap|dr2|Dout[6]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr2|Dout\(6) = DFFEAS(((\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & (\dut|data|divider|datap|dr2|Dout\(5))) # (!\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & ((\dut|data|divider|datap|dr2|Dout\(7))))), 
-- GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|dr2|Dout[13]~2_combout\, \dut|data|dr2|Dout\(6), , , \dut|data|divider|control|fsm_state~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|datap|dr2|Dout\(5),
	datab => \dut|data|divider|datap|dr2|Dout\(7),
	datac => \dut|data|dr2|Dout\(6),
	datad => \dut|data|divider|datap|dr2|Dout[15]~0_combout\,
	aclr => GND,
	sload => \dut|data|divider|control|fsm_state~16_combout\,
	ena => \dut|data|divider|datap|dr2|Dout[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr2|Dout\(6));

-- Location: LC_X2_Y9_N5
\dut|data|divider|datap|dr2|Dout[5]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr2|Dout\(5) = DFFEAS(((\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & (\dut|data|divider|datap|dr2|Dout\(4))) # (!\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & ((\dut|data|divider|datap|dr2|Dout\(6))))), 
-- GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|dr2|Dout[13]~2_combout\, \dut|data|dr2|Dout\(5), , , \dut|data|divider|control|fsm_state~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|datap|dr2|Dout\(4),
	datab => \dut|data|divider|datap|dr2|Dout\(6),
	datac => \dut|data|dr2|Dout\(5),
	datad => \dut|data|divider|datap|dr2|Dout[15]~0_combout\,
	aclr => GND,
	sload => \dut|data|divider|control|fsm_state~16_combout\,
	ena => \dut|data|divider|datap|dr2|Dout[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr2|Dout\(5));

-- Location: LC_X5_Y7_N4
\scan_instance|In_Reg|L2[4]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(4) = DFFEAS(((!\TRST~combout\ & (\scan_instance|In_Reg|L1\(4)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L1\(4),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(4));

-- Location: LC_X2_Y8_N4
\dut|data|dr2|Dout[4]\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr2|Dout\(4) = DFFEAS((\dut|control|T2~0_combout\ & (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(4))))) # (!\dut|control|T2~0_combout\ & (((\dut|data|divider|datap|dr1|Dout\(4))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , 
-- \dut|data|x2~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7430",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \TRST~combout\,
	datab => \dut|control|T2~0_combout\,
	datac => \dut|data|divider|datap|dr1|Dout\(4),
	datad => \scan_instance|In_Reg|L2\(4),
	aclr => GND,
	ena => \dut|data|x2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|dr2|Dout\(4));

-- Location: LC_X4_Y10_N9
\dut|data|divider|datap|dr2|Dout[4]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr2|Dout\(4) = DFFEAS(((\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & (\dut|data|divider|datap|dr2|Dout\(3))) # (!\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & ((\dut|data|divider|datap|dr2|Dout\(5))))), 
-- GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|dr2|Dout[13]~2_combout\, \dut|data|dr2|Dout\(4), , , \dut|data|divider|control|fsm_state~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|datap|dr2|Dout\(3),
	datab => \dut|data|divider|datap|dr2|Dout\(5),
	datac => \dut|data|dr2|Dout\(4),
	datad => \dut|data|divider|datap|dr2|Dout[15]~0_combout\,
	aclr => GND,
	sload => \dut|data|divider|control|fsm_state~16_combout\,
	ena => \dut|data|divider|datap|dr2|Dout[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr2|Dout\(4));

-- Location: LC_X4_Y10_N8
\dut|data|divider|datap|dr2|Dout[3]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr2|Dout\(3) = DFFEAS(((\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & ((\dut|data|divider|datap|dr2|Dout\(2)))) # (!\dut|data|divider|datap|dr2|Dout[15]~0_combout\ & (\dut|data|divider|datap|dr2|Dout\(4)))), 
-- GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|dr2|Dout[13]~2_combout\, \dut|data|dr2|Dout\(3), , , \dut|data|divider|control|fsm_state~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|datap|dr2|Dout\(4),
	datab => \dut|data|divider|datap|dr2|Dout\(2),
	datac => \dut|data|dr2|Dout\(3),
	datad => \dut|data|divider|datap|dr2|Dout[15]~0_combout\,
	aclr => GND,
	sload => \dut|data|divider|control|fsm_state~16_combout\,
	ena => \dut|data|divider|datap|dr2|Dout[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr2|Dout\(3));

-- Location: LC_X4_Y10_N4
\dut|data|divider|datap|subtract|add3|cout~0\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|subtract|add3|cout~0_combout\ = (\dut|data|divider|datap|dr2|Dout\(3) & (((\dut|data|divider|datap|dr1|Dout\(3) & \dut|data|divider|datap|subtract|add2|cout~0_combout\)))) # (!\dut|data|divider|datap|dr2|Dout\(3) & 
-- (((\dut|data|divider|datap|dr1|Dout\(3)) # (\dut|data|divider|datap|subtract|add2|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f550",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|data|divider|datap|dr2|Dout\(3),
	datac => \dut|data|divider|datap|dr1|Dout\(3),
	datad => \dut|data|divider|datap|subtract|add2|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|subtract|add3|cout~0_combout\);

-- Location: LC_X2_Y6_N7
\dut|data|dr1|Dout[4]\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr1|Dout\(4) = DFFEAS((\dut|control|T1~0_combout\ & (\scan_instance|In_Reg|L2\(4) & ((!\TRST~combout\)))) # (!\dut|control|T1~0_combout\ & (((\dut|data|dr2|Dout\(4))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , 
-- \dut|data|dr1|Dout[15]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0acc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \scan_instance|In_Reg|L2\(4),
	datab => \dut|data|dr2|Dout\(4),
	datac => \TRST~combout\,
	datad => \dut|control|T1~0_combout\,
	aclr => GND,
	ena => \dut|data|dr1|Dout[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|dr1|Dout\(4));

-- Location: LC_X3_Y9_N0
\dut|data|divider|datap|subtract|add4|s~0\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|subtract|add4|s~0_combout\ = ((\dut|data|divider|datap|dr1|Dout\(4) $ (\dut|data|divider|datap|dr2|Dout\(4))))

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
	datac => \dut|data|divider|datap|dr1|Dout\(4),
	datad => \dut|data|divider|datap|dr2|Dout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|divider|datap|subtract|add4|s~0_combout\);

-- Location: LC_X3_Y10_N2
\dut|data|divider|datap|dr1|Dout[4]\ : maxv_lcell
-- Equation(s):
-- \dut|data|divider|datap|dr1|Dout\(4) = DFFEAS((\dut|data|divider|control|fsm_state~16_combout\ & (((\dut|data|dr1|Dout\(4))))) # (!\dut|data|divider|control|fsm_state~16_combout\ & (\dut|data|divider|datap|subtract|add3|cout~0_combout\ $ 
-- (((!\dut|data|divider|datap|subtract|add4|s~0_combout\))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|divider|datap|x1~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cca5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|divider|datap|subtract|add3|cout~0_combout\,
	datab => \dut|data|dr1|Dout\(4),
	datac => \dut|data|divider|datap|subtract|add4|s~0_combout\,
	datad => \dut|data|divider|control|fsm_state~16_combout\,
	aclr => GND,
	ena => \dut|data|divider|datap|x1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|divider|datap|dr1|Dout\(4));

-- Location: LC_X3_Y8_N4
\dut|data|comparator|LessThan0~1\ : maxv_lcell
-- Equation(s):
-- \dut|data|comparator|LessThan0~1_combout\ = (\dut|data|divider|datap|dr1|Dout\(4)) # ((\dut|data|divider|datap|dr1|Dout\(7)) # ((\dut|data|divider|datap|dr1|Dout\(5)) # (\dut|data|divider|datap|dr1|Dout\(6))))

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
	dataa => \dut|data|divider|datap|dr1|Dout\(4),
	datab => \dut|data|divider|datap|dr1|Dout\(7),
	datac => \dut|data|divider|datap|dr1|Dout\(5),
	datad => \dut|data|divider|datap|dr1|Dout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|comparator|LessThan0~1_combout\);

-- Location: LC_X4_Y9_N9
\dut|data|comparator|LessThan0~3\ : maxv_lcell
-- Equation(s):
-- \dut|data|comparator|LessThan0~3_combout\ = (\dut|data|divider|datap|dr1|Dout\(15)) # ((\dut|data|divider|datap|dr1|Dout\(12)) # ((\dut|data|divider|datap|dr1|Dout\(13)) # (\dut|data|divider|datap|dr1|Dout\(14))))

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
	dataa => \dut|data|divider|datap|dr1|Dout\(15),
	datab => \dut|data|divider|datap|dr1|Dout\(12),
	datac => \dut|data|divider|datap|dr1|Dout\(13),
	datad => \dut|data|divider|datap|dr1|Dout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|comparator|LessThan0~3_combout\);

-- Location: LC_X1_Y10_N1
\dut|data|comparator|LessThan0~2\ : maxv_lcell
-- Equation(s):
-- \dut|data|comparator|LessThan0~2_combout\ = (\dut|data|divider|datap|dr1|Dout\(9)) # ((\dut|data|divider|datap|dr1|Dout\(11)) # ((\dut|data|divider|datap|dr1|Dout\(10)) # (\dut|data|divider|datap|dr1|Dout\(8))))

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
	dataa => \dut|data|divider|datap|dr1|Dout\(9),
	datab => \dut|data|divider|datap|dr1|Dout\(11),
	datac => \dut|data|divider|datap|dr1|Dout\(10),
	datad => \dut|data|divider|datap|dr1|Dout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|comparator|LessThan0~2_combout\);

-- Location: LC_X3_Y9_N1
\dut|data|comparator|LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \dut|data|comparator|LessThan0~0_combout\ = (\dut|data|divider|datap|dr1|Dout\(1)) # ((\dut|data|divider|datap|dr1|Dout\(3)) # ((\dut|data|divider|datap|dr1|Dout\(2)) # (\dut|data|divider|datap|dr1|Dout\(0))))

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
	dataa => \dut|data|divider|datap|dr1|Dout\(1),
	datab => \dut|data|divider|datap|dr1|Dout\(3),
	datac => \dut|data|divider|datap|dr1|Dout\(2),
	datad => \dut|data|divider|datap|dr1|Dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|comparator|LessThan0~0_combout\);

-- Location: LC_X3_Y8_N5
\dut|data|comparator|LessThan0~4\ : maxv_lcell
-- Equation(s):
-- \dut|data|comparator|LessThan0~4_combout\ = (\dut|data|comparator|LessThan0~1_combout\) # ((\dut|data|comparator|LessThan0~3_combout\) # ((\dut|data|comparator|LessThan0~2_combout\) # (\dut|data|comparator|LessThan0~0_combout\)))

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
	dataa => \dut|data|comparator|LessThan0~1_combout\,
	datab => \dut|data|comparator|LessThan0~3_combout\,
	datac => \dut|data|comparator|LessThan0~2_combout\,
	datad => \dut|data|comparator|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|comparator|LessThan0~4_combout\);

-- Location: LC_X6_Y8_N6
\dut|control|fsm_state.input2\ : maxv_lcell
-- Equation(s):
-- \dut|control|fsm_state.input2~regout\ = DFFEAS((!\scan_instance|In_Reg|PO[17]~0_combout\ & ((\dut|control|fsm_state~10_combout\) # ((\dut|control|fsm_state.checkRem~regout\ & !\dut|data|comparator|LessThan0~4_combout\)))), 
-- GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2232",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|control|fsm_state~10_combout\,
	datab => \scan_instance|In_Reg|PO[17]~0_combout\,
	datac => \dut|control|fsm_state.checkRem~regout\,
	datad => \dut|data|comparator|LessThan0~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|control|fsm_state.input2~regout\);

-- Location: LC_X1_Y6_N6
\dut|control|T2~0\ : maxv_lcell
-- Equation(s):
-- \dut|control|T2~0_combout\ = (\dut|control|fsm_state.input2~regout\ & (!\TRST~combout\ & (!\dut|data|dr5|Dout\(0) & \scan_instance|In_Reg|L2\(18))))

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
	dataa => \dut|control|fsm_state.input2~regout\,
	datab => \TRST~combout\,
	datac => \dut|data|dr5|Dout\(0),
	datad => \scan_instance|In_Reg|L2\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|control|T2~0_combout\);

-- Location: LC_X1_Y6_N2
\dut|data|x2~0\ : maxv_lcell
-- Equation(s):
-- \dut|data|x2~0_combout\ = (\dut|control|T2~0_combout\) # (((\dut|control|fsm_state.checkRem~regout\ & \dut|data|comparator|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|control|T2~0_combout\,
	datac => \dut|control|fsm_state.checkRem~regout\,
	datad => \dut|data|comparator|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|x2~0_combout\);

-- Location: LC_X1_Y7_N0
\dut|control|fsm_state.doDivide\ : maxv_lcell
-- Equation(s):
-- \dut|control|fsm_state.doDivide~regout\ = DFFEAS((!\scan_instance|In_Reg|PO[17]~0_combout\ & ((\dut|data|x2~0_combout\) # ((\dut|control|fsm_state.doDivide~regout\ & !\dut|data|divider|control|fsm_state.donestate~regout\)))), 
-- GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0e",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|x2~0_combout\,
	datab => \dut|control|fsm_state.doDivide~regout\,
	datac => \scan_instance|In_Reg|PO[17]~0_combout\,
	datad => \dut|data|divider|control|fsm_state.donestate~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|control|fsm_state.doDivide~regout\);

-- Location: LC_X6_Y7_N7
\dut|control|fsm_state.checkRem\ : maxv_lcell
-- Equation(s):
-- \dut|control|fsm_state.checkRem~regout\ = DFFEAS((\dut|control|fsm_state.doDivide~regout\ & (\dut|data|divider|control|fsm_state.donestate~regout\ & ((\TRST~combout\) # (!\scan_instance|In_Reg|L2\(17))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , , , 
-- , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \TRST~combout\,
	datab => \dut|control|fsm_state.doDivide~regout\,
	datac => \scan_instance|In_Reg|L2\(17),
	datad => \dut|data|divider|control|fsm_state.donestate~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|control|fsm_state.checkRem~regout\);

-- Location: LC_X5_Y8_N1
\dut|data|x3~0\ : maxv_lcell
-- Equation(s):
-- \dut|data|x3~0_combout\ = (\dut|control|T0~0_combout\) # (((\dut|control|fsm_state.checkRem~regout\ & !\dut|data|comparator|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aafa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|control|T0~0_combout\,
	datac => \dut|control|fsm_state.checkRem~regout\,
	datad => \dut|data|comparator|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|data|x3~0_combout\);

-- Location: LC_X5_Y8_N3
\dut|data|dr5|Dout[7]\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr5|Dout\(7) = DFFEAS((!\dut|control|T0~0_combout\ & ((\dut|data|dr5|Dout\(7)) # ((\dut|control|fsm_state.checkRem~regout\ & !\dut|data|comparator|LessThan0~4_combout\)))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|x3~0_combout\, , 
-- , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5504",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|control|T0~0_combout\,
	datab => \dut|control|fsm_state.checkRem~regout\,
	datac => \dut|data|comparator|LessThan0~4_combout\,
	datad => \dut|data|dr5|Dout\(7),
	aclr => GND,
	ena => \dut|data|x3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|dr5|Dout\(7));

-- Location: LC_X5_Y8_N4
\dut|data|dr5|Dout[6]\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr5|Dout\(6) = DFFEAS((\dut|data|dr5|Dout\(7) & (((\TRST~combout\) # (\dut|control|fsm_state.phi~regout\)) # (!\scan_instance|In_Reg|L2\(19)))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|x3~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaa2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|data|dr5|Dout\(7),
	datab => \scan_instance|In_Reg|L2\(19),
	datac => \TRST~combout\,
	datad => \dut|control|fsm_state.phi~regout\,
	aclr => GND,
	ena => \dut|data|x3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|dr5|Dout\(6));

-- Location: LC_X5_Y8_N5
\dut|data|dr5|Dout[5]\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr5|Dout\(5) = DFFEAS((\dut|data|dr5|Dout\(6) & (((\TRST~combout\) # (\dut|control|fsm_state.phi~regout\)) # (!\scan_instance|In_Reg|L2\(19)))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|x3~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0d0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \scan_instance|In_Reg|L2\(19),
	datab => \TRST~combout\,
	datac => \dut|data|dr5|Dout\(6),
	datad => \dut|control|fsm_state.phi~regout\,
	aclr => GND,
	ena => \dut|data|x3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|dr5|Dout\(5));

-- Location: LC_X5_Y8_N7
\dut|data|dr5|Dout[4]\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr5|Dout\(4) = DFFEAS((\dut|data|dr5|Dout\(5) & ((\TRST~combout\) # ((\dut|control|fsm_state.phi~regout\) # (!\scan_instance|In_Reg|L2\(19))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|x3~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e0f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \TRST~combout\,
	datab => \dut|control|fsm_state.phi~regout\,
	datac => \dut|data|dr5|Dout\(5),
	datad => \scan_instance|In_Reg|L2\(19),
	aclr => GND,
	ena => \dut|data|x3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|dr5|Dout\(4));

-- Location: LC_X5_Y8_N0
\dut|data|dr5|Dout[3]\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr5|Dout\(3) = DFFEAS((\dut|data|dr5|Dout\(4) & ((\TRST~combout\) # ((\dut|control|fsm_state.phi~regout\) # (!\scan_instance|In_Reg|L2\(19))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|x3~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0b0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(19),
	datac => \dut|data|dr5|Dout\(4),
	datad => \dut|control|fsm_state.phi~regout\,
	aclr => GND,
	ena => \dut|data|x3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|dr5|Dout\(3));

-- Location: LC_X5_Y8_N6
\dut|data|dr5|Dout[2]\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr5|Dout\(2) = DFFEAS((\dut|data|dr5|Dout\(3) & ((\TRST~combout\) # ((\dut|control|fsm_state.phi~regout\) # (!\scan_instance|In_Reg|L2\(19))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|x3~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc8c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \TRST~combout\,
	datab => \dut|data|dr5|Dout\(3),
	datac => \scan_instance|In_Reg|L2\(19),
	datad => \dut|control|fsm_state.phi~regout\,
	aclr => GND,
	ena => \dut|data|x3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|dr5|Dout\(2));

-- Location: LC_X5_Y8_N2
\dut|data|dr5|Dout[1]\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr5|Dout\(1) = DFFEAS((\dut|data|dr5|Dout\(2) & ((\TRST~combout\) # ((\dut|control|fsm_state.phi~regout\) # (!\scan_instance|In_Reg|L2\(19))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|x3~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0b0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(19),
	datac => \dut|data|dr5|Dout\(2),
	datad => \dut|control|fsm_state.phi~regout\,
	aclr => GND,
	ena => \dut|data|x3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|dr5|Dout\(1));

-- Location: LC_X5_Y8_N9
\dut|data|dr5|Dout[0]\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr5|Dout\(0) = DFFEAS((\dut|data|dr5|Dout\(1) & ((\TRST~combout\) # ((\dut|control|fsm_state.phi~regout\) # (!\scan_instance|In_Reg|L2\(19))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , \dut|data|x3~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc8c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \TRST~combout\,
	datab => \dut|data|dr5|Dout\(1),
	datac => \scan_instance|In_Reg|L2\(19),
	datad => \dut|control|fsm_state.phi~regout\,
	aclr => GND,
	ena => \dut|data|x3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|dr5|Dout\(0));

-- Location: LC_X6_Y8_N7
\dut|control|fsm_state.donestate\ : maxv_lcell
-- Equation(s):
-- \dut|control|fsm_state.donestate~regout\ = DFFEAS((\dut|data|dr5|Dout\(0) & (\dut|control|fsm_state.input2~regout\ & ((\TRST~combout\) # (!\scan_instance|In_Reg|L2\(17))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(17),
	datac => \dut|data|dr5|Dout\(0),
	datad => \dut|control|fsm_state.input2~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|control|fsm_state.donestate~regout\);

-- Location: LC_X6_Y8_N9
\dut|control|fsm_state.phi\ : maxv_lcell
-- Equation(s):
-- \dut|control|fsm_state.phi~regout\ = DFFEAS((!\scan_instance|In_Reg|PO[17]~0_combout\ & (!\dut|control|fsm_state.donestate~regout\ & ((\dut|control|T0~1_combout\) # (\dut|control|fsm_state.phi~regout\)))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , , , 
-- , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0504",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \scan_instance|In_Reg|PO[17]~0_combout\,
	datab => \dut|control|T0~1_combout\,
	datac => \dut|control|fsm_state.donestate~regout\,
	datad => \dut|control|fsm_state.phi~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|control|fsm_state.phi~regout\);

-- Location: LC_X5_Y8_N8
\dut|control|T0~0\ : maxv_lcell
-- Equation(s):
-- \dut|control|T0~0_combout\ = (!\TRST~combout\ & (!\dut|control|fsm_state.phi~regout\ & ((\scan_instance|In_Reg|L2\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \dut|control|fsm_state.phi~regout\,
	datad => \scan_instance|In_Reg|L2\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|control|T0~0_combout\);

-- Location: LC_X6_Y8_N5
\dut|control|fsm_state.input1\ : maxv_lcell
-- Equation(s):
-- \dut|control|fsm_state.input1~regout\ = DFFEAS((!\scan_instance|In_Reg|PO[17]~0_combout\ & ((\dut|control|T0~0_combout\) # ((!\dut|data|dr1|Dout[0]~3_combout\ & \dut|control|fsm_state.input1~regout\)))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , , , , 
-- , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0b0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|control|T0~0_combout\,
	datab => \dut|data|dr1|Dout[0]~3_combout\,
	datac => \scan_instance|In_Reg|PO[17]~0_combout\,
	datad => \dut|control|fsm_state.input1~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|control|fsm_state.input1~regout\);

-- Location: LC_X2_Y6_N8
\dut|control|T1~0\ : maxv_lcell
-- Equation(s):
-- \dut|control|T1~0_combout\ = (\scan_instance|In_Reg|L2\(18) & (!\TRST~combout\ & ((\dut|control|fsm_state.input1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(18),
	datab => \TRST~combout\,
	datad => \dut|control|fsm_state.input1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|control|T1~0_combout\);

-- Location: LC_X4_Y7_N2
\dut|data|dr1|Dout[15]\ : maxv_lcell
-- Equation(s):
-- \dut|data|dr1|Dout\(15) = DFFEAS((\dut|control|T1~0_combout\ & (\scan_instance|In_Reg|L2\(15) & (!\TRST~combout\))) # (!\dut|control|T1~0_combout\ & (((\dut|data|dr2|Dout\(15))))), GLOBAL(\scan_instance|In_Reg|PO\(16)), VCC, , 
-- \dut|data|dr1|Dout[15]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5d08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(16),
	dataa => \dut|control|T1~0_combout\,
	datab => \scan_instance|In_Reg|L2\(15),
	datac => \TRST~combout\,
	datad => \dut|data|dr2|Dout\(15),
	aclr => GND,
	ena => \dut|data|dr1|Dout[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|data|dr1|Dout\(15));

-- Location: LC_X4_Y7_N0
\scan_instance|Out_Reg|L1[15]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(15) = DFFEAS((\scan_instance|Selector3~0\ & ((\TRST~combout\ & ((\dut|data|dr1|Dout\(15)))) # (!\TRST~combout\ & (\scan_instance|In_Reg|L1\(0))))) # (!\scan_instance|Selector3~0\ & (((\dut|data|dr1|Dout\(15))))), 
-- GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[4]~0_combout\, , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd20",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Selector3~0\,
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L1\(0),
	datad => \dut|data|dr1|Dout\(15),
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(15));

-- Location: LC_X4_Y7_N4
\scan_instance|Out_Reg|L1[14]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(14) = DFFEAS((\scan_instance|Selector3~0\ & ((\TRST~combout\ & ((\dut|data|dr1|Dout\(14)))) # (!\TRST~combout\ & (\scan_instance|Out_Reg|L1\(15))))) # (!\scan_instance|Selector3~0\ & (((\dut|data|dr1|Dout\(14))))), 
-- GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[4]~0_combout\, , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd20",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Selector3~0\,
	datab => \TRST~combout\,
	datac => \scan_instance|Out_Reg|L1\(15),
	datad => \dut|data|dr1|Dout\(14),
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(14));

-- Location: LC_X4_Y7_N5
\scan_instance|Out_Reg|L1[13]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(13) = DFFEAS((\scan_instance|Selector3~0\ & ((\TRST~combout\ & ((\dut|data|dr1|Dout\(13)))) # (!\TRST~combout\ & (\scan_instance|Out_Reg|L1\(14))))) # (!\scan_instance|Selector3~0\ & (((\dut|data|dr1|Dout\(13))))), 
-- GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[4]~0_combout\, , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd20",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Selector3~0\,
	datab => \TRST~combout\,
	datac => \scan_instance|Out_Reg|L1\(14),
	datad => \dut|data|dr1|Dout\(13),
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(13));

-- Location: LC_X4_Y7_N7
\scan_instance|Out_Reg|L1[12]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(12) = DFFEAS((\scan_instance|Selector3~0\ & ((\TRST~combout\ & ((\dut|data|dr1|Dout\(12)))) # (!\TRST~combout\ & (\scan_instance|Out_Reg|L1\(13))))) # (!\scan_instance|Selector3~0\ & (((\dut|data|dr1|Dout\(12))))), 
-- GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[4]~0_combout\, , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd20",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Selector3~0\,
	datab => \TRST~combout\,
	datac => \scan_instance|Out_Reg|L1\(13),
	datad => \dut|data|dr1|Dout\(12),
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(12));

-- Location: LC_X3_Y7_N7
\scan_instance|Out_Reg|L1[11]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(11) = DFFEAS((\TRST~combout\ & (((\dut|data|dr1|Dout\(11))))) # (!\TRST~combout\ & ((\scan_instance|Selector3~0\ & (\scan_instance|Out_Reg|L1\(12))) # (!\scan_instance|Selector3~0\ & ((\dut|data|dr1|Dout\(11)))))), 
-- GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[4]~0_combout\, , , \TRST~combout\, )

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
	dataa => \scan_instance|Out_Reg|L1\(12),
	datab => \TRST~combout\,
	datac => \scan_instance|Selector3~0\,
	datad => \dut|data|dr1|Dout\(11),
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(11));

-- Location: LC_X3_Y7_N0
\scan_instance|Out_Reg|L1[10]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(10) = DFFEAS((\TRST~combout\ & (((\dut|data|dr1|Dout\(10))))) # (!\TRST~combout\ & ((\scan_instance|Selector3~0\ & (\scan_instance|Out_Reg|L1\(11))) # (!\scan_instance|Selector3~0\ & ((\dut|data|dr1|Dout\(10)))))), 
-- GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[4]~0_combout\, , , \TRST~combout\, )

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
	dataa => \scan_instance|Out_Reg|L1\(11),
	datab => \TRST~combout\,
	datac => \scan_instance|Selector3~0\,
	datad => \dut|data|dr1|Dout\(10),
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(10));

-- Location: LC_X3_Y6_N8
\scan_instance|Out_Reg|L1[9]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(9) = DFFEAS((\TRST~combout\ & (((\dut|data|dr1|Dout\(9))))) # (!\TRST~combout\ & ((\scan_instance|Selector3~0\ & (\scan_instance|Out_Reg|L1\(10))) # (!\scan_instance|Selector3~0\ & ((\dut|data|dr1|Dout\(9)))))), 
-- GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[4]~0_combout\, , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cacc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Out_Reg|L1\(10),
	datab => \dut|data|dr1|Dout\(9),
	datac => \TRST~combout\,
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(9));

-- Location: LC_X3_Y6_N4
\scan_instance|Out_Reg|L1[8]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(8) = DFFEAS((\TRST~combout\ & (((\dut|data|dr1|Dout\(8))))) # (!\TRST~combout\ & ((\scan_instance|Selector3~0\ & (\scan_instance|Out_Reg|L1\(9))) # (!\scan_instance|Selector3~0\ & ((\dut|data|dr1|Dout\(8)))))), 
-- GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[4]~0_combout\, , , \TRST~combout\, )

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
	datab => \scan_instance|Out_Reg|L1\(9),
	datac => \scan_instance|Selector3~0\,
	datad => \dut|data|dr1|Dout\(8),
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(8));

-- Location: LC_X3_Y6_N1
\scan_instance|Out_Reg|L1[7]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(7) = DFFEAS((\TRST~combout\ & (((\dut|data|dr1|Dout\(7))))) # (!\TRST~combout\ & ((\scan_instance|Selector3~0\ & (\scan_instance|Out_Reg|L1\(8))) # (!\scan_instance|Selector3~0\ & ((\dut|data|dr1|Dout\(7)))))), 
-- GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[4]~0_combout\, , , \TRST~combout\, )

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
	datab => \scan_instance|Out_Reg|L1\(8),
	datac => \scan_instance|Selector3~0\,
	datad => \dut|data|dr1|Dout\(7),
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(7));

-- Location: LC_X3_Y6_N0
\scan_instance|Out_Reg|L1[6]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(6) = DFFEAS((\TRST~combout\ & (((\dut|data|dr1|Dout\(6))))) # (!\TRST~combout\ & ((\scan_instance|Selector3~0\ & (\scan_instance|Out_Reg|L1\(7))) # (!\scan_instance|Selector3~0\ & ((\dut|data|dr1|Dout\(6)))))), 
-- GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[4]~0_combout\, , , \TRST~combout\, )

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
	datab => \scan_instance|Out_Reg|L1\(7),
	datac => \scan_instance|Selector3~0\,
	datad => \dut|data|dr1|Dout\(6),
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(6));

-- Location: LC_X3_Y6_N9
\scan_instance|Out_Reg|L1[5]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(5) = DFFEAS((\TRST~combout\ & (((\dut|data|dr1|Dout\(5))))) # (!\TRST~combout\ & ((\scan_instance|Selector3~0\ & (\scan_instance|Out_Reg|L1\(6))) # (!\scan_instance|Selector3~0\ & ((\dut|data|dr1|Dout\(5)))))), 
-- GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[4]~0_combout\, , , \TRST~combout\, )

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
	datab => \scan_instance|Out_Reg|L1\(6),
	datac => \scan_instance|Selector3~0\,
	datad => \dut|data|dr1|Dout\(5),
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(5));

-- Location: LC_X3_Y6_N7
\scan_instance|Out_Reg|L1[4]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(4) = DFFEAS((\TRST~combout\ & (((\dut|data|dr1|Dout\(4))))) # (!\TRST~combout\ & ((\scan_instance|Selector3~0\ & (\scan_instance|Out_Reg|L1\(5))) # (!\scan_instance|Selector3~0\ & ((\dut|data|dr1|Dout\(4)))))), 
-- GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[4]~0_combout\, , , \TRST~combout\, )

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
	datab => \scan_instance|Out_Reg|L1\(5),
	datac => \scan_instance|Selector3~0\,
	datad => \dut|data|dr1|Dout\(4),
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(4));

-- Location: LC_X3_Y8_N7
\scan_instance|Out_Reg|L1[3]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(3) = DFFEAS((\TRST~combout\ & (((\dut|data|dr1|Dout\(3))))) # (!\TRST~combout\ & ((\scan_instance|Selector3~0\ & (\scan_instance|Out_Reg|L1\(4))) # (!\scan_instance|Selector3~0\ & ((\dut|data|dr1|Dout\(3)))))), 
-- GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[4]~0_combout\, , , \TRST~combout\, )

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
	dataa => \scan_instance|Out_Reg|L1\(4),
	datab => \TRST~combout\,
	datac => \scan_instance|Selector3~0\,
	datad => \dut|data|dr1|Dout\(3),
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(3));

-- Location: LC_X4_Y7_N6
\scan_instance|Out_Reg|L1[2]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(2) = DFFEAS((\scan_instance|Selector3~0\ & ((\TRST~combout\ & ((\dut|data|dr1|Dout\(2)))) # (!\TRST~combout\ & (\scan_instance|Out_Reg|L1\(3))))) # (!\scan_instance|Selector3~0\ & (((\dut|data|dr1|Dout\(2))))), 
-- GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[4]~0_combout\, , , \TRST~combout\, )

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
	datab => \scan_instance|Out_Reg|L1\(3),
	datac => \TRST~combout\,
	datad => \dut|data|dr1|Dout\(2),
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(2));

-- Location: LC_X3_Y6_N6
\scan_instance|Out_Reg|L1[1]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(1) = DFFEAS((\TRST~combout\ & (((\dut|data|dr1|Dout\(1))))) # (!\TRST~combout\ & ((\scan_instance|Selector3~0\ & (\scan_instance|Out_Reg|L1\(2))) # (!\scan_instance|Selector3~0\ & ((\dut|data|dr1|Dout\(1)))))), 
-- GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[4]~0_combout\, , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datab => \scan_instance|Out_Reg|L1\(2),
	datac => \dut|data|dr1|Dout\(1),
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(1));

-- Location: LC_X3_Y6_N2
\scan_instance|Out_Reg|L1[0]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(0) = DFFEAS((\TRST~combout\ & (((\dut|data|dr1|Dout\(0))))) # (!\TRST~combout\ & ((\scan_instance|Selector3~0\ & (\scan_instance|Out_Reg|L1\(1))) # (!\scan_instance|Selector3~0\ & ((\dut|data|dr1|Dout\(0)))))), 
-- GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[4]~0_combout\, , , \TRST~combout\, )

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
	datad => \dut|data|dr1|Dout\(0),
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1[4]~0_combout\,
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


