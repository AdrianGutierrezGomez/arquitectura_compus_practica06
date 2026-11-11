-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 25.1std.0 Build 1129 10/21/2025 SC Lite Edition"

-- DATE "11/11/2026 10:28:21"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for Questa Altera FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	practica_06 IS
    PORT (
	a : OUT std_logic_vector(7 DOWNTO 0);
	clk : IN std_logic;
	reset : IN std_logic;
	nIRQ : IN std_logic;
	nXIRQ : IN std_logic;
	b : OUT std_logic_vector(7 DOWNTO 0);
	bandera : OUT std_logic_vector(7 DOWNTO 0);
	dir : OUT std_logic_vector(15 DOWNTO 0);
	estado : OUT std_logic_vector(7 DOWNTO 0);
	pc : OUT std_logic_vector(7 DOWNTO 0);
	s10 : OUT std_logic_vector(7 DOWNTO 0);
	s11 : OUT std_logic_vector(7 DOWNTO 0);
	s12 : OUT std_logic_vector(7 DOWNTO 0);
	salida : OUT std_logic_vector(7 DOWNTO 0);
	entrada : IN std_logic_vector(1 DOWNTO 0);
	xlow : OUT std_logic_vector(7 DOWNTO 0)
	);
END practica_06;

-- Design Ports Information
-- a[7]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- a[6]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- a[5]	=>  Location: PIN_N6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- a[4]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- a[3]	=>  Location: PIN_N5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- a[2]	=>  Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- a[1]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- a[0]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- b[7]	=>  Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- b[6]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- b[5]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- b[4]	=>  Location: PIN_E6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- b[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- b[2]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- b[1]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- b[0]	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bandera[7]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bandera[6]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bandera[5]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bandera[4]	=>  Location: PIN_L16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bandera[3]	=>  Location: PIN_L13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bandera[2]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bandera[1]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bandera[0]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dir[15]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dir[14]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dir[13]	=>  Location: PIN_K15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dir[12]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dir[11]	=>  Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dir[10]	=>  Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dir[9]	=>  Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dir[8]	=>  Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dir[7]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dir[6]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dir[5]	=>  Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dir[4]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dir[3]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dir[2]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dir[1]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dir[0]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- estado[7]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- estado[6]	=>  Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- estado[5]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- estado[4]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- estado[3]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- estado[2]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- estado[1]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- estado[0]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- pc[7]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- pc[6]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- pc[5]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- pc[4]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- pc[3]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- pc[2]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- pc[1]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- pc[0]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- s10[7]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- s10[6]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- s10[5]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- s10[4]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- s10[3]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- s10[2]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- s10[1]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- s10[0]	=>  Location: PIN_T14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- s11[7]	=>  Location: PIN_M10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- s11[6]	=>  Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- s11[5]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- s11[4]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- s11[3]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- s11[2]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- s11[1]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- s11[0]	=>  Location: PIN_L15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- s12[7]	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- s12[6]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- s12[5]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- s12[4]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- s12[3]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- s12[2]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- s12[1]	=>  Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- s12[0]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- salida[7]	=>  Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- salida[6]	=>  Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- salida[5]	=>  Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- salida[4]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- salida[3]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- salida[2]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- salida[1]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[0]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- xlow[7]	=>  Location: PIN_N11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- xlow[6]	=>  Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- xlow[5]	=>  Location: PIN_A2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- xlow[4]	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- xlow[3]	=>  Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- xlow[2]	=>  Location: PIN_N8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- xlow[1]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- xlow[0]	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- entrada[0]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entrada[1]	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nIRQ	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nXIRQ	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF practica_06 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_nIRQ : std_logic;
SIGNAL ww_nXIRQ : std_logic;
SIGNAL ww_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_bandera : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dir : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_estado : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pc : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_s10 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_s11 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_s12 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_salida : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_entrada : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_xlow : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst1|ACCB[0]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|ACCA[0]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|output[7]~58clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|ccr[0]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|PCH[0]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|salida12[7]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|s30[0]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|salida11[7]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|PCL[1]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|salida10[7]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|XH[0]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|YL[0]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|XL[0]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|YH[0]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \a[7]~output_o\ : std_logic;
SIGNAL \a[6]~output_o\ : std_logic;
SIGNAL \a[5]~output_o\ : std_logic;
SIGNAL \a[4]~output_o\ : std_logic;
SIGNAL \a[3]~output_o\ : std_logic;
SIGNAL \a[2]~output_o\ : std_logic;
SIGNAL \a[1]~output_o\ : std_logic;
SIGNAL \a[0]~output_o\ : std_logic;
SIGNAL \b[7]~output_o\ : std_logic;
SIGNAL \b[6]~output_o\ : std_logic;
SIGNAL \b[5]~output_o\ : std_logic;
SIGNAL \b[4]~output_o\ : std_logic;
SIGNAL \b[3]~output_o\ : std_logic;
SIGNAL \b[2]~output_o\ : std_logic;
SIGNAL \b[1]~output_o\ : std_logic;
SIGNAL \b[0]~output_o\ : std_logic;
SIGNAL \bandera[7]~output_o\ : std_logic;
SIGNAL \bandera[6]~output_o\ : std_logic;
SIGNAL \bandera[5]~output_o\ : std_logic;
SIGNAL \bandera[4]~output_o\ : std_logic;
SIGNAL \bandera[3]~output_o\ : std_logic;
SIGNAL \bandera[2]~output_o\ : std_logic;
SIGNAL \bandera[1]~output_o\ : std_logic;
SIGNAL \bandera[0]~output_o\ : std_logic;
SIGNAL \dir[15]~output_o\ : std_logic;
SIGNAL \dir[14]~output_o\ : std_logic;
SIGNAL \dir[13]~output_o\ : std_logic;
SIGNAL \dir[12]~output_o\ : std_logic;
SIGNAL \dir[11]~output_o\ : std_logic;
SIGNAL \dir[10]~output_o\ : std_logic;
SIGNAL \dir[9]~output_o\ : std_logic;
SIGNAL \dir[8]~output_o\ : std_logic;
SIGNAL \dir[7]~output_o\ : std_logic;
SIGNAL \dir[6]~output_o\ : std_logic;
SIGNAL \dir[5]~output_o\ : std_logic;
SIGNAL \dir[4]~output_o\ : std_logic;
SIGNAL \dir[3]~output_o\ : std_logic;
SIGNAL \dir[2]~output_o\ : std_logic;
SIGNAL \dir[1]~output_o\ : std_logic;
SIGNAL \dir[0]~output_o\ : std_logic;
SIGNAL \estado[7]~output_o\ : std_logic;
SIGNAL \estado[6]~output_o\ : std_logic;
SIGNAL \estado[5]~output_o\ : std_logic;
SIGNAL \estado[4]~output_o\ : std_logic;
SIGNAL \estado[3]~output_o\ : std_logic;
SIGNAL \estado[2]~output_o\ : std_logic;
SIGNAL \estado[1]~output_o\ : std_logic;
SIGNAL \estado[0]~output_o\ : std_logic;
SIGNAL \pc[7]~output_o\ : std_logic;
SIGNAL \pc[6]~output_o\ : std_logic;
SIGNAL \pc[5]~output_o\ : std_logic;
SIGNAL \pc[4]~output_o\ : std_logic;
SIGNAL \pc[3]~output_o\ : std_logic;
SIGNAL \pc[2]~output_o\ : std_logic;
SIGNAL \pc[1]~output_o\ : std_logic;
SIGNAL \pc[0]~output_o\ : std_logic;
SIGNAL \s10[7]~output_o\ : std_logic;
SIGNAL \s10[6]~output_o\ : std_logic;
SIGNAL \s10[5]~output_o\ : std_logic;
SIGNAL \s10[4]~output_o\ : std_logic;
SIGNAL \s10[3]~output_o\ : std_logic;
SIGNAL \s10[2]~output_o\ : std_logic;
SIGNAL \s10[1]~output_o\ : std_logic;
SIGNAL \s10[0]~output_o\ : std_logic;
SIGNAL \s11[7]~output_o\ : std_logic;
SIGNAL \s11[6]~output_o\ : std_logic;
SIGNAL \s11[5]~output_o\ : std_logic;
SIGNAL \s11[4]~output_o\ : std_logic;
SIGNAL \s11[3]~output_o\ : std_logic;
SIGNAL \s11[2]~output_o\ : std_logic;
SIGNAL \s11[1]~output_o\ : std_logic;
SIGNAL \s11[0]~output_o\ : std_logic;
SIGNAL \s12[7]~output_o\ : std_logic;
SIGNAL \s12[6]~output_o\ : std_logic;
SIGNAL \s12[5]~output_o\ : std_logic;
SIGNAL \s12[4]~output_o\ : std_logic;
SIGNAL \s12[3]~output_o\ : std_logic;
SIGNAL \s12[2]~output_o\ : std_logic;
SIGNAL \s12[1]~output_o\ : std_logic;
SIGNAL \s12[0]~output_o\ : std_logic;
SIGNAL \salida[7]~output_o\ : std_logic;
SIGNAL \salida[6]~output_o\ : std_logic;
SIGNAL \salida[5]~output_o\ : std_logic;
SIGNAL \salida[4]~output_o\ : std_logic;
SIGNAL \salida[3]~output_o\ : std_logic;
SIGNAL \salida[2]~output_o\ : std_logic;
SIGNAL \salida[1]~output_o\ : std_logic;
SIGNAL \salida[0]~output_o\ : std_logic;
SIGNAL \xlow[7]~output_o\ : std_logic;
SIGNAL \xlow[6]~output_o\ : std_logic;
SIGNAL \xlow[5]~output_o\ : std_logic;
SIGNAL \xlow[4]~output_o\ : std_logic;
SIGNAL \xlow[3]~output_o\ : std_logic;
SIGNAL \xlow[2]~output_o\ : std_logic;
SIGNAL \xlow[1]~output_o\ : std_logic;
SIGNAL \xlow[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|XL[5]~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \inst|Selector20~13_combout\ : std_logic;
SIGNAL \inst|Equal14~0_combout\ : std_logic;
SIGNAL \inst|Add7~0_combout\ : std_logic;
SIGNAL \inst|SPL[0]~10_combout\ : std_logic;
SIGNAL \inst|Aux[7]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal5~1_combout\ : std_logic;
SIGNAL \inst|Equal5~0_combout\ : std_logic;
SIGNAL \inst|Equal5~2_combout\ : std_logic;
SIGNAL \inst|Equal81~0_combout\ : std_logic;
SIGNAL \inst|Equal80~0_combout\ : std_logic;
SIGNAL \inst|Selector19~2_combout\ : std_logic;
SIGNAL \inst|Equal4~2_combout\ : std_logic;
SIGNAL \inst|Equal82~0_combout\ : std_logic;
SIGNAL \inst|Selector19~3_combout\ : std_logic;
SIGNAL \inst|Equal84~0_combout\ : std_logic;
SIGNAL \inst|Selector19~0_combout\ : std_logic;
SIGNAL \inst|Selector19~1_combout\ : std_logic;
SIGNAL \inst|Equal54~2_combout\ : std_logic;
SIGNAL \inst|Equal32~0_combout\ : std_logic;
SIGNAL \inst|Equal48~0_combout\ : std_logic;
SIGNAL \inst|Selector21~2_combout\ : std_logic;
SIGNAL \inst|Equal44~0_combout\ : std_logic;
SIGNAL \inst|Equal52~0_combout\ : std_logic;
SIGNAL \inst|Equal52~1_combout\ : std_logic;
SIGNAL \inst|Selector24~4_combout\ : std_logic;
SIGNAL \inst|Selector21~1_combout\ : std_logic;
SIGNAL \inst|Selector21~3_combout\ : std_logic;
SIGNAL \inst|Equal18~0_combout\ : std_logic;
SIGNAL \inst|Equal59~0_combout\ : std_logic;
SIGNAL \inst|Equal59~1_combout\ : std_logic;
SIGNAL \inst|Equal59~2_combout\ : std_logic;
SIGNAL \inst|Equal63~0_combout\ : std_logic;
SIGNAL \inst|Equal63~1_combout\ : std_logic;
SIGNAL \inst|WideOr20~11_combout\ : std_logic;
SIGNAL \inst|Equal36~1_combout\ : std_logic;
SIGNAL \inst|Equal58~0_combout\ : std_logic;
SIGNAL \inst|Equal58~1_combout\ : std_logic;
SIGNAL \inst|Equal58~2_combout\ : std_logic;
SIGNAL \inst|WideOr2~23_combout\ : std_logic;
SIGNAL \inst|WideOr20~8_combout\ : std_logic;
SIGNAL \nXIRQ~input_o\ : std_logic;
SIGNAL \nIRQ~input_o\ : std_logic;
SIGNAL \inst|SET_IRQ~0_combout\ : std_logic;
SIGNAL \inst|SET_IRQ~q\ : std_logic;
SIGNAL \inst|Equal54~3_combout\ : std_logic;
SIGNAL \inst|SET_XIRQ~0_combout\ : std_logic;
SIGNAL \inst|SET_XIRQ~q\ : std_logic;
SIGNAL \inst|IRQ~0_combout\ : std_logic;
SIGNAL \inst|Equal35~2_combout\ : std_logic;
SIGNAL \inst|Equal35~3_combout\ : std_logic;
SIGNAL \inst|Equal39~0_combout\ : std_logic;
SIGNAL \inst|IRQ~1_combout\ : std_logic;
SIGNAL \inst|IRQ~q\ : std_logic;
SIGNAL \inst|Equal61~0_combout\ : std_logic;
SIGNAL \inst|Equal3~0_combout\ : std_logic;
SIGNAL \inst|Selector25~3_combout\ : std_logic;
SIGNAL \inst|Selector25~4_combout\ : std_logic;
SIGNAL \inst|Equal67~0_combout\ : std_logic;
SIGNAL \inst|Equal67~1_combout\ : std_logic;
SIGNAL \inst|Equal40~0_combout\ : std_logic;
SIGNAL \inst|Equal40~1_combout\ : std_logic;
SIGNAL \inst|WideOr20~4_combout\ : std_logic;
SIGNAL \inst|WideOr20~5_combout\ : std_logic;
SIGNAL \inst|WideOr20~6_combout\ : std_logic;
SIGNAL \inst|Equal54~4_combout\ : std_logic;
SIGNAL \inst|process_0~0_combout\ : std_logic;
SIGNAL \inst|XIRQ~0_combout\ : std_logic;
SIGNAL \inst|XIRQ~q\ : std_logic;
SIGNAL \inst|Equal20~0_combout\ : std_logic;
SIGNAL \inst|Equal20~1_combout\ : std_logic;
SIGNAL \inst|WideOr6~9_combout\ : std_logic;
SIGNAL \inst|WideOr6~4_combout\ : std_logic;
SIGNAL \inst|WideOr6~5_combout\ : std_logic;
SIGNAL \inst|Equal11~0_combout\ : std_logic;
SIGNAL \inst|Equal11~1_combout\ : std_logic;
SIGNAL \inst|Equal11~2_combout\ : std_logic;
SIGNAL \inst|WideOr6~6_combout\ : std_logic;
SIGNAL \inst|WideOr6~7_combout\ : std_logic;
SIGNAL \inst|Equal18~2_combout\ : std_logic;
SIGNAL \inst|Equal19~0_combout\ : std_logic;
SIGNAL \inst|WideOr6~8_combout\ : std_logic;
SIGNAL \inst|Selector18~10_combout\ : std_logic;
SIGNAL \inst|Selector25~5_combout\ : std_logic;
SIGNAL \inst|Selector18~11_combout\ : std_logic;
SIGNAL \inst|Selector18~12_combout\ : std_logic;
SIGNAL \inst|Selector19~4_combout\ : std_logic;
SIGNAL \inst|Aux[7]~0_combout\ : std_logic;
SIGNAL \inst|Add7~7\ : std_logic;
SIGNAL \inst|Add7~8_combout\ : std_logic;
SIGNAL \inst|SPL[4]~6_combout\ : std_logic;
SIGNAL \inst|Add7~9\ : std_logic;
SIGNAL \inst|Add7~10_combout\ : std_logic;
SIGNAL \inst|SPL[5]~5_combout\ : std_logic;
SIGNAL \inst|Add7~11\ : std_logic;
SIGNAL \inst|Add7~12_combout\ : std_logic;
SIGNAL \inst|SPL[6]~4_combout\ : std_logic;
SIGNAL \inst|Add7~13\ : std_logic;
SIGNAL \inst|Add7~14_combout\ : std_logic;
SIGNAL \inst|SPL[7]~3_combout\ : std_logic;
SIGNAL \inst|WideOr2~24_combout\ : std_logic;
SIGNAL \inst|WideOr2~14_combout\ : std_logic;
SIGNAL \inst|WideOr2~15_combout\ : std_logic;
SIGNAL \inst|WideOr2~16_combout\ : std_logic;
SIGNAL \inst|WideOr2~22_combout\ : std_logic;
SIGNAL \inst|WideOr2~17_combout\ : std_logic;
SIGNAL \inst|Equal2~1_combout\ : std_logic;
SIGNAL \inst|Selector26~9_combout\ : std_logic;
SIGNAL \inst|Selector20~8_combout\ : std_logic;
SIGNAL \inst|WideOr39~0_combout\ : std_logic;
SIGNAL \inst|Dir[10]~23_combout\ : std_logic;
SIGNAL \inst|Selector16~0_combout\ : std_logic;
SIGNAL \inst|Selector26~10_combout\ : std_logic;
SIGNAL \inst|Selector21~0_combout\ : std_logic;
SIGNAL \inst|Equal8~5_combout\ : std_logic;
SIGNAL \inst|Selector17~0_combout\ : std_logic;
SIGNAL \inst|Selector26~4_combout\ : std_logic;
SIGNAL \inst|WideOr39~1_combout\ : std_logic;
SIGNAL \inst|Dir[15]~13_combout\ : std_logic;
SIGNAL \inst|B[7]~11_combout\ : std_logic;
SIGNAL \inst|Equal33~2_combout\ : std_logic;
SIGNAL \inst|Yupa[7]~10_combout\ : std_logic;
SIGNAL \inst|Equal53~2_combout\ : std_logic;
SIGNAL \inst|WideOr2~18_combout\ : std_logic;
SIGNAL \inst|WideOr2~19_combout\ : std_logic;
SIGNAL \inst|WideOr2~20_combout\ : std_logic;
SIGNAL \inst|Selector78~0_combout\ : std_logic;
SIGNAL \inst|XL[6]~feeder_combout\ : std_logic;
SIGNAL \inst|XL[4]~feeder_combout\ : std_logic;
SIGNAL \inst|WideOr2~combout\ : std_logic;
SIGNAL \inst|Dir[2]~20_combout\ : std_logic;
SIGNAL \inst|XL[0]~feeder_combout\ : std_logic;
SIGNAL \inst|Yupa[0]~11_combout\ : std_logic;
SIGNAL \inst|D[15]~2_combout\ : std_logic;
SIGNAL \inst|A[0]~7_combout\ : std_logic;
SIGNAL \inst|XL[1]~feeder_combout\ : std_logic;
SIGNAL \inst|Yupa[0]~12\ : std_logic;
SIGNAL \inst|Yupa[1]~13_combout\ : std_logic;
SIGNAL \inst|Yupa[1]~14\ : std_logic;
SIGNAL \inst|Yupa[2]~15_combout\ : std_logic;
SIGNAL \inst|Yupa[2]~16\ : std_logic;
SIGNAL \inst|Yupa[3]~17_combout\ : std_logic;
SIGNAL \inst|Yupa[4]~19_combout\ : std_logic;
SIGNAL \inst|A[5]~2_combout\ : std_logic;
SIGNAL \inst|A[6]~1_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \inst|Selector54~0_combout\ : std_logic;
SIGNAL \inst|B[7]~8_combout\ : std_logic;
SIGNAL \inst|Equal7~0_combout\ : std_logic;
SIGNAL \inst|Equal83~0_combout\ : std_logic;
SIGNAL \inst|Equal65~0_combout\ : std_logic;
SIGNAL \inst|B[7]~9_combout\ : std_logic;
SIGNAL \inst|Selector38~0_combout\ : std_logic;
SIGNAL \inst|Data_out[7]~4_combout\ : std_logic;
SIGNAL \inst|Equal16~2_combout\ : std_logic;
SIGNAL \inst|Equal9~0_combout\ : std_logic;
SIGNAL \inst|Dir[15]~12_combout\ : std_logic;
SIGNAL \inst|Data_out[7]~5_combout\ : std_logic;
SIGNAL \inst|Dir[15]~24_combout\ : std_logic;
SIGNAL \inst|Equal55~0_combout\ : std_logic;
SIGNAL \inst|Yupa[7]~30_combout\ : std_logic;
SIGNAL \inst|Data_out[7]~6_combout\ : std_logic;
SIGNAL \inst|Data_out[7]~7_combout\ : std_logic;
SIGNAL \inst|Equal40~2_combout\ : std_logic;
SIGNAL \inst|B[7]~2_combout\ : std_logic;
SIGNAL \inst|B[7]~3_combout\ : std_logic;
SIGNAL \inst|B[7]~4_combout\ : std_logic;
SIGNAL \inst|B[7]~5_combout\ : std_logic;
SIGNAL \inst|B[7]~6_combout\ : std_logic;
SIGNAL \inst|B[7]~7_combout\ : std_logic;
SIGNAL \inst|B[7]~10_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \inst|Selector55~0_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \inst|Selector56~0_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \inst|Equal87~0_combout\ : std_logic;
SIGNAL \inst|A[7]~8_combout\ : std_logic;
SIGNAL \inst|A[7]~9_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \inst|Selector57~0_combout\ : std_logic;
SIGNAL \inst|Add4~1\ : std_logic;
SIGNAL \inst|Add4~3\ : std_logic;
SIGNAL \inst|Add4~5\ : std_logic;
SIGNAL \inst|Add4~7\ : std_logic;
SIGNAL \inst|Add4~8_combout\ : std_logic;
SIGNAL \inst|Data_out[7]~8_combout\ : std_logic;
SIGNAL \inst|Yupa[7]~28_combout\ : std_logic;
SIGNAL \inst|Yupa[7]~27_combout\ : std_logic;
SIGNAL \inst|Yupa[7]~29_combout\ : std_logic;
SIGNAL \inst|A[4]~3_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \inst|Selector58~0_combout\ : std_logic;
SIGNAL \inst|Add4~6_combout\ : std_logic;
SIGNAL \inst|A[3]~4_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \inst|Selector59~0_combout\ : std_logic;
SIGNAL \inst|Add4~4_combout\ : std_logic;
SIGNAL \inst|A[2]~5_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \inst|Selector60~0_combout\ : std_logic;
SIGNAL \inst|Add4~2_combout\ : std_logic;
SIGNAL \inst|A[1]~6_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \inst|Selector61~0_combout\ : std_logic;
SIGNAL \inst|Add4~0_combout\ : std_logic;
SIGNAL \inst|Dir[10]~21_combout\ : std_logic;
SIGNAL \inst|Selector15~0_combout\ : std_logic;
SIGNAL \inst|Selector15~1_combout\ : std_logic;
SIGNAL \inst|Dir[15]~14_combout\ : std_logic;
SIGNAL \inst|Dir[15]~15_combout\ : std_logic;
SIGNAL \inst|Dir[15]~16_combout\ : std_logic;
SIGNAL \inst|Data_out[7]~9_combout\ : std_logic;
SIGNAL \inst|WideNor0~combout\ : std_logic;
SIGNAL \inst|WideOr6~combout\ : std_logic;
SIGNAL \inst|Dir[15]~17_combout\ : std_logic;
SIGNAL \inst|Dir[15]~18_combout\ : std_logic;
SIGNAL \inst|Dir[15]~19_combout\ : std_logic;
SIGNAL \inst1|Equal1~0_combout\ : std_logic;
SIGNAL \inst|Add3~1\ : std_logic;
SIGNAL \inst|Add3~2_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|PCL[7]~2_combout\ : std_logic;
SIGNAL \inst|Selector41~0_combout\ : std_logic;
SIGNAL \inst|Add1~1\ : std_logic;
SIGNAL \inst|Add1~2_combout\ : std_logic;
SIGNAL \inst|Add1~0_combout\ : std_logic;
SIGNAL \inst|Add2~1\ : std_logic;
SIGNAL \inst|Add2~2_combout\ : std_logic;
SIGNAL \inst|Selector41~1_combout\ : std_logic;
SIGNAL \inst|Selector41~2_combout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Dir[15]~22_combout\ : std_logic;
SIGNAL \inst|Selector40~1_combout\ : std_logic;
SIGNAL \inst|PCL[2]~4_combout\ : std_logic;
SIGNAL \inst|Selector40~0_combout\ : std_logic;
SIGNAL \inst|Add3~3\ : std_logic;
SIGNAL \inst|Add3~4_combout\ : std_logic;
SIGNAL \inst|Add1~3\ : std_logic;
SIGNAL \inst|Add1~4_combout\ : std_logic;
SIGNAL \inst|Add2~3\ : std_logic;
SIGNAL \inst|Add2~4_combout\ : std_logic;
SIGNAL \inst|Selector40~2_combout\ : std_logic;
SIGNAL \inst|Selector40~3_combout\ : std_logic;
SIGNAL \inst|Selector40~4_combout\ : std_logic;
SIGNAL \inst|Selector13~0_combout\ : std_logic;
SIGNAL \inst|Selector13~1_combout\ : std_logic;
SIGNAL \inst|PCH[2]~feeder_combout\ : std_logic;
SIGNAL \inst|PCH[7]~2_combout\ : std_logic;
SIGNAL \inst|PCH[0]~feeder_combout\ : std_logic;
SIGNAL \inst|Add1~13\ : std_logic;
SIGNAL \inst|Add1~14_combout\ : std_logic;
SIGNAL \inst|Add1~10_combout\ : std_logic;
SIGNAL \inst|Add1~5\ : std_logic;
SIGNAL \inst|Add1~7\ : std_logic;
SIGNAL \inst|Add1~8_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add3~5\ : std_logic;
SIGNAL \inst|Add3~6_combout\ : std_logic;
SIGNAL \inst|Selector39~0_combout\ : std_logic;
SIGNAL \inst|Add1~6_combout\ : std_logic;
SIGNAL \inst|Add2~5\ : std_logic;
SIGNAL \inst|Add2~6_combout\ : std_logic;
SIGNAL \inst|Selector39~1_combout\ : std_logic;
SIGNAL \inst|Selector39~2_combout\ : std_logic;
SIGNAL \inst|Add2~7\ : std_logic;
SIGNAL \inst|Add2~9\ : std_logic;
SIGNAL \inst|Add2~11\ : std_logic;
SIGNAL \inst|Add2~13\ : std_logic;
SIGNAL \inst|Add2~15\ : std_logic;
SIGNAL \inst|Add2~16_combout\ : std_logic;
SIGNAL \inst|Add3~15\ : std_logic;
SIGNAL \inst|Add3~16_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|Selector34~0_combout\ : std_logic;
SIGNAL \inst|Selector34~1_combout\ : std_logic;
SIGNAL \inst|Selector34~2_combout\ : std_logic;
SIGNAL \inst|Add2~17\ : std_logic;
SIGNAL \inst|Add2~18_combout\ : std_logic;
SIGNAL \inst|Add3~17\ : std_logic;
SIGNAL \inst|Add3~18_combout\ : std_logic;
SIGNAL \inst|Add0~17\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|Selector33~0_combout\ : std_logic;
SIGNAL \inst|Selector33~1_combout\ : std_logic;
SIGNAL \inst|Selector33~2_combout\ : std_logic;
SIGNAL \inst|Add2~19\ : std_logic;
SIGNAL \inst|Add2~20_combout\ : std_logic;
SIGNAL \inst|Add3~19\ : std_logic;
SIGNAL \inst|Add3~20_combout\ : std_logic;
SIGNAL \inst|Add0~19\ : std_logic;
SIGNAL \inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|Selector32~0_combout\ : std_logic;
SIGNAL \inst|Selector32~1_combout\ : std_logic;
SIGNAL \inst|Selector32~2_combout\ : std_logic;
SIGNAL \inst|Add0~21\ : std_logic;
SIGNAL \inst|Add0~22_combout\ : std_logic;
SIGNAL \inst|Selector31~0_combout\ : std_logic;
SIGNAL \inst|Add3~21\ : std_logic;
SIGNAL \inst|Add3~22_combout\ : std_logic;
SIGNAL \inst|Add2~21\ : std_logic;
SIGNAL \inst|Add2~22_combout\ : std_logic;
SIGNAL \inst|Selector31~1_combout\ : std_logic;
SIGNAL \inst|Selector31~2_combout\ : std_logic;
SIGNAL \inst|Selector4~0_combout\ : std_logic;
SIGNAL \inst|PCH[6]~feeder_combout\ : std_logic;
SIGNAL \inst|Add3~23\ : std_logic;
SIGNAL \inst|Add3~24_combout\ : std_logic;
SIGNAL \inst|Add0~23\ : std_logic;
SIGNAL \inst|Add0~24_combout\ : std_logic;
SIGNAL \inst|Selector37~0_combout\ : std_logic;
SIGNAL \inst|Selector30~0_combout\ : std_logic;
SIGNAL \inst|Selector30~1_combout\ : std_logic;
SIGNAL \inst|Add2~23\ : std_logic;
SIGNAL \inst|Add2~24_combout\ : std_logic;
SIGNAL \inst|Selector30~2_combout\ : std_logic;
SIGNAL \inst|Add3~25\ : std_logic;
SIGNAL \inst|Add3~26_combout\ : std_logic;
SIGNAL \inst|Add0~25\ : std_logic;
SIGNAL \inst|Add0~26_combout\ : std_logic;
SIGNAL \inst|Selector29~0_combout\ : std_logic;
SIGNAL \inst|Selector29~1_combout\ : std_logic;
SIGNAL \inst|Add2~25\ : std_logic;
SIGNAL \inst|Add2~26_combout\ : std_logic;
SIGNAL \inst|Selector29~2_combout\ : std_logic;
SIGNAL \inst|Add2~27\ : std_logic;
SIGNAL \inst|Add2~28_combout\ : std_logic;
SIGNAL \inst|Add3~27\ : std_logic;
SIGNAL \inst|Add3~28_combout\ : std_logic;
SIGNAL \inst|Add0~27\ : std_logic;
SIGNAL \inst|Add0~28_combout\ : std_logic;
SIGNAL \inst|Selector28~0_combout\ : std_logic;
SIGNAL \inst|Selector28~1_combout\ : std_logic;
SIGNAL \inst|Selector28~2_combout\ : std_logic;
SIGNAL \inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst|Add0~29\ : std_logic;
SIGNAL \inst|Add0~30_combout\ : std_logic;
SIGNAL \inst|Selector27~0_combout\ : std_logic;
SIGNAL \inst|Add2~29\ : std_logic;
SIGNAL \inst|Add2~30_combout\ : std_logic;
SIGNAL \inst|Add3~29\ : std_logic;
SIGNAL \inst|Add3~30_combout\ : std_logic;
SIGNAL \inst|Selector27~1_combout\ : std_logic;
SIGNAL \inst|Selector27~2_combout\ : std_logic;
SIGNAL \inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst|Aux[6]~feeder_combout\ : std_logic;
SIGNAL \inst|Selector9~0_combout\ : std_logic;
SIGNAL \inst|Selector9~1_combout\ : std_logic;
SIGNAL \inst|Selector5~0_combout\ : std_logic;
SIGNAL \inst1|Equal44~2_combout\ : std_logic;
SIGNAL \inst|Selector11~0_combout\ : std_logic;
SIGNAL \inst|Selector11~1_combout\ : std_logic;
SIGNAL \inst|Selector2~0_combout\ : std_logic;
SIGNAL \inst|Selector7~0_combout\ : std_logic;
SIGNAL \inst|Selector3~0_combout\ : std_logic;
SIGNAL \inst|Selector6~0_combout\ : std_logic;
SIGNAL \inst1|Equal44~0_combout\ : std_logic;
SIGNAL \inst1|Equal44~1_combout\ : std_logic;
SIGNAL \inst1|Equal44~3_combout\ : std_logic;
SIGNAL \inst1|Equal50~0_combout\ : std_logic;
SIGNAL \inst|Equal46~0_combout\ : std_logic;
SIGNAL \inst|XH[7]~2_combout\ : std_logic;
SIGNAL \inst|Equal44~1_combout\ : std_logic;
SIGNAL \inst|Selector74~0_combout\ : std_logic;
SIGNAL \inst|Equal7~1_combout\ : std_logic;
SIGNAL \inst|Data_out~13_combout\ : std_logic;
SIGNAL \inst|Data_out~12_combout\ : std_logic;
SIGNAL \inst|Selector74~4_combout\ : std_logic;
SIGNAL \inst|Selector51~1_combout\ : std_logic;
SIGNAL \inst|Selector51~0_combout\ : std_logic;
SIGNAL \inst|Dir[15]~25_combout\ : std_logic;
SIGNAL \inst|WideOr31~combout\ : std_logic;
SIGNAL \inst|Selector51~2_combout\ : std_logic;
SIGNAL \inst|Data_out~10_combout\ : std_logic;
SIGNAL \inst|Selector74~2_combout\ : std_logic;
SIGNAL \inst|Equal55~1_combout\ : std_logic;
SIGNAL \inst|Data_out~11_combout\ : std_logic;
SIGNAL \inst|Selector74~3_combout\ : std_logic;
SIGNAL \inst|YL[3]~feeder_combout\ : std_logic;
SIGNAL \inst|YL[7]~2_combout\ : std_logic;
SIGNAL \inst|YH[7]~2_combout\ : std_logic;
SIGNAL \inst|Selector74~1_combout\ : std_logic;
SIGNAL \inst|Selector74~5_combout\ : std_logic;
SIGNAL \inst|Data_out[7]~14_combout\ : std_logic;
SIGNAL \inst|Data_out[7]~17_combout\ : std_logic;
SIGNAL \inst|Data_out[7]~15_combout\ : std_logic;
SIGNAL \inst|Data_out[7]~16_combout\ : std_logic;
SIGNAL \inst|WideOr39~2_combout\ : std_logic;
SIGNAL \inst|WideOr39~combout\ : std_logic;
SIGNAL \inst|Selector78~1_combout\ : std_logic;
SIGNAL \inst|nRW~q\ : std_logic;
SIGNAL \inst1|YL[0]~0_combout\ : std_logic;
SIGNAL \inst1|YL[0]~0clkctrl_outclk\ : std_logic;
SIGNAL \inst1|Equal2~0_combout\ : std_logic;
SIGNAL \inst1|Equal51~0_combout\ : std_logic;
SIGNAL \inst1|PCH[0]~0_combout\ : std_logic;
SIGNAL \inst1|PCH[0]~0clkctrl_outclk\ : std_logic;
SIGNAL \inst1|output[3]~89_combout\ : std_logic;
SIGNAL \inst1|Equal6~0_combout\ : std_logic;
SIGNAL \inst1|Equal48~0_combout\ : std_logic;
SIGNAL \inst1|Equal46~0_combout\ : std_logic;
SIGNAL \inst1|ACCA[0]~0_combout\ : std_logic;
SIGNAL \inst1|ACCA[0]~0clkctrl_outclk\ : std_logic;
SIGNAL \inst1|Equal45~0_combout\ : std_logic;
SIGNAL \inst1|ACCB[0]~0_combout\ : std_logic;
SIGNAL \inst1|ACCB[0]~0clkctrl_outclk\ : std_logic;
SIGNAL \inst1|output[3]~86_combout\ : std_logic;
SIGNAL \inst1|XL[0]~0_combout\ : std_logic;
SIGNAL \inst1|XL[0]~0clkctrl_outclk\ : std_logic;
SIGNAL \inst1|Equal45~1_combout\ : std_logic;
SIGNAL \inst1|Equal47~0_combout\ : std_logic;
SIGNAL \inst1|XH[0]~0_combout\ : std_logic;
SIGNAL \inst1|XH[0]~0clkctrl_outclk\ : std_logic;
SIGNAL \inst1|output[3]~87_combout\ : std_logic;
SIGNAL \inst1|output[3]~88_combout\ : std_logic;
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|Equal0~6_combout\ : std_logic;
SIGNAL \inst1|Equal7~1_combout\ : std_logic;
SIGNAL \inst1|Equal9~2_combout\ : std_logic;
SIGNAL \inst1|Equal4~2_combout\ : std_logic;
SIGNAL \inst1|Equal15~2_combout\ : std_logic;
SIGNAL \inst1|Equal28~0_combout\ : std_logic;
SIGNAL \inst1|output[4]~129_combout\ : std_logic;
SIGNAL \inst1|Equal0~3_combout\ : std_logic;
SIGNAL \inst1|Equal0~4_combout\ : std_logic;
SIGNAL \inst1|Equal4~3_combout\ : std_logic;
SIGNAL \inst1|Equal6~1_combout\ : std_logic;
SIGNAL \inst1|Equal22~0_combout\ : std_logic;
SIGNAL \inst1|output[4]~77_combout\ : std_logic;
SIGNAL \inst1|Equal29~0_combout\ : std_logic;
SIGNAL \inst1|Equal29~1_combout\ : std_logic;
SIGNAL \inst1|s30[0]~0_combout\ : std_logic;
SIGNAL \inst1|s30[0]~0clkctrl_outclk\ : std_logic;
SIGNAL \inst1|Equal52~0_combout\ : std_logic;
SIGNAL \inst1|PCL[1]~0_combout\ : std_logic;
SIGNAL \inst1|PCL[1]~0clkctrl_outclk\ : std_logic;
SIGNAL \inst1|output[3]~90_combout\ : std_logic;
SIGNAL \inst1|ccr[0]~0_combout\ : std_logic;
SIGNAL \inst1|ccr[0]~0clkctrl_outclk\ : std_logic;
SIGNAL \inst1|Equal3~0_combout\ : std_logic;
SIGNAL \inst1|Equal49~0_combout\ : std_logic;
SIGNAL \inst1|YH[0]~0_combout\ : std_logic;
SIGNAL \inst1|YH[0]~0clkctrl_outclk\ : std_logic;
SIGNAL \inst1|output[3]~91_combout\ : std_logic;
SIGNAL \inst1|output[3]~92_combout\ : std_logic;
SIGNAL \inst1|output[3]~93_combout\ : std_logic;
SIGNAL \inst|XL[3]~feeder_combout\ : std_logic;
SIGNAL \inst|Yupa[3]~18\ : std_logic;
SIGNAL \inst|Yupa[4]~20\ : std_logic;
SIGNAL \inst|Yupa[5]~22\ : std_logic;
SIGNAL \inst|Yupa[6]~23_combout\ : std_logic;
SIGNAL \inst|Add4~9\ : std_logic;
SIGNAL \inst|Add4~11\ : std_logic;
SIGNAL \inst|Add4~12_combout\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|Equal1~1_combout\ : std_logic;
SIGNAL \inst|Selector52~0_combout\ : std_logic;
SIGNAL \inst|Selector52~1_combout\ : std_logic;
SIGNAL \inst|Selector52~2_combout\ : std_logic;
SIGNAL \inst|Selector52~3_combout\ : std_logic;
SIGNAL \inst|Selector52~4_combout\ : std_logic;
SIGNAL \inst|PC[15]~3_combout\ : std_logic;
SIGNAL \inst|PC[15]~4_combout\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|PCL[4]~3_combout\ : std_logic;
SIGNAL \inst|Add3~7\ : std_logic;
SIGNAL \inst|Add3~8_combout\ : std_logic;
SIGNAL \inst|Add2~8_combout\ : std_logic;
SIGNAL \inst|Selector38~1_combout\ : std_logic;
SIGNAL \inst|Selector38~2_combout\ : std_logic;
SIGNAL \inst|Selector38~3_combout\ : std_logic;
SIGNAL \inst|Selector38~4_combout\ : std_logic;
SIGNAL \inst|Add3~9\ : std_logic;
SIGNAL \inst|Add3~10_combout\ : std_logic;
SIGNAL \inst|Add2~10_combout\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Selector37~1_combout\ : std_logic;
SIGNAL \inst|Selector37~2_combout\ : std_logic;
SIGNAL \inst|Selector37~3_combout\ : std_logic;
SIGNAL \inst|Add3~11\ : std_logic;
SIGNAL \inst|Add3~13\ : std_logic;
SIGNAL \inst|Add3~14_combout\ : std_logic;
SIGNAL \inst|Add2~14_combout\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Selector35~0_combout\ : std_logic;
SIGNAL \inst|Selector35~1_combout\ : std_logic;
SIGNAL \inst|Selector35~2_combout\ : std_logic;
SIGNAL \inst|Selector8~0_combout\ : std_logic;
SIGNAL \inst|Selector8~1_combout\ : std_logic;
SIGNAL \inst1|Equal30~4_combout\ : std_logic;
SIGNAL \inst1|Equal30~5_combout\ : std_logic;
SIGNAL \inst1|Equal5~0_combout\ : std_logic;
SIGNAL \inst1|Equal37~0_combout\ : std_logic;
SIGNAL \inst1|Equal37~1_combout\ : std_logic;
SIGNAL \inst1|Equal37~2_combout\ : std_logic;
SIGNAL \inst1|output[2]~38_combout\ : std_logic;
SIGNAL \inst1|Equal37~3_combout\ : std_logic;
SIGNAL \inst1|Equal30~6_combout\ : std_logic;
SIGNAL \inst1|output[3]~39_combout\ : std_logic;
SIGNAL \inst1|output[5]~40_combout\ : std_logic;
SIGNAL \inst1|output[7]~126_combout\ : std_logic;
SIGNAL \inst1|output[7]~41_combout\ : std_logic;
SIGNAL \inst|Selector73~0_combout\ : std_logic;
SIGNAL \inst|estados[4]~4_combout\ : std_logic;
SIGNAL \inst|estados[7]~0_combout\ : std_logic;
SIGNAL \inst|Selector73~2_combout\ : std_logic;
SIGNAL \inst|Selector73~3_combout\ : std_logic;
SIGNAL \inst|Selector73~1_combout\ : std_logic;
SIGNAL \inst|Selector73~4_combout\ : std_logic;
SIGNAL \inst|Selector73~5_combout\ : std_logic;
SIGNAL \inst1|output[4]~81_combout\ : std_logic;
SIGNAL \inst1|output[4]~82_combout\ : std_logic;
SIGNAL \inst1|output[4]~83_combout\ : std_logic;
SIGNAL \inst1|output[4]~84_combout\ : std_logic;
SIGNAL \inst1|output[4]~78_combout\ : std_logic;
SIGNAL \inst1|output[4]~79_combout\ : std_logic;
SIGNAL \inst1|output[4]~80_combout\ : std_logic;
SIGNAL \inst1|output[4]~85_combout\ : std_logic;
SIGNAL \inst|Add1~9\ : std_logic;
SIGNAL \inst|Add1~11\ : std_logic;
SIGNAL \inst|Add1~12_combout\ : std_logic;
SIGNAL \inst|Add2~12_combout\ : std_logic;
SIGNAL \inst|Add3~12_combout\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Selector36~0_combout\ : std_logic;
SIGNAL \inst|Selector36~1_combout\ : std_logic;
SIGNAL \inst|Selector36~2_combout\ : std_logic;
SIGNAL \inst|estados[6]~2_combout\ : std_logic;
SIGNAL \inst|Selector71~2_combout\ : std_logic;
SIGNAL \inst|Selector71~3_combout\ : std_logic;
SIGNAL \inst|Selector71~0_combout\ : std_logic;
SIGNAL \inst|YL[6]~feeder_combout\ : std_logic;
SIGNAL \inst|Selector71~1_combout\ : std_logic;
SIGNAL \inst|Selector71~4_combout\ : std_logic;
SIGNAL \inst|Selector71~5_combout\ : std_logic;
SIGNAL \inst1|output[6]~61_combout\ : std_logic;
SIGNAL \inst1|Equal15~3_combout\ : std_logic;
SIGNAL \inst1|Equal23~0_combout\ : std_logic;
SIGNAL \inst1|output[5]~33_combout\ : std_logic;
SIGNAL \inst1|output[7]~125_combout\ : std_logic;
SIGNAL \inst1|output[7]~34_combout\ : std_logic;
SIGNAL \inst1|output[7]~35_combout\ : std_logic;
SIGNAL \inst1|output[6]~59_combout\ : std_logic;
SIGNAL \inst1|output[6]~60_combout\ : std_logic;
SIGNAL \inst1|output[6]~63_combout\ : std_logic;
SIGNAL \inst1|output[6]~64_combout\ : std_logic;
SIGNAL \inst1|output[6]~65_combout\ : std_logic;
SIGNAL \inst1|output[6]~62_combout\ : std_logic;
SIGNAL \inst1|output[6]~66_combout\ : std_logic;
SIGNAL \inst|Selector17~1_combout\ : std_logic;
SIGNAL \inst|Equal57~2_combout\ : std_logic;
SIGNAL \inst|Selector17~2_combout\ : std_logic;
SIGNAL \inst|Selector25~2_combout\ : std_logic;
SIGNAL \inst|Selector24~2_combout\ : std_logic;
SIGNAL \inst|Selector17~3_combout\ : std_logic;
SIGNAL \inst|Selector17~4_combout\ : std_logic;
SIGNAL \inst|Equal8~4_combout\ : std_logic;
SIGNAL \inst|Equal10~4_combout\ : std_logic;
SIGNAL \inst|SPL[7]~0_combout\ : std_logic;
SIGNAL \inst|SPL[7]~1_combout\ : std_logic;
SIGNAL \inst|SPL[7]~2_combout\ : std_logic;
SIGNAL \inst|Add7~1\ : std_logic;
SIGNAL \inst|Add7~3\ : std_logic;
SIGNAL \inst|Add7~4_combout\ : std_logic;
SIGNAL \inst|SPL[2]~8_combout\ : std_logic;
SIGNAL \inst|Add7~5\ : std_logic;
SIGNAL \inst|Add7~6_combout\ : std_logic;
SIGNAL \inst|SPL[3]~7_combout\ : std_logic;
SIGNAL \inst|Aux[3]~feeder_combout\ : std_logic;
SIGNAL \inst|Selector12~0_combout\ : std_logic;
SIGNAL \inst|Selector12~1_combout\ : std_logic;
SIGNAL \inst1|Equal44~4_combout\ : std_logic;
SIGNAL \inst|Selector75~4_combout\ : std_logic;
SIGNAL \inst|Selector75~0_combout\ : std_logic;
SIGNAL \inst|YL[2]~feeder_combout\ : std_logic;
SIGNAL \inst|Selector75~1_combout\ : std_logic;
SIGNAL \inst|Selector75~2_combout\ : std_logic;
SIGNAL \inst|Selector75~3_combout\ : std_logic;
SIGNAL \inst|Selector75~5_combout\ : std_logic;
SIGNAL \inst1|output[2]~106_combout\ : std_logic;
SIGNAL \inst1|output[2]~104_combout\ : std_logic;
SIGNAL \inst1|output[2]~105_combout\ : std_logic;
SIGNAL \inst1|Equal15~4_combout\ : std_logic;
SIGNAL \inst1|output[2]~95_combout\ : std_logic;
SIGNAL \inst1|output[2]~96_combout\ : std_logic;
SIGNAL \inst1|output[7]~130_combout\ : std_logic;
SIGNAL \inst1|output[7]~23_combout\ : std_logic;
SIGNAL \inst1|output[2]~97_combout\ : std_logic;
SIGNAL \inst1|output[7]~42_combout\ : std_logic;
SIGNAL \inst1|output[2]~47_combout\ : std_logic;
SIGNAL \inst1|output[2]~48_combout\ : std_logic;
SIGNAL \inst1|output[2]~94_combout\ : std_logic;
SIGNAL \inst1|Equal12~0_combout\ : std_logic;
SIGNAL \inst1|output[7]~24_combout\ : std_logic;
SIGNAL \inst1|output[5]~49_combout\ : std_logic;
SIGNAL \inst1|Equal30~7_combout\ : std_logic;
SIGNAL \inst1|output[5]~43_combout\ : std_logic;
SIGNAL \inst1|output[2]~44_combout\ : std_logic;
SIGNAL \inst1|output[0]~50_combout\ : std_logic;
SIGNAL \inst1|output[5]~128_combout\ : std_logic;
SIGNAL \inst1|output[5]~127_combout\ : std_logic;
SIGNAL \inst1|output[5]~51_combout\ : std_logic;
SIGNAL \inst1|output[7]~52_combout\ : std_logic;
SIGNAL \inst1|output[7]~53_combout\ : std_logic;
SIGNAL \inst1|output[2]~98_combout\ : std_logic;
SIGNAL \inst1|output[2]~99_combout\ : std_logic;
SIGNAL \inst1|output[2]~101_combout\ : std_logic;
SIGNAL \inst1|output[2]~102_combout\ : std_logic;
SIGNAL \inst1|output[2]~100_combout\ : std_logic;
SIGNAL \inst1|output[2]~103_combout\ : std_logic;
SIGNAL \inst1|output[2]~107_combout\ : std_logic;
SIGNAL \inst|Selector22~0_combout\ : std_logic;
SIGNAL \inst|Selector21~4_combout\ : std_logic;
SIGNAL \inst|Selector21~5_combout\ : std_logic;
SIGNAL \inst|Selector21~6_combout\ : std_logic;
SIGNAL \inst|Selector21~7_combout\ : std_logic;
SIGNAL \inst|Equal24~0_combout\ : std_logic;
SIGNAL \inst|PC[15]~5_combout\ : std_logic;
SIGNAL \inst|PC[15]~2_combout\ : std_logic;
SIGNAL \inst|Add3~0_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Selector42~0_combout\ : std_logic;
SIGNAL \inst|Add2~0_combout\ : std_logic;
SIGNAL \inst|Selector42~1_combout\ : std_logic;
SIGNAL \inst|Selector42~2_combout\ : std_logic;
SIGNAL \inst|estados[0]~8_combout\ : std_logic;
SIGNAL \inst|Selector77~2_combout\ : std_logic;
SIGNAL \inst|Selector77~3_combout\ : std_logic;
SIGNAL \inst|Selector77~0_combout\ : std_logic;
SIGNAL \inst|Selector77~1_combout\ : std_logic;
SIGNAL \inst|Selector77~4_combout\ : std_logic;
SIGNAL \inst|Selector77~5_combout\ : std_logic;
SIGNAL \inst1|output[0]~116_combout\ : std_logic;
SIGNAL \inst1|output[0]~117_combout\ : std_logic;
SIGNAL \inst1|output[0]~119_combout\ : std_logic;
SIGNAL \inst1|output[0]~121_combout\ : std_logic;
SIGNAL \inst1|output[0]~122_combout\ : std_logic;
SIGNAL \inst1|output[0]~120_combout\ : std_logic;
SIGNAL \inst1|output[0]~118_combout\ : std_logic;
SIGNAL \inst1|output[0]~123_combout\ : std_logic;
SIGNAL \inst1|output[0]~124_combout\ : std_logic;
SIGNAL \inst|Selector18~14_combout\ : std_logic;
SIGNAL \inst|Selector23~0_combout\ : std_logic;
SIGNAL \inst|Selector22~2_combout\ : std_logic;
SIGNAL \inst|Selector23~1_combout\ : std_logic;
SIGNAL \inst|Equal75~0_combout\ : std_logic;
SIGNAL \inst|Equal78~2_combout\ : std_logic;
SIGNAL \inst|Selector20~9_combout\ : std_logic;
SIGNAL \inst|Selector20~10_combout\ : std_logic;
SIGNAL \inst|WideOr2~21_combout\ : std_logic;
SIGNAL \inst|Selector20~11_combout\ : std_logic;
SIGNAL \inst|Equal32~1_combout\ : std_logic;
SIGNAL \inst|Selector25~6_combout\ : std_logic;
SIGNAL \inst|Selector25~9_combout\ : std_logic;
SIGNAL \inst|Selector25~7_combout\ : std_logic;
SIGNAL \inst|Selector16~2_combout\ : std_logic;
SIGNAL \inst|Selector25~8_combout\ : std_logic;
SIGNAL \inst|Equal4~3_combout\ : std_logic;
SIGNAL \inst|Selector16~1_combout\ : std_logic;
SIGNAL \inst|Selector16~3_combout\ : std_logic;
SIGNAL \inst|Equal15~0_combout\ : std_logic;
SIGNAL \inst|Equal15~1_combout\ : std_logic;
SIGNAL \inst|XL[7]~0_combout\ : std_logic;
SIGNAL \inst|Yupa[5]~21_combout\ : std_logic;
SIGNAL \inst|Add4~10_combout\ : std_logic;
SIGNAL \inst|Aux[5]~feeder_combout\ : std_logic;
SIGNAL \inst|Selector10~0_combout\ : std_logic;
SIGNAL \inst|Selector10~1_combout\ : std_logic;
SIGNAL \inst1|Equal7~0_combout\ : std_logic;
SIGNAL \inst1|Equal11~0_combout\ : std_logic;
SIGNAL \inst|Selector76~4_combout\ : std_logic;
SIGNAL \inst|Selector76~0_combout\ : std_logic;
SIGNAL \inst|YL[1]~feeder_combout\ : std_logic;
SIGNAL \inst|Selector76~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|Selector53~0_combout\ : std_logic;
SIGNAL \inst|Selector53~1_combout\ : std_logic;
SIGNAL \inst|Selector53~2_combout\ : std_logic;
SIGNAL \inst|Selector76~2_combout\ : std_logic;
SIGNAL \inst|Selector76~3_combout\ : std_logic;
SIGNAL \inst|Selector76~5_combout\ : std_logic;
SIGNAL \inst1|output[1]~108_combout\ : std_logic;
SIGNAL \inst1|output[1]~110_combout\ : std_logic;
SIGNAL \inst1|output[1]~109_combout\ : std_logic;
SIGNAL \inst1|output[1]~111_combout\ : std_logic;
SIGNAL \inst1|output[1]~112_combout\ : std_logic;
SIGNAL \inst1|output[1]~113_combout\ : std_logic;
SIGNAL \inst1|output[1]~114_combout\ : std_logic;
SIGNAL \inst1|output[1]~115_combout\ : std_logic;
SIGNAL \inst|Selector22~1_combout\ : std_logic;
SIGNAL \inst|Selector22~3_combout\ : std_logic;
SIGNAL \inst|Equal18~1_combout\ : std_logic;
SIGNAL \inst|Equal35~0_combout\ : std_logic;
SIGNAL \inst|Equal35~1_combout\ : std_logic;
SIGNAL \inst|Selector24~7_combout\ : std_logic;
SIGNAL \inst|Selector24~3_combout\ : std_logic;
SIGNAL \inst|Selector24~5_combout\ : std_logic;
SIGNAL \inst|Selector24~6_combout\ : std_logic;
SIGNAL \inst|Equal36~0_combout\ : std_logic;
SIGNAL \inst|Equal71~0_combout\ : std_logic;
SIGNAL \inst|WideOr20~10_combout\ : std_logic;
SIGNAL \inst|WideOr20~7_combout\ : std_logic;
SIGNAL \inst|WideOr20~9_combout\ : std_logic;
SIGNAL \inst|Equal42~0_combout\ : std_logic;
SIGNAL \inst|Selector72~1_combout\ : std_logic;
SIGNAL \inst|Selector72~4_combout\ : std_logic;
SIGNAL \inst|Selector72~0_combout\ : std_logic;
SIGNAL \inst|estados[5]~3_combout\ : std_logic;
SIGNAL \inst|Selector72~2_combout\ : std_logic;
SIGNAL \inst|Selector72~3_combout\ : std_logic;
SIGNAL \inst|Selector72~5_combout\ : std_logic;
SIGNAL \inst1|output[5]~69_combout\ : std_logic;
SIGNAL \inst1|output[5]~68_combout\ : std_logic;
SIGNAL \inst1|output[5]~70_combout\ : std_logic;
SIGNAL \inst1|output[5]~71_combout\ : std_logic;
SIGNAL \inst1|output[5]~75_combout\ : std_logic;
SIGNAL \inst1|output[5]~67_combout\ : std_logic;
SIGNAL \inst1|output[5]~73_combout\ : std_logic;
SIGNAL \inst1|output[5]~72_combout\ : std_logic;
SIGNAL \inst1|output[5]~74_combout\ : std_logic;
SIGNAL \inst1|output[5]~76_combout\ : std_logic;
SIGNAL \inst|Selector18~8_combout\ : std_logic;
SIGNAL \inst|Selector26~5_combout\ : std_logic;
SIGNAL \inst|Selector18~9_combout\ : std_logic;
SIGNAL \inst|Selector18~13_combout\ : std_logic;
SIGNAL \inst|Equal18~3_combout\ : std_logic;
SIGNAL \inst|Selector26~6_combout\ : std_logic;
SIGNAL \inst|Selector26~7_combout\ : std_logic;
SIGNAL \inst|Selector26~8_combout\ : std_logic;
SIGNAL \inst|Equal2~0_combout\ : std_logic;
SIGNAL \inst|Selector20~12_combout\ : std_logic;
SIGNAL \inst|Add7~2_combout\ : std_logic;
SIGNAL \inst|SPL[1]~9_combout\ : std_logic;
SIGNAL \inst|Aux[1]~feeder_combout\ : std_logic;
SIGNAL \inst|Selector14~0_combout\ : std_logic;
SIGNAL \inst|Selector14~1_combout\ : std_logic;
SIGNAL \inst1|Equal0~5_combout\ : std_logic;
SIGNAL \inst1|output[7]~31_combout\ : std_logic;
SIGNAL \inst1|output[7]~32_combout\ : std_logic;
SIGNAL \inst1|output[7]~54_combout\ : std_logic;
SIGNAL \inst1|output[7]~55_combout\ : std_logic;
SIGNAL \inst1|output[7]~56_combout\ : std_logic;
SIGNAL \inst1|output[7]~57_combout\ : std_logic;
SIGNAL \inst1|output[7]~37_combout\ : std_logic;
SIGNAL \inst1|output[7]~45_combout\ : std_logic;
SIGNAL \inst1|output[7]~46_combout\ : std_logic;
SIGNAL \inst1|output[7]~58_combout\ : std_logic;
SIGNAL \inst1|output[7]~58clkctrl_outclk\ : std_logic;
SIGNAL \inst|Selector70~4_combout\ : std_logic;
SIGNAL \inst|XL[7]~feeder_combout\ : std_logic;
SIGNAL \inst|Selector70~0_combout\ : std_logic;
SIGNAL \inst|Selector70~1_combout\ : std_logic;
SIGNAL \inst|estados[7]~1_combout\ : std_logic;
SIGNAL \inst|Selector70~2_combout\ : std_logic;
SIGNAL \inst|Selector70~3_combout\ : std_logic;
SIGNAL \inst|Selector70~5_combout\ : std_logic;
SIGNAL \inst1|output[7]~25_combout\ : std_logic;
SIGNAL \inst1|output[7]~21_combout\ : std_logic;
SIGNAL \inst1|output[7]~28_combout\ : std_logic;
SIGNAL \inst1|output[7]~26_combout\ : std_logic;
SIGNAL \inst1|output[7]~27_combout\ : std_logic;
SIGNAL \inst1|output[7]~29_combout\ : std_logic;
SIGNAL \inst1|output[7]~22_combout\ : std_logic;
SIGNAL \inst1|output[7]~30_combout\ : std_logic;
SIGNAL \inst1|output[7]~20_combout\ : std_logic;
SIGNAL \inst1|output[7]~36_combout\ : std_logic;
SIGNAL \inst|Yupa[6]~24\ : std_logic;
SIGNAL \inst|Yupa[7]~25_combout\ : std_logic;
SIGNAL \inst|Add4~13\ : std_logic;
SIGNAL \inst|Add4~14_combout\ : std_logic;
SIGNAL \inst|A[7]~0_combout\ : std_logic;
SIGNAL \inst1|salida10[7]~0_combout\ : std_logic;
SIGNAL \inst1|salida10[7]~0clkctrl_outclk\ : std_logic;
SIGNAL \inst1|salida11[7]~0_combout\ : std_logic;
SIGNAL \inst1|salida11[7]~0clkctrl_outclk\ : std_logic;
SIGNAL \inst1|salida12[7]~0_combout\ : std_logic;
SIGNAL \inst1|salida12[7]~0clkctrl_outclk\ : std_logic;
SIGNAL \entrada[1]~input_o\ : std_logic;
SIGNAL \entrada[0]~input_o\ : std_logic;
SIGNAL \inst3|Mux0~0_combout\ : std_logic;
SIGNAL \inst3|Mux0~1_combout\ : std_logic;
SIGNAL \inst3|Mux1~0_combout\ : std_logic;
SIGNAL \inst3|Mux1~1_combout\ : std_logic;
SIGNAL \inst3|Mux2~0_combout\ : std_logic;
SIGNAL \inst3|Mux2~1_combout\ : std_logic;
SIGNAL \inst3|Mux3~0_combout\ : std_logic;
SIGNAL \inst3|Mux3~1_combout\ : std_logic;
SIGNAL \inst3|Mux4~0_combout\ : std_logic;
SIGNAL \inst3|Mux4~1_combout\ : std_logic;
SIGNAL \inst3|Mux5~0_combout\ : std_logic;
SIGNAL \inst3|Mux5~1_combout\ : std_logic;
SIGNAL \inst3|Mux6~0_combout\ : std_logic;
SIGNAL \inst3|Mux6~1_combout\ : std_logic;
SIGNAL \inst3|Mux7~0_combout\ : std_logic;
SIGNAL \inst3|Mux7~1_combout\ : std_logic;
SIGNAL \inst1|s30\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|XL\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|XH\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|ccr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|YL\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|PCH\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|PCL\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|YH\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|SPL\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|ACCB\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|PC\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|e_siguiente\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|XL\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|Yupa\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|D\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|B\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|Dir\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|estados\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|PCL\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|ACCA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|Data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|PCH\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|XH\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|YH\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|YL\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|salida10\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|A\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|salida11\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|Aux\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|salida12\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|ALT_INV_PC\ : std_logic_vector(4 DOWNTO 2);
SIGNAL \inst|ALT_INV_estados\ : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

a <= ww_a;
ww_clk <= clk;
ww_reset <= reset;
ww_nIRQ <= nIRQ;
ww_nXIRQ <= nXIRQ;
b <= ww_b;
bandera <= ww_bandera;
dir <= ww_dir;
estado <= ww_estado;
pc <= ww_pc;
s10 <= ww_s10;
s11 <= ww_s11;
s12 <= ww_s12;
salida <= ww_salida;
ww_entrada <= entrada;
xlow <= ww_xlow;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\inst|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \inst|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \inst|Mult0|auto_generated|mac_mult1~DATAOUT13\ & \inst|Mult0|auto_generated|mac_mult1~DATAOUT12\ & 
\inst|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \inst|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \inst|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \inst|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \inst|Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\inst|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \inst|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \inst|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \inst|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \inst|Mult0|auto_generated|mac_mult1~DATAOUT2\ & 
\inst|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \inst|Mult0|auto_generated|mac_mult1~dataout\ & \inst|Mult0|auto_generated|mac_mult1~1\ & \inst|Mult0|auto_generated|mac_mult1~0\);

\inst|Mult0|auto_generated|mac_out2~0\ <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\inst|Mult0|auto_generated|mac_out2~1\ <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\inst|D\(0) <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\inst|D\(1) <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\inst|D\(2) <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\inst|D\(3) <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\inst|D\(4) <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\inst|D\(5) <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\inst|D\(6) <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\inst|D\(7) <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\inst|D\(8) <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\inst|D\(9) <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\inst|D\(10) <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\inst|D\(11) <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\inst|D\(12) <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\inst|D\(13) <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\inst|D\(14) <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\inst|D\(15) <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\inst|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\inst|A\(7) & \inst|A\(6) & \inst|A\(5) & \inst|A\(4) & \inst|A\(3) & \inst|A\(2) & \inst|A\(1) & \inst|A\(0) & gnd);

\inst|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\inst|B\(7) & \inst|B\(6) & \inst|B\(5) & \inst|B\(4) & \inst|B\(3) & \inst|B\(2) & \inst|B\(1) & \inst|B\(0) & gnd);

\inst|Mult0|auto_generated|mac_mult1~0\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\inst|Mult0|auto_generated|mac_mult1~1\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\inst|Mult0|auto_generated|mac_mult1~dataout\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);

\inst1|ACCB[0]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|ACCB[0]~0_combout\);

\inst1|ACCA[0]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|ACCA[0]~0_combout\);

\inst1|output[7]~58clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|output[7]~58_combout\);

\inst1|ccr[0]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|ccr[0]~0_combout\);

\inst1|PCH[0]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|PCH[0]~0_combout\);

\inst1|salida12[7]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|salida12[7]~0_combout\);

\inst1|s30[0]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|s30[0]~0_combout\);

\inst1|salida11[7]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|salida11[7]~0_combout\);

\inst1|PCL[1]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|PCL[1]~0_combout\);

\inst1|salida10[7]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|salida10[7]~0_combout\);

\inst1|XH[0]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|XH[0]~0_combout\);

\inst1|YL[0]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|YL[0]~0_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\inst1|XL[0]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|XL[0]~0_combout\);

\inst1|YH[0]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|YH[0]~0_combout\);
\inst|ALT_INV_PC\(2) <= NOT \inst|PC\(2);
\inst|ALT_INV_PC\(4) <= NOT \inst|PC\(4);
\inst|ALT_INV_estados\(0) <= NOT \inst|estados\(0);
\inst|ALT_INV_estados\(1) <= NOT \inst|estados\(1);
\inst|ALT_INV_estados\(2) <= NOT \inst|estados\(2);
\inst|ALT_INV_estados\(3) <= NOT \inst|estados\(3);
\inst|ALT_INV_estados\(4) <= NOT \inst|estados\(4);
\inst|ALT_INV_estados\(5) <= NOT \inst|estados\(5);
\inst|ALT_INV_estados\(6) <= NOT \inst|estados\(6);
\inst|ALT_INV_estados\(7) <= NOT \inst|estados\(7);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X5_Y0_N23
\a[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|A\(7),
	devoe => ww_devoe,
	o => \a[7]~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\a[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|A\(6),
	devoe => ww_devoe,
	o => \a[6]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\a[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|A\(5),
	devoe => ww_devoe,
	o => \a[5]~output_o\);

-- Location: IOOBUF_X9_Y34_N9
\a[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|A\(4),
	devoe => ww_devoe,
	o => \a[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\a[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|A\(3),
	devoe => ww_devoe,
	o => \a[3]~output_o\);

-- Location: IOOBUF_X7_Y34_N16
\a[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|A\(2),
	devoe => ww_devoe,
	o => \a[2]~output_o\);

-- Location: IOOBUF_X7_Y34_N2
\a[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|A\(1),
	devoe => ww_devoe,
	o => \a[1]~output_o\);

-- Location: IOOBUF_X0_Y15_N9
\a[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|A\(0),
	devoe => ww_devoe,
	o => \a[0]~output_o\);

-- Location: IOOBUF_X16_Y34_N16
\b[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|B\(7),
	devoe => ww_devoe,
	o => \b[7]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\b[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|B\(6),
	devoe => ww_devoe,
	o => \b[6]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\b[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|B\(5),
	devoe => ww_devoe,
	o => \b[5]~output_o\);

-- Location: IOOBUF_X14_Y34_N16
\b[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|B\(4),
	devoe => ww_devoe,
	o => \b[4]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\b[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|B\(3),
	devoe => ww_devoe,
	o => \b[3]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\b[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|B\(2),
	devoe => ww_devoe,
	o => \b[2]~output_o\);

-- Location: IOOBUF_X9_Y34_N23
\b[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|B\(1),
	devoe => ww_devoe,
	o => \b[1]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\b[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|B\(0),
	devoe => ww_devoe,
	o => \b[0]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\bandera[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_estados\(7),
	devoe => ww_devoe,
	o => \bandera[7]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\bandera[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_estados\(6),
	devoe => ww_devoe,
	o => \bandera[6]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\bandera[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_estados\(5),
	devoe => ww_devoe,
	o => \bandera[5]~output_o\);

-- Location: IOOBUF_X53_Y11_N9
\bandera[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_estados\(4),
	devoe => ww_devoe,
	o => \bandera[4]~output_o\);

-- Location: IOOBUF_X53_Y10_N16
\bandera[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_estados\(3),
	devoe => ww_devoe,
	o => \bandera[3]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\bandera[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_estados\(2),
	devoe => ww_devoe,
	o => \bandera[2]~output_o\);

-- Location: IOOBUF_X34_Y34_N16
\bandera[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_estados\(1),
	devoe => ww_devoe,
	o => \bandera[1]~output_o\);

-- Location: IOOBUF_X23_Y34_N16
\bandera[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_estados\(0),
	devoe => ww_devoe,
	o => \bandera[0]~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\dir[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Dir\(15),
	devoe => ww_devoe,
	o => \dir[15]~output_o\);

-- Location: IOOBUF_X34_Y34_N9
\dir[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Dir\(14),
	devoe => ww_devoe,
	o => \dir[14]~output_o\);

-- Location: IOOBUF_X53_Y13_N9
\dir[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Dir\(13),
	devoe => ww_devoe,
	o => \dir[13]~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\dir[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Dir\(12),
	devoe => ww_devoe,
	o => \dir[12]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\dir[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Dir\(11),
	devoe => ww_devoe,
	o => \dir[11]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\dir[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Dir\(10),
	devoe => ww_devoe,
	o => \dir[10]~output_o\);

-- Location: IOOBUF_X36_Y0_N23
\dir[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Dir\(9),
	devoe => ww_devoe,
	o => \dir[9]~output_o\);

-- Location: IOOBUF_X36_Y0_N16
\dir[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Dir\(8),
	devoe => ww_devoe,
	o => \dir[8]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\dir[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Dir\(7),
	devoe => ww_devoe,
	o => \dir[7]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\dir[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Dir\(6),
	devoe => ww_devoe,
	o => \dir[6]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\dir[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Dir\(5),
	devoe => ww_devoe,
	o => \dir[5]~output_o\);

-- Location: IOOBUF_X53_Y15_N9
\dir[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Dir\(4),
	devoe => ww_devoe,
	o => \dir[4]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\dir[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Dir\(3),
	devoe => ww_devoe,
	o => \dir[3]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\dir[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Dir\(2),
	devoe => ww_devoe,
	o => \dir[2]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\dir[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Dir\(1),
	devoe => ww_devoe,
	o => \dir[1]~output_o\);

-- Location: IOOBUF_X53_Y14_N9
\dir[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Dir\(0),
	devoe => ww_devoe,
	o => \dir[0]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\estado[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|e_siguiente\(11),
	devoe => ww_devoe,
	o => \estado[7]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\estado[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|e_siguiente\(10),
	devoe => ww_devoe,
	o => \estado[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\estado[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|e_siguiente\(9),
	devoe => ww_devoe,
	o => \estado[5]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\estado[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|e_siguiente\(8),
	devoe => ww_devoe,
	o => \estado[4]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\estado[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|e_siguiente\(7),
	devoe => ww_devoe,
	o => \estado[3]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\estado[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|e_siguiente\(6),
	devoe => ww_devoe,
	o => \estado[2]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\estado[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|e_siguiente\(5),
	devoe => ww_devoe,
	o => \estado[1]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\estado[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|e_siguiente\(4),
	devoe => ww_devoe,
	o => \estado[0]~output_o\);

-- Location: IOOBUF_X16_Y34_N9
\pc[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PC\(7),
	devoe => ww_devoe,
	o => \pc[7]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\pc[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PC\(6),
	devoe => ww_devoe,
	o => \pc[6]~output_o\);

-- Location: IOOBUF_X20_Y34_N9
\pc[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PC\(5),
	devoe => ww_devoe,
	o => \pc[5]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\pc[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_PC\(4),
	devoe => ww_devoe,
	o => \pc[4]~output_o\);

-- Location: IOOBUF_X11_Y34_N2
\pc[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PC\(3),
	devoe => ww_devoe,
	o => \pc[3]~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\pc[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_PC\(2),
	devoe => ww_devoe,
	o => \pc[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\pc[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PC\(1),
	devoe => ww_devoe,
	o => \pc[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\pc[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PC\(0),
	devoe => ww_devoe,
	o => \pc[0]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\s10[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|salida10\(7),
	devoe => ww_devoe,
	o => \s10[7]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\s10[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|salida10\(6),
	devoe => ww_devoe,
	o => \s10[6]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\s10[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|salida10\(5),
	devoe => ww_devoe,
	o => \s10[5]~output_o\);

-- Location: IOOBUF_X14_Y34_N23
\s10[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|salida10\(4),
	devoe => ww_devoe,
	o => \s10[4]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\s10[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|salida10\(3),
	devoe => ww_devoe,
	o => \s10[3]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\s10[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|salida10\(2),
	devoe => ww_devoe,
	o => \s10[2]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\s10[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|salida10\(1),
	devoe => ww_devoe,
	o => \s10[1]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\s10[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|salida10\(0),
	devoe => ww_devoe,
	o => \s10[0]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\s11[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|salida11\(7),
	devoe => ww_devoe,
	o => \s11[7]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\s11[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|salida11\(6),
	devoe => ww_devoe,
	o => \s11[6]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\s11[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|salida11\(5),
	devoe => ww_devoe,
	o => \s11[5]~output_o\);

-- Location: IOOBUF_X18_Y34_N2
\s11[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|salida11\(4),
	devoe => ww_devoe,
	o => \s11[4]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\s11[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|salida11\(3),
	devoe => ww_devoe,
	o => \s11[3]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\s11[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|salida11\(2),
	devoe => ww_devoe,
	o => \s11[2]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\s11[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|salida11\(1),
	devoe => ww_devoe,
	o => \s11[1]~output_o\);

-- Location: IOOBUF_X53_Y11_N2
\s11[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|salida11\(0),
	devoe => ww_devoe,
	o => \s11[0]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\s12[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|salida12\(7),
	devoe => ww_devoe,
	o => \s12[7]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\s12[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|salida12\(6),
	devoe => ww_devoe,
	o => \s12[6]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\s12[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|salida12\(5),
	devoe => ww_devoe,
	o => \s12[5]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\s12[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|salida12\(4),
	devoe => ww_devoe,
	o => \s12[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\s12[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|salida12\(3),
	devoe => ww_devoe,
	o => \s12[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\s12[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|salida12\(2),
	devoe => ww_devoe,
	o => \s12[2]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\s12[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|salida12\(1),
	devoe => ww_devoe,
	o => \s12[1]~output_o\);

-- Location: IOOBUF_X53_Y12_N2
\s12[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|salida12\(0),
	devoe => ww_devoe,
	o => \s12[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\salida[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \salida[7]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\salida[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \salida[6]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\salida[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \salida[5]~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\salida[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux3~1_combout\,
	devoe => ww_devoe,
	o => \salida[4]~output_o\);

-- Location: IOOBUF_X16_Y34_N2
\salida[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \salida[3]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\salida[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux5~1_combout\,
	devoe => ww_devoe,
	o => \salida[2]~output_o\);

-- Location: IOOBUF_X53_Y20_N16
\salida[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux6~1_combout\,
	devoe => ww_devoe,
	o => \salida[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\salida[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux7~1_combout\,
	devoe => ww_devoe,
	o => \salida[0]~output_o\);

-- Location: IOOBUF_X43_Y0_N16
\xlow[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|XL\(7),
	devoe => ww_devoe,
	o => \xlow[7]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\xlow[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|XL\(6),
	devoe => ww_devoe,
	o => \xlow[6]~output_o\);

-- Location: IOOBUF_X7_Y34_N9
\xlow[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|XL\(5),
	devoe => ww_devoe,
	o => \xlow[5]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\xlow[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|XL\(4),
	devoe => ww_devoe,
	o => \xlow[4]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\xlow[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|XL\(3),
	devoe => ww_devoe,
	o => \xlow[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\xlow[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|XL\(2),
	devoe => ww_devoe,
	o => \xlow[2]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\xlow[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|XL\(1),
	devoe => ww_devoe,
	o => \xlow[1]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\xlow[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|XL\(0),
	devoe => ww_devoe,
	o => \xlow[0]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G18
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X20_Y12_N20
\inst|XL[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|XL[5]~feeder_combout\ = \inst1|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|output\(5),
	combout => \inst|XL[5]~feeder_combout\);

-- Location: IOIBUF_X53_Y14_N1
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X23_Y18_N26
\inst|Selector20~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector20~13_combout\ = (\inst|e_siguiente\(1)) # (!\inst|Equal15~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(1),
	datad => \inst|Equal15~1_combout\,
	combout => \inst|Selector20~13_combout\);

-- Location: LCCOMB_X23_Y18_N22
\inst|Equal14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal14~0_combout\ = (\inst|e_siguiente\(0) & \inst|e_siguiente\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|e_siguiente\(0),
	datad => \inst|e_siguiente\(1),
	combout => \inst|Equal14~0_combout\);

-- Location: LCCOMB_X27_Y16_N10
\inst|Add7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add7~0_combout\ = \inst|SPL\(0) $ (GND)
-- \inst|Add7~1\ = CARRY(!\inst|SPL\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SPL\(0),
	datad => VCC,
	combout => \inst|Add7~0_combout\,
	cout => \inst|Add7~1\);

-- Location: LCCOMB_X26_Y16_N30
\inst|SPL[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SPL[0]~10_combout\ = !\inst|Add7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Add7~0_combout\,
	combout => \inst|SPL[0]~10_combout\);

-- Location: LCCOMB_X21_Y14_N12
\inst|Aux[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Aux[7]~feeder_combout\ = \inst1|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|output\(7),
	combout => \inst|Aux[7]~feeder_combout\);

-- Location: LCCOMB_X24_Y18_N14
\inst|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~1_combout\ = (!\inst|e_siguiente\(9) & !\inst|e_siguiente\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|e_siguiente\(9),
	datad => \inst|e_siguiente\(4),
	combout => \inst|Equal5~1_combout\);

-- Location: LCCOMB_X24_Y18_N16
\inst|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~0_combout\ = (!\inst|e_siguiente\(3) & (!\inst|e_siguiente\(2) & (\inst|e_siguiente\(6) & \inst|e_siguiente\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(3),
	datab => \inst|e_siguiente\(2),
	datac => \inst|e_siguiente\(6),
	datad => \inst|e_siguiente\(5),
	combout => \inst|Equal5~0_combout\);

-- Location: LCCOMB_X24_Y18_N28
\inst|Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~2_combout\ = (\inst|e_siguiente\(11) & (!\inst|e_siguiente\(7) & (\inst|Equal5~1_combout\ & \inst|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(11),
	datab => \inst|e_siguiente\(7),
	datac => \inst|Equal5~1_combout\,
	datad => \inst|Equal5~0_combout\,
	combout => \inst|Equal5~2_combout\);

-- Location: LCCOMB_X24_Y17_N22
\inst|Equal81~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal81~0_combout\ = (!\inst|e_siguiente\(1) & (\inst|Equal5~2_combout\ & \inst|e_siguiente\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(1),
	datac => \inst|Equal5~2_combout\,
	datad => \inst|e_siguiente\(0),
	combout => \inst|Equal81~0_combout\);

-- Location: LCCOMB_X21_Y18_N30
\inst|Equal80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal80~0_combout\ = (\inst|e_siguiente\(8) & (\inst|Equal2~0_combout\ & (!\inst|e_siguiente\(10) & \inst|Equal5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(8),
	datab => \inst|Equal2~0_combout\,
	datac => \inst|e_siguiente\(10),
	datad => \inst|Equal5~2_combout\,
	combout => \inst|Equal80~0_combout\);

-- Location: LCCOMB_X21_Y18_N8
\inst|Selector19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector19~2_combout\ = (\inst|Equal80~0_combout\) # ((\inst|Equal81~0_combout\ & (!\inst|e_siguiente\(10) & \inst|e_siguiente\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal81~0_combout\,
	datab => \inst|e_siguiente\(10),
	datac => \inst|Equal80~0_combout\,
	datad => \inst|e_siguiente\(8),
	combout => \inst|Selector19~2_combout\);

-- Location: LCCOMB_X23_Y18_N30
\inst|Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~2_combout\ = (!\inst|e_siguiente\(0) & \inst|e_siguiente\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|e_siguiente\(0),
	datad => \inst|e_siguiente\(1),
	combout => \inst|Equal4~2_combout\);

-- Location: LCCOMB_X21_Y18_N26
\inst|Equal82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal82~0_combout\ = (\inst|e_siguiente\(8) & (\inst|Equal4~2_combout\ & (!\inst|e_siguiente\(10) & \inst|Equal5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(8),
	datab => \inst|Equal4~2_combout\,
	datac => \inst|e_siguiente\(10),
	datad => \inst|Equal5~2_combout\,
	combout => \inst|Equal82~0_combout\);

-- Location: LCCOMB_X21_Y18_N16
\inst|Selector19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector19~3_combout\ = (\inst|Equal18~3_combout\) # ((\inst|Equal82~0_combout\) # ((\inst1|output\(4) & \inst|Equal4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output\(4),
	datab => \inst|Equal18~3_combout\,
	datac => \inst|Equal82~0_combout\,
	datad => \inst|Equal4~3_combout\,
	combout => \inst|Selector19~3_combout\);

-- Location: LCCOMB_X24_Y18_N22
\inst|Equal84~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal84~0_combout\ = (\inst|e_siguiente\(10) & (\inst|Equal2~0_combout\ & (\inst|e_siguiente\(8) & \inst|Equal5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(10),
	datab => \inst|Equal2~0_combout\,
	datac => \inst|e_siguiente\(8),
	datad => \inst|Equal5~2_combout\,
	combout => \inst|Equal84~0_combout\);

-- Location: LCCOMB_X23_Y18_N14
\inst|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector19~0_combout\ = (\inst|e_siguiente\(8) & ((\inst|Equal81~0_combout\) # ((\inst|Equal4~2_combout\ & \inst|Equal5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(8),
	datab => \inst|Equal4~2_combout\,
	datac => \inst|Equal5~2_combout\,
	datad => \inst|Equal81~0_combout\,
	combout => \inst|Selector19~0_combout\);

-- Location: LCCOMB_X23_Y18_N28
\inst|Selector19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector19~1_combout\ = (\inst|Selector20~13_combout\ & (!\inst|Equal84~0_combout\ & ((!\inst|e_siguiente\(10)) # (!\inst|Selector19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector20~13_combout\,
	datab => \inst|Equal84~0_combout\,
	datac => \inst|Selector19~0_combout\,
	datad => \inst|e_siguiente\(10),
	combout => \inst|Selector19~1_combout\);

-- Location: LCCOMB_X25_Y18_N6
\inst|Equal54~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal54~2_combout\ = (!\inst|e_siguiente\(5) & (!\inst|e_siguiente\(11) & (\inst|e_siguiente\(6) & !\inst|e_siguiente\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(5),
	datab => \inst|e_siguiente\(11),
	datac => \inst|e_siguiente\(6),
	datad => \inst|e_siguiente\(3),
	combout => \inst|Equal54~2_combout\);

-- Location: LCCOMB_X25_Y18_N20
\inst|Equal32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal32~0_combout\ = (\inst|e_siguiente\(8) & (!\inst|e_siguiente\(10) & (\inst|e_siguiente\(9) & \inst|Equal54~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(8),
	datab => \inst|e_siguiente\(10),
	datac => \inst|e_siguiente\(9),
	datad => \inst|Equal54~2_combout\,
	combout => \inst|Equal32~0_combout\);

-- Location: LCCOMB_X26_Y18_N20
\inst|Equal48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal48~0_combout\ = (!\inst|e_siguiente\(7) & (!\inst|e_siguiente\(2) & (!\inst|e_siguiente\(4) & \inst|Equal32~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(7),
	datab => \inst|e_siguiente\(2),
	datac => \inst|e_siguiente\(4),
	datad => \inst|Equal32~0_combout\,
	combout => \inst|Equal48~0_combout\);

-- Location: LCCOMB_X24_Y15_N30
\inst|Selector21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector21~2_combout\ = ((!\inst|Equal32~1_combout\ & (!\inst|Equal75~0_combout\ & !\inst|Equal48~0_combout\))) # (!\inst|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal32~1_combout\,
	datab => \inst|Equal2~0_combout\,
	datac => \inst|Equal75~0_combout\,
	datad => \inst|Equal48~0_combout\,
	combout => \inst|Selector21~2_combout\);

-- Location: LCCOMB_X25_Y16_N4
\inst|Equal44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal44~0_combout\ = (!\inst|e_siguiente\(7) & (\inst|e_siguiente\(3) & \inst|Equal36~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(7),
	datac => \inst|e_siguiente\(3),
	datad => \inst|Equal36~0_combout\,
	combout => \inst|Equal44~0_combout\);

-- Location: LCCOMB_X26_Y18_N4
\inst|Equal52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal52~0_combout\ = (!\inst|e_siguiente\(4) & (\inst|e_siguiente\(2) & !\inst|e_siguiente\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(4),
	datac => \inst|e_siguiente\(2),
	datad => \inst|e_siguiente\(7),
	combout => \inst|Equal52~0_combout\);

-- Location: LCCOMB_X23_Y18_N8
\inst|Equal52~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal52~1_combout\ = (!\inst|e_siguiente\(1) & (!\inst|e_siguiente\(0) & (\inst|Equal52~0_combout\ & \inst|Equal32~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(1),
	datab => \inst|e_siguiente\(0),
	datac => \inst|Equal52~0_combout\,
	datad => \inst|Equal32~0_combout\,
	combout => \inst|Equal52~1_combout\);

-- Location: LCCOMB_X24_Y15_N26
\inst|Selector24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector24~4_combout\ = (!\inst|Equal52~1_combout\ & (((!\inst|Equal75~0_combout\ & !\inst|Equal48~0_combout\)) # (!\inst|Equal14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal52~1_combout\,
	datab => \inst|Equal75~0_combout\,
	datac => \inst|Equal14~0_combout\,
	datad => \inst|Equal48~0_combout\,
	combout => \inst|Selector24~4_combout\);

-- Location: LCCOMB_X24_Y15_N8
\inst|Selector21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector21~1_combout\ = (\inst|Selector24~4_combout\ & (\inst|Selector25~9_combout\ & ((!\inst|Equal14~0_combout\) # (!\inst|Equal44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal44~0_combout\,
	datab => \inst|Equal14~0_combout\,
	datac => \inst|Selector24~4_combout\,
	datad => \inst|Selector25~9_combout\,
	combout => \inst|Selector21~1_combout\);

-- Location: LCCOMB_X24_Y15_N16
\inst|Selector21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector21~3_combout\ = (\inst|Selector21~2_combout\ & (\inst|Selector21~1_combout\ & ((!\inst|Equal71~0_combout\) # (!\inst|Equal14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector21~2_combout\,
	datab => \inst|Equal14~0_combout\,
	datac => \inst|Selector21~1_combout\,
	datad => \inst|Equal71~0_combout\,
	combout => \inst|Selector21~3_combout\);

-- Location: LCCOMB_X25_Y18_N22
\inst|Equal18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal18~0_combout\ = (!\inst|e_siguiente\(11) & (!\inst|e_siguiente\(10) & (!\inst|e_siguiente\(6) & \inst|e_siguiente\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(11),
	datab => \inst|e_siguiente\(10),
	datac => \inst|e_siguiente\(6),
	datad => \inst|e_siguiente\(8),
	combout => \inst|Equal18~0_combout\);

-- Location: LCCOMB_X25_Y17_N28
\inst|Equal59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal59~0_combout\ = (!\inst|e_siguiente\(2) & (\inst|e_siguiente\(9) & (\inst|Equal18~1_combout\ & \inst|Equal18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(2),
	datab => \inst|e_siguiente\(9),
	datac => \inst|Equal18~1_combout\,
	datad => \inst|Equal18~0_combout\,
	combout => \inst|Equal59~0_combout\);

-- Location: LCCOMB_X25_Y17_N18
\inst|Equal59~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal59~1_combout\ = (!\inst|e_siguiente\(3) & (\inst|e_siguiente\(7) & (!\inst|e_siguiente\(1) & \inst|Equal59~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(3),
	datab => \inst|e_siguiente\(7),
	datac => \inst|e_siguiente\(1),
	datad => \inst|Equal59~0_combout\,
	combout => \inst|Equal59~1_combout\);

-- Location: LCCOMB_X23_Y15_N8
\inst|Equal59~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal59~2_combout\ = (!\inst|e_siguiente\(0) & \inst|Equal59~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|e_siguiente\(0),
	datac => \inst|Equal59~1_combout\,
	combout => \inst|Equal59~2_combout\);

-- Location: LCCOMB_X25_Y17_N4
\inst|Equal63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal63~0_combout\ = (\inst|e_siguiente\(9) & (!\inst|e_siguiente\(3) & \inst|e_siguiente\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(9),
	datab => \inst|e_siguiente\(3),
	datac => \inst|e_siguiente\(2),
	combout => \inst|Equal63~0_combout\);

-- Location: LCCOMB_X25_Y17_N14
\inst|Equal63~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal63~1_combout\ = (\inst|Equal18~1_combout\ & (\inst|e_siguiente\(7) & (\inst|Equal63~0_combout\ & \inst|Equal18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal18~1_combout\,
	datab => \inst|e_siguiente\(7),
	datac => \inst|Equal63~0_combout\,
	datad => \inst|Equal18~0_combout\,
	combout => \inst|Equal63~1_combout\);

-- Location: LCCOMB_X24_Y16_N26
\inst|WideOr20~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr20~11_combout\ = ((\inst|e_siguiente\(0)) # ((\inst|e_siguiente\(1)) # (!\inst|Equal59~0_combout\))) # (!\inst|e_siguiente\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(3),
	datab => \inst|e_siguiente\(0),
	datac => \inst|e_siguiente\(1),
	datad => \inst|Equal59~0_combout\,
	combout => \inst|WideOr20~11_combout\);

-- Location: LCCOMB_X25_Y16_N22
\inst|Equal36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal36~1_combout\ = (!\inst|e_siguiente\(7) & (!\inst|e_siguiente\(3) & \inst|Equal36~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(7),
	datac => \inst|e_siguiente\(3),
	datad => \inst|Equal36~0_combout\,
	combout => \inst|Equal36~1_combout\);

-- Location: LCCOMB_X26_Y17_N30
\inst|Equal58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal58~0_combout\ = (\inst|e_siguiente\(3) & (!\inst|e_siguiente\(11) & (\inst|e_siguiente\(6) & !\inst|e_siguiente\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(3),
	datab => \inst|e_siguiente\(11),
	datac => \inst|e_siguiente\(6),
	datad => \inst|e_siguiente\(5),
	combout => \inst|Equal58~0_combout\);

-- Location: LCCOMB_X26_Y17_N24
\inst|Equal58~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal58~1_combout\ = (\inst|Equal8~4_combout\ & (!\inst|e_siguiente\(4) & (\inst|Equal58~0_combout\ & !\inst|e_siguiente\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal8~4_combout\,
	datab => \inst|e_siguiente\(4),
	datac => \inst|Equal58~0_combout\,
	datad => \inst|e_siguiente\(7),
	combout => \inst|Equal58~1_combout\);

-- Location: LCCOMB_X26_Y17_N2
\inst|Equal58~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal58~2_combout\ = (!\inst|e_siguiente\(9) & (!\inst|e_siguiente\(2) & (\inst|Equal2~0_combout\ & \inst|Equal58~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(9),
	datab => \inst|e_siguiente\(2),
	datac => \inst|Equal2~0_combout\,
	datad => \inst|Equal58~1_combout\,
	combout => \inst|Equal58~2_combout\);

-- Location: LCCOMB_X26_Y17_N20
\inst|WideOr2~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr2~23_combout\ = (!\inst|Equal58~2_combout\ & (((!\inst|Equal36~1_combout\) # (!\inst|e_siguiente\(0))) # (!\inst|e_siguiente\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(1),
	datab => \inst|e_siguiente\(0),
	datac => \inst|Equal36~1_combout\,
	datad => \inst|Equal58~2_combout\,
	combout => \inst|WideOr2~23_combout\);

-- Location: LCCOMB_X24_Y16_N28
\inst|WideOr20~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr20~8_combout\ = (\inst|WideOr20~11_combout\ & (\inst|WideOr2~23_combout\ & ((!\inst|Equal63~1_combout\) # (!\inst|Equal14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal14~0_combout\,
	datab => \inst|Equal63~1_combout\,
	datac => \inst|WideOr20~11_combout\,
	datad => \inst|WideOr2~23_combout\,
	combout => \inst|WideOr20~8_combout\);

-- Location: IOIBUF_X23_Y34_N22
\nXIRQ~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nXIRQ,
	o => \nXIRQ~input_o\);

-- Location: IOIBUF_X0_Y16_N8
\nIRQ~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nIRQ,
	o => \nIRQ~input_o\);

-- Location: LCCOMB_X23_Y15_N14
\inst|SET_IRQ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SET_IRQ~0_combout\ = (\inst|SET_IRQ~q\) # ((\inst|Equal35~1_combout\ & (\reset~input_o\ & !\inst|e_siguiente\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal35~1_combout\,
	datab => \reset~input_o\,
	datac => \inst|SET_IRQ~q\,
	datad => \inst|e_siguiente\(7),
	combout => \inst|SET_IRQ~0_combout\);

-- Location: FF_X23_Y15_N15
\inst|SET_IRQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|SET_IRQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SET_IRQ~q\);

-- Location: LCCOMB_X26_Y18_N30
\inst|Equal54~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal54~3_combout\ = (!\inst|e_siguiente\(9) & (\inst|Equal8~4_combout\ & (\inst|Equal52~0_combout\ & \inst|Equal54~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(9),
	datab => \inst|Equal8~4_combout\,
	datac => \inst|Equal52~0_combout\,
	datad => \inst|Equal54~2_combout\,
	combout => \inst|Equal54~3_combout\);

-- Location: LCCOMB_X23_Y15_N12
\inst|SET_XIRQ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SET_XIRQ~0_combout\ = (\inst|SET_XIRQ~q\) # ((\inst|Equal2~0_combout\ & (\reset~input_o\ & \inst|Equal54~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~0_combout\,
	datab => \reset~input_o\,
	datac => \inst|SET_XIRQ~q\,
	datad => \inst|Equal54~3_combout\,
	combout => \inst|SET_XIRQ~0_combout\);

-- Location: FF_X23_Y15_N13
\inst|SET_XIRQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|SET_XIRQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SET_XIRQ~q\);

-- Location: LCCOMB_X23_Y15_N10
\inst|IRQ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|IRQ~0_combout\ = (!\nXIRQ~input_o\ & (\nIRQ~input_o\ & (!\inst|SET_IRQ~q\ & !\inst|SET_XIRQ~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nXIRQ~input_o\,
	datab => \nIRQ~input_o\,
	datac => \inst|SET_IRQ~q\,
	datad => \inst|SET_XIRQ~q\,
	combout => \inst|IRQ~0_combout\);

-- Location: LCCOMB_X25_Y17_N12
\inst|Equal35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal35~2_combout\ = (!\inst|e_siguiente\(3) & \inst|e_siguiente\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|e_siguiente\(3),
	datad => \inst|e_siguiente\(1),
	combout => \inst|Equal35~2_combout\);

-- Location: LCCOMB_X25_Y17_N22
\inst|Equal35~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal35~3_combout\ = (\inst|Equal35~2_combout\ & (!\inst|e_siguiente\(7) & (\inst|e_siguiente\(0) & \inst|Equal59~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal35~2_combout\,
	datab => \inst|e_siguiente\(7),
	datac => \inst|e_siguiente\(0),
	datad => \inst|Equal59~0_combout\,
	combout => \inst|Equal35~3_combout\);

-- Location: LCCOMB_X24_Y15_N28
\inst|Equal39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal39~0_combout\ = (!\inst|e_siguiente\(7) & (!\inst|e_siguiente\(3) & (\inst|Equal14~0_combout\ & \inst|Equal36~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(7),
	datab => \inst|e_siguiente\(3),
	datac => \inst|Equal14~0_combout\,
	datad => \inst|Equal36~0_combout\,
	combout => \inst|Equal39~0_combout\);

-- Location: LCCOMB_X23_Y15_N24
\inst|IRQ~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|IRQ~1_combout\ = (\inst|IRQ~0_combout\) # ((!\inst|Equal35~3_combout\ & (\inst|IRQ~q\ & !\inst|Equal39~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IRQ~0_combout\,
	datab => \inst|Equal35~3_combout\,
	datac => \inst|IRQ~q\,
	datad => \inst|Equal39~0_combout\,
	combout => \inst|IRQ~1_combout\);

-- Location: FF_X23_Y15_N25
\inst|IRQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|IRQ~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IRQ~q\);

-- Location: LCCOMB_X24_Y14_N10
\inst|Equal61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal61~0_combout\ = (!\inst|e_siguiente\(0) & (\inst|e_siguiente\(7) & (\inst|Equal35~2_combout\ & \inst|Equal59~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(0),
	datab => \inst|e_siguiente\(7),
	datac => \inst|Equal35~2_combout\,
	datad => \inst|Equal59~0_combout\,
	combout => \inst|Equal61~0_combout\);

-- Location: LCCOMB_X23_Y18_N20
\inst|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal3~0_combout\ = (\inst|e_siguiente\(0) & !\inst|e_siguiente\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|e_siguiente\(0),
	datad => \inst|e_siguiente\(1),
	combout => \inst|Equal3~0_combout\);

-- Location: LCCOMB_X24_Y15_N10
\inst|Selector25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector25~3_combout\ = (\inst|Equal3~0_combout\ & (((!\inst|Equal63~1_combout\ & !\inst|Equal36~1_combout\)))) # (!\inst|Equal3~0_combout\ & (((!\inst|Equal63~1_combout\ & !\inst|Equal36~1_combout\)) # (!\inst|Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal3~0_combout\,
	datab => \inst|Equal4~2_combout\,
	datac => \inst|Equal63~1_combout\,
	datad => \inst|Equal36~1_combout\,
	combout => \inst|Selector25~3_combout\);

-- Location: LCCOMB_X23_Y15_N4
\inst|Selector25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector25~4_combout\ = (!\inst|Equal61~0_combout\ & (\inst|Selector25~3_combout\ & ((!\inst|Equal59~1_combout\) # (!\inst|e_siguiente\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal61~0_combout\,
	datab => \inst|e_siguiente\(0),
	datac => \inst|Selector25~3_combout\,
	datad => \inst|Equal59~1_combout\,
	combout => \inst|Selector25~4_combout\);

-- Location: LCCOMB_X24_Y18_N10
\inst|Equal67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal67~0_combout\ = (!\inst|e_siguiente\(2) & (\inst|e_siguiente\(7) & \inst|e_siguiente\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|e_siguiente\(2),
	datac => \inst|e_siguiente\(7),
	datad => \inst|e_siguiente\(9),
	combout => \inst|Equal67~0_combout\);

-- Location: LCCOMB_X24_Y18_N20
\inst|Equal67~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal67~1_combout\ = (\inst|Equal18~1_combout\ & (\inst|Equal18~0_combout\ & (\inst|e_siguiente\(3) & \inst|Equal67~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal18~1_combout\,
	datab => \inst|Equal18~0_combout\,
	datac => \inst|e_siguiente\(3),
	datad => \inst|Equal67~0_combout\,
	combout => \inst|Equal67~1_combout\);

-- Location: LCCOMB_X25_Y16_N0
\inst|Equal40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal40~0_combout\ = (\inst|e_siguiente\(3) & (!\inst|e_siguiente\(7) & \inst|e_siguiente\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(3),
	datac => \inst|e_siguiente\(7),
	datad => \inst|e_siguiente\(9),
	combout => \inst|Equal40~0_combout\);

-- Location: LCCOMB_X25_Y16_N14
\inst|Equal40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal40~1_combout\ = (!\inst|e_siguiente\(2) & (\inst|Equal18~1_combout\ & (\inst|Equal18~0_combout\ & \inst|Equal40~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(2),
	datab => \inst|Equal18~1_combout\,
	datac => \inst|Equal18~0_combout\,
	datad => \inst|Equal40~0_combout\,
	combout => \inst|Equal40~1_combout\);

-- Location: LCCOMB_X24_Y16_N30
\inst|WideOr20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr20~4_combout\ = (\inst|Equal3~0_combout\ & (((!\inst|Equal71~0_combout\ & !\inst|Equal44~0_combout\)))) # (!\inst|Equal3~0_combout\ & (((!\inst|Equal71~0_combout\ & !\inst|Equal44~0_combout\)) # (!\inst|Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal3~0_combout\,
	datab => \inst|Equal4~2_combout\,
	datac => \inst|Equal71~0_combout\,
	datad => \inst|Equal44~0_combout\,
	combout => \inst|WideOr20~4_combout\);

-- Location: LCCOMB_X23_Y18_N10
\inst|WideOr20~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr20~5_combout\ = (\inst|WideOr20~4_combout\ & (((!\inst|Equal67~1_combout\ & !\inst|Equal40~1_combout\)) # (!\inst|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal67~1_combout\,
	datab => \inst|Equal3~0_combout\,
	datac => \inst|Equal40~1_combout\,
	datad => \inst|WideOr20~4_combout\,
	combout => \inst|WideOr20~5_combout\);

-- Location: LCCOMB_X23_Y18_N0
\inst|WideOr20~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr20~6_combout\ = (!\inst|Equal42~0_combout\ & (\inst|WideOr20~5_combout\ & ((!\inst|Equal4~2_combout\) # (!\inst|Equal67~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal67~1_combout\,
	datab => \inst|Equal4~2_combout\,
	datac => \inst|Equal42~0_combout\,
	datad => \inst|WideOr20~5_combout\,
	combout => \inst|WideOr20~6_combout\);

-- Location: LCCOMB_X26_Y18_N26
\inst|Equal54~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal54~4_combout\ = (!\inst|e_siguiente\(1) & (\inst|Equal54~3_combout\ & !\inst|e_siguiente\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|e_siguiente\(1),
	datac => \inst|Equal54~3_combout\,
	datad => \inst|e_siguiente\(0),
	combout => \inst|Equal54~4_combout\);

-- Location: LCCOMB_X23_Y15_N0
\inst|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~0_combout\ = (\nXIRQ~input_o\ & !\inst|SET_XIRQ~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nXIRQ~input_o\,
	datad => \inst|SET_XIRQ~q\,
	combout => \inst|process_0~0_combout\);

-- Location: LCCOMB_X23_Y15_N26
\inst|XIRQ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|XIRQ~0_combout\ = (\inst|process_0~0_combout\) # ((!\inst|Equal58~2_combout\ & (!\inst|Equal54~4_combout\ & \inst|XIRQ~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal58~2_combout\,
	datab => \inst|Equal54~4_combout\,
	datac => \inst|XIRQ~q\,
	datad => \inst|process_0~0_combout\,
	combout => \inst|XIRQ~0_combout\);

-- Location: FF_X23_Y15_N27
\inst|XIRQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|XIRQ~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|XIRQ~q\);

-- Location: LCCOMB_X23_Y17_N16
\inst|Equal20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal20~0_combout\ = (\inst|e_siguiente\(9) & (\inst|e_siguiente\(4) & !\inst|e_siguiente\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(9),
	datac => \inst|e_siguiente\(4),
	datad => \inst|e_siguiente\(8),
	combout => \inst|Equal20~0_combout\);

-- Location: LCCOMB_X23_Y17_N14
\inst|Equal20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal20~1_combout\ = (\inst|Equal5~0_combout\ & (\inst|e_siguiente\(11) & (!\inst|e_siguiente\(7) & \inst|Equal20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal5~0_combout\,
	datab => \inst|e_siguiente\(11),
	datac => \inst|e_siguiente\(7),
	datad => \inst|Equal20~0_combout\,
	combout => \inst|Equal20~1_combout\);

-- Location: LCCOMB_X23_Y17_N22
\inst|WideOr6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr6~9_combout\ = ((!\inst|Equal20~1_combout\) # (!\inst|e_siguiente\(0))) # (!\inst|e_siguiente\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(1),
	datab => \inst|e_siguiente\(0),
	datac => \inst|Equal20~1_combout\,
	combout => \inst|WideOr6~9_combout\);

-- Location: LCCOMB_X27_Y17_N20
\inst|WideOr6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr6~4_combout\ = ((\inst|e_siguiente\(4)) # ((!\inst|Equal2~0_combout\) # (!\inst|e_siguiente\(7)))) # (!\inst|e_siguiente\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(2),
	datab => \inst|e_siguiente\(4),
	datac => \inst|e_siguiente\(7),
	datad => \inst|Equal2~0_combout\,
	combout => \inst|WideOr6~4_combout\);

-- Location: LCCOMB_X26_Y17_N4
\inst|WideOr6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr6~5_combout\ = (\inst|WideOr6~4_combout\ & (((!\inst|Equal15~1_combout\) # (!\inst|Equal4~2_combout\)))) # (!\inst|WideOr6~4_combout\ & (!\inst|Equal32~0_combout\ & ((!\inst|Equal15~1_combout\) # (!\inst|Equal4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr6~4_combout\,
	datab => \inst|Equal32~0_combout\,
	datac => \inst|Equal4~2_combout\,
	datad => \inst|Equal15~1_combout\,
	combout => \inst|WideOr6~5_combout\);

-- Location: LCCOMB_X25_Y18_N2
\inst|Equal11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal11~0_combout\ = (!\inst|e_siguiente\(8) & (!\inst|e_siguiente\(10) & (!\inst|e_siguiente\(7) & !\inst|e_siguiente\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(8),
	datab => \inst|e_siguiente\(10),
	datac => \inst|e_siguiente\(7),
	datad => \inst|e_siguiente\(4),
	combout => \inst|Equal11~0_combout\);

-- Location: LCCOMB_X25_Y18_N0
\inst|Equal11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal11~1_combout\ = (!\inst|e_siguiente\(2) & (!\inst|e_siguiente\(3) & (!\inst|e_siguiente\(11) & \inst|Equal11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(2),
	datab => \inst|e_siguiente\(3),
	datac => \inst|e_siguiente\(11),
	datad => \inst|Equal11~0_combout\,
	combout => \inst|Equal11~1_combout\);

-- Location: LCCOMB_X26_Y17_N22
\inst|Equal11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal11~2_combout\ = (\inst|e_siguiente\(6) & (\inst|e_siguiente\(9) & (\inst|Equal11~1_combout\ & \inst|e_siguiente\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(6),
	datab => \inst|e_siguiente\(9),
	datac => \inst|Equal11~1_combout\,
	datad => \inst|e_siguiente\(5),
	combout => \inst|Equal11~2_combout\);

-- Location: LCCOMB_X26_Y17_N6
\inst|WideOr6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr6~6_combout\ = (\inst|Equal14~0_combout\ & (!\inst|Equal11~2_combout\ & ((!\inst|Equal32~1_combout\) # (!\inst|Equal4~2_combout\)))) # (!\inst|Equal14~0_combout\ & (((!\inst|Equal32~1_combout\)) # (!\inst|Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal14~0_combout\,
	datab => \inst|Equal4~2_combout\,
	datac => \inst|Equal11~2_combout\,
	datad => \inst|Equal32~1_combout\,
	combout => \inst|WideOr6~6_combout\);

-- Location: LCCOMB_X26_Y17_N28
\inst|WideOr6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr6~7_combout\ = (\inst|WideOr6~5_combout\ & (\inst|WideOr6~6_combout\ & ((!\inst|Equal24~0_combout\) # (!\inst|Equal14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal14~0_combout\,
	datab => \inst|Equal24~0_combout\,
	datac => \inst|WideOr6~5_combout\,
	datad => \inst|WideOr6~6_combout\,
	combout => \inst|WideOr6~7_combout\);

-- Location: LCCOMB_X25_Y16_N28
\inst|Equal18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal18~2_combout\ = (\inst|e_siguiente\(7) & (\inst|Equal18~1_combout\ & (\inst|Equal18~0_combout\ & !\inst|e_siguiente\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(7),
	datab => \inst|Equal18~1_combout\,
	datac => \inst|Equal18~0_combout\,
	datad => \inst|e_siguiente\(3),
	combout => \inst|Equal18~2_combout\);

-- Location: LCCOMB_X25_Y16_N26
\inst|Equal19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal19~0_combout\ = (!\inst|e_siguiente\(2) & (!\inst|e_siguiente\(9) & (\inst|Equal3~0_combout\ & \inst|Equal18~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(2),
	datab => \inst|e_siguiente\(9),
	datac => \inst|Equal3~0_combout\,
	datad => \inst|Equal18~2_combout\,
	combout => \inst|Equal19~0_combout\);

-- Location: LCCOMB_X25_Y16_N2
\inst|WideOr6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr6~8_combout\ = (!\inst|Equal19~0_combout\ & \inst|SPL[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal19~0_combout\,
	datad => \inst|SPL[7]~0_combout\,
	combout => \inst|WideOr6~8_combout\);

-- Location: LCCOMB_X24_Y17_N10
\inst|Selector18~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector18~10_combout\ = (!\inst|XIRQ~q\ & (((!\inst|WideOr6~8_combout\) # (!\inst|WideOr6~7_combout\)) # (!\inst|WideOr6~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|XIRQ~q\,
	datab => \inst|WideOr6~9_combout\,
	datac => \inst|WideOr6~7_combout\,
	datad => \inst|WideOr6~8_combout\,
	combout => \inst|Selector18~10_combout\);

-- Location: LCCOMB_X23_Y15_N6
\inst|Selector25~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector25~5_combout\ = (\inst|Selector25~4_combout\ & (\inst|WideOr20~6_combout\ & ((!\inst|Selector18~10_combout\) # (!\inst|IRQ~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IRQ~q\,
	datab => \inst|Selector25~4_combout\,
	datac => \inst|WideOr20~6_combout\,
	datad => \inst|Selector18~10_combout\,
	combout => \inst|Selector25~5_combout\);

-- Location: LCCOMB_X23_Y15_N18
\inst|Selector18~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector18~11_combout\ = (\inst|Selector24~3_combout\ & (!\inst|Equal59~2_combout\ & (\inst|WideOr20~8_combout\ & \inst|Selector25~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector24~3_combout\,
	datab => \inst|Equal59~2_combout\,
	datac => \inst|WideOr20~8_combout\,
	datad => \inst|Selector25~5_combout\,
	combout => \inst|Selector18~11_combout\);

-- Location: LCCOMB_X24_Y15_N2
\inst|Selector18~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector18~12_combout\ = (\inst|Selector21~3_combout\ & \inst|Selector18~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Selector21~3_combout\,
	datad => \inst|Selector18~11_combout\,
	combout => \inst|Selector18~12_combout\);

-- Location: LCCOMB_X25_Y18_N12
\inst|Selector19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector19~4_combout\ = (\inst|Selector19~2_combout\) # ((\inst|Selector19~3_combout\) # ((!\inst|Selector18~12_combout\) # (!\inst|Selector19~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector19~2_combout\,
	datab => \inst|Selector19~3_combout\,
	datac => \inst|Selector19~1_combout\,
	datad => \inst|Selector18~12_combout\,
	combout => \inst|Selector19~4_combout\);

-- Location: FF_X25_Y18_N13
\inst|e_siguiente[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector19~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|e_siguiente\(8));

-- Location: LCCOMB_X21_Y18_N4
\inst|Aux[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Aux[7]~0_combout\ = (\inst|e_siguiente\(8) & (\reset~input_o\ & \inst|Equal81~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(8),
	datac => \reset~input_o\,
	datad => \inst|Equal81~0_combout\,
	combout => \inst|Aux[7]~0_combout\);

-- Location: FF_X21_Y14_N13
\inst|Aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Aux[7]~feeder_combout\,
	ena => \inst|Aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Aux\(7));

-- Location: LCCOMB_X27_Y16_N16
\inst|Add7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add7~6_combout\ = (\inst|SPL\(3) & ((\inst|Selector20~12_combout\ & (!\inst|Add7~5\)) # (!\inst|Selector20~12_combout\ & ((\inst|Add7~5\) # (GND))))) # (!\inst|SPL\(3) & ((\inst|Selector20~12_combout\ & (\inst|Add7~5\ & VCC)) # 
-- (!\inst|Selector20~12_combout\ & (!\inst|Add7~5\))))
-- \inst|Add7~7\ = CARRY((\inst|SPL\(3) & ((!\inst|Add7~5\) # (!\inst|Selector20~12_combout\))) # (!\inst|SPL\(3) & (!\inst|Selector20~12_combout\ & !\inst|Add7~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SPL\(3),
	datab => \inst|Selector20~12_combout\,
	datad => VCC,
	cin => \inst|Add7~5\,
	combout => \inst|Add7~6_combout\,
	cout => \inst|Add7~7\);

-- Location: LCCOMB_X27_Y16_N18
\inst|Add7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add7~8_combout\ = ((\inst|SPL\(4) $ (\inst|Selector20~12_combout\ $ (\inst|Add7~7\)))) # (GND)
-- \inst|Add7~9\ = CARRY((\inst|SPL\(4) & (\inst|Selector20~12_combout\ & !\inst|Add7~7\)) # (!\inst|SPL\(4) & ((\inst|Selector20~12_combout\) # (!\inst|Add7~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SPL\(4),
	datab => \inst|Selector20~12_combout\,
	datad => VCC,
	cin => \inst|Add7~7\,
	combout => \inst|Add7~8_combout\,
	cout => \inst|Add7~9\);

-- Location: LCCOMB_X26_Y16_N22
\inst|SPL[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SPL[4]~6_combout\ = !\inst|Add7~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Add7~8_combout\,
	combout => \inst|SPL[4]~6_combout\);

-- Location: FF_X26_Y16_N23
\inst|SPL[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|SPL[4]~6_combout\,
	ena => \inst|SPL[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SPL\(4));

-- Location: LCCOMB_X27_Y16_N20
\inst|Add7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add7~10_combout\ = (\inst|Selector20~12_combout\ & ((\inst|SPL\(5) & (!\inst|Add7~9\)) # (!\inst|SPL\(5) & (\inst|Add7~9\ & VCC)))) # (!\inst|Selector20~12_combout\ & ((\inst|SPL\(5) & ((\inst|Add7~9\) # (GND))) # (!\inst|SPL\(5) & 
-- (!\inst|Add7~9\))))
-- \inst|Add7~11\ = CARRY((\inst|Selector20~12_combout\ & (\inst|SPL\(5) & !\inst|Add7~9\)) # (!\inst|Selector20~12_combout\ & ((\inst|SPL\(5)) # (!\inst|Add7~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector20~12_combout\,
	datab => \inst|SPL\(5),
	datad => VCC,
	cin => \inst|Add7~9\,
	combout => \inst|Add7~10_combout\,
	cout => \inst|Add7~11\);

-- Location: LCCOMB_X26_Y16_N24
\inst|SPL[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SPL[5]~5_combout\ = !\inst|Add7~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add7~10_combout\,
	combout => \inst|SPL[5]~5_combout\);

-- Location: FF_X26_Y16_N25
\inst|SPL[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|SPL[5]~5_combout\,
	ena => \inst|SPL[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SPL\(5));

-- Location: LCCOMB_X27_Y16_N22
\inst|Add7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add7~12_combout\ = ((\inst|Selector20~12_combout\ $ (\inst|SPL\(6) $ (\inst|Add7~11\)))) # (GND)
-- \inst|Add7~13\ = CARRY((\inst|Selector20~12_combout\ & ((!\inst|Add7~11\) # (!\inst|SPL\(6)))) # (!\inst|Selector20~12_combout\ & (!\inst|SPL\(6) & !\inst|Add7~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector20~12_combout\,
	datab => \inst|SPL\(6),
	datad => VCC,
	cin => \inst|Add7~11\,
	combout => \inst|Add7~12_combout\,
	cout => \inst|Add7~13\);

-- Location: LCCOMB_X26_Y16_N18
\inst|SPL[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SPL[6]~4_combout\ = !\inst|Add7~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Add7~12_combout\,
	combout => \inst|SPL[6]~4_combout\);

-- Location: FF_X26_Y16_N19
\inst|SPL[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|SPL[6]~4_combout\,
	ena => \inst|SPL[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SPL\(6));

-- Location: LCCOMB_X27_Y16_N24
\inst|Add7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add7~14_combout\ = \inst|SPL\(7) $ (\inst|Selector20~12_combout\ $ (!\inst|Add7~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SPL\(7),
	datab => \inst|Selector20~12_combout\,
	cin => \inst|Add7~13\,
	combout => \inst|Add7~14_combout\);

-- Location: LCCOMB_X26_Y16_N28
\inst|SPL[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SPL[7]~3_combout\ = !\inst|Add7~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Add7~14_combout\,
	combout => \inst|SPL[7]~3_combout\);

-- Location: FF_X26_Y16_N29
\inst|SPL[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|SPL[7]~3_combout\,
	ena => \inst|SPL[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SPL\(7));

-- Location: LCCOMB_X25_Y17_N30
\inst|WideOr2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr2~24_combout\ = (((!\inst|e_siguiente\(3)) # (!\inst|Equal36~0_combout\)) # (!\inst|e_siguiente\(7))) # (!\inst|e_siguiente\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(0),
	datab => \inst|e_siguiente\(7),
	datac => \inst|Equal36~0_combout\,
	datad => \inst|e_siguiente\(3),
	combout => \inst|WideOr2~24_combout\);

-- Location: LCCOMB_X24_Y18_N6
\inst|WideOr2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr2~14_combout\ = (\inst|e_siguiente\(7) & (!\inst|Equal35~1_combout\ & ((!\inst|Equal67~1_combout\) # (!\inst|Equal3~0_combout\)))) # (!\inst|e_siguiente\(7) & (((!\inst|Equal67~1_combout\)) # (!\inst|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(7),
	datab => \inst|Equal3~0_combout\,
	datac => \inst|Equal35~1_combout\,
	datad => \inst|Equal67~1_combout\,
	combout => \inst|WideOr2~14_combout\);

-- Location: LCCOMB_X25_Y17_N24
\inst|WideOr2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr2~15_combout\ = ((!\inst|Equal63~1_combout\ & ((!\inst|Equal67~1_combout\) # (!\inst|e_siguiente\(1))))) # (!\inst|e_siguiente\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(1),
	datab => \inst|e_siguiente\(0),
	datac => \inst|Equal63~1_combout\,
	datad => \inst|Equal67~1_combout\,
	combout => \inst|WideOr2~15_combout\);

-- Location: LCCOMB_X25_Y17_N26
\inst|WideOr2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr2~16_combout\ = (\inst|WideOr2~14_combout\ & \inst|WideOr2~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|WideOr2~14_combout\,
	datad => \inst|WideOr2~15_combout\,
	combout => \inst|WideOr2~16_combout\);

-- Location: LCCOMB_X25_Y17_N10
\inst|WideOr2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr2~22_combout\ = ((!\inst|Equal59~1_combout\ & ((\inst|e_siguiente\(1)) # (!\inst|Equal75~0_combout\)))) # (!\inst|e_siguiente\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(1),
	datab => \inst|e_siguiente\(0),
	datac => \inst|Equal75~0_combout\,
	datad => \inst|Equal59~1_combout\,
	combout => \inst|WideOr2~22_combout\);

-- Location: LCCOMB_X25_Y17_N8
\inst|WideOr2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr2~17_combout\ = (!\inst|Equal35~3_combout\ & (\inst|WideOr2~24_combout\ & (\inst|WideOr2~16_combout\ & \inst|WideOr2~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal35~3_combout\,
	datab => \inst|WideOr2~24_combout\,
	datac => \inst|WideOr2~16_combout\,
	datad => \inst|WideOr2~22_combout\,
	combout => \inst|WideOr2~17_combout\);

-- Location: LCCOMB_X25_Y18_N30
\inst|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal2~1_combout\ = (!\inst|e_siguiente\(5) & (!\inst|e_siguiente\(6) & (!\inst|e_siguiente\(9) & \inst|Equal11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(5),
	datab => \inst|e_siguiente\(6),
	datac => \inst|e_siguiente\(9),
	datad => \inst|Equal11~1_combout\,
	combout => \inst|Equal2~1_combout\);

-- Location: LCCOMB_X26_Y17_N14
\inst|Selector26~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector26~9_combout\ = (\inst|e_siguiente\(1)) # ((\inst|e_siguiente\(0)) # ((!\inst|Equal24~0_combout\ & !\inst|Equal11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(1),
	datab => \inst|e_siguiente\(0),
	datac => \inst|Equal24~0_combout\,
	datad => \inst|Equal11~2_combout\,
	combout => \inst|Selector26~9_combout\);

-- Location: LCCOMB_X26_Y17_N16
\inst|Selector20~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector20~8_combout\ = (\inst|Equal75~0_combout\ & (!\inst|Equal4~2_combout\ & ((!\inst|Equal32~1_combout\) # (!\inst|Equal2~0_combout\)))) # (!\inst|Equal75~0_combout\ & (((!\inst|Equal32~1_combout\) # (!\inst|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal75~0_combout\,
	datab => \inst|Equal4~2_combout\,
	datac => \inst|Equal2~0_combout\,
	datad => \inst|Equal32~1_combout\,
	combout => \inst|Selector20~8_combout\);

-- Location: LCCOMB_X26_Y17_N10
\inst|WideOr39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr39~0_combout\ = (\inst|Selector26~9_combout\ & (\inst|Selector20~8_combout\ & ((!\inst|Equal4~2_combout\) # (!\inst|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~1_combout\,
	datab => \inst|Equal4~2_combout\,
	datac => \inst|Selector26~9_combout\,
	datad => \inst|Selector20~8_combout\,
	combout => \inst|WideOr39~0_combout\);

-- Location: LCCOMB_X24_Y18_N2
\inst|Dir[10]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Dir[10]~23_combout\ = (((\inst|e_siguiente\(0)) # (!\inst|Equal5~2_combout\)) # (!\inst|e_siguiente\(8))) # (!\inst|e_siguiente\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(1),
	datab => \inst|e_siguiente\(8),
	datac => \inst|e_siguiente\(0),
	datad => \inst|Equal5~2_combout\,
	combout => \inst|Dir[10]~23_combout\);

-- Location: LCCOMB_X24_Y18_N12
\inst|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector16~0_combout\ = (!\inst|Equal84~0_combout\ & (\inst|Dir[10]~23_combout\ & ((!\inst|Equal15~1_combout\) # (!\inst|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~0_combout\,
	datab => \inst|Equal15~1_combout\,
	datac => \inst|Equal84~0_combout\,
	datad => \inst|Dir[10]~23_combout\,
	combout => \inst|Selector16~0_combout\);

-- Location: LCCOMB_X25_Y17_N16
\inst|Selector26~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector26~10_combout\ = (\inst|e_siguiente\(1)) # ((\inst|e_siguiente\(0)) # ((!\inst|Equal54~3_combout\ & !\inst|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(1),
	datab => \inst|e_siguiente\(0),
	datac => \inst|Equal54~3_combout\,
	datad => \inst|Equal2~1_combout\,
	combout => \inst|Selector26~10_combout\);

-- Location: LCCOMB_X24_Y17_N16
\inst|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector21~0_combout\ = (\inst|e_siguiente\(10)) # (((!\inst|Equal5~2_combout\ & !\inst|Equal20~1_combout\)) # (!\inst|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(10),
	datab => \inst|Equal2~0_combout\,
	datac => \inst|Equal5~2_combout\,
	datad => \inst|Equal20~1_combout\,
	combout => \inst|Selector21~0_combout\);

-- Location: LCCOMB_X23_Y17_N24
\inst|Equal8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal8~5_combout\ = (!\inst|e_siguiente\(1) & (!\inst|e_siguiente\(0) & (\inst|Equal8~4_combout\ & \inst|Equal5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(1),
	datab => \inst|e_siguiente\(0),
	datac => \inst|Equal8~4_combout\,
	datad => \inst|Equal5~2_combout\,
	combout => \inst|Equal8~5_combout\);

-- Location: LCCOMB_X23_Y17_N20
\inst|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector17~0_combout\ = (!\inst|Equal8~5_combout\ & (((!\inst|Equal20~1_combout\) # (!\inst|Equal2~0_combout\)) # (!\inst|e_siguiente\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(10),
	datab => \inst|Equal2~0_combout\,
	datac => \inst|Equal20~1_combout\,
	datad => \inst|Equal8~5_combout\,
	combout => \inst|Selector17~0_combout\);

-- Location: LCCOMB_X25_Y17_N6
\inst|Selector26~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector26~4_combout\ = (\inst|Selector16~0_combout\ & (\inst|Selector26~10_combout\ & (\inst|Selector21~0_combout\ & \inst|Selector17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector16~0_combout\,
	datab => \inst|Selector26~10_combout\,
	datac => \inst|Selector21~0_combout\,
	datad => \inst|Selector17~0_combout\,
	combout => \inst|Selector26~4_combout\);

-- Location: LCCOMB_X25_Y17_N20
\inst|WideOr39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr39~1_combout\ = (\inst|WideOr2~17_combout\ & (\inst|WideOr6~7_combout\ & (\inst|WideOr39~0_combout\ & \inst|Selector26~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr2~17_combout\,
	datab => \inst|WideOr6~7_combout\,
	datac => \inst|WideOr39~0_combout\,
	datad => \inst|Selector26~4_combout\,
	combout => \inst|WideOr39~1_combout\);

-- Location: LCCOMB_X24_Y14_N26
\inst|Dir[15]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Dir[15]~13_combout\ = (!\inst|Equal61~0_combout\ & (((!\inst|Equal2~0_combout\ & !\inst|Equal4~2_combout\)) # (!\inst|Equal63~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~0_combout\,
	datab => \inst|Equal4~2_combout\,
	datac => \inst|Equal63~1_combout\,
	datad => \inst|Equal61~0_combout\,
	combout => \inst|Dir[15]~13_combout\);

-- Location: LCCOMB_X23_Y17_N28
\inst|B[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|B[7]~11_combout\ = (\inst|e_siguiente\(0)) # ((!\inst|Equal20~1_combout\) # (!\inst|e_siguiente\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|e_siguiente\(0),
	datac => \inst|e_siguiente\(1),
	datad => \inst|Equal20~1_combout\,
	combout => \inst|B[7]~11_combout\);

-- Location: LCCOMB_X25_Y14_N12
\inst|Equal33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal33~2_combout\ = (\inst|e_siguiente\(0) & (\inst|Equal32~1_combout\ & !\inst|e_siguiente\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|e_siguiente\(0),
	datac => \inst|Equal32~1_combout\,
	datad => \inst|e_siguiente\(1),
	combout => \inst|Equal33~2_combout\);

-- Location: LCCOMB_X25_Y14_N22
\inst|Yupa[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Yupa[7]~10_combout\ = (\inst|Dir[15]~13_combout\ & (\inst|B[7]~11_combout\ & (\inst|WideOr6~8_combout\ & !\inst|Equal33~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dir[15]~13_combout\,
	datab => \inst|B[7]~11_combout\,
	datac => \inst|WideOr6~8_combout\,
	datad => \inst|Equal33~2_combout\,
	combout => \inst|Yupa[7]~10_combout\);

-- Location: LCCOMB_X26_Y18_N2
\inst|Equal53~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal53~2_combout\ = (\inst|e_siguiente\(0) & (\inst|Equal52~0_combout\ & (!\inst|e_siguiente\(1) & \inst|Equal32~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(0),
	datab => \inst|Equal52~0_combout\,
	datac => \inst|e_siguiente\(1),
	datad => \inst|Equal32~0_combout\,
	combout => \inst|Equal53~2_combout\);

-- Location: LCCOMB_X26_Y18_N10
\inst|WideOr2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr2~18_combout\ = (\inst|e_siguiente\(0) & (((!\inst|Equal48~0_combout\)))) # (!\inst|e_siguiente\(0) & (((!\inst|Equal54~3_combout\)) # (!\inst|e_siguiente\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(0),
	datab => \inst|e_siguiente\(1),
	datac => \inst|Equal54~3_combout\,
	datad => \inst|Equal48~0_combout\,
	combout => \inst|WideOr2~18_combout\);

-- Location: LCCOMB_X26_Y18_N24
\inst|WideOr2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr2~19_combout\ = (\inst|Equal14~0_combout\ & (((\inst|Equal40~1_combout\) # (\inst|Equal44~0_combout\)))) # (!\inst|Equal14~0_combout\ & (\inst|Equal3~0_combout\ & ((\inst|Equal40~1_combout\) # (\inst|Equal44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal14~0_combout\,
	datab => \inst|Equal3~0_combout\,
	datac => \inst|Equal40~1_combout\,
	datad => \inst|Equal44~0_combout\,
	combout => \inst|WideOr2~19_combout\);

-- Location: LCCOMB_X26_Y18_N6
\inst|WideOr2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr2~20_combout\ = (\inst|WideOr2~18_combout\ & (!\inst|WideOr2~19_combout\ & ((!\inst|Equal36~1_combout\) # (!\inst|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr2~18_combout\,
	datab => \inst|Equal3~0_combout\,
	datac => \inst|Equal36~1_combout\,
	datad => \inst|WideOr2~19_combout\,
	combout => \inst|WideOr2~20_combout\);

-- Location: LCCOMB_X26_Y18_N28
\inst|Selector78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector78~0_combout\ = (!\inst|Equal53~2_combout\ & (\inst|WideOr6~9_combout\ & \inst|WideOr2~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal53~2_combout\,
	datac => \inst|WideOr6~9_combout\,
	datad => \inst|WideOr2~20_combout\,
	combout => \inst|Selector78~0_combout\);

-- Location: LCCOMB_X20_Y12_N26
\inst|XL[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|XL[6]~feeder_combout\ = \inst1|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|output\(6),
	combout => \inst|XL[6]~feeder_combout\);

-- Location: FF_X20_Y12_N27
\inst|XL[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|XL[6]~feeder_combout\,
	ena => \inst|XL[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|XL\(6));

-- Location: LCCOMB_X20_Y12_N14
\inst|XL[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|XL[4]~feeder_combout\ = \inst1|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|output\(4),
	combout => \inst|XL[4]~feeder_combout\);

-- Location: FF_X20_Y12_N15
\inst|XL[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|XL[4]~feeder_combout\,
	ena => \inst|XL[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|XL\(4));

-- Location: LCCOMB_X25_Y17_N2
\inst|WideOr2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr2~combout\ = (\inst|WideOr2~23_combout\ & (\inst|WideOr2~17_combout\ & (!\inst|Equal54~4_combout\ & \inst|WideOr2~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr2~23_combout\,
	datab => \inst|WideOr2~17_combout\,
	datac => \inst|Equal54~4_combout\,
	datad => \inst|WideOr2~20_combout\,
	combout => \inst|WideOr2~combout\);

-- Location: LCCOMB_X26_Y14_N8
\inst|Dir[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Dir[2]~20_combout\ = ((!\inst|B[7]~11_combout\ & \inst|WideOr2~combout\)) # (!\inst|Dir[10]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dir[10]~23_combout\,
	datab => \inst|B[7]~11_combout\,
	datad => \inst|WideOr2~combout\,
	combout => \inst|Dir[2]~20_combout\);

-- Location: FF_X21_Y14_N19
\inst|Aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|output\(0),
	sload => VCC,
	ena => \inst|Aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Aux\(0));

-- Location: LCCOMB_X20_Y12_N30
\inst|XL[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|XL[0]~feeder_combout\ = \inst1|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|output\(0),
	combout => \inst|XL[0]~feeder_combout\);

-- Location: FF_X20_Y12_N31
\inst|XL[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|XL[0]~feeder_combout\,
	ena => \inst|XL[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|XL\(0));

-- Location: LCCOMB_X26_Y13_N8
\inst|Yupa[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Yupa[0]~11_combout\ = (\inst1|output\(0) & (\inst|XL\(0) $ (VCC))) # (!\inst1|output\(0) & (\inst|XL\(0) & VCC))
-- \inst|Yupa[0]~12\ = CARRY((\inst1|output\(0) & \inst|XL\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output\(0),
	datab => \inst|XL\(0),
	datad => VCC,
	combout => \inst|Yupa[0]~11_combout\,
	cout => \inst|Yupa[0]~12\);

-- Location: LCCOMB_X21_Y16_N6
\inst|D[15]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|D[15]~2_combout\ = (\reset~input_o\ & (!\inst|e_siguiente\(0) & (!\inst|e_siguiente\(1) & \inst|Equal32~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \inst|e_siguiente\(0),
	datac => \inst|e_siguiente\(1),
	datad => \inst|Equal32~1_combout\,
	combout => \inst|D[15]~2_combout\);

-- Location: LCCOMB_X23_Y14_N24
\inst|A[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|A[0]~7_combout\ = (\inst|Equal19~0_combout\ & (\inst|Yupa\(0))) # (!\inst|Equal19~0_combout\ & ((\inst1|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Yupa\(0),
	datab => \inst|Equal19~0_combout\,
	datad => \inst1|output\(0),
	combout => \inst|A[0]~7_combout\);

-- Location: LCCOMB_X20_Y12_N12
\inst|XL[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|XL[1]~feeder_combout\ = \inst1|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|output\(1),
	combout => \inst|XL[1]~feeder_combout\);

-- Location: FF_X20_Y12_N13
\inst|XL[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|XL[1]~feeder_combout\,
	ena => \inst|XL[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|XL\(1));

-- Location: LCCOMB_X26_Y13_N10
\inst|Yupa[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Yupa[1]~13_combout\ = (\inst1|output\(1) & ((\inst|XL\(1) & (\inst|Yupa[0]~12\ & VCC)) # (!\inst|XL\(1) & (!\inst|Yupa[0]~12\)))) # (!\inst1|output\(1) & ((\inst|XL\(1) & (!\inst|Yupa[0]~12\)) # (!\inst|XL\(1) & ((\inst|Yupa[0]~12\) # (GND)))))
-- \inst|Yupa[1]~14\ = CARRY((\inst1|output\(1) & (!\inst|XL\(1) & !\inst|Yupa[0]~12\)) # (!\inst1|output\(1) & ((!\inst|Yupa[0]~12\) # (!\inst|XL\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output\(1),
	datab => \inst|XL\(1),
	datad => VCC,
	cin => \inst|Yupa[0]~12\,
	combout => \inst|Yupa[1]~13_combout\,
	cout => \inst|Yupa[1]~14\);

-- Location: FF_X20_Y12_N19
\inst|XL[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|output\(2),
	sload => VCC,
	ena => \inst|XL[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|XL\(2));

-- Location: LCCOMB_X26_Y13_N12
\inst|Yupa[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Yupa[2]~15_combout\ = ((\inst|XL\(2) $ (\inst1|output\(2) $ (!\inst|Yupa[1]~14\)))) # (GND)
-- \inst|Yupa[2]~16\ = CARRY((\inst|XL\(2) & ((\inst1|output\(2)) # (!\inst|Yupa[1]~14\))) # (!\inst|XL\(2) & (\inst1|output\(2) & !\inst|Yupa[1]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|XL\(2),
	datab => \inst1|output\(2),
	datad => VCC,
	cin => \inst|Yupa[1]~14\,
	combout => \inst|Yupa[2]~15_combout\,
	cout => \inst|Yupa[2]~16\);

-- Location: LCCOMB_X26_Y13_N14
\inst|Yupa[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Yupa[3]~17_combout\ = (\inst|XL\(3) & ((\inst1|output\(3) & (\inst|Yupa[2]~16\ & VCC)) # (!\inst1|output\(3) & (!\inst|Yupa[2]~16\)))) # (!\inst|XL\(3) & ((\inst1|output\(3) & (!\inst|Yupa[2]~16\)) # (!\inst1|output\(3) & ((\inst|Yupa[2]~16\) # 
-- (GND)))))
-- \inst|Yupa[3]~18\ = CARRY((\inst|XL\(3) & (!\inst1|output\(3) & !\inst|Yupa[2]~16\)) # (!\inst|XL\(3) & ((!\inst|Yupa[2]~16\) # (!\inst1|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|XL\(3),
	datab => \inst1|output\(3),
	datad => VCC,
	cin => \inst|Yupa[2]~16\,
	combout => \inst|Yupa[3]~17_combout\,
	cout => \inst|Yupa[3]~18\);

-- Location: LCCOMB_X26_Y13_N16
\inst|Yupa[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Yupa[4]~19_combout\ = ((\inst|XL\(4) $ (\inst1|output\(4) $ (!\inst|Yupa[3]~18\)))) # (GND)
-- \inst|Yupa[4]~20\ = CARRY((\inst|XL\(4) & ((\inst1|output\(4)) # (!\inst|Yupa[3]~18\))) # (!\inst|XL\(4) & (\inst1|output\(4) & !\inst|Yupa[3]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|XL\(4),
	datab => \inst1|output\(4),
	datad => VCC,
	cin => \inst|Yupa[3]~18\,
	combout => \inst|Yupa[4]~19_combout\,
	cout => \inst|Yupa[4]~20\);

-- Location: LCCOMB_X23_Y14_N18
\inst|A[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|A[5]~2_combout\ = (\inst|Equal19~0_combout\ & ((\inst|Yupa\(5)))) # (!\inst|Equal19~0_combout\ & (\inst1|output\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output\(5),
	datab => \inst|Yupa\(5),
	datad => \inst|Equal19~0_combout\,
	combout => \inst|A[5]~2_combout\);

-- Location: LCCOMB_X24_Y14_N12
\inst|A[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|A[6]~1_combout\ = (\inst|Equal19~0_combout\ & (\inst|Yupa\(6))) # (!\inst|Equal19~0_combout\ & ((\inst1|output\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal19~0_combout\,
	datab => \inst|Yupa\(6),
	datad => \inst1|output\(6),
	combout => \inst|A[6]~1_combout\);

-- Location: DSPMULT_X13_Y14_N0
\inst|Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \inst|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \inst|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X13_Y14_N2
\inst|Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "0")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	aclr => GND,
	ena => \inst|D[15]~2_combout\,
	dataa => \inst|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X25_Y13_N2
\inst|Selector54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector54~0_combout\ = (\inst|Equal3~0_combout\ & ((\inst|Equal32~1_combout\ & (\inst|D\(7))) # (!\inst|Equal32~1_combout\ & ((\inst1|output\(7)))))) # (!\inst|Equal3~0_combout\ & (((\inst1|output\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal3~0_combout\,
	datab => \inst|Equal32~1_combout\,
	datac => \inst|D\(7),
	datad => \inst1|output\(7),
	combout => \inst|Selector54~0_combout\);

-- Location: LCCOMB_X24_Y14_N20
\inst|B[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|B[7]~8_combout\ = (\reset~input_o\ & (\inst|B[7]~11_combout\ & !\inst|Equal61~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \inst|B[7]~11_combout\,
	datad => \inst|Equal61~0_combout\,
	combout => \inst|B[7]~8_combout\);

-- Location: LCCOMB_X26_Y18_N0
\inst|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal7~0_combout\ = (!\inst|e_siguiente\(8) & (!\inst|e_siguiente\(10) & (\inst|Equal4~2_combout\ & \inst|Equal5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(8),
	datab => \inst|e_siguiente\(10),
	datac => \inst|Equal4~2_combout\,
	datad => \inst|Equal5~2_combout\,
	combout => \inst|Equal7~0_combout\);

-- Location: LCCOMB_X26_Y18_N18
\inst|Equal83~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal83~0_combout\ = (\inst|e_siguiente\(8) & (!\inst|e_siguiente\(10) & (\inst|Equal14~0_combout\ & \inst|Equal5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(8),
	datab => \inst|e_siguiente\(10),
	datac => \inst|Equal14~0_combout\,
	datad => \inst|Equal5~2_combout\,
	combout => \inst|Equal83~0_combout\);

-- Location: LCCOMB_X25_Y16_N16
\inst|Equal65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal65~0_combout\ = (\inst|e_siguiente\(7) & (\inst|Equal4~2_combout\ & (!\inst|e_siguiente\(3) & \inst|Equal36~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(7),
	datab => \inst|Equal4~2_combout\,
	datac => \inst|e_siguiente\(3),
	datad => \inst|Equal36~0_combout\,
	combout => \inst|Equal65~0_combout\);

-- Location: LCCOMB_X26_Y18_N16
\inst|B[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|B[7]~9_combout\ = (!\inst|Equal19~0_combout\ & (!\inst|Equal7~0_combout\ & (!\inst|Equal83~0_combout\ & !\inst|Equal65~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal19~0_combout\,
	datab => \inst|Equal7~0_combout\,
	datac => \inst|Equal83~0_combout\,
	datad => \inst|Equal65~0_combout\,
	combout => \inst|B[7]~9_combout\);

-- Location: LCCOMB_X26_Y17_N0
\inst|Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector38~0_combout\ = ((!\inst|Equal11~2_combout\ & (!\inst|Equal24~0_combout\ & !\inst|Equal2~1_combout\))) # (!\inst|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal11~2_combout\,
	datab => \inst|Equal3~0_combout\,
	datac => \inst|Equal24~0_combout\,
	datad => \inst|Equal2~1_combout\,
	combout => \inst|Selector38~0_combout\);

-- Location: LCCOMB_X26_Y17_N26
\inst|Data_out[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Data_out[7]~4_combout\ = (\inst|Selector38~0_combout\ & (\inst|PC[15]~5_combout\ & ((!\inst|Equal75~0_combout\) # (!\inst|Equal14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal14~0_combout\,
	datab => \inst|Selector38~0_combout\,
	datac => \inst|Equal75~0_combout\,
	datad => \inst|PC[15]~5_combout\,
	combout => \inst|Data_out[7]~4_combout\);

-- Location: LCCOMB_X23_Y18_N12
\inst|Equal16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal16~2_combout\ = (!\inst|e_siguiente\(1) & (\inst|e_siguiente\(0) & \inst|Equal15~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(1),
	datac => \inst|e_siguiente\(0),
	datad => \inst|Equal15~1_combout\,
	combout => \inst|Equal16~2_combout\);

-- Location: LCCOMB_X24_Y17_N12
\inst|Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~0_combout\ = (!\inst|e_siguiente\(1) & (\inst|Equal5~2_combout\ & (\inst|Equal8~4_combout\ & \inst|e_siguiente\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(1),
	datab => \inst|Equal5~2_combout\,
	datac => \inst|Equal8~4_combout\,
	datad => \inst|e_siguiente\(0),
	combout => \inst|Equal9~0_combout\);

-- Location: LCCOMB_X24_Y17_N14
\inst|Dir[15]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Dir[15]~12_combout\ = (!\inst|Equal9~0_combout\ & (((\inst|e_siguiente\(10) & !\inst|e_siguiente\(8))) # (!\inst|Equal81~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(10),
	datab => \inst|e_siguiente\(8),
	datac => \inst|Equal81~0_combout\,
	datad => \inst|Equal9~0_combout\,
	combout => \inst|Dir[15]~12_combout\);

-- Location: LCCOMB_X26_Y17_N12
\inst|Data_out[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Data_out[7]~5_combout\ = (\inst|Data_out[7]~4_combout\ & (!\inst|Equal16~2_combout\ & (\inst|Dir[15]~12_combout\ & \inst|WideOr2~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out[7]~4_combout\,
	datab => \inst|Equal16~2_combout\,
	datac => \inst|Dir[15]~12_combout\,
	datad => \inst|WideOr2~23_combout\,
	combout => \inst|Data_out[7]~5_combout\);

-- Location: LCCOMB_X24_Y17_N4
\inst|Dir[15]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Dir[15]~24_combout\ = (\inst|e_siguiente\(1)) # ((!\inst|Equal20~1_combout\) # (!\inst|e_siguiente\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(1),
	datab => \inst|e_siguiente\(0),
	datad => \inst|Equal20~1_combout\,
	combout => \inst|Dir[15]~24_combout\);

-- Location: LCCOMB_X27_Y18_N28
\inst|Equal55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal55~0_combout\ = (\inst|Equal54~2_combout\ & (\inst|Equal52~0_combout\ & !\inst|e_siguiente\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal54~2_combout\,
	datac => \inst|Equal52~0_combout\,
	datad => \inst|e_siguiente\(9),
	combout => \inst|Equal55~0_combout\);

-- Location: LCCOMB_X27_Y18_N26
\inst|Yupa[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Yupa[7]~30_combout\ = (((\inst|e_siguiente\(8)) # (!\inst|Equal55~0_combout\)) # (!\inst|e_siguiente\(10))) # (!\inst|e_siguiente\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(0),
	datab => \inst|e_siguiente\(10),
	datac => \inst|e_siguiente\(8),
	datad => \inst|Equal55~0_combout\,
	combout => \inst|Yupa[7]~30_combout\);

-- Location: LCCOMB_X24_Y16_N18
\inst|Data_out[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Data_out[7]~6_combout\ = (\inst|e_siguiente\(0)) # ((!\inst|Equal71~0_combout\ & !\inst|Equal59~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|e_siguiente\(0),
	datac => \inst|Equal71~0_combout\,
	datad => \inst|Equal59~1_combout\,
	combout => \inst|Data_out[7]~6_combout\);

-- Location: LCCOMB_X24_Y16_N4
\inst|Data_out[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Data_out[7]~7_combout\ = (\inst|Data_out[7]~6_combout\ & (((!\inst|Equal4~2_combout\ & !\inst|Equal2~0_combout\)) # (!\inst|Equal67~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal67~1_combout\,
	datab => \inst|Equal4~2_combout\,
	datac => \inst|Equal2~0_combout\,
	datad => \inst|Data_out[7]~6_combout\,
	combout => \inst|Data_out[7]~7_combout\);

-- Location: LCCOMB_X24_Y16_N24
\inst|Equal40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal40~2_combout\ = (\inst|e_siguiente\(3) & (!\inst|e_siguiente\(7) & (\inst|Equal2~0_combout\ & \inst|Equal59~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(3),
	datab => \inst|e_siguiente\(7),
	datac => \inst|Equal2~0_combout\,
	datad => \inst|Equal59~0_combout\,
	combout => \inst|Equal40~2_combout\);

-- Location: LCCOMB_X25_Y16_N30
\inst|B[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|B[7]~2_combout\ = (\inst|Equal2~0_combout\ & (((!\inst|Equal44~0_combout\ & !\inst|Equal36~1_combout\)))) # (!\inst|Equal2~0_combout\ & (((!\inst|Equal44~0_combout\ & !\inst|Equal36~1_combout\)) # (!\inst|Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~0_combout\,
	datab => \inst|Equal4~2_combout\,
	datac => \inst|Equal44~0_combout\,
	datad => \inst|Equal36~1_combout\,
	combout => \inst|B[7]~2_combout\);

-- Location: LCCOMB_X24_Y16_N2
\inst|B[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|B[7]~3_combout\ = (!\inst|Equal52~1_combout\ & (((!\inst|Equal2~0_combout\ & !\inst|Equal4~2_combout\)) # (!\inst|Equal48~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~0_combout\,
	datab => \inst|Equal4~2_combout\,
	datac => \inst|Equal52~1_combout\,
	datad => \inst|Equal48~0_combout\,
	combout => \inst|B[7]~3_combout\);

-- Location: LCCOMB_X24_Y16_N16
\inst|B[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|B[7]~4_combout\ = (!\inst|Equal42~0_combout\ & (!\inst|Equal40~2_combout\ & (\inst|B[7]~2_combout\ & \inst|B[7]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal42~0_combout\,
	datab => \inst|Equal40~2_combout\,
	datac => \inst|B[7]~2_combout\,
	datad => \inst|B[7]~3_combout\,
	combout => \inst|B[7]~4_combout\);

-- Location: LCCOMB_X24_Y16_N10
\inst|B[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|B[7]~5_combout\ = (\inst|Data_out[7]~7_combout\ & (\inst|B[7]~4_combout\ & ((!\inst|Equal75~0_combout\) # (!\inst|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~0_combout\,
	datab => \inst|Equal75~0_combout\,
	datac => \inst|Data_out[7]~7_combout\,
	datad => \inst|B[7]~4_combout\,
	combout => \inst|B[7]~5_combout\);

-- Location: LCCOMB_X25_Y14_N10
\inst|B[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|B[7]~6_combout\ = (\inst|Dir[15]~24_combout\ & (!\inst|Equal18~3_combout\ & (\inst|Yupa[7]~30_combout\ & \inst|B[7]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dir[15]~24_combout\,
	datab => \inst|Equal18~3_combout\,
	datac => \inst|Yupa[7]~30_combout\,
	datad => \inst|B[7]~5_combout\,
	combout => \inst|B[7]~6_combout\);

-- Location: LCCOMB_X26_Y14_N4
\inst|B[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|B[7]~7_combout\ = (\inst|WideOr39~1_combout\ & (\inst|Data_out[7]~5_combout\ & (\inst|Selector78~0_combout\ & \inst|B[7]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr39~1_combout\,
	datab => \inst|Data_out[7]~5_combout\,
	datac => \inst|Selector78~0_combout\,
	datad => \inst|B[7]~6_combout\,
	combout => \inst|B[7]~7_combout\);

-- Location: LCCOMB_X26_Y14_N20
\inst|B[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|B[7]~10_combout\ = (\inst|B[7]~8_combout\ & (\inst|B[7]~9_combout\ & (\inst|B[7]~7_combout\ & !\inst|Yupa[7]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|B[7]~8_combout\,
	datab => \inst|B[7]~9_combout\,
	datac => \inst|B[7]~7_combout\,
	datad => \inst|Yupa[7]~10_combout\,
	combout => \inst|B[7]~10_combout\);

-- Location: FF_X26_Y14_N9
\inst|B[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Selector54~0_combout\,
	sload => VCC,
	ena => \inst|B[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|B\(7));

-- Location: LCCOMB_X27_Y14_N6
\inst|Selector55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector55~0_combout\ = (\inst|Equal3~0_combout\ & ((\inst|Equal32~1_combout\ & ((\inst|D\(6)))) # (!\inst|Equal32~1_combout\ & (\inst1|output\(6))))) # (!\inst|Equal3~0_combout\ & (((\inst1|output\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal3~0_combout\,
	datab => \inst|Equal32~1_combout\,
	datac => \inst1|output\(6),
	datad => \inst|D\(6),
	combout => \inst|Selector55~0_combout\);

-- Location: FF_X27_Y14_N7
\inst|B[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector55~0_combout\,
	ena => \inst|B[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|B\(6));

-- Location: LCCOMB_X25_Y13_N0
\inst|Selector56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector56~0_combout\ = (\inst|Equal32~1_combout\ & ((\inst|Equal3~0_combout\ & (\inst|D\(5))) # (!\inst|Equal3~0_combout\ & ((\inst1|output\(5)))))) # (!\inst|Equal32~1_combout\ & (((\inst1|output\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|D\(5),
	datab => \inst1|output\(5),
	datac => \inst|Equal32~1_combout\,
	datad => \inst|Equal3~0_combout\,
	combout => \inst|Selector56~0_combout\);

-- Location: FF_X25_Y13_N1
\inst|B[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector56~0_combout\,
	ena => \inst|B[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|B\(5));

-- Location: LCCOMB_X26_Y18_N14
\inst|Equal87~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal87~0_combout\ = (\inst|e_siguiente\(8) & (\inst|e_siguiente\(10) & (\inst|Equal14~0_combout\ & \inst|Equal5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(8),
	datab => \inst|e_siguiente\(10),
	datac => \inst|Equal14~0_combout\,
	datad => \inst|Equal5~2_combout\,
	combout => \inst|Equal87~0_combout\);

-- Location: LCCOMB_X26_Y18_N8
\inst|A[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|A[7]~8_combout\ = (!\inst|Equal87~0_combout\ & (!\inst|Equal10~4_combout\ & ((!\inst|Equal2~0_combout\) # (!\inst|Equal63~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal63~1_combout\,
	datab => \inst|Equal2~0_combout\,
	datac => \inst|Equal87~0_combout\,
	datad => \inst|Equal10~4_combout\,
	combout => \inst|A[7]~8_combout\);

-- Location: LCCOMB_X23_Y14_N16
\inst|A[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|A[7]~9_combout\ = (\inst|B[7]~8_combout\ & (\inst|A[7]~8_combout\ & (!\inst|Yupa[7]~10_combout\ & \inst|B[7]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|B[7]~8_combout\,
	datab => \inst|A[7]~8_combout\,
	datac => \inst|Yupa[7]~10_combout\,
	datad => \inst|B[7]~7_combout\,
	combout => \inst|A[7]~9_combout\);

-- Location: FF_X24_Y14_N13
\inst|A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|A[6]~1_combout\,
	asdata => \inst|D\(14),
	sload => \inst|Equal33~2_combout\,
	ena => \inst|A[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|A\(6));

-- Location: FF_X23_Y14_N19
\inst|A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|A[5]~2_combout\,
	asdata => \inst|D\(13),
	sload => \inst|Equal33~2_combout\,
	ena => \inst|A[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|A\(5));

-- Location: LCCOMB_X21_Y18_N12
\inst|Selector57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector57~0_combout\ = (\inst|Equal3~0_combout\ & ((\inst|Equal32~1_combout\ & ((\inst|D\(4)))) # (!\inst|Equal32~1_combout\ & (\inst1|output\(4))))) # (!\inst|Equal3~0_combout\ & (((\inst1|output\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal3~0_combout\,
	datab => \inst|Equal32~1_combout\,
	datac => \inst1|output\(4),
	datad => \inst|D\(4),
	combout => \inst|Selector57~0_combout\);

-- Location: FF_X26_Y14_N25
\inst|B[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Selector57~0_combout\,
	sload => VCC,
	ena => \inst|B[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|B\(4));

-- Location: LCCOMB_X21_Y12_N0
\inst|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~0_combout\ = (\inst|B\(0) & (\inst|A\(0) $ (VCC))) # (!\inst|B\(0) & (\inst|A\(0) & VCC))
-- \inst|Add4~1\ = CARRY((\inst|B\(0) & \inst|A\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|B\(0),
	datab => \inst|A\(0),
	datad => VCC,
	combout => \inst|Add4~0_combout\,
	cout => \inst|Add4~1\);

-- Location: LCCOMB_X21_Y12_N2
\inst|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~2_combout\ = (\inst|B\(1) & ((\inst|A\(1) & (\inst|Add4~1\ & VCC)) # (!\inst|A\(1) & (!\inst|Add4~1\)))) # (!\inst|B\(1) & ((\inst|A\(1) & (!\inst|Add4~1\)) # (!\inst|A\(1) & ((\inst|Add4~1\) # (GND)))))
-- \inst|Add4~3\ = CARRY((\inst|B\(1) & (!\inst|A\(1) & !\inst|Add4~1\)) # (!\inst|B\(1) & ((!\inst|Add4~1\) # (!\inst|A\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|B\(1),
	datab => \inst|A\(1),
	datad => VCC,
	cin => \inst|Add4~1\,
	combout => \inst|Add4~2_combout\,
	cout => \inst|Add4~3\);

-- Location: LCCOMB_X21_Y12_N4
\inst|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~4_combout\ = ((\inst|A\(2) $ (\inst|B\(2) $ (!\inst|Add4~3\)))) # (GND)
-- \inst|Add4~5\ = CARRY((\inst|A\(2) & ((\inst|B\(2)) # (!\inst|Add4~3\))) # (!\inst|A\(2) & (\inst|B\(2) & !\inst|Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(2),
	datab => \inst|B\(2),
	datad => VCC,
	cin => \inst|Add4~3\,
	combout => \inst|Add4~4_combout\,
	cout => \inst|Add4~5\);

-- Location: LCCOMB_X21_Y12_N6
\inst|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~6_combout\ = (\inst|B\(3) & ((\inst|A\(3) & (\inst|Add4~5\ & VCC)) # (!\inst|A\(3) & (!\inst|Add4~5\)))) # (!\inst|B\(3) & ((\inst|A\(3) & (!\inst|Add4~5\)) # (!\inst|A\(3) & ((\inst|Add4~5\) # (GND)))))
-- \inst|Add4~7\ = CARRY((\inst|B\(3) & (!\inst|A\(3) & !\inst|Add4~5\)) # (!\inst|B\(3) & ((!\inst|Add4~5\) # (!\inst|A\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|B\(3),
	datab => \inst|A\(3),
	datad => VCC,
	cin => \inst|Add4~5\,
	combout => \inst|Add4~6_combout\,
	cout => \inst|Add4~7\);

-- Location: LCCOMB_X21_Y12_N8
\inst|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~8_combout\ = ((\inst|A\(4) $ (\inst|B\(4) $ (!\inst|Add4~7\)))) # (GND)
-- \inst|Add4~9\ = CARRY((\inst|A\(4) & ((\inst|B\(4)) # (!\inst|Add4~7\))) # (!\inst|A\(4) & (\inst|B\(4) & !\inst|Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(4),
	datab => \inst|B\(4),
	datad => VCC,
	cin => \inst|Add4~7\,
	combout => \inst|Add4~8_combout\,
	cout => \inst|Add4~9\);

-- Location: LCCOMB_X25_Y14_N28
\inst|Data_out[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Data_out[7]~8_combout\ = (!\inst|Equal33~2_combout\ & (!\inst|Equal19~0_combout\ & (\inst|Dir[15]~13_combout\ & \inst|SPL[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal33~2_combout\,
	datab => \inst|Equal19~0_combout\,
	datac => \inst|Dir[15]~13_combout\,
	datad => \inst|SPL[7]~0_combout\,
	combout => \inst|Data_out[7]~8_combout\);

-- Location: LCCOMB_X25_Y14_N26
\inst|Yupa[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Yupa[7]~28_combout\ = (\inst|Data_out[7]~8_combout\ & (\inst|B[7]~11_combout\ & (\inst|Yupa[7]~30_combout\ & \inst|B[7]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out[7]~8_combout\,
	datab => \inst|B[7]~11_combout\,
	datac => \inst|Yupa[7]~30_combout\,
	datad => \inst|B[7]~5_combout\,
	combout => \inst|Yupa[7]~28_combout\);

-- Location: LCCOMB_X25_Y14_N20
\inst|Yupa[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Yupa[7]~27_combout\ = (\inst|WideOr39~1_combout\ & (\reset~input_o\ & (\inst|Selector78~0_combout\ & \inst|Data_out[7]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr39~1_combout\,
	datab => \reset~input_o\,
	datac => \inst|Selector78~0_combout\,
	datad => \inst|Data_out[7]~5_combout\,
	combout => \inst|Yupa[7]~27_combout\);

-- Location: LCCOMB_X26_Y14_N26
\inst|Yupa[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Yupa[7]~29_combout\ = (\inst|Yupa[7]~28_combout\ & (\inst|Yupa[7]~27_combout\ & ((!\inst|B[7]~7_combout\) # (!\inst|Yupa[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Yupa[7]~28_combout\,
	datab => \inst|Yupa[7]~10_combout\,
	datac => \inst|B[7]~7_combout\,
	datad => \inst|Yupa[7]~27_combout\,
	combout => \inst|Yupa[7]~29_combout\);

-- Location: FF_X26_Y13_N17
\inst|Yupa[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Yupa[4]~19_combout\,
	asdata => \inst|Add4~8_combout\,
	sload => \inst|Equal18~3_combout\,
	ena => \inst|Yupa[7]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Yupa\(4));

-- Location: LCCOMB_X23_Y14_N20
\inst|A[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|A[4]~3_combout\ = (\inst|Equal19~0_combout\ & (\inst|Yupa\(4))) # (!\inst|Equal19~0_combout\ & ((\inst1|output\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Yupa\(4),
	datab => \inst|Equal19~0_combout\,
	datad => \inst1|output\(4),
	combout => \inst|A[4]~3_combout\);

-- Location: FF_X23_Y14_N21
\inst|A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|A[4]~3_combout\,
	asdata => \inst|D\(12),
	sload => \inst|Equal33~2_combout\,
	ena => \inst|A[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|A\(4));

-- Location: LCCOMB_X25_Y14_N0
\inst|Selector58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector58~0_combout\ = (\inst|Equal3~0_combout\ & ((\inst|Equal32~1_combout\ & (\inst|D\(3))) # (!\inst|Equal32~1_combout\ & ((\inst1|output\(3)))))) # (!\inst|Equal3~0_combout\ & (((\inst1|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal3~0_combout\,
	datab => \inst|Equal32~1_combout\,
	datac => \inst|D\(3),
	datad => \inst1|output\(3),
	combout => \inst|Selector58~0_combout\);

-- Location: FF_X25_Y14_N1
\inst|B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector58~0_combout\,
	ena => \inst|B[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|B\(3));

-- Location: FF_X26_Y13_N15
\inst|Yupa[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Yupa[3]~17_combout\,
	asdata => \inst|Add4~6_combout\,
	sload => \inst|Equal18~3_combout\,
	ena => \inst|Yupa[7]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Yupa\(3));

-- Location: LCCOMB_X23_Y14_N6
\inst|A[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|A[3]~4_combout\ = (\inst|Equal19~0_combout\ & (\inst|Yupa\(3))) # (!\inst|Equal19~0_combout\ & ((\inst1|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Yupa\(3),
	datab => \inst|Equal19~0_combout\,
	datad => \inst1|output\(3),
	combout => \inst|A[3]~4_combout\);

-- Location: FF_X23_Y14_N7
\inst|A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|A[3]~4_combout\,
	asdata => \inst|D\(11),
	sload => \inst|Equal33~2_combout\,
	ena => \inst|A[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|A\(3));

-- Location: LCCOMB_X25_Y13_N26
\inst|Selector59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector59~0_combout\ = (\inst|Equal32~1_combout\ & ((\inst|Equal3~0_combout\ & ((\inst|D\(2)))) # (!\inst|Equal3~0_combout\ & (\inst1|output\(2))))) # (!\inst|Equal32~1_combout\ & (\inst1|output\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output\(2),
	datab => \inst|Equal32~1_combout\,
	datac => \inst|Equal3~0_combout\,
	datad => \inst|D\(2),
	combout => \inst|Selector59~0_combout\);

-- Location: FF_X25_Y13_N27
\inst|B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector59~0_combout\,
	ena => \inst|B[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|B\(2));

-- Location: FF_X26_Y13_N13
\inst|Yupa[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Yupa[2]~15_combout\,
	asdata => \inst|Add4~4_combout\,
	sload => \inst|Equal18~3_combout\,
	ena => \inst|Yupa[7]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Yupa\(2));

-- Location: LCCOMB_X23_Y14_N4
\inst|A[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|A[2]~5_combout\ = (\inst|Equal19~0_combout\ & ((\inst|Yupa\(2)))) # (!\inst|Equal19~0_combout\ & (\inst1|output\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output\(2),
	datab => \inst|Equal19~0_combout\,
	datad => \inst|Yupa\(2),
	combout => \inst|A[2]~5_combout\);

-- Location: FF_X23_Y14_N5
\inst|A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|A[2]~5_combout\,
	asdata => \inst|D\(10),
	sload => \inst|Equal33~2_combout\,
	ena => \inst|A[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|A\(2));

-- Location: LCCOMB_X27_Y14_N18
\inst|Selector60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector60~0_combout\ = (\inst|Equal32~1_combout\ & ((\inst|Equal3~0_combout\ & (\inst|D\(1))) # (!\inst|Equal3~0_combout\ & ((\inst1|output\(1)))))) # (!\inst|Equal32~1_combout\ & (((\inst1|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|D\(1),
	datab => \inst1|output\(1),
	datac => \inst|Equal32~1_combout\,
	datad => \inst|Equal3~0_combout\,
	combout => \inst|Selector60~0_combout\);

-- Location: FF_X27_Y14_N19
\inst|B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector60~0_combout\,
	ena => \inst|B[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|B\(1));

-- Location: FF_X26_Y13_N11
\inst|Yupa[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Yupa[1]~13_combout\,
	asdata => \inst|Add4~2_combout\,
	sload => \inst|Equal18~3_combout\,
	ena => \inst|Yupa[7]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Yupa\(1));

-- Location: LCCOMB_X23_Y14_N2
\inst|A[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|A[1]~6_combout\ = (\inst|Equal19~0_combout\ & ((\inst|Yupa\(1)))) # (!\inst|Equal19~0_combout\ & (\inst1|output\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output\(1),
	datab => \inst|Yupa\(1),
	datad => \inst|Equal19~0_combout\,
	combout => \inst|A[1]~6_combout\);

-- Location: FF_X23_Y14_N3
\inst|A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|A[1]~6_combout\,
	asdata => \inst|D\(9),
	sload => \inst|Equal33~2_combout\,
	ena => \inst|A[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|A\(1));

-- Location: FF_X23_Y14_N25
\inst|A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|A[0]~7_combout\,
	asdata => \inst|D\(8),
	sload => \inst|Equal33~2_combout\,
	ena => \inst|A[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|A\(0));

-- Location: LCCOMB_X25_Y13_N4
\inst|Selector61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector61~0_combout\ = (\inst|Equal32~1_combout\ & ((\inst|Equal3~0_combout\ & (\inst|D\(0))) # (!\inst|Equal3~0_combout\ & ((\inst1|output\(0)))))) # (!\inst|Equal32~1_combout\ & (((\inst1|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|D\(0),
	datab => \inst|Equal32~1_combout\,
	datac => \inst|Equal3~0_combout\,
	datad => \inst1|output\(0),
	combout => \inst|Selector61~0_combout\);

-- Location: FF_X25_Y13_N5
\inst|B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector61~0_combout\,
	ena => \inst|B[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|B\(0));

-- Location: FF_X26_Y13_N9
\inst|Yupa[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Yupa[0]~11_combout\,
	asdata => \inst|Add4~0_combout\,
	sload => \inst|Equal18~3_combout\,
	ena => \inst|Yupa[7]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Yupa\(0));

-- Location: LCCOMB_X26_Y14_N24
\inst|Dir[10]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Dir[10]~21_combout\ = (\inst|Dir[10]~23_combout\ & \inst|WideOr2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dir[10]~23_combout\,
	datad => \inst|WideOr2~combout\,
	combout => \inst|Dir[10]~21_combout\);

-- Location: LCCOMB_X30_Y14_N18
\inst|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector15~0_combout\ = (\inst|Dir[10]~21_combout\ & (((\inst|PC\(0)) # (\inst|Dir[2]~20_combout\)))) # (!\inst|Dir[10]~21_combout\ & (!\inst|SPL\(0) & ((!\inst|Dir[2]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SPL\(0),
	datab => \inst|Dir[10]~21_combout\,
	datac => \inst|PC\(0),
	datad => \inst|Dir[2]~20_combout\,
	combout => \inst|Selector15~0_combout\);

-- Location: LCCOMB_X30_Y14_N10
\inst|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector15~1_combout\ = (\inst|Dir[2]~20_combout\ & ((\inst|Selector15~0_combout\ & ((\inst|Yupa\(0)))) # (!\inst|Selector15~0_combout\ & (\inst|Aux\(0))))) # (!\inst|Dir[2]~20_combout\ & (((\inst|Selector15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dir[2]~20_combout\,
	datab => \inst|Aux\(0),
	datac => \inst|Yupa\(0),
	datad => \inst|Selector15~0_combout\,
	combout => \inst|Selector15~1_combout\);

-- Location: LCCOMB_X24_Y17_N20
\inst|Dir[15]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Dir[15]~14_combout\ = (\inst|Dir[15]~12_combout\ & (!\inst|Equal16~2_combout\ & (\inst|Dir[15]~24_combout\ & \inst|Data_out[7]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dir[15]~12_combout\,
	datab => \inst|Equal16~2_combout\,
	datac => \inst|Dir[15]~24_combout\,
	datad => \inst|Data_out[7]~4_combout\,
	combout => \inst|Dir[15]~14_combout\);

-- Location: LCCOMB_X25_Y14_N18
\inst|Dir[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Dir[15]~15_combout\ = (!\inst|Equal33~2_combout\ & (\inst|Selector20~8_combout\ & (\reset~input_o\ & !\inst|Equal4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal33~2_combout\,
	datab => \inst|Selector20~8_combout\,
	datac => \reset~input_o\,
	datad => \inst|Equal4~3_combout\,
	combout => \inst|Dir[15]~15_combout\);

-- Location: LCCOMB_X25_Y14_N24
\inst|Dir[15]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Dir[15]~16_combout\ = (\inst|Dir[15]~13_combout\ & \inst|Dir[15]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Dir[15]~13_combout\,
	datad => \inst|Dir[15]~15_combout\,
	combout => \inst|Dir[15]~16_combout\);

-- Location: LCCOMB_X25_Y14_N4
\inst|Data_out[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Data_out[7]~9_combout\ = (\inst|Data_out[7]~5_combout\ & (\inst|WideOr39~1_combout\ & \inst|Selector78~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Data_out[7]~5_combout\,
	datac => \inst|WideOr39~1_combout\,
	datad => \inst|Selector78~0_combout\,
	combout => \inst|Data_out[7]~9_combout\);

-- Location: LCCOMB_X25_Y14_N14
\inst|WideNor0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideNor0~combout\ = (((!\inst|B[7]~6_combout\) # (!\inst|Data_out[7]~9_combout\)) # (!\inst|B[7]~11_combout\)) # (!\inst|Data_out[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out[7]~8_combout\,
	datab => \inst|B[7]~11_combout\,
	datac => \inst|Data_out[7]~9_combout\,
	datad => \inst|B[7]~6_combout\,
	combout => \inst|WideNor0~combout\);

-- Location: LCCOMB_X24_Y17_N6
\inst|WideOr6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr6~combout\ = (((\inst|Equal19~0_combout\) # (!\inst|SPL[7]~0_combout\)) # (!\inst|WideOr6~9_combout\)) # (!\inst|WideOr6~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr6~7_combout\,
	datab => \inst|WideOr6~9_combout\,
	datac => \inst|Equal19~0_combout\,
	datad => \inst|SPL[7]~0_combout\,
	combout => \inst|WideOr6~combout\);

-- Location: LCCOMB_X24_Y16_N0
\inst|Dir[15]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Dir[15]~17_combout\ = (!\inst|Equal18~3_combout\ & (\inst|Yupa[7]~30_combout\ & \inst|B[7]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal18~3_combout\,
	datac => \inst|Yupa[7]~30_combout\,
	datad => \inst|B[7]~5_combout\,
	combout => \inst|Dir[15]~17_combout\);

-- Location: LCCOMB_X25_Y14_N6
\inst|Dir[15]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Dir[15]~18_combout\ = (\inst|Dir[15]~17_combout\ & (((!\inst|IRQ~q\ & !\inst|XIRQ~q\)) # (!\inst|WideOr6~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IRQ~q\,
	datab => \inst|XIRQ~q\,
	datac => \inst|WideOr6~combout\,
	datad => \inst|Dir[15]~17_combout\,
	combout => \inst|Dir[15]~18_combout\);

-- Location: LCCOMB_X25_Y14_N30
\inst|Dir[15]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Dir[15]~19_combout\ = (\inst|Dir[15]~14_combout\ & (\inst|Dir[15]~16_combout\ & (\inst|WideNor0~combout\ & \inst|Dir[15]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dir[15]~14_combout\,
	datab => \inst|Dir[15]~16_combout\,
	datac => \inst|WideNor0~combout\,
	datad => \inst|Dir[15]~18_combout\,
	combout => \inst|Dir[15]~19_combout\);

-- Location: FF_X30_Y14_N11
\inst|Dir[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector15~1_combout\,
	ena => \inst|Dir[15]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Dir\(0));

-- Location: LCCOMB_X28_Y14_N0
\inst1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal1~0_combout\ = (!\inst|Dir\(1) & \inst|Dir\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Dir\(1),
	datad => \inst|Dir\(0),
	combout => \inst1|Equal1~0_combout\);

-- Location: FF_X21_Y14_N1
\inst|Aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|output\(2),
	sload => VCC,
	ena => \inst|Aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Aux\(2));

-- Location: LCCOMB_X20_Y13_N0
\inst|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~0_combout\ = (\inst1|output\(0) & (\inst|PC\(0) $ (VCC))) # (!\inst1|output\(0) & (\inst|PC\(0) & VCC))
-- \inst|Add3~1\ = CARRY((\inst1|output\(0) & \inst|PC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output\(0),
	datab => \inst|PC\(0),
	datad => VCC,
	combout => \inst|Add3~0_combout\,
	cout => \inst|Add3~1\);

-- Location: LCCOMB_X20_Y13_N2
\inst|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~2_combout\ = (\inst1|output\(1) & ((\inst|PC\(1) & (\inst|Add3~1\ & VCC)) # (!\inst|PC\(1) & (!\inst|Add3~1\)))) # (!\inst1|output\(1) & ((\inst|PC\(1) & (!\inst|Add3~1\)) # (!\inst|PC\(1) & ((\inst|Add3~1\) # (GND)))))
-- \inst|Add3~3\ = CARRY((\inst1|output\(1) & (!\inst|PC\(1) & !\inst|Add3~1\)) # (!\inst1|output\(1) & ((!\inst|Add3~1\) # (!\inst|PC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output\(1),
	datab => \inst|PC\(1),
	datad => VCC,
	cin => \inst|Add3~1\,
	combout => \inst|Add3~2_combout\,
	cout => \inst|Add3~3\);

-- Location: LCCOMB_X19_Y13_N0
\inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|PC\(0) $ (VCC)
-- \inst|Add0~1\ = CARRY(\inst|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCCOMB_X19_Y13_N2
\inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|PC\(1) & (!\inst|Add0~1\)) # (!\inst|PC\(1) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X21_Y16_N24
\inst|PCL[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PCL[7]~2_combout\ = (\inst|e_siguiente\(1) & (!\inst|e_siguiente\(0) & (\inst|Equal75~0_combout\ & \reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(1),
	datab => \inst|e_siguiente\(0),
	datac => \inst|Equal75~0_combout\,
	datad => \reset~input_o\,
	combout => \inst|PCL[7]~2_combout\);

-- Location: FF_X20_Y14_N21
\inst|PCL[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|output\(1),
	sload => VCC,
	ena => \inst|PCL[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PCL\(1));

-- Location: LCCOMB_X20_Y14_N20
\inst|Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector41~0_combout\ = (\inst|PC[15]~5_combout\ & ((\inst|PC[15]~2_combout\ & ((\inst|PCL\(1)))) # (!\inst|PC[15]~2_combout\ & (\inst|Add0~2_combout\)))) # (!\inst|PC[15]~5_combout\ & (((\inst|PC[15]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~2_combout\,
	datab => \inst|PC[15]~5_combout\,
	datac => \inst|PCL\(1),
	datad => \inst|PC[15]~2_combout\,
	combout => \inst|Selector41~0_combout\);

-- Location: LCCOMB_X25_Y13_N10
\inst|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~0_combout\ = \inst1|output\(0) $ (VCC)
-- \inst|Add1~1\ = CARRY(\inst1|output\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|output\(0),
	datad => VCC,
	combout => \inst|Add1~0_combout\,
	cout => \inst|Add1~1\);

-- Location: LCCOMB_X25_Y13_N12
\inst|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~2_combout\ = (\inst1|output\(1) & (\inst|Add1~1\ & VCC)) # (!\inst1|output\(1) & (!\inst|Add1~1\))
-- \inst|Add1~3\ = CARRY((!\inst1|output\(1) & !\inst|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|output\(1),
	datad => VCC,
	cin => \inst|Add1~1\,
	combout => \inst|Add1~2_combout\,
	cout => \inst|Add1~3\);

-- Location: LCCOMB_X24_Y13_N0
\inst|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~0_combout\ = (\inst|PC\(0) & ((\inst|Add1~0_combout\) # (GND))) # (!\inst|PC\(0) & (\inst|Add1~0_combout\ $ (VCC)))
-- \inst|Add2~1\ = CARRY((\inst|PC\(0)) # (\inst|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(0),
	datab => \inst|Add1~0_combout\,
	datad => VCC,
	combout => \inst|Add2~0_combout\,
	cout => \inst|Add2~1\);

-- Location: LCCOMB_X24_Y13_N2
\inst|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~2_combout\ = (\inst|PC\(1) & ((\inst|Add1~2_combout\ & (\inst|Add2~1\ & VCC)) # (!\inst|Add1~2_combout\ & (!\inst|Add2~1\)))) # (!\inst|PC\(1) & ((\inst|Add1~2_combout\ & (!\inst|Add2~1\)) # (!\inst|Add1~2_combout\ & ((\inst|Add2~1\) # 
-- (GND)))))
-- \inst|Add2~3\ = CARRY((\inst|PC\(1) & (!\inst|Add1~2_combout\ & !\inst|Add2~1\)) # (!\inst|PC\(1) & ((!\inst|Add2~1\) # (!\inst|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(1),
	datab => \inst|Add1~2_combout\,
	datad => VCC,
	cin => \inst|Add2~1\,
	combout => \inst|Add2~2_combout\,
	cout => \inst|Add2~3\);

-- Location: LCCOMB_X23_Y13_N30
\inst|Selector41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector41~1_combout\ = (\inst|PC[15]~5_combout\ & (((\inst|Selector41~0_combout\)))) # (!\inst|PC[15]~5_combout\ & ((\inst|Selector41~0_combout\ & ((\inst|Add2~2_combout\))) # (!\inst|Selector41~0_combout\ & (\inst|Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC[15]~5_combout\,
	datab => \inst|Add3~2_combout\,
	datac => \inst|Selector41~0_combout\,
	datad => \inst|Add2~2_combout\,
	combout => \inst|Selector41~1_combout\);

-- Location: LCCOMB_X23_Y13_N2
\inst|Selector41~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector41~2_combout\ = (\inst|Selector41~1_combout\ & ((\inst|PC[15]~2_combout\) # ((\inst|WideOr2~23_combout\ & \inst|WideNor0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr2~23_combout\,
	datab => \inst|PC[15]~2_combout\,
	datac => \inst|Selector41~1_combout\,
	datad => \inst|WideNor0~combout\,
	combout => \inst|Selector41~2_combout\);

-- Location: FF_X23_Y13_N3
\inst|PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector41~2_combout\,
	clrn => \reset~input_o\,
	ena => \inst|PC[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(1));

-- Location: LCCOMB_X19_Y13_N4
\inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|PC\(2) & (!\inst|Add0~3\ & VCC)) # (!\inst|PC\(2) & (\inst|Add0~3\ $ (GND)))
-- \inst|Add0~5\ = CARRY((!\inst|PC\(2) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X24_Y17_N28
\inst|Dir[15]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Dir[15]~22_combout\ = (\inst|Dir[15]~24_combout\ & (\inst|Dir[15]~12_combout\ & ((!\inst|Equal3~0_combout\) # (!\inst|Equal15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal15~1_combout\,
	datab => \inst|Dir[15]~24_combout\,
	datac => \inst|Dir[15]~12_combout\,
	datad => \inst|Equal3~0_combout\,
	combout => \inst|Dir[15]~22_combout\);

-- Location: LCCOMB_X24_Y14_N8
\inst|Selector40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector40~1_combout\ = (\inst|Add0~4_combout\ & ((!\inst|Dir[15]~22_combout\) # (!\inst|Selector38~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector38~0_combout\,
	datab => \inst|Add0~4_combout\,
	datad => \inst|Dir[15]~22_combout\,
	combout => \inst|Selector40~1_combout\);

-- Location: LCCOMB_X20_Y12_N10
\inst|PCL[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PCL[2]~4_combout\ = !\inst1|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|output\(2),
	combout => \inst|PCL[2]~4_combout\);

-- Location: FF_X20_Y12_N11
\inst|PCL[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PCL[2]~4_combout\,
	ena => \inst|PCL[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PCL\(2));

-- Location: LCCOMB_X24_Y14_N4
\inst|Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector40~0_combout\ = (\inst|Equal4~2_combout\ & ((\inst|Equal24~0_combout\) # ((\inst|estados\(2) & \inst|Equal11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|estados\(2),
	datab => \inst|Equal24~0_combout\,
	datac => \inst|Equal11~2_combout\,
	datad => \inst|Equal4~2_combout\,
	combout => \inst|Selector40~0_combout\);

-- Location: LCCOMB_X20_Y13_N4
\inst|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~4_combout\ = ((\inst1|output\(2) $ (\inst|PC\(2) $ (\inst|Add3~3\)))) # (GND)
-- \inst|Add3~5\ = CARRY((\inst1|output\(2) & ((!\inst|Add3~3\) # (!\inst|PC\(2)))) # (!\inst1|output\(2) & (!\inst|PC\(2) & !\inst|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output\(2),
	datab => \inst|PC\(2),
	datad => VCC,
	cin => \inst|Add3~3\,
	combout => \inst|Add3~4_combout\,
	cout => \inst|Add3~5\);

-- Location: LCCOMB_X25_Y13_N14
\inst|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~4_combout\ = (\inst1|output\(2) & ((GND) # (!\inst|Add1~3\))) # (!\inst1|output\(2) & (\inst|Add1~3\ $ (GND)))
-- \inst|Add1~5\ = CARRY((\inst1|output\(2)) # (!\inst|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output\(2),
	datad => VCC,
	cin => \inst|Add1~3\,
	combout => \inst|Add1~4_combout\,
	cout => \inst|Add1~5\);

-- Location: LCCOMB_X24_Y13_N4
\inst|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~4_combout\ = ((\inst|PC\(2) $ (\inst|Add1~4_combout\ $ (\inst|Add2~3\)))) # (GND)
-- \inst|Add2~5\ = CARRY((\inst|PC\(2) & (\inst|Add1~4_combout\ & !\inst|Add2~3\)) # (!\inst|PC\(2) & ((\inst|Add1~4_combout\) # (!\inst|Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(2),
	datab => \inst|Add1~4_combout\,
	datad => VCC,
	cin => \inst|Add2~3\,
	combout => \inst|Add2~4_combout\,
	cout => \inst|Add2~5\);

-- Location: LCCOMB_X24_Y14_N2
\inst|Selector40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector40~2_combout\ = (\inst|Selector40~0_combout\ & ((\inst1|output\(7) & ((\inst|Add2~4_combout\))) # (!\inst1|output\(7) & (\inst|Add3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output\(7),
	datab => \inst|Selector40~0_combout\,
	datac => \inst|Add3~4_combout\,
	datad => \inst|Add2~4_combout\,
	combout => \inst|Selector40~2_combout\);

-- Location: LCCOMB_X24_Y14_N16
\inst|Selector40~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector40~3_combout\ = (\inst|Selector40~2_combout\) # ((!\inst|PCL\(2) & \inst|Equal78~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PCL\(2),
	datac => \inst|Equal78~2_combout\,
	datad => \inst|Selector40~2_combout\,
	combout => \inst|Selector40~3_combout\);

-- Location: LCCOMB_X24_Y14_N28
\inst|Selector40~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector40~4_combout\ = (!\inst|Selector40~1_combout\ & (!\inst|Selector40~3_combout\ & ((\inst|PC[15]~4_combout\) # (\inst|PC\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC[15]~4_combout\,
	datab => \inst|Selector40~1_combout\,
	datac => \inst|PC\(2),
	datad => \inst|Selector40~3_combout\,
	combout => \inst|Selector40~4_combout\);

-- Location: FF_X24_Y14_N29
\inst|PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector40~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(2));

-- Location: LCCOMB_X27_Y13_N4
\inst|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector13~0_combout\ = (\inst|Dir[2]~20_combout\ & (((\inst|Dir[10]~21_combout\)))) # (!\inst|Dir[2]~20_combout\ & ((\inst|Dir[10]~21_combout\ & (!\inst|PC\(2))) # (!\inst|Dir[10]~21_combout\ & ((!\inst|SPL\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(2),
	datab => \inst|SPL\(2),
	datac => \inst|Dir[2]~20_combout\,
	datad => \inst|Dir[10]~21_combout\,
	combout => \inst|Selector13~0_combout\);

-- Location: LCCOMB_X27_Y13_N24
\inst|Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector13~1_combout\ = (\inst|Selector13~0_combout\ & ((\inst|Yupa\(2)) # ((!\inst|Dir[2]~20_combout\)))) # (!\inst|Selector13~0_combout\ & (((\inst|Aux\(2) & \inst|Dir[2]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Yupa\(2),
	datab => \inst|Aux\(2),
	datac => \inst|Selector13~0_combout\,
	datad => \inst|Dir[2]~20_combout\,
	combout => \inst|Selector13~1_combout\);

-- Location: FF_X27_Y13_N25
\inst|Dir[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Selector13~1_combout\,
	ena => \inst|Dir[15]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Dir\(2));

-- Location: LCCOMB_X21_Y13_N14
\inst|PCH[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PCH[2]~feeder_combout\ = \inst1|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|output\(2),
	combout => \inst|PCH[2]~feeder_combout\);

-- Location: LCCOMB_X20_Y14_N30
\inst|PCH[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PCH[7]~2_combout\ = (!\inst|e_siguiente\(0) & (\reset~input_o\ & (!\inst|e_siguiente\(1) & \inst|Equal75~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(0),
	datab => \reset~input_o\,
	datac => \inst|e_siguiente\(1),
	datad => \inst|Equal75~0_combout\,
	combout => \inst|PCH[7]~2_combout\);

-- Location: FF_X21_Y13_N15
\inst|PCH[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PCH[2]~feeder_combout\,
	ena => \inst|PCH[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PCH\(2));

-- Location: LCCOMB_X21_Y13_N4
\inst|PCH[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PCH[0]~feeder_combout\ = \inst1|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|output\(0),
	combout => \inst|PCH[0]~feeder_combout\);

-- Location: FF_X21_Y13_N5
\inst|PCH[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PCH[0]~feeder_combout\,
	ena => \inst|PCH[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PCH\(0));

-- Location: LCCOMB_X25_Y13_N22
\inst|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~12_combout\ = (\inst1|output\(6) & ((GND) # (!\inst|Add1~11\))) # (!\inst1|output\(6) & (\inst|Add1~11\ $ (GND)))
-- \inst|Add1~13\ = CARRY((\inst1|output\(6)) # (!\inst|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output\(6),
	datad => VCC,
	cin => \inst|Add1~11\,
	combout => \inst|Add1~12_combout\,
	cout => \inst|Add1~13\);

-- Location: LCCOMB_X25_Y13_N24
\inst|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~14_combout\ = \inst|Add1~13\ $ (!\inst1|output\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|output\(7),
	cin => \inst|Add1~13\,
	combout => \inst|Add1~14_combout\);

-- Location: LCCOMB_X25_Y13_N20
\inst|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~10_combout\ = (\inst1|output\(5) & (\inst|Add1~9\ & VCC)) # (!\inst1|output\(5) & (!\inst|Add1~9\))
-- \inst|Add1~11\ = CARRY((!\inst1|output\(5) & !\inst|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|output\(5),
	datad => VCC,
	cin => \inst|Add1~9\,
	combout => \inst|Add1~10_combout\,
	cout => \inst|Add1~11\);

-- Location: LCCOMB_X25_Y13_N16
\inst|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~6_combout\ = (\inst1|output\(3) & (\inst|Add1~5\ & VCC)) # (!\inst1|output\(3) & (!\inst|Add1~5\))
-- \inst|Add1~7\ = CARRY((!\inst1|output\(3) & !\inst|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|output\(3),
	datad => VCC,
	cin => \inst|Add1~5\,
	combout => \inst|Add1~6_combout\,
	cout => \inst|Add1~7\);

-- Location: LCCOMB_X25_Y13_N18
\inst|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~8_combout\ = (\inst1|output\(4) & ((GND) # (!\inst|Add1~7\))) # (!\inst1|output\(4) & (\inst|Add1~7\ $ (GND)))
-- \inst|Add1~9\ = CARRY((\inst1|output\(4)) # (!\inst|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output\(4),
	datad => VCC,
	cin => \inst|Add1~7\,
	combout => \inst|Add1~8_combout\,
	cout => \inst|Add1~9\);

-- Location: LCCOMB_X19_Y13_N6
\inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|PC\(3) & (!\inst|Add0~5\)) # (!\inst|PC\(3) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|PC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X20_Y13_N6
\inst|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~6_combout\ = (\inst1|output\(3) & ((\inst|PC\(3) & (\inst|Add3~5\ & VCC)) # (!\inst|PC\(3) & (!\inst|Add3~5\)))) # (!\inst1|output\(3) & ((\inst|PC\(3) & (!\inst|Add3~5\)) # (!\inst|PC\(3) & ((\inst|Add3~5\) # (GND)))))
-- \inst|Add3~7\ = CARRY((\inst1|output\(3) & (!\inst|PC\(3) & !\inst|Add3~5\)) # (!\inst1|output\(3) & ((!\inst|Add3~5\) # (!\inst|PC\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output\(3),
	datab => \inst|PC\(3),
	datad => VCC,
	cin => \inst|Add3~5\,
	combout => \inst|Add3~6_combout\,
	cout => \inst|Add3~7\);

-- Location: LCCOMB_X20_Y14_N18
\inst|Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector39~0_combout\ = (\inst|PC[15]~5_combout\ & (\inst|Add0~6_combout\ & ((!\inst|PC[15]~2_combout\)))) # (!\inst|PC[15]~5_combout\ & (((\inst|Add3~6_combout\) # (\inst|PC[15]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~6_combout\,
	datab => \inst|PC[15]~5_combout\,
	datac => \inst|Add3~6_combout\,
	datad => \inst|PC[15]~2_combout\,
	combout => \inst|Selector39~0_combout\);

-- Location: FF_X20_Y14_N25
\inst|PCL[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|output\(3),
	sload => VCC,
	ena => \inst|PCL[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PCL\(3));

-- Location: LCCOMB_X24_Y13_N6
\inst|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~6_combout\ = (\inst|PC\(3) & ((\inst|Add1~6_combout\ & (\inst|Add2~5\ & VCC)) # (!\inst|Add1~6_combout\ & (!\inst|Add2~5\)))) # (!\inst|PC\(3) & ((\inst|Add1~6_combout\ & (!\inst|Add2~5\)) # (!\inst|Add1~6_combout\ & ((\inst|Add2~5\) # 
-- (GND)))))
-- \inst|Add2~7\ = CARRY((\inst|PC\(3) & (!\inst|Add1~6_combout\ & !\inst|Add2~5\)) # (!\inst|PC\(3) & ((!\inst|Add2~5\) # (!\inst|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(3),
	datab => \inst|Add1~6_combout\,
	datad => VCC,
	cin => \inst|Add2~5\,
	combout => \inst|Add2~6_combout\,
	cout => \inst|Add2~7\);

-- Location: LCCOMB_X20_Y14_N24
\inst|Selector39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector39~1_combout\ = (\inst|PC[15]~2_combout\ & ((\inst|Selector39~0_combout\ & ((\inst|Add2~6_combout\))) # (!\inst|Selector39~0_combout\ & (\inst|PCL\(3))))) # (!\inst|PC[15]~2_combout\ & (\inst|Selector39~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC[15]~2_combout\,
	datab => \inst|Selector39~0_combout\,
	datac => \inst|PCL\(3),
	datad => \inst|Add2~6_combout\,
	combout => \inst|Selector39~1_combout\);

-- Location: LCCOMB_X20_Y14_N14
\inst|Selector39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector39~2_combout\ = (\inst|Selector39~1_combout\ & ((\inst|PC[15]~2_combout\) # ((\inst|WideOr2~23_combout\ & \inst|WideNor0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC[15]~2_combout\,
	datab => \inst|WideOr2~23_combout\,
	datac => \inst|WideNor0~combout\,
	datad => \inst|Selector39~1_combout\,
	combout => \inst|Selector39~2_combout\);

-- Location: FF_X20_Y14_N15
\inst|PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector39~2_combout\,
	clrn => \reset~input_o\,
	ena => \inst|PC[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(3));

-- Location: LCCOMB_X24_Y13_N8
\inst|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~8_combout\ = ((\inst|PC\(4) $ (\inst|Add1~8_combout\ $ (\inst|Add2~7\)))) # (GND)
-- \inst|Add2~9\ = CARRY((\inst|PC\(4) & (\inst|Add1~8_combout\ & !\inst|Add2~7\)) # (!\inst|PC\(4) & ((\inst|Add1~8_combout\) # (!\inst|Add2~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(4),
	datab => \inst|Add1~8_combout\,
	datad => VCC,
	cin => \inst|Add2~7\,
	combout => \inst|Add2~8_combout\,
	cout => \inst|Add2~9\);

-- Location: LCCOMB_X24_Y13_N10
\inst|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~10_combout\ = (\inst|Add1~10_combout\ & ((\inst|PC\(5) & (\inst|Add2~9\ & VCC)) # (!\inst|PC\(5) & (!\inst|Add2~9\)))) # (!\inst|Add1~10_combout\ & ((\inst|PC\(5) & (!\inst|Add2~9\)) # (!\inst|PC\(5) & ((\inst|Add2~9\) # (GND)))))
-- \inst|Add2~11\ = CARRY((\inst|Add1~10_combout\ & (!\inst|PC\(5) & !\inst|Add2~9\)) # (!\inst|Add1~10_combout\ & ((!\inst|Add2~9\) # (!\inst|PC\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~10_combout\,
	datab => \inst|PC\(5),
	datad => VCC,
	cin => \inst|Add2~9\,
	combout => \inst|Add2~10_combout\,
	cout => \inst|Add2~11\);

-- Location: LCCOMB_X24_Y13_N12
\inst|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~12_combout\ = ((\inst|PC\(6) $ (\inst|Add1~12_combout\ $ (!\inst|Add2~11\)))) # (GND)
-- \inst|Add2~13\ = CARRY((\inst|PC\(6) & ((\inst|Add1~12_combout\) # (!\inst|Add2~11\))) # (!\inst|PC\(6) & (\inst|Add1~12_combout\ & !\inst|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(6),
	datab => \inst|Add1~12_combout\,
	datad => VCC,
	cin => \inst|Add2~11\,
	combout => \inst|Add2~12_combout\,
	cout => \inst|Add2~13\);

-- Location: LCCOMB_X24_Y13_N14
\inst|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~14_combout\ = (\inst|PC\(7) & ((\inst|Add1~14_combout\ & (\inst|Add2~13\ & VCC)) # (!\inst|Add1~14_combout\ & (!\inst|Add2~13\)))) # (!\inst|PC\(7) & ((\inst|Add1~14_combout\ & (!\inst|Add2~13\)) # (!\inst|Add1~14_combout\ & ((\inst|Add2~13\) # 
-- (GND)))))
-- \inst|Add2~15\ = CARRY((\inst|PC\(7) & (!\inst|Add1~14_combout\ & !\inst|Add2~13\)) # (!\inst|PC\(7) & ((!\inst|Add2~13\) # (!\inst|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(7),
	datab => \inst|Add1~14_combout\,
	datad => VCC,
	cin => \inst|Add2~13\,
	combout => \inst|Add2~14_combout\,
	cout => \inst|Add2~15\);

-- Location: LCCOMB_X24_Y13_N16
\inst|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~16_combout\ = (\inst|PC\(8) & ((GND) # (!\inst|Add2~15\))) # (!\inst|PC\(8) & (\inst|Add2~15\ $ (GND)))
-- \inst|Add2~17\ = CARRY((\inst|PC\(8)) # (!\inst|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(8),
	datad => VCC,
	cin => \inst|Add2~15\,
	combout => \inst|Add2~16_combout\,
	cout => \inst|Add2~17\);

-- Location: LCCOMB_X20_Y13_N14
\inst|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~14_combout\ = (\inst1|output\(7) & ((\inst|PC\(7) & (\inst|Add3~13\ & VCC)) # (!\inst|PC\(7) & (!\inst|Add3~13\)))) # (!\inst1|output\(7) & ((\inst|PC\(7) & (!\inst|Add3~13\)) # (!\inst|PC\(7) & ((\inst|Add3~13\) # (GND)))))
-- \inst|Add3~15\ = CARRY((\inst1|output\(7) & (!\inst|PC\(7) & !\inst|Add3~13\)) # (!\inst1|output\(7) & ((!\inst|Add3~13\) # (!\inst|PC\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output\(7),
	datab => \inst|PC\(7),
	datad => VCC,
	cin => \inst|Add3~13\,
	combout => \inst|Add3~14_combout\,
	cout => \inst|Add3~15\);

-- Location: LCCOMB_X20_Y13_N16
\inst|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~16_combout\ = (\inst|PC\(8) & (\inst|Add3~15\ $ (GND))) # (!\inst|PC\(8) & (!\inst|Add3~15\ & VCC))
-- \inst|Add3~17\ = CARRY((\inst|PC\(8) & !\inst|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(8),
	datad => VCC,
	cin => \inst|Add3~15\,
	combout => \inst|Add3~16_combout\,
	cout => \inst|Add3~17\);

-- Location: LCCOMB_X19_Y13_N8
\inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|PC\(4) & (!\inst|Add0~7\ & VCC)) # (!\inst|PC\(4) & (\inst|Add0~7\ $ (GND)))
-- \inst|Add0~9\ = CARRY((!\inst|PC\(4) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X19_Y13_N10
\inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|PC\(5) & (!\inst|Add0~9\)) # (!\inst|PC\(5) & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst|PC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X19_Y13_N12
\inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst|PC\(6) & (\inst|Add0~11\ $ (GND))) # (!\inst|PC\(6) & (!\inst|Add0~11\ & VCC))
-- \inst|Add0~13\ = CARRY((\inst|PC\(6) & !\inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(6),
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: LCCOMB_X19_Y13_N14
\inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst|PC\(7) & (!\inst|Add0~13\)) # (!\inst|PC\(7) & ((\inst|Add0~13\) # (GND)))
-- \inst|Add0~15\ = CARRY((!\inst|Add0~13\) # (!\inst|PC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(7),
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: LCCOMB_X19_Y13_N16
\inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = (\inst|PC\(8) & (\inst|Add0~15\ $ (GND))) # (!\inst|PC\(8) & (!\inst|Add0~15\ & VCC))
-- \inst|Add0~17\ = CARRY((\inst|PC\(8) & !\inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(8),
	datad => VCC,
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\,
	cout => \inst|Add0~17\);

-- Location: LCCOMB_X21_Y13_N6
\inst|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector34~0_combout\ = (!\inst|Equal58~2_combout\ & (\inst|WideNor0~combout\ & ((\inst|Equal39~0_combout\) # (\inst|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal58~2_combout\,
	datab => \inst|Equal39~0_combout\,
	datac => \inst|Add0~16_combout\,
	datad => \inst|WideNor0~combout\,
	combout => \inst|Selector34~0_combout\);

-- Location: LCCOMB_X21_Y13_N20
\inst|Selector34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector34~1_combout\ = (\inst|PC[15]~5_combout\ & (((!\inst|PC[15]~2_combout\ & \inst|Selector34~0_combout\)))) # (!\inst|PC[15]~5_combout\ & ((\inst|Add3~16_combout\) # ((\inst|PC[15]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~16_combout\,
	datab => \inst|PC[15]~5_combout\,
	datac => \inst|PC[15]~2_combout\,
	datad => \inst|Selector34~0_combout\,
	combout => \inst|Selector34~1_combout\);

-- Location: LCCOMB_X21_Y13_N30
\inst|Selector34~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector34~2_combout\ = (\inst|PC[15]~2_combout\ & ((\inst|Selector34~1_combout\ & ((\inst|Add2~16_combout\))) # (!\inst|Selector34~1_combout\ & (\inst|PCH\(0))))) # (!\inst|PC[15]~2_combout\ & (((\inst|Selector34~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC[15]~2_combout\,
	datab => \inst|PCH\(0),
	datac => \inst|Add2~16_combout\,
	datad => \inst|Selector34~1_combout\,
	combout => \inst|Selector34~2_combout\);

-- Location: FF_X21_Y13_N31
\inst|PC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector34~2_combout\,
	clrn => \reset~input_o\,
	ena => \inst|PC[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(8));

-- Location: LCCOMB_X24_Y13_N18
\inst|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~18_combout\ = (\inst|PC\(9) & (\inst|Add2~17\ & VCC)) # (!\inst|PC\(9) & (!\inst|Add2~17\))
-- \inst|Add2~19\ = CARRY((!\inst|PC\(9) & !\inst|Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(9),
	datad => VCC,
	cin => \inst|Add2~17\,
	combout => \inst|Add2~18_combout\,
	cout => \inst|Add2~19\);

-- Location: LCCOMB_X20_Y13_N18
\inst|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~18_combout\ = (\inst|PC\(9) & (!\inst|Add3~17\)) # (!\inst|PC\(9) & ((\inst|Add3~17\) # (GND)))
-- \inst|Add3~19\ = CARRY((!\inst|Add3~17\) # (!\inst|PC\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(9),
	datad => VCC,
	cin => \inst|Add3~17\,
	combout => \inst|Add3~18_combout\,
	cout => \inst|Add3~19\);

-- Location: FF_X23_Y13_N25
\inst|PCH[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|output\(1),
	sload => VCC,
	ena => \inst|PCH[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PCH\(1));

-- Location: LCCOMB_X19_Y13_N18
\inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = (\inst|PC\(9) & (!\inst|Add0~17\)) # (!\inst|PC\(9) & ((\inst|Add0~17\) # (GND)))
-- \inst|Add0~19\ = CARRY((!\inst|Add0~17\) # (!\inst|PC\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(9),
	datad => VCC,
	cin => \inst|Add0~17\,
	combout => \inst|Add0~18_combout\,
	cout => \inst|Add0~19\);

-- Location: LCCOMB_X23_Y13_N18
\inst|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector33~0_combout\ = (!\inst|Equal58~2_combout\ & (\inst|WideNor0~combout\ & ((\inst|Add0~18_combout\) # (\inst|Equal39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~18_combout\,
	datab => \inst|Equal39~0_combout\,
	datac => \inst|Equal58~2_combout\,
	datad => \inst|WideNor0~combout\,
	combout => \inst|Selector33~0_combout\);

-- Location: LCCOMB_X23_Y13_N24
\inst|Selector33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector33~1_combout\ = (\inst|PC[15]~5_combout\ & ((\inst|PC[15]~2_combout\ & (\inst|PCH\(1))) # (!\inst|PC[15]~2_combout\ & ((\inst|Selector33~0_combout\))))) # (!\inst|PC[15]~5_combout\ & (\inst|PC[15]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC[15]~5_combout\,
	datab => \inst|PC[15]~2_combout\,
	datac => \inst|PCH\(1),
	datad => \inst|Selector33~0_combout\,
	combout => \inst|Selector33~1_combout\);

-- Location: LCCOMB_X23_Y13_N26
\inst|Selector33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector33~2_combout\ = (\inst|PC[15]~5_combout\ & (((\inst|Selector33~1_combout\)))) # (!\inst|PC[15]~5_combout\ & ((\inst|Selector33~1_combout\ & (\inst|Add2~18_combout\)) # (!\inst|Selector33~1_combout\ & ((\inst|Add3~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC[15]~5_combout\,
	datab => \inst|Add2~18_combout\,
	datac => \inst|Add3~18_combout\,
	datad => \inst|Selector33~1_combout\,
	combout => \inst|Selector33~2_combout\);

-- Location: FF_X23_Y13_N27
\inst|PC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector33~2_combout\,
	clrn => \reset~input_o\,
	ena => \inst|PC[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(9));

-- Location: LCCOMB_X24_Y13_N20
\inst|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~20_combout\ = (\inst|PC\(10) & ((GND) # (!\inst|Add2~19\))) # (!\inst|PC\(10) & (\inst|Add2~19\ $ (GND)))
-- \inst|Add2~21\ = CARRY((\inst|PC\(10)) # (!\inst|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(10),
	datad => VCC,
	cin => \inst|Add2~19\,
	combout => \inst|Add2~20_combout\,
	cout => \inst|Add2~21\);

-- Location: LCCOMB_X20_Y13_N20
\inst|Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~20_combout\ = (\inst|PC\(10) & (\inst|Add3~19\ $ (GND))) # (!\inst|PC\(10) & (!\inst|Add3~19\ & VCC))
-- \inst|Add3~21\ = CARRY((\inst|PC\(10) & !\inst|Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(10),
	datad => VCC,
	cin => \inst|Add3~19\,
	combout => \inst|Add3~20_combout\,
	cout => \inst|Add3~21\);

-- Location: LCCOMB_X19_Y13_N20
\inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = (\inst|PC\(10) & (\inst|Add0~19\ $ (GND))) # (!\inst|PC\(10) & (!\inst|Add0~19\ & VCC))
-- \inst|Add0~21\ = CARRY((\inst|PC\(10) & !\inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(10),
	datad => VCC,
	cin => \inst|Add0~19\,
	combout => \inst|Add0~20_combout\,
	cout => \inst|Add0~21\);

-- Location: LCCOMB_X21_Y13_N24
\inst|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector32~0_combout\ = (\inst|Equal58~2_combout\) # ((!\inst|Equal39~0_combout\ & (\inst|Add0~20_combout\ & \inst|WideNor0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal58~2_combout\,
	datab => \inst|Equal39~0_combout\,
	datac => \inst|Add0~20_combout\,
	datad => \inst|WideNor0~combout\,
	combout => \inst|Selector32~0_combout\);

-- Location: LCCOMB_X21_Y13_N2
\inst|Selector32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector32~1_combout\ = (\inst|PC[15]~2_combout\ & (((!\inst|PC[15]~5_combout\)))) # (!\inst|PC[15]~2_combout\ & ((\inst|PC[15]~5_combout\ & ((\inst|Selector32~0_combout\))) # (!\inst|PC[15]~5_combout\ & (\inst|Add3~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC[15]~2_combout\,
	datab => \inst|Add3~20_combout\,
	datac => \inst|PC[15]~5_combout\,
	datad => \inst|Selector32~0_combout\,
	combout => \inst|Selector32~1_combout\);

-- Location: LCCOMB_X21_Y13_N0
\inst|Selector32~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector32~2_combout\ = (\inst|PC[15]~2_combout\ & ((\inst|Selector32~1_combout\ & ((\inst|Add2~20_combout\))) # (!\inst|Selector32~1_combout\ & (\inst|PCH\(2))))) # (!\inst|PC[15]~2_combout\ & (((\inst|Selector32~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC[15]~2_combout\,
	datab => \inst|PCH\(2),
	datac => \inst|Add2~20_combout\,
	datad => \inst|Selector32~1_combout\,
	combout => \inst|Selector32~2_combout\);

-- Location: FF_X21_Y13_N1
\inst|PC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector32~2_combout\,
	clrn => \reset~input_o\,
	ena => \inst|PC[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(10));

-- Location: LCCOMB_X19_Y13_N22
\inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~22_combout\ = (\inst|PC\(11) & (!\inst|Add0~21\)) # (!\inst|PC\(11) & ((\inst|Add0~21\) # (GND)))
-- \inst|Add0~23\ = CARRY((!\inst|Add0~21\) # (!\inst|PC\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(11),
	datad => VCC,
	cin => \inst|Add0~21\,
	combout => \inst|Add0~22_combout\,
	cout => \inst|Add0~23\);

-- Location: FF_X23_Y13_N21
\inst|PCH[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|output\(3),
	sload => VCC,
	ena => \inst|PCH[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PCH\(3));

-- Location: LCCOMB_X23_Y13_N20
\inst|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector31~0_combout\ = (\inst|PC[15]~5_combout\ & ((\inst|PC[15]~2_combout\ & ((\inst|PCH\(3)))) # (!\inst|PC[15]~2_combout\ & (\inst|Add0~22_combout\)))) # (!\inst|PC[15]~5_combout\ & (((\inst|PC[15]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC[15]~5_combout\,
	datab => \inst|Add0~22_combout\,
	datac => \inst|PCH\(3),
	datad => \inst|PC[15]~2_combout\,
	combout => \inst|Selector31~0_combout\);

-- Location: LCCOMB_X20_Y13_N22
\inst|Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~22_combout\ = (\inst|PC\(11) & (!\inst|Add3~21\)) # (!\inst|PC\(11) & ((\inst|Add3~21\) # (GND)))
-- \inst|Add3~23\ = CARRY((!\inst|Add3~21\) # (!\inst|PC\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(11),
	datad => VCC,
	cin => \inst|Add3~21\,
	combout => \inst|Add3~22_combout\,
	cout => \inst|Add3~23\);

-- Location: LCCOMB_X24_Y13_N22
\inst|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~22_combout\ = (\inst|PC\(11) & (\inst|Add2~21\ & VCC)) # (!\inst|PC\(11) & (!\inst|Add2~21\))
-- \inst|Add2~23\ = CARRY((!\inst|PC\(11) & !\inst|Add2~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(11),
	datad => VCC,
	cin => \inst|Add2~21\,
	combout => \inst|Add2~22_combout\,
	cout => \inst|Add2~23\);

-- Location: LCCOMB_X23_Y13_N22
\inst|Selector31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector31~1_combout\ = (\inst|PC[15]~5_combout\ & (\inst|Selector31~0_combout\)) # (!\inst|PC[15]~5_combout\ & ((\inst|Selector31~0_combout\ & ((\inst|Add2~22_combout\))) # (!\inst|Selector31~0_combout\ & (\inst|Add3~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC[15]~5_combout\,
	datab => \inst|Selector31~0_combout\,
	datac => \inst|Add3~22_combout\,
	datad => \inst|Add2~22_combout\,
	combout => \inst|Selector31~1_combout\);

-- Location: LCCOMB_X23_Y13_N12
\inst|Selector31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector31~2_combout\ = (\inst|Selector31~1_combout\ & ((\inst|PC[15]~2_combout\) # ((\inst|WideOr2~23_combout\ & \inst|WideNor0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr2~23_combout\,
	datab => \inst|PC[15]~2_combout\,
	datac => \inst|Selector31~1_combout\,
	datad => \inst|WideNor0~combout\,
	combout => \inst|Selector31~2_combout\);

-- Location: FF_X23_Y13_N13
\inst|PC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector31~2_combout\,
	clrn => \reset~input_o\,
	ena => \inst|PC[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(11));

-- Location: LCCOMB_X28_Y13_N12
\inst|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector4~0_combout\ = (\inst|Dir[10]~23_combout\ & (((\inst|B[7]~11_combout\ & \inst|PC\(11))) # (!\inst|WideOr2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|B[7]~11_combout\,
	datab => \inst|PC\(11),
	datac => \inst|WideOr2~combout\,
	datad => \inst|Dir[10]~23_combout\,
	combout => \inst|Selector4~0_combout\);

-- Location: FF_X28_Y13_N13
\inst|Dir[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Selector4~0_combout\,
	ena => \inst|Dir[15]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Dir\(11));

-- Location: LCCOMB_X21_Y13_N8
\inst|PCH[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PCH[6]~feeder_combout\ = \inst1|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|output\(6),
	combout => \inst|PCH[6]~feeder_combout\);

-- Location: FF_X21_Y13_N9
\inst|PCH[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PCH[6]~feeder_combout\,
	ena => \inst|PCH[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PCH\(6));

-- Location: FF_X20_Y13_N13
\inst|PCH[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|output\(4),
	sload => VCC,
	ena => \inst|PCH[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PCH\(4));

-- Location: LCCOMB_X20_Y13_N24
\inst|Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~24_combout\ = (\inst|PC\(12) & (\inst|Add3~23\ $ (GND))) # (!\inst|PC\(12) & (!\inst|Add3~23\ & VCC))
-- \inst|Add3~25\ = CARRY((\inst|PC\(12) & !\inst|Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(12),
	datad => VCC,
	cin => \inst|Add3~23\,
	combout => \inst|Add3~24_combout\,
	cout => \inst|Add3~25\);

-- Location: LCCOMB_X19_Y13_N24
\inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~24_combout\ = (\inst|PC\(12) & (\inst|Add0~23\ $ (GND))) # (!\inst|PC\(12) & (!\inst|Add0~23\ & VCC))
-- \inst|Add0~25\ = CARRY((\inst|PC\(12) & !\inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(12),
	datad => VCC,
	cin => \inst|Add0~23\,
	combout => \inst|Add0~24_combout\,
	cout => \inst|Add0~25\);

-- Location: LCCOMB_X25_Y14_N16
\inst|Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector37~0_combout\ = (!\inst|Equal58~2_combout\ & (((!\inst|B[7]~6_combout\) # (!\inst|Data_out[7]~9_combout\)) # (!\inst|Yupa[7]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Yupa[7]~10_combout\,
	datab => \inst|Equal58~2_combout\,
	datac => \inst|Data_out[7]~9_combout\,
	datad => \inst|B[7]~6_combout\,
	combout => \inst|Selector37~0_combout\);

-- Location: LCCOMB_X20_Y14_N6
\inst|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector30~0_combout\ = (\inst|Selector37~0_combout\ & ((\inst|Add0~24_combout\) # (\inst|Equal39~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~24_combout\,
	datab => \inst|Equal39~0_combout\,
	datac => \inst|Selector37~0_combout\,
	combout => \inst|Selector30~0_combout\);

-- Location: LCCOMB_X20_Y14_N8
\inst|Selector30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector30~1_combout\ = (\inst|PC[15]~2_combout\ & (!\inst|PC[15]~5_combout\)) # (!\inst|PC[15]~2_combout\ & ((\inst|PC[15]~5_combout\ & ((\inst|Selector30~0_combout\))) # (!\inst|PC[15]~5_combout\ & (\inst|Add3~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC[15]~2_combout\,
	datab => \inst|PC[15]~5_combout\,
	datac => \inst|Add3~24_combout\,
	datad => \inst|Selector30~0_combout\,
	combout => \inst|Selector30~1_combout\);

-- Location: LCCOMB_X24_Y13_N24
\inst|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~24_combout\ = (\inst|PC\(12) & ((GND) # (!\inst|Add2~23\))) # (!\inst|PC\(12) & (\inst|Add2~23\ $ (GND)))
-- \inst|Add2~25\ = CARRY((\inst|PC\(12)) # (!\inst|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(12),
	datad => VCC,
	cin => \inst|Add2~23\,
	combout => \inst|Add2~24_combout\,
	cout => \inst|Add2~25\);

-- Location: LCCOMB_X20_Y14_N26
\inst|Selector30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector30~2_combout\ = (\inst|PC[15]~2_combout\ & ((\inst|Selector30~1_combout\ & ((\inst|Add2~24_combout\))) # (!\inst|Selector30~1_combout\ & (\inst|PCH\(4))))) # (!\inst|PC[15]~2_combout\ & (((\inst|Selector30~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC[15]~2_combout\,
	datab => \inst|PCH\(4),
	datac => \inst|Selector30~1_combout\,
	datad => \inst|Add2~24_combout\,
	combout => \inst|Selector30~2_combout\);

-- Location: FF_X20_Y14_N27
\inst|PC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector30~2_combout\,
	clrn => \reset~input_o\,
	ena => \inst|PC[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(12));

-- Location: LCCOMB_X20_Y13_N26
\inst|Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~26_combout\ = (\inst|PC\(13) & (!\inst|Add3~25\)) # (!\inst|PC\(13) & ((\inst|Add3~25\) # (GND)))
-- \inst|Add3~27\ = CARRY((!\inst|Add3~25\) # (!\inst|PC\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(13),
	datad => VCC,
	cin => \inst|Add3~25\,
	combout => \inst|Add3~26_combout\,
	cout => \inst|Add3~27\);

-- Location: FF_X23_Y13_N5
\inst|PCH[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|output\(5),
	sload => VCC,
	ena => \inst|PCH[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PCH\(5));

-- Location: LCCOMB_X19_Y13_N26
\inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~26_combout\ = (\inst|PC\(13) & (!\inst|Add0~25\)) # (!\inst|PC\(13) & ((\inst|Add0~25\) # (GND)))
-- \inst|Add0~27\ = CARRY((!\inst|Add0~25\) # (!\inst|PC\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(13),
	datad => VCC,
	cin => \inst|Add0~25\,
	combout => \inst|Add0~26_combout\,
	cout => \inst|Add0~27\);

-- Location: LCCOMB_X23_Y13_N10
\inst|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector29~0_combout\ = (\inst|Selector37~0_combout\ & ((\inst|Equal39~0_combout\) # (\inst|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal39~0_combout\,
	datac => \inst|Add0~26_combout\,
	datad => \inst|Selector37~0_combout\,
	combout => \inst|Selector29~0_combout\);

-- Location: LCCOMB_X23_Y13_N4
\inst|Selector29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector29~1_combout\ = (\inst|PC[15]~5_combout\ & ((\inst|PC[15]~2_combout\ & (\inst|PCH\(5))) # (!\inst|PC[15]~2_combout\ & ((\inst|Selector29~0_combout\))))) # (!\inst|PC[15]~5_combout\ & (\inst|PC[15]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC[15]~5_combout\,
	datab => \inst|PC[15]~2_combout\,
	datac => \inst|PCH\(5),
	datad => \inst|Selector29~0_combout\,
	combout => \inst|Selector29~1_combout\);

-- Location: LCCOMB_X24_Y13_N26
\inst|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~26_combout\ = (\inst|PC\(13) & (\inst|Add2~25\ & VCC)) # (!\inst|PC\(13) & (!\inst|Add2~25\))
-- \inst|Add2~27\ = CARRY((!\inst|PC\(13) & !\inst|Add2~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(13),
	datad => VCC,
	cin => \inst|Add2~25\,
	combout => \inst|Add2~26_combout\,
	cout => \inst|Add2~27\);

-- Location: LCCOMB_X23_Y13_N14
\inst|Selector29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector29~2_combout\ = (\inst|PC[15]~5_combout\ & (((\inst|Selector29~1_combout\)))) # (!\inst|PC[15]~5_combout\ & ((\inst|Selector29~1_combout\ & ((\inst|Add2~26_combout\))) # (!\inst|Selector29~1_combout\ & (\inst|Add3~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC[15]~5_combout\,
	datab => \inst|Add3~26_combout\,
	datac => \inst|Selector29~1_combout\,
	datad => \inst|Add2~26_combout\,
	combout => \inst|Selector29~2_combout\);

-- Location: FF_X23_Y13_N15
\inst|PC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector29~2_combout\,
	clrn => \reset~input_o\,
	ena => \inst|PC[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(13));

-- Location: LCCOMB_X24_Y13_N28
\inst|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~28_combout\ = (\inst|PC\(14) & ((GND) # (!\inst|Add2~27\))) # (!\inst|PC\(14) & (\inst|Add2~27\ $ (GND)))
-- \inst|Add2~29\ = CARRY((\inst|PC\(14)) # (!\inst|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(14),
	datad => VCC,
	cin => \inst|Add2~27\,
	combout => \inst|Add2~28_combout\,
	cout => \inst|Add2~29\);

-- Location: LCCOMB_X20_Y13_N28
\inst|Add3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~28_combout\ = (\inst|PC\(14) & (\inst|Add3~27\ $ (GND))) # (!\inst|PC\(14) & (!\inst|Add3~27\ & VCC))
-- \inst|Add3~29\ = CARRY((\inst|PC\(14) & !\inst|Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(14),
	datad => VCC,
	cin => \inst|Add3~27\,
	combout => \inst|Add3~28_combout\,
	cout => \inst|Add3~29\);

-- Location: LCCOMB_X19_Y13_N28
\inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~28_combout\ = (\inst|PC\(14) & (\inst|Add0~27\ $ (GND))) # (!\inst|PC\(14) & (!\inst|Add0~27\ & VCC))
-- \inst|Add0~29\ = CARRY((\inst|PC\(14) & !\inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(14),
	datad => VCC,
	cin => \inst|Add0~27\,
	combout => \inst|Add0~28_combout\,
	cout => \inst|Add0~29\);

-- Location: LCCOMB_X21_Y13_N18
\inst|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector28~0_combout\ = (\inst|Equal58~2_combout\) # ((!\inst|Equal39~0_combout\ & (\inst|Add0~28_combout\ & \inst|WideNor0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal58~2_combout\,
	datab => \inst|Equal39~0_combout\,
	datac => \inst|Add0~28_combout\,
	datad => \inst|WideNor0~combout\,
	combout => \inst|Selector28~0_combout\);

-- Location: LCCOMB_X21_Y13_N12
\inst|Selector28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector28~1_combout\ = (\inst|PC[15]~2_combout\ & (((!\inst|PC[15]~5_combout\)))) # (!\inst|PC[15]~2_combout\ & ((\inst|PC[15]~5_combout\ & ((\inst|Selector28~0_combout\))) # (!\inst|PC[15]~5_combout\ & (\inst|Add3~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC[15]~2_combout\,
	datab => \inst|Add3~28_combout\,
	datac => \inst|PC[15]~5_combout\,
	datad => \inst|Selector28~0_combout\,
	combout => \inst|Selector28~1_combout\);

-- Location: LCCOMB_X21_Y13_N22
\inst|Selector28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector28~2_combout\ = (\inst|PC[15]~2_combout\ & ((\inst|Selector28~1_combout\ & ((\inst|Add2~28_combout\))) # (!\inst|Selector28~1_combout\ & (\inst|PCH\(6))))) # (!\inst|PC[15]~2_combout\ & (((\inst|Selector28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC[15]~2_combout\,
	datab => \inst|PCH\(6),
	datac => \inst|Add2~28_combout\,
	datad => \inst|Selector28~1_combout\,
	combout => \inst|Selector28~2_combout\);

-- Location: FF_X21_Y13_N23
\inst|PC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector28~2_combout\,
	clrn => \reset~input_o\,
	ena => \inst|PC[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(14));

-- Location: LCCOMB_X28_Y13_N10
\inst|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector1~0_combout\ = (\inst|Dir[10]~23_combout\ & (((\inst|PC\(14) & \inst|B[7]~11_combout\)) # (!\inst|WideOr2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr2~combout\,
	datab => \inst|PC\(14),
	datac => \inst|Dir[10]~23_combout\,
	datad => \inst|B[7]~11_combout\,
	combout => \inst|Selector1~0_combout\);

-- Location: FF_X28_Y13_N11
\inst|Dir[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Selector1~0_combout\,
	ena => \inst|Dir[15]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Dir\(14));

-- Location: LCCOMB_X19_Y13_N30
\inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~30_combout\ = \inst|PC\(15) $ (\inst|Add0~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(15),
	cin => \inst|Add0~29\,
	combout => \inst|Add0~30_combout\);

-- Location: FF_X23_Y13_N17
\inst|PCH[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|output\(7),
	sload => VCC,
	ena => \inst|PCH[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PCH\(7));

-- Location: LCCOMB_X23_Y13_N16
\inst|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector27~0_combout\ = (\inst|PC[15]~5_combout\ & ((\inst|PC[15]~2_combout\ & ((\inst|PCH\(7)))) # (!\inst|PC[15]~2_combout\ & (\inst|Add0~30_combout\)))) # (!\inst|PC[15]~5_combout\ & (((\inst|PC[15]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~30_combout\,
	datab => \inst|PC[15]~5_combout\,
	datac => \inst|PCH\(7),
	datad => \inst|PC[15]~2_combout\,
	combout => \inst|Selector27~0_combout\);

-- Location: LCCOMB_X24_Y13_N30
\inst|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~30_combout\ = \inst|PC\(15) $ (!\inst|Add2~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(15),
	cin => \inst|Add2~29\,
	combout => \inst|Add2~30_combout\);

-- Location: LCCOMB_X20_Y13_N30
\inst|Add3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~30_combout\ = \inst|PC\(15) $ (\inst|Add3~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(15),
	cin => \inst|Add3~29\,
	combout => \inst|Add3~30_combout\);

-- Location: LCCOMB_X23_Y13_N6
\inst|Selector27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector27~1_combout\ = (\inst|PC[15]~5_combout\ & (\inst|Selector27~0_combout\)) # (!\inst|PC[15]~5_combout\ & ((\inst|Selector27~0_combout\ & (\inst|Add2~30_combout\)) # (!\inst|Selector27~0_combout\ & ((\inst|Add3~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC[15]~5_combout\,
	datab => \inst|Selector27~0_combout\,
	datac => \inst|Add2~30_combout\,
	datad => \inst|Add3~30_combout\,
	combout => \inst|Selector27~1_combout\);

-- Location: LCCOMB_X23_Y13_N0
\inst|Selector27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector27~2_combout\ = (\inst|Selector27~1_combout\ & ((\inst|PC[15]~2_combout\) # ((\inst|WideOr2~23_combout\ & \inst|WideNor0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr2~23_combout\,
	datab => \inst|WideNor0~combout\,
	datac => \inst|PC[15]~2_combout\,
	datad => \inst|Selector27~1_combout\,
	combout => \inst|Selector27~2_combout\);

-- Location: FF_X23_Y13_N1
\inst|PC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector27~2_combout\,
	clrn => \reset~input_o\,
	ena => \inst|PC[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(15));

-- Location: LCCOMB_X28_Y13_N8
\inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector0~0_combout\ = (\inst|Dir[10]~23_combout\ & (((\inst|PC\(15) & \inst|B[7]~11_combout\)) # (!\inst|WideOr2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr2~combout\,
	datab => \inst|Dir[10]~23_combout\,
	datac => \inst|PC\(15),
	datad => \inst|B[7]~11_combout\,
	combout => \inst|Selector0~0_combout\);

-- Location: FF_X28_Y13_N9
\inst|Dir[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Selector0~0_combout\,
	ena => \inst|Dir[15]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Dir\(15));

-- Location: LCCOMB_X21_Y14_N10
\inst|Aux[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Aux[6]~feeder_combout\ = \inst1|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|output\(6),
	combout => \inst|Aux[6]~feeder_combout\);

-- Location: FF_X21_Y14_N11
\inst|Aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Aux[6]~feeder_combout\,
	ena => \inst|Aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Aux\(6));

-- Location: LCCOMB_X26_Y14_N16
\inst|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector9~0_combout\ = (\inst|Dir[2]~20_combout\ & (((\inst|Dir[10]~21_combout\)))) # (!\inst|Dir[2]~20_combout\ & ((\inst|Dir[10]~21_combout\ & (\inst|PC\(6))) # (!\inst|Dir[10]~21_combout\ & ((!\inst|SPL\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(6),
	datab => \inst|SPL\(6),
	datac => \inst|Dir[2]~20_combout\,
	datad => \inst|Dir[10]~21_combout\,
	combout => \inst|Selector9~0_combout\);

-- Location: LCCOMB_X27_Y12_N0
\inst|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector9~1_combout\ = (\inst|Selector9~0_combout\ & (((\inst|Yupa\(6)) # (!\inst|Dir[2]~20_combout\)))) # (!\inst|Selector9~0_combout\ & (\inst|Aux\(6) & ((\inst|Dir[2]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Aux\(6),
	datab => \inst|Yupa\(6),
	datac => \inst|Selector9~0_combout\,
	datad => \inst|Dir[2]~20_combout\,
	combout => \inst|Selector9~1_combout\);

-- Location: FF_X27_Y12_N1
\inst|Dir[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Selector9~1_combout\,
	ena => \inst|Dir[15]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Dir\(6));

-- Location: LCCOMB_X28_Y13_N16
\inst|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector5~0_combout\ = (\inst|Dir[10]~23_combout\ & (((\inst|B[7]~11_combout\ & \inst|PC\(10))) # (!\inst|WideOr2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|B[7]~11_combout\,
	datab => \inst|PC\(10),
	datac => \inst|WideOr2~combout\,
	datad => \inst|Dir[10]~23_combout\,
	combout => \inst|Selector5~0_combout\);

-- Location: FF_X28_Y13_N17
\inst|Dir[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Selector5~0_combout\,
	ena => \inst|Dir[15]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Dir\(10));

-- Location: LCCOMB_X28_Y13_N14
\inst1|Equal44~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal44~2_combout\ = (\inst|Dir\(14) & (\inst|Dir\(15) & (\inst|Dir\(6) & \inst|Dir\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dir\(14),
	datab => \inst|Dir\(15),
	datac => \inst|Dir\(6),
	datad => \inst|Dir\(10),
	combout => \inst1|Equal44~2_combout\);

-- Location: LCCOMB_X26_Y14_N18
\inst|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector11~0_combout\ = (\inst|Dir[2]~20_combout\ & (((\inst|Dir[10]~21_combout\)))) # (!\inst|Dir[2]~20_combout\ & ((\inst|Dir[10]~21_combout\ & (!\inst|PC\(4))) # (!\inst|Dir[10]~21_combout\ & ((!\inst|SPL\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(4),
	datab => \inst|SPL\(4),
	datac => \inst|Dir[2]~20_combout\,
	datad => \inst|Dir[10]~21_combout\,
	combout => \inst|Selector11~0_combout\);

-- Location: FF_X21_Y14_N31
\inst|Aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|output\(4),
	sload => VCC,
	ena => \inst|Aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Aux\(4));

-- Location: LCCOMB_X27_Y13_N0
\inst|Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector11~1_combout\ = (\inst|Selector11~0_combout\ & ((\inst|Yupa\(4)) # ((!\inst|Dir[2]~20_combout\)))) # (!\inst|Selector11~0_combout\ & (((\inst|Aux\(4) & \inst|Dir[2]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Yupa\(4),
	datab => \inst|Selector11~0_combout\,
	datac => \inst|Aux\(4),
	datad => \inst|Dir[2]~20_combout\,
	combout => \inst|Selector11~1_combout\);

-- Location: FF_X27_Y13_N1
\inst|Dir[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Selector11~1_combout\,
	ena => \inst|Dir[15]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Dir\(4));

-- Location: LCCOMB_X28_Y13_N22
\inst|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector2~0_combout\ = (\inst|Dir[10]~23_combout\ & (((\inst|PC\(13) & \inst|B[7]~11_combout\)) # (!\inst|WideOr2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr2~combout\,
	datab => \inst|Dir[10]~23_combout\,
	datac => \inst|PC\(13),
	datad => \inst|B[7]~11_combout\,
	combout => \inst|Selector2~0_combout\);

-- Location: FF_X28_Y13_N23
\inst|Dir[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Selector2~0_combout\,
	ena => \inst|Dir[15]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Dir\(13));

-- Location: LCCOMB_X28_Y13_N2
\inst|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector7~0_combout\ = (\inst|Dir[10]~23_combout\ & (((\inst|B[7]~11_combout\ & \inst|PC\(8))) # (!\inst|WideOr2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|B[7]~11_combout\,
	datab => \inst|PC\(8),
	datac => \inst|WideOr2~combout\,
	datad => \inst|Dir[10]~23_combout\,
	combout => \inst|Selector7~0_combout\);

-- Location: FF_X28_Y13_N3
\inst|Dir[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Selector7~0_combout\,
	ena => \inst|Dir[15]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Dir\(8));

-- Location: LCCOMB_X28_Y13_N30
\inst|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector3~0_combout\ = (\inst|Dir[10]~23_combout\ & (((\inst|B[7]~11_combout\ & \inst|PC\(12))) # (!\inst|WideOr2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|B[7]~11_combout\,
	datab => \inst|PC\(12),
	datac => \inst|WideOr2~combout\,
	datad => \inst|Dir[10]~23_combout\,
	combout => \inst|Selector3~0_combout\);

-- Location: FF_X28_Y13_N31
\inst|Dir[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Selector3~0_combout\,
	ena => \inst|Dir[15]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Dir\(12));

-- Location: LCCOMB_X28_Y13_N6
\inst|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector6~0_combout\ = (\inst|Dir[10]~23_combout\ & (((\inst|PC\(9) & \inst|B[7]~11_combout\)) # (!\inst|WideOr2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr2~combout\,
	datab => \inst|Dir[10]~23_combout\,
	datac => \inst|PC\(9),
	datad => \inst|B[7]~11_combout\,
	combout => \inst|Selector6~0_combout\);

-- Location: FF_X28_Y13_N7
\inst|Dir[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Selector6~0_combout\,
	ena => \inst|Dir[15]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Dir\(9));

-- Location: LCCOMB_X28_Y13_N18
\inst1|Equal44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal44~0_combout\ = (\inst|Dir\(13) & (\inst|Dir\(8) & (\inst|Dir\(12) & \inst|Dir\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dir\(13),
	datab => \inst|Dir\(8),
	datac => \inst|Dir\(12),
	datad => \inst|Dir\(9),
	combout => \inst1|Equal44~0_combout\);

-- Location: LCCOMB_X27_Y13_N14
\inst1|Equal44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal44~1_combout\ = (\inst|Dir\(4) & (\inst|Dir\(5) & \inst1|Equal44~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Dir\(4),
	datac => \inst|Dir\(5),
	datad => \inst1|Equal44~0_combout\,
	combout => \inst1|Equal44~1_combout\);

-- Location: LCCOMB_X28_Y13_N0
\inst1|Equal44~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal44~3_combout\ = (\inst|Dir\(11) & (\inst1|Equal44~2_combout\ & (\inst|Dir\(7) & \inst1|Equal44~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dir\(11),
	datab => \inst1|Equal44~2_combout\,
	datac => \inst|Dir\(7),
	datad => \inst1|Equal44~1_combout\,
	combout => \inst1|Equal44~3_combout\);

-- Location: LCCOMB_X29_Y12_N6
\inst1|Equal50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal50~0_combout\ = (\inst1|Equal1~0_combout\ & (\inst|Dir\(2) & (\inst1|Equal44~3_combout\ & \inst|Dir\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal1~0_combout\,
	datab => \inst|Dir\(2),
	datac => \inst1|Equal44~3_combout\,
	datad => \inst|Dir\(3),
	combout => \inst1|Equal50~0_combout\);

-- Location: LCCOMB_X23_Y16_N8
\inst|Equal46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal46~0_combout\ = (!\inst|e_siguiente\(7) & (\inst|Equal4~2_combout\ & (\inst|Equal36~0_combout\ & \inst|e_siguiente\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(7),
	datab => \inst|Equal4~2_combout\,
	datac => \inst|Equal36~0_combout\,
	datad => \inst|e_siguiente\(3),
	combout => \inst|Equal46~0_combout\);

-- Location: LCCOMB_X21_Y16_N14
\inst|XH[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|XH[7]~2_combout\ = (\reset~input_o\ & (!\inst|e_siguiente\(0) & (!\inst|e_siguiente\(1) & \inst|Equal67~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \inst|e_siguiente\(0),
	datac => \inst|e_siguiente\(1),
	datad => \inst|Equal67~1_combout\,
	combout => \inst|XH[7]~2_combout\);

-- Location: FF_X23_Y12_N15
\inst|XH[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|output\(3),
	sload => VCC,
	ena => \inst|XH[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|XH\(3));

-- Location: LCCOMB_X24_Y16_N6
\inst|Equal44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal44~1_combout\ = (\inst|Equal2~0_combout\ & (\inst|Equal36~0_combout\ & (\inst|e_siguiente\(3) & !\inst|e_siguiente\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~0_combout\,
	datab => \inst|Equal36~0_combout\,
	datac => \inst|e_siguiente\(3),
	datad => \inst|e_siguiente\(7),
	combout => \inst|Equal44~1_combout\);

-- Location: LCCOMB_X23_Y12_N14
\inst|Selector74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector74~0_combout\ = (\inst|Equal46~0_combout\ & ((\inst|XH\(3)) # ((\inst|XL\(3) & \inst|Equal44~1_combout\)))) # (!\inst|Equal46~0_combout\ & (\inst|XL\(3) & ((\inst|Equal44~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal46~0_combout\,
	datab => \inst|XL\(3),
	datac => \inst|XH\(3),
	datad => \inst|Equal44~1_combout\,
	combout => \inst|Selector74~0_combout\);

-- Location: LCCOMB_X23_Y16_N26
\inst|Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal7~1_combout\ = (!\inst|e_siguiente\(0) & (!\inst|e_siguiente\(10) & \inst|e_siguiente\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|e_siguiente\(0),
	datac => \inst|e_siguiente\(10),
	datad => \inst|e_siguiente\(1),
	combout => \inst|Equal7~1_combout\);

-- Location: LCCOMB_X24_Y16_N14
\inst|Data_out~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Data_out~13_combout\ = (\inst|Equal2~0_combout\ & ((\inst|Equal48~0_combout\) # ((\inst|Equal7~1_combout\ & \inst|Equal20~1_combout\)))) # (!\inst|Equal2~0_combout\ & (((\inst|Equal7~1_combout\ & \inst|Equal20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~0_combout\,
	datab => \inst|Equal48~0_combout\,
	datac => \inst|Equal7~1_combout\,
	datad => \inst|Equal20~1_combout\,
	combout => \inst|Data_out~13_combout\);

-- Location: LCCOMB_X24_Y16_N12
\inst|Data_out~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Data_out~12_combout\ = (\inst|Equal4~2_combout\ & ((\inst|Equal48~0_combout\) # ((\inst|e_siguiente\(10) & \inst|Equal20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal4~2_combout\,
	datab => \inst|Equal48~0_combout\,
	datac => \inst|e_siguiente\(10),
	datad => \inst|Equal20~1_combout\,
	combout => \inst|Data_out~12_combout\);

-- Location: LCCOMB_X25_Y12_N24
\inst|Selector74~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector74~4_combout\ = (\inst|Data_out~13_combout\ & ((\inst|A\(3)) # ((\inst|B\(3) & \inst|Data_out~12_combout\)))) # (!\inst|Data_out~13_combout\ & (\inst|B\(3) & ((\inst|Data_out~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out~13_combout\,
	datab => \inst|B\(3),
	datac => \inst|A\(3),
	datad => \inst|Data_out~12_combout\,
	combout => \inst|Selector74~4_combout\);

-- Location: LCCOMB_X21_Y14_N16
\inst|Selector51~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector51~1_combout\ = (\inst1|output\(7) & (((\inst1|output\(3) & \inst|Equal61~0_combout\)) # (!\inst|SPL[7]~0_combout\))) # (!\inst1|output\(7) & (((\inst1|output\(3) & \inst|Equal61~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output\(7),
	datab => \inst|SPL[7]~0_combout\,
	datac => \inst1|output\(3),
	datad => \inst|Equal61~0_combout\,
	combout => \inst|Selector51~1_combout\);

-- Location: LCCOMB_X23_Y14_N28
\inst|Selector51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector51~0_combout\ = (\inst|Yupa\(7) & ((\inst|Equal19~0_combout\) # (!\inst|B[7]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal19~0_combout\,
	datac => \inst|Yupa\(7),
	datad => \inst|B[7]~11_combout\,
	combout => \inst|Selector51~0_combout\);

-- Location: LCCOMB_X24_Y15_N14
\inst|Dir[15]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Dir[15]~25_combout\ = (\inst|e_siguiente\(0)) # (!\inst|Equal63~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal63~1_combout\,
	datab => \inst|e_siguiente\(0),
	combout => \inst|Dir[15]~25_combout\);

-- Location: LCCOMB_X23_Y14_N10
\inst|WideOr31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr31~combout\ = (\inst|Equal33~2_combout\) # (((\inst|Yupa[7]~10_combout\) # (!\inst|B[7]~7_combout\)) # (!\inst|Dir[15]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal33~2_combout\,
	datab => \inst|Dir[15]~25_combout\,
	datac => \inst|Yupa[7]~10_combout\,
	datad => \inst|B[7]~7_combout\,
	combout => \inst|WideOr31~combout\);

-- Location: LCCOMB_X23_Y14_N22
\inst|Selector51~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector51~2_combout\ = (!\inst|Selector51~1_combout\ & (!\inst|Selector51~0_combout\ & ((\inst|estados\(3)) # (!\inst|WideOr31~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector51~1_combout\,
	datab => \inst|Selector51~0_combout\,
	datac => \inst|estados\(3),
	datad => \inst|WideOr31~combout\,
	combout => \inst|Selector51~2_combout\);

-- Location: FF_X23_Y14_N23
\inst|estados[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector51~2_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|estados\(3));

-- Location: LCCOMB_X26_Y16_N26
\inst|Data_out~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Data_out~10_combout\ = (\inst|Equal4~2_combout\ & ((\inst|Equal36~1_combout\) # ((\inst|Equal54~3_combout\ & \inst|Equal14~0_combout\)))) # (!\inst|Equal4~2_combout\ & (((\inst|Equal54~3_combout\ & \inst|Equal14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal4~2_combout\,
	datab => \inst|Equal36~1_combout\,
	datac => \inst|Equal54~3_combout\,
	datad => \inst|Equal14~0_combout\,
	combout => \inst|Data_out~10_combout\);

-- Location: LCCOMB_X25_Y12_N16
\inst|Selector74~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector74~2_combout\ = (\inst|estados\(3) & (((\inst|PC\(11) & \inst|Data_out~10_combout\)))) # (!\inst|estados\(3) & ((\inst|Equal52~1_combout\) # ((\inst|PC\(11) & \inst|Data_out~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|estados\(3),
	datab => \inst|Equal52~1_combout\,
	datac => \inst|PC\(11),
	datad => \inst|Data_out~10_combout\,
	combout => \inst|Selector74~2_combout\);

-- Location: LCCOMB_X27_Y18_N18
\inst|Equal55~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal55~1_combout\ = (!\inst|e_siguiente\(1) & (\inst|e_siguiente\(10) & (!\inst|e_siguiente\(8) & \inst|e_siguiente\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(1),
	datab => \inst|e_siguiente\(10),
	datac => \inst|e_siguiente\(8),
	datad => \inst|e_siguiente\(0),
	combout => \inst|Equal55~1_combout\);

-- Location: LCCOMB_X27_Y18_N16
\inst|Data_out~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Data_out~11_combout\ = (\inst|Equal2~0_combout\ & ((\inst|Equal36~1_combout\) # ((\inst|Equal55~0_combout\ & \inst|Equal55~1_combout\)))) # (!\inst|Equal2~0_combout\ & (\inst|Equal55~0_combout\ & ((\inst|Equal55~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~0_combout\,
	datab => \inst|Equal55~0_combout\,
	datac => \inst|Equal36~1_combout\,
	datad => \inst|Equal55~1_combout\,
	combout => \inst|Data_out~11_combout\);

-- Location: LCCOMB_X25_Y12_N22
\inst|Selector74~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector74~3_combout\ = (\inst|Selector74~2_combout\) # ((\inst|PC\(3) & \inst|Data_out~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(3),
	datab => \inst|Selector74~2_combout\,
	datad => \inst|Data_out~11_combout\,
	combout => \inst|Selector74~3_combout\);

-- Location: LCCOMB_X26_Y13_N28
\inst|YL[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|YL[3]~feeder_combout\ = \inst1|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|output\(3),
	combout => \inst|YL[3]~feeder_combout\);

-- Location: LCCOMB_X24_Y15_N6
\inst|YL[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|YL[7]~2_combout\ = (\inst|e_siguiente\(1) & (!\inst|e_siguiente\(0) & (\reset~input_o\ & \inst|Equal71~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(1),
	datab => \inst|e_siguiente\(0),
	datac => \reset~input_o\,
	datad => \inst|Equal71~0_combout\,
	combout => \inst|YL[7]~2_combout\);

-- Location: FF_X26_Y13_N29
\inst|YL[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|YL[3]~feeder_combout\,
	ena => \inst|YL[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|YL\(3));

-- Location: LCCOMB_X24_Y15_N20
\inst|YH[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|YH[7]~2_combout\ = (!\inst|e_siguiente\(1) & (!\inst|e_siguiente\(0) & (\reset~input_o\ & \inst|Equal71~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(1),
	datab => \inst|e_siguiente\(0),
	datac => \reset~input_o\,
	datad => \inst|Equal71~0_combout\,
	combout => \inst|YH[7]~2_combout\);

-- Location: FF_X26_Y12_N27
\inst|YH[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|output\(3),
	sload => VCC,
	ena => \inst|YH[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|YH\(3));

-- Location: LCCOMB_X26_Y12_N26
\inst|Selector74~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector74~1_combout\ = (\inst|Equal42~0_combout\ & ((\inst|YH\(3)) # ((\inst|YL\(3) & \inst|Equal40~2_combout\)))) # (!\inst|Equal42~0_combout\ & (\inst|YL\(3) & ((\inst|Equal40~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal42~0_combout\,
	datab => \inst|YL\(3),
	datac => \inst|YH\(3),
	datad => \inst|Equal40~2_combout\,
	combout => \inst|Selector74~1_combout\);

-- Location: LCCOMB_X25_Y12_N12
\inst|Selector74~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector74~5_combout\ = (\inst|Selector74~0_combout\) # ((\inst|Selector74~4_combout\) # ((\inst|Selector74~3_combout\) # (\inst|Selector74~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector74~0_combout\,
	datab => \inst|Selector74~4_combout\,
	datac => \inst|Selector74~3_combout\,
	datad => \inst|Selector74~1_combout\,
	combout => \inst|Selector74~5_combout\);

-- Location: LCCOMB_X24_Y16_N20
\inst|Data_out[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Data_out[7]~14_combout\ = (\inst|Data_out[7]~7_combout\ & (\inst|Data_out[7]~8_combout\ & ((!\inst|Equal75~0_combout\) # (!\inst|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~0_combout\,
	datab => \inst|Equal75~0_combout\,
	datac => \inst|Data_out[7]~7_combout\,
	datad => \inst|Data_out[7]~8_combout\,
	combout => \inst|Data_out[7]~14_combout\);

-- Location: LCCOMB_X26_Y16_N16
\inst|Data_out[7]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Data_out[7]~17_combout\ = (!\inst|Equal18~3_combout\ & ((\inst|e_siguiente\(1)) # ((!\inst|Equal20~1_combout\) # (!\inst|e_siguiente\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal18~3_combout\,
	datab => \inst|e_siguiente\(1),
	datac => \inst|e_siguiente\(0),
	datad => \inst|Equal20~1_combout\,
	combout => \inst|Data_out[7]~17_combout\);

-- Location: LCCOMB_X24_Y12_N28
\inst|Data_out[7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Data_out[7]~15_combout\ = (\inst|Data_out[7]~14_combout\ & (\inst|Data_out[7]~17_combout\ & (\inst|Yupa[7]~27_combout\ & \inst|WideNor0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out[7]~14_combout\,
	datab => \inst|Data_out[7]~17_combout\,
	datac => \inst|Yupa[7]~27_combout\,
	datad => \inst|WideNor0~combout\,
	combout => \inst|Data_out[7]~15_combout\);

-- Location: FF_X25_Y12_N13
\inst|Data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector74~5_combout\,
	ena => \inst|Data_out[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Data_out\(3));

-- Location: LCCOMB_X25_Y16_N20
\inst|Data_out[7]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Data_out[7]~16_combout\ = (\inst|Data_out[7]~7_combout\ & ((\inst|e_siguiente\(1)) # ((\inst|e_siguiente\(0)) # (!\inst|Equal75~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(1),
	datab => \inst|e_siguiente\(0),
	datac => \inst|Equal75~0_combout\,
	datad => \inst|Data_out[7]~7_combout\,
	combout => \inst|Data_out[7]~16_combout\);

-- Location: LCCOMB_X26_Y14_N6
\inst|WideOr39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr39~2_combout\ = ((\inst|Equal18~3_combout\) # ((!\inst|Data_out[7]~8_combout\) # (!\inst|Data_out[7]~16_combout\))) # (!\inst|WideOr39~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr39~1_combout\,
	datab => \inst|Equal18~3_combout\,
	datac => \inst|Data_out[7]~16_combout\,
	datad => \inst|Data_out[7]~8_combout\,
	combout => \inst|WideOr39~2_combout\);

-- Location: LCCOMB_X26_Y14_N28
\inst|WideOr39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr39~combout\ = ((\inst|WideOr39~2_combout\) # ((\inst|Yupa[7]~10_combout\ & \inst|B[7]~7_combout\))) # (!\inst|Dir[15]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dir[15]~14_combout\,
	datab => \inst|Yupa[7]~10_combout\,
	datac => \inst|B[7]~7_combout\,
	datad => \inst|WideOr39~2_combout\,
	combout => \inst|WideOr39~combout\);

-- Location: LCCOMB_X27_Y14_N16
\inst|Selector78~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector78~1_combout\ = (\inst|Selector78~0_combout\ & (\inst|WideOr2~23_combout\ & ((\inst|nRW~q\) # (!\inst|WideOr39~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector78~0_combout\,
	datab => \inst|WideOr2~23_combout\,
	datac => \inst|nRW~q\,
	datad => \inst|WideOr39~combout\,
	combout => \inst|Selector78~1_combout\);

-- Location: FF_X27_Y14_N17
\inst|nRW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Selector78~1_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|nRW~q\);

-- Location: LCCOMB_X28_Y12_N28
\inst1|YL[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|YL[0]~0_combout\ = (\inst|nRW~q\ & \inst1|Equal50~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|nRW~q\,
	datad => \inst1|Equal50~0_combout\,
	combout => \inst1|YL[0]~0_combout\);

-- Location: CLKCTRL_G19
\inst1|YL[0]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|YL[0]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|YL[0]~0clkctrl_outclk\);

-- Location: LCCOMB_X28_Y12_N24
\inst1|YL[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|YL\(3) = (GLOBAL(\inst1|YL[0]~0clkctrl_outclk\) & (\inst|Data_out\(3))) # (!GLOBAL(\inst1|YL[0]~0clkctrl_outclk\) & ((\inst1|YL\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(3),
	datab => \inst1|YL\(3),
	datad => \inst1|YL[0]~0clkctrl_outclk\,
	combout => \inst1|YL\(3));

-- Location: LCCOMB_X27_Y14_N14
\inst1|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal2~0_combout\ = (!\inst|Dir\(0) & \inst|Dir\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Dir\(0),
	datad => \inst|Dir\(1),
	combout => \inst1|Equal2~0_combout\);

-- Location: LCCOMB_X29_Y12_N18
\inst1|Equal51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal51~0_combout\ = (\inst1|Equal2~0_combout\ & (\inst|Dir\(2) & (\inst1|Equal44~3_combout\ & \inst|Dir\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal2~0_combout\,
	datab => \inst|Dir\(2),
	datac => \inst1|Equal44~3_combout\,
	datad => \inst|Dir\(3),
	combout => \inst1|Equal51~0_combout\);

-- Location: LCCOMB_X27_Y14_N28
\inst1|PCH[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|PCH[0]~0_combout\ = (\inst1|Equal51~0_combout\ & \inst|nRW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Equal51~0_combout\,
	datad => \inst|nRW~q\,
	combout => \inst1|PCH[0]~0_combout\);

-- Location: CLKCTRL_G16
\inst1|PCH[0]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|PCH[0]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|PCH[0]~0clkctrl_outclk\);

-- Location: LCCOMB_X28_Y12_N30
\inst1|PCH[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|PCH\(3) = (GLOBAL(\inst1|PCH[0]~0clkctrl_outclk\) & (\inst|Data_out\(3))) # (!GLOBAL(\inst1|PCH[0]~0clkctrl_outclk\) & ((\inst1|PCH\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(3),
	datac => \inst1|PCH\(3),
	datad => \inst1|PCH[0]~0clkctrl_outclk\,
	combout => \inst1|PCH\(3));

-- Location: LCCOMB_X29_Y12_N0
\inst1|output[3]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[3]~89_combout\ = (\inst1|Equal50~0_combout\ & ((\inst1|YL\(3)) # ((\inst1|Equal51~0_combout\ & \inst1|PCH\(3))))) # (!\inst1|Equal50~0_combout\ & (((\inst1|Equal51~0_combout\ & \inst1|PCH\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal50~0_combout\,
	datab => \inst1|YL\(3),
	datac => \inst1|Equal51~0_combout\,
	datad => \inst1|PCH\(3),
	combout => \inst1|output[3]~89_combout\);

-- Location: LCCOMB_X30_Y14_N2
\inst1|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal6~0_combout\ = (\inst|Dir\(1) & \inst|Dir\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Dir\(1),
	datad => \inst|Dir\(0),
	combout => \inst1|Equal6~0_combout\);

-- Location: LCCOMB_X29_Y15_N2
\inst1|Equal48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal48~0_combout\ = (\inst1|Equal6~0_combout\ & (\inst|Dir\(3) & (\inst1|Equal44~3_combout\ & !\inst|Dir\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal6~0_combout\,
	datab => \inst|Dir\(3),
	datac => \inst1|Equal44~3_combout\,
	datad => \inst|Dir\(2),
	combout => \inst1|Equal48~0_combout\);

-- Location: LCCOMB_X29_Y15_N28
\inst1|Equal46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal46~0_combout\ = (\inst1|Equal1~0_combout\ & (\inst|Dir\(3) & (!\inst|Dir\(2) & \inst1|Equal44~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal1~0_combout\,
	datab => \inst|Dir\(3),
	datac => \inst|Dir\(2),
	datad => \inst1|Equal44~3_combout\,
	combout => \inst1|Equal46~0_combout\);

-- Location: LCCOMB_X28_Y15_N14
\inst1|ACCA[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ACCA[0]~0_combout\ = (\inst|nRW~q\ & \inst1|Equal46~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|nRW~q\,
	datad => \inst1|Equal46~0_combout\,
	combout => \inst1|ACCA[0]~0_combout\);

-- Location: CLKCTRL_G12
\inst1|ACCA[0]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|ACCA[0]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|ACCA[0]~0clkctrl_outclk\);

-- Location: LCCOMB_X30_Y15_N22
\inst1|ACCA[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ACCA\(3) = (GLOBAL(\inst1|ACCA[0]~0clkctrl_outclk\) & (\inst|Data_out\(3))) # (!GLOBAL(\inst1|ACCA[0]~0clkctrl_outclk\) & ((\inst1|ACCA\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Data_out\(3),
	datac => \inst1|ACCA\(3),
	datad => \inst1|ACCA[0]~0clkctrl_outclk\,
	combout => \inst1|ACCA\(3));

-- Location: LCCOMB_X29_Y15_N10
\inst1|Equal45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal45~0_combout\ = (\inst|Dir\(3) & (\inst1|Equal0~5_combout\ & (!\inst|Dir\(2) & \inst1|Equal44~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dir\(3),
	datab => \inst1|Equal0~5_combout\,
	datac => \inst|Dir\(2),
	datad => \inst1|Equal44~3_combout\,
	combout => \inst1|Equal45~0_combout\);

-- Location: LCCOMB_X28_Y15_N16
\inst1|ACCB[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ACCB[0]~0_combout\ = (\inst1|Equal45~0_combout\ & \inst|nRW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal45~0_combout\,
	datac => \inst|nRW~q\,
	combout => \inst1|ACCB[0]~0_combout\);

-- Location: CLKCTRL_G8
\inst1|ACCB[0]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|ACCB[0]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|ACCB[0]~0clkctrl_outclk\);

-- Location: LCCOMB_X30_Y15_N16
\inst1|ACCB[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ACCB\(3) = (GLOBAL(\inst1|ACCB[0]~0clkctrl_outclk\) & (\inst|Data_out\(3))) # (!GLOBAL(\inst1|ACCB[0]~0clkctrl_outclk\) & ((\inst1|ACCB\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(3),
	datac => \inst1|ACCB[0]~0clkctrl_outclk\,
	datad => \inst1|ACCB\(3),
	combout => \inst1|ACCB\(3));

-- Location: LCCOMB_X30_Y15_N0
\inst1|output[3]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[3]~86_combout\ = (\inst1|ACCA\(3) & ((\inst1|Equal46~0_combout\) # ((\inst1|Equal45~0_combout\ & \inst1|ACCB\(3))))) # (!\inst1|ACCA\(3) & (((\inst1|Equal45~0_combout\ & \inst1|ACCB\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ACCA\(3),
	datab => \inst1|Equal46~0_combout\,
	datac => \inst1|Equal45~0_combout\,
	datad => \inst1|ACCB\(3),
	combout => \inst1|output[3]~86_combout\);

-- Location: LCCOMB_X29_Y15_N16
\inst1|XL[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|XL[0]~0_combout\ = (\inst1|Equal48~0_combout\ & \inst|nRW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal48~0_combout\,
	datad => \inst|nRW~q\,
	combout => \inst1|XL[0]~0_combout\);

-- Location: CLKCTRL_G11
\inst1|XL[0]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|XL[0]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|XL[0]~0clkctrl_outclk\);

-- Location: LCCOMB_X31_Y13_N20
\inst1|XL[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|XL\(3) = (GLOBAL(\inst1|XL[0]~0clkctrl_outclk\) & (\inst|Data_out\(3))) # (!GLOBAL(\inst1|XL[0]~0clkctrl_outclk\) & ((\inst1|XL\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(3),
	datac => \inst1|XL[0]~0clkctrl_outclk\,
	datad => \inst1|XL\(3),
	combout => \inst1|XL\(3));

-- Location: LCCOMB_X31_Y13_N12
\inst1|Equal45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal45~1_combout\ = (\inst|Dir\(3) & \inst1|Equal44~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Dir\(3),
	datad => \inst1|Equal44~3_combout\,
	combout => \inst1|Equal45~1_combout\);

-- Location: LCCOMB_X27_Y14_N20
\inst1|Equal47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal47~0_combout\ = (\inst|Dir\(3) & (\inst1|Equal2~0_combout\ & (\inst1|Equal44~3_combout\ & !\inst|Dir\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dir\(3),
	datab => \inst1|Equal2~0_combout\,
	datac => \inst1|Equal44~3_combout\,
	datad => \inst|Dir\(2),
	combout => \inst1|Equal47~0_combout\);

-- Location: LCCOMB_X26_Y13_N2
\inst1|XH[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|XH[0]~0_combout\ = (\inst1|Equal47~0_combout\ & \inst|nRW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Equal47~0_combout\,
	datad => \inst|nRW~q\,
	combout => \inst1|XH[0]~0_combout\);

-- Location: CLKCTRL_G17
\inst1|XH[0]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|XH[0]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|XH[0]~0clkctrl_outclk\);

-- Location: LCCOMB_X31_Y13_N10
\inst1|XH[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|XH\(3) = (GLOBAL(\inst1|XH[0]~0clkctrl_outclk\) & ((\inst|Data_out\(3)))) # (!GLOBAL(\inst1|XH[0]~0clkctrl_outclk\) & (\inst1|XH\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|XH\(3),
	datac => \inst|Data_out\(3),
	datad => \inst1|XH[0]~0clkctrl_outclk\,
	combout => \inst1|XH\(3));

-- Location: LCCOMB_X31_Y13_N2
\inst1|output[3]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[3]~87_combout\ = (!\inst|Dir\(2) & (\inst1|Equal2~0_combout\ & (\inst1|Equal45~1_combout\ & \inst1|XH\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dir\(2),
	datab => \inst1|Equal2~0_combout\,
	datac => \inst1|Equal45~1_combout\,
	datad => \inst1|XH\(3),
	combout => \inst1|output[3]~87_combout\);

-- Location: LCCOMB_X30_Y13_N30
\inst1|output[3]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[3]~88_combout\ = (\inst1|output[3]~86_combout\) # ((\inst1|output[3]~87_combout\) # ((\inst1|Equal48~0_combout\ & \inst1|XL\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal48~0_combout\,
	datab => \inst1|output[3]~86_combout\,
	datac => \inst1|XL\(3),
	datad => \inst1|output[3]~87_combout\,
	combout => \inst1|output[3]~88_combout\);

-- Location: LCCOMB_X28_Y13_N4
\inst1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = (!\inst|Dir\(9) & (!\inst|Dir\(12) & !\inst|Dir\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dir\(9),
	datac => \inst|Dir\(12),
	datad => \inst|Dir\(8),
	combout => \inst1|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y13_N26
\inst1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (!\inst|Dir\(7) & (!\inst|Dir\(13) & (!\inst|Dir\(15) & !\inst|Dir\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dir\(7),
	datab => \inst|Dir\(13),
	datac => \inst|Dir\(15),
	datad => \inst|Dir\(11),
	combout => \inst1|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y13_N28
\inst1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~2_combout\ = (!\inst|Dir\(14) & (!\inst|Dir\(6) & !\inst|Dir\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dir\(14),
	datac => \inst|Dir\(6),
	datad => \inst|Dir\(10),
	combout => \inst1|Equal0~2_combout\);

-- Location: LCCOMB_X28_Y13_N24
\inst1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~6_combout\ = (\inst1|Equal0~1_combout\ & (\inst1|Equal0~0_combout\ & \inst1|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal0~1_combout\,
	datac => \inst1|Equal0~0_combout\,
	datad => \inst1|Equal0~2_combout\,
	combout => \inst1|Equal0~6_combout\);

-- Location: LCCOMB_X29_Y14_N4
\inst1|Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal7~1_combout\ = (\inst|Dir\(4) & (\inst1|Equal7~0_combout\ & (!\inst|Dir\(2) & \inst1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dir\(4),
	datab => \inst1|Equal7~0_combout\,
	datac => \inst|Dir\(2),
	datad => \inst1|Equal0~6_combout\,
	combout => \inst1|Equal7~1_combout\);

-- Location: LCCOMB_X29_Y14_N14
\inst1|Equal9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal9~2_combout\ = (\inst|Dir\(1) & (\inst1|Equal7~1_combout\ & !\inst|Dir\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Dir\(1),
	datac => \inst1|Equal7~1_combout\,
	datad => \inst|Dir\(0),
	combout => \inst1|Equal9~2_combout\);

-- Location: LCCOMB_X29_Y14_N30
\inst1|Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal4~2_combout\ = (!\inst|Dir\(1) & (\inst|Dir\(2) & \inst|Dir\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Dir\(1),
	datac => \inst|Dir\(2),
	datad => \inst|Dir\(0),
	combout => \inst1|Equal4~2_combout\);

-- Location: LCCOMB_X28_Y14_N6
\inst1|Equal15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal15~2_combout\ = (\inst|Dir\(5) & !\inst|Dir\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Dir\(5),
	datad => \inst|Dir\(4),
	combout => \inst1|Equal15~2_combout\);

-- Location: LCCOMB_X29_Y14_N24
\inst1|Equal28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal28~0_combout\ = (\inst1|Equal4~2_combout\ & (\inst1|Equal15~2_combout\ & (\inst|Dir\(3) & \inst1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal4~2_combout\,
	datab => \inst1|Equal15~2_combout\,
	datac => \inst|Dir\(3),
	datad => \inst1|Equal0~6_combout\,
	combout => \inst1|Equal28~0_combout\);

-- Location: LCCOMB_X30_Y14_N20
\inst1|output[4]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[4]~129_combout\ = (!\inst1|Equal28~0_combout\ & ((\inst|Dir\(1)) # ((\inst|Dir\(0)) # (!\inst1|Equal7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dir\(1),
	datab => \inst1|Equal28~0_combout\,
	datac => \inst1|Equal7~1_combout\,
	datad => \inst|Dir\(0),
	combout => \inst1|output[4]~129_combout\);

-- Location: LCCOMB_X27_Y13_N8
\inst1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~3_combout\ = (!\inst|Dir\(5) & (!\inst|Dir\(3) & \inst|Dir\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Dir\(5),
	datac => \inst|Dir\(3),
	datad => \inst|Dir\(4),
	combout => \inst1|Equal0~3_combout\);

-- Location: LCCOMB_X28_Y13_N20
\inst1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~4_combout\ = (\inst1|Equal0~0_combout\ & (\inst1|Equal0~2_combout\ & (\inst1|Equal0~1_combout\ & \inst1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~0_combout\,
	datab => \inst1|Equal0~2_combout\,
	datac => \inst1|Equal0~1_combout\,
	datad => \inst1|Equal0~3_combout\,
	combout => \inst1|Equal0~4_combout\);

-- Location: LCCOMB_X28_Y14_N14
\inst1|Equal4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal4~3_combout\ = (!\inst|Dir\(1) & (\inst|Dir\(0) & (\inst|Dir\(2) & \inst1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dir\(1),
	datab => \inst|Dir\(0),
	datac => \inst|Dir\(2),
	datad => \inst1|Equal0~4_combout\,
	combout => \inst1|Equal4~3_combout\);

-- Location: LCCOMB_X30_Y14_N22
\inst1|Equal6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal6~1_combout\ = (\inst|Dir\(1) & (\inst|Dir\(2) & \inst|Dir\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Dir\(1),
	datac => \inst|Dir\(2),
	datad => \inst|Dir\(0),
	combout => \inst1|Equal6~1_combout\);

-- Location: LCCOMB_X28_Y14_N4
\inst1|Equal22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal22~0_combout\ = (\inst1|Equal15~2_combout\ & (!\inst|Dir\(3) & (\inst1|Equal6~1_combout\ & \inst1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal15~2_combout\,
	datab => \inst|Dir\(3),
	datac => \inst1|Equal6~1_combout\,
	datad => \inst1|Equal0~6_combout\,
	combout => \inst1|Equal22~0_combout\);

-- Location: LCCOMB_X30_Y14_N28
\inst1|output[4]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[4]~77_combout\ = (!\inst1|Equal9~2_combout\ & (\inst1|output[4]~129_combout\ & (!\inst1|Equal4~3_combout\ & !\inst1|Equal22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal9~2_combout\,
	datab => \inst1|output[4]~129_combout\,
	datac => \inst1|Equal4~3_combout\,
	datad => \inst1|Equal22~0_combout\,
	combout => \inst1|output[4]~77_combout\);

-- Location: LCCOMB_X30_Y14_N4
\inst1|Equal29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal29~0_combout\ = (!\inst|Dir\(0) & (\inst|Dir\(5) & (!\inst|Dir\(1) & !\inst|Dir\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dir\(0),
	datab => \inst|Dir\(5),
	datac => \inst|Dir\(1),
	datad => \inst|Dir\(2),
	combout => \inst1|Equal29~0_combout\);

-- Location: LCCOMB_X29_Y14_N16
\inst1|Equal29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal29~1_combout\ = (\inst1|Equal29~0_combout\ & (!\inst|Dir\(3) & (\inst|Dir\(4) & \inst1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal29~0_combout\,
	datab => \inst|Dir\(3),
	datac => \inst|Dir\(4),
	datad => \inst1|Equal0~6_combout\,
	combout => \inst1|Equal29~1_combout\);

-- Location: LCCOMB_X31_Y14_N18
\inst1|s30[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s30[0]~0_combout\ = (\inst1|Equal29~1_combout\ & \inst|nRW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Equal29~1_combout\,
	datad => \inst|nRW~q\,
	combout => \inst1|s30[0]~0_combout\);

-- Location: CLKCTRL_G6
\inst1|s30[0]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|s30[0]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|s30[0]~0clkctrl_outclk\);

-- Location: LCCOMB_X30_Y13_N22
\inst1|s30[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s30\(3) = (GLOBAL(\inst1|s30[0]~0clkctrl_outclk\) & (\inst|Data_out\(3))) # (!GLOBAL(\inst1|s30[0]~0clkctrl_outclk\) & ((\inst1|s30\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Data_out\(3),
	datac => \inst1|s30\(3),
	datad => \inst1|s30[0]~0clkctrl_outclk\,
	combout => \inst1|s30\(3));

-- Location: LCCOMB_X29_Y15_N6
\inst1|Equal52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal52~0_combout\ = (\inst1|Equal6~0_combout\ & (\inst|Dir\(3) & (\inst|Dir\(2) & \inst1|Equal44~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal6~0_combout\,
	datab => \inst|Dir\(3),
	datac => \inst|Dir\(2),
	datad => \inst1|Equal44~3_combout\,
	combout => \inst1|Equal52~0_combout\);

-- Location: LCCOMB_X28_Y15_N8
\inst1|PCL[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|PCL[1]~0_combout\ = (\inst|nRW~q\ & \inst1|Equal52~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|nRW~q\,
	datad => \inst1|Equal52~0_combout\,
	combout => \inst1|PCL[1]~0_combout\);

-- Location: CLKCTRL_G13
\inst1|PCL[1]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|PCL[1]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|PCL[1]~0clkctrl_outclk\);

-- Location: LCCOMB_X30_Y14_N14
\inst1|PCL[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|PCL\(3) = (GLOBAL(\inst1|PCL[1]~0clkctrl_outclk\) & (\inst|Data_out\(3))) # (!GLOBAL(\inst1|PCL[1]~0clkctrl_outclk\) & ((\inst1|PCL\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(3),
	datac => \inst1|PCL\(3),
	datad => \inst1|PCL[1]~0clkctrl_outclk\,
	combout => \inst1|PCL\(3));

-- Location: LCCOMB_X30_Y13_N20
\inst1|output[3]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[3]~90_combout\ = ((\inst1|Equal52~0_combout\ & \inst1|PCL\(3))) # (!\inst1|output[3]~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal52~0_combout\,
	datac => \inst1|PCL\(3),
	datad => \inst1|output[3]~39_combout\,
	combout => \inst1|output[3]~90_combout\);

-- Location: LCCOMB_X27_Y14_N22
\inst1|ccr[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ccr[0]~0_combout\ = (\inst1|Equal44~3_combout\ & (\inst1|Equal6~1_combout\ & (!\inst|Dir\(3) & \inst|nRW~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal44~3_combout\,
	datab => \inst1|Equal6~1_combout\,
	datac => \inst|Dir\(3),
	datad => \inst|nRW~q\,
	combout => \inst1|ccr[0]~0_combout\);

-- Location: CLKCTRL_G10
\inst1|ccr[0]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|ccr[0]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|ccr[0]~0clkctrl_outclk\);

-- Location: LCCOMB_X31_Y15_N4
\inst1|ccr[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ccr\(3) = (GLOBAL(\inst1|ccr[0]~0clkctrl_outclk\) & ((\inst|Data_out\(3)))) # (!GLOBAL(\inst1|ccr[0]~0clkctrl_outclk\) & (\inst1|ccr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ccr[0]~0clkctrl_outclk\,
	datab => \inst1|ccr\(3),
	datad => \inst|Data_out\(3),
	combout => \inst1|ccr\(3));

-- Location: LCCOMB_X27_Y14_N30
\inst1|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal3~0_combout\ = (!\inst|Dir\(1) & (!\inst|Dir\(0) & \inst|Dir\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dir\(1),
	datac => \inst|Dir\(0),
	datad => \inst|Dir\(2),
	combout => \inst1|Equal3~0_combout\);

-- Location: LCCOMB_X29_Y12_N2
\inst1|Equal49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal49~0_combout\ = (\inst1|Equal3~0_combout\ & (\inst|Dir\(3) & \inst1|Equal44~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal3~0_combout\,
	datab => \inst|Dir\(3),
	datac => \inst1|Equal44~3_combout\,
	combout => \inst1|Equal49~0_combout\);

-- Location: LCCOMB_X27_Y14_N26
\inst1|YH[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|YH[0]~0_combout\ = (\inst1|Equal3~0_combout\ & (\inst1|Equal44~3_combout\ & (\inst|Dir\(3) & \inst|nRW~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal3~0_combout\,
	datab => \inst1|Equal44~3_combout\,
	datac => \inst|Dir\(3),
	datad => \inst|nRW~q\,
	combout => \inst1|YH[0]~0_combout\);

-- Location: CLKCTRL_G14
\inst1|YH[0]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|YH[0]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|YH[0]~0clkctrl_outclk\);

-- Location: LCCOMB_X31_Y15_N6
\inst1|YH[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|YH\(3) = (GLOBAL(\inst1|YH[0]~0clkctrl_outclk\) & ((\inst|Data_out\(3)))) # (!GLOBAL(\inst1|YH[0]~0clkctrl_outclk\) & (\inst1|YH\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|YH\(3),
	datab => \inst|Data_out\(3),
	datac => \inst1|YH[0]~0clkctrl_outclk\,
	combout => \inst1|YH\(3));

-- Location: LCCOMB_X31_Y15_N24
\inst1|output[3]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[3]~91_combout\ = (\inst1|Equal44~4_combout\ & ((\inst1|ccr\(3)) # ((\inst1|Equal49~0_combout\ & \inst1|YH\(3))))) # (!\inst1|Equal44~4_combout\ & (((\inst1|Equal49~0_combout\ & \inst1|YH\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal44~4_combout\,
	datab => \inst1|ccr\(3),
	datac => \inst1|Equal49~0_combout\,
	datad => \inst1|YH\(3),
	combout => \inst1|output[3]~91_combout\);

-- Location: LCCOMB_X30_Y13_N2
\inst1|output[3]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[3]~92_combout\ = (\inst1|output[3]~90_combout\) # ((\inst1|output[3]~91_combout\) # ((\inst1|s30\(3) & \inst1|Equal29~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s30\(3),
	datab => \inst1|output[3]~90_combout\,
	datac => \inst1|output[3]~91_combout\,
	datad => \inst1|Equal29~1_combout\,
	combout => \inst1|output[3]~92_combout\);

-- Location: LCCOMB_X30_Y13_N4
\inst1|output[3]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[3]~93_combout\ = (\inst1|output[3]~89_combout\) # ((\inst1|output[3]~88_combout\) # ((\inst1|output[3]~92_combout\) # (!\inst1|output[4]~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[3]~89_combout\,
	datab => \inst1|output[3]~88_combout\,
	datac => \inst1|output[4]~77_combout\,
	datad => \inst1|output[3]~92_combout\,
	combout => \inst1|output[3]~93_combout\);

-- Location: LCCOMB_X30_Y13_N24
\inst1|output[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output\(3) = (GLOBAL(\inst1|output[7]~58clkctrl_outclk\) & (\inst1|output[3]~93_combout\)) # (!GLOBAL(\inst1|output[7]~58clkctrl_outclk\) & ((\inst1|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[7]~58clkctrl_outclk\,
	datab => \inst1|output[3]~93_combout\,
	datad => \inst1|output\(3),
	combout => \inst1|output\(3));

-- Location: LCCOMB_X20_Y12_N0
\inst|XL[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|XL[3]~feeder_combout\ = \inst1|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|output\(3),
	combout => \inst|XL[3]~feeder_combout\);

-- Location: FF_X20_Y12_N1
\inst|XL[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|XL[3]~feeder_combout\,
	ena => \inst|XL[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|XL\(3));

-- Location: LCCOMB_X26_Y13_N18
\inst|Yupa[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Yupa[5]~21_combout\ = (\inst|XL\(5) & ((\inst1|output\(5) & (\inst|Yupa[4]~20\ & VCC)) # (!\inst1|output\(5) & (!\inst|Yupa[4]~20\)))) # (!\inst|XL\(5) & ((\inst1|output\(5) & (!\inst|Yupa[4]~20\)) # (!\inst1|output\(5) & ((\inst|Yupa[4]~20\) # 
-- (GND)))))
-- \inst|Yupa[5]~22\ = CARRY((\inst|XL\(5) & (!\inst1|output\(5) & !\inst|Yupa[4]~20\)) # (!\inst|XL\(5) & ((!\inst|Yupa[4]~20\) # (!\inst1|output\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|XL\(5),
	datab => \inst1|output\(5),
	datad => VCC,
	cin => \inst|Yupa[4]~20\,
	combout => \inst|Yupa[5]~21_combout\,
	cout => \inst|Yupa[5]~22\);

-- Location: LCCOMB_X26_Y13_N20
\inst|Yupa[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Yupa[6]~23_combout\ = ((\inst1|output\(6) $ (\inst|XL\(6) $ (!\inst|Yupa[5]~22\)))) # (GND)
-- \inst|Yupa[6]~24\ = CARRY((\inst1|output\(6) & ((\inst|XL\(6)) # (!\inst|Yupa[5]~22\))) # (!\inst1|output\(6) & (\inst|XL\(6) & !\inst|Yupa[5]~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output\(6),
	datab => \inst|XL\(6),
	datad => VCC,
	cin => \inst|Yupa[5]~22\,
	combout => \inst|Yupa[6]~23_combout\,
	cout => \inst|Yupa[6]~24\);

-- Location: LCCOMB_X21_Y12_N10
\inst|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~10_combout\ = (\inst|A\(5) & ((\inst|B\(5) & (\inst|Add4~9\ & VCC)) # (!\inst|B\(5) & (!\inst|Add4~9\)))) # (!\inst|A\(5) & ((\inst|B\(5) & (!\inst|Add4~9\)) # (!\inst|B\(5) & ((\inst|Add4~9\) # (GND)))))
-- \inst|Add4~11\ = CARRY((\inst|A\(5) & (!\inst|B\(5) & !\inst|Add4~9\)) # (!\inst|A\(5) & ((!\inst|Add4~9\) # (!\inst|B\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(5),
	datab => \inst|B\(5),
	datad => VCC,
	cin => \inst|Add4~9\,
	combout => \inst|Add4~10_combout\,
	cout => \inst|Add4~11\);

-- Location: LCCOMB_X21_Y12_N12
\inst|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~12_combout\ = ((\inst|A\(6) $ (\inst|B\(6) $ (!\inst|Add4~11\)))) # (GND)
-- \inst|Add4~13\ = CARRY((\inst|A\(6) & ((\inst|B\(6)) # (!\inst|Add4~11\))) # (!\inst|A\(6) & (\inst|B\(6) & !\inst|Add4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(6),
	datab => \inst|B\(6),
	datad => VCC,
	cin => \inst|Add4~11\,
	combout => \inst|Add4~12_combout\,
	cout => \inst|Add4~13\);

-- Location: FF_X26_Y13_N21
\inst|Yupa[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Yupa[6]~23_combout\,
	asdata => \inst|Add4~12_combout\,
	sload => \inst|Equal18~3_combout\,
	ena => \inst|Yupa[7]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Yupa\(6));

-- Location: LCCOMB_X23_Y14_N14
\inst|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = (!\inst|Yupa\(7) & (!\inst|Yupa\(5) & (!\inst|Yupa\(6) & !\inst|Yupa\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Yupa\(7),
	datab => \inst|Yupa\(5),
	datac => \inst|Yupa\(6),
	datad => \inst|Yupa\(4),
	combout => \inst|Equal1~0_combout\);

-- Location: LCCOMB_X23_Y14_N0
\inst|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~1_combout\ = (!\inst|Yupa\(3) & (!\inst|Yupa\(1) & (!\inst|Yupa\(0) & !\inst|Yupa\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Yupa\(3),
	datab => \inst|Yupa\(1),
	datac => \inst|Yupa\(0),
	datad => \inst|Yupa\(2),
	combout => \inst|Equal1~1_combout\);

-- Location: LCCOMB_X23_Y14_N26
\inst|Selector52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector52~0_combout\ = (\inst|Equal1~0_combout\ & (\inst|Equal1~1_combout\ & ((\inst|Equal19~0_combout\) # (!\inst|B[7]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|B[7]~11_combout\,
	datab => \inst|Equal19~0_combout\,
	datac => \inst|Equal1~0_combout\,
	datad => \inst|Equal1~1_combout\,
	combout => \inst|Selector52~0_combout\);

-- Location: LCCOMB_X21_Y14_N30
\inst|Selector52~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector52~1_combout\ = (!\inst1|output\(7) & (!\inst1|output\(6) & (!\inst1|output\(4) & !\inst1|output\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output\(7),
	datab => \inst1|output\(6),
	datac => \inst1|output\(4),
	datad => \inst1|output\(5),
	combout => \inst|Selector52~1_combout\);

-- Location: LCCOMB_X21_Y14_N4
\inst|Selector52~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector52~2_combout\ = (!\inst1|output\(1) & (!\inst1|output\(3) & (\inst|Selector52~1_combout\ & !\inst1|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output\(1),
	datab => \inst1|output\(3),
	datac => \inst|Selector52~1_combout\,
	datad => \inst1|output\(0),
	combout => \inst|Selector52~2_combout\);

-- Location: LCCOMB_X21_Y14_N22
\inst|Selector52~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector52~3_combout\ = (\inst1|output\(2) & (((\inst|Equal61~0_combout\)))) # (!\inst1|output\(2) & (!\inst|SPL[7]~0_combout\ & (\inst|Selector52~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output\(2),
	datab => \inst|SPL[7]~0_combout\,
	datac => \inst|Selector52~2_combout\,
	datad => \inst|Equal61~0_combout\,
	combout => \inst|Selector52~3_combout\);

-- Location: LCCOMB_X23_Y14_N8
\inst|Selector52~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector52~4_combout\ = (!\inst|Selector52~0_combout\ & (!\inst|Selector52~3_combout\ & ((\inst|estados\(2)) # (!\inst|WideOr31~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector52~0_combout\,
	datab => \inst|Selector52~3_combout\,
	datac => \inst|estados\(2),
	datad => \inst|WideOr31~combout\,
	combout => \inst|Selector52~4_combout\);

-- Location: FF_X23_Y14_N9
\inst|estados[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector52~4_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|estados\(2));

-- Location: LCCOMB_X24_Y14_N0
\inst|PC[15]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[15]~3_combout\ = ((!\inst|estados\(2) & (\inst|Equal4~2_combout\ & \inst|Equal11~2_combout\))) # (!\inst|Dir[15]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|estados\(2),
	datab => \inst|Equal4~2_combout\,
	datac => \inst|Equal11~2_combout\,
	datad => \inst|Dir[15]~17_combout\,
	combout => \inst|PC[15]~3_combout\);

-- Location: LCCOMB_X24_Y14_N30
\inst|PC[15]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[15]~4_combout\ = (\inst|WideOr39~1_combout\ & (\inst|Yupa[7]~10_combout\ & (\inst|Selector78~0_combout\ & !\inst|PC[15]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr39~1_combout\,
	datab => \inst|Yupa[7]~10_combout\,
	datac => \inst|Selector78~0_combout\,
	datad => \inst|PC[15]~3_combout\,
	combout => \inst|PC[15]~4_combout\);

-- Location: LCCOMB_X20_Y12_N16
\inst|PCL[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PCL[4]~3_combout\ = !\inst1|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|output\(4),
	combout => \inst|PCL[4]~3_combout\);

-- Location: FF_X20_Y12_N17
\inst|PCL[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PCL[4]~3_combout\,
	ena => \inst|PCL[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PCL\(4));

-- Location: LCCOMB_X20_Y13_N8
\inst|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~8_combout\ = ((\inst1|output\(4) $ (\inst|PC\(4) $ (\inst|Add3~7\)))) # (GND)
-- \inst|Add3~9\ = CARRY((\inst1|output\(4) & ((!\inst|Add3~7\) # (!\inst|PC\(4)))) # (!\inst1|output\(4) & (!\inst|PC\(4) & !\inst|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output\(4),
	datab => \inst|PC\(4),
	datad => VCC,
	cin => \inst|Add3~7\,
	combout => \inst|Add3~8_combout\,
	cout => \inst|Add3~9\);

-- Location: LCCOMB_X24_Y14_N6
\inst|Selector38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector38~1_combout\ = (\inst|Selector40~0_combout\ & ((\inst1|output\(7) & ((\inst|Add2~8_combout\))) # (!\inst1|output\(7) & (\inst|Add3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output\(7),
	datab => \inst|Selector40~0_combout\,
	datac => \inst|Add3~8_combout\,
	datad => \inst|Add2~8_combout\,
	combout => \inst|Selector38~1_combout\);

-- Location: LCCOMB_X24_Y14_N24
\inst|Selector38~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector38~2_combout\ = (\inst|Equal39~0_combout\) # ((\inst|Selector38~1_combout\) # ((!\inst|PCL\(4) & \inst|Equal78~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PCL\(4),
	datab => \inst|Equal39~0_combout\,
	datac => \inst|Equal78~2_combout\,
	datad => \inst|Selector38~1_combout\,
	combout => \inst|Selector38~2_combout\);

-- Location: LCCOMB_X24_Y14_N18
\inst|Selector38~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector38~3_combout\ = (\inst|Selector38~2_combout\) # ((\inst|Add0~8_combout\ & ((!\inst|Selector38~0_combout\) # (!\inst|Dir[15]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~8_combout\,
	datab => \inst|Dir[15]~22_combout\,
	datac => \inst|Selector38~0_combout\,
	datad => \inst|Selector38~2_combout\,
	combout => \inst|Selector38~3_combout\);

-- Location: LCCOMB_X24_Y14_N14
\inst|Selector38~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector38~4_combout\ = (!\inst|Selector38~3_combout\ & ((\inst|PC[15]~4_combout\) # (\inst|PC\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC[15]~4_combout\,
	datac => \inst|PC\(4),
	datad => \inst|Selector38~3_combout\,
	combout => \inst|Selector38~4_combout\);

-- Location: FF_X24_Y14_N15
\inst|PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector38~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(4));

-- Location: LCCOMB_X20_Y13_N10
\inst|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~10_combout\ = (\inst|PC\(5) & ((\inst1|output\(5) & (\inst|Add3~9\ & VCC)) # (!\inst1|output\(5) & (!\inst|Add3~9\)))) # (!\inst|PC\(5) & ((\inst1|output\(5) & (!\inst|Add3~9\)) # (!\inst1|output\(5) & ((\inst|Add3~9\) # (GND)))))
-- \inst|Add3~11\ = CARRY((\inst|PC\(5) & (!\inst1|output\(5) & !\inst|Add3~9\)) # (!\inst|PC\(5) & ((!\inst|Add3~9\) # (!\inst1|output\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(5),
	datab => \inst1|output\(5),
	datad => VCC,
	cin => \inst|Add3~9\,
	combout => \inst|Add3~10_combout\,
	cout => \inst|Add3~11\);

-- Location: FF_X20_Y14_N17
\inst|PCL[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|output\(5),
	sload => VCC,
	ena => \inst|PCL[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PCL\(5));

-- Location: LCCOMB_X20_Y14_N2
\inst|Selector37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector37~1_combout\ = (\inst|Selector37~0_combout\ & ((\inst|Equal39~0_combout\) # (\inst|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal39~0_combout\,
	datac => \inst|Selector37~0_combout\,
	datad => \inst|Add0~10_combout\,
	combout => \inst|Selector37~1_combout\);

-- Location: LCCOMB_X20_Y14_N16
\inst|Selector37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector37~2_combout\ = (\inst|PC[15]~2_combout\ & (((\inst|PCL\(5))) # (!\inst|PC[15]~5_combout\))) # (!\inst|PC[15]~2_combout\ & (\inst|PC[15]~5_combout\ & ((\inst|Selector37~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC[15]~2_combout\,
	datab => \inst|PC[15]~5_combout\,
	datac => \inst|PCL\(5),
	datad => \inst|Selector37~1_combout\,
	combout => \inst|Selector37~2_combout\);

-- Location: LCCOMB_X20_Y14_N28
\inst|Selector37~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector37~3_combout\ = (\inst|PC[15]~5_combout\ & (((\inst|Selector37~2_combout\)))) # (!\inst|PC[15]~5_combout\ & ((\inst|Selector37~2_combout\ & ((\inst|Add2~10_combout\))) # (!\inst|Selector37~2_combout\ & (\inst|Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~10_combout\,
	datab => \inst|PC[15]~5_combout\,
	datac => \inst|Add2~10_combout\,
	datad => \inst|Selector37~2_combout\,
	combout => \inst|Selector37~3_combout\);

-- Location: FF_X20_Y14_N29
\inst|PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector37~3_combout\,
	clrn => \reset~input_o\,
	ena => \inst|PC[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(5));

-- Location: LCCOMB_X20_Y13_N12
\inst|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~12_combout\ = ((\inst1|output\(6) $ (\inst|PC\(6) $ (!\inst|Add3~11\)))) # (GND)
-- \inst|Add3~13\ = CARRY((\inst1|output\(6) & ((\inst|PC\(6)) # (!\inst|Add3~11\))) # (!\inst1|output\(6) & (\inst|PC\(6) & !\inst|Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output\(6),
	datab => \inst|PC\(6),
	datad => VCC,
	cin => \inst|Add3~11\,
	combout => \inst|Add3~12_combout\,
	cout => \inst|Add3~13\);

-- Location: FF_X20_Y14_N13
\inst|PCL[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|output\(7),
	sload => VCC,
	ena => \inst|PCL[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PCL\(7));

-- Location: LCCOMB_X20_Y14_N12
\inst|Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector35~0_combout\ = (\inst|PC[15]~5_combout\ & ((\inst|PC[15]~2_combout\ & ((\inst|PCL\(7)))) # (!\inst|PC[15]~2_combout\ & (\inst|Add0~14_combout\)))) # (!\inst|PC[15]~5_combout\ & (((\inst|PC[15]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~14_combout\,
	datab => \inst|PC[15]~5_combout\,
	datac => \inst|PCL\(7),
	datad => \inst|PC[15]~2_combout\,
	combout => \inst|Selector35~0_combout\);

-- Location: LCCOMB_X23_Y13_N8
\inst|Selector35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector35~1_combout\ = (\inst|PC[15]~5_combout\ & (((\inst|Selector35~0_combout\)))) # (!\inst|PC[15]~5_combout\ & ((\inst|Selector35~0_combout\ & ((\inst|Add2~14_combout\))) # (!\inst|Selector35~0_combout\ & (\inst|Add3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~14_combout\,
	datab => \inst|PC[15]~5_combout\,
	datac => \inst|Add2~14_combout\,
	datad => \inst|Selector35~0_combout\,
	combout => \inst|Selector35~1_combout\);

-- Location: LCCOMB_X23_Y13_N28
\inst|Selector35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector35~2_combout\ = (\inst|Selector35~1_combout\ & ((\inst|PC[15]~2_combout\) # ((\inst|WideOr2~23_combout\ & \inst|WideNor0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr2~23_combout\,
	datab => \inst|PC[15]~2_combout\,
	datac => \inst|Selector35~1_combout\,
	datad => \inst|WideNor0~combout\,
	combout => \inst|Selector35~2_combout\);

-- Location: FF_X23_Y13_N29
\inst|PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector35~2_combout\,
	clrn => \reset~input_o\,
	ena => \inst|PC[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(7));

-- Location: LCCOMB_X26_Y14_N14
\inst|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector8~0_combout\ = (\inst|Dir[2]~20_combout\ & (((\inst|Dir[10]~21_combout\)))) # (!\inst|Dir[2]~20_combout\ & ((\inst|Dir[10]~21_combout\ & ((\inst|PC\(7)))) # (!\inst|Dir[10]~21_combout\ & (!\inst|SPL\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SPL\(7),
	datab => \inst|PC\(7),
	datac => \inst|Dir[2]~20_combout\,
	datad => \inst|Dir[10]~21_combout\,
	combout => \inst|Selector8~0_combout\);

-- Location: LCCOMB_X27_Y13_N26
\inst|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector8~1_combout\ = (\inst|Selector8~0_combout\ & (((\inst|Yupa\(7)) # (!\inst|Dir[2]~20_combout\)))) # (!\inst|Selector8~0_combout\ & (\inst|Aux\(7) & ((\inst|Dir[2]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Aux\(7),
	datab => \inst|Yupa\(7),
	datac => \inst|Selector8~0_combout\,
	datad => \inst|Dir[2]~20_combout\,
	combout => \inst|Selector8~1_combout\);

-- Location: FF_X27_Y13_N27
\inst|Dir[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Selector8~1_combout\,
	ena => \inst|Dir[15]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Dir\(7));

-- Location: LCCOMB_X27_Y13_N12
\inst1|Equal30~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal30~4_combout\ = (!\inst|Dir\(7) & (!\inst|Dir\(15) & !\inst|Dir\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dir\(7),
	datac => \inst|Dir\(15),
	datad => \inst|Dir\(11),
	combout => \inst1|Equal30~4_combout\);

-- Location: LCCOMB_X27_Y13_N22
\inst1|Equal30~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal30~5_combout\ = (\inst1|Equal30~4_combout\ & (!\inst|Dir\(3) & \inst1|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal30~4_combout\,
	datac => \inst|Dir\(3),
	datad => \inst1|Equal0~2_combout\,
	combout => \inst1|Equal30~5_combout\);

-- Location: LCCOMB_X30_Y14_N30
\inst1|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal5~0_combout\ = (\inst|Dir\(1) & (\inst|Dir\(2) & !\inst|Dir\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Dir\(1),
	datac => \inst|Dir\(2),
	datad => \inst|Dir\(0),
	combout => \inst1|Equal5~0_combout\);

-- Location: LCCOMB_X27_Y13_N28
\inst1|Equal37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal37~0_combout\ = (!\inst|Dir\(5) & (\inst|Dir\(6) & (\inst|Dir\(14) & \inst|Dir\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dir\(5),
	datab => \inst|Dir\(6),
	datac => \inst|Dir\(14),
	datad => \inst|Dir\(10),
	combout => \inst1|Equal37~0_combout\);

-- Location: LCCOMB_X27_Y13_N30
\inst1|Equal37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal37~1_combout\ = (!\inst|Dir\(3) & !\inst|Dir\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Dir\(3),
	datad => \inst|Dir\(4),
	combout => \inst1|Equal37~1_combout\);

-- Location: LCCOMB_X27_Y13_N10
\inst1|Equal37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal37~2_combout\ = (\inst1|Equal0~1_combout\ & (\inst1|Equal37~0_combout\ & (\inst1|Equal37~1_combout\ & \inst1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~1_combout\,
	datab => \inst1|Equal37~0_combout\,
	datac => \inst1|Equal37~1_combout\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|Equal37~2_combout\);

-- Location: LCCOMB_X27_Y13_N18
\inst1|output[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[2]~38_combout\ = ((!\inst1|Equal37~2_combout\ & ((!\inst1|Equal44~1_combout\) # (!\inst1|Equal30~5_combout\)))) # (!\inst1|Equal5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal30~5_combout\,
	datab => \inst1|Equal5~0_combout\,
	datac => \inst1|Equal44~1_combout\,
	datad => \inst1|Equal37~2_combout\,
	combout => \inst1|output[2]~38_combout\);

-- Location: LCCOMB_X29_Y13_N16
\inst1|Equal37~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal37~3_combout\ = (!\inst|Dir\(2) & \inst1|Equal37~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Dir\(2),
	datad => \inst1|Equal37~2_combout\,
	combout => \inst1|Equal37~3_combout\);

-- Location: LCCOMB_X27_Y13_N16
\inst1|Equal30~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal30~6_combout\ = (\inst1|Equal44~1_combout\ & (\inst1|Equal30~5_combout\ & !\inst|Dir\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal44~1_combout\,
	datac => \inst1|Equal30~5_combout\,
	datad => \inst|Dir\(2),
	combout => \inst1|Equal30~6_combout\);

-- Location: LCCOMB_X29_Y13_N6
\inst1|output[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[3]~39_combout\ = (\inst1|output[2]~38_combout\ & (((!\inst1|Equal37~3_combout\ & !\inst1|Equal30~6_combout\)) # (!\inst1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[2]~38_combout\,
	datab => \inst1|Equal37~3_combout\,
	datac => \inst1|Equal30~6_combout\,
	datad => \inst1|Equal0~5_combout\,
	combout => \inst1|output[3]~39_combout\);

-- Location: LCCOMB_X29_Y13_N4
\inst1|output[5]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[5]~40_combout\ = (\inst1|Equal6~0_combout\ & (!\inst1|Equal30~6_combout\ & ((!\inst1|Equal37~3_combout\) # (!\inst1|Equal1~0_combout\)))) # (!\inst1|Equal6~0_combout\ & (((!\inst1|Equal37~3_combout\) # (!\inst1|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal6~0_combout\,
	datab => \inst1|Equal30~6_combout\,
	datac => \inst1|Equal1~0_combout\,
	datad => \inst1|Equal37~3_combout\,
	combout => \inst1|output[5]~40_combout\);

-- Location: LCCOMB_X29_Y13_N2
\inst1|output[7]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[7]~126_combout\ = ((!\inst1|Equal30~6_combout\ & ((\inst|Dir\(2)) # (!\inst1|Equal37~2_combout\)))) # (!\inst1|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal37~2_combout\,
	datab => \inst1|Equal30~6_combout\,
	datac => \inst|Dir\(2),
	datad => \inst1|Equal2~0_combout\,
	combout => \inst1|output[7]~126_combout\);

-- Location: LCCOMB_X29_Y13_N20
\inst1|output[7]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[7]~41_combout\ = (\inst1|output[3]~39_combout\ & (\inst1|output[5]~40_combout\ & \inst1|output[7]~126_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[3]~39_combout\,
	datac => \inst1|output[5]~40_combout\,
	datad => \inst1|output[7]~126_combout\,
	combout => \inst1|output[7]~41_combout\);

-- Location: FF_X23_Y12_N17
\inst|XH[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|output\(4),
	sload => VCC,
	ena => \inst|XH[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|XH\(4));

-- Location: LCCOMB_X23_Y12_N16
\inst|Selector73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector73~0_combout\ = (\inst|Equal46~0_combout\ & ((\inst|XH\(4)) # ((\inst|XL\(4) & \inst|Equal44~1_combout\)))) # (!\inst|Equal46~0_combout\ & (\inst|XL\(4) & ((\inst|Equal44~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal46~0_combout\,
	datab => \inst|XL\(4),
	datac => \inst|XH\(4),
	datad => \inst|Equal44~1_combout\,
	combout => \inst|Selector73~0_combout\);

-- Location: LCCOMB_X21_Y14_N2
\inst|estados[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|estados[4]~4_combout\ = !\inst1|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|output\(4),
	combout => \inst|estados[4]~4_combout\);

-- Location: LCCOMB_X21_Y14_N18
\inst|estados[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|estados[7]~0_combout\ = (\reset~input_o\ & \inst|Equal61~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \inst|Equal61~0_combout\,
	combout => \inst|estados[7]~0_combout\);

-- Location: FF_X21_Y14_N3
\inst|estados[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|estados[4]~4_combout\,
	ena => \inst|estados[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|estados\(4));

-- Location: LCCOMB_X19_Y12_N30
\inst|Selector73~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector73~2_combout\ = (\inst|estados\(4) & (((\inst|PC\(12) & \inst|Data_out~10_combout\)))) # (!\inst|estados\(4) & ((\inst|Equal52~1_combout\) # ((\inst|PC\(12) & \inst|Data_out~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|estados\(4),
	datab => \inst|Equal52~1_combout\,
	datac => \inst|PC\(12),
	datad => \inst|Data_out~10_combout\,
	combout => \inst|Selector73~2_combout\);

-- Location: LCCOMB_X19_Y12_N16
\inst|Selector73~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector73~3_combout\ = (\inst|Selector73~2_combout\) # ((!\inst|PC\(4) & \inst|Data_out~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(4),
	datac => \inst|Selector73~2_combout\,
	datad => \inst|Data_out~11_combout\,
	combout => \inst|Selector73~3_combout\);

-- Location: FF_X24_Y12_N1
\inst|YL[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|output\(4),
	sload => VCC,
	ena => \inst|YL[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|YL\(4));

-- Location: FF_X19_Y12_N9
\inst|YH[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|output\(4),
	sload => VCC,
	ena => \inst|YH[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|YH\(4));

-- Location: LCCOMB_X19_Y12_N8
\inst|Selector73~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector73~1_combout\ = (\inst|YL\(4) & ((\inst|Equal40~2_combout\) # ((\inst|Equal42~0_combout\ & \inst|YH\(4))))) # (!\inst|YL\(4) & (\inst|Equal42~0_combout\ & (\inst|YH\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|YL\(4),
	datab => \inst|Equal42~0_combout\,
	datac => \inst|YH\(4),
	datad => \inst|Equal40~2_combout\,
	combout => \inst|Selector73~1_combout\);

-- Location: LCCOMB_X21_Y12_N26
\inst|Selector73~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector73~4_combout\ = (\inst|A\(4) & ((\inst|Data_out~13_combout\) # ((\inst|B\(4) & \inst|Data_out~12_combout\)))) # (!\inst|A\(4) & (\inst|B\(4) & (\inst|Data_out~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(4),
	datab => \inst|B\(4),
	datac => \inst|Data_out~12_combout\,
	datad => \inst|Data_out~13_combout\,
	combout => \inst|Selector73~4_combout\);

-- Location: LCCOMB_X19_Y12_N10
\inst|Selector73~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector73~5_combout\ = (\inst|Selector73~0_combout\) # ((\inst|Selector73~3_combout\) # ((\inst|Selector73~1_combout\) # (\inst|Selector73~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector73~0_combout\,
	datab => \inst|Selector73~3_combout\,
	datac => \inst|Selector73~1_combout\,
	datad => \inst|Selector73~4_combout\,
	combout => \inst|Selector73~5_combout\);

-- Location: FF_X19_Y12_N11
\inst|Data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector73~5_combout\,
	ena => \inst|Data_out[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Data_out\(4));

-- Location: LCCOMB_X29_Y15_N14
\inst1|YH[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|YH\(4) = (GLOBAL(\inst1|YH[0]~0clkctrl_outclk\) & (\inst|Data_out\(4))) # (!GLOBAL(\inst1|YH[0]~0clkctrl_outclk\) & ((\inst1|YH\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Data_out\(4),
	datac => \inst1|YH\(4),
	datad => \inst1|YH[0]~0clkctrl_outclk\,
	combout => \inst1|YH\(4));

-- Location: LCCOMB_X28_Y12_N18
\inst1|ccr[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ccr\(4) = (GLOBAL(\inst1|ccr[0]~0clkctrl_outclk\) & (\inst|Data_out\(4))) # (!GLOBAL(\inst1|ccr[0]~0clkctrl_outclk\) & ((\inst1|ccr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(4),
	datac => \inst1|ccr[0]~0clkctrl_outclk\,
	datad => \inst1|ccr\(4),
	combout => \inst1|ccr\(4));

-- Location: LCCOMB_X29_Y15_N0
\inst1|output[4]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[4]~81_combout\ = (\inst1|Equal44~4_combout\ & ((\inst1|ccr\(4)) # ((\inst1|Equal49~0_combout\ & \inst1|YH\(4))))) # (!\inst1|Equal44~4_combout\ & (\inst1|Equal49~0_combout\ & (\inst1|YH\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal44~4_combout\,
	datab => \inst1|Equal49~0_combout\,
	datac => \inst1|YH\(4),
	datad => \inst1|ccr\(4),
	combout => \inst1|output[4]~81_combout\);

-- Location: LCCOMB_X29_Y15_N12
\inst1|ACCB[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ACCB\(4) = (GLOBAL(\inst1|ACCB[0]~0clkctrl_outclk\) & (\inst|Data_out\(4))) # (!GLOBAL(\inst1|ACCB[0]~0clkctrl_outclk\) & ((\inst1|ACCB\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Data_out\(4),
	datac => \inst1|ACCB[0]~0clkctrl_outclk\,
	datad => \inst1|ACCB\(4),
	combout => \inst1|ACCB\(4));

-- Location: LCCOMB_X30_Y16_N4
\inst1|XH[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|XH\(4) = (GLOBAL(\inst1|XH[0]~0clkctrl_outclk\) & (\inst|Data_out\(4))) # (!GLOBAL(\inst1|XH[0]~0clkctrl_outclk\) & ((\inst1|XH\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Data_out\(4),
	datac => \inst1|XH\(4),
	datad => \inst1|XH[0]~0clkctrl_outclk\,
	combout => \inst1|XH\(4));

-- Location: LCCOMB_X29_Y15_N18
\inst1|output[4]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[4]~82_combout\ = (\inst1|Equal45~0_combout\ & ((\inst1|ACCB\(4)) # ((\inst1|Equal47~0_combout\ & \inst1|XH\(4))))) # (!\inst1|Equal45~0_combout\ & (\inst1|Equal47~0_combout\ & ((\inst1|XH\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal45~0_combout\,
	datab => \inst1|Equal47~0_combout\,
	datac => \inst1|ACCB\(4),
	datad => \inst1|XH\(4),
	combout => \inst1|output[4]~82_combout\);

-- Location: LCCOMB_X28_Y15_N28
\inst1|PCL[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|PCL\(4) = (GLOBAL(\inst1|PCL[1]~0clkctrl_outclk\) & (\inst|Data_out\(4))) # (!GLOBAL(\inst1|PCL[1]~0clkctrl_outclk\) & ((\inst1|PCL\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Data_out\(4),
	datac => \inst1|PCL[1]~0clkctrl_outclk\,
	datad => \inst1|PCL\(4),
	combout => \inst1|PCL\(4));

-- Location: LCCOMB_X30_Y16_N30
\inst1|ACCA[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ACCA\(4) = (GLOBAL(\inst1|ACCA[0]~0clkctrl_outclk\) & (\inst|Data_out\(4))) # (!GLOBAL(\inst1|ACCA[0]~0clkctrl_outclk\) & ((\inst1|ACCA\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(4),
	datac => \inst1|ACCA\(4),
	datad => \inst1|ACCA[0]~0clkctrl_outclk\,
	combout => \inst1|ACCA\(4));

-- Location: LCCOMB_X29_Y15_N24
\inst1|output[4]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[4]~83_combout\ = (\inst1|Equal46~0_combout\ & ((\inst1|ACCA\(4)) # ((\inst1|PCL\(4) & \inst1|Equal52~0_combout\)))) # (!\inst1|Equal46~0_combout\ & (\inst1|PCL\(4) & ((\inst1|Equal52~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal46~0_combout\,
	datab => \inst1|PCL\(4),
	datac => \inst1|ACCA\(4),
	datad => \inst1|Equal52~0_combout\,
	combout => \inst1|output[4]~83_combout\);

-- Location: LCCOMB_X29_Y15_N20
\inst1|output[4]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[4]~84_combout\ = (\inst1|output[4]~81_combout\) # ((\inst1|output[4]~82_combout\) # (\inst1|output[4]~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[4]~81_combout\,
	datab => \inst1|output[4]~82_combout\,
	datac => \inst1|output[4]~83_combout\,
	combout => \inst1|output[4]~84_combout\);

-- Location: LCCOMB_X30_Y12_N4
\inst1|XL[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|XL\(4) = (GLOBAL(\inst1|XL[0]~0clkctrl_outclk\) & (\inst|Data_out\(4))) # (!GLOBAL(\inst1|XL[0]~0clkctrl_outclk\) & ((\inst1|XL\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Data_out\(4),
	datac => \inst1|XL\(4),
	datad => \inst1|XL[0]~0clkctrl_outclk\,
	combout => \inst1|XL\(4));

-- Location: LCCOMB_X29_Y12_N26
\inst1|YL[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|YL\(4) = (GLOBAL(\inst1|YL[0]~0clkctrl_outclk\) & ((\inst|Data_out\(4)))) # (!GLOBAL(\inst1|YL[0]~0clkctrl_outclk\) & (\inst1|YL\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|YL\(4),
	datab => \inst|Data_out\(4),
	datac => \inst1|YL[0]~0clkctrl_outclk\,
	combout => \inst1|YL\(4));

-- Location: LCCOMB_X29_Y12_N12
\inst1|PCH[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|PCH\(4) = (GLOBAL(\inst1|PCH[0]~0clkctrl_outclk\) & (\inst|Data_out\(4))) # (!GLOBAL(\inst1|PCH[0]~0clkctrl_outclk\) & ((\inst1|PCH\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(4),
	datac => \inst1|PCH[0]~0clkctrl_outclk\,
	datad => \inst1|PCH\(4),
	combout => \inst1|PCH\(4));

-- Location: LCCOMB_X29_Y12_N30
\inst1|output[4]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[4]~78_combout\ = (\inst1|YL\(4) & ((\inst1|Equal50~0_combout\) # ((\inst1|Equal51~0_combout\ & \inst1|PCH\(4))))) # (!\inst1|YL\(4) & (\inst1|Equal51~0_combout\ & ((\inst1|PCH\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|YL\(4),
	datab => \inst1|Equal51~0_combout\,
	datac => \inst1|Equal50~0_combout\,
	datad => \inst1|PCH\(4),
	combout => \inst1|output[4]~78_combout\);

-- Location: LCCOMB_X29_Y12_N8
\inst1|s30[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s30\(4) = (GLOBAL(\inst1|s30[0]~0clkctrl_outclk\) & (\inst|Data_out\(4))) # (!GLOBAL(\inst1|s30[0]~0clkctrl_outclk\) & ((\inst1|s30\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(4),
	datac => \inst1|s30\(4),
	datad => \inst1|s30[0]~0clkctrl_outclk\,
	combout => \inst1|s30\(4));

-- Location: LCCOMB_X29_Y12_N20
\inst1|output[4]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[4]~79_combout\ = (\inst1|Equal29~1_combout\ & ((\inst1|s30\(4)) # ((\inst1|Equal1~0_combout\ & \inst1|Equal7~1_combout\)))) # (!\inst1|Equal29~1_combout\ & (\inst1|Equal1~0_combout\ & ((\inst1|Equal7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal29~1_combout\,
	datab => \inst1|Equal1~0_combout\,
	datac => \inst1|s30\(4),
	datad => \inst1|Equal7~1_combout\,
	combout => \inst1|output[4]~79_combout\);

-- Location: LCCOMB_X29_Y12_N10
\inst1|output[4]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[4]~80_combout\ = (\inst1|output[4]~78_combout\) # ((\inst1|output[4]~79_combout\) # ((\inst1|XL\(4) & \inst1|Equal48~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|XL\(4),
	datab => \inst1|output[4]~78_combout\,
	datac => \inst1|output[4]~79_combout\,
	datad => \inst1|Equal48~0_combout\,
	combout => \inst1|output[4]~80_combout\);

-- Location: LCCOMB_X30_Y13_N8
\inst1|output[4]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[4]~85_combout\ = (((\inst1|output[4]~84_combout\) # (\inst1|output[4]~80_combout\)) # (!\inst1|output[4]~77_combout\)) # (!\inst1|output[7]~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[7]~41_combout\,
	datab => \inst1|output[4]~77_combout\,
	datac => \inst1|output[4]~84_combout\,
	datad => \inst1|output[4]~80_combout\,
	combout => \inst1|output[4]~85_combout\);

-- Location: LCCOMB_X30_Y13_N26
\inst1|output[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output\(4) = (GLOBAL(\inst1|output[7]~58clkctrl_outclk\) & ((\inst1|output[4]~85_combout\))) # (!GLOBAL(\inst1|output[7]~58clkctrl_outclk\) & (\inst1|output\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[7]~58clkctrl_outclk\,
	datac => \inst1|output\(4),
	datad => \inst1|output[4]~85_combout\,
	combout => \inst1|output\(4));

-- Location: FF_X20_Y13_N15
\inst|PCL[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|output\(6),
	sload => VCC,
	ena => \inst|PCL[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PCL\(6));

-- Location: LCCOMB_X21_Y13_N16
\inst|Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector36~0_combout\ = (\inst|Equal58~2_combout\) # ((!\inst|Equal39~0_combout\ & (\inst|Add0~12_combout\ & \inst|WideNor0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal58~2_combout\,
	datab => \inst|Equal39~0_combout\,
	datac => \inst|Add0~12_combout\,
	datad => \inst|WideNor0~combout\,
	combout => \inst|Selector36~0_combout\);

-- Location: LCCOMB_X21_Y13_N10
\inst|Selector36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector36~1_combout\ = (\inst|PC[15]~5_combout\ & (((!\inst|PC[15]~2_combout\ & \inst|Selector36~0_combout\)))) # (!\inst|PC[15]~5_combout\ & ((\inst|Add3~12_combout\) # ((\inst|PC[15]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~12_combout\,
	datab => \inst|PC[15]~5_combout\,
	datac => \inst|PC[15]~2_combout\,
	datad => \inst|Selector36~0_combout\,
	combout => \inst|Selector36~1_combout\);

-- Location: LCCOMB_X21_Y13_N28
\inst|Selector36~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector36~2_combout\ = (\inst|PC[15]~2_combout\ & ((\inst|Selector36~1_combout\ & (\inst|Add2~12_combout\)) # (!\inst|Selector36~1_combout\ & ((\inst|PCL\(6)))))) # (!\inst|PC[15]~2_combout\ & (((\inst|Selector36~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~12_combout\,
	datab => \inst|PCL\(6),
	datac => \inst|PC[15]~2_combout\,
	datad => \inst|Selector36~1_combout\,
	combout => \inst|Selector36~2_combout\);

-- Location: FF_X21_Y13_N29
\inst|PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector36~2_combout\,
	clrn => \reset~input_o\,
	ena => \inst|PC[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(6));

-- Location: LCCOMB_X21_Y14_N6
\inst|estados[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|estados[6]~2_combout\ = !\inst1|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|output\(6),
	combout => \inst|estados[6]~2_combout\);

-- Location: FF_X21_Y14_N7
\inst|estados[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|estados[6]~2_combout\,
	ena => \inst|estados[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|estados\(6));

-- Location: LCCOMB_X23_Y12_N26
\inst|Selector71~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector71~2_combout\ = (\inst|PC\(14) & ((\inst|Data_out~10_combout\) # ((!\inst|estados\(6) & \inst|Equal52~1_combout\)))) # (!\inst|PC\(14) & (!\inst|estados\(6) & (\inst|Equal52~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(14),
	datab => \inst|estados\(6),
	datac => \inst|Equal52~1_combout\,
	datad => \inst|Data_out~10_combout\,
	combout => \inst|Selector71~2_combout\);

-- Location: LCCOMB_X23_Y12_N12
\inst|Selector71~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector71~3_combout\ = (\inst|Selector71~2_combout\) # ((\inst|PC\(6) & \inst|Data_out~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(6),
	datac => \inst|Selector71~2_combout\,
	datad => \inst|Data_out~11_combout\,
	combout => \inst|Selector71~3_combout\);

-- Location: FF_X23_Y12_N25
\inst|XH[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|output\(6),
	sload => VCC,
	ena => \inst|XH[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|XH\(6));

-- Location: LCCOMB_X23_Y12_N24
\inst|Selector71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector71~0_combout\ = (\inst|Equal46~0_combout\ & ((\inst|XH\(6)) # ((\inst|XL\(6) & \inst|Equal44~1_combout\)))) # (!\inst|Equal46~0_combout\ & (\inst|XL\(6) & ((\inst|Equal44~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal46~0_combout\,
	datab => \inst|XL\(6),
	datac => \inst|XH\(6),
	datad => \inst|Equal44~1_combout\,
	combout => \inst|Selector71~0_combout\);

-- Location: LCCOMB_X26_Y13_N24
\inst|YL[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|YL[6]~feeder_combout\ = \inst1|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|output\(6),
	combout => \inst|YL[6]~feeder_combout\);

-- Location: FF_X26_Y13_N25
\inst|YL[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|YL[6]~feeder_combout\,
	ena => \inst|YL[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|YL\(6));

-- Location: FF_X26_Y12_N15
\inst|YH[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|output\(6),
	sload => VCC,
	ena => \inst|YH[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|YH\(6));

-- Location: LCCOMB_X26_Y12_N14
\inst|Selector71~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector71~1_combout\ = (\inst|Equal42~0_combout\ & ((\inst|YH\(6)) # ((\inst|YL\(6) & \inst|Equal40~2_combout\)))) # (!\inst|Equal42~0_combout\ & (\inst|YL\(6) & ((\inst|Equal40~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal42~0_combout\,
	datab => \inst|YL\(6),
	datac => \inst|YH\(6),
	datad => \inst|Equal40~2_combout\,
	combout => \inst|Selector71~1_combout\);

-- Location: LCCOMB_X21_Y12_N18
\inst|Selector71~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector71~4_combout\ = (\inst|A\(6) & ((\inst|Data_out~13_combout\) # ((\inst|B\(6) & \inst|Data_out~12_combout\)))) # (!\inst|A\(6) & (\inst|B\(6) & (\inst|Data_out~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(6),
	datab => \inst|B\(6),
	datac => \inst|Data_out~12_combout\,
	datad => \inst|Data_out~13_combout\,
	combout => \inst|Selector71~4_combout\);

-- Location: LCCOMB_X24_Y12_N24
\inst|Selector71~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector71~5_combout\ = (\inst|Selector71~3_combout\) # ((\inst|Selector71~0_combout\) # ((\inst|Selector71~1_combout\) # (\inst|Selector71~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector71~3_combout\,
	datab => \inst|Selector71~0_combout\,
	datac => \inst|Selector71~1_combout\,
	datad => \inst|Selector71~4_combout\,
	combout => \inst|Selector71~5_combout\);

-- Location: FF_X24_Y12_N25
\inst|Data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector71~5_combout\,
	ena => \inst|Data_out[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Data_out\(6));

-- Location: LCCOMB_X31_Y13_N8
\inst1|XH[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|XH\(6) = (GLOBAL(\inst1|XH[0]~0clkctrl_outclk\) & (\inst|Data_out\(6))) # (!GLOBAL(\inst1|XH[0]~0clkctrl_outclk\) & ((\inst1|XH\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Data_out\(6),
	datac => \inst1|XH\(6),
	datad => \inst1|XH[0]~0clkctrl_outclk\,
	combout => \inst1|XH\(6));

-- Location: LCCOMB_X31_Y12_N4
\inst1|XL[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|XL\(6) = (GLOBAL(\inst1|XL[0]~0clkctrl_outclk\) & (\inst|Data_out\(6))) # (!GLOBAL(\inst1|XL[0]~0clkctrl_outclk\) & ((\inst1|XL\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Data_out\(6),
	datac => \inst1|XL\(6),
	datad => \inst1|XL[0]~0clkctrl_outclk\,
	combout => \inst1|XL\(6));

-- Location: LCCOMB_X27_Y15_N2
\inst1|output[6]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[6]~61_combout\ = (\inst1|XH\(6) & ((\inst1|Equal47~0_combout\) # ((\inst1|Equal48~0_combout\ & \inst1|XL\(6))))) # (!\inst1|XH\(6) & (\inst1|Equal48~0_combout\ & ((\inst1|XL\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|XH\(6),
	datab => \inst1|Equal48~0_combout\,
	datac => \inst1|Equal47~0_combout\,
	datad => \inst1|XL\(6),
	combout => \inst1|output[6]~61_combout\);

-- Location: LCCOMB_X28_Y14_N2
\inst1|Equal15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal15~3_combout\ = (\inst1|Equal15~2_combout\ & (!\inst|Dir\(3) & (!\inst|Dir\(2) & \inst1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal15~2_combout\,
	datab => \inst|Dir\(3),
	datac => \inst|Dir\(2),
	datad => \inst1|Equal0~6_combout\,
	combout => \inst1|Equal15~3_combout\);

-- Location: LCCOMB_X28_Y14_N30
\inst1|Equal23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal23~0_combout\ = (\inst1|Equal15~2_combout\ & (\inst|Dir\(3) & (!\inst|Dir\(2) & \inst1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal15~2_combout\,
	datab => \inst|Dir\(3),
	datac => \inst|Dir\(2),
	datad => \inst1|Equal0~6_combout\,
	combout => \inst1|Equal23~0_combout\);

-- Location: LCCOMB_X28_Y14_N28
\inst1|output[5]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[5]~33_combout\ = (\inst1|Equal2~0_combout\ & (!\inst1|Equal23~0_combout\ & ((!\inst1|Equal1~0_combout\) # (!\inst1|Equal15~3_combout\)))) # (!\inst1|Equal2~0_combout\ & (((!\inst1|Equal1~0_combout\)) # (!\inst1|Equal15~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal2~0_combout\,
	datab => \inst1|Equal15~3_combout\,
	datac => \inst1|Equal23~0_combout\,
	datad => \inst1|Equal1~0_combout\,
	combout => \inst1|output[5]~33_combout\);

-- Location: LCCOMB_X27_Y14_N10
\inst1|output[7]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[7]~125_combout\ = (\inst|Dir\(1)) # ((\inst|Dir\(0)) # ((!\inst1|Equal37~2_combout\ & !\inst1|Equal30~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal37~2_combout\,
	datab => \inst|Dir\(1),
	datac => \inst1|Equal30~6_combout\,
	datad => \inst|Dir\(0),
	combout => \inst1|output[7]~125_combout\);

-- Location: LCCOMB_X27_Y14_N0
\inst1|output[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[7]~34_combout\ = (!\inst1|Equal4~3_combout\ & (\inst1|output[5]~33_combout\ & \inst1|output[7]~125_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal4~3_combout\,
	datac => \inst1|output[5]~33_combout\,
	datad => \inst1|output[7]~125_combout\,
	combout => \inst1|output[7]~34_combout\);

-- Location: LCCOMB_X26_Y15_N26
\inst1|output[7]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[7]~35_combout\ = (\inst1|output[7]~32_combout\ & (\inst1|output[7]~34_combout\ & ((!\inst1|Equal37~3_combout\) # (!\inst1|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[7]~32_combout\,
	datab => \inst1|Equal2~0_combout\,
	datac => \inst1|output[7]~34_combout\,
	datad => \inst1|Equal37~3_combout\,
	combout => \inst1|output[7]~35_combout\);

-- Location: LCCOMB_X30_Y15_N20
\inst1|ACCB[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ACCB\(6) = (GLOBAL(\inst1|ACCB[0]~0clkctrl_outclk\) & (\inst|Data_out\(6))) # (!GLOBAL(\inst1|ACCB[0]~0clkctrl_outclk\) & ((\inst1|ACCB\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(6),
	datac => \inst1|ACCB[0]~0clkctrl_outclk\,
	datad => \inst1|ACCB\(6),
	combout => \inst1|ACCB\(6));

-- Location: LCCOMB_X30_Y15_N18
\inst1|ACCA[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ACCA\(6) = (GLOBAL(\inst1|ACCA[0]~0clkctrl_outclk\) & ((\inst|Data_out\(6)))) # (!GLOBAL(\inst1|ACCA[0]~0clkctrl_outclk\) & (\inst1|ACCA\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ACCA\(6),
	datac => \inst|Data_out\(6),
	datad => \inst1|ACCA[0]~0clkctrl_outclk\,
	combout => \inst1|ACCA\(6));

-- Location: LCCOMB_X30_Y15_N30
\inst1|output[6]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[6]~59_combout\ = (\inst1|Equal46~0_combout\ & ((\inst1|ACCA\(6)) # ((\inst1|ACCB\(6) & \inst1|Equal45~0_combout\)))) # (!\inst1|Equal46~0_combout\ & (\inst1|ACCB\(6) & (\inst1|Equal45~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal46~0_combout\,
	datab => \inst1|ACCB\(6),
	datac => \inst1|Equal45~0_combout\,
	datad => \inst1|ACCA\(6),
	combout => \inst1|output[6]~59_combout\);

-- Location: LCCOMB_X26_Y15_N2
\inst1|output[6]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[6]~60_combout\ = (\inst1|output[6]~59_combout\) # (!\inst1|output[7]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[7]~35_combout\,
	datad => \inst1|output[6]~59_combout\,
	combout => \inst1|output[6]~60_combout\);

-- Location: LCCOMB_X32_Y15_N8
\inst1|ccr[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ccr\(6) = (GLOBAL(\inst1|ccr[0]~0clkctrl_outclk\) & (\inst|Data_out\(6))) # (!GLOBAL(\inst1|ccr[0]~0clkctrl_outclk\) & ((\inst1|ccr\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Data_out\(6),
	datac => \inst1|ccr\(6),
	datad => \inst1|ccr[0]~0clkctrl_outclk\,
	combout => \inst1|ccr\(6));

-- Location: LCCOMB_X29_Y15_N4
\inst1|output[6]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[6]~63_combout\ = (\inst1|Equal6~1_combout\ & (\inst1|Equal44~3_combout\ & (!\inst|Dir\(3) & \inst1|ccr\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal6~1_combout\,
	datab => \inst1|Equal44~3_combout\,
	datac => \inst|Dir\(3),
	datad => \inst1|ccr\(6),
	combout => \inst1|output[6]~63_combout\);

-- Location: LCCOMB_X32_Y15_N30
\inst1|PCL[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|PCL\(6) = (GLOBAL(\inst1|PCL[1]~0clkctrl_outclk\) & (\inst|Data_out\(6))) # (!GLOBAL(\inst1|PCL[1]~0clkctrl_outclk\) & ((\inst1|PCL\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(6),
	datac => \inst1|PCL\(6),
	datad => \inst1|PCL[1]~0clkctrl_outclk\,
	combout => \inst1|PCL\(6));

-- Location: LCCOMB_X29_Y15_N26
\inst1|YH[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|YH\(6) = (GLOBAL(\inst1|YH[0]~0clkctrl_outclk\) & (\inst|Data_out\(6))) # (!GLOBAL(\inst1|YH[0]~0clkctrl_outclk\) & ((\inst1|YH\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(6),
	datac => \inst1|YH\(6),
	datad => \inst1|YH[0]~0clkctrl_outclk\,
	combout => \inst1|YH\(6));

-- Location: LCCOMB_X29_Y15_N30
\inst1|s30[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s30\(6) = (GLOBAL(\inst1|s30[0]~0clkctrl_outclk\) & (\inst|Data_out\(6))) # (!GLOBAL(\inst1|s30[0]~0clkctrl_outclk\) & ((\inst1|s30\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(6),
	datac => \inst1|s30\(6),
	datad => \inst1|s30[0]~0clkctrl_outclk\,
	combout => \inst1|s30\(6));

-- Location: LCCOMB_X29_Y15_N8
\inst1|output[6]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[6]~64_combout\ = (\inst1|YH\(6) & ((\inst1|Equal49~0_combout\) # ((\inst1|Equal29~1_combout\ & \inst1|s30\(6))))) # (!\inst1|YH\(6) & (\inst1|Equal29~1_combout\ & (\inst1|s30\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|YH\(6),
	datab => \inst1|Equal29~1_combout\,
	datac => \inst1|s30\(6),
	datad => \inst1|Equal49~0_combout\,
	combout => \inst1|output[6]~64_combout\);

-- Location: LCCOMB_X29_Y15_N22
\inst1|output[6]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[6]~65_combout\ = (\inst1|output[6]~63_combout\) # ((\inst1|output[6]~64_combout\) # ((\inst1|PCL\(6) & \inst1|Equal52~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[6]~63_combout\,
	datab => \inst1|PCL\(6),
	datac => \inst1|output[6]~64_combout\,
	datad => \inst1|Equal52~0_combout\,
	combout => \inst1|output[6]~65_combout\);

-- Location: LCCOMB_X28_Y12_N14
\inst1|YL[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|YL\(6) = (GLOBAL(\inst1|YL[0]~0clkctrl_outclk\) & (\inst|Data_out\(6))) # (!GLOBAL(\inst1|YL[0]~0clkctrl_outclk\) & ((\inst1|YL\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Data_out\(6),
	datac => \inst1|YL\(6),
	datad => \inst1|YL[0]~0clkctrl_outclk\,
	combout => \inst1|YL\(6));

-- Location: LCCOMB_X28_Y12_N6
\inst1|PCH[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|PCH\(6) = (GLOBAL(\inst1|PCH[0]~0clkctrl_outclk\) & ((\inst|Data_out\(6)))) # (!GLOBAL(\inst1|PCH[0]~0clkctrl_outclk\) & (\inst1|PCH\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PCH\(6),
	datac => \inst|Data_out\(6),
	datad => \inst1|PCH[0]~0clkctrl_outclk\,
	combout => \inst1|PCH\(6));

-- Location: LCCOMB_X28_Y12_N22
\inst1|output[6]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[6]~62_combout\ = (\inst1|Equal50~0_combout\ & ((\inst1|YL\(6)) # ((\inst1|Equal51~0_combout\ & \inst1|PCH\(6))))) # (!\inst1|Equal50~0_combout\ & (\inst1|Equal51~0_combout\ & ((\inst1|PCH\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal50~0_combout\,
	datab => \inst1|Equal51~0_combout\,
	datac => \inst1|YL\(6),
	datad => \inst1|PCH\(6),
	combout => \inst1|output[6]~62_combout\);

-- Location: LCCOMB_X26_Y15_N24
\inst1|output[6]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[6]~66_combout\ = (\inst1|output[6]~61_combout\) # ((\inst1|output[6]~60_combout\) # ((\inst1|output[6]~65_combout\) # (\inst1|output[6]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[6]~61_combout\,
	datab => \inst1|output[6]~60_combout\,
	datac => \inst1|output[6]~65_combout\,
	datad => \inst1|output[6]~62_combout\,
	combout => \inst1|output[6]~66_combout\);

-- Location: LCCOMB_X26_Y15_N16
\inst1|output[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output\(6) = (GLOBAL(\inst1|output[7]~58clkctrl_outclk\) & (\inst1|output[6]~66_combout\)) # (!GLOBAL(\inst1|output[7]~58clkctrl_outclk\) & ((\inst1|output\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[6]~66_combout\,
	datac => \inst1|output[7]~58clkctrl_outclk\,
	datad => \inst1|output\(6),
	combout => \inst1|output\(6));

-- Location: LCCOMB_X23_Y17_N26
\inst|Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector17~1_combout\ = (((!\inst|Equal4~2_combout\ & !\inst|Equal3~0_combout\)) # (!\inst|e_siguiente\(10))) # (!\inst|Equal20~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal20~1_combout\,
	datab => \inst|e_siguiente\(10),
	datac => \inst|Equal4~2_combout\,
	datad => \inst|Equal3~0_combout\,
	combout => \inst|Selector17~1_combout\);

-- Location: LCCOMB_X26_Y16_N6
\inst|Equal57~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal57~2_combout\ = (\inst|e_siguiente\(0) & (\inst|e_siguiente\(1) & \inst|Equal54~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(0),
	datab => \inst|e_siguiente\(1),
	datac => \inst|Equal54~3_combout\,
	combout => \inst|Equal57~2_combout\);

-- Location: LCCOMB_X24_Y17_N26
\inst|Selector17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector17~2_combout\ = (\inst|Selector17~1_combout\ & (!\inst|Equal57~2_combout\ & (\inst|Selector17~0_combout\ & !\inst|Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector17~1_combout\,
	datab => \inst|Equal57~2_combout\,
	datac => \inst|Selector17~0_combout\,
	datad => \inst|Equal9~0_combout\,
	combout => \inst|Selector17~2_combout\);

-- Location: LCCOMB_X27_Y18_N30
\inst|Selector25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector25~2_combout\ = ((\inst|e_siguiente\(0) $ (!\inst|e_siguiente\(1))) # (!\inst|Equal55~0_combout\)) # (!\inst|Equal8~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(0),
	datab => \inst|e_siguiente\(1),
	datac => \inst|Equal8~4_combout\,
	datad => \inst|Equal55~0_combout\,
	combout => \inst|Selector25~2_combout\);

-- Location: LCCOMB_X24_Y17_N0
\inst|Selector24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector24~2_combout\ = (\inst|Selector25~2_combout\ & (!\inst|Equal54~4_combout\ & ((!\inst|WideOr6~combout\) # (!\inst|XIRQ~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|XIRQ~q\,
	datab => \inst|Selector25~2_combout\,
	datac => \inst|Equal54~4_combout\,
	datad => \inst|WideOr6~combout\,
	combout => \inst|Selector24~2_combout\);

-- Location: LCCOMB_X24_Y17_N8
\inst|Selector17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector17~3_combout\ = (\inst|Selector19~1_combout\ & (\inst|Selector17~2_combout\ & \inst|Selector24~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector19~1_combout\,
	datac => \inst|Selector17~2_combout\,
	datad => \inst|Selector24~2_combout\,
	combout => \inst|Selector17~3_combout\);

-- Location: LCCOMB_X25_Y18_N18
\inst|Selector17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector17~4_combout\ = ((\inst|Equal4~3_combout\ & \inst1|output\(6))) # (!\inst|Selector17~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal4~3_combout\,
	datac => \inst1|output\(6),
	datad => \inst|Selector17~3_combout\,
	combout => \inst|Selector17~4_combout\);

-- Location: FF_X25_Y18_N19
\inst|e_siguiente[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector17~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|e_siguiente\(10));

-- Location: LCCOMB_X25_Y18_N28
\inst|Equal8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal8~4_combout\ = (\inst|e_siguiente\(10) & !\inst|e_siguiente\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|e_siguiente\(10),
	datad => \inst|e_siguiente\(8),
	combout => \inst|Equal8~4_combout\);

-- Location: LCCOMB_X26_Y18_N12
\inst|Equal10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal10~4_combout\ = (!\inst|e_siguiente\(0) & (\inst|Equal8~4_combout\ & (\inst|e_siguiente\(1) & \inst|Equal5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(0),
	datab => \inst|Equal8~4_combout\,
	datac => \inst|e_siguiente\(1),
	datad => \inst|Equal5~2_combout\,
	combout => \inst|Equal10~4_combout\);

-- Location: LCCOMB_X26_Y18_N22
\inst|SPL[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SPL[7]~0_combout\ = (!\inst|Equal10~4_combout\ & (!\inst|Equal7~0_combout\ & (!\inst|Equal87~0_combout\ & !\inst|Equal83~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal10~4_combout\,
	datab => \inst|Equal7~0_combout\,
	datac => \inst|Equal87~0_combout\,
	datad => \inst|Equal83~0_combout\,
	combout => \inst|SPL[7]~0_combout\);

-- Location: LCCOMB_X26_Y16_N10
\inst|SPL[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SPL[7]~1_combout\ = (\inst|SPL[7]~0_combout\ & (!\inst|Equal19~0_combout\ & (\inst|B[7]~11_combout\ & !\inst|Equal33~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SPL[7]~0_combout\,
	datab => \inst|Equal19~0_combout\,
	datac => \inst|B[7]~11_combout\,
	datad => \inst|Equal33~2_combout\,
	combout => \inst|SPL[7]~1_combout\);

-- Location: LCCOMB_X26_Y16_N4
\inst|SPL[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SPL[7]~2_combout\ = (\inst|SPL[7]~1_combout\ & (\inst|Data_out[7]~17_combout\ & (\inst|Yupa[7]~27_combout\ & \inst|WideNor0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SPL[7]~1_combout\,
	datab => \inst|Data_out[7]~17_combout\,
	datac => \inst|Yupa[7]~27_combout\,
	datad => \inst|WideNor0~combout\,
	combout => \inst|SPL[7]~2_combout\);

-- Location: FF_X26_Y16_N31
\inst|SPL[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|SPL[0]~10_combout\,
	ena => \inst|SPL[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SPL\(0));

-- Location: LCCOMB_X27_Y16_N12
\inst|Add7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add7~2_combout\ = (\inst|SPL\(1) & ((\inst|Selector20~12_combout\ & (!\inst|Add7~1\)) # (!\inst|Selector20~12_combout\ & ((\inst|Add7~1\) # (GND))))) # (!\inst|SPL\(1) & ((\inst|Selector20~12_combout\ & (\inst|Add7~1\ & VCC)) # 
-- (!\inst|Selector20~12_combout\ & (!\inst|Add7~1\))))
-- \inst|Add7~3\ = CARRY((\inst|SPL\(1) & ((!\inst|Add7~1\) # (!\inst|Selector20~12_combout\))) # (!\inst|SPL\(1) & (!\inst|Selector20~12_combout\ & !\inst|Add7~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SPL\(1),
	datab => \inst|Selector20~12_combout\,
	datad => VCC,
	cin => \inst|Add7~1\,
	combout => \inst|Add7~2_combout\,
	cout => \inst|Add7~3\);

-- Location: LCCOMB_X27_Y16_N14
\inst|Add7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add7~4_combout\ = ((\inst|SPL\(2) $ (\inst|Selector20~12_combout\ $ (\inst|Add7~3\)))) # (GND)
-- \inst|Add7~5\ = CARRY((\inst|SPL\(2) & (\inst|Selector20~12_combout\ & !\inst|Add7~3\)) # (!\inst|SPL\(2) & ((\inst|Selector20~12_combout\) # (!\inst|Add7~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SPL\(2),
	datab => \inst|Selector20~12_combout\,
	datad => VCC,
	cin => \inst|Add7~3\,
	combout => \inst|Add7~4_combout\,
	cout => \inst|Add7~5\);

-- Location: LCCOMB_X26_Y16_N14
\inst|SPL[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SPL[2]~8_combout\ = !\inst|Add7~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add7~4_combout\,
	combout => \inst|SPL[2]~8_combout\);

-- Location: FF_X26_Y16_N15
\inst|SPL[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|SPL[2]~8_combout\,
	ena => \inst|SPL[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SPL\(2));

-- Location: LCCOMB_X26_Y16_N8
\inst|SPL[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SPL[3]~7_combout\ = !\inst|Add7~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Add7~6_combout\,
	combout => \inst|SPL[3]~7_combout\);

-- Location: FF_X26_Y16_N9
\inst|SPL[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|SPL[3]~7_combout\,
	ena => \inst|SPL[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SPL\(3));

-- Location: LCCOMB_X21_Y14_N14
\inst|Aux[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Aux[3]~feeder_combout\ = \inst1|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|output\(3),
	combout => \inst|Aux[3]~feeder_combout\);

-- Location: FF_X21_Y14_N15
\inst|Aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Aux[3]~feeder_combout\,
	ena => \inst|Aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Aux\(3));

-- Location: LCCOMB_X26_Y14_N10
\inst|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector12~0_combout\ = (\inst|Dir[2]~20_combout\ & (((\inst|Aux\(3)) # (\inst|Dir[10]~21_combout\)))) # (!\inst|Dir[2]~20_combout\ & (!\inst|SPL\(3) & ((!\inst|Dir[10]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SPL\(3),
	datab => \inst|Aux\(3),
	datac => \inst|Dir[2]~20_combout\,
	datad => \inst|Dir[10]~21_combout\,
	combout => \inst|Selector12~0_combout\);

-- Location: LCCOMB_X26_Y14_N0
\inst|Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector12~1_combout\ = (\inst|Selector12~0_combout\ & ((\inst|Yupa\(3)) # ((!\inst|Dir[10]~21_combout\)))) # (!\inst|Selector12~0_combout\ & (((\inst|PC\(3) & \inst|Dir[10]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector12~0_combout\,
	datab => \inst|Yupa\(3),
	datac => \inst|PC\(3),
	datad => \inst|Dir[10]~21_combout\,
	combout => \inst|Selector12~1_combout\);

-- Location: FF_X26_Y14_N1
\inst|Dir[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Selector12~1_combout\,
	ena => \inst|Dir[15]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Dir\(3));

-- Location: LCCOMB_X30_Y14_N12
\inst1|Equal44~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal44~4_combout\ = (!\inst|Dir\(3) & (\inst1|Equal44~3_combout\ & \inst1|Equal6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dir\(3),
	datab => \inst1|Equal44~3_combout\,
	datac => \inst1|Equal6~1_combout\,
	combout => \inst1|Equal44~4_combout\);

-- Location: LCCOMB_X21_Y12_N16
\inst|Selector75~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector75~4_combout\ = (\inst|A\(2) & ((\inst|Data_out~13_combout\) # ((\inst|B\(2) & \inst|Data_out~12_combout\)))) # (!\inst|A\(2) & (\inst|B\(2) & (\inst|Data_out~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(2),
	datab => \inst|B\(2),
	datac => \inst|Data_out~12_combout\,
	datad => \inst|Data_out~13_combout\,
	combout => \inst|Selector75~4_combout\);

-- Location: FF_X23_Y12_N29
\inst|XH[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|output\(2),
	sload => VCC,
	ena => \inst|XH[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|XH\(2));

-- Location: LCCOMB_X23_Y12_N28
\inst|Selector75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector75~0_combout\ = (\inst|Equal46~0_combout\ & ((\inst|XH\(2)) # ((\inst|XL\(2) & \inst|Equal44~1_combout\)))) # (!\inst|Equal46~0_combout\ & (\inst|XL\(2) & ((\inst|Equal44~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal46~0_combout\,
	datab => \inst|XL\(2),
	datac => \inst|XH\(2),
	datad => \inst|Equal44~1_combout\,
	combout => \inst|Selector75~0_combout\);

-- Location: LCCOMB_X26_Y13_N0
\inst|YL[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|YL[2]~feeder_combout\ = \inst1|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|output\(2),
	combout => \inst|YL[2]~feeder_combout\);

-- Location: FF_X26_Y13_N1
\inst|YL[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|YL[2]~feeder_combout\,
	ena => \inst|YL[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|YL\(2));

-- Location: FF_X26_Y12_N25
\inst|YH[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|output\(2),
	sload => VCC,
	ena => \inst|YH[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|YH\(2));

-- Location: LCCOMB_X26_Y12_N24
\inst|Selector75~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector75~1_combout\ = (\inst|YL\(2) & ((\inst|Equal40~2_combout\) # ((\inst|Equal42~0_combout\ & \inst|YH\(2))))) # (!\inst|YL\(2) & (\inst|Equal42~0_combout\ & (\inst|YH\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|YL\(2),
	datab => \inst|Equal42~0_combout\,
	datac => \inst|YH\(2),
	datad => \inst|Equal40~2_combout\,
	combout => \inst|Selector75~1_combout\);

-- Location: LCCOMB_X23_Y12_N30
\inst|Selector75~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector75~2_combout\ = (\inst|PC\(10) & ((\inst|Data_out~10_combout\) # ((!\inst|estados\(2) & \inst|Equal52~1_combout\)))) # (!\inst|PC\(10) & (!\inst|estados\(2) & (\inst|Equal52~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(10),
	datab => \inst|estados\(2),
	datac => \inst|Equal52~1_combout\,
	datad => \inst|Data_out~10_combout\,
	combout => \inst|Selector75~2_combout\);

-- Location: LCCOMB_X23_Y12_N20
\inst|Selector75~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector75~3_combout\ = (\inst|Selector75~2_combout\) # ((!\inst|PC\(2) & \inst|Data_out~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(2),
	datac => \inst|Selector75~2_combout\,
	datad => \inst|Data_out~11_combout\,
	combout => \inst|Selector75~3_combout\);

-- Location: LCCOMB_X23_Y12_N4
\inst|Selector75~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector75~5_combout\ = (\inst|Selector75~4_combout\) # ((\inst|Selector75~0_combout\) # ((\inst|Selector75~1_combout\) # (\inst|Selector75~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector75~4_combout\,
	datab => \inst|Selector75~0_combout\,
	datac => \inst|Selector75~1_combout\,
	datad => \inst|Selector75~3_combout\,
	combout => \inst|Selector75~5_combout\);

-- Location: FF_X23_Y12_N5
\inst|Data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector75~5_combout\,
	ena => \inst|Data_out[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Data_out\(2));

-- Location: LCCOMB_X28_Y12_N20
\inst1|ccr[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ccr\(2) = (GLOBAL(\inst1|ccr[0]~0clkctrl_outclk\) & (\inst|Data_out\(2))) # (!GLOBAL(\inst1|ccr[0]~0clkctrl_outclk\) & ((\inst1|ccr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(2),
	datac => \inst1|ccr[0]~0clkctrl_outclk\,
	datad => \inst1|ccr\(2),
	combout => \inst1|ccr\(2));

-- Location: LCCOMB_X29_Y13_N8
\inst1|output[2]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[2]~106_combout\ = (\inst1|output[2]~38_combout\ & ((\inst1|ccr\(2)) # (!\inst1|Equal44~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal44~4_combout\,
	datac => \inst1|ccr\(2),
	datad => \inst1|output[2]~38_combout\,
	combout => \inst1|output[2]~106_combout\);

-- Location: LCCOMB_X28_Y15_N20
\inst1|YH[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|YH\(2) = (GLOBAL(\inst1|YH[0]~0clkctrl_outclk\) & (\inst|Data_out\(2))) # (!GLOBAL(\inst1|YH[0]~0clkctrl_outclk\) & ((\inst1|YH\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Data_out\(2),
	datac => \inst1|YH[0]~0clkctrl_outclk\,
	datad => \inst1|YH\(2),
	combout => \inst1|YH\(2));

-- Location: LCCOMB_X28_Y15_N18
\inst1|s30[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s30\(2) = (GLOBAL(\inst1|s30[0]~0clkctrl_outclk\) & ((\inst|Data_out\(2)))) # (!GLOBAL(\inst1|s30[0]~0clkctrl_outclk\) & (\inst1|s30\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s30\(2),
	datac => \inst|Data_out\(2),
	datad => \inst1|s30[0]~0clkctrl_outclk\,
	combout => \inst1|s30\(2));

-- Location: LCCOMB_X28_Y15_N0
\inst1|output[2]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[2]~104_combout\ = (\inst1|YH\(2) & ((\inst1|s30\(2)) # ((!\inst1|Equal29~1_combout\)))) # (!\inst1|YH\(2) & (!\inst1|Equal49~0_combout\ & ((\inst1|s30\(2)) # (!\inst1|Equal29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|YH\(2),
	datab => \inst1|s30\(2),
	datac => \inst1|Equal29~1_combout\,
	datad => \inst1|Equal49~0_combout\,
	combout => \inst1|output[2]~104_combout\);

-- Location: LCCOMB_X28_Y15_N22
\inst1|PCL[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|PCL\(2) = (GLOBAL(\inst1|PCL[1]~0clkctrl_outclk\) & (\inst|Data_out\(2))) # (!GLOBAL(\inst1|PCL[1]~0clkctrl_outclk\) & ((\inst1|PCL\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(2),
	datac => \inst1|PCL[1]~0clkctrl_outclk\,
	datad => \inst1|PCL\(2),
	combout => \inst1|PCL\(2));

-- Location: LCCOMB_X28_Y15_N6
\inst1|output[2]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[2]~105_combout\ = (\inst1|output[2]~104_combout\ & ((\inst1|PCL\(2)) # (!\inst1|Equal52~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal52~0_combout\,
	datac => \inst1|output[2]~104_combout\,
	datad => \inst1|PCL\(2),
	combout => \inst1|output[2]~105_combout\);

-- Location: LCCOMB_X29_Y14_N20
\inst1|Equal15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal15~4_combout\ = (!\inst|Dir\(4) & (\inst|Dir\(5) & (!\inst|Dir\(3) & \inst1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dir\(4),
	datab => \inst|Dir\(5),
	datac => \inst|Dir\(3),
	datad => \inst1|Equal0~6_combout\,
	combout => \inst1|Equal15~4_combout\);

-- Location: LCCOMB_X29_Y14_N28
\inst1|output[2]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[2]~95_combout\ = (\inst1|Equal15~4_combout\) # ((\inst1|Equal7~0_combout\ & (\inst1|Equal0~6_combout\ & \inst|Dir\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal7~0_combout\,
	datab => \inst1|Equal0~6_combout\,
	datac => \inst|Dir\(4),
	datad => \inst1|Equal15~4_combout\,
	combout => \inst1|output[2]~95_combout\);

-- Location: LCCOMB_X29_Y14_N8
\inst1|output[2]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[2]~96_combout\ = (\inst1|Equal3~0_combout\ & ((\inst1|output[2]~95_combout\) # ((\inst1|Equal7~1_combout\ & \inst1|Equal6~0_combout\)))) # (!\inst1|Equal3~0_combout\ & (\inst1|Equal7~1_combout\ & (\inst1|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal3~0_combout\,
	datab => \inst1|Equal7~1_combout\,
	datac => \inst1|Equal6~0_combout\,
	datad => \inst1|output[2]~95_combout\,
	combout => \inst1|output[2]~96_combout\);

-- Location: LCCOMB_X30_Y14_N16
\inst1|output[7]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[7]~130_combout\ = ((!\inst1|Equal6~1_combout\ & !\inst|Dir\(3))) # (!\inst1|Equal44~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal6~1_combout\,
	datac => \inst|Dir\(3),
	datad => \inst1|Equal44~3_combout\,
	combout => \inst1|output[7]~130_combout\);

-- Location: LCCOMB_X29_Y14_N10
\inst1|output[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[7]~23_combout\ = (\inst1|Equal6~0_combout\ & (!\inst1|Equal15~3_combout\ & ((!\inst1|Equal3~0_combout\) # (!\inst1|Equal0~4_combout\)))) # (!\inst1|Equal6~0_combout\ & (((!\inst1|Equal3~0_combout\)) # (!\inst1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal6~0_combout\,
	datab => \inst1|Equal0~4_combout\,
	datac => \inst1|Equal3~0_combout\,
	datad => \inst1|Equal15~3_combout\,
	combout => \inst1|output[7]~23_combout\);

-- Location: LCCOMB_X29_Y14_N22
\inst1|output[2]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[2]~97_combout\ = (\inst1|output[2]~96_combout\) # (((!\inst1|output[7]~23_combout\) # (!\inst1|output[7]~130_combout\)) # (!\inst1|output[7]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[2]~96_combout\,
	datab => \inst1|output[7]~32_combout\,
	datac => \inst1|output[7]~130_combout\,
	datad => \inst1|output[7]~23_combout\,
	combout => \inst1|output[2]~97_combout\);

-- Location: LCCOMB_X27_Y13_N2
\inst1|output[7]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[7]~42_combout\ = ((!\inst1|Equal37~2_combout\ & ((!\inst1|Equal30~5_combout\) # (!\inst1|Equal44~1_combout\)))) # (!\inst1|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal3~0_combout\,
	datab => \inst1|Equal44~1_combout\,
	datac => \inst1|Equal30~5_combout\,
	datad => \inst1|Equal37~2_combout\,
	combout => \inst1|output[7]~42_combout\);

-- Location: LCCOMB_X29_Y14_N26
\inst1|output[2]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[2]~47_combout\ = (\inst1|Equal6~0_combout\ & (!\inst1|Equal23~0_combout\ & ((!\inst1|Equal15~4_combout\) # (!\inst1|Equal5~0_combout\)))) # (!\inst1|Equal6~0_combout\ & (((!\inst1|Equal15~4_combout\) # (!\inst1|Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal6~0_combout\,
	datab => \inst1|Equal23~0_combout\,
	datac => \inst1|Equal5~0_combout\,
	datad => \inst1|Equal15~4_combout\,
	combout => \inst1|output[2]~47_combout\);

-- Location: LCCOMB_X29_Y14_N6
\inst1|output[2]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[2]~48_combout\ = (\inst1|output[2]~47_combout\ & (!\inst1|Equal9~2_combout\ & ((!\inst1|Equal15~3_combout\) # (!\inst1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[2]~47_combout\,
	datab => \inst1|Equal0~5_combout\,
	datac => \inst1|Equal9~2_combout\,
	datad => \inst1|Equal15~3_combout\,
	combout => \inst1|output[2]~48_combout\);

-- Location: LCCOMB_X29_Y13_N24
\inst1|output[2]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[2]~94_combout\ = (\inst1|Equal29~1_combout\) # (((!\inst1|output[2]~48_combout\) # (!\inst1|output[7]~42_combout\)) # (!\inst1|output[7]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal29~1_combout\,
	datab => \inst1|output[7]~41_combout\,
	datac => \inst1|output[7]~42_combout\,
	datad => \inst1|output[2]~48_combout\,
	combout => \inst1|output[2]~94_combout\);

-- Location: LCCOMB_X28_Y14_N24
\inst1|Equal12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal12~0_combout\ = (\inst|Dir\(4) & (\inst1|Equal7~0_combout\ & (\inst|Dir\(2) & \inst1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dir\(4),
	datab => \inst1|Equal7~0_combout\,
	datac => \inst|Dir\(2),
	datad => \inst1|Equal0~6_combout\,
	combout => \inst1|Equal12~0_combout\);

-- Location: LCCOMB_X28_Y14_N12
\inst1|output[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[7]~24_combout\ = (\inst|Dir\(1)) # ((\inst|Dir\(0) & ((!\inst1|Equal12~0_combout\))) # (!\inst|Dir\(0) & (!\inst1|Equal23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dir\(1),
	datab => \inst|Dir\(0),
	datac => \inst1|Equal23~0_combout\,
	datad => \inst1|Equal12~0_combout\,
	combout => \inst1|output[7]~24_combout\);

-- Location: LCCOMB_X28_Y14_N20
\inst1|output[5]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[5]~49_combout\ = (\inst1|output[7]~24_combout\ & (!\inst1|Equal4~3_combout\ & (!\inst1|Equal22~0_combout\ & \inst1|output[5]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[7]~24_combout\,
	datab => \inst1|Equal4~3_combout\,
	datac => \inst1|Equal22~0_combout\,
	datad => \inst1|output[5]~33_combout\,
	combout => \inst1|output[5]~49_combout\);

-- Location: LCCOMB_X27_Y13_N20
\inst1|Equal30~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal30~7_combout\ = (\inst1|Equal44~0_combout\ & (\inst|Dir\(5) & (\inst1|Equal30~5_combout\ & \inst|Dir\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal44~0_combout\,
	datab => \inst|Dir\(5),
	datac => \inst1|Equal30~5_combout\,
	datad => \inst|Dir\(4),
	combout => \inst1|Equal30~7_combout\);

-- Location: LCCOMB_X29_Y13_N26
\inst1|output[5]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[5]~43_combout\ = (\inst1|Equal6~0_combout\ & (!\inst1|Equal37~3_combout\ & ((!\inst1|Equal1~0_combout\) # (!\inst1|Equal30~6_combout\)))) # (!\inst1|Equal6~0_combout\ & (((!\inst1|Equal1~0_combout\) # (!\inst1|Equal30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal6~0_combout\,
	datab => \inst1|Equal37~3_combout\,
	datac => \inst1|Equal30~6_combout\,
	datad => \inst1|Equal1~0_combout\,
	combout => \inst1|output[5]~43_combout\);

-- Location: LCCOMB_X29_Y13_N28
\inst1|output[2]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[2]~44_combout\ = (\inst1|output[5]~43_combout\ & (((!\inst1|Equal30~7_combout\ & !\inst1|Equal37~2_combout\)) # (!\inst1|Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal4~2_combout\,
	datab => \inst1|Equal30~7_combout\,
	datac => \inst1|output[5]~43_combout\,
	datad => \inst1|Equal37~2_combout\,
	combout => \inst1|output[2]~44_combout\);

-- Location: LCCOMB_X29_Y13_N10
\inst1|output[0]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[0]~50_combout\ = (\inst1|Equal0~4_combout\ & (!\inst1|Equal6~1_combout\ & ((!\inst1|Equal1~0_combout\) # (!\inst1|Equal23~0_combout\)))) # (!\inst1|Equal0~4_combout\ & (((!\inst1|Equal1~0_combout\)) # (!\inst1|Equal23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~4_combout\,
	datab => \inst1|Equal23~0_combout\,
	datac => \inst1|Equal1~0_combout\,
	datad => \inst1|Equal6~1_combout\,
	combout => \inst1|output[0]~50_combout\);

-- Location: LCCOMB_X28_Y14_N10
\inst1|output[5]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[5]~128_combout\ = (\inst|Dir\(5)) # (((!\inst|Dir\(4)) # (!\inst|Dir\(2))) # (!\inst|Dir\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dir\(5),
	datab => \inst|Dir\(3),
	datac => \inst|Dir\(2),
	datad => \inst|Dir\(4),
	combout => \inst1|output[5]~128_combout\);

-- Location: LCCOMB_X27_Y14_N4
\inst1|output[5]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[5]~127_combout\ = (((\inst|Dir\(4)) # (!\inst|Dir\(3))) # (!\inst|Dir\(5))) # (!\inst1|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal3~0_combout\,
	datab => \inst|Dir\(5),
	datac => \inst|Dir\(3),
	datad => \inst|Dir\(4),
	combout => \inst1|output[5]~127_combout\);

-- Location: LCCOMB_X28_Y14_N26
\inst1|output[5]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[5]~51_combout\ = ((\inst1|output[5]~127_combout\ & ((\inst1|output[5]~128_combout\) # (!\inst1|Equal6~0_combout\)))) # (!\inst1|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[5]~128_combout\,
	datab => \inst1|output[5]~127_combout\,
	datac => \inst1|Equal6~0_combout\,
	datad => \inst1|Equal0~6_combout\,
	combout => \inst1|output[5]~51_combout\);

-- Location: LCCOMB_X28_Y14_N8
\inst1|output[7]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[7]~52_combout\ = (\inst1|output[5]~51_combout\ & (((!\inst1|Equal15~3_combout\ & !\inst1|Equal12~0_combout\)) # (!\inst1|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal2~0_combout\,
	datab => \inst1|Equal15~3_combout\,
	datac => \inst1|output[5]~51_combout\,
	datad => \inst1|Equal12~0_combout\,
	combout => \inst1|output[7]~52_combout\);

-- Location: LCCOMB_X29_Y13_N0
\inst1|output[7]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[7]~53_combout\ = (\inst1|output[0]~50_combout\ & (\inst1|output[7]~52_combout\ & ((!\inst1|Equal7~1_combout\) # (!\inst1|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[0]~50_combout\,
	datab => \inst1|output[7]~52_combout\,
	datac => \inst1|Equal1~0_combout\,
	datad => \inst1|Equal7~1_combout\,
	combout => \inst1|output[7]~53_combout\);

-- Location: LCCOMB_X29_Y13_N22
\inst1|output[2]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[2]~98_combout\ = (\inst1|output[5]~40_combout\ & (\inst1|output[2]~44_combout\ & \inst1|output[7]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[5]~40_combout\,
	datab => \inst1|output[2]~44_combout\,
	datad => \inst1|output[7]~53_combout\,
	combout => \inst1|output[2]~98_combout\);

-- Location: LCCOMB_X29_Y13_N14
\inst1|output[2]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[2]~99_combout\ = (\inst1|output[2]~98_combout\ & ((\inst1|output[2]~97_combout\) # ((\inst1|output[2]~94_combout\) # (!\inst1|output[5]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[2]~97_combout\,
	datab => \inst1|output[2]~94_combout\,
	datac => \inst1|output[5]~49_combout\,
	datad => \inst1|output[2]~98_combout\,
	combout => \inst1|output[2]~99_combout\);

-- Location: LCCOMB_X30_Y12_N22
\inst1|XL[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|XL\(2) = (GLOBAL(\inst1|XL[0]~0clkctrl_outclk\) & (\inst|Data_out\(2))) # (!GLOBAL(\inst1|XL[0]~0clkctrl_outclk\) & ((\inst1|XL\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Data_out\(2),
	datac => \inst1|XL\(2),
	datad => \inst1|XL[0]~0clkctrl_outclk\,
	combout => \inst1|XL\(2));

-- Location: LCCOMB_X30_Y12_N24
\inst1|XH[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|XH\(2) = (GLOBAL(\inst1|XH[0]~0clkctrl_outclk\) & ((\inst|Data_out\(2)))) # (!GLOBAL(\inst1|XH[0]~0clkctrl_outclk\) & (\inst1|XH\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|XH\(2),
	datac => \inst|Data_out\(2),
	datad => \inst1|XH[0]~0clkctrl_outclk\,
	combout => \inst1|XH\(2));

-- Location: LCCOMB_X30_Y12_N28
\inst1|output[2]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[2]~101_combout\ = (\inst1|Equal48~0_combout\ & (\inst1|XL\(2) & ((\inst1|XH\(2)) # (!\inst1|Equal47~0_combout\)))) # (!\inst1|Equal48~0_combout\ & (((\inst1|XH\(2)) # (!\inst1|Equal47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal48~0_combout\,
	datab => \inst1|XL\(2),
	datac => \inst1|Equal47~0_combout\,
	datad => \inst1|XH\(2),
	combout => \inst1|output[2]~101_combout\);

-- Location: LCCOMB_X30_Y12_N26
\inst1|YL[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|YL\(2) = (GLOBAL(\inst1|YL[0]~0clkctrl_outclk\) & (\inst|Data_out\(2))) # (!GLOBAL(\inst1|YL[0]~0clkctrl_outclk\) & ((\inst1|YL\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(2),
	datac => \inst1|YL[0]~0clkctrl_outclk\,
	datad => \inst1|YL\(2),
	combout => \inst1|YL\(2));

-- Location: LCCOMB_X31_Y12_N22
\inst1|PCH[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|PCH\(2) = (GLOBAL(\inst1|PCH[0]~0clkctrl_outclk\) & (\inst|Data_out\(2))) # (!GLOBAL(\inst1|PCH[0]~0clkctrl_outclk\) & ((\inst1|PCH\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Data_out\(2),
	datac => \inst1|PCH\(2),
	datad => \inst1|PCH[0]~0clkctrl_outclk\,
	combout => \inst1|PCH\(2));

-- Location: LCCOMB_X30_Y12_N2
\inst1|output[2]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[2]~102_combout\ = (\inst1|Equal51~0_combout\ & (\inst1|PCH\(2) & ((\inst1|YL\(2)) # (!\inst1|Equal50~0_combout\)))) # (!\inst1|Equal51~0_combout\ & (((\inst1|YL\(2))) # (!\inst1|Equal50~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal51~0_combout\,
	datab => \inst1|Equal50~0_combout\,
	datac => \inst1|YL\(2),
	datad => \inst1|PCH\(2),
	combout => \inst1|output[2]~102_combout\);

-- Location: LCCOMB_X30_Y15_N26
\inst1|ACCA[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ACCA\(2) = (GLOBAL(\inst1|ACCA[0]~0clkctrl_outclk\) & (\inst|Data_out\(2))) # (!GLOBAL(\inst1|ACCA[0]~0clkctrl_outclk\) & ((\inst1|ACCA\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(2),
	datac => \inst1|ACCA\(2),
	datad => \inst1|ACCA[0]~0clkctrl_outclk\,
	combout => \inst1|ACCA\(2));

-- Location: LCCOMB_X30_Y15_N24
\inst1|ACCB[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ACCB\(2) = (GLOBAL(\inst1|ACCB[0]~0clkctrl_outclk\) & (\inst|Data_out\(2))) # (!GLOBAL(\inst1|ACCB[0]~0clkctrl_outclk\) & ((\inst1|ACCB\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Data_out\(2),
	datac => \inst1|ACCB[0]~0clkctrl_outclk\,
	datad => \inst1|ACCB\(2),
	combout => \inst1|ACCB\(2));

-- Location: LCCOMB_X30_Y15_N14
\inst1|output[2]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[2]~100_combout\ = (\inst1|Equal45~0_combout\ & (\inst1|ACCB\(2) & ((\inst1|ACCA\(2)) # (!\inst1|Equal46~0_combout\)))) # (!\inst1|Equal45~0_combout\ & (((\inst1|ACCA\(2))) # (!\inst1|Equal46~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal45~0_combout\,
	datab => \inst1|Equal46~0_combout\,
	datac => \inst1|ACCA\(2),
	datad => \inst1|ACCB\(2),
	combout => \inst1|output[2]~100_combout\);

-- Location: LCCOMB_X29_Y13_N30
\inst1|output[2]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[2]~103_combout\ = (\inst1|output[2]~48_combout\ & (\inst1|output[2]~101_combout\ & (\inst1|output[2]~102_combout\ & \inst1|output[2]~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[2]~48_combout\,
	datab => \inst1|output[2]~101_combout\,
	datac => \inst1|output[2]~102_combout\,
	datad => \inst1|output[2]~100_combout\,
	combout => \inst1|output[2]~103_combout\);

-- Location: LCCOMB_X29_Y13_N18
\inst1|output[2]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[2]~107_combout\ = (\inst1|output[2]~106_combout\ & (\inst1|output[2]~105_combout\ & (\inst1|output[2]~99_combout\ & \inst1|output[2]~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[2]~106_combout\,
	datab => \inst1|output[2]~105_combout\,
	datac => \inst1|output[2]~99_combout\,
	datad => \inst1|output[2]~103_combout\,
	combout => \inst1|output[2]~107_combout\);

-- Location: LCCOMB_X25_Y13_N6
\inst1|output[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output\(2) = (GLOBAL(\inst1|output[7]~58clkctrl_outclk\) & ((\inst1|output[2]~107_combout\))) # (!GLOBAL(\inst1|output[7]~58clkctrl_outclk\) & (\inst1|output\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output\(2),
	datac => \inst1|output[2]~107_combout\,
	datad => \inst1|output[7]~58clkctrl_outclk\,
	combout => \inst1|output\(2));

-- Location: LCCOMB_X21_Y18_N22
\inst|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector22~0_combout\ = ((!\inst|Equal2~0_combout\ & (!\inst|Equal4~2_combout\ & !\inst|Equal3~0_combout\))) # (!\inst|Equal11~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~0_combout\,
	datab => \inst|Equal4~2_combout\,
	datac => \inst|Equal11~2_combout\,
	datad => \inst|Equal3~0_combout\,
	combout => \inst|Selector22~0_combout\);

-- Location: LCCOMB_X21_Y18_N28
\inst|Selector21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector21~4_combout\ = (\inst|Equal81~0_combout\) # ((\inst|Equal20~1_combout\ & ((\inst|Equal3~0_combout\) # (\inst|Equal4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal3~0_combout\,
	datab => \inst|Equal4~2_combout\,
	datac => \inst|Equal20~1_combout\,
	datad => \inst|Equal81~0_combout\,
	combout => \inst|Selector21~4_combout\);

-- Location: LCCOMB_X21_Y18_N2
\inst|Selector21~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector21~5_combout\ = (!\inst|Equal82~0_combout\ & (\inst|Selector22~0_combout\ & ((\inst|e_siguiente\(10)) # (!\inst|Selector21~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal82~0_combout\,
	datab => \inst|e_siguiente\(10),
	datac => \inst|Selector22~0_combout\,
	datad => \inst|Selector21~4_combout\,
	combout => \inst|Selector21~5_combout\);

-- Location: LCCOMB_X21_Y18_N20
\inst|Selector21~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector21~6_combout\ = (((\inst1|output\(2) & \inst|Equal4~3_combout\)) # (!\inst|Selector21~5_combout\)) # (!\inst|Selector21~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output\(2),
	datab => \inst|Equal4~3_combout\,
	datac => \inst|Selector21~0_combout\,
	datad => \inst|Selector21~5_combout\,
	combout => \inst|Selector21~6_combout\);

-- Location: LCCOMB_X25_Y18_N8
\inst|Selector21~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector21~7_combout\ = (\inst|Selector21~6_combout\) # ((!\inst|Selector17~3_combout\) # (!\inst|Selector21~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Selector21~6_combout\,
	datac => \inst|Selector21~3_combout\,
	datad => \inst|Selector17~3_combout\,
	combout => \inst|Selector21~7_combout\);

-- Location: FF_X25_Y18_N9
\inst|e_siguiente[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector21~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|e_siguiente\(6));

-- Location: LCCOMB_X26_Y17_N8
\inst|Equal24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal24~0_combout\ = (!\inst|e_siguiente\(6) & (\inst|e_siguiente\(9) & (\inst|Equal11~1_combout\ & !\inst|e_siguiente\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(6),
	datab => \inst|e_siguiente\(9),
	datac => \inst|Equal11~1_combout\,
	datad => \inst|e_siguiente\(5),
	combout => \inst|Equal24~0_combout\);

-- Location: LCCOMB_X26_Y17_N18
\inst|PC[15]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[15]~5_combout\ = ((\inst|e_siguiente\(0)) # ((!\inst|Equal24~0_combout\ & !\inst|Equal11~2_combout\))) # (!\inst|e_siguiente\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(1),
	datab => \inst|e_siguiente\(0),
	datac => \inst|Equal24~0_combout\,
	datad => \inst|Equal11~2_combout\,
	combout => \inst|PC[15]~5_combout\);

-- Location: LCCOMB_X20_Y14_N10
\inst|PC[15]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[15]~2_combout\ = (\inst|PC[15]~5_combout\ & (((\inst|Equal75~0_combout\ & \inst|Equal14~0_combout\)))) # (!\inst|PC[15]~5_combout\ & (\inst1|output\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output\(7),
	datab => \inst|Equal75~0_combout\,
	datac => \inst|Equal14~0_combout\,
	datad => \inst|PC[15]~5_combout\,
	combout => \inst|PC[15]~2_combout\);

-- Location: LCCOMB_X20_Y14_N0
\inst|Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector42~0_combout\ = (\inst|PC[15]~2_combout\ & (((!\inst|PC[15]~5_combout\)))) # (!\inst|PC[15]~2_combout\ & ((\inst|PC[15]~5_combout\ & ((\inst|Add0~0_combout\))) # (!\inst|PC[15]~5_combout\ & (\inst|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC[15]~2_combout\,
	datab => \inst|Add3~0_combout\,
	datac => \inst|Add0~0_combout\,
	datad => \inst|PC[15]~5_combout\,
	combout => \inst|Selector42~0_combout\);

-- Location: FF_X20_Y14_N23
\inst|PCL[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|output\(0),
	sload => VCC,
	ena => \inst|PCL[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PCL\(0));

-- Location: LCCOMB_X20_Y14_N22
\inst|Selector42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector42~1_combout\ = (\inst|PC[15]~2_combout\ & ((\inst|Selector42~0_combout\ & ((\inst|Add2~0_combout\))) # (!\inst|Selector42~0_combout\ & (\inst|PCL\(0))))) # (!\inst|PC[15]~2_combout\ & (\inst|Selector42~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC[15]~2_combout\,
	datab => \inst|Selector42~0_combout\,
	datac => \inst|PCL\(0),
	datad => \inst|Add2~0_combout\,
	combout => \inst|Selector42~1_combout\);

-- Location: LCCOMB_X20_Y14_N4
\inst|Selector42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector42~2_combout\ = (\inst|Selector42~1_combout\ & ((\inst|PC[15]~2_combout\) # ((\inst|WideOr2~23_combout\ & \inst|WideNor0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC[15]~2_combout\,
	datab => \inst|WideOr2~23_combout\,
	datac => \inst|Selector42~1_combout\,
	datad => \inst|WideNor0~combout\,
	combout => \inst|Selector42~2_combout\);

-- Location: FF_X20_Y14_N5
\inst|PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector42~2_combout\,
	clrn => \reset~input_o\,
	ena => \inst|PC[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(0));

-- Location: LCCOMB_X21_Y14_N28
\inst|estados[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|estados[0]~8_combout\ = !\inst1|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|output\(0),
	combout => \inst|estados[0]~8_combout\);

-- Location: FF_X21_Y14_N29
\inst|estados[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|estados[0]~8_combout\,
	ena => \inst|estados[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|estados\(0));

-- Location: LCCOMB_X25_Y12_N30
\inst|Selector77~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector77~2_combout\ = (\inst|estados\(0) & (((\inst|PC\(8) & \inst|Data_out~10_combout\)))) # (!\inst|estados\(0) & ((\inst|Equal52~1_combout\) # ((\inst|PC\(8) & \inst|Data_out~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|estados\(0),
	datab => \inst|Equal52~1_combout\,
	datac => \inst|PC\(8),
	datad => \inst|Data_out~10_combout\,
	combout => \inst|Selector77~2_combout\);

-- Location: LCCOMB_X25_Y12_N0
\inst|Selector77~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector77~3_combout\ = (\inst|Selector77~2_combout\) # ((\inst|PC\(0) & \inst|Data_out~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(0),
	datac => \inst|Selector77~2_combout\,
	datad => \inst|Data_out~11_combout\,
	combout => \inst|Selector77~3_combout\);

-- Location: FF_X25_Y12_N29
\inst|XH[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|output\(0),
	sload => VCC,
	ena => \inst|XH[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|XH\(0));

-- Location: LCCOMB_X25_Y12_N28
\inst|Selector77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector77~0_combout\ = (\inst|XL\(0) & ((\inst|Equal44~1_combout\) # ((\inst|Equal46~0_combout\ & \inst|XH\(0))))) # (!\inst|XL\(0) & (\inst|Equal46~0_combout\ & (\inst|XH\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|XL\(0),
	datab => \inst|Equal46~0_combout\,
	datac => \inst|XH\(0),
	datad => \inst|Equal44~1_combout\,
	combout => \inst|Selector77~0_combout\);

-- Location: FF_X24_Y12_N23
\inst|YL[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|output\(0),
	sload => VCC,
	ena => \inst|YL[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|YL\(0));

-- Location: FF_X26_Y12_N5
\inst|YH[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|output\(0),
	sload => VCC,
	ena => \inst|YH[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|YH\(0));

-- Location: LCCOMB_X26_Y12_N4
\inst|Selector77~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector77~1_combout\ = (\inst|Equal42~0_combout\ & ((\inst|YH\(0)) # ((\inst|YL\(0) & \inst|Equal40~2_combout\)))) # (!\inst|Equal42~0_combout\ & (\inst|YL\(0) & ((\inst|Equal40~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal42~0_combout\,
	datab => \inst|YL\(0),
	datac => \inst|YH\(0),
	datad => \inst|Equal40~2_combout\,
	combout => \inst|Selector77~1_combout\);

-- Location: LCCOMB_X21_Y12_N22
\inst|Selector77~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector77~4_combout\ = (\inst|B\(0) & ((\inst|Data_out~12_combout\) # ((\inst|A\(0) & \inst|Data_out~13_combout\)))) # (!\inst|B\(0) & (\inst|A\(0) & ((\inst|Data_out~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|B\(0),
	datab => \inst|A\(0),
	datac => \inst|Data_out~12_combout\,
	datad => \inst|Data_out~13_combout\,
	combout => \inst|Selector77~4_combout\);

-- Location: LCCOMB_X26_Y12_N20
\inst|Selector77~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector77~5_combout\ = (\inst|Selector77~3_combout\) # ((\inst|Selector77~0_combout\) # ((\inst|Selector77~1_combout\) # (\inst|Selector77~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector77~3_combout\,
	datab => \inst|Selector77~0_combout\,
	datac => \inst|Selector77~1_combout\,
	datad => \inst|Selector77~4_combout\,
	combout => \inst|Selector77~5_combout\);

-- Location: FF_X26_Y12_N21
\inst|Data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector77~5_combout\,
	ena => \inst|Data_out[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Data_out\(0));

-- Location: LCCOMB_X30_Y15_N12
\inst1|ACCB[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ACCB\(0) = (GLOBAL(\inst1|ACCB[0]~0clkctrl_outclk\) & (\inst|Data_out\(0))) # (!GLOBAL(\inst1|ACCB[0]~0clkctrl_outclk\) & ((\inst1|ACCB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Data_out\(0),
	datac => \inst1|ACCB[0]~0clkctrl_outclk\,
	datad => \inst1|ACCB\(0),
	combout => \inst1|ACCB\(0));

-- Location: LCCOMB_X30_Y15_N6
\inst1|ACCA[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ACCA\(0) = (GLOBAL(\inst1|ACCA[0]~0clkctrl_outclk\) & ((\inst|Data_out\(0)))) # (!GLOBAL(\inst1|ACCA[0]~0clkctrl_outclk\) & (\inst1|ACCA\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ACCA\(0),
	datab => \inst|Data_out\(0),
	datad => \inst1|ACCA[0]~0clkctrl_outclk\,
	combout => \inst1|ACCA\(0));

-- Location: LCCOMB_X30_Y15_N28
\inst1|output[0]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[0]~116_combout\ = (\inst1|ACCB\(0) & ((\inst1|Equal45~0_combout\) # ((\inst1|Equal46~0_combout\ & \inst1|ACCA\(0))))) # (!\inst1|ACCB\(0) & (\inst1|Equal46~0_combout\ & ((\inst1|ACCA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ACCB\(0),
	datab => \inst1|Equal46~0_combout\,
	datac => \inst1|Equal45~0_combout\,
	datad => \inst1|ACCA\(0),
	combout => \inst1|output[0]~116_combout\);

-- Location: LCCOMB_X29_Y13_N12
\inst1|output[0]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[0]~117_combout\ = (\inst1|output[0]~116_combout\) # (((!\inst1|output[2]~38_combout\) # (!\inst1|output[5]~49_combout\)) # (!\inst1|output[7]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[0]~116_combout\,
	datab => \inst1|output[7]~42_combout\,
	datac => \inst1|output[5]~49_combout\,
	datad => \inst1|output[2]~38_combout\,
	combout => \inst1|output[0]~117_combout\);

-- Location: LCCOMB_X31_Y14_N26
\inst1|YL[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|YL\(0) = (GLOBAL(\inst1|YL[0]~0clkctrl_outclk\) & (\inst|Data_out\(0))) # (!GLOBAL(\inst1|YL[0]~0clkctrl_outclk\) & ((\inst1|YL\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(0),
	datac => \inst1|YL\(0),
	datad => \inst1|YL[0]~0clkctrl_outclk\,
	combout => \inst1|YL\(0));

-- Location: LCCOMB_X31_Y14_N10
\inst1|PCH[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|PCH\(0) = (GLOBAL(\inst1|PCH[0]~0clkctrl_outclk\) & (\inst|Data_out\(0))) # (!GLOBAL(\inst1|PCH[0]~0clkctrl_outclk\) & ((\inst1|PCH\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(0),
	datac => \inst1|PCH[0]~0clkctrl_outclk\,
	datad => \inst1|PCH\(0),
	combout => \inst1|PCH\(0));

-- Location: LCCOMB_X31_Y14_N8
\inst1|output[0]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[0]~119_combout\ = (\inst1|Equal50~0_combout\ & ((\inst1|YL\(0)) # ((\inst1|Equal51~0_combout\ & \inst1|PCH\(0))))) # (!\inst1|Equal50~0_combout\ & (\inst1|Equal51~0_combout\ & ((\inst1|PCH\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal50~0_combout\,
	datab => \inst1|Equal51~0_combout\,
	datac => \inst1|YL\(0),
	datad => \inst1|PCH\(0),
	combout => \inst1|output[0]~119_combout\);

-- Location: LCCOMB_X31_Y14_N30
\inst1|YH[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|YH\(0) = (GLOBAL(\inst1|YH[0]~0clkctrl_outclk\) & (\inst|Data_out\(0))) # (!GLOBAL(\inst1|YH[0]~0clkctrl_outclk\) & ((\inst1|YH\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(0),
	datac => \inst1|YH\(0),
	datad => \inst1|YH[0]~0clkctrl_outclk\,
	combout => \inst1|YH\(0));

-- Location: LCCOMB_X30_Y13_N10
\inst1|output[0]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[0]~121_combout\ = (\inst1|Equal3~0_combout\ & ((\inst1|Equal15~4_combout\) # ((\inst1|YH\(0) & \inst1|Equal45~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|YH\(0),
	datab => \inst1|Equal3~0_combout\,
	datac => \inst1|Equal45~1_combout\,
	datad => \inst1|Equal15~4_combout\,
	combout => \inst1|output[0]~121_combout\);

-- Location: LCCOMB_X26_Y13_N26
\inst1|s30[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s30\(0) = (GLOBAL(\inst1|s30[0]~0clkctrl_outclk\) & (\inst|Data_out\(0))) # (!GLOBAL(\inst1|s30[0]~0clkctrl_outclk\) & ((\inst1|s30\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(0),
	datac => \inst1|s30\(0),
	datad => \inst1|s30[0]~0clkctrl_outclk\,
	combout => \inst1|s30\(0));

-- Location: LCCOMB_X30_Y13_N0
\inst1|output[0]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[0]~122_combout\ = (\inst1|output[0]~121_combout\) # ((\inst1|Equal9~2_combout\) # ((\inst1|s30\(0) & \inst1|Equal29~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[0]~121_combout\,
	datab => \inst1|s30\(0),
	datac => \inst1|Equal9~2_combout\,
	datad => \inst1|Equal29~1_combout\,
	combout => \inst1|output[0]~122_combout\);

-- Location: LCCOMB_X26_Y13_N4
\inst1|PCL[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|PCL\(0) = (GLOBAL(\inst1|PCL[1]~0clkctrl_outclk\) & (\inst|Data_out\(0))) # (!GLOBAL(\inst1|PCL[1]~0clkctrl_outclk\) & ((\inst1|PCL\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(0),
	datac => \inst1|PCL\(0),
	datad => \inst1|PCL[1]~0clkctrl_outclk\,
	combout => \inst1|PCL\(0));

-- Location: LCCOMB_X31_Y13_N6
\inst1|output[0]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[0]~120_combout\ = ((\inst1|PCL\(0) & \inst1|Equal52~0_combout\)) # (!\inst1|output[0]~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PCL\(0),
	datac => \inst1|output[0]~50_combout\,
	datad => \inst1|Equal52~0_combout\,
	combout => \inst1|output[0]~120_combout\);

-- Location: LCCOMB_X31_Y13_N30
\inst1|XH[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|XH\(0) = (GLOBAL(\inst1|XH[0]~0clkctrl_outclk\) & (\inst|Data_out\(0))) # (!GLOBAL(\inst1|XH[0]~0clkctrl_outclk\) & ((\inst1|XH\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Data_out\(0),
	datac => \inst1|XH\(0),
	datad => \inst1|XH[0]~0clkctrl_outclk\,
	combout => \inst1|XH\(0));

-- Location: LCCOMB_X31_Y13_N0
\inst1|XL[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|XL\(0) = (GLOBAL(\inst1|XL[0]~0clkctrl_outclk\) & (\inst|Data_out\(0))) # (!GLOBAL(\inst1|XL[0]~0clkctrl_outclk\) & ((\inst1|XL\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(0),
	datac => \inst1|XL[0]~0clkctrl_outclk\,
	datad => \inst1|XL\(0),
	combout => \inst1|XL\(0));

-- Location: LCCOMB_X31_Y13_N24
\inst1|output[0]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[0]~118_combout\ = (\inst1|XH\(0) & ((\inst1|Equal47~0_combout\) # ((\inst1|XL\(0) & \inst1|Equal48~0_combout\)))) # (!\inst1|XH\(0) & (\inst1|XL\(0) & (\inst1|Equal48~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|XH\(0),
	datab => \inst1|XL\(0),
	datac => \inst1|Equal48~0_combout\,
	datad => \inst1|Equal47~0_combout\,
	combout => \inst1|output[0]~118_combout\);

-- Location: LCCOMB_X30_Y13_N14
\inst1|output[0]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[0]~123_combout\ = (\inst1|output[0]~119_combout\) # ((\inst1|output[0]~122_combout\) # ((\inst1|output[0]~120_combout\) # (\inst1|output[0]~118_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[0]~119_combout\,
	datab => \inst1|output[0]~122_combout\,
	datac => \inst1|output[0]~120_combout\,
	datad => \inst1|output[0]~118_combout\,
	combout => \inst1|output[0]~123_combout\);

-- Location: LCCOMB_X27_Y12_N24
\inst1|ccr[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ccr\(0) = (GLOBAL(\inst1|ccr[0]~0clkctrl_outclk\) & (\inst|Data_out\(0))) # (!GLOBAL(\inst1|ccr[0]~0clkctrl_outclk\) & ((\inst1|ccr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(0),
	datac => \inst1|ccr[0]~0clkctrl_outclk\,
	datad => \inst1|ccr\(0),
	combout => \inst1|ccr\(0));

-- Location: LCCOMB_X30_Y13_N16
\inst1|output[0]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[0]~124_combout\ = (\inst1|output[0]~117_combout\) # ((\inst1|output[0]~123_combout\) # ((\inst1|ccr\(0) & \inst1|Equal44~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[0]~117_combout\,
	datab => \inst1|output[0]~123_combout\,
	datac => \inst1|ccr\(0),
	datad => \inst1|Equal44~4_combout\,
	combout => \inst1|output[0]~124_combout\);

-- Location: LCCOMB_X30_Y13_N12
\inst1|output[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output\(0) = (GLOBAL(\inst1|output[7]~58clkctrl_outclk\) & ((\inst1|output[0]~124_combout\))) # (!GLOBAL(\inst1|output[7]~58clkctrl_outclk\) & (\inst1|output\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output\(0),
	datab => \inst1|output[0]~124_combout\,
	datad => \inst1|output[7]~58clkctrl_outclk\,
	combout => \inst1|output\(0));

-- Location: LCCOMB_X26_Y16_N2
\inst|Selector18~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector18~14_combout\ = (\inst|e_siguiente\(1)) # (!\inst|Equal20~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|e_siguiente\(1),
	datad => \inst|Equal20~1_combout\,
	combout => \inst|Selector18~14_combout\);

-- Location: LCCOMB_X27_Y18_N24
\inst|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector23~0_combout\ = (!\inst|Equal33~2_combout\ & (\inst|Selector18~14_combout\ & ((!\inst|Equal4~3_combout\) # (!\inst1|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output\(0),
	datab => \inst|Equal4~3_combout\,
	datac => \inst|Equal33~2_combout\,
	datad => \inst|Selector18~14_combout\,
	combout => \inst|Selector23~0_combout\);

-- Location: LCCOMB_X23_Y15_N28
\inst|Selector22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector22~2_combout\ = (\inst|B[7]~11_combout\ & (!\inst|Equal18~3_combout\ & \inst|Selector18~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|B[7]~11_combout\,
	datac => \inst|Equal18~3_combout\,
	datad => \inst|Selector18~11_combout\,
	combout => \inst|Selector22~2_combout\);

-- Location: LCCOMB_X25_Y18_N16
\inst|Selector23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector23~1_combout\ = (((\inst|Equal2~0_combout\ & \inst|Equal32~1_combout\)) # (!\inst|Selector22~2_combout\)) # (!\inst|Selector23~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~0_combout\,
	datab => \inst|Equal32~1_combout\,
	datac => \inst|Selector23~0_combout\,
	datad => \inst|Selector22~2_combout\,
	combout => \inst|Selector23~1_combout\);

-- Location: FF_X25_Y18_N17
\inst|e_siguiente[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector23~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|e_siguiente\(4));

-- Location: LCCOMB_X25_Y18_N24
\inst|Equal75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal75~0_combout\ = (\inst|e_siguiente\(7) & (!\inst|e_siguiente\(4) & (!\inst|e_siguiente\(2) & \inst|Equal32~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(7),
	datab => \inst|e_siguiente\(4),
	datac => \inst|e_siguiente\(2),
	datad => \inst|Equal32~0_combout\,
	combout => \inst|Equal75~0_combout\);

-- Location: LCCOMB_X24_Y14_N22
\inst|Equal78~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal78~2_combout\ = (\inst|e_siguiente\(0) & (\inst|e_siguiente\(1) & \inst|Equal75~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(0),
	datac => \inst|e_siguiente\(1),
	datad => \inst|Equal75~0_combout\,
	combout => \inst|Equal78~2_combout\);

-- Location: LCCOMB_X25_Y16_N6
\inst|Selector20~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector20~9_combout\ = ((\inst|Equal18~3_combout\) # ((\inst|Equal78~2_combout\) # (\inst|Equal33~2_combout\))) # (!\inst|Selector20~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector20~13_combout\,
	datab => \inst|Equal18~3_combout\,
	datac => \inst|Equal78~2_combout\,
	datad => \inst|Equal33~2_combout\,
	combout => \inst|Selector20~9_combout\);

-- Location: LCCOMB_X25_Y16_N24
\inst|Selector20~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector20~10_combout\ = (\inst|Selector20~9_combout\) # (((!\inst|Selector20~8_combout\) # (!\inst|Dir[15]~13_combout\)) # (!\inst|Data_out[7]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector20~9_combout\,
	datab => \inst|Data_out[7]~16_combout\,
	datac => \inst|Dir[15]~13_combout\,
	datad => \inst|Selector20~8_combout\,
	combout => \inst|Selector20~10_combout\);

-- Location: LCCOMB_X25_Y17_N0
\inst|WideOr2~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr2~21_combout\ = (\inst|WideOr2~24_combout\ & (\inst|WideOr2~15_combout\ & (\inst|WideOr2~14_combout\ & \inst|WideOr2~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr2~24_combout\,
	datab => \inst|WideOr2~15_combout\,
	datac => \inst|WideOr2~14_combout\,
	datad => \inst|WideOr2~22_combout\,
	combout => \inst|WideOr2~21_combout\);

-- Location: LCCOMB_X25_Y18_N14
\inst|Selector20~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector20~11_combout\ = (\inst|Selector20~10_combout\) # (((\inst|Equal4~3_combout\ & \inst1|output\(3))) # (!\inst|WideOr2~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal4~3_combout\,
	datab => \inst|Selector20~10_combout\,
	datac => \inst1|output\(3),
	datad => \inst|WideOr2~21_combout\,
	combout => \inst|Selector20~11_combout\);

-- Location: FF_X25_Y18_N15
\inst|e_siguiente[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector20~11_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|e_siguiente\(7));

-- Location: LCCOMB_X25_Y18_N10
\inst|Equal32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal32~1_combout\ = (\inst|e_siguiente\(7) & (\inst|e_siguiente\(4) & (!\inst|e_siguiente\(2) & \inst|Equal32~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(7),
	datab => \inst|e_siguiente\(4),
	datac => \inst|e_siguiente\(2),
	datad => \inst|Equal32~0_combout\,
	combout => \inst|Equal32~1_combout\);

-- Location: LCCOMB_X24_Y15_N24
\inst|Selector25~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector25~6_combout\ = (\inst|Equal75~0_combout\ & (!\inst|Equal4~2_combout\ & (!\inst|Equal3~0_combout\))) # (!\inst|Equal75~0_combout\ & (((!\inst|Equal4~2_combout\ & !\inst|Equal3~0_combout\)) # (!\inst|Equal48~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal75~0_combout\,
	datab => \inst|Equal4~2_combout\,
	datac => \inst|Equal3~0_combout\,
	datad => \inst|Equal48~0_combout\,
	combout => \inst|Selector25~6_combout\);

-- Location: LCCOMB_X24_Y15_N18
\inst|Selector25~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector25~9_combout\ = (\inst|Selector25~6_combout\ & ((\inst|e_siguiente\(1)) # ((!\inst|Equal32~1_combout\) # (!\inst|e_siguiente\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(1),
	datab => \inst|e_siguiente\(0),
	datac => \inst|Equal32~1_combout\,
	datad => \inst|Selector25~6_combout\,
	combout => \inst|Selector25~9_combout\);

-- Location: LCCOMB_X23_Y18_N2
\inst|Selector25~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector25~7_combout\ = (\inst|Dir[10]~23_combout\ & (\inst|Selector38~0_combout\ & (\inst|PC[15]~5_combout\ & \inst|Selector25~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dir[10]~23_combout\,
	datab => \inst|Selector38~0_combout\,
	datac => \inst|PC[15]~5_combout\,
	datad => \inst|Selector25~2_combout\,
	combout => \inst|Selector25~7_combout\);

-- Location: LCCOMB_X24_Y17_N24
\inst|Selector16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector16~2_combout\ = (!\inst|Equal16~2_combout\ & (\inst|Dir[15]~24_combout\ & (\inst|Dir[15]~12_combout\ & \inst|B[7]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal16~2_combout\,
	datab => \inst|Dir[15]~24_combout\,
	datac => \inst|Dir[15]~12_combout\,
	datad => \inst|B[7]~11_combout\,
	combout => \inst|Selector16~2_combout\);

-- Location: LCCOMB_X23_Y18_N6
\inst|Selector25~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector25~8_combout\ = (((!\inst|Selector25~5_combout\) # (!\inst|Selector16~2_combout\)) # (!\inst|Selector25~7_combout\)) # (!\inst|Selector25~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector25~9_combout\,
	datab => \inst|Selector25~7_combout\,
	datac => \inst|Selector16~2_combout\,
	datad => \inst|Selector25~5_combout\,
	combout => \inst|Selector25~8_combout\);

-- Location: FF_X23_Y18_N7
\inst|e_siguiente[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector25~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|e_siguiente\(1));

-- Location: LCCOMB_X27_Y18_N20
\inst|Equal4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~3_combout\ = (\inst|e_siguiente\(1) & (\inst|Equal2~1_combout\ & !\inst|e_siguiente\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|e_siguiente\(1),
	datac => \inst|Equal2~1_combout\,
	datad => \inst|e_siguiente\(0),
	combout => \inst|Equal4~3_combout\);

-- Location: LCCOMB_X24_Y17_N30
\inst|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector16~1_combout\ = (\inst|Selector21~0_combout\ & (\inst|Selector17~0_combout\ & \inst|Selector16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Selector21~0_combout\,
	datac => \inst|Selector17~0_combout\,
	datad => \inst|Selector16~0_combout\,
	combout => \inst|Selector16~1_combout\);

-- Location: LCCOMB_X24_Y17_N2
\inst|Selector16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector16~3_combout\ = (((\inst|Equal4~3_combout\ & \inst1|output\(7))) # (!\inst|Selector16~1_combout\)) # (!\inst|Selector16~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal4~3_combout\,
	datab => \inst|Selector16~2_combout\,
	datac => \inst|Selector16~1_combout\,
	datad => \inst1|output\(7),
	combout => \inst|Selector16~3_combout\);

-- Location: FF_X25_Y18_N29
\inst|e_siguiente[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Selector16~3_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|e_siguiente\(11));

-- Location: LCCOMB_X24_Y18_N26
\inst|Equal15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal15~0_combout\ = (!\inst|e_siguiente\(4) & (\inst|e_siguiente\(8) & (\inst|e_siguiente\(7) & \inst|e_siguiente\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(4),
	datab => \inst|e_siguiente\(8),
	datac => \inst|e_siguiente\(7),
	datad => \inst|e_siguiente\(10),
	combout => \inst|Equal15~0_combout\);

-- Location: LCCOMB_X24_Y18_N24
\inst|Equal15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal15~1_combout\ = (!\inst|e_siguiente\(9) & (\inst|e_siguiente\(11) & (\inst|Equal15~0_combout\ & \inst|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(9),
	datab => \inst|e_siguiente\(11),
	datac => \inst|Equal15~0_combout\,
	datad => \inst|Equal5~0_combout\,
	combout => \inst|Equal15~1_combout\);

-- Location: LCCOMB_X21_Y16_N20
\inst|XL[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|XL[7]~0_combout\ = (\reset~input_o\ & (\inst|Equal4~2_combout\ & ((\inst|Equal15~1_combout\) # (\inst|Equal67~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \inst|Equal15~1_combout\,
	datac => \inst|Equal4~2_combout\,
	datad => \inst|Equal67~1_combout\,
	combout => \inst|XL[7]~0_combout\);

-- Location: FF_X20_Y12_N21
\inst|XL[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|XL[5]~feeder_combout\,
	ena => \inst|XL[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|XL\(5));

-- Location: FF_X26_Y13_N19
\inst|Yupa[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Yupa[5]~21_combout\,
	asdata => \inst|Add4~10_combout\,
	sload => \inst|Equal18~3_combout\,
	ena => \inst|Yupa[7]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Yupa\(5));

-- Location: LCCOMB_X21_Y14_N20
\inst|Aux[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Aux[5]~feeder_combout\ = \inst1|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|output\(5),
	combout => \inst|Aux[5]~feeder_combout\);

-- Location: FF_X21_Y14_N21
\inst|Aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Aux[5]~feeder_combout\,
	ena => \inst|Aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Aux\(5));

-- Location: LCCOMB_X26_Y14_N22
\inst|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector10~0_combout\ = (\inst|Dir[2]~20_combout\ & ((\inst|Aux\(5)) # ((\inst|Dir[10]~21_combout\)))) # (!\inst|Dir[2]~20_combout\ & (((!\inst|SPL\(5) & !\inst|Dir[10]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Aux\(5),
	datab => \inst|SPL\(5),
	datac => \inst|Dir[2]~20_combout\,
	datad => \inst|Dir[10]~21_combout\,
	combout => \inst|Selector10~0_combout\);

-- Location: LCCOMB_X26_Y14_N30
\inst|Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector10~1_combout\ = (\inst|Dir[10]~21_combout\ & ((\inst|Selector10~0_combout\ & (\inst|Yupa\(5))) # (!\inst|Selector10~0_combout\ & ((\inst|PC\(5)))))) # (!\inst|Dir[10]~21_combout\ & (((\inst|Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Yupa\(5),
	datab => \inst|Dir[10]~21_combout\,
	datac => \inst|Selector10~0_combout\,
	datad => \inst|PC\(5),
	combout => \inst|Selector10~1_combout\);

-- Location: FF_X26_Y14_N31
\inst|Dir[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Selector10~1_combout\,
	ena => \inst|Dir[15]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Dir\(5));

-- Location: LCCOMB_X26_Y14_N12
\inst1|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal7~0_combout\ = (!\inst|Dir\(5) & \inst|Dir\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Dir\(5),
	datad => \inst|Dir\(3),
	combout => \inst1|Equal7~0_combout\);

-- Location: LCCOMB_X30_Y14_N26
\inst1|Equal11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal11~0_combout\ = (\inst1|Equal7~0_combout\ & (\inst1|Equal3~0_combout\ & (\inst|Dir\(4) & \inst1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal7~0_combout\,
	datab => \inst1|Equal3~0_combout\,
	datac => \inst|Dir\(4),
	datad => \inst1|Equal0~6_combout\,
	combout => \inst1|Equal11~0_combout\);

-- Location: LCCOMB_X25_Y12_N26
\inst|Selector76~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector76~4_combout\ = (\inst|Data_out~13_combout\ & ((\inst|A\(1)) # ((\inst|B\(1) & \inst|Data_out~12_combout\)))) # (!\inst|Data_out~13_combout\ & (((\inst|B\(1) & \inst|Data_out~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out~13_combout\,
	datab => \inst|A\(1),
	datac => \inst|B\(1),
	datad => \inst|Data_out~12_combout\,
	combout => \inst|Selector76~4_combout\);

-- Location: FF_X25_Y12_N19
\inst|XH[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|output\(1),
	sload => VCC,
	ena => \inst|XH[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|XH\(1));

-- Location: LCCOMB_X25_Y12_N18
\inst|Selector76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector76~0_combout\ = (\inst|XL\(1) & ((\inst|Equal44~1_combout\) # ((\inst|Equal46~0_combout\ & \inst|XH\(1))))) # (!\inst|XL\(1) & (\inst|Equal46~0_combout\ & (\inst|XH\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|XL\(1),
	datab => \inst|Equal46~0_combout\,
	datac => \inst|XH\(1),
	datad => \inst|Equal44~1_combout\,
	combout => \inst|Selector76~0_combout\);

-- Location: LCCOMB_X26_Y13_N6
\inst|YL[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|YL[1]~feeder_combout\ = \inst1|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|output\(1),
	combout => \inst|YL[1]~feeder_combout\);

-- Location: FF_X26_Y13_N7
\inst|YL[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|YL[1]~feeder_combout\,
	ena => \inst|YL[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|YL\(1));

-- Location: FF_X26_Y12_N11
\inst|YH[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|output\(1),
	sload => VCC,
	ena => \inst|YH[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|YH\(1));

-- Location: LCCOMB_X26_Y12_N10
\inst|Selector76~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector76~1_combout\ = (\inst|Equal42~0_combout\ & ((\inst|YH\(1)) # ((\inst|YL\(1) & \inst|Equal40~2_combout\)))) # (!\inst|Equal42~0_combout\ & (\inst|YL\(1) & ((\inst|Equal40~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal42~0_combout\,
	datab => \inst|YL\(1),
	datac => \inst|YH\(1),
	datad => \inst|Equal40~2_combout\,
	combout => \inst|Selector76~1_combout\);

-- Location: LCCOMB_X21_Y12_N30
\inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (\inst|B\(1)) # ((\inst|B\(2)) # ((\inst|B\(3)) # (\inst|B\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|B\(1),
	datab => \inst|B\(2),
	datac => \inst|B\(3),
	datad => \inst|B\(0),
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X21_Y12_N24
\inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (\inst|B\(7)) # ((\inst|B\(4)) # ((\inst|B\(6)) # (\inst|B\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|B\(7),
	datab => \inst|B\(4),
	datac => \inst|B\(6),
	datad => \inst|B\(5),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y15_N20
\inst|Selector53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector53~0_combout\ = (\inst|Equal1~0_combout\ & (\inst|Equal1~1_combout\ & ((\inst|LessThan0~1_combout\) # (\inst|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~1_combout\,
	datab => \inst|Equal1~0_combout\,
	datac => \inst|LessThan0~0_combout\,
	datad => \inst|Equal1~1_combout\,
	combout => \inst|Selector53~0_combout\);

-- Location: LCCOMB_X23_Y15_N30
\inst|Selector53~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector53~1_combout\ = (\inst|Equal19~0_combout\ & ((\inst|Selector53~0_combout\) # ((\inst1|output\(1) & \inst|Equal61~0_combout\)))) # (!\inst|Equal19~0_combout\ & (((\inst1|output\(1) & \inst|Equal61~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal19~0_combout\,
	datab => \inst|Selector53~0_combout\,
	datac => \inst1|output\(1),
	datad => \inst|Equal61~0_combout\,
	combout => \inst|Selector53~1_combout\);

-- Location: LCCOMB_X23_Y14_N30
\inst|Selector53~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector53~2_combout\ = (!\inst|Selector53~1_combout\ & ((\inst|estados\(1)) # (!\inst|WideOr31~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector53~1_combout\,
	datac => \inst|estados\(1),
	datad => \inst|WideOr31~combout\,
	combout => \inst|Selector53~2_combout\);

-- Location: FF_X23_Y14_N31
\inst|estados[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector53~2_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|estados\(1));

-- Location: LCCOMB_X25_Y13_N8
\inst|Selector76~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector76~2_combout\ = (\inst|estados\(1) & (\inst|PC\(9) & ((\inst|Data_out~10_combout\)))) # (!\inst|estados\(1) & ((\inst|Equal52~1_combout\) # ((\inst|PC\(9) & \inst|Data_out~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|estados\(1),
	datab => \inst|PC\(9),
	datac => \inst|Equal52~1_combout\,
	datad => \inst|Data_out~10_combout\,
	combout => \inst|Selector76~2_combout\);

-- Location: LCCOMB_X25_Y12_N20
\inst|Selector76~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector76~3_combout\ = (\inst|Selector76~2_combout\) # ((\inst|PC\(1) & \inst|Data_out~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector76~2_combout\,
	datab => \inst|PC\(1),
	datad => \inst|Data_out~11_combout\,
	combout => \inst|Selector76~3_combout\);

-- Location: LCCOMB_X25_Y12_N2
\inst|Selector76~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector76~5_combout\ = (\inst|Selector76~4_combout\) # ((\inst|Selector76~0_combout\) # ((\inst|Selector76~1_combout\) # (\inst|Selector76~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector76~4_combout\,
	datab => \inst|Selector76~0_combout\,
	datac => \inst|Selector76~1_combout\,
	datad => \inst|Selector76~3_combout\,
	combout => \inst|Selector76~5_combout\);

-- Location: FF_X25_Y12_N3
\inst|Data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector76~5_combout\,
	ena => \inst|Data_out[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Data_out\(1));

-- Location: LCCOMB_X30_Y14_N24
\inst1|ccr[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ccr\(1) = (GLOBAL(\inst1|ccr[0]~0clkctrl_outclk\) & (\inst|Data_out\(1))) # (!GLOBAL(\inst1|ccr[0]~0clkctrl_outclk\) & ((\inst1|ccr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(1),
	datac => \inst1|ccr[0]~0clkctrl_outclk\,
	datad => \inst1|ccr\(1),
	combout => \inst1|ccr\(1));

-- Location: LCCOMB_X30_Y14_N8
\inst1|output[1]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[1]~108_combout\ = (!\inst1|Equal11~0_combout\ & (!\inst1|Equal22~0_combout\ & ((\inst1|ccr\(1)) # (!\inst1|Equal44~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal11~0_combout\,
	datab => \inst1|ccr\(1),
	datac => \inst1|Equal44~4_combout\,
	datad => \inst1|Equal22~0_combout\,
	combout => \inst1|output[1]~108_combout\);

-- Location: LCCOMB_X31_Y13_N26
\inst1|XH[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|XH\(1) = (GLOBAL(\inst1|XH[0]~0clkctrl_outclk\) & (\inst|Data_out\(1))) # (!GLOBAL(\inst1|XH[0]~0clkctrl_outclk\) & ((\inst1|XH\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(1),
	datac => \inst1|XH\(1),
	datad => \inst1|XH[0]~0clkctrl_outclk\,
	combout => \inst1|XH\(1));

-- Location: LCCOMB_X31_Y13_N16
\inst1|XL[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|XL\(1) = (GLOBAL(\inst1|XL[0]~0clkctrl_outclk\) & ((\inst|Data_out\(1)))) # (!GLOBAL(\inst1|XL[0]~0clkctrl_outclk\) & (\inst1|XL\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|XL\(1),
	datac => \inst1|XL[0]~0clkctrl_outclk\,
	datad => \inst|Data_out\(1),
	combout => \inst1|XL\(1));

-- Location: LCCOMB_X31_Y13_N18
\inst1|output[1]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[1]~110_combout\ = (\inst1|XH\(1) & ((\inst1|XL\(1)) # ((!\inst1|Equal48~0_combout\)))) # (!\inst1|XH\(1) & (!\inst1|Equal47~0_combout\ & ((\inst1|XL\(1)) # (!\inst1|Equal48~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|XH\(1),
	datab => \inst1|XL\(1),
	datac => \inst1|Equal48~0_combout\,
	datad => \inst1|Equal47~0_combout\,
	combout => \inst1|output[1]~110_combout\);

-- Location: LCCOMB_X31_Y13_N22
\inst1|ACCB[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ACCB\(1) = (GLOBAL(\inst1|ACCB[0]~0clkctrl_outclk\) & (\inst|Data_out\(1))) # (!GLOBAL(\inst1|ACCB[0]~0clkctrl_outclk\) & ((\inst1|ACCB\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(1),
	datac => \inst1|ACCB\(1),
	datad => \inst1|ACCB[0]~0clkctrl_outclk\,
	combout => \inst1|ACCB\(1));

-- Location: LCCOMB_X31_Y13_N28
\inst1|output[1]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[1]~109_combout\ = (\inst1|ACCB\(1)) # (((\inst|Dir\(2)) # (!\inst1|Equal0~5_combout\)) # (!\inst1|Equal45~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ACCB\(1),
	datab => \inst1|Equal45~1_combout\,
	datac => \inst1|Equal0~5_combout\,
	datad => \inst|Dir\(2),
	combout => \inst1|output[1]~109_combout\);

-- Location: LCCOMB_X27_Y15_N26
\inst1|ACCA[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ACCA\(1) = (GLOBAL(\inst1|ACCA[0]~0clkctrl_outclk\) & (\inst|Data_out\(1))) # (!GLOBAL(\inst1|ACCA[0]~0clkctrl_outclk\) & ((\inst1|ACCA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(1),
	datac => \inst1|ACCA\(1),
	datad => \inst1|ACCA[0]~0clkctrl_outclk\,
	combout => \inst1|ACCA\(1));

-- Location: LCCOMB_X30_Y13_N18
\inst1|output[1]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[1]~111_combout\ = (\inst1|output[1]~110_combout\ & (\inst1|output[1]~109_combout\ & ((\inst1|ACCA\(1)) # (!\inst1|Equal46~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[1]~110_combout\,
	datab => \inst1|output[1]~109_combout\,
	datac => \inst1|Equal46~0_combout\,
	datad => \inst1|ACCA\(1),
	combout => \inst1|output[1]~111_combout\);

-- Location: LCCOMB_X27_Y15_N12
\inst1|PCL[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|PCL\(1) = (GLOBAL(\inst1|PCL[1]~0clkctrl_outclk\) & (\inst|Data_out\(1))) # (!GLOBAL(\inst1|PCL[1]~0clkctrl_outclk\) & ((\inst1|PCL\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Data_out\(1),
	datac => \inst1|PCL[1]~0clkctrl_outclk\,
	datad => \inst1|PCL\(1),
	combout => \inst1|PCL\(1));

-- Location: LCCOMB_X29_Y12_N14
\inst1|YL[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|YL\(1) = (GLOBAL(\inst1|YL[0]~0clkctrl_outclk\) & (\inst|Data_out\(1))) # (!GLOBAL(\inst1|YL[0]~0clkctrl_outclk\) & ((\inst1|YL\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(1),
	datab => \inst1|YL\(1),
	datac => \inst1|YL[0]~0clkctrl_outclk\,
	combout => \inst1|YL\(1));

-- Location: LCCOMB_X29_Y12_N24
\inst1|PCH[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|PCH\(1) = (GLOBAL(\inst1|PCH[0]~0clkctrl_outclk\) & (\inst|Data_out\(1))) # (!GLOBAL(\inst1|PCH[0]~0clkctrl_outclk\) & ((\inst1|PCH\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Data_out\(1),
	datac => \inst1|PCH[0]~0clkctrl_outclk\,
	datad => \inst1|PCH\(1),
	combout => \inst1|PCH\(1));

-- Location: LCCOMB_X29_Y12_N16
\inst1|output[1]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[1]~112_combout\ = (\inst1|Equal51~0_combout\ & (\inst1|PCH\(1) & ((\inst1|YL\(1)) # (!\inst1|Equal50~0_combout\)))) # (!\inst1|Equal51~0_combout\ & ((\inst1|YL\(1)) # ((!\inst1|Equal50~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal51~0_combout\,
	datab => \inst1|YL\(1),
	datac => \inst1|Equal50~0_combout\,
	datad => \inst1|PCH\(1),
	combout => \inst1|output[1]~112_combout\);

-- Location: LCCOMB_X31_Y14_N22
\inst1|YH[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|YH\(1) = (GLOBAL(\inst1|YH[0]~0clkctrl_outclk\) & (\inst|Data_out\(1))) # (!GLOBAL(\inst1|YH[0]~0clkctrl_outclk\) & ((\inst1|YH\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Data_out\(1),
	datac => \inst1|YH\(1),
	datad => \inst1|YH[0]~0clkctrl_outclk\,
	combout => \inst1|YH\(1));

-- Location: LCCOMB_X29_Y12_N22
\inst1|s30[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s30\(1) = (GLOBAL(\inst1|s30[0]~0clkctrl_outclk\) & (\inst|Data_out\(1))) # (!GLOBAL(\inst1|s30[0]~0clkctrl_outclk\) & ((\inst1|s30\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(1),
	datac => \inst1|s30\(1),
	datad => \inst1|s30[0]~0clkctrl_outclk\,
	combout => \inst1|s30\(1));

-- Location: LCCOMB_X29_Y12_N28
\inst1|output[1]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[1]~113_combout\ = (\inst1|Equal49~0_combout\ & (\inst1|YH\(1) & ((\inst1|s30\(1)) # (!\inst1|Equal29~1_combout\)))) # (!\inst1|Equal49~0_combout\ & (((\inst1|s30\(1)) # (!\inst1|Equal29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal49~0_combout\,
	datab => \inst1|YH\(1),
	datac => \inst1|s30\(1),
	datad => \inst1|Equal29~1_combout\,
	combout => \inst1|output[1]~113_combout\);

-- Location: LCCOMB_X29_Y12_N4
\inst1|output[1]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[1]~114_combout\ = (\inst1|output[1]~112_combout\ & (\inst1|output[1]~113_combout\ & ((\inst1|PCL\(1)) # (!\inst1|Equal52~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PCL\(1),
	datab => \inst1|output[1]~112_combout\,
	datac => \inst1|output[1]~113_combout\,
	datad => \inst1|Equal52~0_combout\,
	combout => \inst1|output[1]~114_combout\);

-- Location: LCCOMB_X30_Y13_N28
\inst1|output[1]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[1]~115_combout\ = (\inst1|output[1]~108_combout\ & (\inst1|output[1]~111_combout\ & (\inst1|output[2]~99_combout\ & \inst1|output[1]~114_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[1]~108_combout\,
	datab => \inst1|output[1]~111_combout\,
	datac => \inst1|output[2]~99_combout\,
	datad => \inst1|output[1]~114_combout\,
	combout => \inst1|output[1]~115_combout\);

-- Location: LCCOMB_X30_Y13_N6
\inst1|output[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output\(1) = (GLOBAL(\inst1|output[7]~58clkctrl_outclk\) & ((\inst1|output[1]~115_combout\))) # (!GLOBAL(\inst1|output[7]~58clkctrl_outclk\) & (\inst1|output\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output\(1),
	datab => \inst1|output[1]~115_combout\,
	datad => \inst1|output[7]~58clkctrl_outclk\,
	combout => \inst1|output\(1));

-- Location: LCCOMB_X21_Y18_N6
\inst|Selector22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector22~1_combout\ = ((\inst1|output\(1) & \inst|Equal4~3_combout\)) # (!\inst|Selector22~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|output\(1),
	datac => \inst|Selector22~0_combout\,
	datad => \inst|Equal4~3_combout\,
	combout => \inst|Selector22~1_combout\);

-- Location: LCCOMB_X25_Y18_N26
\inst|Selector22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector22~3_combout\ = (\inst|Selector22~1_combout\) # (((!\inst|Selector22~2_combout\) # (!\inst|Selector16~1_combout\)) # (!\inst|Dir[15]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector22~1_combout\,
	datab => \inst|Dir[15]~22_combout\,
	datac => \inst|Selector16~1_combout\,
	datad => \inst|Selector22~2_combout\,
	combout => \inst|Selector22~3_combout\);

-- Location: FF_X25_Y18_N27
\inst|e_siguiente[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector22~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|e_siguiente\(5));

-- Location: LCCOMB_X25_Y18_N4
\inst|Equal18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal18~1_combout\ = (\inst|e_siguiente\(5) & \inst|e_siguiente\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|e_siguiente\(5),
	datad => \inst|e_siguiente\(4),
	combout => \inst|Equal18~1_combout\);

-- Location: LCCOMB_X24_Y18_N18
\inst|Equal35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal35~0_combout\ = (!\inst|e_siguiente\(3) & (!\inst|e_siguiente\(2) & (\inst|e_siguiente\(0) & \inst|e_siguiente\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(3),
	datab => \inst|e_siguiente\(2),
	datac => \inst|e_siguiente\(0),
	datad => \inst|e_siguiente\(9),
	combout => \inst|Equal35~0_combout\);

-- Location: LCCOMB_X24_Y18_N8
\inst|Equal35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal35~1_combout\ = (\inst|Equal18~1_combout\ & (\inst|Equal18~0_combout\ & (\inst|e_siguiente\(1) & \inst|Equal35~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal18~1_combout\,
	datab => \inst|Equal18~0_combout\,
	datac => \inst|e_siguiente\(1),
	datad => \inst|Equal35~0_combout\,
	combout => \inst|Equal35~1_combout\);

-- Location: LCCOMB_X24_Y15_N0
\inst|Selector24~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector24~7_combout\ = (\inst|e_siguiente\(1)) # ((\inst|e_siguiente\(0)) # ((\inst|e_siguiente\(3)) # (!\inst|Equal36~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(1),
	datab => \inst|e_siguiente\(0),
	datac => \inst|e_siguiente\(3),
	datad => \inst|Equal36~0_combout\,
	combout => \inst|Selector24~7_combout\);

-- Location: LCCOMB_X23_Y15_N22
\inst|Selector24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector24~3_combout\ = (!\inst|Equal35~1_combout\ & (\inst|Selector24~7_combout\ & \inst|WideOr20~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal35~1_combout\,
	datac => \inst|Selector24~7_combout\,
	datad => \inst|WideOr20~7_combout\,
	combout => \inst|Selector24~3_combout\);

-- Location: LCCOMB_X24_Y15_N22
\inst|Selector24~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector24~5_combout\ = ((!\inst|Selector25~3_combout\) # (!\inst|Selector24~4_combout\)) # (!\inst|WideOr20~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr20~4_combout\,
	datac => \inst|Selector24~4_combout\,
	datad => \inst|Selector25~3_combout\,
	combout => \inst|Selector24~5_combout\);

-- Location: LCCOMB_X24_Y18_N0
\inst|Selector24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector24~6_combout\ = ((\inst|Selector24~5_combout\) # (!\inst|Selector24~2_combout\)) # (!\inst|Selector24~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector24~3_combout\,
	datac => \inst|Selector24~5_combout\,
	datad => \inst|Selector24~2_combout\,
	combout => \inst|Selector24~6_combout\);

-- Location: FF_X24_Y18_N1
\inst|e_siguiente[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector24~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|e_siguiente\(2));

-- Location: LCCOMB_X25_Y16_N12
\inst|Equal36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal36~0_combout\ = (\inst|e_siguiente\(2) & (\inst|e_siguiente\(9) & (\inst|Equal18~0_combout\ & \inst|Equal18~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(2),
	datab => \inst|e_siguiente\(9),
	datac => \inst|Equal18~0_combout\,
	datad => \inst|Equal18~1_combout\,
	combout => \inst|Equal36~0_combout\);

-- Location: LCCOMB_X24_Y16_N8
\inst|Equal71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal71~0_combout\ = (\inst|e_siguiente\(3) & (\inst|Equal36~0_combout\ & \inst|e_siguiente\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(3),
	datac => \inst|Equal36~0_combout\,
	datad => \inst|e_siguiente\(7),
	combout => \inst|Equal71~0_combout\);

-- Location: LCCOMB_X23_Y15_N2
\inst|WideOr20~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr20~10_combout\ = (((!\inst|e_siguiente\(1)) # (!\inst|Equal59~0_combout\)) # (!\inst|e_siguiente\(0))) # (!\inst|e_siguiente\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(3),
	datab => \inst|e_siguiente\(0),
	datac => \inst|Equal59~0_combout\,
	datad => \inst|e_siguiente\(1),
	combout => \inst|WideOr20~10_combout\);

-- Location: LCCOMB_X23_Y15_N16
\inst|WideOr20~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr20~7_combout\ = (\inst|WideOr20~10_combout\ & (((!\inst|Equal71~0_combout\ & !\inst|Equal44~0_combout\)) # (!\inst|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~0_combout\,
	datab => \inst|Equal71~0_combout\,
	datac => \inst|Equal44~0_combout\,
	datad => \inst|WideOr20~10_combout\,
	combout => \inst|WideOr20~7_combout\);

-- Location: LCCOMB_X24_Y18_N30
\inst|WideOr20~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr20~9_combout\ = ((\inst|Equal57~2_combout\) # ((!\inst|WideOr20~6_combout\) # (!\inst|WideOr20~8_combout\))) # (!\inst|WideOr20~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr20~7_combout\,
	datab => \inst|Equal57~2_combout\,
	datac => \inst|WideOr20~8_combout\,
	datad => \inst|WideOr20~6_combout\,
	combout => \inst|WideOr20~9_combout\);

-- Location: FF_X24_Y18_N31
\inst|e_siguiente[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|WideOr20~9_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|e_siguiente\(3));

-- Location: LCCOMB_X24_Y16_N22
\inst|Equal42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal42~0_combout\ = (\inst|e_siguiente\(3) & (!\inst|e_siguiente\(7) & (\inst|Equal4~2_combout\ & \inst|Equal59~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(3),
	datab => \inst|e_siguiente\(7),
	datac => \inst|Equal4~2_combout\,
	datad => \inst|Equal59~0_combout\,
	combout => \inst|Equal42~0_combout\);

-- Location: FF_X24_Y12_N3
\inst|YL[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|output\(5),
	sload => VCC,
	ena => \inst|YL[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|YL\(5));

-- Location: FF_X26_Y12_N1
\inst|YH[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|output\(5),
	sload => VCC,
	ena => \inst|YH[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|YH\(5));

-- Location: LCCOMB_X26_Y12_N0
\inst|Selector72~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector72~1_combout\ = (\inst|Equal42~0_combout\ & ((\inst|YH\(5)) # ((\inst|YL\(5) & \inst|Equal40~2_combout\)))) # (!\inst|Equal42~0_combout\ & (\inst|YL\(5) & ((\inst|Equal40~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal42~0_combout\,
	datab => \inst|YL\(5),
	datac => \inst|YH\(5),
	datad => \inst|Equal40~2_combout\,
	combout => \inst|Selector72~1_combout\);

-- Location: LCCOMB_X21_Y12_N28
\inst|Selector72~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector72~4_combout\ = (\inst|A\(5) & ((\inst|Data_out~13_combout\) # ((\inst|B\(5) & \inst|Data_out~12_combout\)))) # (!\inst|A\(5) & (\inst|B\(5) & (\inst|Data_out~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(5),
	datab => \inst|B\(5),
	datac => \inst|Data_out~12_combout\,
	datad => \inst|Data_out~13_combout\,
	combout => \inst|Selector72~4_combout\);

-- Location: FF_X23_Y12_N3
\inst|XH[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|output\(5),
	sload => VCC,
	ena => \inst|XH[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|XH\(5));

-- Location: LCCOMB_X23_Y12_N2
\inst|Selector72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector72~0_combout\ = (\inst|Equal46~0_combout\ & ((\inst|XH\(5)) # ((\inst|XL\(5) & \inst|Equal44~1_combout\)))) # (!\inst|Equal46~0_combout\ & (\inst|XL\(5) & ((\inst|Equal44~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal46~0_combout\,
	datab => \inst|XL\(5),
	datac => \inst|XH\(5),
	datad => \inst|Equal44~1_combout\,
	combout => \inst|Selector72~0_combout\);

-- Location: LCCOMB_X21_Y14_N24
\inst|estados[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|estados[5]~3_combout\ = !\inst1|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|output\(5),
	combout => \inst|estados[5]~3_combout\);

-- Location: FF_X21_Y14_N25
\inst|estados[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|estados[5]~3_combout\,
	ena => \inst|estados[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|estados\(5));

-- Location: LCCOMB_X26_Y16_N20
\inst|Selector72~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector72~2_combout\ = (\inst|Data_out~10_combout\ & ((\inst|PC\(13)) # ((\inst|Equal52~1_combout\ & !\inst|estados\(5))))) # (!\inst|Data_out~10_combout\ & (((\inst|Equal52~1_combout\ & !\inst|estados\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out~10_combout\,
	datab => \inst|PC\(13),
	datac => \inst|Equal52~1_combout\,
	datad => \inst|estados\(5),
	combout => \inst|Selector72~2_combout\);

-- Location: LCCOMB_X25_Y16_N18
\inst|Selector72~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector72~3_combout\ = (\inst|Selector72~2_combout\) # ((\inst|PC\(5) & \inst|Data_out~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector72~2_combout\,
	datab => \inst|PC\(5),
	datac => \inst|Data_out~11_combout\,
	combout => \inst|Selector72~3_combout\);

-- Location: LCCOMB_X24_Y12_N26
\inst|Selector72~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector72~5_combout\ = (\inst|Selector72~1_combout\) # ((\inst|Selector72~4_combout\) # ((\inst|Selector72~0_combout\) # (\inst|Selector72~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector72~1_combout\,
	datab => \inst|Selector72~4_combout\,
	datac => \inst|Selector72~0_combout\,
	datad => \inst|Selector72~3_combout\,
	combout => \inst|Selector72~5_combout\);

-- Location: FF_X24_Y12_N27
\inst|Data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector72~5_combout\,
	ena => \inst|Data_out[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Data_out\(5));

-- Location: LCCOMB_X27_Y12_N30
\inst1|YL[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|YL\(5) = (GLOBAL(\inst1|YL[0]~0clkctrl_outclk\) & (\inst|Data_out\(5))) # (!GLOBAL(\inst1|YL[0]~0clkctrl_outclk\) & ((\inst1|YL\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Data_out\(5),
	datac => \inst1|YL\(5),
	datad => \inst1|YL[0]~0clkctrl_outclk\,
	combout => \inst1|YL\(5));

-- Location: LCCOMB_X27_Y12_N8
\inst1|PCH[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|PCH\(5) = (GLOBAL(\inst1|PCH[0]~0clkctrl_outclk\) & (\inst|Data_out\(5))) # (!GLOBAL(\inst1|PCH[0]~0clkctrl_outclk\) & ((\inst1|PCH\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(5),
	datac => \inst1|PCH\(5),
	datad => \inst1|PCH[0]~0clkctrl_outclk\,
	combout => \inst1|PCH\(5));

-- Location: LCCOMB_X27_Y12_N2
\inst1|output[5]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[5]~69_combout\ = (\inst1|YL\(5) & ((\inst1|Equal50~0_combout\) # ((\inst1|Equal51~0_combout\ & \inst1|PCH\(5))))) # (!\inst1|YL\(5) & (\inst1|Equal51~0_combout\ & (\inst1|PCH\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|YL\(5),
	datab => \inst1|Equal51~0_combout\,
	datac => \inst1|PCH\(5),
	datad => \inst1|Equal50~0_combout\,
	combout => \inst1|output[5]~69_combout\);

-- Location: LCCOMB_X31_Y13_N14
\inst1|XL[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|XL\(5) = (GLOBAL(\inst1|XL[0]~0clkctrl_outclk\) & ((\inst|Data_out\(5)))) # (!GLOBAL(\inst1|XL[0]~0clkctrl_outclk\) & (\inst1|XL\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|XL\(5),
	datac => \inst1|XL[0]~0clkctrl_outclk\,
	datad => \inst|Data_out\(5),
	combout => \inst1|XL\(5));

-- Location: LCCOMB_X31_Y13_N4
\inst1|XH[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|XH\(5) = (GLOBAL(\inst1|XH[0]~0clkctrl_outclk\) & (\inst|Data_out\(5))) # (!GLOBAL(\inst1|XH[0]~0clkctrl_outclk\) & ((\inst1|XH\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Data_out\(5),
	datac => \inst1|XH\(5),
	datad => \inst1|XH[0]~0clkctrl_outclk\,
	combout => \inst1|XH\(5));

-- Location: LCCOMB_X27_Y14_N24
\inst1|output[5]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[5]~68_combout\ = (\inst1|XL\(5) & ((\inst1|Equal48~0_combout\) # ((\inst1|XH\(5) & \inst1|Equal47~0_combout\)))) # (!\inst1|XL\(5) & (\inst1|XH\(5) & ((\inst1|Equal47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|XL\(5),
	datab => \inst1|XH\(5),
	datac => \inst1|Equal48~0_combout\,
	datad => \inst1|Equal47~0_combout\,
	combout => \inst1|output[5]~68_combout\);

-- Location: LCCOMB_X28_Y15_N26
\inst1|PCL[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|PCL\(5) = (GLOBAL(\inst1|PCL[1]~0clkctrl_outclk\) & ((\inst|Data_out\(5)))) # (!GLOBAL(\inst1|PCL[1]~0clkctrl_outclk\) & (\inst1|PCL\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PCL\(5),
	datac => \inst1|PCL[1]~0clkctrl_outclk\,
	datad => \inst|Data_out\(5),
	combout => \inst1|PCL\(5));

-- Location: LCCOMB_X28_Y15_N30
\inst1|output[5]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[5]~70_combout\ = (\inst1|output[5]~51_combout\ & (\inst1|output[5]~43_combout\ & ((!\inst1|Equal52~0_combout\) # (!\inst1|PCL\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PCL\(5),
	datab => \inst1|output[5]~51_combout\,
	datac => \inst1|output[5]~43_combout\,
	datad => \inst1|Equal52~0_combout\,
	combout => \inst1|output[5]~70_combout\);

-- Location: LCCOMB_X25_Y15_N22
\inst1|output[5]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[5]~71_combout\ = (\inst1|output[5]~69_combout\) # ((\inst1|output[5]~68_combout\) # ((!\inst1|output[5]~40_combout\) # (!\inst1|output[5]~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[5]~69_combout\,
	datab => \inst1|output[5]~68_combout\,
	datac => \inst1|output[5]~70_combout\,
	datad => \inst1|output[5]~40_combout\,
	combout => \inst1|output[5]~71_combout\);

-- Location: LCCOMB_X28_Y14_N18
\inst1|output[5]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[5]~75_combout\ = (\inst1|output[2]~38_combout\ & (\inst1|output[5]~49_combout\ & \inst1|output[7]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|output[2]~38_combout\,
	datac => \inst1|output[5]~49_combout\,
	datad => \inst1|output[7]~42_combout\,
	combout => \inst1|output[5]~75_combout\);

-- Location: LCCOMB_X25_Y13_N28
\inst1|ACCB[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ACCB\(5) = (GLOBAL(\inst1|ACCB[0]~0clkctrl_outclk\) & (\inst|Data_out\(5))) # (!GLOBAL(\inst1|ACCB[0]~0clkctrl_outclk\) & ((\inst1|ACCB\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Data_out\(5),
	datac => \inst1|ACCB[0]~0clkctrl_outclk\,
	datad => \inst1|ACCB\(5),
	combout => \inst1|ACCB\(5));

-- Location: LCCOMB_X27_Y11_N24
\inst1|ACCA[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ACCA\(5) = (GLOBAL(\inst1|ACCA[0]~0clkctrl_outclk\) & (\inst|Data_out\(5))) # (!GLOBAL(\inst1|ACCA[0]~0clkctrl_outclk\) & ((\inst1|ACCA\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(5),
	datac => \inst1|ACCA[0]~0clkctrl_outclk\,
	datad => \inst1|ACCA\(5),
	combout => \inst1|ACCA\(5));

-- Location: LCCOMB_X25_Y15_N4
\inst1|output[5]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[5]~67_combout\ = (\inst1|Equal46~0_combout\ & ((\inst1|ACCA\(5)) # ((\inst1|ACCB\(5) & \inst1|Equal45~0_combout\)))) # (!\inst1|Equal46~0_combout\ & (\inst1|ACCB\(5) & ((\inst1|Equal45~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal46~0_combout\,
	datab => \inst1|ACCB\(5),
	datac => \inst1|ACCA\(5),
	datad => \inst1|Equal45~0_combout\,
	combout => \inst1|output[5]~67_combout\);

-- Location: LCCOMB_X25_Y11_N8
\inst1|ccr[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ccr\(5) = (GLOBAL(\inst1|ccr[0]~0clkctrl_outclk\) & (\inst|Data_out\(5))) # (!GLOBAL(\inst1|ccr[0]~0clkctrl_outclk\) & ((\inst1|ccr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(5),
	datac => \inst1|ccr\(5),
	datad => \inst1|ccr[0]~0clkctrl_outclk\,
	combout => \inst1|ccr\(5));

-- Location: LCCOMB_X25_Y15_N20
\inst1|YH[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|YH\(5) = (GLOBAL(\inst1|YH[0]~0clkctrl_outclk\) & (\inst|Data_out\(5))) # (!GLOBAL(\inst1|YH[0]~0clkctrl_outclk\) & ((\inst1|YH\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(5),
	datac => \inst1|YH[0]~0clkctrl_outclk\,
	datad => \inst1|YH\(5),
	combout => \inst1|YH\(5));

-- Location: LCCOMB_X25_Y15_N30
\inst1|output[5]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[5]~73_combout\ = (\inst1|Equal28~0_combout\) # ((\inst1|YH\(5) & \inst1|Equal49~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal28~0_combout\,
	datab => \inst1|YH\(5),
	datad => \inst1|Equal49~0_combout\,
	combout => \inst1|output[5]~73_combout\);

-- Location: LCCOMB_X25_Y15_N14
\inst1|s30[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s30\(5) = (GLOBAL(\inst1|s30[0]~0clkctrl_outclk\) & (\inst|Data_out\(5))) # (!GLOBAL(\inst1|s30[0]~0clkctrl_outclk\) & ((\inst1|s30\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(5),
	datac => \inst1|s30\(5),
	datad => \inst1|s30[0]~0clkctrl_outclk\,
	combout => \inst1|s30\(5));

-- Location: LCCOMB_X25_Y15_N28
\inst1|output[5]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[5]~72_combout\ = (\inst1|s30\(5) & ((\inst1|Equal29~1_combout\) # ((\inst1|Equal7~1_combout\ & \inst1|Equal6~0_combout\)))) # (!\inst1|s30\(5) & (\inst1|Equal7~1_combout\ & ((\inst1|Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s30\(5),
	datab => \inst1|Equal7~1_combout\,
	datac => \inst1|Equal29~1_combout\,
	datad => \inst1|Equal6~0_combout\,
	combout => \inst1|output[5]~72_combout\);

-- Location: LCCOMB_X25_Y15_N24
\inst1|output[5]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[5]~74_combout\ = (\inst1|output[5]~73_combout\) # ((\inst1|output[5]~72_combout\) # ((\inst1|ccr\(5) & \inst1|Equal44~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ccr\(5),
	datab => \inst1|Equal44~4_combout\,
	datac => \inst1|output[5]~73_combout\,
	datad => \inst1|output[5]~72_combout\,
	combout => \inst1|output[5]~74_combout\);

-- Location: LCCOMB_X25_Y15_N26
\inst1|output[5]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[5]~76_combout\ = (\inst1|output[5]~71_combout\) # (((\inst1|output[5]~67_combout\) # (\inst1|output[5]~74_combout\)) # (!\inst1|output[5]~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[5]~71_combout\,
	datab => \inst1|output[5]~75_combout\,
	datac => \inst1|output[5]~67_combout\,
	datad => \inst1|output[5]~74_combout\,
	combout => \inst1|output[5]~76_combout\);

-- Location: LCCOMB_X25_Y15_N8
\inst1|output[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output\(5) = (GLOBAL(\inst1|output[7]~58clkctrl_outclk\) & (\inst1|output[5]~76_combout\)) # (!GLOBAL(\inst1|output[7]~58clkctrl_outclk\) & ((\inst1|output\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|output[5]~76_combout\,
	datac => \inst1|output\(5),
	datad => \inst1|output[7]~58clkctrl_outclk\,
	combout => \inst1|output\(5));

-- Location: LCCOMB_X24_Y15_N12
\inst|Selector18~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector18~8_combout\ = (\inst1|output\(5) & (\inst|Equal2~1_combout\ & (!\inst|e_siguiente\(0) & \inst|e_siguiente\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output\(5),
	datab => \inst|Equal2~1_combout\,
	datac => \inst|e_siguiente\(0),
	datad => \inst|e_siguiente\(1),
	combout => \inst|Selector18~8_combout\);

-- Location: LCCOMB_X23_Y18_N18
\inst|Selector26~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector26~5_combout\ = (\inst|Selector26~9_combout\ & (\inst|PC[15]~5_combout\ & \inst|B[7]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector26~9_combout\,
	datac => \inst|PC[15]~5_combout\,
	datad => \inst|B[7]~11_combout\,
	combout => \inst|Selector26~5_combout\);

-- Location: LCCOMB_X26_Y16_N0
\inst|Selector18~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector18~9_combout\ = ((\inst|Equal3~0_combout\ & ((\inst|Equal24~0_combout\) # (\inst|Equal11~2_combout\)))) # (!\inst|Selector18~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal3~0_combout\,
	datab => \inst|Selector18~14_combout\,
	datac => \inst|Equal24~0_combout\,
	datad => \inst|Equal11~2_combout\,
	combout => \inst|Selector18~9_combout\);

-- Location: LCCOMB_X24_Y18_N4
\inst|Selector18~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector18~13_combout\ = (\inst|Selector18~8_combout\) # (((\inst|Selector18~9_combout\) # (!\inst|Selector18~12_combout\)) # (!\inst|Selector26~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector18~8_combout\,
	datab => \inst|Selector26~5_combout\,
	datac => \inst|Selector18~9_combout\,
	datad => \inst|Selector18~12_combout\,
	combout => \inst|Selector18~13_combout\);

-- Location: FF_X24_Y18_N5
\inst|e_siguiente[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector18~13_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|e_siguiente\(9));

-- Location: LCCOMB_X25_Y16_N8
\inst|Equal18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal18~3_combout\ = (!\inst|e_siguiente\(9) & (!\inst|e_siguiente\(2) & (\inst|Equal2~0_combout\ & \inst|Equal18~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|e_siguiente\(9),
	datab => \inst|e_siguiente\(2),
	datac => \inst|Equal2~0_combout\,
	datad => \inst|Equal18~2_combout\,
	combout => \inst|Equal18~3_combout\);

-- Location: LCCOMB_X23_Y18_N16
\inst|Selector26~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector26~6_combout\ = (\inst|Equal53~2_combout\) # (((\inst|Equal54~3_combout\ & \inst|Equal4~2_combout\)) # (!\inst|Selector26~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal54~3_combout\,
	datab => \inst|Equal4~2_combout\,
	datac => \inst|Equal53~2_combout\,
	datad => \inst|Selector26~5_combout\,
	combout => \inst|Selector26~6_combout\);

-- Location: LCCOMB_X24_Y17_N18
\inst|Selector26~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector26~7_combout\ = (((\inst|Selector18~10_combout\) # (!\inst|Dir[15]~13_combout\)) # (!\inst|Selector26~4_combout\)) # (!\inst|Selector20~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector20~8_combout\,
	datab => \inst|Selector26~4_combout\,
	datac => \inst|Dir[15]~13_combout\,
	datad => \inst|Selector18~10_combout\,
	combout => \inst|Selector26~7_combout\);

-- Location: LCCOMB_X23_Y18_N4
\inst|Selector26~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector26~8_combout\ = (\inst|Equal18~3_combout\) # ((\inst|Selector26~6_combout\) # ((\inst|Selector26~7_combout\) # (!\inst|B[7]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal18~3_combout\,
	datab => \inst|Selector26~6_combout\,
	datac => \inst|B[7]~5_combout\,
	datad => \inst|Selector26~7_combout\,
	combout => \inst|Selector26~8_combout\);

-- Location: FF_X23_Y18_N5
\inst|e_siguiente[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector26~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|e_siguiente\(0));

-- Location: LCCOMB_X23_Y18_N24
\inst|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal2~0_combout\ = (!\inst|e_siguiente\(0) & !\inst|e_siguiente\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|e_siguiente\(0),
	datad => \inst|e_siguiente\(1),
	combout => \inst|Equal2~0_combout\);

-- Location: LCCOMB_X27_Y16_N8
\inst|Selector20~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector20~12_combout\ = (\inst|Dir[15]~13_combout\ & (\inst|Data_out[7]~7_combout\ & ((!\inst|Equal75~0_combout\) # (!\inst|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~0_combout\,
	datab => \inst|Equal75~0_combout\,
	datac => \inst|Dir[15]~13_combout\,
	datad => \inst|Data_out[7]~7_combout\,
	combout => \inst|Selector20~12_combout\);

-- Location: LCCOMB_X26_Y16_N12
\inst|SPL[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SPL[1]~9_combout\ = !\inst|Add7~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add7~2_combout\,
	combout => \inst|SPL[1]~9_combout\);

-- Location: FF_X26_Y16_N13
\inst|SPL[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|SPL[1]~9_combout\,
	ena => \inst|SPL[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SPL\(1));

-- Location: LCCOMB_X21_Y14_N26
\inst|Aux[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Aux[1]~feeder_combout\ = \inst1|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|output\(1),
	combout => \inst|Aux[1]~feeder_combout\);

-- Location: FF_X21_Y14_N27
\inst|Aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Aux[1]~feeder_combout\,
	ena => \inst|Aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Aux\(1));

-- Location: LCCOMB_X26_Y14_N2
\inst|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector14~0_combout\ = (\inst|Dir[2]~20_combout\ & (((\inst|Aux\(1)) # (\inst|Dir[10]~21_combout\)))) # (!\inst|Dir[2]~20_combout\ & (!\inst|SPL\(1) & ((!\inst|Dir[10]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SPL\(1),
	datab => \inst|Aux\(1),
	datac => \inst|Dir[2]~20_combout\,
	datad => \inst|Dir[10]~21_combout\,
	combout => \inst|Selector14~0_combout\);

-- Location: LCCOMB_X25_Y14_N2
\inst|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector14~1_combout\ = (\inst|Selector14~0_combout\ & (((\inst|Yupa\(1))) # (!\inst|Dir[10]~21_combout\))) # (!\inst|Selector14~0_combout\ & (\inst|Dir[10]~21_combout\ & ((\inst|PC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector14~0_combout\,
	datab => \inst|Dir[10]~21_combout\,
	datac => \inst|Yupa\(1),
	datad => \inst|PC\(1),
	combout => \inst|Selector14~1_combout\);

-- Location: FF_X25_Y14_N3
\inst|Dir[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Selector14~1_combout\,
	ena => \inst|Dir[15]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Dir\(1));

-- Location: LCCOMB_X29_Y14_N0
\inst1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~5_combout\ = (!\inst|Dir\(1) & !\inst|Dir\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Dir\(1),
	datad => \inst|Dir\(0),
	combout => \inst1|Equal0~5_combout\);

-- Location: LCCOMB_X29_Y14_N12
\inst1|output[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[7]~31_combout\ = (\inst1|Equal4~2_combout\ & (!\inst1|Equal15~4_combout\ & ((!\inst1|Equal5~0_combout\) # (!\inst1|Equal0~4_combout\)))) # (!\inst1|Equal4~2_combout\ & (((!\inst1|Equal5~0_combout\)) # (!\inst1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal4~2_combout\,
	datab => \inst1|Equal0~4_combout\,
	datac => \inst1|Equal5~0_combout\,
	datad => \inst1|Equal15~4_combout\,
	combout => \inst1|output[7]~31_combout\);

-- Location: LCCOMB_X29_Y14_N2
\inst1|output[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[7]~32_combout\ = (!\inst1|Equal28~0_combout\ & (\inst1|output[7]~31_combout\ & ((!\inst1|Equal7~1_combout\) # (!\inst1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~5_combout\,
	datab => \inst1|Equal28~0_combout\,
	datac => \inst1|Equal7~1_combout\,
	datad => \inst1|output[7]~31_combout\,
	combout => \inst1|output[7]~32_combout\);

-- Location: LCCOMB_X27_Y14_N2
\inst1|output[7]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[7]~54_combout\ = (((!\inst1|Equal7~0_combout\) # (!\inst1|Equal0~6_combout\)) # (!\inst|Dir\(4))) # (!\inst1|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal3~0_combout\,
	datab => \inst|Dir\(4),
	datac => \inst1|Equal0~6_combout\,
	datad => \inst1|Equal7~0_combout\,
	combout => \inst1|output[7]~54_combout\);

-- Location: LCCOMB_X29_Y14_N18
\inst1|output[7]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[7]~55_combout\ = (\inst1|Equal6~0_combout\ & (!\inst1|Equal7~1_combout\ & ((!\inst1|Equal15~4_combout\) # (!\inst1|Equal3~0_combout\)))) # (!\inst1|Equal6~0_combout\ & (((!\inst1|Equal15~4_combout\) # (!\inst1|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal6~0_combout\,
	datab => \inst1|Equal7~1_combout\,
	datac => \inst1|Equal3~0_combout\,
	datad => \inst1|Equal15~4_combout\,
	combout => \inst1|output[7]~55_combout\);

-- Location: LCCOMB_X28_Y14_N22
\inst1|output[7]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[7]~56_combout\ = (\inst1|output[7]~54_combout\ & (\inst1|output[7]~53_combout\ & (\inst1|output[7]~23_combout\ & \inst1|output[7]~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[7]~54_combout\,
	datab => \inst1|output[7]~53_combout\,
	datac => \inst1|output[7]~23_combout\,
	datad => \inst1|output[7]~55_combout\,
	combout => \inst1|output[7]~56_combout\);

-- Location: LCCOMB_X28_Y14_N16
\inst1|output[7]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[7]~57_combout\ = (\inst1|output[7]~32_combout\ & (\inst1|output[5]~49_combout\ & (\inst1|output[7]~56_combout\ & \inst1|output[2]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[7]~32_combout\,
	datab => \inst1|output[5]~49_combout\,
	datac => \inst1|output[7]~56_combout\,
	datad => \inst1|output[2]~48_combout\,
	combout => \inst1|output[7]~57_combout\);

-- Location: LCCOMB_X30_Y14_N6
\inst1|output[7]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[7]~37_combout\ = (\inst|Dir\(2)) # (((\inst|Dir\(0) & \inst|Dir\(1))) # (!\inst1|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dir\(0),
	datab => \inst|Dir\(1),
	datac => \inst|Dir\(2),
	datad => \inst1|Equal0~4_combout\,
	combout => \inst1|output[7]~37_combout\);

-- Location: LCCOMB_X27_Y13_N6
\inst1|output[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[7]~45_combout\ = (\inst1|output[2]~44_combout\ & (\inst1|output[7]~41_combout\ & \inst1|output[7]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[2]~44_combout\,
	datab => \inst1|output[7]~41_combout\,
	datad => \inst1|output[7]~42_combout\,
	combout => \inst1|output[7]~45_combout\);

-- Location: LCCOMB_X31_Y14_N12
\inst1|output[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[7]~46_combout\ = ((!\inst1|Equal29~1_combout\ & ((\inst1|output[7]~130_combout\) # (!\inst1|output[7]~45_combout\)))) # (!\inst|nRW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[7]~130_combout\,
	datab => \inst1|Equal29~1_combout\,
	datac => \inst|nRW~q\,
	datad => \inst1|output[7]~45_combout\,
	combout => \inst1|output[7]~46_combout\);

-- Location: LCCOMB_X31_Y14_N28
\inst1|output[7]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[7]~58_combout\ = (\inst1|output[7]~37_combout\ & ((\inst1|output[7]~46_combout\) # (!\inst1|output[7]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[7]~57_combout\,
	datac => \inst1|output[7]~37_combout\,
	datad => \inst1|output[7]~46_combout\,
	combout => \inst1|output[7]~58_combout\);

-- Location: CLKCTRL_G5
\inst1|output[7]~58clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|output[7]~58clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|output[7]~58clkctrl_outclk\);

-- Location: LCCOMB_X21_Y12_N20
\inst|Selector70~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector70~4_combout\ = (\inst|A\(7) & ((\inst|Data_out~13_combout\) # ((\inst|B\(7) & \inst|Data_out~12_combout\)))) # (!\inst|A\(7) & (\inst|B\(7) & (\inst|Data_out~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|A\(7),
	datab => \inst|B\(7),
	datac => \inst|Data_out~12_combout\,
	datad => \inst|Data_out~13_combout\,
	combout => \inst|Selector70~4_combout\);

-- Location: LCCOMB_X20_Y12_N28
\inst|XL[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|XL[7]~feeder_combout\ = \inst1|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|output\(7),
	combout => \inst|XL[7]~feeder_combout\);

-- Location: FF_X20_Y12_N29
\inst|XL[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|XL[7]~feeder_combout\,
	ena => \inst|XL[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|XL\(7));

-- Location: FF_X23_Y12_N19
\inst|XH[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|output\(7),
	sload => VCC,
	ena => \inst|XH[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|XH\(7));

-- Location: LCCOMB_X23_Y12_N18
\inst|Selector70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector70~0_combout\ = (\inst|Equal46~0_combout\ & ((\inst|XH\(7)) # ((\inst|XL\(7) & \inst|Equal44~1_combout\)))) # (!\inst|Equal46~0_combout\ & (\inst|XL\(7) & ((\inst|Equal44~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal46~0_combout\,
	datab => \inst|XL\(7),
	datac => \inst|XH\(7),
	datad => \inst|Equal44~1_combout\,
	combout => \inst|Selector70~0_combout\);

-- Location: FF_X24_Y15_N5
\inst|YH[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|output\(7),
	sload => VCC,
	ena => \inst|YH[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|YH\(7));

-- Location: FF_X24_Y15_N15
\inst|YL[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|output\(7),
	sload => VCC,
	ena => \inst|YL[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|YL\(7));

-- Location: LCCOMB_X24_Y15_N4
\inst|Selector70~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector70~1_combout\ = (\inst|Equal40~2_combout\ & ((\inst|YL\(7)) # ((\inst|Equal42~0_combout\ & \inst|YH\(7))))) # (!\inst|Equal40~2_combout\ & (\inst|Equal42~0_combout\ & (\inst|YH\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal40~2_combout\,
	datab => \inst|Equal42~0_combout\,
	datac => \inst|YH\(7),
	datad => \inst|YL\(7),
	combout => \inst|Selector70~1_combout\);

-- Location: LCCOMB_X21_Y14_N8
\inst|estados[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|estados[7]~1_combout\ = !\inst1|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|output\(7),
	combout => \inst|estados[7]~1_combout\);

-- Location: FF_X21_Y14_N9
\inst|estados[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|estados[7]~1_combout\,
	ena => \inst|estados[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|estados\(7));

-- Location: LCCOMB_X23_Y12_N8
\inst|Selector70~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector70~2_combout\ = (\inst|PC\(15) & ((\inst|Data_out~10_combout\) # ((\inst|Equal52~1_combout\ & !\inst|estados\(7))))) # (!\inst|PC\(15) & (((\inst|Equal52~1_combout\ & !\inst|estados\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(15),
	datab => \inst|Data_out~10_combout\,
	datac => \inst|Equal52~1_combout\,
	datad => \inst|estados\(7),
	combout => \inst|Selector70~2_combout\);

-- Location: LCCOMB_X23_Y12_N10
\inst|Selector70~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector70~3_combout\ = (\inst|Selector70~2_combout\) # ((\inst|PC\(7) & \inst|Data_out~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(7),
	datac => \inst|Selector70~2_combout\,
	datad => \inst|Data_out~11_combout\,
	combout => \inst|Selector70~3_combout\);

-- Location: LCCOMB_X24_Y12_N10
\inst|Selector70~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector70~5_combout\ = (\inst|Selector70~4_combout\) # ((\inst|Selector70~0_combout\) # ((\inst|Selector70~1_combout\) # (\inst|Selector70~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector70~4_combout\,
	datab => \inst|Selector70~0_combout\,
	datac => \inst|Selector70~1_combout\,
	datad => \inst|Selector70~3_combout\,
	combout => \inst|Selector70~5_combout\);

-- Location: FF_X24_Y12_N11
\inst|Data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector70~5_combout\,
	ena => \inst|Data_out[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Data_out\(7));

-- Location: LCCOMB_X27_Y12_N26
\inst1|YL[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|YL\(7) = (GLOBAL(\inst1|YL[0]~0clkctrl_outclk\) & (\inst|Data_out\(7))) # (!GLOBAL(\inst1|YL[0]~0clkctrl_outclk\) & ((\inst1|YL\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(7),
	datac => \inst1|YL\(7),
	datad => \inst1|YL[0]~0clkctrl_outclk\,
	combout => \inst1|YL\(7));

-- Location: LCCOMB_X26_Y15_N6
\inst1|output[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[7]~25_combout\ = (((\inst1|Equal50~0_combout\ & \inst1|YL\(7))) # (!\inst1|output[7]~23_combout\)) # (!\inst1|output[7]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[7]~24_combout\,
	datab => \inst1|output[7]~23_combout\,
	datac => \inst1|Equal50~0_combout\,
	datad => \inst1|YL\(7),
	combout => \inst1|output[7]~25_combout\);

-- Location: LCCOMB_X31_Y15_N26
\inst1|YH[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|YH\(7) = (GLOBAL(\inst1|YH[0]~0clkctrl_outclk\) & ((\inst|Data_out\(7)))) # (!GLOBAL(\inst1|YH[0]~0clkctrl_outclk\) & (\inst1|YH\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|YH\(7),
	datab => \inst|Data_out\(7),
	datac => \inst1|YH[0]~0clkctrl_outclk\,
	combout => \inst1|YH\(7));

-- Location: LCCOMB_X27_Y15_N20
\inst1|output[7]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[7]~21_combout\ = (\inst1|Equal44~3_combout\ & (\inst|Dir\(3) & (\inst1|Equal3~0_combout\ & \inst1|YH\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal44~3_combout\,
	datab => \inst|Dir\(3),
	datac => \inst1|Equal3~0_combout\,
	datad => \inst1|YH\(7),
	combout => \inst1|output[7]~21_combout\);

-- Location: LCCOMB_X27_Y15_N4
\inst1|s30[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s30\(7) = (GLOBAL(\inst1|s30[0]~0clkctrl_outclk\) & (\inst|Data_out\(7))) # (!GLOBAL(\inst1|s30[0]~0clkctrl_outclk\) & ((\inst1|s30\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(7),
	datac => \inst1|s30\(7),
	datad => \inst1|s30[0]~0clkctrl_outclk\,
	combout => \inst1|s30\(7));

-- Location: LCCOMB_X25_Y14_N8
\inst1|XH[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|XH\(7) = (GLOBAL(\inst1|XH[0]~0clkctrl_outclk\) & (\inst|Data_out\(7))) # (!GLOBAL(\inst1|XH[0]~0clkctrl_outclk\) & ((\inst1|XH\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Data_out\(7),
	datac => \inst1|XH\(7),
	datad => \inst1|XH[0]~0clkctrl_outclk\,
	combout => \inst1|XH\(7));

-- Location: LCCOMB_X27_Y17_N30
\inst1|XL[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|XL\(7) = (GLOBAL(\inst1|XL[0]~0clkctrl_outclk\) & (\inst|Data_out\(7))) # (!GLOBAL(\inst1|XL[0]~0clkctrl_outclk\) & ((\inst1|XL\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Data_out\(7),
	datac => \inst1|XL\(7),
	datad => \inst1|XL[0]~0clkctrl_outclk\,
	combout => \inst1|XL\(7));

-- Location: LCCOMB_X26_Y15_N0
\inst1|output[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[7]~28_combout\ = (\inst1|Equal48~0_combout\ & ((\inst1|XL\(7)) # ((\inst1|Equal47~0_combout\ & \inst1|XH\(7))))) # (!\inst1|Equal48~0_combout\ & (\inst1|Equal47~0_combout\ & (\inst1|XH\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal48~0_combout\,
	datab => \inst1|Equal47~0_combout\,
	datac => \inst1|XH\(7),
	datad => \inst1|XL\(7),
	combout => \inst1|output[7]~28_combout\);

-- Location: LCCOMB_X26_Y15_N8
\inst1|output[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[7]~26_combout\ = (\inst1|Equal3~0_combout\ & ((\inst1|Equal30~7_combout\) # ((\inst1|Equal2~0_combout\ & \inst1|Equal30~6_combout\)))) # (!\inst1|Equal3~0_combout\ & (\inst1|Equal2~0_combout\ & ((\inst1|Equal30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal3~0_combout\,
	datab => \inst1|Equal2~0_combout\,
	datac => \inst1|Equal30~7_combout\,
	datad => \inst1|Equal30~6_combout\,
	combout => \inst1|output[7]~26_combout\);

-- Location: LCCOMB_X31_Y15_N28
\inst1|ccr[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ccr\(7) = (GLOBAL(\inst1|ccr[0]~0clkctrl_outclk\) & ((\inst|Data_out\(7)))) # (!GLOBAL(\inst1|ccr[0]~0clkctrl_outclk\) & (\inst1|ccr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ccr\(7),
	datac => \inst|Data_out\(7),
	datad => \inst1|ccr[0]~0clkctrl_outclk\,
	combout => \inst1|ccr\(7));

-- Location: LCCOMB_X26_Y15_N30
\inst1|output[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[7]~27_combout\ = (\inst1|output[7]~26_combout\) # ((\inst1|Equal44~4_combout\ & \inst1|ccr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal44~4_combout\,
	datab => \inst1|output[7]~26_combout\,
	datac => \inst1|ccr\(7),
	combout => \inst1|output[7]~27_combout\);

-- Location: LCCOMB_X26_Y15_N18
\inst1|output[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[7]~29_combout\ = (\inst1|output[7]~28_combout\) # ((\inst1|output[7]~27_combout\) # ((\inst1|s30\(7) & \inst1|Equal29~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s30\(7),
	datab => \inst1|output[7]~28_combout\,
	datac => \inst1|output[7]~27_combout\,
	datad => \inst1|Equal29~1_combout\,
	combout => \inst1|output[7]~29_combout\);

-- Location: LCCOMB_X26_Y15_N22
\inst1|PCL[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|PCL\(7) = (GLOBAL(\inst1|PCL[1]~0clkctrl_outclk\) & ((\inst|Data_out\(7)))) # (!GLOBAL(\inst1|PCL[1]~0clkctrl_outclk\) & (\inst1|PCL\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PCL\(7),
	datac => \inst|Data_out\(7),
	datad => \inst1|PCL[1]~0clkctrl_outclk\,
	combout => \inst1|PCL\(7));

-- Location: LCCOMB_X26_Y15_N4
\inst1|PCH[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|PCH\(7) = (GLOBAL(\inst1|PCH[0]~0clkctrl_outclk\) & (\inst|Data_out\(7))) # (!GLOBAL(\inst1|PCH[0]~0clkctrl_outclk\) & ((\inst1|PCH\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(7),
	datac => \inst1|PCH\(7),
	datad => \inst1|PCH[0]~0clkctrl_outclk\,
	combout => \inst1|PCH\(7));

-- Location: LCCOMB_X26_Y15_N28
\inst1|output[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[7]~22_combout\ = (\inst1|PCL\(7) & ((\inst1|Equal52~0_combout\) # ((\inst1|Equal51~0_combout\ & \inst1|PCH\(7))))) # (!\inst1|PCL\(7) & (\inst1|Equal51~0_combout\ & (\inst1|PCH\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PCL\(7),
	datab => \inst1|Equal51~0_combout\,
	datac => \inst1|PCH\(7),
	datad => \inst1|Equal52~0_combout\,
	combout => \inst1|output[7]~22_combout\);

-- Location: LCCOMB_X26_Y15_N12
\inst1|output[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[7]~30_combout\ = (\inst1|output[7]~25_combout\) # ((\inst1|output[7]~21_combout\) # ((\inst1|output[7]~29_combout\) # (\inst1|output[7]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[7]~25_combout\,
	datab => \inst1|output[7]~21_combout\,
	datac => \inst1|output[7]~29_combout\,
	datad => \inst1|output[7]~22_combout\,
	combout => \inst1|output[7]~30_combout\);

-- Location: LCCOMB_X30_Y15_N8
\inst1|ACCA[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ACCA\(7) = (GLOBAL(\inst1|ACCA[0]~0clkctrl_outclk\) & (\inst|Data_out\(7))) # (!GLOBAL(\inst1|ACCA[0]~0clkctrl_outclk\) & ((\inst1|ACCA\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Data_out\(7),
	datac => \inst1|ACCA\(7),
	datad => \inst1|ACCA[0]~0clkctrl_outclk\,
	combout => \inst1|ACCA\(7));

-- Location: LCCOMB_X30_Y15_N2
\inst1|ACCB[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ACCB\(7) = (GLOBAL(\inst1|ACCB[0]~0clkctrl_outclk\) & (\inst|Data_out\(7))) # (!GLOBAL(\inst1|ACCB[0]~0clkctrl_outclk\) & ((\inst1|ACCB\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Data_out\(7),
	datac => \inst1|ACCB[0]~0clkctrl_outclk\,
	datad => \inst1|ACCB\(7),
	combout => \inst1|ACCB\(7));

-- Location: LCCOMB_X30_Y15_N4
\inst1|output[7]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[7]~20_combout\ = (\inst1|Equal45~0_combout\ & ((\inst1|ACCB\(7)) # ((\inst1|ACCA\(7) & \inst1|Equal46~0_combout\)))) # (!\inst1|Equal45~0_combout\ & (\inst1|ACCA\(7) & (\inst1|Equal46~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal45~0_combout\,
	datab => \inst1|ACCA\(7),
	datac => \inst1|Equal46~0_combout\,
	datad => \inst1|ACCB\(7),
	combout => \inst1|output[7]~20_combout\);

-- Location: LCCOMB_X26_Y15_N20
\inst1|output[7]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[7]~36_combout\ = (\inst1|output[7]~30_combout\) # ((\inst1|output[7]~20_combout\) # (!\inst1|output[7]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[7]~30_combout\,
	datac => \inst1|output[7]~20_combout\,
	datad => \inst1|output[7]~35_combout\,
	combout => \inst1|output[7]~36_combout\);

-- Location: LCCOMB_X26_Y15_N14
\inst1|output[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output\(7) = (GLOBAL(\inst1|output[7]~58clkctrl_outclk\) & (\inst1|output[7]~36_combout\)) # (!GLOBAL(\inst1|output[7]~58clkctrl_outclk\) & ((\inst1|output\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[7]~58clkctrl_outclk\,
	datab => \inst1|output[7]~36_combout\,
	datac => \inst1|output\(7),
	combout => \inst1|output\(7));

-- Location: LCCOMB_X26_Y13_N22
\inst|Yupa[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Yupa[7]~25_combout\ = \inst1|output\(7) $ (\inst|Yupa[6]~24\ $ (\inst|XL\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|output\(7),
	datad => \inst|XL\(7),
	cin => \inst|Yupa[6]~24\,
	combout => \inst|Yupa[7]~25_combout\);

-- Location: LCCOMB_X21_Y12_N14
\inst|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~14_combout\ = \inst|B\(7) $ (\inst|A\(7) $ (\inst|Add4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|B\(7),
	datab => \inst|A\(7),
	cin => \inst|Add4~13\,
	combout => \inst|Add4~14_combout\);

-- Location: FF_X26_Y13_N23
\inst|Yupa[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Yupa[7]~25_combout\,
	asdata => \inst|Add4~14_combout\,
	sload => \inst|Equal18~3_combout\,
	ena => \inst|Yupa[7]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Yupa\(7));

-- Location: LCCOMB_X23_Y14_N12
\inst|A[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|A[7]~0_combout\ = (\inst|Equal19~0_combout\ & (\inst|Yupa\(7))) # (!\inst|Equal19~0_combout\ & ((\inst1|output\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Yupa\(7),
	datab => \inst|Equal19~0_combout\,
	datad => \inst1|output\(7),
	combout => \inst|A[7]~0_combout\);

-- Location: FF_X23_Y14_N13
\inst|A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|A[7]~0_combout\,
	asdata => \inst|D\(15),
	sload => \inst|Equal33~2_combout\,
	ena => \inst|A[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|A\(7));

-- Location: LCCOMB_X30_Y14_N0
\inst1|salida10[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|salida10[7]~0_combout\ = (\inst1|Equal0~5_combout\ & (\inst|nRW~q\ & (!\inst|Dir\(2) & \inst1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~5_combout\,
	datab => \inst|nRW~q\,
	datac => \inst|Dir\(2),
	datad => \inst1|Equal0~4_combout\,
	combout => \inst1|salida10[7]~0_combout\);

-- Location: CLKCTRL_G9
\inst1|salida10[7]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|salida10[7]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|salida10[7]~0clkctrl_outclk\);

-- Location: LCCOMB_X24_Y12_N12
\inst1|salida10[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|salida10\(7) = (GLOBAL(\inst1|salida10[7]~0clkctrl_outclk\) & ((\inst|Data_out\(7)))) # (!GLOBAL(\inst1|salida10[7]~0clkctrl_outclk\) & (\inst1|salida10\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|salida10\(7),
	datab => \inst|Data_out\(7),
	datac => \inst1|salida10[7]~0clkctrl_outclk\,
	combout => \inst1|salida10\(7));

-- Location: LCCOMB_X24_Y12_N6
\inst1|salida10[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|salida10\(6) = (GLOBAL(\inst1|salida10[7]~0clkctrl_outclk\) & ((\inst|Data_out\(6)))) # (!GLOBAL(\inst1|salida10[7]~0clkctrl_outclk\) & (\inst1|salida10\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|salida10\(6),
	datac => \inst1|salida10[7]~0clkctrl_outclk\,
	datad => \inst|Data_out\(6),
	combout => \inst1|salida10\(6));

-- Location: LCCOMB_X24_Y12_N16
\inst1|salida10[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|salida10\(5) = (GLOBAL(\inst1|salida10[7]~0clkctrl_outclk\) & (\inst|Data_out\(5))) # (!GLOBAL(\inst1|salida10[7]~0clkctrl_outclk\) & ((\inst1|salida10\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Data_out\(5),
	datac => \inst1|salida10[7]~0clkctrl_outclk\,
	datad => \inst1|salida10\(5),
	combout => \inst1|salida10\(5));

-- Location: LCCOMB_X19_Y12_N26
\inst1|salida10[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|salida10\(4) = (GLOBAL(\inst1|salida10[7]~0clkctrl_outclk\) & ((\inst|Data_out\(4)))) # (!GLOBAL(\inst1|salida10[7]~0clkctrl_outclk\) & (\inst1|salida10\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|salida10[7]~0clkctrl_outclk\,
	datac => \inst1|salida10\(4),
	datad => \inst|Data_out\(4),
	combout => \inst1|salida10\(4));

-- Location: LCCOMB_X26_Y12_N2
\inst1|salida10[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|salida10\(3) = (GLOBAL(\inst1|salida10[7]~0clkctrl_outclk\) & (\inst|Data_out\(3))) # (!GLOBAL(\inst1|salida10[7]~0clkctrl_outclk\) & ((\inst1|salida10\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(3),
	datab => \inst1|salida10\(3),
	datad => \inst1|salida10[7]~0clkctrl_outclk\,
	combout => \inst1|salida10\(3));

-- Location: LCCOMB_X23_Y12_N22
\inst1|salida10[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|salida10\(2) = (GLOBAL(\inst1|salida10[7]~0clkctrl_outclk\) & ((\inst|Data_out\(2)))) # (!GLOBAL(\inst1|salida10[7]~0clkctrl_outclk\) & (\inst1|salida10\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|salida10\(2),
	datac => \inst|Data_out\(2),
	datad => \inst1|salida10[7]~0clkctrl_outclk\,
	combout => \inst1|salida10\(2));

-- Location: LCCOMB_X25_Y12_N14
\inst1|salida10[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|salida10\(1) = (GLOBAL(\inst1|salida10[7]~0clkctrl_outclk\) & (\inst|Data_out\(1))) # (!GLOBAL(\inst1|salida10[7]~0clkctrl_outclk\) & ((\inst1|salida10\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(1),
	datac => \inst1|salida10\(1),
	datad => \inst1|salida10[7]~0clkctrl_outclk\,
	combout => \inst1|salida10\(1));

-- Location: LCCOMB_X26_Y12_N8
\inst1|salida10[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|salida10\(0) = (GLOBAL(\inst1|salida10[7]~0clkctrl_outclk\) & (\inst|Data_out\(0))) # (!GLOBAL(\inst1|salida10[7]~0clkctrl_outclk\) & ((\inst1|salida10\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(0),
	datac => \inst1|salida10\(0),
	datad => \inst1|salida10[7]~0clkctrl_outclk\,
	combout => \inst1|salida10\(0));

-- Location: LCCOMB_X27_Y14_N12
\inst1|salida11[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|salida11[7]~0_combout\ = (\inst|nRW~q\ & (\inst1|Equal0~4_combout\ & (\inst1|Equal1~0_combout\ & !\inst|Dir\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nRW~q\,
	datab => \inst1|Equal0~4_combout\,
	datac => \inst1|Equal1~0_combout\,
	datad => \inst|Dir\(2),
	combout => \inst1|salida11[7]~0_combout\);

-- Location: CLKCTRL_G7
\inst1|salida11[7]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|salida11[7]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|salida11[7]~0clkctrl_outclk\);

-- Location: LCCOMB_X24_Y12_N30
\inst1|salida11[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|salida11\(7) = (GLOBAL(\inst1|salida11[7]~0clkctrl_outclk\) & ((\inst|Data_out\(7)))) # (!GLOBAL(\inst1|salida11[7]~0clkctrl_outclk\) & (\inst1|salida11\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|salida11\(7),
	datac => \inst|Data_out\(7),
	datad => \inst1|salida11[7]~0clkctrl_outclk\,
	combout => \inst1|salida11\(7));

-- Location: LCCOMB_X24_Y12_N0
\inst1|salida11[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|salida11\(6) = (GLOBAL(\inst1|salida11[7]~0clkctrl_outclk\) & (\inst|Data_out\(6))) # (!GLOBAL(\inst1|salida11[7]~0clkctrl_outclk\) & ((\inst1|salida11\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(6),
	datab => \inst1|salida11\(6),
	datad => \inst1|salida11[7]~0clkctrl_outclk\,
	combout => \inst1|salida11\(6));

-- Location: LCCOMB_X24_Y12_N22
\inst1|salida11[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|salida11\(5) = (GLOBAL(\inst1|salida11[7]~0clkctrl_outclk\) & ((\inst|Data_out\(5)))) # (!GLOBAL(\inst1|salida11[7]~0clkctrl_outclk\) & (\inst1|salida11\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|salida11\(5),
	datab => \inst|Data_out\(5),
	datad => \inst1|salida11[7]~0clkctrl_outclk\,
	combout => \inst1|salida11\(5));

-- Location: LCCOMB_X19_Y12_N20
\inst1|salida11[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|salida11\(4) = (GLOBAL(\inst1|salida11[7]~0clkctrl_outclk\) & ((\inst|Data_out\(4)))) # (!GLOBAL(\inst1|salida11[7]~0clkctrl_outclk\) & (\inst1|salida11\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|salida11\(4),
	datac => \inst1|salida11[7]~0clkctrl_outclk\,
	datad => \inst|Data_out\(4),
	combout => \inst1|salida11\(4));

-- Location: LCCOMB_X25_Y12_N4
\inst1|salida11[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|salida11\(3) = (GLOBAL(\inst1|salida11[7]~0clkctrl_outclk\) & ((\inst|Data_out\(3)))) # (!GLOBAL(\inst1|salida11[7]~0clkctrl_outclk\) & (\inst1|salida11\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|salida11\(3),
	datac => \inst1|salida11[7]~0clkctrl_outclk\,
	datad => \inst|Data_out\(3),
	combout => \inst1|salida11\(3));

-- Location: LCCOMB_X23_Y12_N0
\inst1|salida11[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|salida11\(2) = (GLOBAL(\inst1|salida11[7]~0clkctrl_outclk\) & ((\inst|Data_out\(2)))) # (!GLOBAL(\inst1|salida11[7]~0clkctrl_outclk\) & (\inst1|salida11\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|salida11\(2),
	datac => \inst|Data_out\(2),
	datad => \inst1|salida11[7]~0clkctrl_outclk\,
	combout => \inst1|salida11\(2));

-- Location: LCCOMB_X26_Y12_N22
\inst1|salida11[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|salida11\(1) = (GLOBAL(\inst1|salida11[7]~0clkctrl_outclk\) & ((\inst|Data_out\(1)))) # (!GLOBAL(\inst1|salida11[7]~0clkctrl_outclk\) & (\inst1|salida11\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|salida11\(1),
	datac => \inst1|salida11[7]~0clkctrl_outclk\,
	datad => \inst|Data_out\(1),
	combout => \inst1|salida11\(1));

-- Location: LCCOMB_X26_Y12_N12
\inst1|salida11[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|salida11\(0) = (GLOBAL(\inst1|salida11[7]~0clkctrl_outclk\) & (\inst|Data_out\(0))) # (!GLOBAL(\inst1|salida11[7]~0clkctrl_outclk\) & ((\inst1|salida11\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Data_out\(0),
	datac => \inst1|salida11[7]~0clkctrl_outclk\,
	datad => \inst1|salida11\(0),
	combout => \inst1|salida11\(0));

-- Location: LCCOMB_X27_Y14_N8
\inst1|salida12[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|salida12[7]~0_combout\ = (\inst|nRW~q\ & (\inst1|Equal0~4_combout\ & (\inst1|Equal2~0_combout\ & !\inst|Dir\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nRW~q\,
	datab => \inst1|Equal0~4_combout\,
	datac => \inst1|Equal2~0_combout\,
	datad => \inst|Dir\(2),
	combout => \inst1|salida12[7]~0_combout\);

-- Location: CLKCTRL_G15
\inst1|salida12[7]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|salida12[7]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|salida12[7]~0clkctrl_outclk\);

-- Location: LCCOMB_X24_Y12_N4
\inst1|salida12[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|salida12\(7) = (GLOBAL(\inst1|salida12[7]~0clkctrl_outclk\) & (\inst|Data_out\(7))) # (!GLOBAL(\inst1|salida12[7]~0clkctrl_outclk\) & ((\inst1|salida12\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Data_out\(7),
	datac => \inst1|salida12\(7),
	datad => \inst1|salida12[7]~0clkctrl_outclk\,
	combout => \inst1|salida12\(7));

-- Location: LCCOMB_X24_Y12_N2
\inst1|salida12[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|salida12\(6) = (GLOBAL(\inst1|salida12[7]~0clkctrl_outclk\) & (\inst|Data_out\(6))) # (!GLOBAL(\inst1|salida12[7]~0clkctrl_outclk\) & ((\inst1|salida12\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(6),
	datab => \inst1|salida12\(6),
	datad => \inst1|salida12[7]~0clkctrl_outclk\,
	combout => \inst1|salida12\(6));

-- Location: LCCOMB_X24_Y12_N14
\inst1|salida12[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|salida12\(5) = (GLOBAL(\inst1|salida12[7]~0clkctrl_outclk\) & (\inst|Data_out\(5))) # (!GLOBAL(\inst1|salida12[7]~0clkctrl_outclk\) & ((\inst1|salida12\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(5),
	datac => \inst1|salida12\(5),
	datad => \inst1|salida12[7]~0clkctrl_outclk\,
	combout => \inst1|salida12\(5));

-- Location: LCCOMB_X19_Y12_N22
\inst1|salida12[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|salida12\(4) = (GLOBAL(\inst1|salida12[7]~0clkctrl_outclk\) & ((\inst|Data_out\(4)))) # (!GLOBAL(\inst1|salida12[7]~0clkctrl_outclk\) & (\inst1|salida12\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|salida12\(4),
	datab => \inst|Data_out\(4),
	datac => \inst1|salida12[7]~0clkctrl_outclk\,
	combout => \inst1|salida12\(4));

-- Location: LCCOMB_X25_Y12_N10
\inst1|salida12[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|salida12\(3) = (GLOBAL(\inst1|salida12[7]~0clkctrl_outclk\) & ((\inst|Data_out\(3)))) # (!GLOBAL(\inst1|salida12[7]~0clkctrl_outclk\) & (\inst1|salida12\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|salida12\(3),
	datab => \inst|Data_out\(3),
	datad => \inst1|salida12[7]~0clkctrl_outclk\,
	combout => \inst1|salida12\(3));

-- Location: LCCOMB_X23_Y12_N6
\inst1|salida12[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|salida12\(2) = (GLOBAL(\inst1|salida12[7]~0clkctrl_outclk\) & (\inst|Data_out\(2))) # (!GLOBAL(\inst1|salida12[7]~0clkctrl_outclk\) & ((\inst1|salida12\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(2),
	datac => \inst1|salida12[7]~0clkctrl_outclk\,
	datad => \inst1|salida12\(2),
	combout => \inst1|salida12\(2));

-- Location: LCCOMB_X25_Y12_N8
\inst1|salida12[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|salida12\(1) = (GLOBAL(\inst1|salida12[7]~0clkctrl_outclk\) & (\inst|Data_out\(1))) # (!GLOBAL(\inst1|salida12[7]~0clkctrl_outclk\) & ((\inst1|salida12\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data_out\(1),
	datac => \inst1|salida12\(1),
	datad => \inst1|salida12[7]~0clkctrl_outclk\,
	combout => \inst1|salida12\(1));

-- Location: LCCOMB_X26_Y12_N6
\inst1|salida12[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|salida12\(0) = (GLOBAL(\inst1|salida12[7]~0clkctrl_outclk\) & ((\inst|Data_out\(0)))) # (!GLOBAL(\inst1|salida12[7]~0clkctrl_outclk\) & (\inst1|salida12\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|salida12\(0),
	datac => \inst|Data_out\(0),
	datad => \inst1|salida12[7]~0clkctrl_outclk\,
	combout => \inst1|salida12\(0));

-- Location: IOIBUF_X27_Y0_N15
\entrada[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(1),
	o => \entrada[1]~input_o\);

-- Location: IOIBUF_X0_Y16_N22
\entrada[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(0),
	o => \entrada[0]~input_o\);

-- Location: LCCOMB_X19_Y12_N24
\inst3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux0~0_combout\ = (!\entrada[1]~input_o\ & ((\entrada[0]~input_o\ & ((\inst1|salida11\(7)))) # (!\entrada[0]~input_o\ & (\inst1|salida10\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|salida10\(7),
	datab => \entrada[0]~input_o\,
	datac => \inst1|salida11\(7),
	datad => \entrada[1]~input_o\,
	combout => \inst3|Mux0~0_combout\);

-- Location: LCCOMB_X19_Y12_N14
\inst3|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux0~1_combout\ = (\inst3|Mux0~0_combout\) # ((\entrada[1]~input_o\ & (!\entrada[0]~input_o\ & \inst1|salida12\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[1]~input_o\,
	datab => \entrada[0]~input_o\,
	datac => \inst1|salida12\(7),
	datad => \inst3|Mux0~0_combout\,
	combout => \inst3|Mux0~1_combout\);

-- Location: LCCOMB_X24_Y12_N8
\inst3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux1~0_combout\ = (!\entrada[1]~input_o\ & ((\entrada[0]~input_o\ & (\inst1|salida11\(6))) # (!\entrada[0]~input_o\ & ((\inst1|salida10\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[0]~input_o\,
	datab => \inst1|salida11\(6),
	datac => \entrada[1]~input_o\,
	datad => \inst1|salida10\(6),
	combout => \inst3|Mux1~0_combout\);

-- Location: LCCOMB_X19_Y12_N28
\inst3|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux1~1_combout\ = (\inst3|Mux1~0_combout\) # ((\entrada[1]~input_o\ & (\inst1|salida12\(6) & !\entrada[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[1]~input_o\,
	datab => \inst1|salida12\(6),
	datac => \inst3|Mux1~0_combout\,
	datad => \entrada[0]~input_o\,
	combout => \inst3|Mux1~1_combout\);

-- Location: LCCOMB_X24_Y12_N18
\inst3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux2~0_combout\ = (!\entrada[1]~input_o\ & ((\entrada[0]~input_o\ & (\inst1|salida11\(5))) # (!\entrada[0]~input_o\ & ((\inst1|salida10\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[0]~input_o\,
	datab => \inst1|salida11\(5),
	datac => \entrada[1]~input_o\,
	datad => \inst1|salida10\(5),
	combout => \inst3|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y12_N20
\inst3|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux2~1_combout\ = (\inst3|Mux2~0_combout\) # ((!\entrada[0]~input_o\ & (\inst1|salida12\(5) & \entrada[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[0]~input_o\,
	datab => \inst1|salida12\(5),
	datac => \entrada[1]~input_o\,
	datad => \inst3|Mux2~0_combout\,
	combout => \inst3|Mux2~1_combout\);

-- Location: LCCOMB_X19_Y12_N2
\inst3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux3~0_combout\ = (!\entrada[1]~input_o\ & ((\entrada[0]~input_o\ & ((\inst1|salida11\(4)))) # (!\entrada[0]~input_o\ & (\inst1|salida10\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[1]~input_o\,
	datab => \entrada[0]~input_o\,
	datac => \inst1|salida10\(4),
	datad => \inst1|salida11\(4),
	combout => \inst3|Mux3~0_combout\);

-- Location: LCCOMB_X19_Y12_N12
\inst3|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux3~1_combout\ = (\inst3|Mux3~0_combout\) # ((\entrada[1]~input_o\ & (!\entrada[0]~input_o\ & \inst1|salida12\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[1]~input_o\,
	datab => \entrada[0]~input_o\,
	datac => \inst1|salida12\(4),
	datad => \inst3|Mux3~0_combout\,
	combout => \inst3|Mux3~1_combout\);

-- Location: LCCOMB_X19_Y12_N18
\inst3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux4~0_combout\ = (!\entrada[1]~input_o\ & ((\entrada[0]~input_o\ & ((\inst1|salida11\(3)))) # (!\entrada[0]~input_o\ & (\inst1|salida10\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[1]~input_o\,
	datab => \entrada[0]~input_o\,
	datac => \inst1|salida10\(3),
	datad => \inst1|salida11\(3),
	combout => \inst3|Mux4~0_combout\);

-- Location: LCCOMB_X19_Y12_N0
\inst3|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux4~1_combout\ = (\inst3|Mux4~0_combout\) # ((\entrada[1]~input_o\ & (!\entrada[0]~input_o\ & \inst1|salida12\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[1]~input_o\,
	datab => \entrada[0]~input_o\,
	datac => \inst1|salida12\(3),
	datad => \inst3|Mux4~0_combout\,
	combout => \inst3|Mux4~1_combout\);

-- Location: LCCOMB_X19_Y12_N6
\inst3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux5~0_combout\ = (!\entrada[1]~input_o\ & ((\entrada[0]~input_o\ & (\inst1|salida11\(2))) # (!\entrada[0]~input_o\ & ((\inst1|salida10\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|salida11\(2),
	datab => \entrada[0]~input_o\,
	datac => \inst1|salida10\(2),
	datad => \entrada[1]~input_o\,
	combout => \inst3|Mux5~0_combout\);

-- Location: LCCOMB_X19_Y12_N4
\inst3|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux5~1_combout\ = (\inst3|Mux5~0_combout\) # ((\entrada[1]~input_o\ & (!\entrada[0]~input_o\ & \inst1|salida12\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[1]~input_o\,
	datab => \entrada[0]~input_o\,
	datac => \inst1|salida12\(2),
	datad => \inst3|Mux5~0_combout\,
	combout => \inst3|Mux5~1_combout\);

-- Location: LCCOMB_X26_Y12_N28
\inst3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux6~0_combout\ = (!\entrada[1]~input_o\ & ((\entrada[0]~input_o\ & (\inst1|salida11\(1))) # (!\entrada[0]~input_o\ & ((\inst1|salida10\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|salida11\(1),
	datab => \inst1|salida10\(1),
	datac => \entrada[1]~input_o\,
	datad => \entrada[0]~input_o\,
	combout => \inst3|Mux6~0_combout\);

-- Location: LCCOMB_X26_Y12_N18
\inst3|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux6~1_combout\ = (\inst3|Mux6~0_combout\) # ((!\entrada[0]~input_o\ & (\entrada[1]~input_o\ & \inst1|salida12\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux6~0_combout\,
	datab => \entrada[0]~input_o\,
	datac => \entrada[1]~input_o\,
	datad => \inst1|salida12\(1),
	combout => \inst3|Mux6~1_combout\);

-- Location: LCCOMB_X26_Y12_N16
\inst3|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux7~0_combout\ = (!\entrada[1]~input_o\ & ((\entrada[0]~input_o\ & (\inst1|salida11\(0))) # (!\entrada[0]~input_o\ & ((\inst1|salida10\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|salida11\(0),
	datab => \inst1|salida10\(0),
	datac => \entrada[1]~input_o\,
	datad => \entrada[0]~input_o\,
	combout => \inst3|Mux7~0_combout\);

-- Location: LCCOMB_X26_Y12_N30
\inst3|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux7~1_combout\ = (\inst3|Mux7~0_combout\) # ((\inst1|salida12\(0) & (!\entrada[0]~input_o\ & \entrada[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|salida12\(0),
	datab => \entrada[0]~input_o\,
	datac => \entrada[1]~input_o\,
	datad => \inst3|Mux7~0_combout\,
	combout => \inst3|Mux7~1_combout\);

ww_a(7) <= \a[7]~output_o\;

ww_a(6) <= \a[6]~output_o\;

ww_a(5) <= \a[5]~output_o\;

ww_a(4) <= \a[4]~output_o\;

ww_a(3) <= \a[3]~output_o\;

ww_a(2) <= \a[2]~output_o\;

ww_a(1) <= \a[1]~output_o\;

ww_a(0) <= \a[0]~output_o\;

ww_b(7) <= \b[7]~output_o\;

ww_b(6) <= \b[6]~output_o\;

ww_b(5) <= \b[5]~output_o\;

ww_b(4) <= \b[4]~output_o\;

ww_b(3) <= \b[3]~output_o\;

ww_b(2) <= \b[2]~output_o\;

ww_b(1) <= \b[1]~output_o\;

ww_b(0) <= \b[0]~output_o\;

ww_bandera(7) <= \bandera[7]~output_o\;

ww_bandera(6) <= \bandera[6]~output_o\;

ww_bandera(5) <= \bandera[5]~output_o\;

ww_bandera(4) <= \bandera[4]~output_o\;

ww_bandera(3) <= \bandera[3]~output_o\;

ww_bandera(2) <= \bandera[2]~output_o\;

ww_bandera(1) <= \bandera[1]~output_o\;

ww_bandera(0) <= \bandera[0]~output_o\;

ww_dir(15) <= \dir[15]~output_o\;

ww_dir(14) <= \dir[14]~output_o\;

ww_dir(13) <= \dir[13]~output_o\;

ww_dir(12) <= \dir[12]~output_o\;

ww_dir(11) <= \dir[11]~output_o\;

ww_dir(10) <= \dir[10]~output_o\;

ww_dir(9) <= \dir[9]~output_o\;

ww_dir(8) <= \dir[8]~output_o\;

ww_dir(7) <= \dir[7]~output_o\;

ww_dir(6) <= \dir[6]~output_o\;

ww_dir(5) <= \dir[5]~output_o\;

ww_dir(4) <= \dir[4]~output_o\;

ww_dir(3) <= \dir[3]~output_o\;

ww_dir(2) <= \dir[2]~output_o\;

ww_dir(1) <= \dir[1]~output_o\;

ww_dir(0) <= \dir[0]~output_o\;

ww_estado(7) <= \estado[7]~output_o\;

ww_estado(6) <= \estado[6]~output_o\;

ww_estado(5) <= \estado[5]~output_o\;

ww_estado(4) <= \estado[4]~output_o\;

ww_estado(3) <= \estado[3]~output_o\;

ww_estado(2) <= \estado[2]~output_o\;

ww_estado(1) <= \estado[1]~output_o\;

ww_estado(0) <= \estado[0]~output_o\;

ww_pc(7) <= \pc[7]~output_o\;

ww_pc(6) <= \pc[6]~output_o\;

ww_pc(5) <= \pc[5]~output_o\;

ww_pc(4) <= \pc[4]~output_o\;

ww_pc(3) <= \pc[3]~output_o\;

ww_pc(2) <= \pc[2]~output_o\;

ww_pc(1) <= \pc[1]~output_o\;

ww_pc(0) <= \pc[0]~output_o\;

ww_s10(7) <= \s10[7]~output_o\;

ww_s10(6) <= \s10[6]~output_o\;

ww_s10(5) <= \s10[5]~output_o\;

ww_s10(4) <= \s10[4]~output_o\;

ww_s10(3) <= \s10[3]~output_o\;

ww_s10(2) <= \s10[2]~output_o\;

ww_s10(1) <= \s10[1]~output_o\;

ww_s10(0) <= \s10[0]~output_o\;

ww_s11(7) <= \s11[7]~output_o\;

ww_s11(6) <= \s11[6]~output_o\;

ww_s11(5) <= \s11[5]~output_o\;

ww_s11(4) <= \s11[4]~output_o\;

ww_s11(3) <= \s11[3]~output_o\;

ww_s11(2) <= \s11[2]~output_o\;

ww_s11(1) <= \s11[1]~output_o\;

ww_s11(0) <= \s11[0]~output_o\;

ww_s12(7) <= \s12[7]~output_o\;

ww_s12(6) <= \s12[6]~output_o\;

ww_s12(5) <= \s12[5]~output_o\;

ww_s12(4) <= \s12[4]~output_o\;

ww_s12(3) <= \s12[3]~output_o\;

ww_s12(2) <= \s12[2]~output_o\;

ww_s12(1) <= \s12[1]~output_o\;

ww_s12(0) <= \s12[0]~output_o\;

ww_salida(7) <= \salida[7]~output_o\;

ww_salida(6) <= \salida[6]~output_o\;

ww_salida(5) <= \salida[5]~output_o\;

ww_salida(4) <= \salida[4]~output_o\;

ww_salida(3) <= \salida[3]~output_o\;

ww_salida(2) <= \salida[2]~output_o\;

ww_salida(1) <= \salida[1]~output_o\;

ww_salida(0) <= \salida[0]~output_o\;

ww_xlow(7) <= \xlow[7]~output_o\;

ww_xlow(6) <= \xlow[6]~output_o\;

ww_xlow(5) <= \xlow[5]~output_o\;

ww_xlow(4) <= \xlow[4]~output_o\;

ww_xlow(3) <= \xlow[3]~output_o\;

ww_xlow(2) <= \xlow[2]~output_o\;

ww_xlow(1) <= \xlow[1]~output_o\;

ww_xlow(0) <= \xlow[0]~output_o\;
END structure;


