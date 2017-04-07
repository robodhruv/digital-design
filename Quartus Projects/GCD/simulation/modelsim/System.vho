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

-- DATE "04/07/2017 16:52:31"

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

ENTITY 	System IS
    PORT (
	din : IN std_logic_vector(15 DOWNTO 0);
	dout : BUFFER std_logic_vector(15 DOWNTO 0);
	start : IN std_logic;
	done : BUFFER std_logic;
	erdy : IN std_logic;
	srdy : BUFFER std_logic;
	clk : IN std_logic;
	reset : IN std_logic
	);
END System;

-- Design Ports Information


ARCHITECTURE structure OF System IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_din : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_dout : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_start : std_logic;
SIGNAL ww_done : std_logic;
SIGNAL ww_erdy : std_logic;
SIGNAL ww_srdy : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~5\ : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~10\ : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~15\ : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~20\ : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~25\ : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~30\ : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~35\ : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~40\ : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~45\ : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~50\ : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~55\ : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~60\ : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~65\ : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~70\ : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~75\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \erdy~combout\ : std_logic;
SIGNAL \start~combout\ : std_logic;
SIGNAL \control|Selector6~2_combout\ : std_logic;
SIGNAL \control|T1~0_combout\ : std_logic;
SIGNAL \control|Selector6~1_combout\ : std_logic;
SIGNAL \control|fsm_state.input2~regout\ : std_logic;
SIGNAL \control|T2~0_combout\ : std_logic;
SIGNAL \data|dr1|Dout[0]~0_combout\ : std_logic;
SIGNAL \data|divider|control|fsm_state~12_combout\ : std_logic;
SIGNAL \data|divider|datap|subtract|add14|s~0_combout\ : std_logic;
SIGNAL \data|divider|datap|subtract|add8|s~0_combout\ : std_logic;
SIGNAL \data|divider|datap|subtract|add6|s~0_combout\ : std_logic;
SIGNAL \data|divider|datap|subtract|add5|s~0_combout\ : std_logic;
SIGNAL \data|divider|datap|subtract|add4|s~0_combout\ : std_logic;
SIGNAL \data|divider|datap|x1~combout\ : std_logic;
SIGNAL \data|divider|datap|dr5|Dout[0]~0_combout\ : std_logic;
SIGNAL \data|divider|datap|dr2|Dout[5]~2_combout\ : std_logic;
SIGNAL \data|divider|datap|subtract|add1|s~0_combout\ : std_logic;
SIGNAL \data|divider|datap|subtract|add2|s~0_combout\ : std_logic;
SIGNAL \data|divider|datap|subtract|add1|cout~0_combout\ : std_logic;
SIGNAL \data|divider|datap|subtract|add2|cout~0_combout\ : std_logic;
SIGNAL \data|divider|datap|subtract|add3|s~0_combout\ : std_logic;
SIGNAL \data|divider|datap|subtract|add3|cout~0_combout\ : std_logic;
SIGNAL \data|divider|datap|subtract|add4|cout~0_combout\ : std_logic;
SIGNAL \data|divider|datap|subtract|add5|cout~0_combout\ : std_logic;
SIGNAL \data|divider|datap|subtract|add6|cout~0_combout\ : std_logic;
SIGNAL \data|divider|datap|subtract|add7|cout~0_combout\ : std_logic;
SIGNAL \data|divider|datap|subtract|add9|s~0_combout\ : std_logic;
SIGNAL \data|divider|datap|subtract|add8|cout~0_combout\ : std_logic;
SIGNAL \data|divider|datap|subtract|add10|s~0_combout\ : std_logic;
SIGNAL \data|divider|datap|subtract|add9|cout~0_combout\ : std_logic;
SIGNAL \data|divider|datap|subtract|add11|s~0_combout\ : std_logic;
SIGNAL \data|divider|datap|subtract|add10|cout~0_combout\ : std_logic;
SIGNAL \data|divider|datap|subtract|add11|cout~0_combout\ : std_logic;
SIGNAL \data|divider|datap|subtract|add12|s~0_combout\ : std_logic;
SIGNAL \data|divider|datap|subtract|add13|s~0_combout\ : std_logic;
SIGNAL \data|divider|datap|subtract|add12|cout~0_combout\ : std_logic;
SIGNAL \data|divider|datap|subtract|add13|cout~0_combout\ : std_logic;
SIGNAL \data|divider|datap|DDREG_in[15]~16_combout\ : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~77_cout0\ : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~77COUT1_81\ : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~72_cout0\ : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~72COUT1_82\ : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~67_cout\ : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~62_cout0\ : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~62COUT1_83\ : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~57_cout0\ : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~57COUT1_84\ : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~52_cout0\ : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~52COUT1_85\ : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~47_cout0\ : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~47COUT1_86\ : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~42_cout\ : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~37_cout0\ : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~37COUT1_87\ : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~32_cout0\ : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~32COUT1_88\ : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~27_cout0\ : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~27COUT1_89\ : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~22_cout0\ : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~22COUT1_90\ : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~17_cout\ : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~12_cout0\ : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~12COUT1_91\ : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~7_cout0\ : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~7COUT1_92\ : std_logic;
SIGNAL \data|divider|datap|comparator|LessThan0~0_combout\ : std_logic;
SIGNAL \data|divider|control|fsm_state.subtracting~regout\ : std_logic;
SIGNAL \data|divider|control|fsm_state~17_combout\ : std_logic;
SIGNAL \data|divider|control|fsm_state~18_combout\ : std_logic;
SIGNAL \data|divider|control|fsm_state.comparing~regout\ : std_logic;
SIGNAL \data|divider|control|fsm_state.doing~regout\ : std_logic;
SIGNAL \data|divider|control|fsm_state.donestate~regout\ : std_logic;
SIGNAL \data|divider|control|fsm_state.phi~regout\ : std_logic;
SIGNAL \data|divider|control|fsm_state.leftshift~regout\ : std_logic;
SIGNAL \data|divider|datap|DRREG_in[14]~0_combout\ : std_logic;
SIGNAL \data|divider|datap|dr2|Dout[15]~3_combout\ : std_logic;
SIGNAL \data|divider|datap|dr2|Dout[15]~0_combout\ : std_logic;
SIGNAL \data|divider|datap|subtract|add7|s~0_combout\ : std_logic;
SIGNAL \data|comparator|LessThan0~1_combout\ : std_logic;
SIGNAL \data|comparator|LessThan0~3_combout\ : std_logic;
SIGNAL \data|comparator|LessThan0~2_combout\ : std_logic;
SIGNAL \data|comparator|LessThan0~0_combout\ : std_logic;
SIGNAL \data|comparator|LessThan0~4_combout\ : std_logic;
SIGNAL \data|x2~0_combout\ : std_logic;
SIGNAL \control|fsm_state.doDivide~regout\ : std_logic;
SIGNAL \control|fsm_state.checkRem~regout\ : std_logic;
SIGNAL \control|Selector6~4_combout\ : std_logic;
SIGNAL \control|fsm_state.donestate~regout\ : std_logic;
SIGNAL \control|fsm_state.phi~regout\ : std_logic;
SIGNAL \control|Selector6~0_combout\ : std_logic;
SIGNAL \control|fsm_state.input1~regout\ : std_logic;
SIGNAL \control|Selector6~3_combout\ : std_logic;
SIGNAL \data|divider|datap|dr5|Dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \data|divider|datap|dr2|Dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \data|dr2|Dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \din~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \data|dr5|Dout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \data|divider|datap|dr1|Dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \data|dr1|Dout\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_din <= din;
dout <= ww_dout;
ww_start <= start;
done <= ww_done;
ww_erdy <= erdy;
srdy <= ww_srdy;
ww_clk <= clk;
ww_reset <= reset;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_din(0),
	combout => \din~combout\(0));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\erdy~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_erdy,
	combout => \erdy~combout\);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\start~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_start,
	combout => \start~combout\);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_din(15),
	combout => \din~combout\(15));

-- Location: LC_X4_Y4_N5
\control|Selector6~2\ : maxv_lcell
-- Equation(s):
-- \control|Selector6~2_combout\ = (!\data|dr5|Dout\(0) & (\control|fsm_state.input2~regout\ & (!\erdy~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0404",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data|dr5|Dout\(0),
	datab => \control|fsm_state.input2~regout\,
	datac => \erdy~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \control|Selector6~2_combout\);

-- Location: LC_X4_Y4_N7
\control|T1~0\ : maxv_lcell
-- Equation(s):
-- \control|T1~0_combout\ = (((\erdy~combout\ & \control|fsm_state.input1~regout\)))

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
	datac => \erdy~combout\,
	datad => \control|fsm_state.input1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \control|T1~0_combout\);

-- Location: LC_X4_Y4_N1
\control|Selector6~1\ : maxv_lcell
-- Equation(s):
-- \control|Selector6~1_combout\ = (((\control|fsm_state.checkRem~regout\ & !\data|comparator|LessThan0~4_combout\)))

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
	datac => \control|fsm_state.checkRem~regout\,
	datad => \data|comparator|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \control|Selector6~1_combout\);

-- Location: LC_X4_Y4_N2
\control|fsm_state.input2\ : maxv_lcell
-- Equation(s):
-- \control|fsm_state.input2~regout\ = DFFEAS((!\reset~combout\ & ((\control|Selector6~2_combout\) # ((\control|T1~0_combout\) # (\control|Selector6~1_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3332",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \control|Selector6~2_combout\,
	datab => \reset~combout\,
	datac => \control|T1~0_combout\,
	datad => \control|Selector6~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \control|fsm_state.input2~regout\);

-- Location: LC_X4_Y4_N3
\control|T2~0\ : maxv_lcell
-- Equation(s):
-- \control|T2~0_combout\ = (((!\data|dr5|Dout\(0) & \control|fsm_state.input2~regout\)))

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
	datac => \data|dr5|Dout\(0),
	datad => \control|fsm_state.input2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \control|T2~0_combout\);

-- Location: LC_X1_Y5_N1
\data|dr2|Dout[15]\ : maxv_lcell
-- Equation(s):
-- \data|dr2|Dout\(15) = DFFEAS((\erdy~combout\ & ((\control|T2~0_combout\ & (\din~combout\(15))) # (!\control|T2~0_combout\ & ((\data|divider|datap|dr1|Dout\(15)))))) # (!\erdy~combout\ & (((\data|divider|datap|dr1|Dout\(15))))), GLOBAL(\clk~combout\), VCC, 
-- , \data|x2~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "accc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \din~combout\(15),
	datab => \data|divider|datap|dr1|Dout\(15),
	datac => \erdy~combout\,
	datad => \control|T2~0_combout\,
	aclr => GND,
	ena => \data|x2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|dr2|Dout\(15));

-- Location: LC_X4_Y7_N0
\data|dr1|Dout[0]~0\ : maxv_lcell
-- Equation(s):
-- \data|dr1|Dout[0]~0_combout\ = ((\control|fsm_state.checkRem~regout\) # ((\control|fsm_state.input1~regout\ & \erdy~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \control|fsm_state.input1~regout\,
	datac => \erdy~combout\,
	datad => \control|fsm_state.checkRem~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|dr1|Dout[0]~0_combout\);

-- Location: LC_X1_Y6_N8
\data|dr1|Dout[15]\ : maxv_lcell
-- Equation(s):
-- \data|dr1|Dout\(15) = DFFEAS((\erdy~combout\ & ((\control|fsm_state.input1~regout\ & ((\din~combout\(15)))) # (!\control|fsm_state.input1~regout\ & (\data|dr2|Dout\(15))))) # (!\erdy~combout\ & (\data|dr2|Dout\(15))), GLOBAL(\clk~combout\), VCC, , 
-- \data|dr1|Dout[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \erdy~combout\,
	datab => \data|dr2|Dout\(15),
	datac => \din~combout\(15),
	datad => \control|fsm_state.input1~regout\,
	aclr => GND,
	ena => \data|dr1|Dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|dr1|Dout\(15));

-- Location: LC_X4_Y6_N7
\data|divider|control|fsm_state~12\ : maxv_lcell
-- Equation(s):
-- \data|divider|control|fsm_state~12_combout\ = ((!\data|divider|control|fsm_state.phi~regout\ & (\control|fsm_state.doDivide~regout\)))

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
	datab => \data|divider|control|fsm_state.phi~regout\,
	datac => \control|fsm_state.doDivide~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|control|fsm_state~12_combout\);

-- Location: LC_X1_Y5_N7
\data|divider|datap|subtract|add14|s~0\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|subtract|add14|s~0_combout\ = ((\data|divider|datap|dr2|Dout\(14) $ (\data|divider|datap|dr1|Dout\(14))))

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
	datac => \data|divider|datap|dr2|Dout\(14),
	datad => \data|divider|datap|dr1|Dout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|subtract|add14|s~0_combout\);

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_din(8),
	combout => \din~combout\(8));

-- Location: LC_X1_Y8_N1
\data|dr1|Dout[8]\ : maxv_lcell
-- Equation(s):
-- \data|dr1|Dout\(8) = DFFEAS((\control|fsm_state.input1~regout\ & ((\erdy~combout\ & (\din~combout\(8))) # (!\erdy~combout\ & ((\data|dr2|Dout\(8)))))) # (!\control|fsm_state.input1~regout\ & (((\data|dr2|Dout\(8))))), GLOBAL(\clk~combout\), VCC, , 
-- \data|dr1|Dout[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "accc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \din~combout\(8),
	datab => \data|dr2|Dout\(8),
	datac => \control|fsm_state.input1~regout\,
	datad => \erdy~combout\,
	aclr => GND,
	ena => \data|dr1|Dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|dr1|Dout\(8));

-- Location: LC_X3_Y8_N9
\data|divider|datap|subtract|add8|s~0\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|subtract|add8|s~0_combout\ = ((\data|divider|datap|dr1|Dout\(8) $ (\data|divider|datap|dr2|Dout\(8))))

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
	datac => \data|divider|datap|dr1|Dout\(8),
	datad => \data|divider|datap|dr2|Dout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|subtract|add8|s~0_combout\);

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_din(6),
	combout => \din~combout\(6));

-- Location: LC_X1_Y8_N7
\data|dr2|Dout[6]\ : maxv_lcell
-- Equation(s):
-- \data|dr2|Dout\(6) = DFFEAS((\erdy~combout\ & ((\control|T2~0_combout\ & ((\din~combout\(6)))) # (!\control|T2~0_combout\ & (\data|divider|datap|dr1|Dout\(6))))) # (!\erdy~combout\ & (\data|divider|datap|dr1|Dout\(6))), GLOBAL(\clk~combout\), VCC, , 
-- \data|x2~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data|divider|datap|dr1|Dout\(6),
	datab => \erdy~combout\,
	datac => \din~combout\(6),
	datad => \control|T2~0_combout\,
	aclr => GND,
	ena => \data|x2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|dr2|Dout\(6));

-- Location: LC_X1_Y8_N5
\data|dr1|Dout[6]\ : maxv_lcell
-- Equation(s):
-- \data|dr1|Dout\(6) = DFFEAS((\control|fsm_state.input1~regout\ & ((\erdy~combout\ & (\din~combout\(6))) # (!\erdy~combout\ & ((\data|dr2|Dout\(6)))))) # (!\control|fsm_state.input1~regout\ & (((\data|dr2|Dout\(6))))), GLOBAL(\clk~combout\), VCC, , 
-- \data|dr1|Dout[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "accc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \din~combout\(6),
	datab => \data|dr2|Dout\(6),
	datac => \control|fsm_state.input1~regout\,
	datad => \erdy~combout\,
	aclr => GND,
	ena => \data|dr1|Dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|dr1|Dout\(6));

-- Location: LC_X2_Y8_N9
\data|divider|datap|subtract|add6|s~0\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|subtract|add6|s~0_combout\ = ((\data|divider|datap|dr2|Dout\(6) $ (\data|divider|datap|dr1|Dout\(6))))

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
	datac => \data|divider|datap|dr2|Dout\(6),
	datad => \data|divider|datap|dr1|Dout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|subtract|add6|s~0_combout\);

-- Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_din(5),
	combout => \din~combout\(5));

-- Location: LC_X4_Y7_N1
\data|dr2|Dout[5]\ : maxv_lcell
-- Equation(s):
-- \data|dr2|Dout\(5) = DFFEAS((\erdy~combout\ & ((\control|T2~0_combout\ & ((\din~combout\(5)))) # (!\control|T2~0_combout\ & (\data|divider|datap|dr1|Dout\(5))))) # (!\erdy~combout\ & (\data|divider|datap|dr1|Dout\(5))), GLOBAL(\clk~combout\), VCC, , 
-- \data|x2~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \erdy~combout\,
	datab => \data|divider|datap|dr1|Dout\(5),
	datac => \din~combout\(5),
	datad => \control|T2~0_combout\,
	aclr => GND,
	ena => \data|x2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|dr2|Dout\(5));

-- Location: LC_X4_Y7_N7
\data|dr1|Dout[5]\ : maxv_lcell
-- Equation(s):
-- \data|dr1|Dout\(5) = DFFEAS((\control|fsm_state.input1~regout\ & ((\erdy~combout\ & (\din~combout\(5))) # (!\erdy~combout\ & ((\data|dr2|Dout\(5)))))) # (!\control|fsm_state.input1~regout\ & (((\data|dr2|Dout\(5))))), GLOBAL(\clk~combout\), VCC, , 
-- \data|dr1|Dout[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bf80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \din~combout\(5),
	datab => \control|fsm_state.input1~regout\,
	datac => \erdy~combout\,
	datad => \data|dr2|Dout\(5),
	aclr => GND,
	ena => \data|dr1|Dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|dr1|Dout\(5));

-- Location: LC_X2_Y7_N0
\data|divider|datap|subtract|add5|s~0\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|subtract|add5|s~0_combout\ = (\data|divider|datap|dr2|Dout\(5) $ (((\data|divider|datap|dr1|Dout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \data|divider|datap|dr2|Dout\(5),
	datad => \data|divider|datap|dr1|Dout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|subtract|add5|s~0_combout\);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_din(4),
	combout => \din~combout\(4));

-- Location: LC_X1_Y8_N3
\data|dr2|Dout[4]\ : maxv_lcell
-- Equation(s):
-- \data|dr2|Dout\(4) = DFFEAS((\erdy~combout\ & ((\control|T2~0_combout\ & (\din~combout\(4))) # (!\control|T2~0_combout\ & ((\data|divider|datap|dr1|Dout\(4)))))) # (!\erdy~combout\ & (((\data|divider|datap|dr1|Dout\(4))))), GLOBAL(\clk~combout\), VCC, , 
-- \data|x2~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \din~combout\(4),
	datab => \erdy~combout\,
	datac => \data|divider|datap|dr1|Dout\(4),
	datad => \control|T2~0_combout\,
	aclr => GND,
	ena => \data|x2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|dr2|Dout\(4));

-- Location: LC_X1_Y8_N4
\data|dr1|Dout[4]\ : maxv_lcell
-- Equation(s):
-- \data|dr1|Dout\(4) = DFFEAS((\erdy~combout\ & ((\control|fsm_state.input1~regout\ & ((\din~combout\(4)))) # (!\control|fsm_state.input1~regout\ & (\data|dr2|Dout\(4))))) # (!\erdy~combout\ & (\data|dr2|Dout\(4))), GLOBAL(\clk~combout\), VCC, , 
-- \data|dr1|Dout[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea2a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data|dr2|Dout\(4),
	datab => \erdy~combout\,
	datac => \control|fsm_state.input1~regout\,
	datad => \din~combout\(4),
	aclr => GND,
	ena => \data|dr1|Dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|dr1|Dout\(4));

-- Location: LC_X2_Y8_N0
\data|divider|datap|subtract|add4|s~0\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|subtract|add4|s~0_combout\ = (\data|divider|datap|dr1|Dout\(4) $ ((\data|divider|datap|dr2|Dout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \data|divider|datap|dr1|Dout\(4),
	datac => \data|divider|datap|dr2|Dout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|subtract|add4|s~0_combout\);

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_din(3),
	combout => \din~combout\(3));

-- Location: LC_X2_Y5_N9
\data|dr2|Dout[3]\ : maxv_lcell
-- Equation(s):
-- \data|dr2|Dout\(3) = DFFEAS((\erdy~combout\ & ((\control|T2~0_combout\ & ((\din~combout\(3)))) # (!\control|T2~0_combout\ & (\data|divider|datap|dr1|Dout\(3))))) # (!\erdy~combout\ & (\data|divider|datap|dr1|Dout\(3))), GLOBAL(\clk~combout\), VCC, , 
-- \data|x2~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data|divider|datap|dr1|Dout\(3),
	datab => \erdy~combout\,
	datac => \din~combout\(3),
	datad => \control|T2~0_combout\,
	aclr => GND,
	ena => \data|x2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|dr2|Dout\(3));

-- Location: LC_X2_Y5_N1
\data|dr1|Dout[3]\ : maxv_lcell
-- Equation(s):
-- \data|dr1|Dout\(3) = DFFEAS((\erdy~combout\ & ((\control|fsm_state.input1~regout\ & ((\din~combout\(3)))) # (!\control|fsm_state.input1~regout\ & (\data|dr2|Dout\(3))))) # (!\erdy~combout\ & (\data|dr2|Dout\(3))), GLOBAL(\clk~combout\), VCC, , 
-- \data|dr1|Dout[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \erdy~combout\,
	datab => \data|dr2|Dout\(3),
	datac => \din~combout\(3),
	datad => \control|fsm_state.input1~regout\,
	aclr => GND,
	ena => \data|dr1|Dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|dr1|Dout\(3));

-- Location: LC_X4_Y6_N5
\data|divider|datap|x1\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|x1~combout\ = (\data|divider|control|fsm_state.subtracting~regout\) # ((!\data|divider|control|fsm_state.phi~regout\ & (\control|fsm_state.doDivide~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "baba",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data|divider|control|fsm_state.subtracting~regout\,
	datab => \data|divider|control|fsm_state.phi~regout\,
	datac => \control|fsm_state.doDivide~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|x1~combout\);

-- Location: LC_X4_Y6_N1
\data|divider|datap|dr1|Dout[0]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr1|Dout\(0) = DFFEAS((\data|divider|control|fsm_state~12_combout\ & (\data|dr1|Dout\(0))) # (!\data|divider|control|fsm_state~12_combout\ & ((\data|divider|datap|dr1|Dout\(0) $ (\data|divider|datap|dr2|Dout\(0))))), 
-- GLOBAL(\clk~combout\), VCC, , \data|divider|datap|x1~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a3ac",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data|dr1|Dout\(0),
	datab => \data|divider|datap|dr1|Dout\(0),
	datac => \data|divider|control|fsm_state~12_combout\,
	datad => \data|divider|datap|dr2|Dout\(0),
	aclr => GND,
	ena => \data|divider|datap|x1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr1|Dout\(0));

-- Location: LC_X2_Y5_N7
\data|dr2|Dout[0]\ : maxv_lcell
-- Equation(s):
-- \data|dr2|Dout\(0) = DFFEAS((\erdy~combout\ & ((\control|T2~0_combout\ & (\din~combout\(0))) # (!\control|T2~0_combout\ & ((\data|divider|datap|dr1|Dout\(0)))))) # (!\erdy~combout\ & (((\data|divider|datap|dr1|Dout\(0))))), GLOBAL(\clk~combout\), VCC, , 
-- \data|x2~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \din~combout\(0),
	datab => \erdy~combout\,
	datac => \data|divider|datap|dr1|Dout\(0),
	datad => \control|T2~0_combout\,
	aclr => GND,
	ena => \data|x2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|dr2|Dout\(0));

-- Location: LC_X3_Y5_N9
\data|divider|datap|dr5|Dout[15]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr5|Dout\(15) = DFFEAS(((!\data|divider|datap|dr2|Dout\(15) & (\data|divider|datap|dr5|Dout\(14) & \data|divider|control|fsm_state.leftshift~regout\))), GLOBAL(\clk~combout\), VCC, , \data|divider|datap|dr2|Dout[5]~2_combout\, , , , )

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
	clk => \clk~combout\,
	datab => \data|divider|datap|dr2|Dout\(15),
	datac => \data|divider|datap|dr5|Dout\(14),
	datad => \data|divider|control|fsm_state.leftshift~regout\,
	aclr => GND,
	ena => \data|divider|datap|dr2|Dout[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr5|Dout\(15));

-- Location: LC_X3_Y5_N4
\data|divider|datap|dr5|Dout[14]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr5|Dout\(14) = DFFEAS((!\data|divider|control|fsm_state~12_combout\ & ((\data|divider|datap|dr2|Dout[15]~0_combout\ & (\data|divider|datap|dr5|Dout\(13))) # (!\data|divider|datap|dr2|Dout[15]~0_combout\ & 
-- ((\data|divider|datap|dr5|Dout\(15)))))), GLOBAL(\clk~combout\), VCC, , \data|divider|datap|dr2|Dout[5]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ac",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data|divider|datap|dr5|Dout\(13),
	datab => \data|divider|datap|dr5|Dout\(15),
	datac => \data|divider|datap|dr2|Dout[15]~0_combout\,
	datad => \data|divider|control|fsm_state~12_combout\,
	aclr => GND,
	ena => \data|divider|datap|dr2|Dout[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr5|Dout\(14));

-- Location: LC_X3_Y5_N8
\data|divider|datap|dr5|Dout[13]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr5|Dout\(13) = DFFEAS((!\data|divider|control|fsm_state~12_combout\ & ((\data|divider|datap|dr2|Dout[15]~0_combout\ & ((\data|divider|datap|dr5|Dout\(12)))) # (!\data|divider|datap|dr2|Dout[15]~0_combout\ & 
-- (\data|divider|datap|dr5|Dout\(14))))), GLOBAL(\clk~combout\), VCC, , \data|divider|datap|dr2|Dout[5]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ca",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data|divider|datap|dr5|Dout\(14),
	datab => \data|divider|datap|dr5|Dout\(12),
	datac => \data|divider|datap|dr2|Dout[15]~0_combout\,
	datad => \data|divider|control|fsm_state~12_combout\,
	aclr => GND,
	ena => \data|divider|datap|dr2|Dout[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr5|Dout\(13));

-- Location: LC_X3_Y5_N7
\data|divider|datap|dr5|Dout[12]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr5|Dout\(12) = DFFEAS((!\data|divider|control|fsm_state~12_combout\ & ((\data|divider|datap|dr2|Dout[15]~0_combout\ & (\data|divider|datap|dr5|Dout\(11))) # (!\data|divider|datap|dr2|Dout[15]~0_combout\ & 
-- ((\data|divider|datap|dr5|Dout\(13)))))), GLOBAL(\clk~combout\), VCC, , \data|divider|datap|dr2|Dout[5]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0b08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data|divider|datap|dr5|Dout\(11),
	datab => \data|divider|datap|dr2|Dout[15]~0_combout\,
	datac => \data|divider|control|fsm_state~12_combout\,
	datad => \data|divider|datap|dr5|Dout\(13),
	aclr => GND,
	ena => \data|divider|datap|dr2|Dout[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr5|Dout\(12));

-- Location: LC_X3_Y5_N3
\data|divider|datap|dr5|Dout[11]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr5|Dout\(11) = DFFEAS((!\data|divider|control|fsm_state~12_combout\ & ((\data|divider|datap|dr2|Dout[15]~0_combout\ & ((\data|divider|datap|dr5|Dout\(10)))) # (!\data|divider|datap|dr2|Dout[15]~0_combout\ & 
-- (\data|divider|datap|dr5|Dout\(12))))), GLOBAL(\clk~combout\), VCC, , \data|divider|datap|dr2|Dout[5]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data|divider|datap|dr2|Dout[15]~0_combout\,
	datab => \data|divider|datap|dr5|Dout\(12),
	datac => \data|divider|datap|dr5|Dout\(10),
	datad => \data|divider|control|fsm_state~12_combout\,
	aclr => GND,
	ena => \data|divider|datap|dr2|Dout[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr5|Dout\(11));

-- Location: LC_X3_Y5_N0
\data|divider|datap|dr5|Dout[10]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr5|Dout\(10) = DFFEAS((!\data|divider|control|fsm_state~12_combout\ & ((\data|divider|datap|dr2|Dout[15]~0_combout\ & ((\data|divider|datap|dr5|Dout\(9)))) # (!\data|divider|datap|dr2|Dout[15]~0_combout\ & 
-- (\data|divider|datap|dr5|Dout\(11))))), GLOBAL(\clk~combout\), VCC, , \data|divider|datap|dr2|Dout[5]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data|divider|datap|dr5|Dout\(11),
	datab => \data|divider|datap|dr2|Dout[15]~0_combout\,
	datac => \data|divider|datap|dr5|Dout\(9),
	datad => \data|divider|control|fsm_state~12_combout\,
	aclr => GND,
	ena => \data|divider|datap|dr2|Dout[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr5|Dout\(10));

-- Location: LC_X3_Y5_N5
\data|divider|datap|dr5|Dout[9]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr5|Dout\(9) = DFFEAS((!\data|divider|control|fsm_state~12_combout\ & ((\data|divider|datap|dr2|Dout[15]~0_combout\ & ((\data|divider|datap|dr5|Dout\(8)))) # (!\data|divider|datap|dr2|Dout[15]~0_combout\ & 
-- (\data|divider|datap|dr5|Dout\(10))))), GLOBAL(\clk~combout\), VCC, , \data|divider|datap|dr2|Dout[5]~2_combout\, , , , )

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
	clk => \clk~combout\,
	dataa => \data|divider|datap|dr2|Dout[15]~0_combout\,
	datab => \data|divider|datap|dr5|Dout\(10),
	datac => \data|divider|control|fsm_state~12_combout\,
	datad => \data|divider|datap|dr5|Dout\(8),
	aclr => GND,
	ena => \data|divider|datap|dr2|Dout[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr5|Dout\(9));

-- Location: LC_X3_Y5_N1
\data|divider|datap|dr5|Dout[8]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr5|Dout\(8) = DFFEAS((!\data|divider|control|fsm_state~12_combout\ & ((\data|divider|datap|dr2|Dout[15]~0_combout\ & ((\data|divider|datap|dr5|Dout\(7)))) # (!\data|divider|datap|dr2|Dout[15]~0_combout\ & 
-- (\data|divider|datap|dr5|Dout\(9))))), GLOBAL(\clk~combout\), VCC, , \data|divider|datap|dr2|Dout[5]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ca",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data|divider|datap|dr5|Dout\(9),
	datab => \data|divider|datap|dr5|Dout\(7),
	datac => \data|divider|datap|dr2|Dout[15]~0_combout\,
	datad => \data|divider|control|fsm_state~12_combout\,
	aclr => GND,
	ena => \data|divider|datap|dr2|Dout[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr5|Dout\(8));

-- Location: LC_X5_Y5_N2
\data|divider|datap|dr5|Dout[7]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr5|Dout\(7) = DFFEAS((!\data|divider|control|fsm_state~12_combout\ & ((\data|divider|datap|dr2|Dout[15]~0_combout\ & (\data|divider|datap|dr5|Dout\(6))) # (!\data|divider|datap|dr2|Dout[15]~0_combout\ & 
-- ((\data|divider|datap|dr5|Dout\(8)))))), GLOBAL(\clk~combout\), VCC, , \data|divider|datap|dr2|Dout[5]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ac",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data|divider|datap|dr5|Dout\(6),
	datab => \data|divider|datap|dr5|Dout\(8),
	datac => \data|divider|datap|dr2|Dout[15]~0_combout\,
	datad => \data|divider|control|fsm_state~12_combout\,
	aclr => GND,
	ena => \data|divider|datap|dr2|Dout[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr5|Dout\(7));

-- Location: LC_X5_Y5_N4
\data|divider|datap|dr5|Dout[6]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr5|Dout\(6) = DFFEAS((!\data|divider|control|fsm_state~12_combout\ & ((\data|divider|datap|dr2|Dout[15]~0_combout\ & (\data|divider|datap|dr5|Dout\(5))) # (!\data|divider|datap|dr2|Dout[15]~0_combout\ & 
-- ((\data|divider|datap|dr5|Dout\(7)))))), GLOBAL(\clk~combout\), VCC, , \data|divider|datap|dr2|Dout[5]~2_combout\, , , , )

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
	clk => \clk~combout\,
	dataa => \data|divider|datap|dr5|Dout\(5),
	datab => \data|divider|control|fsm_state~12_combout\,
	datac => \data|divider|datap|dr2|Dout[15]~0_combout\,
	datad => \data|divider|datap|dr5|Dout\(7),
	aclr => GND,
	ena => \data|divider|datap|dr2|Dout[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr5|Dout\(6));

-- Location: LC_X5_Y5_N8
\data|divider|datap|dr5|Dout[5]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr5|Dout\(5) = DFFEAS((!\data|divider|control|fsm_state~12_combout\ & ((\data|divider|datap|dr2|Dout[15]~0_combout\ & ((\data|divider|datap|dr5|Dout\(4)))) # (!\data|divider|datap|dr2|Dout[15]~0_combout\ & 
-- (\data|divider|datap|dr5|Dout\(6))))), GLOBAL(\clk~combout\), VCC, , \data|divider|datap|dr2|Dout[5]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data|divider|datap|dr5|Dout\(6),
	datab => \data|divider|datap|dr2|Dout[15]~0_combout\,
	datac => \data|divider|datap|dr5|Dout\(4),
	datad => \data|divider|control|fsm_state~12_combout\,
	aclr => GND,
	ena => \data|divider|datap|dr2|Dout[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr5|Dout\(5));

-- Location: LC_X5_Y5_N5
\data|divider|datap|dr5|Dout[4]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr5|Dout\(4) = DFFEAS((!\data|divider|control|fsm_state~12_combout\ & ((\data|divider|datap|dr2|Dout[15]~0_combout\ & (\data|divider|datap|dr5|Dout\(3))) # (!\data|divider|datap|dr2|Dout[15]~0_combout\ & 
-- ((\data|divider|datap|dr5|Dout\(5)))))), GLOBAL(\clk~combout\), VCC, , \data|divider|datap|dr2|Dout[5]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5140",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data|divider|control|fsm_state~12_combout\,
	datab => \data|divider|datap|dr2|Dout[15]~0_combout\,
	datac => \data|divider|datap|dr5|Dout\(3),
	datad => \data|divider|datap|dr5|Dout\(5),
	aclr => GND,
	ena => \data|divider|datap|dr2|Dout[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr5|Dout\(4));

-- Location: LC_X5_Y5_N0
\data|divider|datap|dr5|Dout[3]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr5|Dout\(3) = DFFEAS((!\data|divider|control|fsm_state~12_combout\ & ((\data|divider|datap|dr2|Dout[15]~0_combout\ & ((\data|divider|datap|dr5|Dout\(2)))) # (!\data|divider|datap|dr2|Dout[15]~0_combout\ & 
-- (\data|divider|datap|dr5|Dout\(4))))), GLOBAL(\clk~combout\), VCC, , \data|divider|datap|dr2|Dout[5]~2_combout\, , , , )

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
	clk => \clk~combout\,
	dataa => \data|divider|datap|dr5|Dout\(4),
	datab => \data|divider|control|fsm_state~12_combout\,
	datac => \data|divider|datap|dr2|Dout[15]~0_combout\,
	datad => \data|divider|datap|dr5|Dout\(2),
	aclr => GND,
	ena => \data|divider|datap|dr2|Dout[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr5|Dout\(3));

-- Location: LC_X5_Y5_N9
\data|divider|datap|dr5|Dout[2]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr5|Dout\(2) = DFFEAS((!\data|divider|control|fsm_state~12_combout\ & ((\data|divider|datap|dr2|Dout[15]~0_combout\ & (\data|divider|datap|dr5|Dout\(1))) # (!\data|divider|datap|dr2|Dout[15]~0_combout\ & 
-- ((\data|divider|datap|dr5|Dout\(3)))))), GLOBAL(\clk~combout\), VCC, , \data|divider|datap|dr2|Dout[5]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00b8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data|divider|datap|dr5|Dout\(1),
	datab => \data|divider|datap|dr2|Dout[15]~0_combout\,
	datac => \data|divider|datap|dr5|Dout\(3),
	datad => \data|divider|control|fsm_state~12_combout\,
	aclr => GND,
	ena => \data|divider|datap|dr2|Dout[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr5|Dout\(2));

-- Location: LC_X5_Y5_N3
\data|divider|datap|dr5|Dout[1]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr5|Dout\(1) = DFFEAS((!\data|divider|control|fsm_state~12_combout\ & ((\data|divider|datap|dr2|Dout[15]~0_combout\ & ((\data|divider|datap|dr5|Dout\(0)))) # (!\data|divider|datap|dr2|Dout[15]~0_combout\ & 
-- (\data|divider|datap|dr5|Dout\(2))))), GLOBAL(\clk~combout\), VCC, , \data|divider|datap|dr2|Dout[5]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5404",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data|divider|control|fsm_state~12_combout\,
	datab => \data|divider|datap|dr5|Dout\(2),
	datac => \data|divider|datap|dr2|Dout[15]~0_combout\,
	datad => \data|divider|datap|dr5|Dout\(0),
	aclr => GND,
	ena => \data|divider|datap|dr2|Dout[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr5|Dout\(1));

-- Location: LC_X5_Y5_N7
\data|divider|datap|dr5|Dout[0]~0\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr5|Dout[0]~0_combout\ = (!\data|divider|datap|dr2|Dout[15]~0_combout\ & ((\data|divider|datap|dr5|Dout\(0)) # ((\data|divider|datap|dr5|Dout\(1) & \data|divider|control|fsm_state.doing~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data|divider|datap|dr5|Dout\(1),
	datab => \data|divider|control|fsm_state.doing~regout\,
	datac => \data|divider|datap|dr2|Dout[15]~0_combout\,
	datad => \data|divider|datap|dr5|Dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|dr5|Dout[0]~0_combout\);

-- Location: LC_X5_Y5_N1
\data|divider|datap|dr5|Dout[0]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr5|Dout\(0) = DFFEAS((\data|divider|datap|dr2|Dout[5]~2_combout\ & ((\data|divider|control|fsm_state~12_combout\) # ((\data|divider|datap|dr5|Dout[0]~0_combout\)))) # (!\data|divider|datap|dr2|Dout[5]~2_combout\ & 
-- (((\data|divider|datap|dr5|Dout\(0))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fda8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data|divider|datap|dr2|Dout[5]~2_combout\,
	datab => \data|divider|control|fsm_state~12_combout\,
	datac => \data|divider|datap|dr5|Dout[0]~0_combout\,
	datad => \data|divider|datap|dr5|Dout\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr5|Dout\(0));

-- Location: LC_X5_Y5_N6
\data|divider|datap|dr2|Dout[5]~2\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr2|Dout[5]~2_combout\ = (\data|divider|datap|dr2|Dout[15]~0_combout\) # ((\data|divider|control|fsm_state~12_combout\) # ((!\data|divider|datap|dr5|Dout\(0) & \data|divider|control|fsm_state.doing~regout\)))

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
	dataa => \data|divider|datap|dr2|Dout[15]~0_combout\,
	datab => \data|divider|datap|dr5|Dout\(0),
	datac => \data|divider|control|fsm_state~12_combout\,
	datad => \data|divider|control|fsm_state.doing~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|dr2|Dout[5]~2_combout\);

-- Location: LC_X3_Y6_N0
\data|divider|datap|dr2|Dout[0]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr2|Dout\(0) = DFFEAS((\data|divider|control|fsm_state~12_combout\ & (\data|dr2|Dout\(0))) # (!\data|divider|control|fsm_state~12_combout\ & (((\data|divider|datap|dr2|Dout\(1) & !\data|divider|datap|dr2|Dout[15]~0_combout\)))), 
-- GLOBAL(\clk~combout\), VCC, , \data|divider|datap|dr2|Dout[5]~2_combout\, , , , )

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
	clk => \clk~combout\,
	dataa => \data|divider|control|fsm_state~12_combout\,
	datab => \data|dr2|Dout\(0),
	datac => \data|divider|datap|dr2|Dout\(1),
	datad => \data|divider|datap|dr2|Dout[15]~0_combout\,
	aclr => GND,
	ena => \data|divider|datap|dr2|Dout[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr2|Dout\(0));

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_din(1),
	combout => \din~combout\(1));

-- Location: LC_X4_Y7_N5
\data|dr1|Dout[1]\ : maxv_lcell
-- Equation(s):
-- \data|dr1|Dout\(1) = DFFEAS((\control|fsm_state.input1~regout\ & ((\erdy~combout\ & (\din~combout\(1))) # (!\erdy~combout\ & ((\data|dr2|Dout\(1)))))) # (!\control|fsm_state.input1~regout\ & (((\data|dr2|Dout\(1))))), GLOBAL(\clk~combout\), VCC, , 
-- \data|dr1|Dout[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bf80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \din~combout\(1),
	datab => \control|fsm_state.input1~regout\,
	datac => \erdy~combout\,
	datad => \data|dr2|Dout\(1),
	aclr => GND,
	ena => \data|dr1|Dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|dr1|Dout\(1));

-- Location: LC_X3_Y6_N4
\data|divider|datap|subtract|add1|s~0\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|subtract|add1|s~0_combout\ = \data|divider|datap|dr1|Dout\(1) $ (\data|divider|datap|dr2|Dout\(1) $ (((\data|divider|datap|dr1|Dout\(0)) # (!\data|divider|datap|dr2|Dout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "96c3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data|divider|datap|dr1|Dout\(0),
	datab => \data|divider|datap|dr1|Dout\(1),
	datac => \data|divider|datap|dr2|Dout\(1),
	datad => \data|divider|datap|dr2|Dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|subtract|add1|s~0_combout\);

-- Location: LC_X4_Y6_N2
\data|divider|datap|dr1|Dout[1]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr1|Dout\(1) = DFFEAS((\data|divider|control|fsm_state.phi~regout\ & (((!\data|divider|datap|subtract|add1|s~0_combout\)))) # (!\data|divider|control|fsm_state.phi~regout\ & ((\control|fsm_state.doDivide~regout\ & (\data|dr1|Dout\(1))) 
-- # (!\control|fsm_state.doDivide~regout\ & ((!\data|divider|datap|subtract|add1|s~0_combout\))))), GLOBAL(\clk~combout\), VCC, , \data|divider|datap|x1~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "20ef",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data|dr1|Dout\(1),
	datab => \data|divider|control|fsm_state.phi~regout\,
	datac => \control|fsm_state.doDivide~regout\,
	datad => \data|divider|datap|subtract|add1|s~0_combout\,
	aclr => GND,
	ena => \data|divider|datap|x1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr1|Dout\(1));

-- Location: LC_X4_Y7_N8
\data|dr2|Dout[1]\ : maxv_lcell
-- Equation(s):
-- \data|dr2|Dout\(1) = DFFEAS((\erdy~combout\ & ((\control|T2~0_combout\ & (\din~combout\(1))) # (!\control|T2~0_combout\ & ((\data|divider|datap|dr1|Dout\(1)))))) # (!\erdy~combout\ & (((\data|divider|datap|dr1|Dout\(1))))), GLOBAL(\clk~combout\), VCC, , 
-- \data|x2~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "accc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \din~combout\(1),
	datab => \data|divider|datap|dr1|Dout\(1),
	datac => \erdy~combout\,
	datad => \control|T2~0_combout\,
	aclr => GND,
	ena => \data|x2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|dr2|Dout\(1));

-- Location: LC_X3_Y6_N6
\data|divider|datap|dr2|Dout[1]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr2|Dout\(1) = DFFEAS(((\data|divider|datap|dr2|Dout[15]~0_combout\ & ((\data|divider|datap|dr2|Dout\(0)))) # (!\data|divider|datap|dr2|Dout[15]~0_combout\ & (\data|divider|datap|dr2|Dout\(2)))), GLOBAL(\clk~combout\), VCC, , 
-- \data|divider|datap|dr2|Dout[5]~2_combout\, \data|dr2|Dout\(1), , , \data|divider|control|fsm_state~12_combout\)

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
	clk => \clk~combout\,
	dataa => \data|divider|datap|dr2|Dout\(2),
	datab => \data|divider|datap|dr2|Dout\(0),
	datac => \data|dr2|Dout\(1),
	datad => \data|divider|datap|dr2|Dout[15]~0_combout\,
	aclr => GND,
	sload => \data|divider|control|fsm_state~12_combout\,
	ena => \data|divider|datap|dr2|Dout[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr2|Dout\(1));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_din(2),
	combout => \din~combout\(2));

-- Location: LC_X3_Y6_N9
\data|divider|datap|subtract|add2|s~0\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|subtract|add2|s~0_combout\ = \data|divider|datap|dr1|Dout\(2) $ ((((\data|divider|datap|dr2|Dout\(2)))))

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
	dataa => \data|divider|datap|dr1|Dout\(2),
	datad => \data|divider|datap|dr2|Dout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|subtract|add2|s~0_combout\);

-- Location: LC_X2_Y5_N6
\data|dr1|Dout[2]\ : maxv_lcell
-- Equation(s):
-- \data|dr1|Dout\(2) = DFFEAS((\erdy~combout\ & ((\control|fsm_state.input1~regout\ & (\din~combout\(2))) # (!\control|fsm_state.input1~regout\ & ((\data|dr2|Dout\(2)))))) # (!\erdy~combout\ & (((\data|dr2|Dout\(2))))), GLOBAL(\clk~combout\), VCC, , 
-- \data|dr1|Dout[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \din~combout\(2),
	datab => \erdy~combout\,
	datac => \data|dr2|Dout\(2),
	datad => \control|fsm_state.input1~regout\,
	aclr => GND,
	ena => \data|dr1|Dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|dr1|Dout\(2));

-- Location: LC_X3_Y6_N7
\data|divider|datap|subtract|add1|cout~0\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|subtract|add1|cout~0_combout\ = (\data|divider|datap|dr2|Dout\(1) & (\data|divider|datap|dr1|Dout\(1) & ((\data|divider|datap|dr1|Dout\(0)) # (!\data|divider|datap|dr2|Dout\(0))))) # (!\data|divider|datap|dr2|Dout\(1) & 
-- (((\data|divider|datap|dr1|Dout\(1)) # (\data|divider|datap|dr1|Dout\(0))) # (!\data|divider|datap|dr2|Dout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f571",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data|divider|datap|dr2|Dout\(1),
	datab => \data|divider|datap|dr2|Dout\(0),
	datac => \data|divider|datap|dr1|Dout\(1),
	datad => \data|divider|datap|dr1|Dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|subtract|add1|cout~0_combout\);

-- Location: LC_X4_Y6_N6
\data|divider|datap|dr1|Dout[2]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr1|Dout\(2) = DFFEAS((\data|divider|control|fsm_state~12_combout\ & (((\data|dr1|Dout\(2))))) # (!\data|divider|control|fsm_state~12_combout\ & (\data|divider|datap|subtract|add2|s~0_combout\ $ 
-- (((!\data|divider|datap|subtract|add1|cout~0_combout\))))), GLOBAL(\clk~combout\), VCC, , \data|divider|datap|x1~combout\, , , , )

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
	clk => \clk~combout\,
	dataa => \data|divider|datap|subtract|add2|s~0_combout\,
	datab => \data|dr1|Dout\(2),
	datac => \data|divider|control|fsm_state~12_combout\,
	datad => \data|divider|datap|subtract|add1|cout~0_combout\,
	aclr => GND,
	ena => \data|divider|datap|x1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr1|Dout\(2));

-- Location: LC_X2_Y5_N5
\data|dr2|Dout[2]\ : maxv_lcell
-- Equation(s):
-- \data|dr2|Dout\(2) = DFFEAS((\erdy~combout\ & ((\control|T2~0_combout\ & (\din~combout\(2))) # (!\control|T2~0_combout\ & ((\data|divider|datap|dr1|Dout\(2)))))) # (!\erdy~combout\ & (((\data|divider|datap|dr1|Dout\(2))))), GLOBAL(\clk~combout\), VCC, , 
-- \data|x2~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \din~combout\(2),
	datab => \erdy~combout\,
	datac => \data|divider|datap|dr1|Dout\(2),
	datad => \control|T2~0_combout\,
	aclr => GND,
	ena => \data|x2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|dr2|Dout\(2));

-- Location: LC_X3_Y6_N3
\data|divider|datap|dr2|Dout[3]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr2|Dout\(3) = DFFEAS((\data|divider|datap|dr2|Dout[15]~0_combout\ & (\data|divider|datap|dr2|Dout\(2))) # (!\data|divider|datap|dr2|Dout[15]~0_combout\ & (((\data|divider|datap|dr2|Dout\(4))))), GLOBAL(\clk~combout\), VCC, , 
-- \data|divider|datap|dr2|Dout[5]~2_combout\, \data|dr2|Dout\(3), , , \data|divider|control|fsm_state~12_combout\)

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
	clk => \clk~combout\,
	dataa => \data|divider|datap|dr2|Dout\(2),
	datab => \data|divider|datap|dr2|Dout[15]~0_combout\,
	datac => \data|dr2|Dout\(3),
	datad => \data|divider|datap|dr2|Dout\(4),
	aclr => GND,
	sload => \data|divider|control|fsm_state~12_combout\,
	ena => \data|divider|datap|dr2|Dout[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr2|Dout\(3));

-- Location: LC_X3_Y6_N2
\data|divider|datap|dr2|Dout[2]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr2|Dout\(2) = DFFEAS((\data|divider|datap|dr2|Dout[15]~0_combout\ & (\data|divider|datap|dr2|Dout\(1))) # (!\data|divider|datap|dr2|Dout[15]~0_combout\ & (((\data|divider|datap|dr2|Dout\(3))))), GLOBAL(\clk~combout\), VCC, , 
-- \data|divider|datap|dr2|Dout[5]~2_combout\, \data|dr2|Dout\(2), , , \data|divider|control|fsm_state~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data|divider|datap|dr2|Dout[15]~0_combout\,
	datab => \data|divider|datap|dr2|Dout\(1),
	datac => \data|dr2|Dout\(2),
	datad => \data|divider|datap|dr2|Dout\(3),
	aclr => GND,
	sload => \data|divider|control|fsm_state~12_combout\,
	ena => \data|divider|datap|dr2|Dout[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr2|Dout\(2));

-- Location: LC_X3_Y6_N8
\data|divider|datap|subtract|add2|cout~0\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|subtract|add2|cout~0_combout\ = ((\data|divider|datap|dr2|Dout\(2) & (\data|divider|datap|dr1|Dout\(2) & \data|divider|datap|subtract|add1|cout~0_combout\)) # (!\data|divider|datap|dr2|Dout\(2) & ((\data|divider|datap|dr1|Dout\(2)) # 
-- (\data|divider|datap|subtract|add1|cout~0_combout\))))

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
	datab => \data|divider|datap|dr2|Dout\(2),
	datac => \data|divider|datap|dr1|Dout\(2),
	datad => \data|divider|datap|subtract|add1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|subtract|add2|cout~0_combout\);

-- Location: LC_X1_Y5_N4
\data|divider|datap|subtract|add3|s~0\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|subtract|add3|s~0_combout\ = \data|divider|datap|dr1|Dout\(3) $ ((((\data|divider|datap|dr2|Dout\(3)))))

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
	dataa => \data|divider|datap|dr1|Dout\(3),
	datac => \data|divider|datap|dr2|Dout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|subtract|add3|s~0_combout\);

-- Location: LC_X1_Y6_N1
\data|divider|datap|dr1|Dout[3]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr1|Dout\(3) = DFFEAS((\data|divider|control|fsm_state~12_combout\ & (\data|dr1|Dout\(3))) # (!\data|divider|control|fsm_state~12_combout\ & ((\data|divider|datap|subtract|add2|cout~0_combout\ $ 
-- (!\data|divider|datap|subtract|add3|s~0_combout\)))), GLOBAL(\clk~combout\), VCC, , \data|divider|datap|x1~combout\, , , , )

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
	clk => \clk~combout\,
	dataa => \data|dr1|Dout\(3),
	datab => \data|divider|control|fsm_state~12_combout\,
	datac => \data|divider|datap|subtract|add2|cout~0_combout\,
	datad => \data|divider|datap|subtract|add3|s~0_combout\,
	aclr => GND,
	ena => \data|divider|datap|x1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr1|Dout\(3));

-- Location: LC_X2_Y6_N8
\data|divider|datap|subtract|add3|cout~0\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|subtract|add3|cout~0_combout\ = ((\data|divider|datap|dr1|Dout\(3) & ((\data|divider|datap|subtract|add2|cout~0_combout\) # (!\data|divider|datap|dr2|Dout\(3)))) # (!\data|divider|datap|dr1|Dout\(3) & (!\data|divider|datap|dr2|Dout\(3) 
-- & \data|divider|datap|subtract|add2|cout~0_combout\)))

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
	datab => \data|divider|datap|dr1|Dout\(3),
	datac => \data|divider|datap|dr2|Dout\(3),
	datad => \data|divider|datap|subtract|add2|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|subtract|add3|cout~0_combout\);

-- Location: LC_X2_Y8_N2
\data|divider|datap|dr1|Dout[4]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr1|Dout\(4) = DFFEAS((\data|divider|control|fsm_state~12_combout\ & (\data|dr1|Dout\(4))) # (!\data|divider|control|fsm_state~12_combout\ & ((\data|divider|datap|subtract|add4|s~0_combout\ $ 
-- (!\data|divider|datap|subtract|add3|cout~0_combout\)))), GLOBAL(\clk~combout\), VCC, , \data|divider|datap|x1~combout\, , , , )

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
	clk => \clk~combout\,
	dataa => \data|dr1|Dout\(4),
	datab => \data|divider|datap|subtract|add4|s~0_combout\,
	datac => \data|divider|control|fsm_state~12_combout\,
	datad => \data|divider|datap|subtract|add3|cout~0_combout\,
	aclr => GND,
	ena => \data|divider|datap|x1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr1|Dout\(4));

-- Location: LC_X2_Y6_N9
\data|divider|datap|subtract|add4|cout~0\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|subtract|add4|cout~0_combout\ = (\data|divider|datap|dr2|Dout\(4) & (((\data|divider|datap|dr1|Dout\(4) & \data|divider|datap|subtract|add3|cout~0_combout\)))) # (!\data|divider|datap|dr2|Dout\(4) & (((\data|divider|datap|dr1|Dout\(4)) 
-- # (\data|divider|datap|subtract|add3|cout~0_combout\))))

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
	dataa => \data|divider|datap|dr2|Dout\(4),
	datac => \data|divider|datap|dr1|Dout\(4),
	datad => \data|divider|datap|subtract|add3|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|subtract|add4|cout~0_combout\);

-- Location: LC_X2_Y8_N5
\data|divider|datap|dr1|Dout[5]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr1|Dout\(5) = DFFEAS((\data|divider|control|fsm_state~12_combout\ & (\data|dr1|Dout\(5))) # (!\data|divider|control|fsm_state~12_combout\ & ((\data|divider|datap|subtract|add5|s~0_combout\ $ 
-- (!\data|divider|datap|subtract|add4|cout~0_combout\)))), GLOBAL(\clk~combout\), VCC, , \data|divider|datap|x1~combout\, , , , )

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
	clk => \clk~combout\,
	dataa => \data|dr1|Dout\(5),
	datab => \data|divider|datap|subtract|add5|s~0_combout\,
	datac => \data|divider|control|fsm_state~12_combout\,
	datad => \data|divider|datap|subtract|add4|cout~0_combout\,
	aclr => GND,
	ena => \data|divider|datap|x1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr1|Dout\(5));

-- Location: LC_X2_Y6_N0
\data|divider|datap|subtract|add5|cout~0\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|subtract|add5|cout~0_combout\ = ((\data|divider|datap|dr2|Dout\(5) & (\data|divider|datap|dr1|Dout\(5) & \data|divider|datap|subtract|add4|cout~0_combout\)) # (!\data|divider|datap|dr2|Dout\(5) & ((\data|divider|datap|dr1|Dout\(5)) # 
-- (\data|divider|datap|subtract|add4|cout~0_combout\))))

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
	datab => \data|divider|datap|dr2|Dout\(5),
	datac => \data|divider|datap|dr1|Dout\(5),
	datad => \data|divider|datap|subtract|add4|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|subtract|add5|cout~0_combout\);

-- Location: LC_X2_Y8_N3
\data|divider|datap|dr1|Dout[6]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr1|Dout\(6) = DFFEAS((\data|divider|control|fsm_state~12_combout\ & (\data|dr1|Dout\(6))) # (!\data|divider|control|fsm_state~12_combout\ & ((\data|divider|datap|subtract|add6|s~0_combout\ $ 
-- (!\data|divider|datap|subtract|add5|cout~0_combout\)))), GLOBAL(\clk~combout\), VCC, , \data|divider|datap|x1~combout\, , , , )

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
	clk => \clk~combout\,
	dataa => \data|dr1|Dout\(6),
	datab => \data|divider|datap|subtract|add6|s~0_combout\,
	datac => \data|divider|control|fsm_state~12_combout\,
	datad => \data|divider|datap|subtract|add5|cout~0_combout\,
	aclr => GND,
	ena => \data|divider|datap|x1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr1|Dout\(6));

-- Location: LC_X2_Y6_N1
\data|divider|datap|subtract|add6|cout~0\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|subtract|add6|cout~0_combout\ = (\data|divider|datap|dr2|Dout\(6) & (((\data|divider|datap|dr1|Dout\(6) & \data|divider|datap|subtract|add5|cout~0_combout\)))) # (!\data|divider|datap|dr2|Dout\(6) & (((\data|divider|datap|dr1|Dout\(6)) 
-- # (\data|divider|datap|subtract|add5|cout~0_combout\))))

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
	dataa => \data|divider|datap|dr2|Dout\(6),
	datac => \data|divider|datap|dr1|Dout\(6),
	datad => \data|divider|datap|subtract|add5|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|subtract|add6|cout~0_combout\);

-- Location: LC_X2_Y6_N2
\data|divider|datap|subtract|add7|cout~0\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|subtract|add7|cout~0_combout\ = (\data|divider|datap|dr1|Dout\(7) & (((\data|divider|datap|subtract|add6|cout~0_combout\)) # (!\data|divider|datap|dr2|Dout\(7)))) # (!\data|divider|datap|dr1|Dout\(7) & 
-- (!\data|divider|datap|dr2|Dout\(7) & ((\data|divider|datap|subtract|add6|cout~0_combout\))))

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
	dataa => \data|divider|datap|dr1|Dout\(7),
	datab => \data|divider|datap|dr2|Dout\(7),
	datad => \data|divider|datap|subtract|add6|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|subtract|add7|cout~0_combout\);

-- Location: LC_X3_Y8_N6
\data|divider|datap|dr1|Dout[8]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr1|Dout\(8) = DFFEAS((\data|divider|control|fsm_state~12_combout\ & (\data|dr1|Dout\(8))) # (!\data|divider|control|fsm_state~12_combout\ & ((\data|divider|datap|subtract|add8|s~0_combout\ $ 
-- (!\data|divider|datap|subtract|add7|cout~0_combout\)))), GLOBAL(\clk~combout\), VCC, , \data|divider|datap|x1~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aac3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data|dr1|Dout\(8),
	datab => \data|divider|datap|subtract|add8|s~0_combout\,
	datac => \data|divider|datap|subtract|add7|cout~0_combout\,
	datad => \data|divider|control|fsm_state~12_combout\,
	aclr => GND,
	ena => \data|divider|datap|x1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr1|Dout\(8));

-- Location: LC_X1_Y8_N0
\data|dr2|Dout[8]\ : maxv_lcell
-- Equation(s):
-- \data|dr2|Dout\(8) = DFFEAS((\erdy~combout\ & ((\control|T2~0_combout\ & (\din~combout\(8))) # (!\control|T2~0_combout\ & ((\data|divider|datap|dr1|Dout\(8)))))) # (!\erdy~combout\ & (((\data|divider|datap|dr1|Dout\(8))))), GLOBAL(\clk~combout\), VCC, , 
-- \data|x2~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \din~combout\(8),
	datab => \erdy~combout\,
	datac => \data|divider|datap|dr1|Dout\(8),
	datad => \control|T2~0_combout\,
	aclr => GND,
	ena => \data|x2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|dr2|Dout\(8));

-- Location: LC_X1_Y7_N4
\data|divider|datap|dr2|Dout[8]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr2|Dout\(8) = DFFEAS((\data|divider|datap|dr2|Dout[15]~0_combout\ & (\data|divider|datap|dr2|Dout\(7))) # (!\data|divider|datap|dr2|Dout[15]~0_combout\ & (((\data|divider|datap|dr2|Dout\(9))))), GLOBAL(\clk~combout\), VCC, , 
-- \data|divider|datap|dr2|Dout[5]~2_combout\, \data|dr2|Dout\(8), , , \data|divider|control|fsm_state~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data|divider|datap|dr2|Dout[15]~0_combout\,
	datab => \data|divider|datap|dr2|Dout\(7),
	datac => \data|dr2|Dout\(8),
	datad => \data|divider|datap|dr2|Dout\(9),
	aclr => GND,
	sload => \data|divider|control|fsm_state~12_combout\,
	ena => \data|divider|datap|dr2|Dout[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr2|Dout\(8));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_din(9),
	combout => \din~combout\(9));

-- Location: LC_X3_Y8_N8
\data|divider|datap|subtract|add9|s~0\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|subtract|add9|s~0_combout\ = ((\data|divider|datap|dr2|Dout\(9) $ (\data|divider|datap|dr1|Dout\(9))))

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
	datac => \data|divider|datap|dr2|Dout\(9),
	datad => \data|divider|datap|dr1|Dout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|subtract|add9|s~0_combout\);

-- Location: LC_X1_Y8_N9
\data|dr1|Dout[9]\ : maxv_lcell
-- Equation(s):
-- \data|dr1|Dout\(9) = DFFEAS((\control|fsm_state.input1~regout\ & ((\erdy~combout\ & (\din~combout\(9))) # (!\erdy~combout\ & ((\data|dr2|Dout\(9)))))) # (!\control|fsm_state.input1~regout\ & (((\data|dr2|Dout\(9))))), GLOBAL(\clk~combout\), VCC, , 
-- \data|dr1|Dout[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "accc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \din~combout\(9),
	datab => \data|dr2|Dout\(9),
	datac => \control|fsm_state.input1~regout\,
	datad => \erdy~combout\,
	aclr => GND,
	ena => \data|dr1|Dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|dr1|Dout\(9));

-- Location: LC_X2_Y6_N3
\data|divider|datap|subtract|add8|cout~0\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|subtract|add8|cout~0_combout\ = ((\data|divider|datap|dr1|Dout\(8) & ((\data|divider|datap|subtract|add7|cout~0_combout\) # (!\data|divider|datap|dr2|Dout\(8)))) # (!\data|divider|datap|dr1|Dout\(8) & (!\data|divider|datap|dr2|Dout\(8) 
-- & \data|divider|datap|subtract|add7|cout~0_combout\)))

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
	datab => \data|divider|datap|dr1|Dout\(8),
	datac => \data|divider|datap|dr2|Dout\(8),
	datad => \data|divider|datap|subtract|add7|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|subtract|add8|cout~0_combout\);

-- Location: LC_X3_Y8_N2
\data|divider|datap|dr1|Dout[9]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr1|Dout\(9) = DFFEAS((\data|divider|control|fsm_state~12_combout\ & (((\data|dr1|Dout\(9))))) # (!\data|divider|control|fsm_state~12_combout\ & (\data|divider|datap|subtract|add9|s~0_combout\ $ 
-- (((!\data|divider|datap|subtract|add8|cout~0_combout\))))), GLOBAL(\clk~combout\), VCC, , \data|divider|datap|x1~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2d1",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data|divider|datap|subtract|add9|s~0_combout\,
	datab => \data|divider|control|fsm_state~12_combout\,
	datac => \data|dr1|Dout\(9),
	datad => \data|divider|datap|subtract|add8|cout~0_combout\,
	aclr => GND,
	ena => \data|divider|datap|x1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr1|Dout\(9));

-- Location: LC_X1_Y8_N8
\data|dr2|Dout[9]\ : maxv_lcell
-- Equation(s):
-- \data|dr2|Dout\(9) = DFFEAS((\erdy~combout\ & ((\control|T2~0_combout\ & (\din~combout\(9))) # (!\control|T2~0_combout\ & ((\data|divider|datap|dr1|Dout\(9)))))) # (!\erdy~combout\ & (((\data|divider|datap|dr1|Dout\(9))))), GLOBAL(\clk~combout\), VCC, , 
-- \data|x2~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "accc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \din~combout\(9),
	datab => \data|divider|datap|dr1|Dout\(9),
	datac => \erdy~combout\,
	datad => \control|T2~0_combout\,
	aclr => GND,
	ena => \data|x2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|dr2|Dout\(9));

-- Location: LC_X1_Y7_N9
\data|divider|datap|dr2|Dout[9]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr2|Dout\(9) = DFFEAS(((\data|divider|datap|dr2|Dout[15]~0_combout\ & ((\data|divider|datap|dr2|Dout\(8)))) # (!\data|divider|datap|dr2|Dout[15]~0_combout\ & (\data|divider|datap|dr2|Dout\(10)))), GLOBAL(\clk~combout\), VCC, , 
-- \data|divider|datap|dr2|Dout[5]~2_combout\, \data|dr2|Dout\(9), , , \data|divider|control|fsm_state~12_combout\)

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
	clk => \clk~combout\,
	dataa => \data|divider|datap|dr2|Dout\(10),
	datab => \data|divider|datap|dr2|Dout\(8),
	datac => \data|dr2|Dout\(9),
	datad => \data|divider|datap|dr2|Dout[15]~0_combout\,
	aclr => GND,
	sload => \data|divider|control|fsm_state~12_combout\,
	ena => \data|divider|datap|dr2|Dout[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr2|Dout\(9));

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_din(10),
	combout => \din~combout\(10));

-- Location: LC_X3_Y8_N4
\data|divider|datap|subtract|add10|s~0\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|subtract|add10|s~0_combout\ = \data|divider|datap|dr1|Dout\(10) $ ((((\data|divider|datap|dr2|Dout\(10)))))

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
	dataa => \data|divider|datap|dr1|Dout\(10),
	datad => \data|divider|datap|dr2|Dout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|subtract|add10|s~0_combout\);

-- Location: LC_X4_Y7_N4
\data|dr1|Dout[10]\ : maxv_lcell
-- Equation(s):
-- \data|dr1|Dout\(10) = DFFEAS((\control|fsm_state.input1~regout\ & ((\erdy~combout\ & (\din~combout\(10))) # (!\erdy~combout\ & ((\data|dr2|Dout\(10)))))) # (!\control|fsm_state.input1~regout\ & (((\data|dr2|Dout\(10))))), GLOBAL(\clk~combout\), VCC, , 
-- \data|dr1|Dout[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bf80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \din~combout\(10),
	datab => \control|fsm_state.input1~regout\,
	datac => \erdy~combout\,
	datad => \data|dr2|Dout\(10),
	aclr => GND,
	ena => \data|dr1|Dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|dr1|Dout\(10));

-- Location: LC_X2_Y6_N4
\data|divider|datap|subtract|add9|cout~0\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|subtract|add9|cout~0_combout\ = ((\data|divider|datap|dr1|Dout\(9) & ((\data|divider|datap|subtract|add8|cout~0_combout\) # (!\data|divider|datap|dr2|Dout\(9)))) # (!\data|divider|datap|dr1|Dout\(9) & (!\data|divider|datap|dr2|Dout\(9) 
-- & \data|divider|datap|subtract|add8|cout~0_combout\)))

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
	datab => \data|divider|datap|dr1|Dout\(9),
	datac => \data|divider|datap|dr2|Dout\(9),
	datad => \data|divider|datap|subtract|add8|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|subtract|add9|cout~0_combout\);

-- Location: LC_X3_Y8_N5
\data|divider|datap|dr1|Dout[10]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr1|Dout\(10) = DFFEAS((\data|divider|control|fsm_state~12_combout\ & (((\data|dr1|Dout\(10))))) # (!\data|divider|control|fsm_state~12_combout\ & (\data|divider|datap|subtract|add10|s~0_combout\ $ 
-- (((!\data|divider|datap|subtract|add9|cout~0_combout\))))), GLOBAL(\clk~combout\), VCC, , \data|divider|datap|x1~combout\, , , , )

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
	clk => \clk~combout\,
	dataa => \data|divider|datap|subtract|add10|s~0_combout\,
	datab => \data|dr1|Dout\(10),
	datac => \data|divider|datap|subtract|add9|cout~0_combout\,
	datad => \data|divider|control|fsm_state~12_combout\,
	aclr => GND,
	ena => \data|divider|datap|x1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr1|Dout\(10));

-- Location: LC_X4_Y7_N9
\data|dr2|Dout[10]\ : maxv_lcell
-- Equation(s):
-- \data|dr2|Dout\(10) = DFFEAS((\erdy~combout\ & ((\control|T2~0_combout\ & (\din~combout\(10))) # (!\control|T2~0_combout\ & ((\data|divider|datap|dr1|Dout\(10)))))) # (!\erdy~combout\ & (((\data|divider|datap|dr1|Dout\(10))))), GLOBAL(\clk~combout\), VCC, 
-- , \data|x2~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "accc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \din~combout\(10),
	datab => \data|divider|datap|dr1|Dout\(10),
	datac => \erdy~combout\,
	datad => \control|T2~0_combout\,
	aclr => GND,
	ena => \data|x2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|dr2|Dout\(10));

-- Location: LC_X1_Y7_N8
\data|divider|datap|dr2|Dout[10]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr2|Dout\(10) = DFFEAS(((\data|divider|datap|dr2|Dout[15]~0_combout\ & ((\data|divider|datap|dr2|Dout\(9)))) # (!\data|divider|datap|dr2|Dout[15]~0_combout\ & (\data|divider|datap|dr2|Dout\(11)))), GLOBAL(\clk~combout\), VCC, , 
-- \data|divider|datap|dr2|Dout[5]~2_combout\, \data|dr2|Dout\(10), , , \data|divider|control|fsm_state~12_combout\)

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
	clk => \clk~combout\,
	dataa => \data|divider|datap|dr2|Dout\(11),
	datab => \data|divider|datap|dr2|Dout\(9),
	datac => \data|dr2|Dout\(10),
	datad => \data|divider|datap|dr2|Dout[15]~0_combout\,
	aclr => GND,
	sload => \data|divider|control|fsm_state~12_combout\,
	ena => \data|divider|datap|dr2|Dout[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr2|Dout\(10));

-- Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_din(11),
	combout => \din~combout\(11));

-- Location: LC_X4_Y7_N2
\data|dr1|Dout[11]\ : maxv_lcell
-- Equation(s):
-- \data|dr1|Dout\(11) = DFFEAS((\control|fsm_state.input1~regout\ & ((\erdy~combout\ & (\din~combout\(11))) # (!\erdy~combout\ & ((\data|dr2|Dout\(11)))))) # (!\control|fsm_state.input1~regout\ & (((\data|dr2|Dout\(11))))), GLOBAL(\clk~combout\), VCC, , 
-- \data|dr1|Dout[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bf80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \din~combout\(11),
	datab => \control|fsm_state.input1~regout\,
	datac => \erdy~combout\,
	datad => \data|dr2|Dout\(11),
	aclr => GND,
	ena => \data|dr1|Dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|dr1|Dout\(11));

-- Location: LC_X4_Y6_N9
\data|divider|datap|subtract|add11|s~0\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|subtract|add11|s~0_combout\ = \data|divider|datap|dr1|Dout\(11) $ ((((\data|divider|datap|dr2|Dout\(11)))))

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
	dataa => \data|divider|datap|dr1|Dout\(11),
	datad => \data|divider|datap|dr2|Dout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|subtract|add11|s~0_combout\);

-- Location: LC_X2_Y6_N5
\data|divider|datap|subtract|add10|cout~0\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|subtract|add10|cout~0_combout\ = ((\data|divider|datap|dr1|Dout\(10) & ((\data|divider|datap|subtract|add9|cout~0_combout\) # (!\data|divider|datap|dr2|Dout\(10)))) # (!\data|divider|datap|dr1|Dout\(10) & 
-- (!\data|divider|datap|dr2|Dout\(10) & \data|divider|datap|subtract|add9|cout~0_combout\)))

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
	datab => \data|divider|datap|dr1|Dout\(10),
	datac => \data|divider|datap|dr2|Dout\(10),
	datad => \data|divider|datap|subtract|add9|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|subtract|add10|cout~0_combout\);

-- Location: LC_X4_Y6_N8
\data|divider|datap|dr1|Dout[11]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr1|Dout\(11) = DFFEAS((\data|divider|control|fsm_state~12_combout\ & (\data|dr1|Dout\(11))) # (!\data|divider|control|fsm_state~12_combout\ & ((\data|divider|datap|subtract|add11|s~0_combout\ $ 
-- (!\data|divider|datap|subtract|add10|cout~0_combout\)))), GLOBAL(\clk~combout\), VCC, , \data|divider|datap|x1~combout\, , , , )

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
	clk => \clk~combout\,
	dataa => \data|dr1|Dout\(11),
	datab => \data|divider|datap|subtract|add11|s~0_combout\,
	datac => \data|divider|control|fsm_state~12_combout\,
	datad => \data|divider|datap|subtract|add10|cout~0_combout\,
	aclr => GND,
	ena => \data|divider|datap|x1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr1|Dout\(11));

-- Location: LC_X4_Y7_N6
\data|dr2|Dout[11]\ : maxv_lcell
-- Equation(s):
-- \data|dr2|Dout\(11) = DFFEAS((\erdy~combout\ & ((\control|T2~0_combout\ & (\din~combout\(11))) # (!\control|T2~0_combout\ & ((\data|divider|datap|dr1|Dout\(11)))))) # (!\erdy~combout\ & (((\data|divider|datap|dr1|Dout\(11))))), GLOBAL(\clk~combout\), VCC, 
-- , \data|x2~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "accc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \din~combout\(11),
	datab => \data|divider|datap|dr1|Dout\(11),
	datac => \erdy~combout\,
	datad => \control|T2~0_combout\,
	aclr => GND,
	ena => \data|x2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|dr2|Dout\(11));

-- Location: LC_X1_Y7_N3
\data|divider|datap|dr2|Dout[11]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr2|Dout\(11) = DFFEAS(((\data|divider|datap|dr2|Dout[15]~0_combout\ & ((\data|divider|datap|dr2|Dout\(10)))) # (!\data|divider|datap|dr2|Dout[15]~0_combout\ & (\data|divider|datap|dr2|Dout\(12)))), GLOBAL(\clk~combout\), VCC, , 
-- \data|divider|datap|dr2|Dout[5]~2_combout\, \data|dr2|Dout\(11), , , \data|divider|control|fsm_state~12_combout\)

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
	clk => \clk~combout\,
	dataa => \data|divider|datap|dr2|Dout\(12),
	datab => \data|divider|datap|dr2|Dout\(10),
	datac => \data|dr2|Dout\(11),
	datad => \data|divider|datap|dr2|Dout[15]~0_combout\,
	aclr => GND,
	sload => \data|divider|control|fsm_state~12_combout\,
	ena => \data|divider|datap|dr2|Dout[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr2|Dout\(11));

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_din(12),
	combout => \din~combout\(12));

-- Location: LC_X2_Y5_N3
\data|dr1|Dout[12]\ : maxv_lcell
-- Equation(s):
-- \data|dr1|Dout\(12) = DFFEAS((\control|fsm_state.input1~regout\ & ((\erdy~combout\ & ((\din~combout\(12)))) # (!\erdy~combout\ & (\data|dr2|Dout\(12))))) # (!\control|fsm_state.input1~regout\ & (\data|dr2|Dout\(12))), GLOBAL(\clk~combout\), VCC, , 
-- \data|dr1|Dout[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data|dr2|Dout\(12),
	datab => \din~combout\(12),
	datac => \control|fsm_state.input1~regout\,
	datad => \erdy~combout\,
	aclr => GND,
	ena => \data|dr1|Dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|dr1|Dout\(12));

-- Location: LC_X2_Y6_N6
\data|divider|datap|subtract|add11|cout~0\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|subtract|add11|cout~0_combout\ = (\data|divider|datap|dr1|Dout\(11) & (((\data|divider|datap|subtract|add10|cout~0_combout\) # (!\data|divider|datap|dr2|Dout\(11))))) # (!\data|divider|datap|dr1|Dout\(11) & 
-- (((!\data|divider|datap|dr2|Dout\(11) & \data|divider|datap|subtract|add10|cout~0_combout\))))

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
	dataa => \data|divider|datap|dr1|Dout\(11),
	datac => \data|divider|datap|dr2|Dout\(11),
	datad => \data|divider|datap|subtract|add10|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|subtract|add11|cout~0_combout\);

-- Location: LC_X1_Y7_N7
\data|divider|datap|subtract|add12|s~0\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|subtract|add12|s~0_combout\ = ((\data|divider|datap|dr2|Dout\(12) $ (\data|divider|datap|dr1|Dout\(12))))

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
	datac => \data|divider|datap|dr2|Dout\(12),
	datad => \data|divider|datap|dr1|Dout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|subtract|add12|s~0_combout\);

-- Location: LC_X1_Y6_N4
\data|divider|datap|dr1|Dout[12]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr1|Dout\(12) = DFFEAS((\data|divider|control|fsm_state~12_combout\ & (\data|dr1|Dout\(12))) # (!\data|divider|control|fsm_state~12_combout\ & ((\data|divider|datap|subtract|add11|cout~0_combout\ $ 
-- (!\data|divider|datap|subtract|add12|s~0_combout\)))), GLOBAL(\clk~combout\), VCC, , \data|divider|datap|x1~combout\, , , , )

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
	clk => \clk~combout\,
	dataa => \data|dr1|Dout\(12),
	datab => \data|divider|control|fsm_state~12_combout\,
	datac => \data|divider|datap|subtract|add11|cout~0_combout\,
	datad => \data|divider|datap|subtract|add12|s~0_combout\,
	aclr => GND,
	ena => \data|divider|datap|x1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr1|Dout\(12));

-- Location: LC_X2_Y5_N4
\data|dr2|Dout[12]\ : maxv_lcell
-- Equation(s):
-- \data|dr2|Dout\(12) = DFFEAS((\control|T2~0_combout\ & ((\erdy~combout\ & (\din~combout\(12))) # (!\erdy~combout\ & ((\data|divider|datap|dr1|Dout\(12)))))) # (!\control|T2~0_combout\ & (((\data|divider|datap|dr1|Dout\(12))))), GLOBAL(\clk~combout\), VCC, 
-- , \data|x2~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "df80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \control|T2~0_combout\,
	datab => \din~combout\(12),
	datac => \erdy~combout\,
	datad => \data|divider|datap|dr1|Dout\(12),
	aclr => GND,
	ena => \data|x2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|dr2|Dout\(12));

-- Location: LC_X1_Y7_N6
\data|divider|datap|dr2|Dout[12]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr2|Dout\(12) = DFFEAS(((\data|divider|datap|dr2|Dout[15]~0_combout\ & (\data|divider|datap|dr2|Dout\(11))) # (!\data|divider|datap|dr2|Dout[15]~0_combout\ & ((\data|divider|datap|dr2|Dout\(13))))), GLOBAL(\clk~combout\), VCC, , 
-- \data|divider|datap|dr2|Dout[5]~2_combout\, \data|dr2|Dout\(12), , , \data|divider|control|fsm_state~12_combout\)

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
	clk => \clk~combout\,
	dataa => \data|divider|datap|dr2|Dout\(11),
	datab => \data|divider|datap|dr2|Dout\(13),
	datac => \data|dr2|Dout\(12),
	datad => \data|divider|datap|dr2|Dout[15]~0_combout\,
	aclr => GND,
	sload => \data|divider|control|fsm_state~12_combout\,
	ena => \data|divider|datap|dr2|Dout[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr2|Dout\(12));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_din(13),
	combout => \din~combout\(13));

-- Location: LC_X1_Y6_N2
\data|divider|datap|subtract|add13|s~0\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|subtract|add13|s~0_combout\ = ((\data|divider|datap|dr1|Dout\(13) $ (\data|divider|datap|dr2|Dout\(13))))

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
	datac => \data|divider|datap|dr1|Dout\(13),
	datad => \data|divider|datap|dr2|Dout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|subtract|add13|s~0_combout\);

-- Location: LC_X1_Y8_N6
\data|dr1|Dout[13]\ : maxv_lcell
-- Equation(s):
-- \data|dr1|Dout\(13) = DFFEAS((\erdy~combout\ & ((\control|fsm_state.input1~regout\ & (\din~combout\(13))) # (!\control|fsm_state.input1~regout\ & ((\data|dr2|Dout\(13)))))) # (!\erdy~combout\ & (((\data|dr2|Dout\(13))))), GLOBAL(\clk~combout\), VCC, , 
-- \data|dr1|Dout[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bf80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \din~combout\(13),
	datab => \erdy~combout\,
	datac => \control|fsm_state.input1~regout\,
	datad => \data|dr2|Dout\(13),
	aclr => GND,
	ena => \data|dr1|Dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|dr1|Dout\(13));

-- Location: LC_X2_Y6_N7
\data|divider|datap|subtract|add12|cout~0\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|subtract|add12|cout~0_combout\ = ((\data|divider|datap|dr1|Dout\(12) & ((\data|divider|datap|subtract|add11|cout~0_combout\) # (!\data|divider|datap|dr2|Dout\(12)))) # (!\data|divider|datap|dr1|Dout\(12) & 
-- (!\data|divider|datap|dr2|Dout\(12) & \data|divider|datap|subtract|add11|cout~0_combout\)))

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
	datab => \data|divider|datap|dr1|Dout\(12),
	datac => \data|divider|datap|dr2|Dout\(12),
	datad => \data|divider|datap|subtract|add11|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|subtract|add12|cout~0_combout\);

-- Location: LC_X1_Y6_N0
\data|divider|datap|dr1|Dout[13]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr1|Dout\(13) = DFFEAS((\data|divider|control|fsm_state~12_combout\ & (((\data|dr1|Dout\(13))))) # (!\data|divider|control|fsm_state~12_combout\ & (\data|divider|datap|subtract|add13|s~0_combout\ $ 
-- (((!\data|divider|datap|subtract|add12|cout~0_combout\))))), GLOBAL(\clk~combout\), VCC, , \data|divider|datap|x1~combout\, , , , )

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
	clk => \clk~combout\,
	dataa => \data|divider|datap|subtract|add13|s~0_combout\,
	datab => \data|dr1|Dout\(13),
	datac => \data|divider|control|fsm_state~12_combout\,
	datad => \data|divider|datap|subtract|add12|cout~0_combout\,
	aclr => GND,
	ena => \data|divider|datap|x1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr1|Dout\(13));

-- Location: LC_X1_Y8_N2
\data|dr2|Dout[13]\ : maxv_lcell
-- Equation(s):
-- \data|dr2|Dout\(13) = DFFEAS((\control|T2~0_combout\ & ((\erdy~combout\ & (\din~combout\(13))) # (!\erdy~combout\ & ((\data|divider|datap|dr1|Dout\(13)))))) # (!\control|T2~0_combout\ & (((\data|divider|datap|dr1|Dout\(13))))), GLOBAL(\clk~combout\), VCC, 
-- , \data|x2~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f780",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \control|T2~0_combout\,
	datab => \erdy~combout\,
	datac => \din~combout\(13),
	datad => \data|divider|datap|dr1|Dout\(13),
	aclr => GND,
	ena => \data|x2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|dr2|Dout\(13));

-- Location: LC_X1_Y7_N1
\data|divider|datap|dr2|Dout[13]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr2|Dout\(13) = DFFEAS(((\data|divider|datap|dr2|Dout[15]~0_combout\ & (\data|divider|datap|dr2|Dout\(12))) # (!\data|divider|datap|dr2|Dout[15]~0_combout\ & ((\data|divider|datap|dr2|Dout\(14))))), GLOBAL(\clk~combout\), VCC, , 
-- \data|divider|datap|dr2|Dout[5]~2_combout\, \data|dr2|Dout\(13), , , \data|divider|control|fsm_state~12_combout\)

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
	clk => \clk~combout\,
	dataa => \data|divider|datap|dr2|Dout\(12),
	datab => \data|divider|datap|dr2|Dout\(14),
	datac => \data|dr2|Dout\(13),
	datad => \data|divider|datap|dr2|Dout[15]~0_combout\,
	aclr => GND,
	sload => \data|divider|control|fsm_state~12_combout\,
	ena => \data|divider|datap|dr2|Dout[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr2|Dout\(13));

-- Location: LC_X1_Y6_N5
\data|divider|datap|subtract|add13|cout~0\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|subtract|add13|cout~0_combout\ = (\data|divider|datap|dr2|Dout\(13) & (((\data|divider|datap|dr1|Dout\(13) & \data|divider|datap|subtract|add12|cout~0_combout\)))) # (!\data|divider|datap|dr2|Dout\(13) & 
-- (((\data|divider|datap|dr1|Dout\(13)) # (\data|divider|datap|subtract|add12|cout~0_combout\))))

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
	dataa => \data|divider|datap|dr2|Dout\(13),
	datac => \data|divider|datap|dr1|Dout\(13),
	datad => \data|divider|datap|subtract|add12|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|subtract|add13|cout~0_combout\);

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_din(14),
	combout => \din~combout\(14));

-- Location: LC_X1_Y5_N3
\data|dr2|Dout[14]\ : maxv_lcell
-- Equation(s):
-- \data|dr2|Dout\(14) = DFFEAS((\erdy~combout\ & ((\control|T2~0_combout\ & (\din~combout\(14))) # (!\control|T2~0_combout\ & ((\data|divider|datap|dr1|Dout\(14)))))) # (!\erdy~combout\ & (((\data|divider|datap|dr1|Dout\(14))))), GLOBAL(\clk~combout\), VCC, 
-- , \data|x2~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f780",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \erdy~combout\,
	datab => \control|T2~0_combout\,
	datac => \din~combout\(14),
	datad => \data|divider|datap|dr1|Dout\(14),
	aclr => GND,
	ena => \data|x2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|dr2|Dout\(14));

-- Location: LC_X1_Y6_N9
\data|dr1|Dout[14]\ : maxv_lcell
-- Equation(s):
-- \data|dr1|Dout\(14) = DFFEAS((\erdy~combout\ & ((\control|fsm_state.input1~regout\ & (\din~combout\(14))) # (!\control|fsm_state.input1~regout\ & ((\data|dr2|Dout\(14)))))) # (!\erdy~combout\ & (((\data|dr2|Dout\(14))))), GLOBAL(\clk~combout\), VCC, , 
-- \data|dr1|Dout[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \erdy~combout\,
	datab => \din~combout\(14),
	datac => \data|dr2|Dout\(14),
	datad => \control|fsm_state.input1~regout\,
	aclr => GND,
	ena => \data|dr1|Dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|dr1|Dout\(14));

-- Location: LC_X1_Y6_N3
\data|divider|datap|dr1|Dout[14]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr1|Dout\(14) = DFFEAS((\data|divider|control|fsm_state~12_combout\ & (((\data|dr1|Dout\(14))))) # (!\data|divider|control|fsm_state~12_combout\ & (\data|divider|datap|subtract|add14|s~0_combout\ $ 
-- ((!\data|divider|datap|subtract|add13|cout~0_combout\)))), GLOBAL(\clk~combout\), VCC, , \data|divider|datap|x1~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ed21",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data|divider|datap|subtract|add14|s~0_combout\,
	datab => \data|divider|control|fsm_state~12_combout\,
	datac => \data|divider|datap|subtract|add13|cout~0_combout\,
	datad => \data|dr1|Dout\(14),
	aclr => GND,
	ena => \data|divider|datap|x1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr1|Dout\(14));

-- Location: LC_X1_Y6_N6
\data|divider|datap|DDREG_in[15]~16\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|DDREG_in[15]~16_combout\ = \data|divider|datap|dr2|Dout\(15) $ (((\data|divider|datap|dr1|Dout\(14) & ((\data|divider|datap|subtract|add13|cout~0_combout\) # (!\data|divider|datap|dr2|Dout\(14)))) # (!\data|divider|datap|dr1|Dout\(14) 
-- & (!\data|divider|datap|dr2|Dout\(14) & \data|divider|datap|subtract|add13|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "63c6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data|divider|datap|dr1|Dout\(14),
	datab => \data|divider|datap|dr2|Dout\(15),
	datac => \data|divider|datap|dr2|Dout\(14),
	datad => \data|divider|datap|subtract|add13|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|DDREG_in[15]~16_combout\);

-- Location: LC_X1_Y6_N7
\data|divider|datap|dr1|Dout[15]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr1|Dout\(15) = DFFEAS((\data|divider|control|fsm_state~12_combout\ & (\data|dr1|Dout\(15))) # (!\data|divider|control|fsm_state~12_combout\ & ((\data|divider|datap|dr1|Dout\(15) $ (!\data|divider|datap|DDREG_in[15]~16_combout\)))), 
-- GLOBAL(\clk~combout\), VCC, , \data|divider|datap|x1~combout\, , , , )

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
	clk => \clk~combout\,
	dataa => \data|dr1|Dout\(15),
	datab => \data|divider|datap|dr1|Dout\(15),
	datac => \data|divider|control|fsm_state~12_combout\,
	datad => \data|divider|datap|DDREG_in[15]~16_combout\,
	aclr => GND,
	ena => \data|divider|datap|x1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr1|Dout\(15));

-- Location: LC_X2_Y7_N2
\data|divider|datap|comparator|LessThan0~77\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|comparator|LessThan0~77_cout0\ = CARRY((!\data|divider|datap|dr1|Dout\(0) & (\data|divider|datap|dr2|Dout\(0))))
-- \data|divider|datap|comparator|LessThan0~77COUT1_81\ = CARRY((!\data|divider|datap|dr1|Dout\(0) & (\data|divider|datap|dr2|Dout\(0))))

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
	dataa => \data|divider|datap|dr1|Dout\(0),
	datab => \data|divider|datap|dr2|Dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|comparator|LessThan0~75\,
	cout0 => \data|divider|datap|comparator|LessThan0~77_cout0\,
	cout1 => \data|divider|datap|comparator|LessThan0~77COUT1_81\);

-- Location: LC_X2_Y7_N3
\data|divider|datap|comparator|LessThan0~72\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|comparator|LessThan0~72_cout0\ = CARRY((\data|divider|datap|dr1|Dout\(1) & ((!\data|divider|datap|comparator|LessThan0~77_cout0\) # (!\data|divider|datap|dr2|Dout\(1)))) # (!\data|divider|datap|dr1|Dout\(1) & 
-- (!\data|divider|datap|dr2|Dout\(1) & !\data|divider|datap|comparator|LessThan0~77_cout0\)))
-- \data|divider|datap|comparator|LessThan0~72COUT1_82\ = CARRY((\data|divider|datap|dr1|Dout\(1) & ((!\data|divider|datap|comparator|LessThan0~77COUT1_81\) # (!\data|divider|datap|dr2|Dout\(1)))) # (!\data|divider|datap|dr1|Dout\(1) & 
-- (!\data|divider|datap|dr2|Dout\(1) & !\data|divider|datap|comparator|LessThan0~77COUT1_81\)))

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
	dataa => \data|divider|datap|dr1|Dout\(1),
	datab => \data|divider|datap|dr2|Dout\(1),
	cin0 => \data|divider|datap|comparator|LessThan0~77_cout0\,
	cin1 => \data|divider|datap|comparator|LessThan0~77COUT1_81\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|comparator|LessThan0~70\,
	cout0 => \data|divider|datap|comparator|LessThan0~72_cout0\,
	cout1 => \data|divider|datap|comparator|LessThan0~72COUT1_82\);

-- Location: LC_X2_Y7_N4
\data|divider|datap|comparator|LessThan0~67\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|comparator|LessThan0~67_cout\ = CARRY((\data|divider|datap|dr2|Dout\(2) & ((!\data|divider|datap|comparator|LessThan0~72COUT1_82\) # (!\data|divider|datap|dr1|Dout\(2)))) # (!\data|divider|datap|dr2|Dout\(2) & 
-- (!\data|divider|datap|dr1|Dout\(2) & !\data|divider|datap|comparator|LessThan0~72COUT1_82\)))

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
	dataa => \data|divider|datap|dr2|Dout\(2),
	datab => \data|divider|datap|dr1|Dout\(2),
	cin0 => \data|divider|datap|comparator|LessThan0~72_cout0\,
	cin1 => \data|divider|datap|comparator|LessThan0~72COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|comparator|LessThan0~65\,
	cout => \data|divider|datap|comparator|LessThan0~67_cout\);

-- Location: LC_X2_Y7_N5
\data|divider|datap|comparator|LessThan0~62\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|comparator|LessThan0~62_cout0\ = CARRY((\data|divider|datap|dr1|Dout\(3) & ((!\data|divider|datap|comparator|LessThan0~67_cout\) # (!\data|divider|datap|dr2|Dout\(3)))) # (!\data|divider|datap|dr1|Dout\(3) & 
-- (!\data|divider|datap|dr2|Dout\(3) & !\data|divider|datap|comparator|LessThan0~67_cout\)))
-- \data|divider|datap|comparator|LessThan0~62COUT1_83\ = CARRY((\data|divider|datap|dr1|Dout\(3) & ((!\data|divider|datap|comparator|LessThan0~67_cout\) # (!\data|divider|datap|dr2|Dout\(3)))) # (!\data|divider|datap|dr1|Dout\(3) & 
-- (!\data|divider|datap|dr2|Dout\(3) & !\data|divider|datap|comparator|LessThan0~67_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data|divider|datap|dr1|Dout\(3),
	datab => \data|divider|datap|dr2|Dout\(3),
	cin => \data|divider|datap|comparator|LessThan0~67_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|comparator|LessThan0~60\,
	cout0 => \data|divider|datap|comparator|LessThan0~62_cout0\,
	cout1 => \data|divider|datap|comparator|LessThan0~62COUT1_83\);

-- Location: LC_X2_Y7_N6
\data|divider|datap|comparator|LessThan0~57\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|comparator|LessThan0~57_cout0\ = CARRY((\data|divider|datap|dr1|Dout\(4) & (\data|divider|datap|dr2|Dout\(4) & !\data|divider|datap|comparator|LessThan0~62_cout0\)) # (!\data|divider|datap|dr1|Dout\(4) & 
-- ((\data|divider|datap|dr2|Dout\(4)) # (!\data|divider|datap|comparator|LessThan0~62_cout0\))))
-- \data|divider|datap|comparator|LessThan0~57COUT1_84\ = CARRY((\data|divider|datap|dr1|Dout\(4) & (\data|divider|datap|dr2|Dout\(4) & !\data|divider|datap|comparator|LessThan0~62COUT1_83\)) # (!\data|divider|datap|dr1|Dout\(4) & 
-- ((\data|divider|datap|dr2|Dout\(4)) # (!\data|divider|datap|comparator|LessThan0~62COUT1_83\))))

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
	dataa => \data|divider|datap|dr1|Dout\(4),
	datab => \data|divider|datap|dr2|Dout\(4),
	cin => \data|divider|datap|comparator|LessThan0~67_cout\,
	cin0 => \data|divider|datap|comparator|LessThan0~62_cout0\,
	cin1 => \data|divider|datap|comparator|LessThan0~62COUT1_83\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|comparator|LessThan0~55\,
	cout0 => \data|divider|datap|comparator|LessThan0~57_cout0\,
	cout1 => \data|divider|datap|comparator|LessThan0~57COUT1_84\);

-- Location: LC_X2_Y7_N7
\data|divider|datap|comparator|LessThan0~52\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|comparator|LessThan0~52_cout0\ = CARRY((\data|divider|datap|dr1|Dout\(5) & ((!\data|divider|datap|comparator|LessThan0~57_cout0\) # (!\data|divider|datap|dr2|Dout\(5)))) # (!\data|divider|datap|dr1|Dout\(5) & 
-- (!\data|divider|datap|dr2|Dout\(5) & !\data|divider|datap|comparator|LessThan0~57_cout0\)))
-- \data|divider|datap|comparator|LessThan0~52COUT1_85\ = CARRY((\data|divider|datap|dr1|Dout\(5) & ((!\data|divider|datap|comparator|LessThan0~57COUT1_84\) # (!\data|divider|datap|dr2|Dout\(5)))) # (!\data|divider|datap|dr1|Dout\(5) & 
-- (!\data|divider|datap|dr2|Dout\(5) & !\data|divider|datap|comparator|LessThan0~57COUT1_84\)))

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
	dataa => \data|divider|datap|dr1|Dout\(5),
	datab => \data|divider|datap|dr2|Dout\(5),
	cin => \data|divider|datap|comparator|LessThan0~67_cout\,
	cin0 => \data|divider|datap|comparator|LessThan0~57_cout0\,
	cin1 => \data|divider|datap|comparator|LessThan0~57COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|comparator|LessThan0~50\,
	cout0 => \data|divider|datap|comparator|LessThan0~52_cout0\,
	cout1 => \data|divider|datap|comparator|LessThan0~52COUT1_85\);

-- Location: LC_X2_Y7_N8
\data|divider|datap|comparator|LessThan0~47\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|comparator|LessThan0~47_cout0\ = CARRY((\data|divider|datap|dr2|Dout\(6) & ((!\data|divider|datap|comparator|LessThan0~52_cout0\) # (!\data|divider|datap|dr1|Dout\(6)))) # (!\data|divider|datap|dr2|Dout\(6) & 
-- (!\data|divider|datap|dr1|Dout\(6) & !\data|divider|datap|comparator|LessThan0~52_cout0\)))
-- \data|divider|datap|comparator|LessThan0~47COUT1_86\ = CARRY((\data|divider|datap|dr2|Dout\(6) & ((!\data|divider|datap|comparator|LessThan0~52COUT1_85\) # (!\data|divider|datap|dr1|Dout\(6)))) # (!\data|divider|datap|dr2|Dout\(6) & 
-- (!\data|divider|datap|dr1|Dout\(6) & !\data|divider|datap|comparator|LessThan0~52COUT1_85\)))

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
	dataa => \data|divider|datap|dr2|Dout\(6),
	datab => \data|divider|datap|dr1|Dout\(6),
	cin => \data|divider|datap|comparator|LessThan0~67_cout\,
	cin0 => \data|divider|datap|comparator|LessThan0~52_cout0\,
	cin1 => \data|divider|datap|comparator|LessThan0~52COUT1_85\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|comparator|LessThan0~45\,
	cout0 => \data|divider|datap|comparator|LessThan0~47_cout0\,
	cout1 => \data|divider|datap|comparator|LessThan0~47COUT1_86\);

-- Location: LC_X2_Y7_N9
\data|divider|datap|comparator|LessThan0~42\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|comparator|LessThan0~42_cout\ = CARRY((\data|divider|datap|dr1|Dout\(7) & ((!\data|divider|datap|comparator|LessThan0~47COUT1_86\) # (!\data|divider|datap|dr2|Dout\(7)))) # (!\data|divider|datap|dr1|Dout\(7) & 
-- (!\data|divider|datap|dr2|Dout\(7) & !\data|divider|datap|comparator|LessThan0~47COUT1_86\)))

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
	dataa => \data|divider|datap|dr1|Dout\(7),
	datab => \data|divider|datap|dr2|Dout\(7),
	cin => \data|divider|datap|comparator|LessThan0~67_cout\,
	cin0 => \data|divider|datap|comparator|LessThan0~47_cout0\,
	cin1 => \data|divider|datap|comparator|LessThan0~47COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|comparator|LessThan0~40\,
	cout => \data|divider|datap|comparator|LessThan0~42_cout\);

-- Location: LC_X3_Y7_N0
\data|divider|datap|comparator|LessThan0~37\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|comparator|LessThan0~37_cout0\ = CARRY((\data|divider|datap|dr2|Dout\(8) & ((!\data|divider|datap|comparator|LessThan0~42_cout\) # (!\data|divider|datap|dr1|Dout\(8)))) # (!\data|divider|datap|dr2|Dout\(8) & 
-- (!\data|divider|datap|dr1|Dout\(8) & !\data|divider|datap|comparator|LessThan0~42_cout\)))
-- \data|divider|datap|comparator|LessThan0~37COUT1_87\ = CARRY((\data|divider|datap|dr2|Dout\(8) & ((!\data|divider|datap|comparator|LessThan0~42_cout\) # (!\data|divider|datap|dr1|Dout\(8)))) # (!\data|divider|datap|dr2|Dout\(8) & 
-- (!\data|divider|datap|dr1|Dout\(8) & !\data|divider|datap|comparator|LessThan0~42_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data|divider|datap|dr2|Dout\(8),
	datab => \data|divider|datap|dr1|Dout\(8),
	cin => \data|divider|datap|comparator|LessThan0~42_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|comparator|LessThan0~35\,
	cout0 => \data|divider|datap|comparator|LessThan0~37_cout0\,
	cout1 => \data|divider|datap|comparator|LessThan0~37COUT1_87\);

-- Location: LC_X3_Y7_N1
\data|divider|datap|comparator|LessThan0~32\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|comparator|LessThan0~32_cout0\ = CARRY((\data|divider|datap|dr1|Dout\(9) & ((!\data|divider|datap|comparator|LessThan0~37_cout0\) # (!\data|divider|datap|dr2|Dout\(9)))) # (!\data|divider|datap|dr1|Dout\(9) & 
-- (!\data|divider|datap|dr2|Dout\(9) & !\data|divider|datap|comparator|LessThan0~37_cout0\)))
-- \data|divider|datap|comparator|LessThan0~32COUT1_88\ = CARRY((\data|divider|datap|dr1|Dout\(9) & ((!\data|divider|datap|comparator|LessThan0~37COUT1_87\) # (!\data|divider|datap|dr2|Dout\(9)))) # (!\data|divider|datap|dr1|Dout\(9) & 
-- (!\data|divider|datap|dr2|Dout\(9) & !\data|divider|datap|comparator|LessThan0~37COUT1_87\)))

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
	dataa => \data|divider|datap|dr1|Dout\(9),
	datab => \data|divider|datap|dr2|Dout\(9),
	cin => \data|divider|datap|comparator|LessThan0~42_cout\,
	cin0 => \data|divider|datap|comparator|LessThan0~37_cout0\,
	cin1 => \data|divider|datap|comparator|LessThan0~37COUT1_87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|comparator|LessThan0~30\,
	cout0 => \data|divider|datap|comparator|LessThan0~32_cout0\,
	cout1 => \data|divider|datap|comparator|LessThan0~32COUT1_88\);

-- Location: LC_X3_Y7_N2
\data|divider|datap|comparator|LessThan0~27\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|comparator|LessThan0~27_cout0\ = CARRY((\data|divider|datap|dr2|Dout\(10) & ((!\data|divider|datap|comparator|LessThan0~32_cout0\) # (!\data|divider|datap|dr1|Dout\(10)))) # (!\data|divider|datap|dr2|Dout\(10) & 
-- (!\data|divider|datap|dr1|Dout\(10) & !\data|divider|datap|comparator|LessThan0~32_cout0\)))
-- \data|divider|datap|comparator|LessThan0~27COUT1_89\ = CARRY((\data|divider|datap|dr2|Dout\(10) & ((!\data|divider|datap|comparator|LessThan0~32COUT1_88\) # (!\data|divider|datap|dr1|Dout\(10)))) # (!\data|divider|datap|dr2|Dout\(10) & 
-- (!\data|divider|datap|dr1|Dout\(10) & !\data|divider|datap|comparator|LessThan0~32COUT1_88\)))

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
	dataa => \data|divider|datap|dr2|Dout\(10),
	datab => \data|divider|datap|dr1|Dout\(10),
	cin => \data|divider|datap|comparator|LessThan0~42_cout\,
	cin0 => \data|divider|datap|comparator|LessThan0~32_cout0\,
	cin1 => \data|divider|datap|comparator|LessThan0~32COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|comparator|LessThan0~25\,
	cout0 => \data|divider|datap|comparator|LessThan0~27_cout0\,
	cout1 => \data|divider|datap|comparator|LessThan0~27COUT1_89\);

-- Location: LC_X3_Y7_N3
\data|divider|datap|comparator|LessThan0~22\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|comparator|LessThan0~22_cout0\ = CARRY((\data|divider|datap|dr1|Dout\(11) & ((!\data|divider|datap|comparator|LessThan0~27_cout0\) # (!\data|divider|datap|dr2|Dout\(11)))) # (!\data|divider|datap|dr1|Dout\(11) & 
-- (!\data|divider|datap|dr2|Dout\(11) & !\data|divider|datap|comparator|LessThan0~27_cout0\)))
-- \data|divider|datap|comparator|LessThan0~22COUT1_90\ = CARRY((\data|divider|datap|dr1|Dout\(11) & ((!\data|divider|datap|comparator|LessThan0~27COUT1_89\) # (!\data|divider|datap|dr2|Dout\(11)))) # (!\data|divider|datap|dr1|Dout\(11) & 
-- (!\data|divider|datap|dr2|Dout\(11) & !\data|divider|datap|comparator|LessThan0~27COUT1_89\)))

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
	dataa => \data|divider|datap|dr1|Dout\(11),
	datab => \data|divider|datap|dr2|Dout\(11),
	cin => \data|divider|datap|comparator|LessThan0~42_cout\,
	cin0 => \data|divider|datap|comparator|LessThan0~27_cout0\,
	cin1 => \data|divider|datap|comparator|LessThan0~27COUT1_89\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|comparator|LessThan0~20\,
	cout0 => \data|divider|datap|comparator|LessThan0~22_cout0\,
	cout1 => \data|divider|datap|comparator|LessThan0~22COUT1_90\);

-- Location: LC_X3_Y7_N4
\data|divider|datap|comparator|LessThan0~17\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|comparator|LessThan0~17_cout\ = CARRY((\data|divider|datap|dr1|Dout\(12) & (\data|divider|datap|dr2|Dout\(12) & !\data|divider|datap|comparator|LessThan0~22COUT1_90\)) # (!\data|divider|datap|dr1|Dout\(12) & 
-- ((\data|divider|datap|dr2|Dout\(12)) # (!\data|divider|datap|comparator|LessThan0~22COUT1_90\))))

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
	dataa => \data|divider|datap|dr1|Dout\(12),
	datab => \data|divider|datap|dr2|Dout\(12),
	cin => \data|divider|datap|comparator|LessThan0~42_cout\,
	cin0 => \data|divider|datap|comparator|LessThan0~22_cout0\,
	cin1 => \data|divider|datap|comparator|LessThan0~22COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|comparator|LessThan0~15\,
	cout => \data|divider|datap|comparator|LessThan0~17_cout\);

-- Location: LC_X3_Y7_N5
\data|divider|datap|comparator|LessThan0~12\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|comparator|LessThan0~12_cout0\ = CARRY((\data|divider|datap|dr1|Dout\(13) & ((!\data|divider|datap|comparator|LessThan0~17_cout\) # (!\data|divider|datap|dr2|Dout\(13)))) # (!\data|divider|datap|dr1|Dout\(13) & 
-- (!\data|divider|datap|dr2|Dout\(13) & !\data|divider|datap|comparator|LessThan0~17_cout\)))
-- \data|divider|datap|comparator|LessThan0~12COUT1_91\ = CARRY((\data|divider|datap|dr1|Dout\(13) & ((!\data|divider|datap|comparator|LessThan0~17_cout\) # (!\data|divider|datap|dr2|Dout\(13)))) # (!\data|divider|datap|dr1|Dout\(13) & 
-- (!\data|divider|datap|dr2|Dout\(13) & !\data|divider|datap|comparator|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data|divider|datap|dr1|Dout\(13),
	datab => \data|divider|datap|dr2|Dout\(13),
	cin => \data|divider|datap|comparator|LessThan0~17_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|comparator|LessThan0~10\,
	cout0 => \data|divider|datap|comparator|LessThan0~12_cout0\,
	cout1 => \data|divider|datap|comparator|LessThan0~12COUT1_91\);

-- Location: LC_X3_Y7_N6
\data|divider|datap|comparator|LessThan0~7\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|comparator|LessThan0~7_cout0\ = CARRY((\data|divider|datap|dr1|Dout\(14) & (\data|divider|datap|dr2|Dout\(14) & !\data|divider|datap|comparator|LessThan0~12_cout0\)) # (!\data|divider|datap|dr1|Dout\(14) & 
-- ((\data|divider|datap|dr2|Dout\(14)) # (!\data|divider|datap|comparator|LessThan0~12_cout0\))))
-- \data|divider|datap|comparator|LessThan0~7COUT1_92\ = CARRY((\data|divider|datap|dr1|Dout\(14) & (\data|divider|datap|dr2|Dout\(14) & !\data|divider|datap|comparator|LessThan0~12COUT1_91\)) # (!\data|divider|datap|dr1|Dout\(14) & 
-- ((\data|divider|datap|dr2|Dout\(14)) # (!\data|divider|datap|comparator|LessThan0~12COUT1_91\))))

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
	dataa => \data|divider|datap|dr1|Dout\(14),
	datab => \data|divider|datap|dr2|Dout\(14),
	cin => \data|divider|datap|comparator|LessThan0~17_cout\,
	cin0 => \data|divider|datap|comparator|LessThan0~12_cout0\,
	cin1 => \data|divider|datap|comparator|LessThan0~12COUT1_91\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|comparator|LessThan0~5\,
	cout0 => \data|divider|datap|comparator|LessThan0~7_cout0\,
	cout1 => \data|divider|datap|comparator|LessThan0~7COUT1_92\);

-- Location: LC_X3_Y7_N7
\data|divider|datap|comparator|LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|comparator|LessThan0~0_combout\ = ((\data|divider|datap|dr2|Dout\(15) & (((!\data|divider|datap|comparator|LessThan0~17_cout\ & \data|divider|datap|comparator|LessThan0~7_cout0\) # (\data|divider|datap|comparator|LessThan0~17_cout\ & 
-- \data|divider|datap|comparator|LessThan0~7COUT1_92\)) # (!\data|divider|datap|dr1|Dout\(15)))) # (!\data|divider|datap|dr2|Dout\(15) & ((!\data|divider|datap|comparator|LessThan0~17_cout\ & \data|divider|datap|comparator|LessThan0~7_cout0\) # 
-- (\data|divider|datap|comparator|LessThan0~17_cout\ & \data|divider|datap|comparator|LessThan0~7COUT1_92\) & !\data|divider|datap|dr1|Dout\(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c0fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \data|divider|datap|dr2|Dout\(15),
	datad => \data|divider|datap|dr1|Dout\(15),
	cin => \data|divider|datap|comparator|LessThan0~17_cout\,
	cin0 => \data|divider|datap|comparator|LessThan0~7_cout0\,
	cin1 => \data|divider|datap|comparator|LessThan0~7COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|comparator|LessThan0~0_combout\);

-- Location: LC_X4_Y5_N6
\data|divider|control|fsm_state.subtracting\ : maxv_lcell
-- Equation(s):
-- \data|divider|control|fsm_state.subtracting~regout\ = DFFEAS((\data|divider|control|fsm_state.comparing~regout\ & (!\reset~combout\ & ((!\data|divider|datap|comparator|LessThan0~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0022",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data|divider|control|fsm_state.comparing~regout\,
	datab => \reset~combout\,
	datad => \data|divider|datap|comparator|LessThan0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|control|fsm_state.subtracting~regout\);

-- Location: LC_X4_Y5_N8
\data|divider|control|fsm_state~17\ : maxv_lcell
-- Equation(s):
-- \data|divider|control|fsm_state~17_combout\ = (!\data|divider|control|fsm_state.subtracting~regout\ & (\data|divider|datap|dr2|Dout\(15) & (\data|divider|control|fsm_state.leftshift~regout\ & !\data|divider|control|fsm_state.comparing~regout\)))

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
	dataa => \data|divider|control|fsm_state.subtracting~regout\,
	datab => \data|divider|datap|dr2|Dout\(15),
	datac => \data|divider|control|fsm_state.leftshift~regout\,
	datad => \data|divider|control|fsm_state.comparing~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|control|fsm_state~17_combout\);

-- Location: LC_X4_Y5_N2
\data|divider|control|fsm_state~18\ : maxv_lcell
-- Equation(s):
-- \data|divider|control|fsm_state~18_combout\ = (\data|divider|control|fsm_state.doing~regout\ & (((!\data|divider|datap|dr5|Dout\(0))))) # (!\data|divider|control|fsm_state.doing~regout\ & (\data|divider|control|fsm_state~17_combout\ & 
-- (!\data|divider|control|fsm_state.donestate~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "02f2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data|divider|control|fsm_state~17_combout\,
	datab => \data|divider|control|fsm_state.donestate~regout\,
	datac => \data|divider|control|fsm_state.doing~regout\,
	datad => \data|divider|datap|dr5|Dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|control|fsm_state~18_combout\);

-- Location: LC_X4_Y5_N3
\data|divider|control|fsm_state.comparing\ : maxv_lcell
-- Equation(s):
-- \data|divider|control|fsm_state.comparing~regout\ = DFFEAS(((\data|divider|control|fsm_state~18_combout\ & ((!\reset~combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \data|divider|control|fsm_state~18_combout\,
	datad => \reset~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|control|fsm_state.comparing~regout\);

-- Location: LC_X4_Y5_N4
\data|divider|control|fsm_state.doing\ : maxv_lcell
-- Equation(s):
-- \data|divider|control|fsm_state.doing~regout\ = DFFEAS((!\reset~combout\ & ((\data|divider|control|fsm_state.subtracting~regout\) # ((\data|divider|control|fsm_state.comparing~regout\ & \data|divider|datap|comparator|LessThan0~0_combout\)))), 
-- GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3230",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data|divider|control|fsm_state.comparing~regout\,
	datab => \reset~combout\,
	datac => \data|divider|control|fsm_state.subtracting~regout\,
	datad => \data|divider|datap|comparator|LessThan0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|control|fsm_state.doing~regout\);

-- Location: LC_X4_Y5_N9
\data|divider|control|fsm_state.donestate\ : maxv_lcell
-- Equation(s):
-- \data|divider|control|fsm_state.donestate~regout\ = DFFEAS(((!\reset~combout\ & (\data|divider|control|fsm_state.doing~regout\ & \data|divider|datap|dr5|Dout\(0)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	datab => \reset~combout\,
	datac => \data|divider|control|fsm_state.doing~regout\,
	datad => \data|divider|datap|dr5|Dout\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|control|fsm_state.donestate~regout\);

-- Location: LC_X4_Y5_N5
\data|divider|control|fsm_state.phi\ : maxv_lcell
-- Equation(s):
-- \data|divider|control|fsm_state.phi~regout\ = DFFEAS((!\data|divider|control|fsm_state.donestate~regout\ & (!\reset~combout\ & ((\data|divider|control|fsm_state.phi~regout\) # (\control|fsm_state.doDivide~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , 
-- )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0032",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data|divider|control|fsm_state.phi~regout\,
	datab => \data|divider|control|fsm_state.donestate~regout\,
	datac => \control|fsm_state.doDivide~regout\,
	datad => \reset~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|control|fsm_state.phi~regout\);

-- Location: LC_X4_Y5_N1
\data|divider|control|fsm_state.leftshift\ : maxv_lcell
-- Equation(s):
-- \data|divider|control|fsm_state.leftshift~regout\ = DFFEAS((!\reset~combout\ & ((\data|divider|datap|dr2|Dout[15]~0_combout\) # ((!\data|divider|control|fsm_state.phi~regout\ & \control|fsm_state.doDivide~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , 
-- )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00dc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data|divider|control|fsm_state.phi~regout\,
	datab => \data|divider|datap|dr2|Dout[15]~0_combout\,
	datac => \control|fsm_state.doDivide~regout\,
	datad => \reset~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|control|fsm_state.leftshift~regout\);

-- Location: LC_X1_Y5_N8
\data|divider|datap|DRREG_in[14]~0\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|DRREG_in[14]~0_combout\ = ((\data|divider|control|fsm_state.leftshift~regout\ & ((\data|divider|datap|dr2|Dout\(13)))))

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
	datab => \data|divider|control|fsm_state.leftshift~regout\,
	datad => \data|divider|datap|dr2|Dout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|DRREG_in[14]~0_combout\);

-- Location: LC_X1_Y5_N6
\data|divider|datap|dr2|Dout[14]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr2|Dout\(14) = DFFEAS((\data|divider|control|fsm_state~12_combout\ & (((\data|dr2|Dout\(14))))) # (!\data|divider|control|fsm_state~12_combout\ & ((\data|divider|datap|DRREG_in[14]~0_combout\) # 
-- ((\data|divider|datap|dr2|Dout\(15))))), GLOBAL(\clk~combout\), VCC, , \data|divider|datap|dr2|Dout[5]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe0e",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data|divider|datap|DRREG_in[14]~0_combout\,
	datab => \data|divider|datap|dr2|Dout\(15),
	datac => \data|divider|control|fsm_state~12_combout\,
	datad => \data|dr2|Dout\(14),
	aclr => GND,
	ena => \data|divider|datap|dr2|Dout[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr2|Dout\(14));

-- Location: LC_X1_Y5_N9
\data|divider|datap|dr2|Dout[15]~3\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr2|Dout[15]~3_combout\ = (\data|divider|control|fsm_state~12_combout\ & (\data|dr2|Dout\(15))) # (!\data|divider|control|fsm_state~12_combout\ & (((\data|divider|datap|dr2|Dout\(15) & !\data|divider|datap|dr2|Dout[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data|dr2|Dout\(15),
	datab => \data|divider|datap|dr2|Dout\(15),
	datac => \data|divider|control|fsm_state~12_combout\,
	datad => \data|divider|datap|dr2|Dout[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|dr2|Dout[15]~3_combout\);

-- Location: LC_X3_Y5_N2
\data|divider|datap|dr2|Dout[15]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr2|Dout\(15) = DFFEAS((\data|divider|datap|dr2|Dout[15]~3_combout\) # ((\data|divider|datap|dr2|Dout[15]~0_combout\ & (\data|divider|datap|dr2|Dout\(14) & !\data|divider|control|fsm_state~12_combout\))), GLOBAL(\clk~combout\), VCC, , 
-- , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data|divider|datap|dr2|Dout[15]~0_combout\,
	datab => \data|divider|datap|dr2|Dout\(14),
	datac => \data|divider|control|fsm_state~12_combout\,
	datad => \data|divider|datap|dr2|Dout[15]~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr2|Dout\(15));

-- Location: LC_X3_Y5_N6
\data|divider|datap|dr2|Dout[15]~0\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr2|Dout[15]~0_combout\ = ((!\data|divider|datap|dr2|Dout\(15) & ((\data|divider|control|fsm_state.leftshift~regout\))))

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
	datab => \data|divider|datap|dr2|Dout\(15),
	datad => \data|divider|control|fsm_state.leftshift~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|dr2|Dout[15]~0_combout\);

-- Location: LC_X3_Y6_N1
\data|divider|datap|dr2|Dout[4]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr2|Dout\(4) = DFFEAS((\data|divider|datap|dr2|Dout[15]~0_combout\ & (((\data|divider|datap|dr2|Dout\(3))))) # (!\data|divider|datap|dr2|Dout[15]~0_combout\ & (\data|divider|datap|dr2|Dout\(5))), GLOBAL(\clk~combout\), VCC, , 
-- \data|divider|datap|dr2|Dout[5]~2_combout\, \data|dr2|Dout\(4), , , \data|divider|control|fsm_state~12_combout\)

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
	clk => \clk~combout\,
	dataa => \data|divider|datap|dr2|Dout\(5),
	datab => \data|divider|datap|dr2|Dout[15]~0_combout\,
	datac => \data|dr2|Dout\(4),
	datad => \data|divider|datap|dr2|Dout\(3),
	aclr => GND,
	sload => \data|divider|control|fsm_state~12_combout\,
	ena => \data|divider|datap|dr2|Dout[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr2|Dout\(4));

-- Location: LC_X1_Y7_N2
\data|divider|datap|dr2|Dout[5]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr2|Dout\(5) = DFFEAS(((\data|divider|datap|dr2|Dout[15]~0_combout\ & ((\data|divider|datap|dr2|Dout\(4)))) # (!\data|divider|datap|dr2|Dout[15]~0_combout\ & (\data|divider|datap|dr2|Dout\(6)))), GLOBAL(\clk~combout\), VCC, , 
-- \data|divider|datap|dr2|Dout[5]~2_combout\, \data|dr2|Dout\(5), , , \data|divider|control|fsm_state~12_combout\)

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
	clk => \clk~combout\,
	dataa => \data|divider|datap|dr2|Dout\(6),
	datab => \data|divider|datap|dr2|Dout\(4),
	datac => \data|dr2|Dout\(5),
	datad => \data|divider|datap|dr2|Dout[15]~0_combout\,
	aclr => GND,
	sload => \data|divider|control|fsm_state~12_combout\,
	ena => \data|divider|datap|dr2|Dout[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr2|Dout\(5));

-- Location: LC_X1_Y7_N5
\data|divider|datap|dr2|Dout[6]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr2|Dout\(6) = DFFEAS(((\data|divider|datap|dr2|Dout[15]~0_combout\ & (\data|divider|datap|dr2|Dout\(5))) # (!\data|divider|datap|dr2|Dout[15]~0_combout\ & ((\data|divider|datap|dr2|Dout\(7))))), GLOBAL(\clk~combout\), VCC, , 
-- \data|divider|datap|dr2|Dout[5]~2_combout\, \data|dr2|Dout\(6), , , \data|divider|control|fsm_state~12_combout\)

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
	clk => \clk~combout\,
	dataa => \data|divider|datap|dr2|Dout\(5),
	datab => \data|divider|datap|dr2|Dout\(7),
	datac => \data|dr2|Dout\(6),
	datad => \data|divider|datap|dr2|Dout[15]~0_combout\,
	aclr => GND,
	sload => \data|divider|control|fsm_state~12_combout\,
	ena => \data|divider|datap|dr2|Dout[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr2|Dout\(6));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\din[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_din(7),
	combout => \din~combout\(7));

-- Location: LC_X2_Y5_N2
\data|dr2|Dout[7]\ : maxv_lcell
-- Equation(s):
-- \data|dr2|Dout\(7) = DFFEAS((\erdy~combout\ & ((\control|T2~0_combout\ & (\din~combout\(7))) # (!\control|T2~0_combout\ & ((\data|divider|datap|dr1|Dout\(7)))))) # (!\erdy~combout\ & (((\data|divider|datap|dr1|Dout\(7))))), GLOBAL(\clk~combout\), VCC, , 
-- \data|x2~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \din~combout\(7),
	datab => \erdy~combout\,
	datac => \data|divider|datap|dr1|Dout\(7),
	datad => \control|T2~0_combout\,
	aclr => GND,
	ena => \data|x2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|dr2|Dout\(7));

-- Location: LC_X1_Y7_N0
\data|divider|datap|dr2|Dout[7]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr2|Dout\(7) = DFFEAS(((\data|divider|datap|dr2|Dout[15]~0_combout\ & (\data|divider|datap|dr2|Dout\(6))) # (!\data|divider|datap|dr2|Dout[15]~0_combout\ & ((\data|divider|datap|dr2|Dout\(8))))), GLOBAL(\clk~combout\), VCC, , 
-- \data|divider|datap|dr2|Dout[5]~2_combout\, \data|dr2|Dout\(7), , , \data|divider|control|fsm_state~12_combout\)

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
	clk => \clk~combout\,
	dataa => \data|divider|datap|dr2|Dout\(6),
	datab => \data|divider|datap|dr2|Dout\(8),
	datac => \data|dr2|Dout\(7),
	datad => \data|divider|datap|dr2|Dout[15]~0_combout\,
	aclr => GND,
	sload => \data|divider|control|fsm_state~12_combout\,
	ena => \data|divider|datap|dr2|Dout[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr2|Dout\(7));

-- Location: LC_X2_Y8_N8
\data|divider|datap|subtract|add7|s~0\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|subtract|add7|s~0_combout\ = (\data|divider|datap|dr1|Dout\(7) $ (((\data|divider|datap|dr2|Dout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \data|divider|datap|dr1|Dout\(7),
	datad => \data|divider|datap|dr2|Dout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|divider|datap|subtract|add7|s~0_combout\);

-- Location: LC_X2_Y5_N8
\data|dr1|Dout[7]\ : maxv_lcell
-- Equation(s):
-- \data|dr1|Dout\(7) = DFFEAS((\erdy~combout\ & ((\control|fsm_state.input1~regout\ & (\din~combout\(7))) # (!\control|fsm_state.input1~regout\ & ((\data|dr2|Dout\(7)))))) # (!\erdy~combout\ & (((\data|dr2|Dout\(7))))), GLOBAL(\clk~combout\), VCC, , 
-- \data|dr1|Dout[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \din~combout\(7),
	datab => \erdy~combout\,
	datac => \data|dr2|Dout\(7),
	datad => \control|fsm_state.input1~regout\,
	aclr => GND,
	ena => \data|dr1|Dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|dr1|Dout\(7));

-- Location: LC_X2_Y8_N7
\data|divider|datap|dr1|Dout[7]\ : maxv_lcell
-- Equation(s):
-- \data|divider|datap|dr1|Dout\(7) = DFFEAS((\data|divider|control|fsm_state~12_combout\ & (((\data|dr1|Dout\(7))))) # (!\data|divider|control|fsm_state~12_combout\ & (\data|divider|datap|subtract|add7|s~0_combout\ $ 
-- (((!\data|divider|datap|subtract|add6|cout~0_combout\))))), GLOBAL(\clk~combout\), VCC, , \data|divider|datap|x1~combout\, , , , )

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
	clk => \clk~combout\,
	dataa => \data|divider|datap|subtract|add7|s~0_combout\,
	datab => \data|dr1|Dout\(7),
	datac => \data|divider|control|fsm_state~12_combout\,
	datad => \data|divider|datap|subtract|add6|cout~0_combout\,
	aclr => GND,
	ena => \data|divider|datap|x1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|divider|datap|dr1|Dout\(7));

-- Location: LC_X2_Y7_N1
\data|comparator|LessThan0~1\ : maxv_lcell
-- Equation(s):
-- \data|comparator|LessThan0~1_combout\ = (\data|divider|datap|dr1|Dout\(7)) # ((\data|divider|datap|dr1|Dout\(5)) # ((\data|divider|datap|dr1|Dout\(4)) # (\data|divider|datap|dr1|Dout\(6))))

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
	dataa => \data|divider|datap|dr1|Dout\(7),
	datab => \data|divider|datap|dr1|Dout\(5),
	datac => \data|divider|datap|dr1|Dout\(4),
	datad => \data|divider|datap|dr1|Dout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|comparator|LessThan0~1_combout\);

-- Location: LC_X3_Y7_N9
\data|comparator|LessThan0~3\ : maxv_lcell
-- Equation(s):
-- \data|comparator|LessThan0~3_combout\ = (\data|divider|datap|dr1|Dout\(12)) # ((\data|divider|datap|dr1|Dout\(15)) # ((\data|divider|datap|dr1|Dout\(13)) # (\data|divider|datap|dr1|Dout\(14))))

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
	dataa => \data|divider|datap|dr1|Dout\(12),
	datab => \data|divider|datap|dr1|Dout\(15),
	datac => \data|divider|datap|dr1|Dout\(13),
	datad => \data|divider|datap|dr1|Dout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|comparator|LessThan0~3_combout\);

-- Location: LC_X3_Y8_N7
\data|comparator|LessThan0~2\ : maxv_lcell
-- Equation(s):
-- \data|comparator|LessThan0~2_combout\ = (\data|divider|datap|dr1|Dout\(10)) # ((\data|divider|datap|dr1|Dout\(9)) # ((\data|divider|datap|dr1|Dout\(8)) # (\data|divider|datap|dr1|Dout\(11))))

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
	dataa => \data|divider|datap|dr1|Dout\(10),
	datab => \data|divider|datap|dr1|Dout\(9),
	datac => \data|divider|datap|dr1|Dout\(8),
	datad => \data|divider|datap|dr1|Dout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|comparator|LessThan0~2_combout\);

-- Location: LC_X3_Y6_N5
\data|comparator|LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \data|comparator|LessThan0~0_combout\ = (\data|divider|datap|dr1|Dout\(0)) # ((\data|divider|datap|dr1|Dout\(1)) # ((\data|divider|datap|dr1|Dout\(2)) # (\data|divider|datap|dr1|Dout\(3))))

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
	dataa => \data|divider|datap|dr1|Dout\(0),
	datab => \data|divider|datap|dr1|Dout\(1),
	datac => \data|divider|datap|dr1|Dout\(2),
	datad => \data|divider|datap|dr1|Dout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|comparator|LessThan0~0_combout\);

-- Location: LC_X3_Y7_N8
\data|comparator|LessThan0~4\ : maxv_lcell
-- Equation(s):
-- \data|comparator|LessThan0~4_combout\ = (\data|comparator|LessThan0~1_combout\) # ((\data|comparator|LessThan0~3_combout\) # ((\data|comparator|LessThan0~2_combout\) # (\data|comparator|LessThan0~0_combout\)))

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
	dataa => \data|comparator|LessThan0~1_combout\,
	datab => \data|comparator|LessThan0~3_combout\,
	datac => \data|comparator|LessThan0~2_combout\,
	datad => \data|comparator|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|comparator|LessThan0~4_combout\);

-- Location: LC_X4_Y7_N3
\data|x2~0\ : maxv_lcell
-- Equation(s):
-- \data|x2~0_combout\ = (\erdy~combout\ & ((\control|T2~0_combout\) # ((\control|fsm_state.checkRem~regout\ & \data|comparator|LessThan0~4_combout\)))) # (!\erdy~combout\ & (\control|fsm_state.checkRem~regout\ & (\data|comparator|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \erdy~combout\,
	datab => \control|fsm_state.checkRem~regout\,
	datac => \data|comparator|LessThan0~4_combout\,
	datad => \control|T2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data|x2~0_combout\);

-- Location: LC_X4_Y5_N0
\control|fsm_state.doDivide\ : maxv_lcell
-- Equation(s):
-- \control|fsm_state.doDivide~regout\ = DFFEAS((!\reset~combout\ & ((\data|x2~0_combout\) # ((\control|fsm_state.doDivide~regout\ & !\data|divider|control|fsm_state.donestate~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	dataa => \data|x2~0_combout\,
	datab => \reset~combout\,
	datac => \control|fsm_state.doDivide~regout\,
	datad => \data|divider|control|fsm_state.donestate~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \control|fsm_state.doDivide~regout\);

-- Location: LC_X4_Y5_N7
\control|fsm_state.checkRem\ : maxv_lcell
-- Equation(s):
-- \control|fsm_state.checkRem~regout\ = DFFEAS(((!\reset~combout\ & (\control|fsm_state.doDivide~regout\ & \data|divider|control|fsm_state.donestate~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	datab => \reset~combout\,
	datac => \control|fsm_state.doDivide~regout\,
	datad => \data|divider|control|fsm_state.donestate~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \control|fsm_state.checkRem~regout\);

-- Location: LC_X5_Y4_N7
\control|Selector6~4\ : maxv_lcell
-- Equation(s):
-- \control|Selector6~4_combout\ = (\start~combout\ & (((!\data|comparator|LessThan0~4_combout\ & \control|fsm_state.checkRem~regout\)) # (!\control|fsm_state.phi~regout\))) # (!\start~combout\ & (((!\data|comparator|LessThan0~4_combout\ & 
-- \control|fsm_state.checkRem~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2f22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \start~combout\,
	datab => \control|fsm_state.phi~regout\,
	datac => \data|comparator|LessThan0~4_combout\,
	datad => \control|fsm_state.checkRem~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \control|Selector6~4_combout\);

-- Location: LC_X5_Y4_N6
\data|dr5|Dout[7]\ : maxv_lcell
-- Equation(s):
-- \data|dr5|Dout\(7) = DFFEAS((!\control|Selector6~0_combout\ & ((\data|dr5|Dout\(7)) # ((\control|fsm_state.checkRem~regout\ & !\data|comparator|LessThan0~4_combout\)))), GLOBAL(\clk~combout\), VCC, , \control|Selector6~4_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ae",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \data|dr5|Dout\(7),
	datab => \control|fsm_state.checkRem~regout\,
	datac => \data|comparator|LessThan0~4_combout\,
	datad => \control|Selector6~0_combout\,
	aclr => GND,
	ena => \control|Selector6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|dr5|Dout\(7));

-- Location: LC_X5_Y4_N9
\data|dr5|Dout[6]\ : maxv_lcell
-- Equation(s):
-- \data|dr5|Dout\(6) = DFFEAS((\data|dr5|Dout\(7) & (((\control|fsm_state.phi~regout\)) # (!\start~combout\))), GLOBAL(\clk~combout\), VCC, , \control|Selector6~4_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d0d0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \start~combout\,
	datab => \control|fsm_state.phi~regout\,
	datac => \data|dr5|Dout\(7),
	aclr => GND,
	ena => \control|Selector6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|dr5|Dout\(6));

-- Location: LC_X5_Y4_N1
\data|dr5|Dout[5]\ : maxv_lcell
-- Equation(s):
-- \data|dr5|Dout\(5) = DFFEAS(((\data|dr5|Dout\(6) & ((\control|fsm_state.phi~regout\) # (!\start~combout\)))), GLOBAL(\clk~combout\), VCC, , \control|Selector6~4_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \start~combout\,
	datab => \control|fsm_state.phi~regout\,
	datad => \data|dr5|Dout\(6),
	aclr => GND,
	ena => \control|Selector6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|dr5|Dout\(5));

-- Location: LC_X5_Y4_N2
\data|dr5|Dout[4]\ : maxv_lcell
-- Equation(s):
-- \data|dr5|Dout\(4) = DFFEAS(((\data|dr5|Dout\(5) & ((\control|fsm_state.phi~regout\) # (!\start~combout\)))), GLOBAL(\clk~combout\), VCC, , \control|Selector6~4_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \start~combout\,
	datab => \control|fsm_state.phi~regout\,
	datad => \data|dr5|Dout\(5),
	aclr => GND,
	ena => \control|Selector6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|dr5|Dout\(4));

-- Location: LC_X5_Y4_N8
\data|dr5|Dout[3]\ : maxv_lcell
-- Equation(s):
-- \data|dr5|Dout\(3) = DFFEAS(((\data|dr5|Dout\(4) & ((\control|fsm_state.phi~regout\) # (!\start~combout\)))), GLOBAL(\clk~combout\), VCC, , \control|Selector6~4_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \start~combout\,
	datab => \control|fsm_state.phi~regout\,
	datad => \data|dr5|Dout\(4),
	aclr => GND,
	ena => \control|Selector6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|dr5|Dout\(3));

-- Location: LC_X5_Y4_N0
\data|dr5|Dout[2]\ : maxv_lcell
-- Equation(s):
-- \data|dr5|Dout\(2) = DFFEAS(((\data|dr5|Dout\(3) & ((\control|fsm_state.phi~regout\) # (!\start~combout\)))), GLOBAL(\clk~combout\), VCC, , \control|Selector6~4_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \start~combout\,
	datab => \control|fsm_state.phi~regout\,
	datad => \data|dr5|Dout\(3),
	aclr => GND,
	ena => \control|Selector6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|dr5|Dout\(2));

-- Location: LC_X5_Y4_N4
\data|dr5|Dout[1]\ : maxv_lcell
-- Equation(s):
-- \data|dr5|Dout\(1) = DFFEAS((\data|dr5|Dout\(2) & (((\control|fsm_state.phi~regout\)) # (!\start~combout\))), GLOBAL(\clk~combout\), VCC, , \control|Selector6~4_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d0d0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \start~combout\,
	datab => \control|fsm_state.phi~regout\,
	datac => \data|dr5|Dout\(2),
	aclr => GND,
	ena => \control|Selector6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|dr5|Dout\(1));

-- Location: LC_X5_Y4_N3
\data|dr5|Dout[0]\ : maxv_lcell
-- Equation(s):
-- \data|dr5|Dout\(0) = DFFEAS((\data|dr5|Dout\(1) & (((\control|fsm_state.phi~regout\)) # (!\start~combout\))), GLOBAL(\clk~combout\), VCC, , \control|Selector6~4_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d0d0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \start~combout\,
	datab => \control|fsm_state.phi~regout\,
	datac => \data|dr5|Dout\(1),
	aclr => GND,
	ena => \control|Selector6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|dr5|Dout\(0));

-- Location: LC_X4_Y4_N6
\control|fsm_state.donestate\ : maxv_lcell
-- Equation(s):
-- \control|fsm_state.donestate~regout\ = DFFEAS((\data|dr5|Dout\(0) & (!\reset~combout\ & ((\control|fsm_state.input2~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	dataa => \data|dr5|Dout\(0),
	datab => \reset~combout\,
	datad => \control|fsm_state.input2~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \control|fsm_state.donestate~regout\);

-- Location: LC_X4_Y4_N4
\control|fsm_state.phi\ : maxv_lcell
-- Equation(s):
-- \control|fsm_state.phi~regout\ = DFFEAS((!\control|fsm_state.donestate~regout\ & (!\reset~combout\ & ((\start~combout\) # (\control|fsm_state.phi~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \control|fsm_state.donestate~regout\,
	datab => \reset~combout\,
	datac => \start~combout\,
	datad => \control|fsm_state.phi~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \control|fsm_state.phi~regout\);

-- Location: LC_X5_Y4_N5
\control|Selector6~0\ : maxv_lcell
-- Equation(s):
-- \control|Selector6~0_combout\ = ((!\control|fsm_state.phi~regout\ & ((\start~combout\))))

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
	datab => \control|fsm_state.phi~regout\,
	datad => \start~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \control|Selector6~0_combout\);

-- Location: LC_X4_Y4_N8
\control|fsm_state.input1\ : maxv_lcell
-- Equation(s):
-- \control|fsm_state.input1~regout\ = DFFEAS((!\reset~combout\ & ((\control|Selector6~0_combout\) # ((\control|fsm_state.input1~regout\ & !\erdy~combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3302",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \control|fsm_state.input1~regout\,
	datab => \reset~combout\,
	datac => \erdy~combout\,
	datad => \control|Selector6~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \control|fsm_state.input1~regout\);

-- Location: LC_X2_Y5_N0
\data|dr1|Dout[0]\ : maxv_lcell
-- Equation(s):
-- \data|dr1|Dout\(0) = DFFEAS((\control|fsm_state.input1~regout\ & ((\erdy~combout\ & (\din~combout\(0))) # (!\erdy~combout\ & ((\data|dr2|Dout\(0)))))) # (!\control|fsm_state.input1~regout\ & (((\data|dr2|Dout\(0))))), GLOBAL(\clk~combout\), VCC, , 
-- \data|dr1|Dout[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \din~combout\(0),
	datab => \control|fsm_state.input1~regout\,
	datac => \data|dr2|Dout\(0),
	datad => \erdy~combout\,
	aclr => GND,
	ena => \data|dr1|Dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data|dr1|Dout\(0));

-- Location: LC_X4_Y4_N9
\control|Selector6~3\ : maxv_lcell
-- Equation(s):
-- \control|Selector6~3_combout\ = (\control|fsm_state.input1~regout\) # ((\control|Selector6~1_combout\) # ((\control|Selector6~2_combout\) # (\control|Selector6~0_combout\)))

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
	dataa => \control|fsm_state.input1~regout\,
	datab => \control|Selector6~1_combout\,
	datac => \control|Selector6~2_combout\,
	datad => \control|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \control|Selector6~3_combout\);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dout[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data|dr1|Dout\(0),
	oe => VCC,
	padio => ww_dout(0));

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dout[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data|dr1|Dout\(1),
	oe => VCC,
	padio => ww_dout(1));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dout[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data|dr1|Dout\(2),
	oe => VCC,
	padio => ww_dout(2));

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dout[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data|dr1|Dout\(3),
	oe => VCC,
	padio => ww_dout(3));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dout[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data|dr1|Dout\(4),
	oe => VCC,
	padio => ww_dout(4));

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dout[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data|dr1|Dout\(5),
	oe => VCC,
	padio => ww_dout(5));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dout[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data|dr1|Dout\(6),
	oe => VCC,
	padio => ww_dout(6));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dout[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data|dr1|Dout\(7),
	oe => VCC,
	padio => ww_dout(7));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dout[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data|dr1|Dout\(8),
	oe => VCC,
	padio => ww_dout(8));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dout[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data|dr1|Dout\(9),
	oe => VCC,
	padio => ww_dout(9));

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dout[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data|dr1|Dout\(10),
	oe => VCC,
	padio => ww_dout(10));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dout[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data|dr1|Dout\(11),
	oe => VCC,
	padio => ww_dout(11));

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dout[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data|dr1|Dout\(12),
	oe => VCC,
	padio => ww_dout(12));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dout[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data|dr1|Dout\(13),
	oe => VCC,
	padio => ww_dout(13));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dout[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data|dr1|Dout\(14),
	oe => VCC,
	padio => ww_dout(14));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dout[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data|dr1|Dout\(15),
	oe => VCC,
	padio => ww_dout(15));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\done~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \control|fsm_state.donestate~regout\,
	oe => VCC,
	padio => ww_done);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\srdy~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \control|Selector6~3_combout\,
	oe => VCC,
	padio => ww_srdy);
END structure;


