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

-- DATE "02/08/2017 16:40:22"

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
	input_vector : IN std_logic_vector(7 DOWNTO 0);
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
SIGNAL ww_input_vector : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(3 DOWNTO 0);
SIGNAL add_instance_as1_a0_combout : std_logic;
SIGNAL add_instance_as2_a4_combout : std_logic;
SIGNAL add_instance_aN_a4_combout : std_logic;
SIGNAL add_instance_as0_a0_combout : std_logic;
SIGNAL add_instance_as0_a1_combout : std_logic;
SIGNAL add_instance_as0_a2_combout : std_logic;
SIGNAL add_instance_as1_a1_combout : std_logic;
SIGNAL add_instance_as1_a2_combout : std_logic;
SIGNAL add_instance_as2_a5_combout : std_logic;
SIGNAL input_vector_acombout : std_logic_vector(7 DOWNTO 0);
SIGNAL ALT_INV_add_instance_aN_a4_combout : std_logic;
SIGNAL add_instance_as1_a0_DATAC_driver : std_logic;
SIGNAL add_instance_as1_a0_DATAD_driver : std_logic;
SIGNAL add_instance_as2_a4_DATAA_driver : std_logic;
SIGNAL add_instance_as2_a4_DATAB_driver : std_logic;
SIGNAL add_instance_as2_a4_DATAC_driver : std_logic;
SIGNAL add_instance_as2_a4_DATAD_driver : std_logic;
SIGNAL add_instance_aN_a4_DATAA_driver : std_logic;
SIGNAL add_instance_aN_a4_DATAB_driver : std_logic;
SIGNAL add_instance_aN_a4_DATAC_driver : std_logic;
SIGNAL add_instance_aN_a4_DATAD_driver : std_logic;
SIGNAL add_instance_as0_a0_DATAA_driver : std_logic;
SIGNAL add_instance_as0_a0_DATAB_driver : std_logic;
SIGNAL add_instance_as0_a0_DATAC_driver : std_logic;
SIGNAL add_instance_as0_a0_DATAD_driver : std_logic;
SIGNAL add_instance_as0_a1_DATAA_driver : std_logic;
SIGNAL add_instance_as0_a1_DATAB_driver : std_logic;
SIGNAL add_instance_as0_a1_DATAC_driver : std_logic;
SIGNAL add_instance_as0_a1_DATAD_driver : std_logic;
SIGNAL add_instance_as0_a2_DATAA_driver : std_logic;
SIGNAL add_instance_as0_a2_DATAB_driver : std_logic;
SIGNAL add_instance_as0_a2_DATAC_driver : std_logic;
SIGNAL add_instance_as0_a2_DATAD_driver : std_logic;
SIGNAL add_instance_as1_a1_DATAA_driver : std_logic;
SIGNAL add_instance_as1_a1_DATAB_driver : std_logic;
SIGNAL add_instance_as1_a1_DATAC_driver : std_logic;
SIGNAL add_instance_as1_a1_DATAD_driver : std_logic;
SIGNAL add_instance_as1_a2_DATAA_driver : std_logic;
SIGNAL add_instance_as1_a2_DATAB_driver : std_logic;
SIGNAL add_instance_as1_a2_DATAC_driver : std_logic;
SIGNAL add_instance_as1_a2_DATAD_driver : std_logic;
SIGNAL add_instance_as2_a5_DATAA_driver : std_logic;
SIGNAL add_instance_as2_a5_DATAB_driver : std_logic;
SIGNAL add_instance_as2_a5_DATAC_driver : std_logic;
SIGNAL add_instance_as2_a5_DATAD_driver : std_logic;
SIGNAL output_vector_a0_a_DATAIN_driver : std_logic;
SIGNAL output_vector_a1_a_DATAIN_driver : std_logic;
SIGNAL output_vector_a2_a_DATAIN_driver : std_logic;
SIGNAL output_vector_a3_a_DATAIN_driver : std_logic;

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_add_instance_aN_a4_combout <= NOT add_instance_aN_a4_combout;

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
input_vector_a6_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => input_vector_acombout(6));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
input_vector_a7_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(7),
	combout => input_vector_acombout(7));

add_instance_as1_a0_DATAC_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => input_vector_acombout(6),
	dataout => add_instance_as1_a0_DATAC_driver);

add_instance_as1_a0_DATAD_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => input_vector_acombout(7),
	dataout => add_instance_as1_a0_DATAD_driver);

-- Location: LC_X12_Y1_N4
add_instance_as1_a0 : maxv_lcell
-- Equation(s):
-- add_instance_as1_a0_combout = (((!input_vector_acombout(6) & !input_vector_acombout(7))))

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
	datac => add_instance_as1_a0_DATAC_driver,
	datad => add_instance_as1_a0_DATAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_as1_a0_combout);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
input_vector_a5_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => input_vector_acombout(5));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
input_vector_a0_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => input_vector_acombout(0));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
input_vector_a1_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => input_vector_acombout(1));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
input_vector_a3_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => input_vector_acombout(3));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
input_vector_a2_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => input_vector_acombout(2));

add_instance_as2_a4_DATAA_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => input_vector_acombout(0),
	dataout => add_instance_as2_a4_DATAA_driver);

add_instance_as2_a4_DATAB_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => input_vector_acombout(1),
	dataout => add_instance_as2_a4_DATAB_driver);

add_instance_as2_a4_DATAC_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => input_vector_acombout(3),
	dataout => add_instance_as2_a4_DATAC_driver);

add_instance_as2_a4_DATAD_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => input_vector_acombout(2),
	dataout => add_instance_as2_a4_DATAD_driver);

-- Location: LC_X12_Y1_N7
add_instance_as2_a4 : maxv_lcell
-- Equation(s):
-- add_instance_as2_a4_combout = (!input_vector_acombout(0) & (!input_vector_acombout(1) & (!input_vector_acombout(3) & !input_vector_acombout(2))))

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
	dataa => add_instance_as2_a4_DATAA_driver,
	datab => add_instance_as2_a4_DATAB_driver,
	datac => add_instance_as2_a4_DATAC_driver,
	datad => add_instance_as2_a4_DATAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_as2_a4_combout);

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
input_vector_a4_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => input_vector_acombout(4));

add_instance_aN_a4_DATAA_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => add_instance_as1_a0_combout,
	dataout => add_instance_aN_a4_DATAA_driver);

add_instance_aN_a4_DATAB_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => input_vector_acombout(5),
	dataout => add_instance_aN_a4_DATAB_driver);

add_instance_aN_a4_DATAC_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => add_instance_as2_a4_combout,
	dataout => add_instance_aN_a4_DATAC_driver);

add_instance_aN_a4_DATAD_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => input_vector_acombout(4),
	dataout => add_instance_aN_a4_DATAD_driver);

-- Location: LC_X12_Y1_N2
add_instance_aN_a4 : maxv_lcell
-- Equation(s):
-- add_instance_aN_a4_combout = ((input_vector_acombout(5)) # ((input_vector_acombout(4)) # (!add_instance_as2_a4_combout))) # (!add_instance_as1_a0_combout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffdf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => add_instance_aN_a4_DATAA_driver,
	datab => add_instance_aN_a4_DATAB_driver,
	datac => add_instance_aN_a4_DATAC_driver,
	datad => add_instance_aN_a4_DATAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_aN_a4_combout);

add_instance_as0_a0_DATAA_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => input_vector_acombout(0),
	dataout => add_instance_as0_a0_DATAA_driver);

add_instance_as0_a0_DATAB_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => input_vector_acombout(1),
	dataout => add_instance_as0_a0_DATAB_driver);

add_instance_as0_a0_DATAC_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => input_vector_acombout(3),
	dataout => add_instance_as0_a0_DATAC_driver);

add_instance_as0_a0_DATAD_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => input_vector_acombout(2),
	dataout => add_instance_as0_a0_DATAD_driver);

-- Location: LC_X12_Y1_N6
add_instance_as0_a0 : maxv_lcell
-- Equation(s):
-- add_instance_as0_a0_combout = (!input_vector_acombout(0) & ((input_vector_acombout(1)) # ((input_vector_acombout(3) & !input_vector_acombout(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4454",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => add_instance_as0_a0_DATAA_driver,
	datab => add_instance_as0_a0_DATAB_driver,
	datac => add_instance_as0_a0_DATAC_driver,
	datad => add_instance_as0_a0_DATAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_as0_a0_combout);

add_instance_as0_a1_DATAA_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => input_vector_acombout(4),
	dataout => add_instance_as0_a1_DATAA_driver);

add_instance_as0_a1_DATAB_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => input_vector_acombout(5),
	dataout => add_instance_as0_a1_DATAB_driver);

add_instance_as0_a1_DATAC_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => input_vector_acombout(6),
	dataout => add_instance_as0_a1_DATAC_driver);

add_instance_as0_a1_DATAD_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => input_vector_acombout(7),
	dataout => add_instance_as0_a1_DATAD_driver);

-- Location: LC_X12_Y1_N1
add_instance_as0_a1 : maxv_lcell
-- Equation(s):
-- add_instance_as0_a1_combout = (!input_vector_acombout(4) & ((input_vector_acombout(5)) # ((!input_vector_acombout(6) & input_vector_acombout(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4544",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => add_instance_as0_a1_DATAA_driver,
	datab => add_instance_as0_a1_DATAB_driver,
	datac => add_instance_as0_a1_DATAC_driver,
	datad => add_instance_as0_a1_DATAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_as0_a1_combout);

add_instance_as0_a2_DATAA_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => add_instance_as0_a0_combout,
	dataout => add_instance_as0_a2_DATAA_driver);

add_instance_as0_a2_DATAB_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => add_instance_as0_a1_combout,
	dataout => add_instance_as0_a2_DATAB_driver);

add_instance_as0_a2_DATAC_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => input_vector_acombout(0),
	dataout => add_instance_as0_a2_DATAC_driver);

add_instance_as0_a2_DATAD_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => input_vector_acombout(2),
	dataout => add_instance_as0_a2_DATAD_driver);

-- Location: LC_X12_Y1_N5
add_instance_as0_a2 : maxv_lcell
-- Equation(s):
-- add_instance_as0_a2_combout = (add_instance_as0_a0_combout) # ((add_instance_as0_a1_combout & (!input_vector_acombout(0) & !input_vector_acombout(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaae",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => add_instance_as0_a2_DATAA_driver,
	datab => add_instance_as0_a2_DATAB_driver,
	datac => add_instance_as0_a2_DATAC_driver,
	datad => add_instance_as0_a2_DATAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_as0_a2_combout);

add_instance_as1_a1_DATAA_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => input_vector_acombout(4),
	dataout => add_instance_as1_a1_DATAA_driver);

add_instance_as1_a1_DATAB_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => input_vector_acombout(5),
	dataout => add_instance_as1_a1_DATAB_driver);

add_instance_as1_a1_DATAC_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => add_instance_as1_a0_combout,
	dataout => add_instance_as1_a1_DATAC_driver);

add_instance_as1_a1_DATAD_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => input_vector_acombout(2),
	dataout => add_instance_as1_a1_DATAD_driver);

-- Location: LC_X12_Y1_N8
add_instance_as1_a1 : maxv_lcell
-- Equation(s):
-- add_instance_as1_a1_combout = (input_vector_acombout(2)) # ((!input_vector_acombout(4) & (!input_vector_acombout(5) & !add_instance_as1_a0_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff01",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => add_instance_as1_a1_DATAA_driver,
	datab => add_instance_as1_a1_DATAB_driver,
	datac => add_instance_as1_a1_DATAC_driver,
	datad => add_instance_as1_a1_DATAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_as1_a1_combout);

add_instance_as1_a2_DATAA_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => input_vector_acombout(0),
	dataout => add_instance_as1_a2_DATAA_driver);

add_instance_as1_a2_DATAB_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => input_vector_acombout(1),
	dataout => add_instance_as1_a2_DATAB_driver);

add_instance_as1_a2_DATAC_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => input_vector_acombout(3),
	dataout => add_instance_as1_a2_DATAC_driver);

add_instance_as1_a2_DATAD_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => add_instance_as1_a1_combout,
	dataout => add_instance_as1_a2_DATAD_driver);

-- Location: LC_X12_Y1_N9
add_instance_as1_a2 : maxv_lcell
-- Equation(s):
-- add_instance_as1_a2_combout = (!input_vector_acombout(0) & (!input_vector_acombout(1) & ((input_vector_acombout(3)) # (add_instance_as1_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => add_instance_as1_a2_DATAA_driver,
	datab => add_instance_as1_a2_DATAB_driver,
	datac => add_instance_as1_a2_DATAC_driver,
	datad => add_instance_as1_a2_DATAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_as1_a2_combout);

add_instance_as2_a5_DATAA_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => add_instance_as1_a0_combout,
	dataout => add_instance_as2_a5_DATAA_driver);

add_instance_as2_a5_DATAB_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => input_vector_acombout(5),
	dataout => add_instance_as2_a5_DATAB_driver);

add_instance_as2_a5_DATAC_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => add_instance_as2_a4_combout,
	dataout => add_instance_as2_a5_DATAC_driver);

add_instance_as2_a5_DATAD_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => input_vector_acombout(4),
	dataout => add_instance_as2_a5_DATAD_driver);

-- Location: LC_X12_Y1_N3
add_instance_as2_a5 : maxv_lcell
-- Equation(s):
-- add_instance_as2_a5_combout = (add_instance_as2_a4_combout & (((input_vector_acombout(5)) # (input_vector_acombout(4))) # (!add_instance_as1_a0_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0d0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => add_instance_as2_a5_DATAA_driver,
	datab => add_instance_as2_a5_DATAB_driver,
	datac => add_instance_as2_a5_DATAC_driver,
	datad => add_instance_as2_a5_DATAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => add_instance_as2_a5_combout);

output_vector_a0_a_DATAIN_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => ALT_INV_add_instance_aN_a4_combout,
	dataout => output_vector_a0_a_DATAIN_driver);

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
output_vector_a0_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => output_vector_a0_a_DATAIN_driver,
	oe => VCC,
	padio => ww_output_vector(0));

output_vector_a1_a_DATAIN_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => add_instance_as0_a2_combout,
	dataout => output_vector_a1_a_DATAIN_driver);

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
output_vector_a1_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => output_vector_a1_a_DATAIN_driver,
	oe => VCC,
	padio => ww_output_vector(1));

output_vector_a2_a_DATAIN_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => add_instance_as1_a2_combout,
	dataout => output_vector_a2_a_DATAIN_driver);

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
output_vector_a2_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => output_vector_a2_a_DATAIN_driver,
	oe => VCC,
	padio => ww_output_vector(2));

output_vector_a3_a_DATAIN_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => add_instance_as2_a5_combout,
	dataout => output_vector_a3_a_DATAIN_driver);

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
output_vector_a3_a_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => output_vector_a3_a_DATAIN_driver,
	oe => VCC,
	padio => ww_output_vector(3));
END structure;


