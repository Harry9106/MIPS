-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.1.0 Build 186 12/03/2014 SJ Web Edition"

-- DATE "10/19/2017 15:26:16"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DE0_NANO IS
    PORT (
	KEY : IN std_logic_vector(1 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	LED : OUT std_logic_vector(7 DOWNTO 0)
	);
END DE0_NANO;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LED[0]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[1]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[2]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[3]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[4]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[5]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[6]	=>  Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[7]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- KEY[0]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF DE0_NANO IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_LED : std_logic_vector(7 DOWNTO 0);
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \LED[0]~output_o\ : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \LED[2]~output_o\ : std_logic;
SIGNAL \LED[3]~output_o\ : std_logic;
SIGNAL \LED[4]~output_o\ : std_logic;
SIGNAL \LED[5]~output_o\ : std_logic;
SIGNAL \LED[6]~output_o\ : std_logic;
SIGNAL \LED[7]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita19~combout\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita20~combout\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita21~combout\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita22~combout\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~71feeder_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~71_q\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[20]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_c|mem|ram~39feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_c|mem|ram~39_q\ : std_logic;
SIGNAL \mips_0|datapath_c|fetch_c|PCAdder|y[2]~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|fetch_c|IMemory|rom~14_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|fetch_c|IMemory|rom~15_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|PCPlus_FF|q[2]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[2]~6_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|fetch_c|JumpMux|y[2]~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|fetch_c|PCAdder|y[2]~1\ : std_logic;
SIGNAL \mips_0|datapath_c|fetch_c|PCAdder|y[3]~3\ : std_logic;
SIGNAL \mips_0|datapath_c|fetch_c|PCAdder|y[4]~4_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|PCPlus_FF|q[4]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|fetch_c|IMemory|rom~22_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|fetch_c|IMemory|rom~23_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|fetch_c|PCAdder|y[3]~2_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|PCPlus_FF|q[3]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|fetch_c|IMemory|rom~20_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|fetch_c|IMemory|rom~2_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|fetch_c|IMemory|rom~3_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|fetch_c|IMemory|rom~21_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[2]~7\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[3]~9\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[4]~10_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|fetch_c|JumpMux|y[4]~2_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|fetch_c|PCAdder|y[4]~5\ : std_logic;
SIGNAL \mips_0|datapath_c|fetch_c|PCAdder|y[5]~6_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|fetch_c|IMemory|rom~12_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|fetch_c|IMemory|rom~13_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|PCPlus_FF|q[5]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[4]~11\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[5]~12_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|fetch_c|JumpMux|y[5]~5_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|fetch_c|PCAdder|y[5]~7\ : std_logic;
SIGNAL \mips_0|datapath_c|fetch_c|PCAdder|y[6]~9\ : std_logic;
SIGNAL \mips_0|datapath_c|fetch_c|PCAdder|y[7]~10_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|PCPlus_FF|q[7]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|fetch_c|PCAdder|y[6]~8_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|PCPlus_FF|q[6]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[5]~13\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[6]~15\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[7]~16_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|fetch_c|JumpMux|y[7]~4_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|fetch_c|IMemory|rom~6_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|fetch_c|IMemory|rom~7_combout\ : std_logic;
SIGNAL \mips_0|controller_c|maindec_c|Mux2~1_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|MemToReg_FF|q~q\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_memory_c|MemToReg_FF|q~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_memory_c|MemToReg_FF|q~q\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ : std_logic;
SIGNAL \mips_0|controller_c|maindec_c|Mux2~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|MemWrite_FF|q~q\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_memory_c|MemWrite_FF|q~q\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[2]~feeder_combout\ : std_logic;
SIGNAL \mips_0|controller_c|aludec_c|alucontrol[2]~1_combout\ : std_logic;
SIGNAL \mips_0|controller_c|maindec_c|Mux6~0_combout\ : std_logic;
SIGNAL \mips_0|controller_c|aludec_c|alucontrol[0]~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~38feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~38_q\ : std_logic;
SIGNAL \mips_0|controller_c|maindec_c|Mux0~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RegWrite_FF|q~q\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_memory_c|RegWrite_FF|q~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_memory_c|RegWrite_FF|q~q\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_writeback_c|RegWrite_FF|q~q\ : std_logic;
SIGNAL \mips_0|datapath_c|fetch_c|IMemory|rom~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|fetch_c|IMemory|rom~1_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RegDst_FF|q~q\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|RegMux|y[0]~3_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|fetch_c|IMemory|rom~4_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|fetch_c|IMemory|rom~5_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|fetch_decode_c|Instr_FF|q[17]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|Rt_FF|q[1]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|RegMux|y[1]~2_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q[1]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|RegMux|y[2]~1_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q[2]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|RegMux|y[3]~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q[3]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|fetch_c|IMemory|rom~16_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|fetch_c|IMemory|rom~17_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \mips_0|datapath_c|fetch_c|IMemory|rom~18_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|fetch_c|IMemory|rom~19_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~44feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~110_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~111_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~44_q\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[4]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~77feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~77_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~80feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~80_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~50feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~50_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~81feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~81_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~52feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~52_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~86feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~86_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~83feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~83_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~56feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~56_q\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[20]~feeder_combout\ : std_logic;
SIGNAL \mips_0|controller_c|maindec_c|Mux6~1_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~94feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~94_q\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[22]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~95feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~95_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~96feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~96_q\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[25]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~99feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~99_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~102feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~102_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~70feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~70_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD1_FF|q[31]~6_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[42]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|Equal0~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[7]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[0]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~108_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[1]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~107_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~109_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~103feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~103_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD2_FF|q[31]~31_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|Equal1~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[7]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[0]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~105_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~104_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~106_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|AluMux|y[31]~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Mux0~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~1_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~69feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~69_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD1_FF|q[30]~7_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~101feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~101_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD2_FF|q[29]~29_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[40]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~2_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~68feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~68_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD1_FF|q[29]~8_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~3_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~67feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~67_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD1_FF|q[28]~9_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~4_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~5_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~65feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~65_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD1_FF|q[26]~11_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~64feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~64_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD1_FF|q[25]~12_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~6_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~63feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~63_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD1_FF|q[24]~13_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~8_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~62feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~62_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD1_FF|q[23]~14_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~61feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~61_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD1_FF|q[22]~15_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~10_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~60feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~60_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD1_FF|q[21]~16_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~11_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~59feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~59_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD1_FF|q[20]~17_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~12_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~58feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~58_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD1_FF|q[19]~18_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~57feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~57_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD1_FF|q[18]~19_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~90feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~90_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD2_FF|q[18]~18_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[29]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~13_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~89feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~89_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD2_FF|q[17]~17_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[28]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~14_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~88feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~88_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD2_FF|q[16]~16_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[27]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~15_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~55feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~55_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD1_FF|q[16]~21_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~87feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~87_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD2_FF|q[15]~15_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[26]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~16_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~54feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~54_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD1_FF|q[15]~22_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~53feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~53_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD1_FF|q[14]~23_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~17_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~85feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~85_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD2_FF|q[13]~13_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~18_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~51feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~51_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD1_FF|q[12]~25_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~19_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~20_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~21_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~49feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~49_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD1_FF|q[10]~27_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~48feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~48_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD1_FF|q[9]~28_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~22_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~23_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~47feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~47_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD1_FF|q[8]~29_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~46feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~46_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD1_FF|q[7]~5_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~24_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~45feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~45_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD1_FF|q[6]~4_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~26_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~27_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~43feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~43_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD1_FF|q[4]~2_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~28_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~29_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~41feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~41_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD1_FF|q[2]~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~30_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~31_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~39feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~39_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD1_FF|q[0]~31_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~33_cout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~35\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~37\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~39\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~41\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~43\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~45\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~47\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~49\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~51\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~53\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~55\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~57\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~59\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~61\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~63\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~65\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~67\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~69\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~71\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~73\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~75\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~77\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~79\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~81\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~83\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~85\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~87\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~89\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~91\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~93\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~95\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~96_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~98_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[31]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[29]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \mips_0|datapath_c|writeback_c|mux|y[31]~1_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD2_FF|q[30]~30_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[41]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|AluMux|y[30]~1_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Mux1~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~94_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~99_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[30]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \mips_0|datapath_c|writeback_c|mux|y[30]~2_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~100feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~100_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD2_FF|q[28]~28_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[39]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[28]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|AluMux|y[29]~2_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Mux2~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~92_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~100_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[29]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|writeback_c|mux|y[29]~3_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD2_FF|q[27]~27_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[38]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[27]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~90_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|AluMux|y[28]~3_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Mux3~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~101_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[28]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|writeback_c|mux|y[28]~4_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~66feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~66_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD1_FF|q[27]~10_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~88_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|AluMux|y[27]~4_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Mux4~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~102_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[27]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \mips_0|datapath_c|writeback_c|mux|y[27]~5_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~98feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~98_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD2_FF|q[26]~26_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[37]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[26]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|AluMux|y[26]~5_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Mux5~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~86_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~103_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[26]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|writeback_c|mux|y[26]~6_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~97feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~97_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD2_FF|q[25]~25_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[36]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|AluMux|y[25]~6_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Mux6~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~84_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~104_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[25]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \mips_0|datapath_c|writeback_c|mux|y[25]~7_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD2_FF|q[24]~24_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[35]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~7_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~82_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|AluMux|y[24]~7_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Mux7~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~105_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[24]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \mips_0|datapath_c|writeback_c|mux|y[24]~8_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD2_FF|q[23]~23_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[34]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~80_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|AluMux|y[23]~8_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Mux8~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~106_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[23]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|writeback_c|mux|y[23]~9_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD2_FF|q[22]~22_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[33]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~9_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~78_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|AluMux|y[22]~9_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Mux9~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~107_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[22]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \mips_0|datapath_c|writeback_c|mux|y[22]~10_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~93feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~93_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD2_FF|q[21]~21_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[32]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[21]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~76_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|AluMux|y[21]~10_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Mux10~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~108_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[21]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|writeback_c|mux|y[21]~11_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~91feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~91_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD2_FF|q[19]~19_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[30]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[19]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|AluMux|y[19]~12_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Mux12~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~72_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~110_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[19]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|writeback_c|mux|y[19]~13_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~84feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~84_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD2_FF|q[12]~12_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[23]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[13]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[14]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[15]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[16]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[18]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~70_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|AluMux|y[18]~13_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Mux13~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~111_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[18]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|writeback_c|mux|y[18]~14_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD1_FF|q[17]~20_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~68_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|AluMux|y[17]~14_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Mux14~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~112_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[17]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \mips_0|datapath_c|writeback_c|mux|y[17]~15_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD2_FF|q[11]~11_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~66_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|AluMux|y[16]~15_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Mux15~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~113_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[16]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|writeback_c|mux|y[16]~16_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~82feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~82_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD2_FF|q[10]~10_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[21]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[10]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~64_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|AluMux|y[15]~16_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Mux16~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~114_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[15]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|writeback_c|mux|y[15]~17_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD2_FF|q[14]~14_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[25]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|AluMux|y[14]~17_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Mux17~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~62_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~115_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[14]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \mips_0|datapath_c|writeback_c|mux|y[14]~18_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD1_FF|q[13]~24_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~60_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|AluMux|y[13]~18_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Mux18~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~116_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[13]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \mips_0|datapath_c|writeback_c|mux|y[13]~19_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD2_FF|q[9]~9_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[9]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|AluMux|y[12]~19_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Mux19~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~58_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~117_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[12]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|writeback_c|mux|y[12]~20_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD1_FF|q[11]~26_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|AluMux|y[11]~20_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Mux20~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~56_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~118_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[11]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \mips_0|datapath_c|writeback_c|mux|y[11]~21_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD2_FF|q[8]~8_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[19]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[8]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~54_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|AluMux|y[10]~21_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Mux21~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~119_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[10]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|writeback_c|mux|y[10]~22_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD2_FF|q[5]~5_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~52_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|AluMux|y[9]~22_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Mux22~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~120_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[9]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|writeback_c|mux|y[9]~23_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~75feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~75_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD2_FF|q[3]~3_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[3]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|AluMux|y[8]~23_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Mux23~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~50_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~121_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[8]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|writeback_c|mux|y[8]~24_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~79feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~79_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD2_FF|q[7]~7_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|AluMux|y[7]~24_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Mux24~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~48_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~122_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[7]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \mips_0|datapath_c|writeback_c|mux|y[7]~25_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~78feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~78_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD2_FF|q[6]~6_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[17]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~25_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~46_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|AluMux|y[6]~25_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Mux25~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~123_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[6]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \mips_0|datapath_c|writeback_c|mux|y[6]~26_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD1_FF|q[5]~3_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~44_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|AluMux|y[5]~26_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Mux26~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~124_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[5]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \mips_0|datapath_c|writeback_c|mux|y[5]~27_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~76feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~76_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD2_FF|q[4]~4_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[15]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|AluMux|y[4]~27_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Mux27~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~42_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~125_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[4]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|writeback_c|mux|y[4]~28_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~42feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~42_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD1_FF|q[3]~1_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~40_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|AluMux|y[3]~28_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Mux28~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~126_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[3]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|writeback_c|mux|y[3]~29_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~40feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~40_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD1_FF|q[1]~30_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|AluMux|y[1]~30_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Mux30~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~36_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~128_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[1]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \mips_0|datapath_c|writeback_c|mux|y[1]~31_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~73feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~73_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD2_FF|q[1]~1_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \mips_0|datapath_c|writeback_c|mux|y[2]~30_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~74feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~74_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD2_FF|q[2]~2_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[13]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|AluMux|y[2]~29_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Mux29~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~38_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~127_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \mips_0|datapath_c|writeback_c|mux|y[20]~12_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~92feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~92_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD2_FF|q[20]~20_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[31]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|AluMux|y[20]~11_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Mux11~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~74_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~109_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Equal0~3_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Equal0~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Equal0~1_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Equal0~2_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Equal0~8_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Equal0~4_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Equal0~5_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Equal0~6_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Equal0~7_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Equal0~9_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Equal0~10_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_memory_c|Zero_FF|q~q\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[3]~8_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|fetch_c|JumpMux|y[3]~1_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|fetch_c|IMemory|rom~8_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|fetch_c|IMemory|rom~9_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_memory_c|Branch_FF|q~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_memory_c|Branch_FF|q~q\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[6]~14_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|fetch_c|JumpMux|y[6]~3_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|fetch_c|IMemory|rom~10_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|fetch_c|IMemory|rom~11_combout\ : std_logic;
SIGNAL \mips_0|controller_c|aludec_c|alucontrol[1]~2_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~34_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~130_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|AluMux|y[0]~31_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~1_cout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~3_cout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~5_cout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~7_cout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~9_cout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~11_cout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~13_cout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~15_cout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~17_cout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~19_cout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~21_cout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~23_cout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~25_cout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~27_cout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~29_cout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~31_cout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~33_cout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~35_cout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~37_cout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~39_cout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~41_cout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~43_cout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~45_cout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~47_cout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~49_cout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~51_cout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~53_cout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~55_cout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~57_cout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~59_cout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~61_cout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~62_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~129_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_c|MipsAlu|Add0~131_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \mips_0|datapath_c|writeback_c|mux|y[0]~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~72feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory~72_q\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_execute_C|RD2_FF|q[0]~0_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[11]~feeder_combout\ : std_logic;
SIGNAL \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[0]~feeder_combout\ : std_logic;
SIGNAL \led_s[0]~feeder_combout\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \process_0~7_combout\ : std_logic;
SIGNAL \process_0~8_combout\ : std_logic;
SIGNAL \process_0~9_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \process_0~10_combout\ : std_logic;
SIGNAL \led_s[2]~feeder_combout\ : std_logic;
SIGNAL \led_s[3]~feeder_combout\ : std_logic;
SIGNAL \led_s[4]~feeder_combout\ : std_logic;
SIGNAL \led_s[5]~feeder_combout\ : std_logic;
SIGNAL \led_s[6]~feeder_combout\ : std_logic;
SIGNAL \led_s[7]~feeder_combout\ : std_logic;
SIGNAL \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \mips_0|datapath_c|decode_execute_C|RD2_FF|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_0|datapath_c|decode_execute_C|RD1_FF|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL led_s : std_logic_vector(7 DOWNTO 0);
SIGNAL \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\ : std_logic_vector(0 TO 42);
SIGNAL \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\ : std_logic_vector(0 TO 42);
SIGNAL \mips_0|datapath_c|fetch_c|PCFF|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \mips_0|datapath_c|execute_memory_c|WriteReg_FF|q\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \mips_0|datapath_c|decode_execute_C|Rt_FF|q\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \mips_0|datapath_c|decode_execute_C|PCPlus_FF|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mips_0|datapath_c|fetch_decode_c|PCPlus_FF|q\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_KEY <= KEY;
ww_CLOCK_50 <= CLOCK_50;
LED <= ww_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \mips_0|datapath_c|writeback_c|mux|y[31]~1_combout\ & \mips_0|datapath_c|writeback_c|mux|y[30]~2_combout\ & 
\mips_0|datapath_c|writeback_c|mux|y[29]~3_combout\ & \mips_0|datapath_c|writeback_c|mux|y[28]~4_combout\ & \mips_0|datapath_c|writeback_c|mux|y[27]~5_combout\ & \mips_0|datapath_c|writeback_c|mux|y[26]~6_combout\ & 
\mips_0|datapath_c|writeback_c|mux|y[25]~7_combout\ & \mips_0|datapath_c|writeback_c|mux|y[24]~8_combout\ & \mips_0|datapath_c|writeback_c|mux|y[23]~9_combout\ & \mips_0|datapath_c|writeback_c|mux|y[22]~10_combout\ & 
\mips_0|datapath_c|writeback_c|mux|y[21]~11_combout\ & \mips_0|datapath_c|writeback_c|mux|y[20]~12_combout\ & \mips_0|datapath_c|writeback_c|mux|y[19]~13_combout\ & \mips_0|datapath_c|writeback_c|mux|y[18]~14_combout\ & 
\mips_0|datapath_c|writeback_c|mux|y[17]~15_combout\ & \mips_0|datapath_c|writeback_c|mux|y[16]~16_combout\ & \mips_0|datapath_c|writeback_c|mux|y[15]~17_combout\ & \mips_0|datapath_c|writeback_c|mux|y[14]~18_combout\ & 
\mips_0|datapath_c|writeback_c|mux|y[13]~19_combout\ & \mips_0|datapath_c|writeback_c|mux|y[12]~20_combout\ & \mips_0|datapath_c|writeback_c|mux|y[11]~21_combout\ & \mips_0|datapath_c|writeback_c|mux|y[10]~22_combout\ & 
\mips_0|datapath_c|writeback_c|mux|y[9]~23_combout\ & \mips_0|datapath_c|writeback_c|mux|y[8]~24_combout\ & \mips_0|datapath_c|writeback_c|mux|y[7]~25_combout\ & \mips_0|datapath_c|writeback_c|mux|y[6]~26_combout\ & 
\mips_0|datapath_c|writeback_c|mux|y[5]~27_combout\ & \mips_0|datapath_c|writeback_c|mux|y[4]~28_combout\ & \mips_0|datapath_c|writeback_c|mux|y[3]~29_combout\ & \mips_0|datapath_c|writeback_c|mux|y[2]~30_combout\ & 
\mips_0|datapath_c|writeback_c|mux|y[1]~31_combout\ & \mips_0|datapath_c|writeback_c|mux|y[0]~0_combout\);

\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q\(2) & \mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q\(3) & 
\mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q\(2) & \mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q\(1) & \mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q\(0));

\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\~GND~combout\ & \mips_0|datapath_c|fetch_c|IMemory|rom~7_combout\ & \~GND~combout\ & \mips_0|datapath_c|fetch_c|IMemory|rom~5_combout\ & 
\mips_0|datapath_c|fetch_c|IMemory|rom~1_combout\);

\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0~portbdataout\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a1\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a2\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a3\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a4\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a5\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a6\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a7\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a8\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a9\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a10\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a11\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a12\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a13\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a14\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a15\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a16\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a17\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a18\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a19\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a20\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a21\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a22\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a23\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a24\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a25\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a26\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a27\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a28\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a29\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a30\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a31\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \mips_0|datapath_c|writeback_c|mux|y[31]~1_combout\ & \mips_0|datapath_c|writeback_c|mux|y[30]~2_combout\ & 
\mips_0|datapath_c|writeback_c|mux|y[29]~3_combout\ & \mips_0|datapath_c|writeback_c|mux|y[28]~4_combout\ & \mips_0|datapath_c|writeback_c|mux|y[27]~5_combout\ & \mips_0|datapath_c|writeback_c|mux|y[26]~6_combout\ & 
\mips_0|datapath_c|writeback_c|mux|y[25]~7_combout\ & \mips_0|datapath_c|writeback_c|mux|y[24]~8_combout\ & \mips_0|datapath_c|writeback_c|mux|y[23]~9_combout\ & \mips_0|datapath_c|writeback_c|mux|y[22]~10_combout\ & 
\mips_0|datapath_c|writeback_c|mux|y[21]~11_combout\ & \mips_0|datapath_c|writeback_c|mux|y[20]~12_combout\ & \mips_0|datapath_c|writeback_c|mux|y[19]~13_combout\ & \mips_0|datapath_c|writeback_c|mux|y[18]~14_combout\ & 
\mips_0|datapath_c|writeback_c|mux|y[17]~15_combout\ & \mips_0|datapath_c|writeback_c|mux|y[16]~16_combout\ & \mips_0|datapath_c|writeback_c|mux|y[15]~17_combout\ & \mips_0|datapath_c|writeback_c|mux|y[14]~18_combout\ & 
\mips_0|datapath_c|writeback_c|mux|y[13]~19_combout\ & \mips_0|datapath_c|writeback_c|mux|y[12]~20_combout\ & \mips_0|datapath_c|writeback_c|mux|y[11]~21_combout\ & \mips_0|datapath_c|writeback_c|mux|y[10]~22_combout\ & 
\mips_0|datapath_c|writeback_c|mux|y[9]~23_combout\ & \mips_0|datapath_c|writeback_c|mux|y[8]~24_combout\ & \mips_0|datapath_c|writeback_c|mux|y[7]~25_combout\ & \mips_0|datapath_c|writeback_c|mux|y[6]~26_combout\ & 
\mips_0|datapath_c|writeback_c|mux|y[5]~27_combout\ & \mips_0|datapath_c|writeback_c|mux|y[4]~28_combout\ & \mips_0|datapath_c|writeback_c|mux|y[3]~29_combout\ & \mips_0|datapath_c|writeback_c|mux|y[2]~30_combout\ & 
\mips_0|datapath_c|writeback_c|mux|y[1]~31_combout\ & \mips_0|datapath_c|writeback_c|mux|y[0]~0_combout\);

\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q\(2) & \mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q\(3) & 
\mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q\(2) & \mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q\(1) & \mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q\(0));

\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\~GND~combout\ & \mips_0|datapath_c|fetch_c|IMemory|rom~19_combout\ & \~GND~combout\ & \mips_0|datapath_c|fetch_c|IMemory|rom~17_combout\ & 
\mips_0|datapath_c|fetch_c|IMemory|rom~16_combout\);

\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a1\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a2\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a3\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a4\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a5\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a6\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a7\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a8\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a9\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a10\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a11\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a12\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a13\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a14\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a15\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a16\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a17\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a18\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a19\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a20\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a21\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a22\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a23\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a24\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a25\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a26\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a27\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a28\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a29\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a30\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a31\ <= \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(31) & \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(30) & 
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(29) & \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(28) & \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(27) & \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(26) & 
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(25) & \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(24) & \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(23) & \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(22) & 
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(21) & \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(20) & \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(19) & \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(0));

\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(7) & \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(6) & \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(5)
& \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(4) & \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(3) & \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(2));

\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a19\ <= \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a20\ <= \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a21\ <= \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a22\ <= \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a23\ <= \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a24\ <= \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a25\ <= \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a26\ <= \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a27\ <= \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a28\ <= \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a29\ <= \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a30\ <= \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a31\ <= \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);

\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ <= (\mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(18) & \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(17) & 
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(16) & \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(15) & \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(14) & \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(13) & 
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(12) & \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(11) & \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(10) & \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(9) & 
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(8) & \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(7) & \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(6) & \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(5) & 
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(4) & \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(3) & \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(2) & \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(1));

\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(7) & \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(6) & \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(5)
& \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(4) & \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(3) & \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(2));

\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a1~portadataout\ <= \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);
\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a2\ <= \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(1);
\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a3\ <= \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(2);
\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a4\ <= \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(3);
\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a5\ <= \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(4);
\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a6\ <= \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(5);
\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a7\ <= \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(6);
\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a8\ <= \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(7);
\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a9\ <= \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(8);
\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a10\ <= \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(9);
\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a11\ <= \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(10);
\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a12\ <= \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(11);
\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a13\ <= \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(12);
\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a14\ <= \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(13);
\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a15\ <= \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(14);
\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a16\ <= \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(15);
\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a17\ <= \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(16);
\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a18\ <= \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(17);

\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(22));

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

-- Location: IOOBUF_X38_Y34_N16
\LED[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => led_s(0),
	devoe => ww_devoe,
	o => \LED[0]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\LED[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => led_s(1),
	devoe => ww_devoe,
	o => \LED[1]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\LED[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => led_s(2),
	devoe => ww_devoe,
	o => \LED[2]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\LED[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => led_s(3),
	devoe => ww_devoe,
	o => \LED[3]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\LED[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => led_s(4),
	devoe => ww_devoe,
	o => \LED[4]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\LED[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => led_s(5),
	devoe => ww_devoe,
	o => \LED[5]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\LED[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => led_s(6),
	devoe => ww_devoe,
	o => \LED[6]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\LED[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => led_s(7),
	devoe => ww_devoe,
	o => \LED[7]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G18
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X28_Y2_N10
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: FF_X28_Y2_N11
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X28_Y2_N12
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X28_Y2_N13
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X28_Y2_N14
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X28_Y2_N15
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X28_Y2_N16
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X28_Y2_N17
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X28_Y2_N18
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & !\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X28_Y2_N19
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X28_Y2_N20
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ((\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X28_Y2_N21
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X28_Y2_N22
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & !\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => VCC,
	cin => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: FF_X28_Y2_N23
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X28_Y2_N24
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = (\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\)) # 
-- (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ((\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datad => VCC,
	cin => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	cout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: FF_X28_Y2_N25
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7));

-- Location: LCCOMB_X28_Y2_N26
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ = (\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & (\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # 
-- (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ = CARRY((\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & !\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datad => VCC,
	cin => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\,
	combout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	cout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\);

-- Location: FF_X28_Y2_N27
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8));

-- Location: LCCOMB_X28_Y2_N28
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ = (\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\)) # 
-- (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & ((\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datad => VCC,
	cin => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\,
	combout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	cout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\);

-- Location: FF_X28_Y2_N29
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9));

-- Location: LCCOMB_X28_Y2_N30
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ = (\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) & (\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # 
-- (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) & (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ & VCC))
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ = CARRY((\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) & !\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10),
	datad => VCC,
	cin => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\,
	combout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	cout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\);

-- Location: FF_X28_Y2_N31
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10));

-- Location: LCCOMB_X28_Y1_N0
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ = (\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11) & (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\)) # 
-- (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11) & ((\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (GND)))
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11),
	datad => VCC,
	cin => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\,
	combout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	cout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\);

-- Location: FF_X28_Y1_N1
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11));

-- Location: LCCOMB_X28_Y1_N2
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ = (\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12) & (\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # 
-- (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12) & (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ = CARRY((\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12) & !\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12),
	datad => VCC,
	cin => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\,
	combout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	cout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\);

-- Location: FF_X28_Y1_N3
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12));

-- Location: LCCOMB_X28_Y1_N4
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita13\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ = (\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13) & (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\)) # 
-- (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13) & ((\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (GND)))
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13),
	datad => VCC,
	cin => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\,
	combout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	cout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\);

-- Location: FF_X28_Y1_N5
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13));

-- Location: LCCOMB_X28_Y1_N6
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ = (\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14) & (\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ $ (GND))) # 
-- (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14) & (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ & VCC))
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ = CARRY((\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14) & !\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14),
	datad => VCC,
	cin => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\,
	combout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	cout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\);

-- Location: FF_X28_Y1_N7
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14));

-- Location: LCCOMB_X28_Y1_N8
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita15\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ = (\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15) & (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\)) # 
-- (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15) & ((\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (GND)))
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ = CARRY((!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15),
	datad => VCC,
	cin => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\,
	combout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	cout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\);

-- Location: FF_X28_Y1_N9
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15));

-- Location: LCCOMB_X28_Y1_N10
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ = (\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16) & (\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ $ (GND))) # 
-- (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16) & (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ & VCC))
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ = CARRY((\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16) & !\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16),
	datad => VCC,
	cin => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\,
	combout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	cout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\);

-- Location: FF_X28_Y1_N11
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16));

-- Location: LCCOMB_X28_Y1_N12
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita17\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ = (\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(17) & (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\)) # 
-- (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(17) & ((\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\) # (GND)))
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ = CARRY((!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\) # (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(17),
	datad => VCC,
	cin => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\,
	combout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\,
	cout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\);

-- Location: FF_X28_Y1_N13
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(17));

-- Location: LCCOMB_X28_Y1_N14
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\ = (\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18) & (\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ $ (GND))) # 
-- (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18) & (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ & VCC))
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\ = CARRY((\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18) & !\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18),
	datad => VCC,
	cin => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\,
	combout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\,
	cout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\);

-- Location: FF_X28_Y1_N15
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18));

-- Location: LCCOMB_X28_Y1_N16
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita19\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita19~combout\ = (\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(19) & (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\)) # 
-- (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(19) & ((\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\) # (GND)))
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\ = CARRY((!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\) # (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(19),
	datad => VCC,
	cin => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\,
	combout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita19~combout\,
	cout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\);

-- Location: FF_X28_Y1_N17
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(19));

-- Location: LCCOMB_X28_Y1_N18
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita20~combout\ = (\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(20) & (\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\ $ (GND))) # 
-- (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(20) & (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\ & VCC))
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\ = CARRY((\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(20) & !\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(20),
	datad => VCC,
	cin => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\,
	combout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita20~combout\,
	cout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\);

-- Location: FF_X28_Y1_N19
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(20));

-- Location: LCCOMB_X28_Y1_N20
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita21\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita21~combout\ = (\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(21) & (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\)) # 
-- (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(21) & ((\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\) # (GND)))
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\ = CARRY((!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\) # (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(21),
	datad => VCC,
	cin => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\,
	combout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita21~combout\,
	cout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\);

-- Location: FF_X28_Y1_N21
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita21~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(21));

-- Location: LCCOMB_X28_Y1_N22
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita22~combout\ = \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(22) $ (!\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(22),
	cin => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\,
	combout => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita22~combout\);

-- Location: FF_X28_Y1_N23
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_comb_bita22~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit\(22));

-- Location: CLKCTRL_G17
\clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\);

-- Location: LCCOMB_X29_Y22_N2
\mips_0|datapath_c|decode_c|registers|memory~71feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~71feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \mips_0|datapath_c|decode_c|registers|memory~71feeder_combout\);

-- Location: IOIBUF_X53_Y14_N1
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: FF_X29_Y22_N3
\mips_0|datapath_c|decode_c|registers|memory~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~71feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~71_q\);

-- Location: FF_X26_Y21_N11
\mips_0|datapath_c|execute_memory_c|AluOut_FF|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_c|MipsAlu|Add0~109_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(20));

-- Location: LCCOMB_X21_Y21_N10
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[20]~feeder_combout\ = \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(20),
	combout => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[20]~feeder_combout\);

-- Location: FF_X21_Y21_N11
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[20]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(20));

-- Location: LCCOMB_X20_Y22_N18
\mips_0|datapath_c|memory_c|mem|ram~39feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|memory_c|mem|ram~39feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \mips_0|datapath_c|memory_c|mem|ram~39feeder_combout\);

-- Location: FF_X20_Y22_N19
\mips_0|datapath_c|memory_c|mem|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|memory_c|mem|ram~39feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|memory_c|mem|ram~39_q\);

-- Location: LCCOMB_X29_Y23_N18
\mips_0|datapath_c|fetch_c|PCAdder|y[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|fetch_c|PCAdder|y[2]~0_combout\ = \mips_0|datapath_c|fetch_c|PCFF|q\(2) $ (VCC)
-- \mips_0|datapath_c|fetch_c|PCAdder|y[2]~1\ = CARRY(\mips_0|datapath_c|fetch_c|PCFF|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_0|datapath_c|fetch_c|PCFF|q\(2),
	datad => VCC,
	combout => \mips_0|datapath_c|fetch_c|PCAdder|y[2]~0_combout\,
	cout => \mips_0|datapath_c|fetch_c|PCAdder|y[2]~1\);

-- Location: LCCOMB_X28_Y23_N16
\mips_0|datapath_c|fetch_c|IMemory|rom~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|fetch_c|IMemory|rom~14_combout\ = (\mips_0|datapath_c|fetch_c|PCFF|q\(6) & (((!\mips_0|datapath_c|fetch_c|PCFF|q\(3)) # (!\mips_0|datapath_c|fetch_c|PCFF|q\(2))) # (!\mips_0|datapath_c|fetch_c|PCFF|q\(4)))) # 
-- (!\mips_0|datapath_c|fetch_c|PCFF|q\(6) & ((\mips_0|datapath_c|fetch_c|PCFF|q\(4)) # ((\mips_0|datapath_c|fetch_c|PCFF|q\(2)) # (\mips_0|datapath_c|fetch_c|PCFF|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|fetch_c|PCFF|q\(6),
	datab => \mips_0|datapath_c|fetch_c|PCFF|q\(4),
	datac => \mips_0|datapath_c|fetch_c|PCFF|q\(2),
	datad => \mips_0|datapath_c|fetch_c|PCFF|q\(3),
	combout => \mips_0|datapath_c|fetch_c|IMemory|rom~14_combout\);

-- Location: LCCOMB_X27_Y23_N28
\mips_0|datapath_c|fetch_c|IMemory|rom~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|fetch_c|IMemory|rom~15_combout\ = (!\mips_0|datapath_c|fetch_c|IMemory|rom~14_combout\ & (!\mips_0|datapath_c|fetch_c|PCFF|q\(7) & !\mips_0|datapath_c|fetch_c|PCFF|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_0|datapath_c|fetch_c|IMemory|rom~14_combout\,
	datac => \mips_0|datapath_c|fetch_c|PCFF|q\(7),
	datad => \mips_0|datapath_c|fetch_c|PCFF|q\(5),
	combout => \mips_0|datapath_c|fetch_c|IMemory|rom~15_combout\);

-- Location: FF_X27_Y23_N29
\mips_0|datapath_c|fetch_decode_c|Instr_FF|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|fetch_c|IMemory|rom~15_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(0));

-- Location: FF_X28_Y22_N11
\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	asdata => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(0),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(0));

-- Location: FF_X29_Y23_N19
\mips_0|datapath_c|fetch_decode_c|PCPlus_FF|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|fetch_c|PCAdder|y[2]~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|fetch_decode_c|PCPlus_FF|q\(2));

-- Location: LCCOMB_X29_Y23_N16
\mips_0|datapath_c|decode_execute_C|PCPlus_FF|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|PCPlus_FF|q[2]~feeder_combout\ = \mips_0|datapath_c|fetch_decode_c|PCPlus_FF|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|fetch_decode_c|PCPlus_FF|q\(2),
	combout => \mips_0|datapath_c|decode_execute_C|PCPlus_FF|q[2]~feeder_combout\);

-- Location: FF_X29_Y23_N17
\mips_0|datapath_c|decode_execute_C|PCPlus_FF|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|PCPlus_FF|q[2]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|PCPlus_FF|q\(2));

-- Location: LCCOMB_X29_Y23_N4
\mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[2]~6_combout\ = (\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(0) & (\mips_0|datapath_c|decode_execute_C|PCPlus_FF|q\(2) $ (VCC))) # (!\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(0) & 
-- (\mips_0|datapath_c|decode_execute_C|PCPlus_FF|q\(2) & VCC))
-- \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[2]~7\ = CARRY((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(0) & \mips_0|datapath_c|decode_execute_C|PCPlus_FF|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(0),
	datab => \mips_0|datapath_c|decode_execute_C|PCPlus_FF|q\(2),
	datad => VCC,
	combout => \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[2]~6_combout\,
	cout => \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[2]~7\);

-- Location: FF_X29_Y23_N5
\mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[2]~6_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q\(2));

-- Location: LCCOMB_X28_Y23_N4
\mips_0|datapath_c|fetch_c|JumpMux|y[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|fetch_c|JumpMux|y[2]~0_combout\ = (\mips_0|datapath_c|execute_memory_c|Branch_FF|q~q\ & ((\mips_0|datapath_c|execute_memory_c|Zero_FF|q~q\ & ((\mips_0|datapath_c|execute_memory_c|PCBranch_FF|q\(2)))) # 
-- (!\mips_0|datapath_c|execute_memory_c|Zero_FF|q~q\ & (\mips_0|datapath_c|fetch_c|PCAdder|y[2]~0_combout\)))) # (!\mips_0|datapath_c|execute_memory_c|Branch_FF|q~q\ & (\mips_0|datapath_c|fetch_c|PCAdder|y[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_memory_c|Branch_FF|q~q\,
	datab => \mips_0|datapath_c|fetch_c|PCAdder|y[2]~0_combout\,
	datac => \mips_0|datapath_c|execute_memory_c|Zero_FF|q~q\,
	datad => \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q\(2),
	combout => \mips_0|datapath_c|fetch_c|JumpMux|y[2]~0_combout\);

-- Location: FF_X28_Y23_N5
\mips_0|datapath_c|fetch_c|PCFF|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|fetch_c|JumpMux|y[2]~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|fetch_c|PCFF|q\(2));

-- Location: LCCOMB_X29_Y23_N20
\mips_0|datapath_c|fetch_c|PCAdder|y[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|fetch_c|PCAdder|y[3]~2_combout\ = (\mips_0|datapath_c|fetch_c|PCFF|q\(3) & (!\mips_0|datapath_c|fetch_c|PCAdder|y[2]~1\)) # (!\mips_0|datapath_c|fetch_c|PCFF|q\(3) & ((\mips_0|datapath_c|fetch_c|PCAdder|y[2]~1\) # (GND)))
-- \mips_0|datapath_c|fetch_c|PCAdder|y[3]~3\ = CARRY((!\mips_0|datapath_c|fetch_c|PCAdder|y[2]~1\) # (!\mips_0|datapath_c|fetch_c|PCFF|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mips_0|datapath_c|fetch_c|PCFF|q\(3),
	datad => VCC,
	cin => \mips_0|datapath_c|fetch_c|PCAdder|y[2]~1\,
	combout => \mips_0|datapath_c|fetch_c|PCAdder|y[3]~2_combout\,
	cout => \mips_0|datapath_c|fetch_c|PCAdder|y[3]~3\);

-- Location: LCCOMB_X29_Y23_N22
\mips_0|datapath_c|fetch_c|PCAdder|y[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|fetch_c|PCAdder|y[4]~4_combout\ = (\mips_0|datapath_c|fetch_c|PCFF|q\(4) & (\mips_0|datapath_c|fetch_c|PCAdder|y[3]~3\ $ (GND))) # (!\mips_0|datapath_c|fetch_c|PCFF|q\(4) & (!\mips_0|datapath_c|fetch_c|PCAdder|y[3]~3\ & VCC))
-- \mips_0|datapath_c|fetch_c|PCAdder|y[4]~5\ = CARRY((\mips_0|datapath_c|fetch_c|PCFF|q\(4) & !\mips_0|datapath_c|fetch_c|PCAdder|y[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|fetch_c|PCFF|q\(4),
	datad => VCC,
	cin => \mips_0|datapath_c|fetch_c|PCAdder|y[3]~3\,
	combout => \mips_0|datapath_c|fetch_c|PCAdder|y[4]~4_combout\,
	cout => \mips_0|datapath_c|fetch_c|PCAdder|y[4]~5\);

-- Location: FF_X29_Y23_N23
\mips_0|datapath_c|fetch_decode_c|PCPlus_FF|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|fetch_c|PCAdder|y[4]~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|fetch_decode_c|PCPlus_FF|q\(4));

-- Location: LCCOMB_X29_Y22_N24
\mips_0|datapath_c|decode_execute_C|PCPlus_FF|q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|PCPlus_FF|q[4]~feeder_combout\ = \mips_0|datapath_c|fetch_decode_c|PCPlus_FF|q\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|fetch_decode_c|PCPlus_FF|q\(4),
	combout => \mips_0|datapath_c|decode_execute_C|PCPlus_FF|q[4]~feeder_combout\);

-- Location: FF_X29_Y22_N25
\mips_0|datapath_c|decode_execute_C|PCPlus_FF|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|PCPlus_FF|q[4]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|PCPlus_FF|q\(4));

-- Location: LCCOMB_X28_Y23_N30
\mips_0|datapath_c|fetch_c|IMemory|rom~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|fetch_c|IMemory|rom~22_combout\ = (\mips_0|datapath_c|fetch_c|PCFF|q\(4) & (!\mips_0|datapath_c|fetch_c|PCFF|q\(5) & ((\mips_0|datapath_c|fetch_c|PCFF|q\(3)) # (!\mips_0|datapath_c|fetch_c|PCFF|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|fetch_c|PCFF|q\(4),
	datab => \mips_0|datapath_c|fetch_c|PCFF|q\(5),
	datac => \mips_0|datapath_c|fetch_c|PCFF|q\(2),
	datad => \mips_0|datapath_c|fetch_c|PCFF|q\(3),
	combout => \mips_0|datapath_c|fetch_c|IMemory|rom~22_combout\);

-- Location: LCCOMB_X29_Y22_N26
\mips_0|datapath_c|fetch_c|IMemory|rom~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|fetch_c|IMemory|rom~23_combout\ = (!\mips_0|datapath_c|fetch_c|PCFF|q\(7) & (\mips_0|datapath_c|fetch_c|PCFF|q\(6) & \mips_0|datapath_c|fetch_c|IMemory|rom~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|fetch_c|PCFF|q\(7),
	datab => \mips_0|datapath_c|fetch_c|PCFF|q\(6),
	datac => \mips_0|datapath_c|fetch_c|IMemory|rom~22_combout\,
	combout => \mips_0|datapath_c|fetch_c|IMemory|rom~23_combout\);

-- Location: FF_X29_Y22_N27
\mips_0|datapath_c|fetch_decode_c|Instr_FF|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|fetch_c|IMemory|rom~23_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(2));

-- Location: FF_X29_Y22_N1
\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	asdata => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(2),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(2));

-- Location: FF_X29_Y23_N21
\mips_0|datapath_c|fetch_decode_c|PCPlus_FF|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|fetch_c|PCAdder|y[3]~2_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|fetch_decode_c|PCPlus_FF|q\(3));

-- Location: LCCOMB_X29_Y23_N30
\mips_0|datapath_c|decode_execute_C|PCPlus_FF|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|PCPlus_FF|q[3]~feeder_combout\ = \mips_0|datapath_c|fetch_decode_c|PCPlus_FF|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|fetch_decode_c|PCPlus_FF|q\(3),
	combout => \mips_0|datapath_c|decode_execute_C|PCPlus_FF|q[3]~feeder_combout\);

-- Location: FF_X29_Y23_N31
\mips_0|datapath_c|decode_execute_C|PCPlus_FF|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|PCPlus_FF|q[3]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|PCPlus_FF|q\(3));

-- Location: LCCOMB_X28_Y23_N28
\mips_0|datapath_c|fetch_c|IMemory|rom~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|fetch_c|IMemory|rom~20_combout\ = (\mips_0|datapath_c|fetch_c|PCFF|q\(6) & (\mips_0|datapath_c|fetch_c|PCFF|q\(3) & (\mips_0|datapath_c|fetch_c|PCFF|q\(4) $ (!\mips_0|datapath_c|fetch_c|PCFF|q\(2))))) # 
-- (!\mips_0|datapath_c|fetch_c|PCFF|q\(6) & (\mips_0|datapath_c|fetch_c|PCFF|q\(4) & (!\mips_0|datapath_c|fetch_c|PCFF|q\(2) & !\mips_0|datapath_c|fetch_c|PCFF|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|fetch_c|PCFF|q\(6),
	datab => \mips_0|datapath_c|fetch_c|PCFF|q\(4),
	datac => \mips_0|datapath_c|fetch_c|PCFF|q\(2),
	datad => \mips_0|datapath_c|fetch_c|PCFF|q\(3),
	combout => \mips_0|datapath_c|fetch_c|IMemory|rom~20_combout\);

-- Location: LCCOMB_X28_Y23_N22
\mips_0|datapath_c|fetch_c|IMemory|rom~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|fetch_c|IMemory|rom~2_combout\ = (!\mips_0|datapath_c|fetch_c|PCFF|q\(6) & (!\mips_0|datapath_c|fetch_c|PCFF|q\(2) & (\mips_0|datapath_c|fetch_c|PCFF|q\(5) & !\mips_0|datapath_c|fetch_c|PCFF|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|fetch_c|PCFF|q\(6),
	datab => \mips_0|datapath_c|fetch_c|PCFF|q\(2),
	datac => \mips_0|datapath_c|fetch_c|PCFF|q\(5),
	datad => \mips_0|datapath_c|fetch_c|PCFF|q\(4),
	combout => \mips_0|datapath_c|fetch_c|IMemory|rom~2_combout\);

-- Location: LCCOMB_X27_Y23_N26
\mips_0|datapath_c|fetch_c|IMemory|rom~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|fetch_c|IMemory|rom~3_combout\ = (\mips_0|datapath_c|fetch_c|IMemory|rom~2_combout\ & !\mips_0|datapath_c|fetch_c|PCFF|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_0|datapath_c|fetch_c|IMemory|rom~2_combout\,
	datac => \mips_0|datapath_c|fetch_c|PCFF|q\(3),
	combout => \mips_0|datapath_c|fetch_c|IMemory|rom~3_combout\);

-- Location: LCCOMB_X27_Y23_N16
\mips_0|datapath_c|fetch_c|IMemory|rom~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|fetch_c|IMemory|rom~21_combout\ = (!\mips_0|datapath_c|fetch_c|PCFF|q\(7) & ((\mips_0|datapath_c|fetch_c|IMemory|rom~3_combout\) # ((\mips_0|datapath_c|fetch_c|IMemory|rom~20_combout\ & !\mips_0|datapath_c|fetch_c|PCFF|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|fetch_c|PCFF|q\(7),
	datab => \mips_0|datapath_c|fetch_c|IMemory|rom~20_combout\,
	datac => \mips_0|datapath_c|fetch_c|IMemory|rom~3_combout\,
	datad => \mips_0|datapath_c|fetch_c|PCFF|q\(5),
	combout => \mips_0|datapath_c|fetch_c|IMemory|rom~21_combout\);

-- Location: FF_X27_Y23_N17
\mips_0|datapath_c|fetch_decode_c|Instr_FF|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|fetch_c|IMemory|rom~21_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(1));

-- Location: FF_X28_Y22_N15
\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	asdata => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(1),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(1));

-- Location: LCCOMB_X29_Y23_N6
\mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[3]~8_combout\ = (\mips_0|datapath_c|decode_execute_C|PCPlus_FF|q\(3) & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(1) & (\mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[2]~7\ & VCC)) # 
-- (!\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(1) & (!\mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[2]~7\)))) # (!\mips_0|datapath_c|decode_execute_C|PCPlus_FF|q\(3) & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(1) & 
-- (!\mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[2]~7\)) # (!\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(1) & ((\mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[2]~7\) # (GND)))))
-- \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[3]~9\ = CARRY((\mips_0|datapath_c|decode_execute_C|PCPlus_FF|q\(3) & (!\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(1) & !\mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[2]~7\)) # 
-- (!\mips_0|datapath_c|decode_execute_C|PCPlus_FF|q\(3) & ((!\mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[2]~7\) # (!\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|PCPlus_FF|q\(3),
	datab => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(1),
	datad => VCC,
	cin => \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[2]~7\,
	combout => \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[3]~8_combout\,
	cout => \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[3]~9\);

-- Location: LCCOMB_X29_Y23_N8
\mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[4]~10_combout\ = ((\mips_0|datapath_c|decode_execute_C|PCPlus_FF|q\(4) $ (\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(2) $ (!\mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[3]~9\)))) # (GND)
-- \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[4]~11\ = CARRY((\mips_0|datapath_c|decode_execute_C|PCPlus_FF|q\(4) & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(2)) # (!\mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[3]~9\))) # 
-- (!\mips_0|datapath_c|decode_execute_C|PCPlus_FF|q\(4) & (\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(2) & !\mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[3]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|PCPlus_FF|q\(4),
	datab => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(2),
	datad => VCC,
	cin => \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[3]~9\,
	combout => \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[4]~10_combout\,
	cout => \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[4]~11\);

-- Location: FF_X29_Y23_N9
\mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[4]~10_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q\(4));

-- Location: LCCOMB_X28_Y23_N8
\mips_0|datapath_c|fetch_c|JumpMux|y[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|fetch_c|JumpMux|y[4]~2_combout\ = (\mips_0|datapath_c|execute_memory_c|Branch_FF|q~q\ & ((\mips_0|datapath_c|execute_memory_c|Zero_FF|q~q\ & (\mips_0|datapath_c|execute_memory_c|PCBranch_FF|q\(4))) # 
-- (!\mips_0|datapath_c|execute_memory_c|Zero_FF|q~q\ & ((\mips_0|datapath_c|fetch_c|PCAdder|y[4]~4_combout\))))) # (!\mips_0|datapath_c|execute_memory_c|Branch_FF|q~q\ & (((\mips_0|datapath_c|fetch_c|PCAdder|y[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_memory_c|Branch_FF|q~q\,
	datab => \mips_0|datapath_c|execute_memory_c|Zero_FF|q~q\,
	datac => \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q\(4),
	datad => \mips_0|datapath_c|fetch_c|PCAdder|y[4]~4_combout\,
	combout => \mips_0|datapath_c|fetch_c|JumpMux|y[4]~2_combout\);

-- Location: FF_X28_Y23_N9
\mips_0|datapath_c|fetch_c|PCFF|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|fetch_c|JumpMux|y[4]~2_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|fetch_c|PCFF|q\(4));

-- Location: LCCOMB_X29_Y23_N24
\mips_0|datapath_c|fetch_c|PCAdder|y[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|fetch_c|PCAdder|y[5]~6_combout\ = (\mips_0|datapath_c|fetch_c|PCFF|q\(5) & (!\mips_0|datapath_c|fetch_c|PCAdder|y[4]~5\)) # (!\mips_0|datapath_c|fetch_c|PCFF|q\(5) & ((\mips_0|datapath_c|fetch_c|PCAdder|y[4]~5\) # (GND)))
-- \mips_0|datapath_c|fetch_c|PCAdder|y[5]~7\ = CARRY((!\mips_0|datapath_c|fetch_c|PCAdder|y[4]~5\) # (!\mips_0|datapath_c|fetch_c|PCFF|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mips_0|datapath_c|fetch_c|PCFF|q\(5),
	datad => VCC,
	cin => \mips_0|datapath_c|fetch_c|PCAdder|y[4]~5\,
	combout => \mips_0|datapath_c|fetch_c|PCAdder|y[5]~6_combout\,
	cout => \mips_0|datapath_c|fetch_c|PCAdder|y[5]~7\);

-- Location: LCCOMB_X28_Y23_N14
\mips_0|datapath_c|fetch_c|IMemory|rom~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|fetch_c|IMemory|rom~12_combout\ = (\mips_0|datapath_c|fetch_c|PCFF|q\(4) & (!\mips_0|datapath_c|fetch_c|PCFF|q\(5) & ((\mips_0|datapath_c|fetch_c|PCFF|q\(2)) # (\mips_0|datapath_c|fetch_c|PCFF|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|fetch_c|PCFF|q\(4),
	datab => \mips_0|datapath_c|fetch_c|PCFF|q\(5),
	datac => \mips_0|datapath_c|fetch_c|PCFF|q\(2),
	datad => \mips_0|datapath_c|fetch_c|PCFF|q\(3),
	combout => \mips_0|datapath_c|fetch_c|IMemory|rom~12_combout\);

-- Location: LCCOMB_X28_Y23_N18
\mips_0|datapath_c|fetch_c|IMemory|rom~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|fetch_c|IMemory|rom~13_combout\ = (\mips_0|datapath_c|fetch_c|PCFF|q\(6) & (\mips_0|datapath_c|fetch_c|IMemory|rom~12_combout\ & !\mips_0|datapath_c|fetch_c|PCFF|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|fetch_c|PCFF|q\(6),
	datab => \mips_0|datapath_c|fetch_c|IMemory|rom~12_combout\,
	datac => \mips_0|datapath_c|fetch_c|PCFF|q\(7),
	combout => \mips_0|datapath_c|fetch_c|IMemory|rom~13_combout\);

-- Location: FF_X28_Y23_N19
\mips_0|datapath_c|fetch_decode_c|Instr_FF|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|fetch_c|IMemory|rom~13_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(3));

-- Location: FF_X28_Y22_N19
\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	asdata => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(3),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(3));

-- Location: FF_X29_Y23_N25
\mips_0|datapath_c|fetch_decode_c|PCPlus_FF|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|fetch_c|PCAdder|y[5]~6_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|fetch_decode_c|PCPlus_FF|q\(5));

-- Location: LCCOMB_X26_Y24_N26
\mips_0|datapath_c|decode_execute_C|PCPlus_FF|q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|PCPlus_FF|q[5]~feeder_combout\ = \mips_0|datapath_c|fetch_decode_c|PCPlus_FF|q\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|fetch_decode_c|PCPlus_FF|q\(5),
	combout => \mips_0|datapath_c|decode_execute_C|PCPlus_FF|q[5]~feeder_combout\);

-- Location: FF_X26_Y24_N27
\mips_0|datapath_c|decode_execute_C|PCPlus_FF|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|PCPlus_FF|q[5]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|PCPlus_FF|q\(5));

-- Location: LCCOMB_X29_Y23_N10
\mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[5]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[5]~12_combout\ = (\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(3) & ((\mips_0|datapath_c|decode_execute_C|PCPlus_FF|q\(5) & (\mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[4]~11\ & VCC)) # 
-- (!\mips_0|datapath_c|decode_execute_C|PCPlus_FF|q\(5) & (!\mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[4]~11\)))) # (!\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(3) & ((\mips_0|datapath_c|decode_execute_C|PCPlus_FF|q\(5) & 
-- (!\mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[4]~11\)) # (!\mips_0|datapath_c|decode_execute_C|PCPlus_FF|q\(5) & ((\mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[4]~11\) # (GND)))))
-- \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[5]~13\ = CARRY((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(3) & (!\mips_0|datapath_c|decode_execute_C|PCPlus_FF|q\(5) & !\mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[4]~11\)) # 
-- (!\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(3) & ((!\mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[4]~11\) # (!\mips_0|datapath_c|decode_execute_C|PCPlus_FF|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(3),
	datab => \mips_0|datapath_c|decode_execute_C|PCPlus_FF|q\(5),
	datad => VCC,
	cin => \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[4]~11\,
	combout => \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[5]~12_combout\,
	cout => \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[5]~13\);

-- Location: FF_X29_Y23_N11
\mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[5]~12_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q\(5));

-- Location: LCCOMB_X29_Y23_N2
\mips_0|datapath_c|fetch_c|JumpMux|y[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|fetch_c|JumpMux|y[5]~5_combout\ = (\mips_0|datapath_c|execute_memory_c|Zero_FF|q~q\ & ((\mips_0|datapath_c|execute_memory_c|Branch_FF|q~q\ & ((\mips_0|datapath_c|execute_memory_c|PCBranch_FF|q\(5)))) # 
-- (!\mips_0|datapath_c|execute_memory_c|Branch_FF|q~q\ & (\mips_0|datapath_c|fetch_c|PCAdder|y[5]~6_combout\)))) # (!\mips_0|datapath_c|execute_memory_c|Zero_FF|q~q\ & (\mips_0|datapath_c|fetch_c|PCAdder|y[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_memory_c|Zero_FF|q~q\,
	datab => \mips_0|datapath_c|fetch_c|PCAdder|y[5]~6_combout\,
	datac => \mips_0|datapath_c|execute_memory_c|Branch_FF|q~q\,
	datad => \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q\(5),
	combout => \mips_0|datapath_c|fetch_c|JumpMux|y[5]~5_combout\);

-- Location: FF_X29_Y23_N3
\mips_0|datapath_c|fetch_c|PCFF|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|fetch_c|JumpMux|y[5]~5_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|fetch_c|PCFF|q\(5));

-- Location: LCCOMB_X29_Y23_N26
\mips_0|datapath_c|fetch_c|PCAdder|y[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|fetch_c|PCAdder|y[6]~8_combout\ = (\mips_0|datapath_c|fetch_c|PCFF|q\(6) & (\mips_0|datapath_c|fetch_c|PCAdder|y[5]~7\ $ (GND))) # (!\mips_0|datapath_c|fetch_c|PCFF|q\(6) & (!\mips_0|datapath_c|fetch_c|PCAdder|y[5]~7\ & VCC))
-- \mips_0|datapath_c|fetch_c|PCAdder|y[6]~9\ = CARRY((\mips_0|datapath_c|fetch_c|PCFF|q\(6) & !\mips_0|datapath_c|fetch_c|PCAdder|y[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|fetch_c|PCFF|q\(6),
	datad => VCC,
	cin => \mips_0|datapath_c|fetch_c|PCAdder|y[5]~7\,
	combout => \mips_0|datapath_c|fetch_c|PCAdder|y[6]~8_combout\,
	cout => \mips_0|datapath_c|fetch_c|PCAdder|y[6]~9\);

-- Location: LCCOMB_X29_Y23_N28
\mips_0|datapath_c|fetch_c|PCAdder|y[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|fetch_c|PCAdder|y[7]~10_combout\ = \mips_0|datapath_c|fetch_c|PCAdder|y[6]~9\ $ (\mips_0|datapath_c|fetch_c|PCFF|q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|fetch_c|PCFF|q\(7),
	cin => \mips_0|datapath_c|fetch_c|PCAdder|y[6]~9\,
	combout => \mips_0|datapath_c|fetch_c|PCAdder|y[7]~10_combout\);

-- Location: FF_X29_Y23_N29
\mips_0|datapath_c|fetch_decode_c|PCPlus_FF|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|fetch_c|PCAdder|y[7]~10_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|fetch_decode_c|PCPlus_FF|q\(7));

-- Location: LCCOMB_X26_Y24_N28
\mips_0|datapath_c|decode_execute_C|PCPlus_FF|q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|PCPlus_FF|q[7]~feeder_combout\ = \mips_0|datapath_c|fetch_decode_c|PCPlus_FF|q\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|fetch_decode_c|PCPlus_FF|q\(7),
	combout => \mips_0|datapath_c|decode_execute_C|PCPlus_FF|q[7]~feeder_combout\);

-- Location: FF_X26_Y24_N29
\mips_0|datapath_c|decode_execute_C|PCPlus_FF|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|PCPlus_FF|q[7]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|PCPlus_FF|q\(7));

-- Location: FF_X29_Y23_N27
\mips_0|datapath_c|fetch_decode_c|PCPlus_FF|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|fetch_c|PCAdder|y[6]~8_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|fetch_decode_c|PCPlus_FF|q\(6));

-- Location: LCCOMB_X26_Y23_N2
\mips_0|datapath_c|decode_execute_C|PCPlus_FF|q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|PCPlus_FF|q[6]~feeder_combout\ = \mips_0|datapath_c|fetch_decode_c|PCPlus_FF|q\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|fetch_decode_c|PCPlus_FF|q\(6),
	combout => \mips_0|datapath_c|decode_execute_C|PCPlus_FF|q[6]~feeder_combout\);

-- Location: FF_X26_Y23_N3
\mips_0|datapath_c|decode_execute_C|PCPlus_FF|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|PCPlus_FF|q[6]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|PCPlus_FF|q\(6));

-- Location: LCCOMB_X29_Y23_N12
\mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[6]~14_combout\ = ((\mips_0|datapath_c|decode_execute_C|PCPlus_FF|q\(6) $ (\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4) $ (!\mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[5]~13\)))) # (GND)
-- \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[6]~15\ = CARRY((\mips_0|datapath_c|decode_execute_C|PCPlus_FF|q\(6) & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)) # (!\mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[5]~13\))) # 
-- (!\mips_0|datapath_c|decode_execute_C|PCPlus_FF|q\(6) & (\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4) & !\mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[5]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|PCPlus_FF|q\(6),
	datab => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	datad => VCC,
	cin => \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[5]~13\,
	combout => \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[6]~14_combout\,
	cout => \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[6]~15\);

-- Location: LCCOMB_X29_Y23_N14
\mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[7]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[7]~16_combout\ = \mips_0|datapath_c|decode_execute_C|PCPlus_FF|q\(7) $ (\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4) $ (\mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[6]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|PCPlus_FF|q\(7),
	datab => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	cin => \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[6]~15\,
	combout => \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[7]~16_combout\);

-- Location: FF_X29_Y23_N15
\mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[7]~16_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q\(7));

-- Location: LCCOMB_X29_Y23_N0
\mips_0|datapath_c|fetch_c|JumpMux|y[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|fetch_c|JumpMux|y[7]~4_combout\ = (\mips_0|datapath_c|execute_memory_c|Zero_FF|q~q\ & ((\mips_0|datapath_c|execute_memory_c|Branch_FF|q~q\ & (\mips_0|datapath_c|execute_memory_c|PCBranch_FF|q\(7))) # 
-- (!\mips_0|datapath_c|execute_memory_c|Branch_FF|q~q\ & ((\mips_0|datapath_c|fetch_c|PCAdder|y[7]~10_combout\))))) # (!\mips_0|datapath_c|execute_memory_c|Zero_FF|q~q\ & (((\mips_0|datapath_c|fetch_c|PCAdder|y[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_memory_c|Zero_FF|q~q\,
	datab => \mips_0|datapath_c|execute_memory_c|Branch_FF|q~q\,
	datac => \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q\(7),
	datad => \mips_0|datapath_c|fetch_c|PCAdder|y[7]~10_combout\,
	combout => \mips_0|datapath_c|fetch_c|JumpMux|y[7]~4_combout\);

-- Location: FF_X29_Y23_N1
\mips_0|datapath_c|fetch_c|PCFF|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|fetch_c|JumpMux|y[7]~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|fetch_c|PCFF|q\(7));

-- Location: LCCOMB_X28_Y23_N2
\mips_0|datapath_c|fetch_c|IMemory|rom~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|fetch_c|IMemory|rom~6_combout\ = (\mips_0|datapath_c|fetch_c|PCFF|q\(6) & ((\mips_0|datapath_c|fetch_c|PCFF|q\(4) & (\mips_0|datapath_c|fetch_c|PCFF|q\(2) & \mips_0|datapath_c|fetch_c|PCFF|q\(3))) # 
-- (!\mips_0|datapath_c|fetch_c|PCFF|q\(4) & ((!\mips_0|datapath_c|fetch_c|PCFF|q\(3)))))) # (!\mips_0|datapath_c|fetch_c|PCFF|q\(6) & (((\mips_0|datapath_c|fetch_c|PCFF|q\(2)) # (\mips_0|datapath_c|fetch_c|PCFF|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|fetch_c|PCFF|q\(6),
	datab => \mips_0|datapath_c|fetch_c|PCFF|q\(4),
	datac => \mips_0|datapath_c|fetch_c|PCFF|q\(2),
	datad => \mips_0|datapath_c|fetch_c|PCFF|q\(3),
	combout => \mips_0|datapath_c|fetch_c|IMemory|rom~6_combout\);

-- Location: LCCOMB_X27_Y23_N14
\mips_0|datapath_c|fetch_c|IMemory|rom~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|fetch_c|IMemory|rom~7_combout\ = (!\mips_0|datapath_c|fetch_c|PCFF|q\(7) & ((\mips_0|datapath_c|fetch_c|IMemory|rom~3_combout\) # ((!\mips_0|datapath_c|fetch_c|IMemory|rom~6_combout\ & !\mips_0|datapath_c|fetch_c|PCFF|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|fetch_c|PCFF|q\(7),
	datab => \mips_0|datapath_c|fetch_c|IMemory|rom~6_combout\,
	datac => \mips_0|datapath_c|fetch_c|IMemory|rom~3_combout\,
	datad => \mips_0|datapath_c|fetch_c|PCFF|q\(5),
	combout => \mips_0|datapath_c|fetch_c|IMemory|rom~7_combout\);

-- Location: FF_X27_Y23_N9
\mips_0|datapath_c|fetch_decode_c|Instr_FF|q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	asdata => \mips_0|datapath_c|fetch_c|IMemory|rom~7_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(29));

-- Location: LCCOMB_X28_Y21_N0
\mips_0|controller_c|maindec_c|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|controller_c|maindec_c|Mux2~1_combout\ = (!\mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(29) & \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(29),
	datad => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(31),
	combout => \mips_0|controller_c|maindec_c|Mux2~1_combout\);

-- Location: FF_X28_Y21_N1
\mips_0|datapath_c|decode_execute_C|MemToReg_FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|controller_c|maindec_c|Mux2~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|MemToReg_FF|q~q\);

-- Location: LCCOMB_X28_Y21_N6
\mips_0|datapath_c|execute_memory_c|MemToReg_FF|q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_memory_c|MemToReg_FF|q~feeder_combout\ = \mips_0|datapath_c|decode_execute_C|MemToReg_FF|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|decode_execute_C|MemToReg_FF|q~q\,
	combout => \mips_0|datapath_c|execute_memory_c|MemToReg_FF|q~feeder_combout\);

-- Location: FF_X28_Y21_N7
\mips_0|datapath_c|execute_memory_c|MemToReg_FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_memory_c|MemToReg_FF|q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|MemToReg_FF|q~q\);

-- Location: LCCOMB_X28_Y21_N10
\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~feeder_combout\ = \mips_0|datapath_c|execute_memory_c|MemToReg_FF|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|execute_memory_c|MemToReg_FF|q~q\,
	combout => \mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~feeder_combout\);

-- Location: FF_X28_Y21_N11
\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\);

-- Location: LCCOMB_X28_Y21_N8
\mips_0|controller_c|maindec_c|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|controller_c|maindec_c|Mux2~0_combout\ = (\mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(29) & \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(29),
	datad => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(31),
	combout => \mips_0|controller_c|maindec_c|Mux2~0_combout\);

-- Location: FF_X28_Y21_N9
\mips_0|datapath_c|decode_execute_C|MemWrite_FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|controller_c|maindec_c|Mux2~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|MemWrite_FF|q~q\);

-- Location: FF_X28_Y21_N27
\mips_0|datapath_c|execute_memory_c|MemWrite_FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	asdata => \mips_0|datapath_c|decode_execute_C|MemWrite_FF|q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|MemWrite_FF|q~q\);

-- Location: LCCOMB_X20_Y22_N30
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[2]~feeder_combout\ = \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(2),
	combout => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[2]~feeder_combout\);

-- Location: FF_X20_Y22_N31
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[2]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(2));

-- Location: LCCOMB_X28_Y22_N8
\mips_0|controller_c|aludec_c|alucontrol[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|controller_c|aludec_c|alucontrol[2]~1_combout\ = (\mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(28)) # ((!\mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(29) & (!\mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(31) & 
-- \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(29),
	datab => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(31),
	datac => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(1),
	datad => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(28),
	combout => \mips_0|controller_c|aludec_c|alucontrol[2]~1_combout\);

-- Location: FF_X28_Y22_N9
\mips_0|datapath_c|decode_execute_C|AluControl_FF|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|controller_c|aludec_c|alucontrol[2]~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2));

-- Location: LCCOMB_X28_Y22_N2
\mips_0|controller_c|maindec_c|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|controller_c|maindec_c|Mux6~0_combout\ = (!\mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(31) & (!\mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(29) & !\mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(31),
	datac => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(29),
	datad => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(28),
	combout => \mips_0|controller_c|maindec_c|Mux6~0_combout\);

-- Location: LCCOMB_X28_Y22_N20
\mips_0|controller_c|aludec_c|alucontrol[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|controller_c|aludec_c|alucontrol[0]~0_combout\ = (\mips_0|controller_c|maindec_c|Mux6~0_combout\ & ((\mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(3)) # (\mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(3),
	datac => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(0),
	datad => \mips_0|controller_c|maindec_c|Mux6~0_combout\,
	combout => \mips_0|controller_c|aludec_c|alucontrol[0]~0_combout\);

-- Location: FF_X28_Y22_N21
\mips_0|datapath_c|decode_execute_C|AluControl_FF|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|controller_c|aludec_c|alucontrol[0]~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0));

-- Location: LCCOMB_X23_Y22_N14
\mips_0|datapath_c|decode_c|registers|memory~38feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~38feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \mips_0|datapath_c|decode_c|registers|memory~38feeder_combout\);

-- Location: FF_X23_Y22_N15
\mips_0|datapath_c|decode_c|registers|memory~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~38feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~38_q\);

-- Location: LCCOMB_X28_Y22_N28
\mips_0|controller_c|maindec_c|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|controller_c|maindec_c|Mux0~0_combout\ = (!\mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(28) & ((!\mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(29)) # (!\mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(31),
	datac => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(29),
	datad => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(28),
	combout => \mips_0|controller_c|maindec_c|Mux0~0_combout\);

-- Location: FF_X28_Y22_N29
\mips_0|datapath_c|decode_execute_C|RegWrite_FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|controller_c|maindec_c|Mux0~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RegWrite_FF|q~q\);

-- Location: LCCOMB_X26_Y24_N8
\mips_0|datapath_c|execute_memory_c|RegWrite_FF|q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_memory_c|RegWrite_FF|q~feeder_combout\ = \mips_0|datapath_c|decode_execute_C|RegWrite_FF|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|decode_execute_C|RegWrite_FF|q~q\,
	combout => \mips_0|datapath_c|execute_memory_c|RegWrite_FF|q~feeder_combout\);

-- Location: FF_X26_Y24_N9
\mips_0|datapath_c|execute_memory_c|RegWrite_FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_memory_c|RegWrite_FF|q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|RegWrite_FF|q~q\);

-- Location: FF_X26_Y24_N13
\mips_0|datapath_c|memory_writeback_c|RegWrite_FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	asdata => \mips_0|datapath_c|execute_memory_c|RegWrite_FF|q~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|memory_writeback_c|RegWrite_FF|q~q\);

-- Location: LCCOMB_X28_Y23_N12
\mips_0|datapath_c|fetch_c|IMemory|rom~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|fetch_c|IMemory|rom~0_combout\ = (!\mips_0|datapath_c|fetch_c|PCFF|q\(2) & ((\mips_0|datapath_c|fetch_c|PCFF|q\(3) & (\mips_0|datapath_c|fetch_c|PCFF|q\(6))) # (!\mips_0|datapath_c|fetch_c|PCFF|q\(3) & 
-- ((\mips_0|datapath_c|fetch_c|PCFF|q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|fetch_c|PCFF|q\(6),
	datab => \mips_0|datapath_c|fetch_c|PCFF|q\(4),
	datac => \mips_0|datapath_c|fetch_c|PCFF|q\(2),
	datad => \mips_0|datapath_c|fetch_c|PCFF|q\(3),
	combout => \mips_0|datapath_c|fetch_c|IMemory|rom~0_combout\);

-- Location: LCCOMB_X27_Y23_N24
\mips_0|datapath_c|fetch_c|IMemory|rom~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|fetch_c|IMemory|rom~1_combout\ = (!\mips_0|datapath_c|fetch_c|PCFF|q\(7) & (\mips_0|datapath_c|fetch_c|IMemory|rom~0_combout\ & !\mips_0|datapath_c|fetch_c|PCFF|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|fetch_c|PCFF|q\(7),
	datac => \mips_0|datapath_c|fetch_c|IMemory|rom~0_combout\,
	datad => \mips_0|datapath_c|fetch_c|PCFF|q\(5),
	combout => \mips_0|datapath_c|fetch_c|IMemory|rom~1_combout\);

-- Location: FF_X26_Y23_N27
\mips_0|datapath_c|fetch_decode_c|Instr_FF|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	asdata => \mips_0|datapath_c|fetch_c|IMemory|rom~1_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(16));

-- Location: FF_X26_Y23_N25
\mips_0|datapath_c|decode_execute_C|Rt_FF|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	asdata => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(16),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|Rt_FF|q\(0));

-- Location: FF_X28_Y22_N3
\mips_0|datapath_c|decode_execute_C|RegDst_FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|controller_c|maindec_c|Mux6~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RegDst_FF|q~q\);

-- Location: LCCOMB_X26_Y23_N8
\mips_0|datapath_c|execute_c|RegMux|y[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|RegMux|y[0]~3_combout\ = (\mips_0|datapath_c|decode_execute_C|RegDst_FF|q~q\ & (\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4))) # (!\mips_0|datapath_c|decode_execute_C|RegDst_FF|q~q\ & 
-- ((\mips_0|datapath_c|decode_execute_C|Rt_FF|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	datab => \mips_0|datapath_c|decode_execute_C|Rt_FF|q\(0),
	datad => \mips_0|datapath_c|decode_execute_C|RegDst_FF|q~q\,
	combout => \mips_0|datapath_c|execute_c|RegMux|y[0]~3_combout\);

-- Location: FF_X26_Y23_N9
\mips_0|datapath_c|execute_memory_c|WriteReg_FF|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_c|RegMux|y[0]~3_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|WriteReg_FF|q\(0));

-- Location: FF_X26_Y24_N31
\mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	asdata => \mips_0|datapath_c|execute_memory_c|WriteReg_FF|q\(0),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q\(0));

-- Location: LCCOMB_X28_Y23_N24
\mips_0|datapath_c|fetch_c|IMemory|rom~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|fetch_c|IMemory|rom~4_combout\ = (!\mips_0|datapath_c|fetch_c|PCFF|q\(5) & ((\mips_0|datapath_c|fetch_c|PCFF|q\(2) & (\mips_0|datapath_c|fetch_c|PCFF|q\(4) & !\mips_0|datapath_c|fetch_c|PCFF|q\(3))) # 
-- (!\mips_0|datapath_c|fetch_c|PCFF|q\(2) & ((\mips_0|datapath_c|fetch_c|PCFF|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|fetch_c|PCFF|q\(4),
	datab => \mips_0|datapath_c|fetch_c|PCFF|q\(5),
	datac => \mips_0|datapath_c|fetch_c|PCFF|q\(2),
	datad => \mips_0|datapath_c|fetch_c|PCFF|q\(3),
	combout => \mips_0|datapath_c|fetch_c|IMemory|rom~4_combout\);

-- Location: LCCOMB_X27_Y23_N6
\mips_0|datapath_c|fetch_c|IMemory|rom~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|fetch_c|IMemory|rom~5_combout\ = (!\mips_0|datapath_c|fetch_c|PCFF|q\(7) & ((\mips_0|datapath_c|fetch_c|IMemory|rom~3_combout\) # ((\mips_0|datapath_c|fetch_c|IMemory|rom~4_combout\ & \mips_0|datapath_c|fetch_c|PCFF|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|fetch_c|IMemory|rom~3_combout\,
	datab => \mips_0|datapath_c|fetch_c|IMemory|rom~4_combout\,
	datac => \mips_0|datapath_c|fetch_c|PCFF|q\(7),
	datad => \mips_0|datapath_c|fetch_c|PCFF|q\(6),
	combout => \mips_0|datapath_c|fetch_c|IMemory|rom~5_combout\);

-- Location: LCCOMB_X26_Y23_N0
\mips_0|datapath_c|fetch_decode_c|Instr_FF|q[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|fetch_decode_c|Instr_FF|q[17]~feeder_combout\ = \mips_0|datapath_c|fetch_c|IMemory|rom~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|fetch_c|IMemory|rom~5_combout\,
	combout => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q[17]~feeder_combout\);

-- Location: FF_X26_Y23_N1
\mips_0|datapath_c|fetch_decode_c|Instr_FF|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q[17]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(17));

-- Location: LCCOMB_X26_Y23_N22
\mips_0|datapath_c|decode_execute_C|Rt_FF|q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|Rt_FF|q[1]~feeder_combout\ = \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(17),
	combout => \mips_0|datapath_c|decode_execute_C|Rt_FF|q[1]~feeder_combout\);

-- Location: FF_X26_Y23_N23
\mips_0|datapath_c|decode_execute_C|Rt_FF|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|Rt_FF|q[1]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|Rt_FF|q\(1));

-- Location: LCCOMB_X26_Y23_N6
\mips_0|datapath_c|execute_c|RegMux|y[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|RegMux|y[1]~2_combout\ = (\mips_0|datapath_c|decode_execute_C|RegDst_FF|q~q\ & (\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4))) # (!\mips_0|datapath_c|decode_execute_C|RegDst_FF|q~q\ & 
-- ((\mips_0|datapath_c|decode_execute_C|Rt_FF|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	datac => \mips_0|datapath_c|decode_execute_C|Rt_FF|q\(1),
	datad => \mips_0|datapath_c|decode_execute_C|RegDst_FF|q~q\,
	combout => \mips_0|datapath_c|execute_c|RegMux|y[1]~2_combout\);

-- Location: FF_X26_Y23_N7
\mips_0|datapath_c|execute_memory_c|WriteReg_FF|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_c|RegMux|y[1]~2_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|WriteReg_FF|q\(1));

-- Location: LCCOMB_X26_Y23_N16
\mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q[1]~feeder_combout\ = \mips_0|datapath_c|execute_memory_c|WriteReg_FF|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|execute_memory_c|WriteReg_FF|q\(1),
	combout => \mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q[1]~feeder_combout\);

-- Location: FF_X26_Y23_N17
\mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q[1]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q\(1));

-- Location: LCCOMB_X26_Y23_N20
\mips_0|datapath_c|execute_c|RegMux|y[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|RegMux|y[2]~1_combout\ = (\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4) & \mips_0|datapath_c|decode_execute_C|RegDst_FF|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	datad => \mips_0|datapath_c|decode_execute_C|RegDst_FF|q~q\,
	combout => \mips_0|datapath_c|execute_c|RegMux|y[2]~1_combout\);

-- Location: FF_X26_Y23_N21
\mips_0|datapath_c|execute_memory_c|WriteReg_FF|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_c|RegMux|y[2]~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|WriteReg_FF|q\(2));

-- Location: LCCOMB_X26_Y23_N30
\mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q[2]~feeder_combout\ = \mips_0|datapath_c|execute_memory_c|WriteReg_FF|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|execute_memory_c|WriteReg_FF|q\(2),
	combout => \mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q[2]~feeder_combout\);

-- Location: FF_X26_Y23_N31
\mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q[2]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q\(2));

-- Location: FF_X26_Y23_N13
\mips_0|datapath_c|decode_execute_C|Rt_FF|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	asdata => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(29),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|Rt_FF|q\(3));

-- Location: LCCOMB_X26_Y23_N18
\mips_0|datapath_c|execute_c|RegMux|y[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|RegMux|y[3]~0_combout\ = (\mips_0|datapath_c|decode_execute_C|RegDst_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # (!\mips_0|datapath_c|decode_execute_C|RegDst_FF|q~q\ & 
-- (\mips_0|datapath_c|decode_execute_C|Rt_FF|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|Rt_FF|q\(3),
	datab => \mips_0|datapath_c|decode_execute_C|RegDst_FF|q~q\,
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|RegMux|y[3]~0_combout\);

-- Location: FF_X26_Y23_N19
\mips_0|datapath_c|execute_memory_c|WriteReg_FF|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_c|RegMux|y[3]~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|WriteReg_FF|q\(3));

-- Location: LCCOMB_X26_Y23_N28
\mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q[3]~feeder_combout\ = \mips_0|datapath_c|execute_memory_c|WriteReg_FF|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|execute_memory_c|WriteReg_FF|q\(3),
	combout => \mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q[3]~feeder_combout\);

-- Location: FF_X26_Y23_N29
\mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q[3]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q\(3));

-- Location: LCCOMB_X27_Y23_N22
\mips_0|datapath_c|fetch_c|IMemory|rom~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|fetch_c|IMemory|rom~16_combout\ = (!\mips_0|datapath_c|fetch_c|PCFF|q\(7) & (\mips_0|datapath_c|fetch_c|IMemory|rom~2_combout\ & !\mips_0|datapath_c|fetch_c|PCFF|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|fetch_c|PCFF|q\(7),
	datab => \mips_0|datapath_c|fetch_c|IMemory|rom~2_combout\,
	datac => \mips_0|datapath_c|fetch_c|PCFF|q\(3),
	combout => \mips_0|datapath_c|fetch_c|IMemory|rom~16_combout\);

-- Location: LCCOMB_X29_Y22_N14
\mips_0|datapath_c|fetch_c|IMemory|rom~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|fetch_c|IMemory|rom~17_combout\ = (\mips_0|datapath_c|fetch_c|IMemory|rom~8_combout\ & (!\mips_0|datapath_c|fetch_c|PCFF|q\(4) & !\mips_0|datapath_c|fetch_c|PCFF|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|fetch_c|IMemory|rom~8_combout\,
	datab => \mips_0|datapath_c|fetch_c|PCFF|q\(4),
	datad => \mips_0|datapath_c|fetch_c|PCFF|q\(2),
	combout => \mips_0|datapath_c|fetch_c|IMemory|rom~17_combout\);

-- Location: LCCOMB_X19_Y22_N24
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X28_Y23_N26
\mips_0|datapath_c|fetch_c|IMemory|rom~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|fetch_c|IMemory|rom~18_combout\ = (\mips_0|datapath_c|fetch_c|PCFF|q\(6) & (!\mips_0|datapath_c|fetch_c|PCFF|q\(4) & (!\mips_0|datapath_c|fetch_c|PCFF|q\(5) & \mips_0|datapath_c|fetch_c|PCFF|q\(3)))) # 
-- (!\mips_0|datapath_c|fetch_c|PCFF|q\(6) & (!\mips_0|datapath_c|fetch_c|PCFF|q\(3) & (\mips_0|datapath_c|fetch_c|PCFF|q\(4) $ (\mips_0|datapath_c|fetch_c|PCFF|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|fetch_c|PCFF|q\(6),
	datab => \mips_0|datapath_c|fetch_c|PCFF|q\(4),
	datac => \mips_0|datapath_c|fetch_c|PCFF|q\(5),
	datad => \mips_0|datapath_c|fetch_c|PCFF|q\(3),
	combout => \mips_0|datapath_c|fetch_c|IMemory|rom~18_combout\);

-- Location: LCCOMB_X29_Y22_N30
\mips_0|datapath_c|fetch_c|IMemory|rom~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|fetch_c|IMemory|rom~19_combout\ = (!\mips_0|datapath_c|fetch_c|PCFF|q\(7) & (!\mips_0|datapath_c|fetch_c|PCFF|q\(2) & \mips_0|datapath_c|fetch_c|IMemory|rom~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|fetch_c|PCFF|q\(7),
	datab => \mips_0|datapath_c|fetch_c|PCFF|q\(2),
	datac => \mips_0|datapath_c|fetch_c|IMemory|rom~18_combout\,
	combout => \mips_0|datapath_c|fetch_c|IMemory|rom~19_combout\);

-- Location: LCCOMB_X23_Y22_N8
\mips_0|datapath_c|decode_c|registers|memory~44feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~44feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[5]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[5]~27_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~44feeder_combout\);

-- Location: LCCOMB_X26_Y24_N30
\mips_0|datapath_c|decode_c|registers|memory~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~110_combout\ = (!\mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q\(2) & (!\mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q\(1) & (!\mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q\(0) & 
-- !\mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q\(2),
	datab => \mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q\(1),
	datac => \mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q\(0),
	datad => \mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q\(3),
	combout => \mips_0|datapath_c|decode_c|registers|memory~110_combout\);

-- Location: LCCOMB_X26_Y24_N12
\mips_0|datapath_c|decode_c|registers|memory~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~111_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~110_combout\ & \mips_0|datapath_c|memory_writeback_c|RegWrite_FF|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory~110_combout\,
	datac => \mips_0|datapath_c|memory_writeback_c|RegWrite_FF|q~q\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~111_combout\);

-- Location: FF_X23_Y22_N9
\mips_0|datapath_c|decode_c|registers|memory~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~44feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~44_q\);

-- Location: FF_X20_Y21_N25
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	asdata => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(2),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(2));

-- Location: LCCOMB_X20_Y21_N10
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[4]~feeder_combout\ = \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(4),
	combout => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[4]~feeder_combout\);

-- Location: FF_X20_Y21_N11
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[4]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(4));

-- Location: LCCOMB_X20_Y23_N24
\mips_0|datapath_c|decode_c|registers|memory~77feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~77feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[5]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[5]~27_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~77feeder_combout\);

-- Location: FF_X20_Y23_N25
\mips_0|datapath_c|decode_c|registers|memory~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~77feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~77_q\);

-- Location: FF_X20_Y21_N7
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	asdata => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(6),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(6));

-- Location: FF_X28_Y21_N29
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	asdata => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(7),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(7));

-- Location: LCCOMB_X25_Y23_N12
\mips_0|datapath_c|decode_c|registers|memory~80feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~80feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[8]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[8]~24_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~80feeder_combout\);

-- Location: FF_X25_Y23_N13
\mips_0|datapath_c|decode_c|registers|memory~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~80feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~80_q\);

-- Location: LCCOMB_X20_Y22_N2
\mips_0|datapath_c|decode_c|registers|memory~50feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~50feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[11]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|writeback_c|mux|y[11]~21_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~50feeder_combout\);

-- Location: FF_X20_Y22_N3
\mips_0|datapath_c|decode_c|registers|memory~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~50feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~50_q\);

-- Location: LCCOMB_X24_Y23_N2
\mips_0|datapath_c|decode_c|registers|memory~81feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~81feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[9]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|writeback_c|mux|y[9]~23_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~81feeder_combout\);

-- Location: FF_X24_Y23_N3
\mips_0|datapath_c|decode_c|registers|memory~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~81feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~81_q\);

-- Location: LCCOMB_X21_Y21_N24
\mips_0|datapath_c|decode_c|registers|memory~52feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~52feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[13]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[13]~19_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~52feeder_combout\);

-- Location: FF_X21_Y21_N25
\mips_0|datapath_c|decode_c|registers|memory~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~52feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~52_q\);

-- Location: LCCOMB_X24_Y23_N6
\mips_0|datapath_c|decode_c|registers|memory~86feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~86feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[14]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[14]~18_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~86feeder_combout\);

-- Location: FF_X24_Y23_N7
\mips_0|datapath_c|decode_c|registers|memory~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~86feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~86_q\);

-- Location: LCCOMB_X23_Y23_N28
\mips_0|datapath_c|decode_c|registers|memory~83feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~83feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[11]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|writeback_c|mux|y[11]~21_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~83feeder_combout\);

-- Location: FF_X23_Y23_N29
\mips_0|datapath_c|decode_c|registers|memory~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~83feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~83_q\);

-- Location: LCCOMB_X23_Y19_N26
\mips_0|datapath_c|decode_c|registers|memory~56feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~56feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[17]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|writeback_c|mux|y[17]~15_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~56feeder_combout\);

-- Location: FF_X23_Y19_N27
\mips_0|datapath_c|decode_c|registers|memory~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~56feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~56_q\);

-- Location: LCCOMB_X23_Y21_N10
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[20]~feeder_combout\ = \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(20),
	combout => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[20]~feeder_combout\);

-- Location: FF_X23_Y21_N11
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[20]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(20));

-- Location: LCCOMB_X28_Y21_N22
\mips_0|controller_c|maindec_c|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|controller_c|maindec_c|Mux6~1_combout\ = (\mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(29)) # (\mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(29),
	datad => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(31),
	combout => \mips_0|controller_c|maindec_c|Mux6~1_combout\);

-- Location: FF_X28_Y21_N23
\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|controller_c|maindec_c|Mux6~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\);

-- Location: LCCOMB_X21_Y23_N6
\mips_0|datapath_c|decode_c|registers|memory~94feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~94feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[22]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|writeback_c|mux|y[22]~10_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~94feeder_combout\);

-- Location: FF_X21_Y23_N7
\mips_0|datapath_c|decode_c|registers|memory~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~94feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~94_q\);

-- Location: LCCOMB_X29_Y21_N8
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[22]~feeder_combout\ = \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(22),
	combout => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[22]~feeder_combout\);

-- Location: FF_X29_Y21_N9
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[22]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(22));

-- Location: LCCOMB_X21_Y23_N12
\mips_0|datapath_c|decode_c|registers|memory~95feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~95feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[23]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[23]~9_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~95feeder_combout\);

-- Location: FF_X21_Y23_N13
\mips_0|datapath_c|decode_c|registers|memory~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~95feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~95_q\);

-- Location: LCCOMB_X21_Y23_N10
\mips_0|datapath_c|decode_c|registers|memory~96feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~96feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[24]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[24]~8_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~96feeder_combout\);

-- Location: FF_X21_Y23_N11
\mips_0|datapath_c|decode_c|registers|memory~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~96feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~96_q\);

-- Location: FF_X24_Y20_N29
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	asdata => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(24),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(24));

-- Location: LCCOMB_X24_Y20_N26
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[25]~feeder_combout\ = \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(25),
	combout => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[25]~feeder_combout\);

-- Location: FF_X24_Y20_N27
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[25]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(25));

-- Location: LCCOMB_X21_Y24_N30
\mips_0|datapath_c|decode_c|registers|memory~99feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~99feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[27]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[27]~5_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~99feeder_combout\);

-- Location: FF_X21_Y24_N31
\mips_0|datapath_c|decode_c|registers|memory~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~99feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~99_q\);

-- Location: LCCOMB_X23_Y24_N12
\mips_0|datapath_c|decode_c|registers|memory~102feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~102feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[30]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|writeback_c|mux|y[30]~2_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~102feeder_combout\);

-- Location: FF_X23_Y24_N13
\mips_0|datapath_c|decode_c|registers|memory~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~102feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~102_q\);

-- Location: LCCOMB_X21_Y24_N18
\mips_0|datapath_c|decode_c|registers|memory~70feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~70feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[31]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[31]~1_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~70feeder_combout\);

-- Location: FF_X21_Y24_N19
\mips_0|datapath_c|decode_c|registers|memory~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~70feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~70_q\);

-- Location: M9K_X22_Y22_N0
\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "mips:mips_0|datapath:datapath_c|decode:decode_c|regfile:registers|altsyncram:memory_rtl_0|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mips_0|datapath_c|memory_writeback_c|RegWrite_FF|q~q\,
	portbre => VCC,
	clk0 => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	portadatain => \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X21_Y24_N24
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[31]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD1_FF|q[31]~6_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~38_q\ & ((\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a31\))) # 
-- (!\mips_0|datapath_c|decode_c|registers|memory~38_q\ & (\mips_0|datapath_c|decode_c|registers|memory~70_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory~38_q\,
	datab => \mips_0|datapath_c|decode_c|registers|memory~70_q\,
	datad => \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a31\,
	combout => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[31]~6_combout\);

-- Location: LCCOMB_X21_Y24_N22
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[42]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[42]~feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[31]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[31]~1_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[42]~feeder_combout\);

-- Location: FF_X21_Y24_N23
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[42]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(42));

-- Location: FF_X29_Y22_N11
\mips_0|datapath_c|fetch_decode_c|Instr_FF|q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	asdata => \mips_0|datapath_c|fetch_c|IMemory|rom~19_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(24));

-- Location: FF_X29_Y22_N5
\mips_0|datapath_c|fetch_decode_c|Instr_FF|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	asdata => \mips_0|datapath_c|fetch_c|IMemory|rom~17_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(22));

-- Location: FF_X29_Y22_N21
\mips_0|datapath_c|fetch_decode_c|Instr_FF|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	asdata => \mips_0|datapath_c|fetch_c|IMemory|rom~16_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(21));

-- Location: LCCOMB_X29_Y22_N20
\mips_0|datapath_c|decode_c|registers|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|Equal0~0_combout\ = (!\mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(24) & (!\mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(22) & !\mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(24),
	datab => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(22),
	datac => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(21),
	combout => \mips_0|datapath_c|decode_c|registers|Equal0~0_combout\);

-- Location: FF_X29_Y22_N31
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|fetch_c|IMemory|rom~19_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(8));

-- Location: LCCOMB_X26_Y24_N14
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[7]~feeder_combout\ = \mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q\(3),
	combout => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[7]~feeder_combout\);

-- Location: FF_X26_Y24_N15
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(7));

-- Location: FF_X26_Y24_N17
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	asdata => \mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(5));

-- Location: LCCOMB_X26_Y24_N20
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[0]~feeder_combout\ = \mips_0|datapath_c|memory_writeback_c|RegWrite_FF|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|memory_writeback_c|RegWrite_FF|q~q\,
	combout => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[0]~feeder_combout\);

-- Location: FF_X26_Y24_N21
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(0));

-- Location: LCCOMB_X26_Y24_N16
\mips_0|datapath_c|decode_c|registers|memory~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~108_combout\ = (!\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(5) & (\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(0) & (\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(8) $ 
-- (!\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(8),
	datab => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(7),
	datac => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(5),
	datad => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(0),
	combout => \mips_0|datapath_c|decode_c|registers|memory~108_combout\);

-- Location: FF_X26_Y24_N19
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	asdata => \mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(9));

-- Location: LCCOMB_X26_Y24_N24
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[1]~feeder_combout\ = \mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q\(0),
	combout => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[1]~feeder_combout\);

-- Location: FF_X26_Y24_N25
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(1));

-- Location: FF_X27_Y23_N23
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|fetch_c|IMemory|rom~16_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(2));

-- Location: FF_X26_Y24_N11
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	asdata => \mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(3));

-- Location: FF_X29_Y22_N15
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|fetch_c|IMemory|rom~17_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(4));

-- Location: LCCOMB_X26_Y24_N10
\mips_0|datapath_c|decode_c|registers|memory~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~107_combout\ = (\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(1) & (\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(2) & (\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(3) $ 
-- (!\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(4))))) # (!\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(1) & (!\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(2) & 
-- (\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(3) $ (!\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(1),
	datab => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(2),
	datac => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(3),
	datad => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(4),
	combout => \mips_0|datapath_c|decode_c|registers|memory~107_combout\);

-- Location: LCCOMB_X26_Y24_N18
\mips_0|datapath_c|decode_c|registers|memory~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~109_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~108_combout\ & (!\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(9) & \mips_0|datapath_c|decode_c|registers|memory~107_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_0|datapath_c|decode_c|registers|memory~108_combout\,
	datac => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(9),
	datad => \mips_0|datapath_c|decode_c|registers|memory~107_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~109_combout\);

-- Location: FF_X21_Y24_N25
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[31]~6_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(42),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal0~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(31));

-- Location: M9K_X22_Y23_N0
\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "mips:mips_0|datapath:datapath_c|decode:decode_c|regfile:registers|altsyncram:memory_rtl_1|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mips_0|datapath_c|memory_writeback_c|RegWrite_FF|q~q\,
	portbre => VCC,
	clk0 => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	portadatain => \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X23_Y24_N0
\mips_0|datapath_c|decode_c|registers|memory~103feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~103feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[31]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|writeback_c|mux|y[31]~1_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~103feeder_combout\);

-- Location: FF_X23_Y24_N1
\mips_0|datapath_c|decode_c|registers|memory~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~103feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~103_q\);

-- Location: LCCOMB_X23_Y24_N6
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[31]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD2_FF|q[31]~31_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~71_q\ & (\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a31\)) # (!\mips_0|datapath_c|decode_c|registers|memory~71_q\ 
-- & ((\mips_0|datapath_c|decode_c|registers|memory~103_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a31\,
	datab => \mips_0|datapath_c|decode_c|registers|memory~103_q\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~71_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[31]~31_combout\);

-- Location: FF_X23_Y24_N31
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|writeback_c|mux|y[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(42));

-- Location: LCCOMB_X26_Y23_N26
\mips_0|datapath_c|decode_c|registers|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|Equal1~0_combout\ = (!\mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(29) & (!\mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(16) & !\mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(29),
	datac => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(16),
	datad => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(17),
	combout => \mips_0|datapath_c|decode_c|registers|Equal1~0_combout\);

-- Location: FF_X27_Y23_N15
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|fetch_c|IMemory|rom~7_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(8));

-- Location: LCCOMB_X27_Y23_N4
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[7]~feeder_combout\ = \mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q\(3),
	combout => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[7]~feeder_combout\);

-- Location: FF_X27_Y23_N5
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(7));

-- Location: FF_X27_Y23_N1
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	asdata => \mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(5));

-- Location: LCCOMB_X27_Y23_N18
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[0]~feeder_combout\ = \mips_0|datapath_c|memory_writeback_c|RegWrite_FF|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|memory_writeback_c|RegWrite_FF|q~q\,
	combout => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[0]~feeder_combout\);

-- Location: FF_X27_Y23_N19
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(0));

-- Location: LCCOMB_X27_Y23_N0
\mips_0|datapath_c|decode_c|registers|memory~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~105_combout\ = (!\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(5) & (\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(0) & (\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(8) $ 
-- (!\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(8),
	datab => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(7),
	datac => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(5),
	datad => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(0),
	combout => \mips_0|datapath_c|decode_c|registers|memory~105_combout\);

-- Location: FF_X27_Y23_N11
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	asdata => \mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(9));

-- Location: FF_X27_Y23_N7
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|fetch_c|IMemory|rom~5_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(4));

-- Location: FF_X27_Y23_N3
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	asdata => \mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(1));

-- Location: FF_X27_Y23_N13
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	asdata => \mips_0|datapath_c|memory_writeback_c|WriteReg_FF|q\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(3));

-- Location: FF_X27_Y23_N25
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|fetch_c|IMemory|rom~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(2));

-- Location: LCCOMB_X27_Y23_N12
\mips_0|datapath_c|decode_c|registers|memory~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~104_combout\ = (\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(4) & (\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(3) & (\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(1) $ 
-- (!\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(2))))) # (!\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(4) & (!\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(3) & 
-- (\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(1) $ (!\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(4),
	datab => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(1),
	datac => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(3),
	datad => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(2),
	combout => \mips_0|datapath_c|decode_c|registers|memory~104_combout\);

-- Location: LCCOMB_X27_Y23_N10
\mips_0|datapath_c|decode_c|registers|memory~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~106_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~105_combout\ & (!\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(9) & \mips_0|datapath_c|decode_c|registers|memory~104_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_0|datapath_c|decode_c|registers|memory~105_combout\,
	datac => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(9),
	datad => \mips_0|datapath_c|decode_c|registers|memory~104_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~106_combout\);

-- Location: FF_X23_Y24_N7
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[31]~31_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(42),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal1~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(31));

-- Location: LCCOMB_X26_Y20_N24
\mips_0|datapath_c|execute_c|AluMux|y[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|AluMux|y[31]~0_combout\ = (\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & 
-- (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(31),
	datac => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|AluMux|y[31]~0_combout\);

-- Location: LCCOMB_X27_Y20_N20
\mips_0|datapath_c|execute_c|MipsAlu|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Mux0~0_combout\ = (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(31) & ((\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0)) # (\mips_0|datapath_c|execute_c|AluMux|y[31]~0_combout\ $ 
-- (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2))))) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(31) & (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & (\mips_0|datapath_c|execute_c|AluMux|y[31]~0_combout\ $ 
-- (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(31),
	datab => \mips_0|datapath_c|execute_c|AluMux|y[31]~0_combout\,
	datac => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Mux0~0_combout\);

-- Location: LCCOMB_X26_Y20_N2
\mips_0|datapath_c|execute_c|MipsAlu|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~0_combout\ = \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ (((\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datab => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(31),
	datac => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~0_combout\);

-- Location: LCCOMB_X26_Y20_N20
\mips_0|datapath_c|execute_c|MipsAlu|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~1_combout\ = \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ (((\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(30),
	datab => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	datac => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~1_combout\);

-- Location: LCCOMB_X23_Y19_N24
\mips_0|datapath_c|decode_c|registers|memory~69feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~69feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[30]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[30]~2_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~69feeder_combout\);

-- Location: FF_X23_Y19_N25
\mips_0|datapath_c|decode_c|registers|memory~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~69feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~69_q\);

-- Location: LCCOMB_X23_Y19_N20
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[30]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD1_FF|q[30]~7_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~38_q\ & (\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a30\)) # (!\mips_0|datapath_c|decode_c|registers|memory~38_q\ 
-- & ((\mips_0|datapath_c|decode_c|registers|memory~69_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a30\,
	datab => \mips_0|datapath_c|decode_c|registers|memory~38_q\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~69_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[30]~7_combout\);

-- Location: FF_X23_Y19_N23
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|writeback_c|mux|y[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(41));

-- Location: FF_X23_Y19_N21
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[30]~7_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(41),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal0~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(30));

-- Location: LCCOMB_X23_Y24_N16
\mips_0|datapath_c|decode_c|registers|memory~101feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~101feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[29]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[29]~3_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~101feeder_combout\);

-- Location: FF_X23_Y24_N17
\mips_0|datapath_c|decode_c|registers|memory~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~101feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~101_q\);

-- Location: LCCOMB_X23_Y24_N20
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD2_FF|q[29]~29_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~71_q\ & (\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a29\)) # (!\mips_0|datapath_c|decode_c|registers|memory~71_q\ 
-- & ((\mips_0|datapath_c|decode_c|registers|memory~101_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a29\,
	datab => \mips_0|datapath_c|decode_c|registers|memory~101_q\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~71_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[29]~29_combout\);

-- Location: LCCOMB_X23_Y24_N4
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[40]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[40]~feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[29]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[29]~3_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[40]~feeder_combout\);

-- Location: FF_X23_Y24_N5
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[40]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(40));

-- Location: FF_X23_Y24_N21
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[29]~29_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(40),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal1~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(29));

-- Location: LCCOMB_X26_Y20_N30
\mips_0|datapath_c|execute_c|MipsAlu|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~2_combout\ = \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ (((\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datab => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(29),
	datac => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~2_combout\);

-- Location: LCCOMB_X21_Y24_N12
\mips_0|datapath_c|decode_c|registers|memory~68feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~68feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[29]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[29]~3_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~68feeder_combout\);

-- Location: FF_X21_Y24_N13
\mips_0|datapath_c|decode_c|registers|memory~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~68feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~68_q\);

-- Location: LCCOMB_X21_Y24_N0
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[29]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD1_FF|q[29]~8_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~38_q\ & ((\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a29\))) # 
-- (!\mips_0|datapath_c|decode_c|registers|memory~38_q\ & (\mips_0|datapath_c|decode_c|registers|memory~68_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory~68_q\,
	datab => \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a29\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~38_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[29]~8_combout\);

-- Location: FF_X21_Y24_N17
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|writeback_c|mux|y[29]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(40));

-- Location: FF_X21_Y24_N1
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[29]~8_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(40),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal0~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(29));

-- Location: LCCOMB_X24_Y20_N16
\mips_0|datapath_c|execute_c|MipsAlu|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~3_combout\ = \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ (((\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datab => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datac => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(28),
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~3_combout\);

-- Location: LCCOMB_X21_Y24_N2
\mips_0|datapath_c|decode_c|registers|memory~67feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~67feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[28]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|writeback_c|mux|y[28]~4_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~67feeder_combout\);

-- Location: FF_X21_Y24_N3
\mips_0|datapath_c|decode_c|registers|memory~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~67feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~67_q\);

-- Location: LCCOMB_X21_Y24_N14
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[28]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD1_FF|q[28]~9_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~38_q\ & (\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a28\)) # (!\mips_0|datapath_c|decode_c|registers|memory~38_q\ 
-- & ((\mips_0|datapath_c|decode_c|registers|memory~67_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a28\,
	datab => \mips_0|datapath_c|decode_c|registers|memory~67_q\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~38_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[28]~9_combout\);

-- Location: FF_X21_Y24_N5
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|writeback_c|mux|y[28]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(39));

-- Location: FF_X21_Y24_N15
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[28]~9_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(39),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal0~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(28));

-- Location: LCCOMB_X23_Y20_N16
\mips_0|datapath_c|execute_c|MipsAlu|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~4_combout\ = \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ (((\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(27),
	datab => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datac => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~4_combout\);

-- Location: LCCOMB_X24_Y20_N2
\mips_0|datapath_c|execute_c|MipsAlu|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~5_combout\ = \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ (((\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datab => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(26),
	datac => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~5_combout\);

-- Location: LCCOMB_X21_Y20_N28
\mips_0|datapath_c|decode_c|registers|memory~65feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~65feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[26]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|writeback_c|mux|y[26]~6_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~65feeder_combout\);

-- Location: FF_X21_Y20_N29
\mips_0|datapath_c|decode_c|registers|memory~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~65feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~65_q\);

-- Location: LCCOMB_X21_Y20_N2
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[26]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD1_FF|q[26]~11_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~38_q\ & (\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a26\)) # (!\mips_0|datapath_c|decode_c|registers|memory~38_q\ 
-- & ((\mips_0|datapath_c|decode_c|registers|memory~65_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a26\,
	datab => \mips_0|datapath_c|decode_c|registers|memory~65_q\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~38_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[26]~11_combout\);

-- Location: FF_X21_Y20_N7
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|writeback_c|mux|y[26]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(37));

-- Location: FF_X21_Y20_N3
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[26]~11_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(37),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal0~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(26));

-- Location: LCCOMB_X20_Y22_N20
\mips_0|datapath_c|decode_c|registers|memory~64feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~64feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[25]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[25]~7_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~64feeder_combout\);

-- Location: FF_X20_Y22_N21
\mips_0|datapath_c|decode_c|registers|memory~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~64feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~64_q\);

-- Location: LCCOMB_X20_Y22_N28
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[25]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD1_FF|q[25]~12_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~38_q\ & ((\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a25\))) # 
-- (!\mips_0|datapath_c|decode_c|registers|memory~38_q\ & (\mips_0|datapath_c|decode_c|registers|memory~64_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory~64_q\,
	datab => \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a25\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~38_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[25]~12_combout\);

-- Location: FF_X20_Y22_N15
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|writeback_c|mux|y[25]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(36));

-- Location: FF_X20_Y22_N29
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[25]~12_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(36),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal0~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(25));

-- Location: LCCOMB_X24_Y20_N12
\mips_0|datapath_c|execute_c|MipsAlu|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~6_combout\ = \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ (((\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(25),
	datab => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	datac => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~6_combout\);

-- Location: LCCOMB_X21_Y20_N30
\mips_0|datapath_c|decode_c|registers|memory~63feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~63feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[24]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[24]~8_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~63feeder_combout\);

-- Location: FF_X21_Y20_N31
\mips_0|datapath_c|decode_c|registers|memory~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~63feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~63_q\);

-- Location: LCCOMB_X21_Y20_N0
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[24]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD1_FF|q[24]~13_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~38_q\ & (\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a24\)) # (!\mips_0|datapath_c|decode_c|registers|memory~38_q\ 
-- & ((\mips_0|datapath_c|decode_c|registers|memory~63_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory~38_q\,
	datab => \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a24\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~63_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[24]~13_combout\);

-- Location: FF_X21_Y20_N9
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|writeback_c|mux|y[24]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(35));

-- Location: FF_X21_Y20_N1
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[24]~13_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(35),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal0~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(24));

-- Location: LCCOMB_X29_Y21_N28
\mips_0|datapath_c|execute_c|MipsAlu|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~8_combout\ = \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ (((\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & (\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	datab => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(23),
	datac => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~8_combout\);

-- Location: LCCOMB_X21_Y22_N20
\mips_0|datapath_c|decode_c|registers|memory~62feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~62feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[23]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[23]~9_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~62feeder_combout\);

-- Location: FF_X21_Y22_N21
\mips_0|datapath_c|decode_c|registers|memory~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~62feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~62_q\);

-- Location: LCCOMB_X21_Y22_N30
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[23]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD1_FF|q[23]~14_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~38_q\ & ((\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a23\))) # 
-- (!\mips_0|datapath_c|decode_c|registers|memory~38_q\ & (\mips_0|datapath_c|decode_c|registers|memory~62_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory~38_q\,
	datab => \mips_0|datapath_c|decode_c|registers|memory~62_q\,
	datad => \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a23\,
	combout => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[23]~14_combout\);

-- Location: FF_X21_Y22_N19
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|writeback_c|mux|y[23]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(34));

-- Location: FF_X21_Y22_N31
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[23]~14_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(34),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal0~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(23));

-- Location: LCCOMB_X21_Y22_N0
\mips_0|datapath_c|decode_c|registers|memory~61feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~61feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[22]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[22]~10_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~61feeder_combout\);

-- Location: FF_X21_Y22_N1
\mips_0|datapath_c|decode_c|registers|memory~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~61feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~61_q\);

-- Location: LCCOMB_X21_Y22_N10
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[22]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD1_FF|q[22]~15_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~38_q\ & ((\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a22\))) # 
-- (!\mips_0|datapath_c|decode_c|registers|memory~38_q\ & (\mips_0|datapath_c|decode_c|registers|memory~61_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory~38_q\,
	datab => \mips_0|datapath_c|decode_c|registers|memory~61_q\,
	datad => \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a22\,
	combout => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[22]~15_combout\);

-- Location: FF_X21_Y22_N23
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|writeback_c|mux|y[22]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(33));

-- Location: FF_X21_Y22_N11
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[22]~15_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(33),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal0~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(22));

-- Location: LCCOMB_X26_Y20_N8
\mips_0|datapath_c|execute_c|MipsAlu|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~10_combout\ = \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ (((\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datab => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(21),
	datac => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~10_combout\);

-- Location: LCCOMB_X23_Y22_N18
\mips_0|datapath_c|decode_c|registers|memory~60feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~60feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[21]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[21]~11_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~60feeder_combout\);

-- Location: FF_X23_Y22_N19
\mips_0|datapath_c|decode_c|registers|memory~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~60feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~60_q\);

-- Location: LCCOMB_X23_Y22_N30
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[21]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD1_FF|q[21]~16_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~38_q\ & ((\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a21\))) # 
-- (!\mips_0|datapath_c|decode_c|registers|memory~38_q\ & (\mips_0|datapath_c|decode_c|registers|memory~60_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory~60_q\,
	datab => \mips_0|datapath_c|decode_c|registers|memory~38_q\,
	datad => \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a21\,
	combout => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[21]~16_combout\);

-- Location: FF_X23_Y22_N23
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|writeback_c|mux|y[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(32));

-- Location: FF_X23_Y22_N31
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[21]~16_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(32),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal0~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(21));

-- Location: LCCOMB_X23_Y21_N16
\mips_0|datapath_c|execute_c|MipsAlu|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~11_combout\ = \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ (((\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(20),
	datab => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datac => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~11_combout\);

-- Location: LCCOMB_X21_Y21_N28
\mips_0|datapath_c|decode_c|registers|memory~59feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~59feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[20]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|writeback_c|mux|y[20]~12_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~59feeder_combout\);

-- Location: FF_X21_Y21_N29
\mips_0|datapath_c|decode_c|registers|memory~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~59feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~59_q\);

-- Location: LCCOMB_X21_Y21_N16
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[20]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD1_FF|q[20]~17_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~38_q\ & (\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a20\)) # (!\mips_0|datapath_c|decode_c|registers|memory~38_q\ 
-- & ((\mips_0|datapath_c|decode_c|registers|memory~59_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a20\,
	datab => \mips_0|datapath_c|decode_c|registers|memory~38_q\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~59_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[20]~17_combout\);

-- Location: FF_X21_Y21_N23
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|writeback_c|mux|y[20]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(31));

-- Location: FF_X21_Y21_N17
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[20]~17_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(31),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal0~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(20));

-- Location: LCCOMB_X23_Y21_N18
\mips_0|datapath_c|execute_c|MipsAlu|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~12_combout\ = \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ (((\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datab => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datac => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(19),
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~12_combout\);

-- Location: LCCOMB_X21_Y21_N20
\mips_0|datapath_c|decode_c|registers|memory~58feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~58feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[19]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[19]~13_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~58feeder_combout\);

-- Location: FF_X21_Y21_N21
\mips_0|datapath_c|decode_c|registers|memory~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~58feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~58_q\);

-- Location: LCCOMB_X21_Y21_N14
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD1_FF|q[19]~18_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~38_q\ & (\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a19\)) # (!\mips_0|datapath_c|decode_c|registers|memory~38_q\ 
-- & ((\mips_0|datapath_c|decode_c|registers|memory~58_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a19\,
	datab => \mips_0|datapath_c|decode_c|registers|memory~38_q\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~58_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[19]~18_combout\);

-- Location: FF_X21_Y21_N9
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|writeback_c|mux|y[19]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(30));

-- Location: FF_X21_Y21_N15
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[19]~18_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(30),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal0~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(19));

-- Location: LCCOMB_X23_Y19_N10
\mips_0|datapath_c|decode_c|registers|memory~57feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~57feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[18]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[18]~14_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~57feeder_combout\);

-- Location: FF_X23_Y19_N11
\mips_0|datapath_c|decode_c|registers|memory~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~57feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~57_q\);

-- Location: LCCOMB_X23_Y19_N16
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD1_FF|q[18]~19_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~38_q\ & ((\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a18\))) # 
-- (!\mips_0|datapath_c|decode_c|registers|memory~38_q\ & (\mips_0|datapath_c|decode_c|registers|memory~57_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory~57_q\,
	datab => \mips_0|datapath_c|decode_c|registers|memory~38_q\,
	datad => \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a18\,
	combout => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[18]~19_combout\);

-- Location: FF_X23_Y19_N9
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|writeback_c|mux|y[18]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(29));

-- Location: FF_X23_Y19_N17
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[18]~19_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(29),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal0~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(18));

-- Location: LCCOMB_X23_Y19_N4
\mips_0|datapath_c|decode_c|registers|memory~90feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~90feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[18]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[18]~14_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~90feeder_combout\);

-- Location: FF_X23_Y19_N5
\mips_0|datapath_c|decode_c|registers|memory~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~90feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~90_q\);

-- Location: LCCOMB_X23_Y23_N0
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD2_FF|q[18]~18_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~71_q\ & (\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a18\)) # (!\mips_0|datapath_c|decode_c|registers|memory~71_q\ 
-- & ((\mips_0|datapath_c|decode_c|registers|memory~90_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory~71_q\,
	datab => \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a18\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~90_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[18]~18_combout\);

-- Location: LCCOMB_X23_Y19_N28
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[29]~feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[18]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[18]~14_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[29]~feeder_combout\);

-- Location: FF_X23_Y19_N29
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(29));

-- Location: FF_X23_Y23_N1
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[18]~18_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(29),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal1~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(18));

-- Location: LCCOMB_X26_Y21_N0
\mips_0|datapath_c|execute_c|MipsAlu|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~13_combout\ = \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ (((\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & (\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datab => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datac => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	datad => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(18),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~13_combout\);

-- Location: LCCOMB_X24_Y23_N10
\mips_0|datapath_c|decode_c|registers|memory~89feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~89feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[17]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[17]~15_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~89feeder_combout\);

-- Location: FF_X24_Y23_N11
\mips_0|datapath_c|decode_c|registers|memory~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~89feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~89_q\);

-- Location: LCCOMB_X24_Y23_N20
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD2_FF|q[17]~17_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~71_q\ & (\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a17\)) # (!\mips_0|datapath_c|decode_c|registers|memory~71_q\ 
-- & ((\mips_0|datapath_c|decode_c|registers|memory~89_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a17\,
	datab => \mips_0|datapath_c|decode_c|registers|memory~71_q\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~89_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[17]~17_combout\);

-- Location: LCCOMB_X24_Y23_N4
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[28]~feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[17]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[17]~15_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[28]~feeder_combout\);

-- Location: FF_X24_Y23_N5
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(28));

-- Location: FF_X24_Y23_N21
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[17]~17_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(28),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal1~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(17));

-- Location: LCCOMB_X23_Y20_N26
\mips_0|datapath_c|execute_c|MipsAlu|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~14_combout\ = \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ (((\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(17),
	datab => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datac => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~14_combout\);

-- Location: LCCOMB_X24_Y23_N18
\mips_0|datapath_c|decode_c|registers|memory~88feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~88feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[16]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|writeback_c|mux|y[16]~16_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~88feeder_combout\);

-- Location: FF_X24_Y23_N19
\mips_0|datapath_c|decode_c|registers|memory~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~88feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~88_q\);

-- Location: LCCOMB_X24_Y23_N28
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD2_FF|q[16]~16_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~71_q\ & (\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a16\)) # (!\mips_0|datapath_c|decode_c|registers|memory~71_q\ 
-- & ((\mips_0|datapath_c|decode_c|registers|memory~88_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a16\,
	datab => \mips_0|datapath_c|decode_c|registers|memory~88_q\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~71_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[16]~16_combout\);

-- Location: LCCOMB_X24_Y23_N30
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[27]~feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[16]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|writeback_c|mux|y[16]~16_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[27]~feeder_combout\);

-- Location: FF_X24_Y23_N31
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(27));

-- Location: FF_X24_Y23_N29
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[16]~16_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(27),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal1~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(16));

-- Location: LCCOMB_X23_Y21_N30
\mips_0|datapath_c|execute_c|MipsAlu|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~15_combout\ = \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ (((\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datab => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(16),
	datac => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~15_combout\);

-- Location: LCCOMB_X23_Y21_N12
\mips_0|datapath_c|decode_c|registers|memory~55feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~55feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[16]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[16]~16_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~55feeder_combout\);

-- Location: FF_X23_Y21_N13
\mips_0|datapath_c|decode_c|registers|memory~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~55feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~55_q\);

-- Location: LCCOMB_X23_Y21_N14
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[16]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD1_FF|q[16]~21_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~38_q\ & (\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a16\)) # (!\mips_0|datapath_c|decode_c|registers|memory~38_q\ 
-- & ((\mips_0|datapath_c|decode_c|registers|memory~55_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a16\,
	datab => \mips_0|datapath_c|decode_c|registers|memory~38_q\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~55_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[16]~21_combout\);

-- Location: FF_X23_Y21_N5
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|writeback_c|mux|y[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(27));

-- Location: FF_X23_Y21_N15
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[16]~21_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(27),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal0~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(16));

-- Location: LCCOMB_X24_Y23_N12
\mips_0|datapath_c|decode_c|registers|memory~87feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~87feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[15]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|writeback_c|mux|y[15]~17_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~87feeder_combout\);

-- Location: FF_X24_Y23_N13
\mips_0|datapath_c|decode_c|registers|memory~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~87feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~87_q\);

-- Location: LCCOMB_X24_Y23_N24
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD2_FF|q[15]~15_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~71_q\ & (\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a15\)) # (!\mips_0|datapath_c|decode_c|registers|memory~71_q\ 
-- & ((\mips_0|datapath_c|decode_c|registers|memory~87_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a15\,
	datab => \mips_0|datapath_c|decode_c|registers|memory~71_q\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~87_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[15]~15_combout\);

-- Location: LCCOMB_X24_Y23_N14
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[26]~feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[15]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|writeback_c|mux|y[15]~17_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[26]~feeder_combout\);

-- Location: FF_X24_Y23_N15
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(26));

-- Location: FF_X24_Y23_N25
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[15]~15_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(26),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal1~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(15));

-- Location: LCCOMB_X23_Y20_N4
\mips_0|datapath_c|execute_c|MipsAlu|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~16_combout\ = \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ (((\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(15),
	datab => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datac => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~16_combout\);

-- Location: LCCOMB_X21_Y21_N6
\mips_0|datapath_c|decode_c|registers|memory~54feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~54feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[15]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[15]~17_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~54feeder_combout\);

-- Location: FF_X21_Y21_N7
\mips_0|datapath_c|decode_c|registers|memory~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~54feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~54_q\);

-- Location: LCCOMB_X21_Y21_N18
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[15]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD1_FF|q[15]~22_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~38_q\ & ((\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a15\))) # 
-- (!\mips_0|datapath_c|decode_c|registers|memory~38_q\ & (\mips_0|datapath_c|decode_c|registers|memory~54_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory~54_q\,
	datab => \mips_0|datapath_c|decode_c|registers|memory~38_q\,
	datad => \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a15\,
	combout => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[15]~22_combout\);

-- Location: FF_X21_Y21_N31
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|writeback_c|mux|y[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(26));

-- Location: FF_X21_Y21_N19
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[15]~22_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(26),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal0~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(15));

-- Location: LCCOMB_X23_Y19_N2
\mips_0|datapath_c|decode_c|registers|memory~53feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~53feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[14]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|writeback_c|mux|y[14]~18_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~53feeder_combout\);

-- Location: FF_X23_Y19_N3
\mips_0|datapath_c|decode_c|registers|memory~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~53feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~53_q\);

-- Location: LCCOMB_X23_Y19_N0
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[14]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD1_FF|q[14]~23_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~38_q\ & (\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a14\)) # (!\mips_0|datapath_c|decode_c|registers|memory~38_q\ 
-- & ((\mips_0|datapath_c|decode_c|registers|memory~53_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a14\,
	datab => \mips_0|datapath_c|decode_c|registers|memory~38_q\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~53_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[14]~23_combout\);

-- Location: FF_X23_Y19_N19
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|writeback_c|mux|y[14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(25));

-- Location: FF_X23_Y19_N1
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[14]~23_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(25),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal0~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(14));

-- Location: LCCOMB_X24_Y20_N24
\mips_0|datapath_c|execute_c|MipsAlu|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~17_combout\ = \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ (((\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datab => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(14),
	datac => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~17_combout\);

-- Location: LCCOMB_X25_Y23_N6
\mips_0|datapath_c|decode_c|registers|memory~85feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~85feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[13]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[13]~19_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~85feeder_combout\);

-- Location: FF_X25_Y23_N7
\mips_0|datapath_c|decode_c|registers|memory~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~85feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~85_q\);

-- Location: LCCOMB_X25_Y23_N8
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD2_FF|q[13]~13_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~71_q\ & ((\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a13\))) # 
-- (!\mips_0|datapath_c|decode_c|registers|memory~71_q\ & (\mips_0|datapath_c|decode_c|registers|memory~85_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory~85_q\,
	datab => \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a13\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~71_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[13]~13_combout\);

-- Location: LCCOMB_X25_Y23_N22
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[24]~feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[13]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[13]~19_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[24]~feeder_combout\);

-- Location: FF_X25_Y23_N23
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(24));

-- Location: FF_X25_Y23_N9
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[13]~13_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(24),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal1~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(13));

-- Location: LCCOMB_X29_Y21_N24
\mips_0|datapath_c|execute_c|MipsAlu|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~18_combout\ = \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ (((\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datab => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(13),
	datac => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	datad => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~18_combout\);

-- Location: LCCOMB_X23_Y22_N24
\mips_0|datapath_c|decode_c|registers|memory~51feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~51feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[12]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[12]~20_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~51feeder_combout\);

-- Location: FF_X23_Y22_N25
\mips_0|datapath_c|decode_c|registers|memory~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~51feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~51_q\);

-- Location: LCCOMB_X23_Y22_N6
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[12]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD1_FF|q[12]~25_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~38_q\ & (\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a12\)) # (!\mips_0|datapath_c|decode_c|registers|memory~38_q\ 
-- & ((\mips_0|datapath_c|decode_c|registers|memory~51_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a12\,
	datab => \mips_0|datapath_c|decode_c|registers|memory~38_q\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~51_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[12]~25_combout\);

-- Location: FF_X23_Y22_N27
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|writeback_c|mux|y[12]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(23));

-- Location: FF_X23_Y22_N7
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[12]~25_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(23),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal0~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(12));

-- Location: LCCOMB_X23_Y20_N6
\mips_0|datapath_c|execute_c|MipsAlu|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~19_combout\ = \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ (((\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(12),
	datab => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datac => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~19_combout\);

-- Location: LCCOMB_X26_Y21_N26
\mips_0|datapath_c|execute_c|MipsAlu|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~20_combout\ = \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ (((\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datab => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datac => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(11),
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~20_combout\);

-- Location: LCCOMB_X25_Y23_N16
\mips_0|datapath_c|execute_c|MipsAlu|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~21_combout\ = \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ (((\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datab => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(10),
	datac => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~21_combout\);

-- Location: LCCOMB_X24_Y22_N18
\mips_0|datapath_c|decode_c|registers|memory~49feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~49feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[10]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[10]~22_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~49feeder_combout\);

-- Location: FF_X24_Y22_N19
\mips_0|datapath_c|decode_c|registers|memory~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~49feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~49_q\);

-- Location: LCCOMB_X24_Y22_N6
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[10]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD1_FF|q[10]~27_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~38_q\ & (\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a10\)) # (!\mips_0|datapath_c|decode_c|registers|memory~38_q\ 
-- & ((\mips_0|datapath_c|decode_c|registers|memory~49_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a10\,
	datab => \mips_0|datapath_c|decode_c|registers|memory~49_q\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~38_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[10]~27_combout\);

-- Location: FF_X24_Y22_N15
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|writeback_c|mux|y[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(21));

-- Location: FF_X24_Y22_N7
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[10]~27_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(21),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal0~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(10));

-- Location: LCCOMB_X24_Y22_N20
\mips_0|datapath_c|decode_c|registers|memory~48feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~48feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[9]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[9]~23_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~48feeder_combout\);

-- Location: FF_X24_Y22_N21
\mips_0|datapath_c|decode_c|registers|memory~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~48feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~48_q\);

-- Location: LCCOMB_X24_Y22_N24
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD1_FF|q[9]~28_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~38_q\ & ((\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a9\))) # (!\mips_0|datapath_c|decode_c|registers|memory~38_q\ 
-- & (\mips_0|datapath_c|decode_c|registers|memory~48_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory~38_q\,
	datab => \mips_0|datapath_c|decode_c|registers|memory~48_q\,
	datad => \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a9\,
	combout => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[9]~28_combout\);

-- Location: FF_X24_Y22_N9
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|writeback_c|mux|y[9]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(20));

-- Location: FF_X24_Y22_N25
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[9]~28_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(20),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal0~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(9));

-- Location: LCCOMB_X26_Y20_N10
\mips_0|datapath_c|execute_c|MipsAlu|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~22_combout\ = \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ (((\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(9),
	datab => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	datac => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~22_combout\);

-- Location: LCCOMB_X25_Y23_N26
\mips_0|datapath_c|execute_c|MipsAlu|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~23_combout\ = \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ (((\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datab => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(8),
	datac => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~23_combout\);

-- Location: LCCOMB_X24_Y22_N16
\mips_0|datapath_c|decode_c|registers|memory~47feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~47feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[8]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[8]~24_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~47feeder_combout\);

-- Location: FF_X24_Y22_N17
\mips_0|datapath_c|decode_c|registers|memory~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~47feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~47_q\);

-- Location: LCCOMB_X24_Y22_N30
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD1_FF|q[8]~29_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~38_q\ & (\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a8\)) # (!\mips_0|datapath_c|decode_c|registers|memory~38_q\ & 
-- ((\mips_0|datapath_c|decode_c|registers|memory~47_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory~38_q\,
	datab => \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a8\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~47_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[8]~29_combout\);

-- Location: FF_X24_Y22_N23
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|writeback_c|mux|y[8]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(19));

-- Location: FF_X24_Y22_N31
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[8]~29_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(19),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal0~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(8));

-- Location: LCCOMB_X21_Y20_N18
\mips_0|datapath_c|decode_c|registers|memory~46feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~46feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[7]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|writeback_c|mux|y[7]~25_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~46feeder_combout\);

-- Location: FF_X21_Y20_N19
\mips_0|datapath_c|decode_c|registers|memory~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~46feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~46_q\);

-- Location: LCCOMB_X21_Y20_N24
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD1_FF|q[7]~5_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~38_q\ & (\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a7\)) # (!\mips_0|datapath_c|decode_c|registers|memory~38_q\ & 
-- ((\mips_0|datapath_c|decode_c|registers|memory~46_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a7\,
	datab => \mips_0|datapath_c|decode_c|registers|memory~46_q\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~38_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[7]~5_combout\);

-- Location: FF_X21_Y20_N15
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|writeback_c|mux|y[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(18));

-- Location: FF_X21_Y20_N25
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[7]~5_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(18),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal0~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(7));

-- Location: LCCOMB_X26_Y20_N12
\mips_0|datapath_c|execute_c|MipsAlu|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~24_combout\ = \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ (((\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datab => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(7),
	datac => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~24_combout\);

-- Location: LCCOMB_X23_Y22_N20
\mips_0|datapath_c|decode_c|registers|memory~45feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~45feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[6]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[6]~26_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~45feeder_combout\);

-- Location: FF_X23_Y22_N21
\mips_0|datapath_c|decode_c|registers|memory~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~45feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~45_q\);

-- Location: LCCOMB_X23_Y22_N28
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD1_FF|q[6]~4_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~38_q\ & (\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a6\)) # (!\mips_0|datapath_c|decode_c|registers|memory~38_q\ & 
-- ((\mips_0|datapath_c|decode_c|registers|memory~45_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory~38_q\,
	datab => \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a6\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~45_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[6]~4_combout\);

-- Location: FF_X23_Y22_N5
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|writeback_c|mux|y[6]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(17));

-- Location: FF_X23_Y22_N29
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[6]~4_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(17),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal0~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(6));

-- Location: LCCOMB_X29_Y22_N18
\mips_0|datapath_c|execute_c|MipsAlu|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~26_combout\ = \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ (((\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datab => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datac => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(5),
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~26_combout\);

-- Location: LCCOMB_X29_Y22_N12
\mips_0|datapath_c|execute_c|MipsAlu|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~27_combout\ = \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ (((\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datab => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datac => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(4),
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~27_combout\);

-- Location: LCCOMB_X21_Y22_N4
\mips_0|datapath_c|decode_c|registers|memory~43feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~43feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[4]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[4]~28_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~43feeder_combout\);

-- Location: FF_X21_Y22_N5
\mips_0|datapath_c|decode_c|registers|memory~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~43feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~43_q\);

-- Location: LCCOMB_X21_Y22_N16
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD1_FF|q[4]~2_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~38_q\ & ((\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a4\))) # (!\mips_0|datapath_c|decode_c|registers|memory~38_q\ 
-- & (\mips_0|datapath_c|decode_c|registers|memory~43_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory~38_q\,
	datab => \mips_0|datapath_c|decode_c|registers|memory~43_q\,
	datad => \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a4\,
	combout => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[4]~2_combout\);

-- Location: FF_X21_Y22_N15
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|writeback_c|mux|y[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(15));

-- Location: FF_X21_Y22_N17
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[4]~2_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(15),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal0~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(4));

-- Location: LCCOMB_X28_Y22_N12
\mips_0|datapath_c|execute_c|MipsAlu|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~28_combout\ = \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ (((\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(3)))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datab => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(3),
	datac => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(3),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~28_combout\);

-- Location: LCCOMB_X29_Y22_N22
\mips_0|datapath_c|execute_c|MipsAlu|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~29_combout\ = \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ (((\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(2)))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datab => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datac => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(2),
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(2),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~29_combout\);

-- Location: LCCOMB_X20_Y22_N12
\mips_0|datapath_c|decode_c|registers|memory~41feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~41feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[2]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|writeback_c|mux|y[2]~30_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~41feeder_combout\);

-- Location: FF_X20_Y22_N13
\mips_0|datapath_c|decode_c|registers|memory~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~41feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~41_q\);

-- Location: LCCOMB_X20_Y22_N24
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD1_FF|q[2]~0_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~38_q\ & ((\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a2\))) # (!\mips_0|datapath_c|decode_c|registers|memory~38_q\ 
-- & (\mips_0|datapath_c|decode_c|registers|memory~41_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory~41_q\,
	datab => \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a2\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~38_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[2]~0_combout\);

-- Location: FF_X20_Y22_N23
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|writeback_c|mux|y[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(13));

-- Location: FF_X20_Y22_N25
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[2]~0_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(13),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal0~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(2));

-- Location: LCCOMB_X28_Y22_N24
\mips_0|datapath_c|execute_c|MipsAlu|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~30_combout\ = \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ (((\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & (\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(1))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datab => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datac => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(1),
	datad => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(1),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~30_combout\);

-- Location: LCCOMB_X28_Y22_N4
\mips_0|datapath_c|execute_c|MipsAlu|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~31_combout\ = \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ (((\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(0)))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datab => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(0),
	datac => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(0),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~31_combout\);

-- Location: LCCOMB_X20_Y22_N6
\mips_0|datapath_c|decode_c|registers|memory~39feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~39feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[0]~0_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~39feeder_combout\);

-- Location: FF_X20_Y22_N7
\mips_0|datapath_c|decode_c|registers|memory~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~39feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~39_q\);

-- Location: LCCOMB_X20_Y22_N16
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD1_FF|q[0]~31_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~38_q\ & ((\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\))) # 
-- (!\mips_0|datapath_c|decode_c|registers|memory~38_q\ & (\mips_0|datapath_c|decode_c|registers|memory~39_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory~39_q\,
	datab => \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~38_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[0]~31_combout\);

-- Location: FF_X20_Y22_N9
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|writeback_c|mux|y[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(11));

-- Location: FF_X20_Y22_N17
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[0]~31_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(11),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal0~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(0));

-- Location: LCCOMB_X25_Y22_N16
\mips_0|datapath_c|execute_c|MipsAlu|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~33_cout\ = CARRY(\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datad => VCC,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~33_cout\);

-- Location: LCCOMB_X25_Y22_N18
\mips_0|datapath_c|execute_c|MipsAlu|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~34_combout\ = (\mips_0|datapath_c|execute_c|MipsAlu|Add0~31_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(0) & (\mips_0|datapath_c|execute_c|MipsAlu|Add0~33_cout\ & VCC)) # 
-- (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(0) & (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~33_cout\)))) # (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~31_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(0) & 
-- (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~33_cout\)) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(0) & ((\mips_0|datapath_c|execute_c|MipsAlu|Add0~33_cout\) # (GND)))))
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~35\ = CARRY((\mips_0|datapath_c|execute_c|MipsAlu|Add0~31_combout\ & (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(0) & !\mips_0|datapath_c|execute_c|MipsAlu|Add0~33_cout\)) # 
-- (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~31_combout\ & ((!\mips_0|datapath_c|execute_c|MipsAlu|Add0~33_cout\) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|MipsAlu|Add0~31_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(0),
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|Add0~33_cout\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~34_combout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~35\);

-- Location: LCCOMB_X25_Y22_N20
\mips_0|datapath_c|execute_c|MipsAlu|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~36_combout\ = ((\mips_0|datapath_c|execute_c|MipsAlu|Add0~30_combout\ $ (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(1) $ (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~35\)))) # (GND)
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~37\ = CARRY((\mips_0|datapath_c|execute_c|MipsAlu|Add0~30_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(1)) # (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~35\))) # 
-- (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~30_combout\ & (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(1) & !\mips_0|datapath_c|execute_c|MipsAlu|Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|MipsAlu|Add0~30_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(1),
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|Add0~35\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~36_combout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~37\);

-- Location: LCCOMB_X25_Y22_N22
\mips_0|datapath_c|execute_c|MipsAlu|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~38_combout\ = (\mips_0|datapath_c|execute_c|MipsAlu|Add0~29_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(2) & (\mips_0|datapath_c|execute_c|MipsAlu|Add0~37\ & VCC)) # 
-- (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(2) & (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~37\)))) # (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~29_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(2) & 
-- (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~37\)) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(2) & ((\mips_0|datapath_c|execute_c|MipsAlu|Add0~37\) # (GND)))))
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~39\ = CARRY((\mips_0|datapath_c|execute_c|MipsAlu|Add0~29_combout\ & (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(2) & !\mips_0|datapath_c|execute_c|MipsAlu|Add0~37\)) # 
-- (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~29_combout\ & ((!\mips_0|datapath_c|execute_c|MipsAlu|Add0~37\) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|MipsAlu|Add0~29_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(2),
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|Add0~37\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~38_combout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~39\);

-- Location: LCCOMB_X25_Y22_N24
\mips_0|datapath_c|execute_c|MipsAlu|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~40_combout\ = ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(3) $ (\mips_0|datapath_c|execute_c|MipsAlu|Add0~28_combout\ $ (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~39\)))) # (GND)
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~41\ = CARRY((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(3) & ((\mips_0|datapath_c|execute_c|MipsAlu|Add0~28_combout\) # (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~39\))) # 
-- (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(3) & (\mips_0|datapath_c|execute_c|MipsAlu|Add0~28_combout\ & !\mips_0|datapath_c|execute_c|MipsAlu|Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(3),
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Add0~28_combout\,
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|Add0~39\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~40_combout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~41\);

-- Location: LCCOMB_X25_Y22_N26
\mips_0|datapath_c|execute_c|MipsAlu|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~42_combout\ = (\mips_0|datapath_c|execute_c|MipsAlu|Add0~27_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(4) & (\mips_0|datapath_c|execute_c|MipsAlu|Add0~41\ & VCC)) # 
-- (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(4) & (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~41\)))) # (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~27_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(4) & 
-- (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~41\)) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(4) & ((\mips_0|datapath_c|execute_c|MipsAlu|Add0~41\) # (GND)))))
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~43\ = CARRY((\mips_0|datapath_c|execute_c|MipsAlu|Add0~27_combout\ & (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(4) & !\mips_0|datapath_c|execute_c|MipsAlu|Add0~41\)) # 
-- (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~27_combout\ & ((!\mips_0|datapath_c|execute_c|MipsAlu|Add0~41\) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|MipsAlu|Add0~27_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(4),
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|Add0~41\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~42_combout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~43\);

-- Location: LCCOMB_X25_Y22_N28
\mips_0|datapath_c|execute_c|MipsAlu|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~44_combout\ = ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(5) $ (\mips_0|datapath_c|execute_c|MipsAlu|Add0~26_combout\ $ (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~43\)))) # (GND)
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~45\ = CARRY((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(5) & ((\mips_0|datapath_c|execute_c|MipsAlu|Add0~26_combout\) # (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~43\))) # 
-- (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(5) & (\mips_0|datapath_c|execute_c|MipsAlu|Add0~26_combout\ & !\mips_0|datapath_c|execute_c|MipsAlu|Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(5),
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Add0~26_combout\,
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|Add0~43\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~44_combout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~45\);

-- Location: LCCOMB_X25_Y22_N30
\mips_0|datapath_c|execute_c|MipsAlu|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~46_combout\ = (\mips_0|datapath_c|execute_c|MipsAlu|Add0~25_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(6) & (\mips_0|datapath_c|execute_c|MipsAlu|Add0~45\ & VCC)) # 
-- (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(6) & (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~45\)))) # (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~25_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(6) & 
-- (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~45\)) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(6) & ((\mips_0|datapath_c|execute_c|MipsAlu|Add0~45\) # (GND)))))
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~47\ = CARRY((\mips_0|datapath_c|execute_c|MipsAlu|Add0~25_combout\ & (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(6) & !\mips_0|datapath_c|execute_c|MipsAlu|Add0~45\)) # 
-- (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~25_combout\ & ((!\mips_0|datapath_c|execute_c|MipsAlu|Add0~45\) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|MipsAlu|Add0~25_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(6),
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|Add0~45\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~46_combout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~47\);

-- Location: LCCOMB_X25_Y21_N0
\mips_0|datapath_c|execute_c|MipsAlu|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~48_combout\ = ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(7) $ (\mips_0|datapath_c|execute_c|MipsAlu|Add0~24_combout\ $ (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~47\)))) # (GND)
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~49\ = CARRY((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(7) & ((\mips_0|datapath_c|execute_c|MipsAlu|Add0~24_combout\) # (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~47\))) # 
-- (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(7) & (\mips_0|datapath_c|execute_c|MipsAlu|Add0~24_combout\ & !\mips_0|datapath_c|execute_c|MipsAlu|Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(7),
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Add0~24_combout\,
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|Add0~47\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~48_combout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~49\);

-- Location: LCCOMB_X25_Y21_N2
\mips_0|datapath_c|execute_c|MipsAlu|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~50_combout\ = (\mips_0|datapath_c|execute_c|MipsAlu|Add0~23_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(8) & (\mips_0|datapath_c|execute_c|MipsAlu|Add0~49\ & VCC)) # 
-- (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(8) & (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~49\)))) # (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~23_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(8) & 
-- (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~49\)) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(8) & ((\mips_0|datapath_c|execute_c|MipsAlu|Add0~49\) # (GND)))))
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~51\ = CARRY((\mips_0|datapath_c|execute_c|MipsAlu|Add0~23_combout\ & (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(8) & !\mips_0|datapath_c|execute_c|MipsAlu|Add0~49\)) # 
-- (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~23_combout\ & ((!\mips_0|datapath_c|execute_c|MipsAlu|Add0~49\) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|MipsAlu|Add0~23_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(8),
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|Add0~49\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~50_combout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~51\);

-- Location: LCCOMB_X25_Y21_N4
\mips_0|datapath_c|execute_c|MipsAlu|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~52_combout\ = ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(9) $ (\mips_0|datapath_c|execute_c|MipsAlu|Add0~22_combout\ $ (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~51\)))) # (GND)
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~53\ = CARRY((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(9) & ((\mips_0|datapath_c|execute_c|MipsAlu|Add0~22_combout\) # (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~51\))) # 
-- (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(9) & (\mips_0|datapath_c|execute_c|MipsAlu|Add0~22_combout\ & !\mips_0|datapath_c|execute_c|MipsAlu|Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(9),
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Add0~22_combout\,
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|Add0~51\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~52_combout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~53\);

-- Location: LCCOMB_X25_Y21_N6
\mips_0|datapath_c|execute_c|MipsAlu|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~54_combout\ = (\mips_0|datapath_c|execute_c|MipsAlu|Add0~21_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(10) & (\mips_0|datapath_c|execute_c|MipsAlu|Add0~53\ & VCC)) # 
-- (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(10) & (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~53\)))) # (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~21_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(10) & 
-- (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~53\)) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(10) & ((\mips_0|datapath_c|execute_c|MipsAlu|Add0~53\) # (GND)))))
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~55\ = CARRY((\mips_0|datapath_c|execute_c|MipsAlu|Add0~21_combout\ & (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(10) & !\mips_0|datapath_c|execute_c|MipsAlu|Add0~53\)) # 
-- (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~21_combout\ & ((!\mips_0|datapath_c|execute_c|MipsAlu|Add0~53\) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|MipsAlu|Add0~21_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(10),
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|Add0~53\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~54_combout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~55\);

-- Location: LCCOMB_X25_Y21_N8
\mips_0|datapath_c|execute_c|MipsAlu|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~56_combout\ = ((\mips_0|datapath_c|execute_c|MipsAlu|Add0~20_combout\ $ (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(11) $ (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~55\)))) # (GND)
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~57\ = CARRY((\mips_0|datapath_c|execute_c|MipsAlu|Add0~20_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(11)) # (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~55\))) # 
-- (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~20_combout\ & (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(11) & !\mips_0|datapath_c|execute_c|MipsAlu|Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|MipsAlu|Add0~20_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(11),
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|Add0~55\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~56_combout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~57\);

-- Location: LCCOMB_X25_Y21_N10
\mips_0|datapath_c|execute_c|MipsAlu|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~58_combout\ = (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(12) & ((\mips_0|datapath_c|execute_c|MipsAlu|Add0~19_combout\ & (\mips_0|datapath_c|execute_c|MipsAlu|Add0~57\ & VCC)) # 
-- (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~19_combout\ & (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~57\)))) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(12) & ((\mips_0|datapath_c|execute_c|MipsAlu|Add0~19_combout\ & 
-- (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~57\)) # (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~19_combout\ & ((\mips_0|datapath_c|execute_c|MipsAlu|Add0~57\) # (GND)))))
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~59\ = CARRY((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(12) & (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~19_combout\ & !\mips_0|datapath_c|execute_c|MipsAlu|Add0~57\)) # 
-- (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(12) & ((!\mips_0|datapath_c|execute_c|MipsAlu|Add0~57\) # (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(12),
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Add0~19_combout\,
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|Add0~57\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~58_combout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~59\);

-- Location: LCCOMB_X25_Y21_N12
\mips_0|datapath_c|execute_c|MipsAlu|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~60_combout\ = ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(13) $ (\mips_0|datapath_c|execute_c|MipsAlu|Add0~18_combout\ $ (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~59\)))) # (GND)
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~61\ = CARRY((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(13) & ((\mips_0|datapath_c|execute_c|MipsAlu|Add0~18_combout\) # (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~59\))) # 
-- (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(13) & (\mips_0|datapath_c|execute_c|MipsAlu|Add0~18_combout\ & !\mips_0|datapath_c|execute_c|MipsAlu|Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(13),
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Add0~18_combout\,
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|Add0~59\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~60_combout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~61\);

-- Location: LCCOMB_X25_Y21_N14
\mips_0|datapath_c|execute_c|MipsAlu|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~62_combout\ = (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(14) & ((\mips_0|datapath_c|execute_c|MipsAlu|Add0~17_combout\ & (\mips_0|datapath_c|execute_c|MipsAlu|Add0~61\ & VCC)) # 
-- (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~17_combout\ & (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~61\)))) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(14) & ((\mips_0|datapath_c|execute_c|MipsAlu|Add0~17_combout\ & 
-- (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~61\)) # (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~17_combout\ & ((\mips_0|datapath_c|execute_c|MipsAlu|Add0~61\) # (GND)))))
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~63\ = CARRY((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(14) & (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~17_combout\ & !\mips_0|datapath_c|execute_c|MipsAlu|Add0~61\)) # 
-- (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(14) & ((!\mips_0|datapath_c|execute_c|MipsAlu|Add0~61\) # (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(14),
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Add0~17_combout\,
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|Add0~61\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~62_combout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~63\);

-- Location: LCCOMB_X25_Y21_N16
\mips_0|datapath_c|execute_c|MipsAlu|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~64_combout\ = ((\mips_0|datapath_c|execute_c|MipsAlu|Add0~16_combout\ $ (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(15) $ (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~63\)))) # (GND)
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~65\ = CARRY((\mips_0|datapath_c|execute_c|MipsAlu|Add0~16_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(15)) # (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~63\))) # 
-- (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~16_combout\ & (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(15) & !\mips_0|datapath_c|execute_c|MipsAlu|Add0~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|MipsAlu|Add0~16_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(15),
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|Add0~63\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~64_combout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~65\);

-- Location: LCCOMB_X25_Y21_N18
\mips_0|datapath_c|execute_c|MipsAlu|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~66_combout\ = (\mips_0|datapath_c|execute_c|MipsAlu|Add0~15_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(16) & (\mips_0|datapath_c|execute_c|MipsAlu|Add0~65\ & VCC)) # 
-- (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(16) & (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~65\)))) # (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~15_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(16) & 
-- (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~65\)) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(16) & ((\mips_0|datapath_c|execute_c|MipsAlu|Add0~65\) # (GND)))))
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~67\ = CARRY((\mips_0|datapath_c|execute_c|MipsAlu|Add0~15_combout\ & (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(16) & !\mips_0|datapath_c|execute_c|MipsAlu|Add0~65\)) # 
-- (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~15_combout\ & ((!\mips_0|datapath_c|execute_c|MipsAlu|Add0~65\) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|MipsAlu|Add0~15_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(16),
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|Add0~65\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~66_combout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~67\);

-- Location: LCCOMB_X25_Y21_N20
\mips_0|datapath_c|execute_c|MipsAlu|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~68_combout\ = ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(17) $ (\mips_0|datapath_c|execute_c|MipsAlu|Add0~14_combout\ $ (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~67\)))) # (GND)
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~69\ = CARRY((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(17) & ((\mips_0|datapath_c|execute_c|MipsAlu|Add0~14_combout\) # (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~67\))) # 
-- (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(17) & (\mips_0|datapath_c|execute_c|MipsAlu|Add0~14_combout\ & !\mips_0|datapath_c|execute_c|MipsAlu|Add0~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(17),
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Add0~14_combout\,
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|Add0~67\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~68_combout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~69\);

-- Location: LCCOMB_X25_Y21_N22
\mips_0|datapath_c|execute_c|MipsAlu|Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~70_combout\ = (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(18) & ((\mips_0|datapath_c|execute_c|MipsAlu|Add0~13_combout\ & (\mips_0|datapath_c|execute_c|MipsAlu|Add0~69\ & VCC)) # 
-- (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~13_combout\ & (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~69\)))) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(18) & ((\mips_0|datapath_c|execute_c|MipsAlu|Add0~13_combout\ & 
-- (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~69\)) # (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~13_combout\ & ((\mips_0|datapath_c|execute_c|MipsAlu|Add0~69\) # (GND)))))
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~71\ = CARRY((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(18) & (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~13_combout\ & !\mips_0|datapath_c|execute_c|MipsAlu|Add0~69\)) # 
-- (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(18) & ((!\mips_0|datapath_c|execute_c|MipsAlu|Add0~69\) # (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(18),
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Add0~13_combout\,
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|Add0~69\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~70_combout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~71\);

-- Location: LCCOMB_X25_Y21_N24
\mips_0|datapath_c|execute_c|MipsAlu|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~72_combout\ = ((\mips_0|datapath_c|execute_c|MipsAlu|Add0~12_combout\ $ (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(19) $ (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~71\)))) # (GND)
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~73\ = CARRY((\mips_0|datapath_c|execute_c|MipsAlu|Add0~12_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(19)) # (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~71\))) # 
-- (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~12_combout\ & (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(19) & !\mips_0|datapath_c|execute_c|MipsAlu|Add0~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|MipsAlu|Add0~12_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(19),
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|Add0~71\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~72_combout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~73\);

-- Location: LCCOMB_X25_Y21_N26
\mips_0|datapath_c|execute_c|MipsAlu|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~74_combout\ = (\mips_0|datapath_c|execute_c|MipsAlu|Add0~11_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(20) & (\mips_0|datapath_c|execute_c|MipsAlu|Add0~73\ & VCC)) # 
-- (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(20) & (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~73\)))) # (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~11_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(20) & 
-- (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~73\)) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(20) & ((\mips_0|datapath_c|execute_c|MipsAlu|Add0~73\) # (GND)))))
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~75\ = CARRY((\mips_0|datapath_c|execute_c|MipsAlu|Add0~11_combout\ & (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(20) & !\mips_0|datapath_c|execute_c|MipsAlu|Add0~73\)) # 
-- (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~11_combout\ & ((!\mips_0|datapath_c|execute_c|MipsAlu|Add0~73\) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|MipsAlu|Add0~11_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(20),
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|Add0~73\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~74_combout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~75\);

-- Location: LCCOMB_X25_Y21_N28
\mips_0|datapath_c|execute_c|MipsAlu|Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~76_combout\ = ((\mips_0|datapath_c|execute_c|MipsAlu|Add0~10_combout\ $ (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(21) $ (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~75\)))) # (GND)
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~77\ = CARRY((\mips_0|datapath_c|execute_c|MipsAlu|Add0~10_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(21)) # (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~75\))) # 
-- (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~10_combout\ & (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(21) & !\mips_0|datapath_c|execute_c|MipsAlu|Add0~75\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|MipsAlu|Add0~10_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(21),
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|Add0~75\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~76_combout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~77\);

-- Location: LCCOMB_X25_Y21_N30
\mips_0|datapath_c|execute_c|MipsAlu|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~78_combout\ = (\mips_0|datapath_c|execute_c|MipsAlu|Add0~9_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(22) & (\mips_0|datapath_c|execute_c|MipsAlu|Add0~77\ & VCC)) # 
-- (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(22) & (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~77\)))) # (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~9_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(22) & 
-- (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~77\)) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(22) & ((\mips_0|datapath_c|execute_c|MipsAlu|Add0~77\) # (GND)))))
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~79\ = CARRY((\mips_0|datapath_c|execute_c|MipsAlu|Add0~9_combout\ & (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(22) & !\mips_0|datapath_c|execute_c|MipsAlu|Add0~77\)) # 
-- (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~9_combout\ & ((!\mips_0|datapath_c|execute_c|MipsAlu|Add0~77\) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|MipsAlu|Add0~9_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(22),
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|Add0~77\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~78_combout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~79\);

-- Location: LCCOMB_X25_Y20_N0
\mips_0|datapath_c|execute_c|MipsAlu|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~80_combout\ = ((\mips_0|datapath_c|execute_c|MipsAlu|Add0~8_combout\ $ (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(23) $ (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~79\)))) # (GND)
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~81\ = CARRY((\mips_0|datapath_c|execute_c|MipsAlu|Add0~8_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(23)) # (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~79\))) # 
-- (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~8_combout\ & (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(23) & !\mips_0|datapath_c|execute_c|MipsAlu|Add0~79\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|MipsAlu|Add0~8_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(23),
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|Add0~79\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~80_combout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~81\);

-- Location: LCCOMB_X25_Y20_N2
\mips_0|datapath_c|execute_c|MipsAlu|Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~82_combout\ = (\mips_0|datapath_c|execute_c|MipsAlu|Add0~7_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(24) & (\mips_0|datapath_c|execute_c|MipsAlu|Add0~81\ & VCC)) # 
-- (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(24) & (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~81\)))) # (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~7_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(24) & 
-- (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~81\)) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(24) & ((\mips_0|datapath_c|execute_c|MipsAlu|Add0~81\) # (GND)))))
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~83\ = CARRY((\mips_0|datapath_c|execute_c|MipsAlu|Add0~7_combout\ & (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(24) & !\mips_0|datapath_c|execute_c|MipsAlu|Add0~81\)) # 
-- (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~7_combout\ & ((!\mips_0|datapath_c|execute_c|MipsAlu|Add0~81\) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|MipsAlu|Add0~7_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(24),
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|Add0~81\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~82_combout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~83\);

-- Location: LCCOMB_X25_Y20_N4
\mips_0|datapath_c|execute_c|MipsAlu|Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~84_combout\ = ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(25) $ (\mips_0|datapath_c|execute_c|MipsAlu|Add0~6_combout\ $ (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~83\)))) # (GND)
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~85\ = CARRY((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(25) & ((\mips_0|datapath_c|execute_c|MipsAlu|Add0~6_combout\) # (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~83\))) # 
-- (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(25) & (\mips_0|datapath_c|execute_c|MipsAlu|Add0~6_combout\ & !\mips_0|datapath_c|execute_c|MipsAlu|Add0~83\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(25),
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Add0~6_combout\,
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|Add0~83\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~84_combout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~85\);

-- Location: LCCOMB_X25_Y20_N6
\mips_0|datapath_c|execute_c|MipsAlu|Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~86_combout\ = (\mips_0|datapath_c|execute_c|MipsAlu|Add0~5_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(26) & (\mips_0|datapath_c|execute_c|MipsAlu|Add0~85\ & VCC)) # 
-- (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(26) & (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~85\)))) # (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~5_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(26) & 
-- (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~85\)) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(26) & ((\mips_0|datapath_c|execute_c|MipsAlu|Add0~85\) # (GND)))))
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~87\ = CARRY((\mips_0|datapath_c|execute_c|MipsAlu|Add0~5_combout\ & (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(26) & !\mips_0|datapath_c|execute_c|MipsAlu|Add0~85\)) # 
-- (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~5_combout\ & ((!\mips_0|datapath_c|execute_c|MipsAlu|Add0~85\) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|MipsAlu|Add0~5_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(26),
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|Add0~85\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~86_combout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~87\);

-- Location: LCCOMB_X25_Y20_N8
\mips_0|datapath_c|execute_c|MipsAlu|Add0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~88_combout\ = ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(27) $ (\mips_0|datapath_c|execute_c|MipsAlu|Add0~4_combout\ $ (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~87\)))) # (GND)
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~89\ = CARRY((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(27) & ((\mips_0|datapath_c|execute_c|MipsAlu|Add0~4_combout\) # (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~87\))) # 
-- (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(27) & (\mips_0|datapath_c|execute_c|MipsAlu|Add0~4_combout\ & !\mips_0|datapath_c|execute_c|MipsAlu|Add0~87\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(27),
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Add0~4_combout\,
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|Add0~87\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~88_combout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~89\);

-- Location: LCCOMB_X25_Y20_N10
\mips_0|datapath_c|execute_c|MipsAlu|Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~90_combout\ = (\mips_0|datapath_c|execute_c|MipsAlu|Add0~3_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(28) & (\mips_0|datapath_c|execute_c|MipsAlu|Add0~89\ & VCC)) # 
-- (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(28) & (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~89\)))) # (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~3_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(28) & 
-- (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~89\)) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(28) & ((\mips_0|datapath_c|execute_c|MipsAlu|Add0~89\) # (GND)))))
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~91\ = CARRY((\mips_0|datapath_c|execute_c|MipsAlu|Add0~3_combout\ & (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(28) & !\mips_0|datapath_c|execute_c|MipsAlu|Add0~89\)) # 
-- (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~3_combout\ & ((!\mips_0|datapath_c|execute_c|MipsAlu|Add0~89\) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|MipsAlu|Add0~3_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(28),
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|Add0~89\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~90_combout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~91\);

-- Location: LCCOMB_X25_Y20_N12
\mips_0|datapath_c|execute_c|MipsAlu|Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~92_combout\ = ((\mips_0|datapath_c|execute_c|MipsAlu|Add0~2_combout\ $ (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(29) $ (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~91\)))) # (GND)
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~93\ = CARRY((\mips_0|datapath_c|execute_c|MipsAlu|Add0~2_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(29)) # (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~91\))) # 
-- (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~2_combout\ & (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(29) & !\mips_0|datapath_c|execute_c|MipsAlu|Add0~91\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|MipsAlu|Add0~2_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(29),
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|Add0~91\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~92_combout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~93\);

-- Location: LCCOMB_X25_Y20_N14
\mips_0|datapath_c|execute_c|MipsAlu|Add0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~94_combout\ = (\mips_0|datapath_c|execute_c|MipsAlu|Add0~1_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(30) & (\mips_0|datapath_c|execute_c|MipsAlu|Add0~93\ & VCC)) # 
-- (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(30) & (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~93\)))) # (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~1_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(30) & 
-- (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~93\)) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(30) & ((\mips_0|datapath_c|execute_c|MipsAlu|Add0~93\) # (GND)))))
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~95\ = CARRY((\mips_0|datapath_c|execute_c|MipsAlu|Add0~1_combout\ & (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(30) & !\mips_0|datapath_c|execute_c|MipsAlu|Add0~93\)) # 
-- (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~1_combout\ & ((!\mips_0|datapath_c|execute_c|MipsAlu|Add0~93\) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|MipsAlu|Add0~1_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(30),
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|Add0~93\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~94_combout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~95\);

-- Location: LCCOMB_X25_Y20_N16
\mips_0|datapath_c|execute_c|MipsAlu|Add0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~96_combout\ = \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(31) $ (\mips_0|datapath_c|execute_c|MipsAlu|Add0~95\ $ (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(31),
	datad => \mips_0|datapath_c|execute_c|MipsAlu|Add0~0_combout\,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|Add0~95\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~96_combout\);

-- Location: LCCOMB_X27_Y20_N8
\mips_0|datapath_c|execute_c|MipsAlu|Add0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~98_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (((!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & \mips_0|datapath_c|execute_c|MipsAlu|Add0~96_combout\)))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (\mips_0|datapath_c|execute_c|MipsAlu|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1),
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Mux0~0_combout\,
	datac => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	datad => \mips_0|datapath_c|execute_c|MipsAlu|Add0~96_combout\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~98_combout\);

-- Location: FF_X27_Y20_N9
\mips_0|datapath_c|execute_memory_c|AluOut_FF|q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_c|MipsAlu|Add0~98_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(31));

-- Location: LCCOMB_X28_Y21_N4
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[31]~feeder_combout\ = \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(31),
	combout => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[31]~feeder_combout\);

-- Location: FF_X28_Y21_N5
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[31]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(31));

-- Location: LCCOMB_X23_Y24_N24
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[29]~feeder_combout\ = \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(29),
	combout => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[29]~feeder_combout\);

-- Location: FF_X23_Y24_N25
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[29]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(29));

-- Location: FF_X26_Y20_N27
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	asdata => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(30),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(30));

-- Location: FF_X26_Y20_N17
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	asdata => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(31),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(31));

-- Location: M9K_X22_Y21_N0
\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "mips:mips_0|datapath:datapath_c|memory:memory_c|dmem:mem|altsyncram:ram_rtl_0|altsyncram_6c81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mips_0|datapath_c|execute_memory_c|MemWrite_FF|q~q\,
	portare => VCC,
	clk0 => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	portadatain => \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X23_Y24_N30
\mips_0|datapath_c|writeback_c|mux|y[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|writeback_c|mux|y[31]~1_combout\ = (\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (\mips_0|datapath_c|memory_c|mem|ram~39_q\ & ((\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a31\)))) # 
-- (!\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (((\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|memory_c|mem|ram~39_q\,
	datab => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(31),
	datac => \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a31\,
	datad => \mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\,
	combout => \mips_0|datapath_c|writeback_c|mux|y[31]~1_combout\);

-- Location: LCCOMB_X23_Y24_N26
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD2_FF|q[30]~30_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~71_q\ & ((\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a30\))) # 
-- (!\mips_0|datapath_c|decode_c|registers|memory~71_q\ & (\mips_0|datapath_c|decode_c|registers|memory~102_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory~102_q\,
	datab => \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a30\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~71_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[30]~30_combout\);

-- Location: LCCOMB_X23_Y24_N22
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[41]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[41]~feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[30]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|writeback_c|mux|y[30]~2_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[41]~feeder_combout\);

-- Location: FF_X23_Y24_N23
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[41]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(41));

-- Location: FF_X23_Y24_N27
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[30]~30_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(41),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal1~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(30));

-- Location: LCCOMB_X26_Y20_N14
\mips_0|datapath_c|execute_c|AluMux|y[30]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|AluMux|y[30]~1_combout\ = (\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & 
-- (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(30),
	datac => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|AluMux|y[30]~1_combout\);

-- Location: LCCOMB_X27_Y20_N6
\mips_0|datapath_c|execute_c|MipsAlu|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Mux1~0_combout\ = (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(30) & ((\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0)) # (\mips_0|datapath_c|execute_c|AluMux|y[30]~1_combout\ $ 
-- (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2))))) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(30) & (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & (\mips_0|datapath_c|execute_c|AluMux|y[30]~1_combout\ $ 
-- (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|AluMux|y[30]~1_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(30),
	datac => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Mux1~0_combout\);

-- Location: LCCOMB_X27_Y20_N26
\mips_0|datapath_c|execute_c|MipsAlu|Add0~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~99_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (((!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & \mips_0|datapath_c|execute_c|MipsAlu|Add0~94_combout\)))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (\mips_0|datapath_c|execute_c|MipsAlu|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|MipsAlu|Mux1~0_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	datac => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1),
	datad => \mips_0|datapath_c|execute_c|MipsAlu|Add0~94_combout\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~99_combout\);

-- Location: FF_X27_Y20_N27
\mips_0|datapath_c|execute_memory_c|AluOut_FF|q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_c|MipsAlu|Add0~99_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(30));

-- Location: LCCOMB_X27_Y20_N30
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[30]~feeder_combout\ = \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(30),
	combout => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[30]~feeder_combout\);

-- Location: FF_X27_Y20_N31
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[30]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(30));

-- Location: LCCOMB_X23_Y19_N22
\mips_0|datapath_c|writeback_c|mux|y[30]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|writeback_c|mux|y[30]~2_combout\ = (\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (((\mips_0|datapath_c|memory_c|mem|ram~39_q\ & \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a30\)))) # 
-- (!\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(30),
	datab => \mips_0|datapath_c|memory_c|mem|ram~39_q\,
	datac => \mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\,
	datad => \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a30\,
	combout => \mips_0|datapath_c|writeback_c|mux|y[30]~2_combout\);

-- Location: LCCOMB_X23_Y24_N2
\mips_0|datapath_c|decode_c|registers|memory~100feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~100feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[28]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|writeback_c|mux|y[28]~4_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~100feeder_combout\);

-- Location: FF_X23_Y24_N3
\mips_0|datapath_c|decode_c|registers|memory~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~100feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~100_q\);

-- Location: LCCOMB_X23_Y24_N28
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD2_FF|q[28]~28_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~71_q\ & (\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a28\)) # (!\mips_0|datapath_c|decode_c|registers|memory~71_q\ 
-- & ((\mips_0|datapath_c|decode_c|registers|memory~100_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a28\,
	datab => \mips_0|datapath_c|decode_c|registers|memory~100_q\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~71_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[28]~28_combout\);

-- Location: LCCOMB_X23_Y24_N14
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[39]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[39]~feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[28]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|writeback_c|mux|y[28]~4_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[39]~feeder_combout\);

-- Location: FF_X23_Y24_N15
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[39]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(39));

-- Location: FF_X23_Y24_N29
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[28]~28_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(39),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal1~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(28));

-- Location: LCCOMB_X24_Y20_N22
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[28]~feeder_combout\ = \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(28),
	combout => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[28]~feeder_combout\);

-- Location: FF_X24_Y20_N23
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[28]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(28));

-- Location: LCCOMB_X26_Y20_N0
\mips_0|datapath_c|execute_c|AluMux|y[29]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|AluMux|y[29]~2_combout\ = (\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & 
-- (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(29),
	datac => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|AluMux|y[29]~2_combout\);

-- Location: LCCOMB_X27_Y20_N16
\mips_0|datapath_c|execute_c|MipsAlu|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Mux2~0_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(29)) # (\mips_0|datapath_c|execute_c|AluMux|y[29]~2_combout\ $ 
-- (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2))))) # (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(29) & (\mips_0|datapath_c|execute_c|AluMux|y[29]~2_combout\ $ 
-- (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|AluMux|y[29]~2_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	datac => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(29),
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Mux2~0_combout\);

-- Location: LCCOMB_X27_Y20_N28
\mips_0|datapath_c|execute_c|MipsAlu|Add0~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~100_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (((!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & \mips_0|datapath_c|execute_c|MipsAlu|Add0~92_combout\)))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (\mips_0|datapath_c|execute_c|MipsAlu|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1),
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Mux2~0_combout\,
	datac => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	datad => \mips_0|datapath_c|execute_c|MipsAlu|Add0~92_combout\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~100_combout\);

-- Location: FF_X27_Y20_N29
\mips_0|datapath_c|execute_memory_c|AluOut_FF|q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_c|MipsAlu|Add0~100_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(29));

-- Location: LCCOMB_X27_Y20_N24
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[29]~feeder_combout\ = \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(29),
	combout => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[29]~feeder_combout\);

-- Location: FF_X27_Y20_N25
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[29]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(29));

-- Location: LCCOMB_X21_Y24_N16
\mips_0|datapath_c|writeback_c|mux|y[29]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|writeback_c|mux|y[29]~3_combout\ = (\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a29\ & ((\mips_0|datapath_c|memory_c|mem|ram~39_q\)))) # 
-- (!\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (((\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a29\,
	datab => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(29),
	datac => \mips_0|datapath_c|memory_c|mem|ram~39_q\,
	datad => \mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\,
	combout => \mips_0|datapath_c|writeback_c|mux|y[29]~3_combout\);

-- Location: LCCOMB_X20_Y23_N20
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD2_FF|q[27]~27_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~71_q\ & ((\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a27\))) # 
-- (!\mips_0|datapath_c|decode_c|registers|memory~71_q\ & (\mips_0|datapath_c|decode_c|registers|memory~99_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory~99_q\,
	datab => \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a27\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~71_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[27]~27_combout\);

-- Location: LCCOMB_X21_Y24_N26
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[38]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[38]~feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[27]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[27]~5_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[38]~feeder_combout\);

-- Location: FF_X21_Y24_N27
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[38]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(38));

-- Location: FF_X20_Y23_N21
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[27]~27_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(38),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal1~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(27));

-- Location: LCCOMB_X23_Y20_N24
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[27]~feeder_combout\ = \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(27),
	combout => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[27]~feeder_combout\);

-- Location: FF_X23_Y20_N25
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[27]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(27));

-- Location: LCCOMB_X24_Y20_N18
\mips_0|datapath_c|execute_c|AluMux|y[28]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|AluMux|y[28]~3_combout\ = (\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & 
-- (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datac => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(28),
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|AluMux|y[28]~3_combout\);

-- Location: LCCOMB_X27_Y20_N10
\mips_0|datapath_c|execute_c|MipsAlu|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Mux3~0_combout\ = (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(28) & ((\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0)) # (\mips_0|datapath_c|execute_c|AluMux|y[28]~3_combout\ $ 
-- (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2))))) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(28) & (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & (\mips_0|datapath_c|execute_c|AluMux|y[28]~3_combout\ $ 
-- (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|AluMux|y[28]~3_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(28),
	datac => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Mux3~0_combout\);

-- Location: LCCOMB_X27_Y20_N22
\mips_0|datapath_c|execute_c|MipsAlu|Add0~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~101_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (\mips_0|datapath_c|execute_c|MipsAlu|Add0~90_combout\ & (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0)))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (((\mips_0|datapath_c|execute_c|MipsAlu|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1),
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Add0~90_combout\,
	datac => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	datad => \mips_0|datapath_c|execute_c|MipsAlu|Mux3~0_combout\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~101_combout\);

-- Location: FF_X27_Y20_N23
\mips_0|datapath_c|execute_memory_c|AluOut_FF|q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_c|MipsAlu|Add0~101_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(28));

-- Location: LCCOMB_X21_Y24_N8
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[28]~feeder_combout\ = \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(28),
	combout => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[28]~feeder_combout\);

-- Location: FF_X21_Y24_N9
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[28]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(28));

-- Location: LCCOMB_X21_Y24_N4
\mips_0|datapath_c|writeback_c|mux|y[28]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|writeback_c|mux|y[28]~4_combout\ = (\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a28\ & (\mips_0|datapath_c|memory_c|mem|ram~39_q\))) # 
-- (!\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (((\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a28\,
	datab => \mips_0|datapath_c|memory_c|mem|ram~39_q\,
	datac => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(28),
	datad => \mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\,
	combout => \mips_0|datapath_c|writeback_c|mux|y[28]~4_combout\);

-- Location: LCCOMB_X21_Y24_N20
\mips_0|datapath_c|decode_c|registers|memory~66feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~66feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[27]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[27]~5_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~66feeder_combout\);

-- Location: FF_X21_Y24_N21
\mips_0|datapath_c|decode_c|registers|memory~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~66feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~66_q\);

-- Location: LCCOMB_X21_Y24_N6
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[27]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD1_FF|q[27]~10_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~38_q\ & (\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a27\)) # (!\mips_0|datapath_c|decode_c|registers|memory~38_q\ 
-- & ((\mips_0|datapath_c|decode_c|registers|memory~66_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a27\,
	datab => \mips_0|datapath_c|decode_c|registers|memory~66_q\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~38_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[27]~10_combout\);

-- Location: FF_X21_Y24_N29
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|writeback_c|mux|y[27]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(38));

-- Location: FF_X21_Y24_N7
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[27]~10_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(38),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal0~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(27));

-- Location: LCCOMB_X23_Y20_N0
\mips_0|datapath_c|execute_c|AluMux|y[27]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|AluMux|y[27]~4_combout\ = (\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & 
-- (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(27),
	datac => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|AluMux|y[27]~4_combout\);

-- Location: LCCOMB_X23_Y20_N18
\mips_0|datapath_c|execute_c|MipsAlu|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Mux4~0_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(27)) # (\mips_0|datapath_c|execute_c|AluMux|y[27]~4_combout\ $ 
-- (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2))))) # (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(27) & (\mips_0|datapath_c|execute_c|AluMux|y[27]~4_combout\ $ 
-- (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	datab => \mips_0|datapath_c|execute_c|AluMux|y[27]~4_combout\,
	datac => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datad => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(27),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Mux4~0_combout\);

-- Location: LCCOMB_X27_Y20_N0
\mips_0|datapath_c|execute_c|MipsAlu|Add0~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~102_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (\mips_0|datapath_c|execute_c|MipsAlu|Add0~88_combout\ & (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0)))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (((\mips_0|datapath_c|execute_c|MipsAlu|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1),
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Add0~88_combout\,
	datac => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	datad => \mips_0|datapath_c|execute_c|MipsAlu|Mux4~0_combout\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~102_combout\);

-- Location: FF_X27_Y20_N1
\mips_0|datapath_c|execute_memory_c|AluOut_FF|q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_c|MipsAlu|Add0~102_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(27));

-- Location: LCCOMB_X21_Y24_N10
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[27]~feeder_combout\ = \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(27),
	combout => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[27]~feeder_combout\);

-- Location: FF_X21_Y24_N11
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[27]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(27));

-- Location: LCCOMB_X21_Y24_N28
\mips_0|datapath_c|writeback_c|mux|y[27]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|writeback_c|mux|y[27]~5_combout\ = (\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (((\mips_0|datapath_c|memory_c|mem|ram~39_q\ & \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a27\)))) # 
-- (!\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(27),
	datab => \mips_0|datapath_c|memory_c|mem|ram~39_q\,
	datac => \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a27\,
	datad => \mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\,
	combout => \mips_0|datapath_c|writeback_c|mux|y[27]~5_combout\);

-- Location: LCCOMB_X21_Y20_N22
\mips_0|datapath_c|decode_c|registers|memory~98feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~98feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[26]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|writeback_c|mux|y[26]~6_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~98feeder_combout\);

-- Location: FF_X21_Y20_N23
\mips_0|datapath_c|decode_c|registers|memory~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~98feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~98_q\);

-- Location: LCCOMB_X21_Y23_N28
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD2_FF|q[26]~26_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~71_q\ & (\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a26\)) # (!\mips_0|datapath_c|decode_c|registers|memory~71_q\ 
-- & ((\mips_0|datapath_c|decode_c|registers|memory~98_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a26\,
	datab => \mips_0|datapath_c|decode_c|registers|memory~98_q\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~71_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[26]~26_combout\);

-- Location: LCCOMB_X21_Y20_N16
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[37]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[37]~feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[26]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|writeback_c|mux|y[26]~6_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[37]~feeder_combout\);

-- Location: FF_X21_Y20_N17
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[37]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(37));

-- Location: FF_X21_Y23_N29
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[26]~26_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(37),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal1~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(26));

-- Location: LCCOMB_X24_Y20_N8
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[26]~feeder_combout\ = \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(26),
	combout => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[26]~feeder_combout\);

-- Location: FF_X24_Y20_N9
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[26]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(26));

-- Location: LCCOMB_X24_Y20_N20
\mips_0|datapath_c|execute_c|AluMux|y[26]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|AluMux|y[26]~5_combout\ = (\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & 
-- (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(26),
	datac => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|AluMux|y[26]~5_combout\);

-- Location: LCCOMB_X25_Y20_N26
\mips_0|datapath_c|execute_c|MipsAlu|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Mux5~0_combout\ = (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(26) & ((\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0)) # (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ 
-- (\mips_0|datapath_c|execute_c|AluMux|y[26]~5_combout\)))) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(26) & (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ 
-- (\mips_0|datapath_c|execute_c|AluMux|y[26]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(26),
	datac => \mips_0|datapath_c|execute_c|AluMux|y[26]~5_combout\,
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Mux5~0_combout\);

-- Location: LCCOMB_X25_Y20_N18
\mips_0|datapath_c|execute_c|MipsAlu|Add0~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~103_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (((\mips_0|datapath_c|execute_c|MipsAlu|Add0~86_combout\ & !\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0))))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (\mips_0|datapath_c|execute_c|MipsAlu|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|MipsAlu|Mux5~0_combout\,
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Add0~86_combout\,
	datac => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1),
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~103_combout\);

-- Location: FF_X25_Y20_N19
\mips_0|datapath_c|execute_memory_c|AluOut_FF|q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_c|MipsAlu|Add0~103_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(26));

-- Location: LCCOMB_X21_Y20_N4
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[26]~feeder_combout\ = \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(26),
	combout => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[26]~feeder_combout\);

-- Location: FF_X21_Y20_N5
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[26]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(26));

-- Location: LCCOMB_X21_Y20_N6
\mips_0|datapath_c|writeback_c|mux|y[26]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|writeback_c|mux|y[26]~6_combout\ = (\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a26\ & (\mips_0|datapath_c|memory_c|mem|ram~39_q\))) # 
-- (!\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (((\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a26\,
	datab => \mips_0|datapath_c|memory_c|mem|ram~39_q\,
	datac => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(26),
	datad => \mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\,
	combout => \mips_0|datapath_c|writeback_c|mux|y[26]~6_combout\);

-- Location: LCCOMB_X21_Y23_N20
\mips_0|datapath_c|decode_c|registers|memory~97feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~97feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[25]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|writeback_c|mux|y[25]~7_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~97feeder_combout\);

-- Location: FF_X21_Y23_N21
\mips_0|datapath_c|decode_c|registers|memory~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~97feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~97_q\);

-- Location: LCCOMB_X21_Y23_N2
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD2_FF|q[25]~25_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~71_q\ & (\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a25\)) # (!\mips_0|datapath_c|decode_c|registers|memory~71_q\ 
-- & ((\mips_0|datapath_c|decode_c|registers|memory~97_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a25\,
	datab => \mips_0|datapath_c|decode_c|registers|memory~97_q\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~71_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[25]~25_combout\);

-- Location: LCCOMB_X21_Y23_N22
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[36]~feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[25]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|writeback_c|mux|y[25]~7_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[36]~feeder_combout\);

-- Location: FF_X21_Y23_N23
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(36));

-- Location: FF_X21_Y23_N3
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[25]~25_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(36),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal1~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(25));

-- Location: LCCOMB_X24_Y20_N30
\mips_0|datapath_c|execute_c|AluMux|y[25]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|AluMux|y[25]~6_combout\ = (\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & 
-- (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(25),
	datac => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|AluMux|y[25]~6_combout\);

-- Location: LCCOMB_X25_Y20_N20
\mips_0|datapath_c|execute_c|MipsAlu|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Mux6~0_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(25)) # (\mips_0|datapath_c|execute_c|AluMux|y[25]~6_combout\ $ 
-- (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2))))) # (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(25) & (\mips_0|datapath_c|execute_c|AluMux|y[25]~6_combout\ $ 
-- (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|AluMux|y[25]~6_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	datac => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(25),
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Mux6~0_combout\);

-- Location: LCCOMB_X25_Y20_N28
\mips_0|datapath_c|execute_c|MipsAlu|Add0~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~104_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (((\mips_0|datapath_c|execute_c|MipsAlu|Add0~84_combout\ & !\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0))))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (\mips_0|datapath_c|execute_c|MipsAlu|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1),
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Mux6~0_combout\,
	datac => \mips_0|datapath_c|execute_c|MipsAlu|Add0~84_combout\,
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~104_combout\);

-- Location: FF_X25_Y20_N29
\mips_0|datapath_c|execute_memory_c|AluOut_FF|q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_c|MipsAlu|Add0~104_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(25));

-- Location: LCCOMB_X20_Y22_N26
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[25]~feeder_combout\ = \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(25),
	combout => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[25]~feeder_combout\);

-- Location: FF_X20_Y22_N27
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[25]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(25));

-- Location: LCCOMB_X20_Y22_N14
\mips_0|datapath_c|writeback_c|mux|y[25]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|writeback_c|mux|y[25]~7_combout\ = (\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (((\mips_0|datapath_c|memory_c|mem|ram~39_q\ & \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a25\)))) # 
-- (!\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(25),
	datab => \mips_0|datapath_c|memory_c|mem|ram~39_q\,
	datac => \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a25\,
	datad => \mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\,
	combout => \mips_0|datapath_c|writeback_c|mux|y[25]~7_combout\);

-- Location: LCCOMB_X21_Y23_N0
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD2_FF|q[24]~24_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~71_q\ & ((\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a24\))) # 
-- (!\mips_0|datapath_c|decode_c|registers|memory~71_q\ & (\mips_0|datapath_c|decode_c|registers|memory~96_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory~96_q\,
	datab => \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a24\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~71_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[24]~24_combout\);

-- Location: LCCOMB_X21_Y23_N26
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[35]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[35]~feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[24]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[24]~8_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[35]~feeder_combout\);

-- Location: FF_X21_Y23_N27
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[35]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(35));

-- Location: FF_X21_Y23_N1
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[24]~24_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(35),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal1~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(24));

-- Location: LCCOMB_X24_Y20_N14
\mips_0|datapath_c|execute_c|MipsAlu|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~7_combout\ = \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ (((\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datab => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datac => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(24),
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~7_combout\);

-- Location: LCCOMB_X24_Y20_N0
\mips_0|datapath_c|execute_c|AluMux|y[24]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|AluMux|y[24]~7_combout\ = (\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & 
-- (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datac => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(24),
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|AluMux|y[24]~7_combout\);

-- Location: LCCOMB_X25_Y20_N30
\mips_0|datapath_c|execute_c|MipsAlu|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Mux7~0_combout\ = (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(24) & ((\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0)) # (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ 
-- (\mips_0|datapath_c|execute_c|AluMux|y[24]~7_combout\)))) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(24) & (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ 
-- (\mips_0|datapath_c|execute_c|AluMux|y[24]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datab => \mips_0|datapath_c|execute_c|AluMux|y[24]~7_combout\,
	datac => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(24),
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Mux7~0_combout\);

-- Location: LCCOMB_X25_Y20_N22
\mips_0|datapath_c|execute_c|MipsAlu|Add0~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~105_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (\mips_0|datapath_c|execute_c|MipsAlu|Add0~82_combout\ & ((!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0))))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (((\mips_0|datapath_c|execute_c|MipsAlu|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1),
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Add0~82_combout\,
	datac => \mips_0|datapath_c|execute_c|MipsAlu|Mux7~0_combout\,
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~105_combout\);

-- Location: FF_X25_Y20_N23
\mips_0|datapath_c|execute_memory_c|AluOut_FF|q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_c|MipsAlu|Add0~105_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(24));

-- Location: LCCOMB_X21_Y20_N10
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[24]~feeder_combout\ = \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(24),
	combout => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[24]~feeder_combout\);

-- Location: FF_X21_Y20_N11
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[24]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(24));

-- Location: LCCOMB_X21_Y20_N8
\mips_0|datapath_c|writeback_c|mux|y[24]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|writeback_c|mux|y[24]~8_combout\ = (\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (((\mips_0|datapath_c|memory_c|mem|ram~39_q\ & \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a24\)))) # 
-- (!\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(24),
	datab => \mips_0|datapath_c|memory_c|mem|ram~39_q\,
	datac => \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a24\,
	datad => \mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\,
	combout => \mips_0|datapath_c|writeback_c|mux|y[24]~8_combout\);

-- Location: LCCOMB_X21_Y23_N16
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD2_FF|q[23]~23_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~71_q\ & ((\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a23\))) # 
-- (!\mips_0|datapath_c|decode_c|registers|memory~71_q\ & (\mips_0|datapath_c|decode_c|registers|memory~95_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory~95_q\,
	datab => \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a23\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~71_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[23]~23_combout\);

-- Location: LCCOMB_X21_Y23_N4
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[34]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[34]~feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[23]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[23]~9_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[34]~feeder_combout\);

-- Location: FF_X21_Y23_N5
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(34));

-- Location: FF_X21_Y23_N17
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[23]~23_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(34),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal1~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(23));

-- Location: FF_X29_Y21_N15
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	asdata => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(23),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(23));

-- Location: LCCOMB_X29_Y21_N2
\mips_0|datapath_c|execute_c|AluMux|y[23]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|AluMux|y[23]~8_combout\ = (\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & 
-- (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datab => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(23),
	datac => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|AluMux|y[23]~8_combout\);

-- Location: LCCOMB_X29_Y21_N20
\mips_0|datapath_c|execute_c|MipsAlu|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Mux8~0_combout\ = (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(23) & ((\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0)) # (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ 
-- (\mips_0|datapath_c|execute_c|AluMux|y[23]~8_combout\)))) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(23) & (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ 
-- (\mips_0|datapath_c|execute_c|AluMux|y[23]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(23),
	datab => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	datac => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datad => \mips_0|datapath_c|execute_c|AluMux|y[23]~8_combout\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Mux8~0_combout\);

-- Location: LCCOMB_X29_Y21_N0
\mips_0|datapath_c|execute_c|MipsAlu|Add0~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~106_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & (\mips_0|datapath_c|execute_c|MipsAlu|Add0~80_combout\))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (((\mips_0|datapath_c|execute_c|MipsAlu|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1),
	datab => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	datac => \mips_0|datapath_c|execute_c|MipsAlu|Add0~80_combout\,
	datad => \mips_0|datapath_c|execute_c|MipsAlu|Mux8~0_combout\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~106_combout\);

-- Location: FF_X29_Y21_N1
\mips_0|datapath_c|execute_memory_c|AluOut_FF|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_c|MipsAlu|Add0~106_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(23));

-- Location: LCCOMB_X21_Y22_N26
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[23]~feeder_combout\ = \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(23),
	combout => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[23]~feeder_combout\);

-- Location: FF_X21_Y22_N27
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[23]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(23));

-- Location: LCCOMB_X21_Y22_N18
\mips_0|datapath_c|writeback_c|mux|y[23]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|writeback_c|mux|y[23]~9_combout\ = (\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a23\ & (\mips_0|datapath_c|memory_c|mem|ram~39_q\))) # 
-- (!\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (((\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a23\,
	datab => \mips_0|datapath_c|memory_c|mem|ram~39_q\,
	datac => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(23),
	datad => \mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\,
	combout => \mips_0|datapath_c|writeback_c|mux|y[23]~9_combout\);

-- Location: LCCOMB_X21_Y23_N18
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD2_FF|q[22]~22_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~71_q\ & ((\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a22\))) # 
-- (!\mips_0|datapath_c|decode_c|registers|memory~71_q\ & (\mips_0|datapath_c|decode_c|registers|memory~94_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory~94_q\,
	datab => \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a22\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~71_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[22]~22_combout\);

-- Location: LCCOMB_X21_Y23_N14
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[33]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[33]~feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[22]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|writeback_c|mux|y[22]~10_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[33]~feeder_combout\);

-- Location: FF_X21_Y23_N15
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[33]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(33));

-- Location: FF_X21_Y23_N19
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[22]~22_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(33),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal1~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(22));

-- Location: LCCOMB_X29_Y21_N22
\mips_0|datapath_c|execute_c|MipsAlu|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~9_combout\ = \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ (((\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & (\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datab => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datac => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	datad => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(22),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~9_combout\);

-- Location: LCCOMB_X29_Y21_N30
\mips_0|datapath_c|execute_c|AluMux|y[22]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|AluMux|y[22]~9_combout\ = (\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & (\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4))) # (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & 
-- ((\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	datac => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datad => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(22),
	combout => \mips_0|datapath_c|execute_c|AluMux|y[22]~9_combout\);

-- Location: LCCOMB_X29_Y21_N16
\mips_0|datapath_c|execute_c|MipsAlu|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Mux9~0_combout\ = (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(22) & ((\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0)) # (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ 
-- (\mips_0|datapath_c|execute_c|AluMux|y[22]~9_combout\)))) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(22) & (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ 
-- (\mips_0|datapath_c|execute_c|AluMux|y[22]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(22),
	datab => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	datac => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datad => \mips_0|datapath_c|execute_c|AluMux|y[22]~9_combout\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Mux9~0_combout\);

-- Location: LCCOMB_X29_Y21_N18
\mips_0|datapath_c|execute_c|MipsAlu|Add0~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~107_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (\mips_0|datapath_c|execute_c|MipsAlu|Add0~78_combout\ & (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0)))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (((\mips_0|datapath_c|execute_c|MipsAlu|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1),
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Add0~78_combout\,
	datac => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	datad => \mips_0|datapath_c|execute_c|MipsAlu|Mux9~0_combout\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~107_combout\);

-- Location: FF_X29_Y21_N19
\mips_0|datapath_c|execute_memory_c|AluOut_FF|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_c|MipsAlu|Add0~107_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(22));

-- Location: LCCOMB_X21_Y22_N12
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[22]~feeder_combout\ = \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(22),
	combout => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[22]~feeder_combout\);

-- Location: FF_X21_Y22_N13
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[22]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(22));

-- Location: LCCOMB_X21_Y22_N22
\mips_0|datapath_c|writeback_c|mux|y[22]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|writeback_c|mux|y[22]~10_combout\ = (\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (((\mips_0|datapath_c|memory_c|mem|ram~39_q\ & \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a22\)))) # 
-- (!\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(22),
	datab => \mips_0|datapath_c|memory_c|mem|ram~39_q\,
	datac => \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a22\,
	datad => \mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\,
	combout => \mips_0|datapath_c|writeback_c|mux|y[22]~10_combout\);

-- Location: LCCOMB_X23_Y23_N12
\mips_0|datapath_c|decode_c|registers|memory~93feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~93feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[21]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|writeback_c|mux|y[21]~11_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~93feeder_combout\);

-- Location: FF_X23_Y23_N13
\mips_0|datapath_c|decode_c|registers|memory~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~93feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~93_q\);

-- Location: LCCOMB_X23_Y23_N24
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD2_FF|q[21]~21_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~71_q\ & (\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a21\)) # (!\mips_0|datapath_c|decode_c|registers|memory~71_q\ 
-- & ((\mips_0|datapath_c|decode_c|registers|memory~93_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory~71_q\,
	datab => \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a21\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~93_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[21]~21_combout\);

-- Location: LCCOMB_X23_Y23_N22
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[32]~feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[21]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|writeback_c|mux|y[21]~11_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[32]~feeder_combout\);

-- Location: FF_X23_Y23_N23
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(32));

-- Location: FF_X23_Y23_N25
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[21]~21_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(32),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal1~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(21));

-- Location: LCCOMB_X26_Y20_N28
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[21]~feeder_combout\ = \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(21),
	combout => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[21]~feeder_combout\);

-- Location: FF_X26_Y20_N29
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[21]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(21));

-- Location: LCCOMB_X26_Y20_N18
\mips_0|datapath_c|execute_c|AluMux|y[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|AluMux|y[21]~10_combout\ = (\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & 
-- (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(21),
	datac => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|AluMux|y[21]~10_combout\);

-- Location: LCCOMB_X26_Y21_N20
\mips_0|datapath_c|execute_c|MipsAlu|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Mux10~0_combout\ = (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(21) & ((\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0)) # (\mips_0|datapath_c|execute_c|AluMux|y[21]~10_combout\ $ 
-- (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2))))) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(21) & (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & (\mips_0|datapath_c|execute_c|AluMux|y[21]~10_combout\ $ 
-- (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(21),
	datab => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	datac => \mips_0|datapath_c|execute_c|AluMux|y[21]~10_combout\,
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Mux10~0_combout\);

-- Location: LCCOMB_X26_Y21_N24
\mips_0|datapath_c|execute_c|MipsAlu|Add0~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~108_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (\mips_0|datapath_c|execute_c|MipsAlu|Add0~76_combout\ & (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0)))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (((\mips_0|datapath_c|execute_c|MipsAlu|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1),
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Add0~76_combout\,
	datac => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	datad => \mips_0|datapath_c|execute_c|MipsAlu|Mux10~0_combout\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~108_combout\);

-- Location: FF_X26_Y21_N25
\mips_0|datapath_c|execute_memory_c|AluOut_FF|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_c|MipsAlu|Add0~108_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(21));

-- Location: LCCOMB_X26_Y21_N14
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[21]~feeder_combout\ = \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(21),
	combout => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[21]~feeder_combout\);

-- Location: FF_X26_Y21_N15
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[21]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(21));

-- Location: LCCOMB_X23_Y22_N22
\mips_0|datapath_c|writeback_c|mux|y[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|writeback_c|mux|y[21]~11_combout\ = (\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a21\ & ((\mips_0|datapath_c|memory_c|mem|ram~39_q\)))) # 
-- (!\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (((\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a21\,
	datab => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(21),
	datac => \mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\,
	datad => \mips_0|datapath_c|memory_c|mem|ram~39_q\,
	combout => \mips_0|datapath_c|writeback_c|mux|y[21]~11_combout\);

-- Location: LCCOMB_X23_Y23_N10
\mips_0|datapath_c|decode_c|registers|memory~91feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~91feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[19]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[19]~13_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~91feeder_combout\);

-- Location: FF_X23_Y23_N11
\mips_0|datapath_c|decode_c|registers|memory~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~91feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~91_q\);

-- Location: LCCOMB_X23_Y23_N20
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD2_FF|q[19]~19_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~71_q\ & (\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a19\)) # (!\mips_0|datapath_c|decode_c|registers|memory~71_q\ 
-- & ((\mips_0|datapath_c|decode_c|registers|memory~91_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory~71_q\,
	datab => \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a19\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~91_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[19]~19_combout\);

-- Location: LCCOMB_X23_Y23_N8
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[30]~feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[19]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[19]~13_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[30]~feeder_combout\);

-- Location: FF_X23_Y23_N9
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(30));

-- Location: FF_X23_Y23_N21
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[19]~19_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(30),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal1~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(19));

-- Location: LCCOMB_X23_Y21_N8
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[19]~feeder_combout\ = \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(19),
	combout => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[19]~feeder_combout\);

-- Location: FF_X23_Y21_N9
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[19]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(19));

-- Location: LCCOMB_X23_Y21_N20
\mips_0|datapath_c|execute_c|AluMux|y[19]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|AluMux|y[19]~12_combout\ = (\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & 
-- (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datac => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(19),
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|AluMux|y[19]~12_combout\);

-- Location: LCCOMB_X23_Y21_N26
\mips_0|datapath_c|execute_c|MipsAlu|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Mux12~0_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(19)) # (\mips_0|datapath_c|execute_c|AluMux|y[19]~12_combout\ $ 
-- (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2))))) # (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(19) & (\mips_0|datapath_c|execute_c|AluMux|y[19]~12_combout\ $ 
-- (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	datab => \mips_0|datapath_c|execute_c|AluMux|y[19]~12_combout\,
	datac => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datad => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(19),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Mux12~0_combout\);

-- Location: LCCOMB_X26_Y21_N12
\mips_0|datapath_c|execute_c|MipsAlu|Add0~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~110_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (((\mips_0|datapath_c|execute_c|MipsAlu|Add0~72_combout\ & !\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0))))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (\mips_0|datapath_c|execute_c|MipsAlu|Mux12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|MipsAlu|Mux12~0_combout\,
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Add0~72_combout\,
	datac => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~110_combout\);

-- Location: FF_X26_Y21_N13
\mips_0|datapath_c|execute_memory_c|AluOut_FF|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_c|MipsAlu|Add0~110_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(19));

-- Location: LCCOMB_X21_Y21_N2
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[19]~feeder_combout\ = \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(19),
	combout => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[19]~feeder_combout\);

-- Location: FF_X21_Y21_N3
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[19]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(19));

-- Location: LCCOMB_X21_Y21_N8
\mips_0|datapath_c|writeback_c|mux|y[19]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|writeback_c|mux|y[19]~13_combout\ = (\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a19\ & (\mips_0|datapath_c|memory_c|mem|ram~39_q\))) # 
-- (!\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (((\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a19\,
	datab => \mips_0|datapath_c|memory_c|mem|ram~39_q\,
	datac => \mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\,
	datad => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(19),
	combout => \mips_0|datapath_c|writeback_c|mux|y[19]~13_combout\);

-- Location: LCCOMB_X23_Y23_N6
\mips_0|datapath_c|decode_c|registers|memory~84feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~84feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[12]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[12]~20_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~84feeder_combout\);

-- Location: FF_X23_Y23_N7
\mips_0|datapath_c|decode_c|registers|memory~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~84feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~84_q\);

-- Location: LCCOMB_X23_Y23_N18
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD2_FF|q[12]~12_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~71_q\ & (\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a12\)) # (!\mips_0|datapath_c|decode_c|registers|memory~71_q\ 
-- & ((\mips_0|datapath_c|decode_c|registers|memory~84_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory~71_q\,
	datab => \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a12\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~84_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[12]~12_combout\);

-- Location: LCCOMB_X23_Y23_N30
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[23]~feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[12]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[12]~20_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[23]~feeder_combout\);

-- Location: FF_X23_Y23_N31
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(23));

-- Location: FF_X23_Y23_N19
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[12]~12_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(23),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal1~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(12));

-- Location: FF_X23_Y20_N23
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	asdata => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(12),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(12));

-- Location: LCCOMB_X29_Y21_N10
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[13]~feeder_combout\ = \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(13),
	combout => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[13]~feeder_combout\);

-- Location: FF_X29_Y21_N11
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[13]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(13));

-- Location: LCCOMB_X24_Y20_N6
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[14]~feeder_combout\ = \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(14),
	combout => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[14]~feeder_combout\);

-- Location: FF_X24_Y20_N7
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[14]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(14));

-- Location: LCCOMB_X23_Y20_N28
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[15]~feeder_combout\ = \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(15),
	combout => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[15]~feeder_combout\);

-- Location: FF_X23_Y20_N29
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[15]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(15));

-- Location: LCCOMB_X23_Y21_N28
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[16]~feeder_combout\ = \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(16),
	combout => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[16]~feeder_combout\);

-- Location: FF_X23_Y21_N29
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[16]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(16));

-- Location: FF_X23_Y20_N3
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	asdata => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(17),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(17));

-- Location: LCCOMB_X26_Y21_N2
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[18]~feeder_combout\ = \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(18),
	combout => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[18]~feeder_combout\);

-- Location: FF_X26_Y21_N3
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[18]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(18));

-- Location: M9K_X22_Y21_N0
\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "mips:mips_0|datapath:datapath_c|memory:memory_c|dmem:mem|altsyncram:ram_rtl_0|altsyncram_6c81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mips_0|datapath_c|execute_memory_c|MemWrite_FF|q~q\,
	portare => VCC,
	clk0 => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	portadatain => \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: LCCOMB_X26_Y21_N6
\mips_0|datapath_c|execute_c|AluMux|y[18]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|AluMux|y[18]~13_combout\ = (\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & 
-- (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datab => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(18),
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|AluMux|y[18]~13_combout\);

-- Location: LCCOMB_X26_Y21_N8
\mips_0|datapath_c|execute_c|MipsAlu|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Mux13~0_combout\ = (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(18) & ((\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0)) # (\mips_0|datapath_c|execute_c|AluMux|y[18]~13_combout\ $ 
-- (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2))))) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(18) & (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & (\mips_0|datapath_c|execute_c|AluMux|y[18]~13_combout\ $ 
-- (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(18),
	datab => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	datac => \mips_0|datapath_c|execute_c|AluMux|y[18]~13_combout\,
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Mux13~0_combout\);

-- Location: LCCOMB_X26_Y21_N30
\mips_0|datapath_c|execute_c|MipsAlu|Add0~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~111_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (\mips_0|datapath_c|execute_c|MipsAlu|Add0~70_combout\ & (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0)))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (((\mips_0|datapath_c|execute_c|MipsAlu|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1),
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Add0~70_combout\,
	datac => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	datad => \mips_0|datapath_c|execute_c|MipsAlu|Mux13~0_combout\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~111_combout\);

-- Location: FF_X26_Y21_N31
\mips_0|datapath_c|execute_memory_c|AluOut_FF|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_c|MipsAlu|Add0~111_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(18));

-- Location: LCCOMB_X26_Y21_N16
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[18]~feeder_combout\ = \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(18),
	combout => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[18]~feeder_combout\);

-- Location: FF_X26_Y21_N17
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[18]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(18));

-- Location: LCCOMB_X23_Y19_N8
\mips_0|datapath_c|writeback_c|mux|y[18]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|writeback_c|mux|y[18]~14_combout\ = (\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a18\ & ((\mips_0|datapath_c|memory_c|mem|ram~39_q\)))) # 
-- (!\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (((\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\,
	datab => \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a18\,
	datac => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(18),
	datad => \mips_0|datapath_c|memory_c|mem|ram~39_q\,
	combout => \mips_0|datapath_c|writeback_c|mux|y[18]~14_combout\);

-- Location: LCCOMB_X23_Y19_N30
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[17]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD1_FF|q[17]~20_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~38_q\ & ((\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a17\))) # 
-- (!\mips_0|datapath_c|decode_c|registers|memory~38_q\ & (\mips_0|datapath_c|decode_c|registers|memory~56_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory~56_q\,
	datab => \mips_0|datapath_c|decode_c|registers|memory~38_q\,
	datad => \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a17\,
	combout => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[17]~20_combout\);

-- Location: FF_X23_Y19_N15
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|writeback_c|mux|y[17]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(28));

-- Location: FF_X23_Y19_N31
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[17]~20_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(28),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal0~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(17));

-- Location: LCCOMB_X23_Y20_N20
\mips_0|datapath_c|execute_c|AluMux|y[17]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|AluMux|y[17]~14_combout\ = (\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & 
-- (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(17),
	datac => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|AluMux|y[17]~14_combout\);

-- Location: LCCOMB_X23_Y20_N14
\mips_0|datapath_c|execute_c|MipsAlu|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Mux14~0_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(17)) # (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ 
-- (\mips_0|datapath_c|execute_c|AluMux|y[17]~14_combout\)))) # (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(17) & (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ 
-- (\mips_0|datapath_c|execute_c|AluMux|y[17]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(17),
	datac => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datad => \mips_0|datapath_c|execute_c|AluMux|y[17]~14_combout\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Mux14~0_combout\);

-- Location: LCCOMB_X24_Y21_N16
\mips_0|datapath_c|execute_c|MipsAlu|Add0~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~112_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (\mips_0|datapath_c|execute_c|MipsAlu|Add0~68_combout\ & ((!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0))))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (((\mips_0|datapath_c|execute_c|MipsAlu|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|MipsAlu|Add0~68_combout\,
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Mux14~0_combout\,
	datac => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1),
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~112_combout\);

-- Location: FF_X24_Y21_N17
\mips_0|datapath_c|execute_memory_c|AluOut_FF|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_c|MipsAlu|Add0~112_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(17));

-- Location: LCCOMB_X23_Y19_N12
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[17]~feeder_combout\ = \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(17),
	combout => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[17]~feeder_combout\);

-- Location: FF_X23_Y19_N13
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[17]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(17));

-- Location: LCCOMB_X23_Y19_N14
\mips_0|datapath_c|writeback_c|mux|y[17]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|writeback_c|mux|y[17]~15_combout\ = (\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (((\mips_0|datapath_c|memory_c|mem|ram~39_q\ & \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a17\)))) # 
-- (!\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(17),
	datab => \mips_0|datapath_c|memory_c|mem|ram~39_q\,
	datac => \mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\,
	datad => \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a17\,
	combout => \mips_0|datapath_c|writeback_c|mux|y[17]~15_combout\);

-- Location: LCCOMB_X23_Y23_N26
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD2_FF|q[11]~11_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~71_q\ & ((\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a11\))) # 
-- (!\mips_0|datapath_c|decode_c|registers|memory~71_q\ & (\mips_0|datapath_c|decode_c|registers|memory~83_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory~71_q\,
	datab => \mips_0|datapath_c|decode_c|registers|memory~83_q\,
	datad => \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a11\,
	combout => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[11]~11_combout\);

-- Location: LCCOMB_X23_Y23_N14
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[22]~feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[11]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|writeback_c|mux|y[11]~21_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[22]~feeder_combout\);

-- Location: FF_X23_Y23_N15
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(22));

-- Location: FF_X23_Y23_N27
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[11]~11_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(22),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal1~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(11));

-- Location: FF_X26_Y21_N29
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	asdata => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(11),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(11));

-- Location: LCCOMB_X23_Y21_N22
\mips_0|datapath_c|execute_c|AluMux|y[16]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|AluMux|y[16]~15_combout\ = (\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & 
-- (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(16),
	datac => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|AluMux|y[16]~15_combout\);

-- Location: LCCOMB_X23_Y21_N2
\mips_0|datapath_c|execute_c|MipsAlu|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Mux15~0_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(16)) # (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ 
-- (\mips_0|datapath_c|execute_c|AluMux|y[16]~15_combout\)))) # (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(16) & (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ 
-- (\mips_0|datapath_c|execute_c|AluMux|y[16]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(16),
	datac => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datad => \mips_0|datapath_c|execute_c|AluMux|y[16]~15_combout\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Mux15~0_combout\);

-- Location: LCCOMB_X24_Y21_N26
\mips_0|datapath_c|execute_c|MipsAlu|Add0~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~113_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & (\mips_0|datapath_c|execute_c|MipsAlu|Add0~66_combout\))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (((\mips_0|datapath_c|execute_c|MipsAlu|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Add0~66_combout\,
	datac => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1),
	datad => \mips_0|datapath_c|execute_c|MipsAlu|Mux15~0_combout\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~113_combout\);

-- Location: FF_X24_Y21_N27
\mips_0|datapath_c|execute_memory_c|AluOut_FF|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_c|MipsAlu|Add0~113_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(16));

-- Location: LCCOMB_X23_Y21_N24
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[16]~feeder_combout\ = \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(16),
	combout => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[16]~feeder_combout\);

-- Location: FF_X23_Y21_N25
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[16]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(16));

-- Location: LCCOMB_X23_Y21_N4
\mips_0|datapath_c|writeback_c|mux|y[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|writeback_c|mux|y[16]~16_combout\ = (\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a16\ & ((\mips_0|datapath_c|memory_c|mem|ram~39_q\)))) # 
-- (!\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (((\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a16\,
	datab => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(16),
	datac => \mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\,
	datad => \mips_0|datapath_c|memory_c|mem|ram~39_q\,
	combout => \mips_0|datapath_c|writeback_c|mux|y[16]~16_combout\);

-- Location: LCCOMB_X25_Y23_N20
\mips_0|datapath_c|decode_c|registers|memory~82feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~82feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[10]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[10]~22_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~82feeder_combout\);

-- Location: FF_X25_Y23_N21
\mips_0|datapath_c|decode_c|registers|memory~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~82feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~82_q\);

-- Location: LCCOMB_X25_Y23_N2
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD2_FF|q[10]~10_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~71_q\ & (\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a10\)) # (!\mips_0|datapath_c|decode_c|registers|memory~71_q\ 
-- & ((\mips_0|datapath_c|decode_c|registers|memory~82_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a10\,
	datab => \mips_0|datapath_c|decode_c|registers|memory~82_q\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~71_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[10]~10_combout\);

-- Location: LCCOMB_X25_Y23_N4
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[21]~feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[10]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[10]~22_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[21]~feeder_combout\);

-- Location: FF_X25_Y23_N5
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(21));

-- Location: FF_X25_Y23_N3
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[10]~10_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(21),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal1~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(10));

-- Location: LCCOMB_X25_Y23_N10
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[10]~feeder_combout\ = \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(10),
	combout => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[10]~feeder_combout\);

-- Location: FF_X25_Y23_N11
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[10]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(10));

-- Location: LCCOMB_X23_Y20_N8
\mips_0|datapath_c|execute_c|AluMux|y[15]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|AluMux|y[15]~16_combout\ = (\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & 
-- (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(15),
	datac => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|AluMux|y[15]~16_combout\);

-- Location: LCCOMB_X23_Y20_N10
\mips_0|datapath_c|execute_c|MipsAlu|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Mux16~0_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(15)) # (\mips_0|datapath_c|execute_c|AluMux|y[15]~16_combout\ $ 
-- (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2))))) # (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(15) & (\mips_0|datapath_c|execute_c|AluMux|y[15]~16_combout\ $ 
-- (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	datab => \mips_0|datapath_c|execute_c|AluMux|y[15]~16_combout\,
	datac => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datad => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(15),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Mux16~0_combout\);

-- Location: LCCOMB_X24_Y21_N20
\mips_0|datapath_c|execute_c|MipsAlu|Add0~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~114_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (\mips_0|datapath_c|execute_c|MipsAlu|Add0~64_combout\ & ((!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0))))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (((\mips_0|datapath_c|execute_c|MipsAlu|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1),
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Add0~64_combout\,
	datac => \mips_0|datapath_c|execute_c|MipsAlu|Mux16~0_combout\,
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~114_combout\);

-- Location: FF_X24_Y21_N21
\mips_0|datapath_c|execute_memory_c|AluOut_FF|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_c|MipsAlu|Add0~114_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(15));

-- Location: LCCOMB_X21_Y21_N26
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[15]~feeder_combout\ = \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(15),
	combout => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[15]~feeder_combout\);

-- Location: FF_X21_Y21_N27
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[15]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(15));

-- Location: LCCOMB_X21_Y21_N30
\mips_0|datapath_c|writeback_c|mux|y[15]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|writeback_c|mux|y[15]~17_combout\ = (\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a15\ & (\mips_0|datapath_c|memory_c|mem|ram~39_q\))) # 
-- (!\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (((\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\,
	datab => \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a15\,
	datac => \mips_0|datapath_c|memory_c|mem|ram~39_q\,
	datad => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(15),
	combout => \mips_0|datapath_c|writeback_c|mux|y[15]~17_combout\);

-- Location: LCCOMB_X24_Y23_N22
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD2_FF|q[14]~14_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~71_q\ & ((\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a14\))) # 
-- (!\mips_0|datapath_c|decode_c|registers|memory~71_q\ & (\mips_0|datapath_c|decode_c|registers|memory~86_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory~86_q\,
	datab => \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a14\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~71_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[14]~14_combout\);

-- Location: LCCOMB_X24_Y23_N26
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[25]~feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[14]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[14]~18_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[25]~feeder_combout\);

-- Location: FF_X24_Y23_N27
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(25));

-- Location: FF_X24_Y23_N23
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[14]~14_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(25),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal1~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(14));

-- Location: LCCOMB_X24_Y20_N10
\mips_0|datapath_c|execute_c|AluMux|y[14]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|AluMux|y[14]~17_combout\ = (\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & 
-- (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(14),
	datac => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|AluMux|y[14]~17_combout\);

-- Location: LCCOMB_X24_Y20_N4
\mips_0|datapath_c|execute_c|MipsAlu|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Mux17~0_combout\ = (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(14) & ((\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0)) # (\mips_0|datapath_c|execute_c|AluMux|y[14]~17_combout\ $ 
-- (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2))))) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(14) & (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & (\mips_0|datapath_c|execute_c|AluMux|y[14]~17_combout\ $ 
-- (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|AluMux|y[14]~17_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(14),
	datac => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Mux17~0_combout\);

-- Location: LCCOMB_X24_Y21_N6
\mips_0|datapath_c|execute_c|MipsAlu|Add0~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~115_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (((\mips_0|datapath_c|execute_c|MipsAlu|Add0~62_combout\ & !\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0))))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (\mips_0|datapath_c|execute_c|MipsAlu|Mux17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1),
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Mux17~0_combout\,
	datac => \mips_0|datapath_c|execute_c|MipsAlu|Add0~62_combout\,
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~115_combout\);

-- Location: FF_X24_Y21_N7
\mips_0|datapath_c|execute_memory_c|AluOut_FF|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_c|MipsAlu|Add0~115_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(14));

-- Location: LCCOMB_X23_Y19_N6
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[14]~feeder_combout\ = \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(14),
	combout => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[14]~feeder_combout\);

-- Location: FF_X23_Y19_N7
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[14]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(14));

-- Location: LCCOMB_X23_Y19_N18
\mips_0|datapath_c|writeback_c|mux|y[14]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|writeback_c|mux|y[14]~18_combout\ = (\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (((\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a14\ & \mips_0|datapath_c|memory_c|mem|ram~39_q\)))) # 
-- (!\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(14),
	datab => \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a14\,
	datac => \mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\,
	datad => \mips_0|datapath_c|memory_c|mem|ram~39_q\,
	combout => \mips_0|datapath_c|writeback_c|mux|y[14]~18_combout\);

-- Location: LCCOMB_X21_Y21_N0
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[13]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD1_FF|q[13]~24_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~38_q\ & ((\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a13\))) # 
-- (!\mips_0|datapath_c|decode_c|registers|memory~38_q\ & (\mips_0|datapath_c|decode_c|registers|memory~52_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory~52_q\,
	datab => \mips_0|datapath_c|decode_c|registers|memory~38_q\,
	datad => \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a13\,
	combout => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[13]~24_combout\);

-- Location: FF_X21_Y21_N5
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|writeback_c|mux|y[13]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(24));

-- Location: FF_X21_Y21_N1
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[13]~24_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(24),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal0~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(13));

-- Location: LCCOMB_X29_Y21_N26
\mips_0|datapath_c|execute_c|AluMux|y[13]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|AluMux|y[13]~18_combout\ = (\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & (\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4))) # (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & 
-- ((\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	datab => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(13),
	datac => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	combout => \mips_0|datapath_c|execute_c|AluMux|y[13]~18_combout\);

-- Location: LCCOMB_X29_Y21_N4
\mips_0|datapath_c|execute_c|MipsAlu|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Mux18~0_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(13)) # (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ 
-- (\mips_0|datapath_c|execute_c|AluMux|y[13]~18_combout\)))) # (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(13) & (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ 
-- (\mips_0|datapath_c|execute_c|AluMux|y[13]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datab => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	datac => \mips_0|datapath_c|execute_c|AluMux|y[13]~18_combout\,
	datad => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(13),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Mux18~0_combout\);

-- Location: LCCOMB_X24_Y21_N24
\mips_0|datapath_c|execute_c|MipsAlu|Add0~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~116_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & (\mips_0|datapath_c|execute_c|MipsAlu|Add0~60_combout\))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (((\mips_0|datapath_c|execute_c|MipsAlu|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Add0~60_combout\,
	datac => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1),
	datad => \mips_0|datapath_c|execute_c|MipsAlu|Mux18~0_combout\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~116_combout\);

-- Location: FF_X24_Y21_N25
\mips_0|datapath_c|execute_memory_c|AluOut_FF|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_c|MipsAlu|Add0~116_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(13));

-- Location: LCCOMB_X21_Y21_N12
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[13]~feeder_combout\ = \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(13),
	combout => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[13]~feeder_combout\);

-- Location: FF_X21_Y21_N13
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[13]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(13));

-- Location: LCCOMB_X21_Y21_N4
\mips_0|datapath_c|writeback_c|mux|y[13]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|writeback_c|mux|y[13]~19_combout\ = (\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (((\mips_0|datapath_c|memory_c|mem|ram~39_q\ & \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a13\)))) # 
-- (!\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(13),
	datab => \mips_0|datapath_c|memory_c|mem|ram~39_q\,
	datac => \mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\,
	datad => \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a13\,
	combout => \mips_0|datapath_c|writeback_c|mux|y[13]~19_combout\);

-- Location: LCCOMB_X24_Y23_N16
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD2_FF|q[9]~9_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~71_q\ & ((\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a9\))) # (!\mips_0|datapath_c|decode_c|registers|memory~71_q\ 
-- & (\mips_0|datapath_c|decode_c|registers|memory~81_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory~81_q\,
	datab => \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a9\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~71_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[9]~9_combout\);

-- Location: LCCOMB_X24_Y23_N8
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[20]~feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[9]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|writeback_c|mux|y[9]~23_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[20]~feeder_combout\);

-- Location: FF_X24_Y23_N9
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(20));

-- Location: FF_X24_Y23_N17
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[9]~9_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(20),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal1~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(9));

-- Location: LCCOMB_X26_Y20_N6
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[9]~feeder_combout\ = \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(9),
	combout => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[9]~feeder_combout\);

-- Location: FF_X26_Y20_N7
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[9]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(9));

-- Location: LCCOMB_X23_Y20_N12
\mips_0|datapath_c|execute_c|AluMux|y[12]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|AluMux|y[12]~19_combout\ = (\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & 
-- (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datac => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(12),
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|AluMux|y[12]~19_combout\);

-- Location: LCCOMB_X23_Y20_N30
\mips_0|datapath_c|execute_c|MipsAlu|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Mux19~0_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(12)) # (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ 
-- (\mips_0|datapath_c|execute_c|AluMux|y[12]~19_combout\)))) # (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(12) & (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ 
-- (\mips_0|datapath_c|execute_c|AluMux|y[12]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(12),
	datac => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datad => \mips_0|datapath_c|execute_c|AluMux|y[12]~19_combout\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Mux19~0_combout\);

-- Location: LCCOMB_X24_Y21_N18
\mips_0|datapath_c|execute_c|MipsAlu|Add0~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~117_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (((\mips_0|datapath_c|execute_c|MipsAlu|Add0~58_combout\ & !\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0))))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (\mips_0|datapath_c|execute_c|MipsAlu|Mux19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1),
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Mux19~0_combout\,
	datac => \mips_0|datapath_c|execute_c|MipsAlu|Add0~58_combout\,
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~117_combout\);

-- Location: FF_X24_Y21_N19
\mips_0|datapath_c|execute_memory_c|AluOut_FF|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_c|MipsAlu|Add0~117_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(12));

-- Location: LCCOMB_X23_Y22_N2
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[12]~feeder_combout\ = \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(12),
	combout => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[12]~feeder_combout\);

-- Location: FF_X23_Y22_N3
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[12]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(12));

-- Location: LCCOMB_X23_Y22_N26
\mips_0|datapath_c|writeback_c|mux|y[12]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|writeback_c|mux|y[12]~20_combout\ = (\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a12\ & (\mips_0|datapath_c|memory_c|mem|ram~39_q\))) # 
-- (!\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (((\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a12\,
	datab => \mips_0|datapath_c|memory_c|mem|ram~39_q\,
	datac => \mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\,
	datad => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(12),
	combout => \mips_0|datapath_c|writeback_c|mux|y[12]~20_combout\);

-- Location: LCCOMB_X20_Y22_N0
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[11]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD1_FF|q[11]~26_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~38_q\ & ((\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a11\))) # 
-- (!\mips_0|datapath_c|decode_c|registers|memory~38_q\ & (\mips_0|datapath_c|decode_c|registers|memory~50_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory~50_q\,
	datab => \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a11\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~38_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[11]~26_combout\);

-- Location: FF_X20_Y22_N5
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|writeback_c|mux|y[11]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(22));

-- Location: FF_X20_Y22_N1
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[11]~26_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(22),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal0~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(11));

-- Location: LCCOMB_X26_Y21_N18
\mips_0|datapath_c|execute_c|AluMux|y[11]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|AluMux|y[11]~20_combout\ = (\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & 
-- (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datac => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(11),
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|AluMux|y[11]~20_combout\);

-- Location: LCCOMB_X26_Y21_N4
\mips_0|datapath_c|execute_c|MipsAlu|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Mux20~0_combout\ = (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(11) & ((\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0)) # (\mips_0|datapath_c|execute_c|AluMux|y[11]~20_combout\ $ 
-- (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2))))) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(11) & (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & (\mips_0|datapath_c|execute_c|AluMux|y[11]~20_combout\ $ 
-- (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(11),
	datab => \mips_0|datapath_c|execute_c|AluMux|y[11]~20_combout\,
	datac => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Mux20~0_combout\);

-- Location: LCCOMB_X24_Y21_N30
\mips_0|datapath_c|execute_c|MipsAlu|Add0~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~118_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (((\mips_0|datapath_c|execute_c|MipsAlu|Add0~56_combout\ & !\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0))))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (\mips_0|datapath_c|execute_c|MipsAlu|Mux20~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1),
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Mux20~0_combout\,
	datac => \mips_0|datapath_c|execute_c|MipsAlu|Add0~56_combout\,
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~118_combout\);

-- Location: FF_X24_Y21_N31
\mips_0|datapath_c|execute_memory_c|AluOut_FF|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_c|MipsAlu|Add0~118_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(11));

-- Location: LCCOMB_X20_Y22_N10
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[11]~feeder_combout\ = \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(11),
	combout => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[11]~feeder_combout\);

-- Location: FF_X20_Y22_N11
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[11]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(11));

-- Location: LCCOMB_X20_Y22_N4
\mips_0|datapath_c|writeback_c|mux|y[11]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|writeback_c|mux|y[11]~21_combout\ = (\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (((\mips_0|datapath_c|memory_c|mem|ram~39_q\ & \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a11\)))) # 
-- (!\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(11),
	datab => \mips_0|datapath_c|memory_c|mem|ram~39_q\,
	datac => \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a11\,
	datad => \mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\,
	combout => \mips_0|datapath_c|writeback_c|mux|y[11]~21_combout\);

-- Location: LCCOMB_X25_Y23_N0
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD2_FF|q[8]~8_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~71_q\ & ((\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a8\))) # (!\mips_0|datapath_c|decode_c|registers|memory~71_q\ 
-- & (\mips_0|datapath_c|decode_c|registers|memory~80_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory~80_q\,
	datab => \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a8\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~71_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[8]~8_combout\);

-- Location: LCCOMB_X25_Y23_N14
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[19]~feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[8]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[8]~24_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[19]~feeder_combout\);

-- Location: FF_X25_Y23_N15
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(19));

-- Location: FF_X25_Y23_N1
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[8]~8_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(19),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal1~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(8));

-- Location: LCCOMB_X25_Y23_N18
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[8]~feeder_combout\ = \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(8),
	combout => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[8]~feeder_combout\);

-- Location: FF_X25_Y23_N19
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[8]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(8));

-- Location: LCCOMB_X25_Y23_N30
\mips_0|datapath_c|execute_c|AluMux|y[10]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|AluMux|y[10]~21_combout\ = (\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & 
-- (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(10),
	datac => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|AluMux|y[10]~21_combout\);

-- Location: LCCOMB_X26_Y22_N12
\mips_0|datapath_c|execute_c|MipsAlu|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Mux21~0_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(10)) # (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ 
-- (\mips_0|datapath_c|execute_c|AluMux|y[10]~21_combout\)))) # (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(10) & (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ 
-- (\mips_0|datapath_c|execute_c|AluMux|y[10]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datab => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	datac => \mips_0|datapath_c|execute_c|AluMux|y[10]~21_combout\,
	datad => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(10),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Mux21~0_combout\);

-- Location: LCCOMB_X24_Y21_N0
\mips_0|datapath_c|execute_c|MipsAlu|Add0~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~119_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (\mips_0|datapath_c|execute_c|MipsAlu|Add0~54_combout\ & ((!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0))))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (((\mips_0|datapath_c|execute_c|MipsAlu|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|MipsAlu|Add0~54_combout\,
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Mux21~0_combout\,
	datac => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1),
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~119_combout\);

-- Location: FF_X24_Y21_N1
\mips_0|datapath_c|execute_memory_c|AluOut_FF|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_c|MipsAlu|Add0~119_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(10));

-- Location: LCCOMB_X24_Y22_N4
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[10]~feeder_combout\ = \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(10),
	combout => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[10]~feeder_combout\);

-- Location: FF_X24_Y22_N5
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[10]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(10));

-- Location: LCCOMB_X24_Y22_N14
\mips_0|datapath_c|writeback_c|mux|y[10]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|writeback_c|mux|y[10]~22_combout\ = (\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a10\ & ((\mips_0|datapath_c|memory_c|mem|ram~39_q\)))) # 
-- (!\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (((\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a10\,
	datab => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(10),
	datac => \mips_0|datapath_c|memory_c|mem|ram~39_q\,
	datad => \mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\,
	combout => \mips_0|datapath_c|writeback_c|mux|y[10]~22_combout\);

-- Location: LCCOMB_X20_Y23_N18
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD2_FF|q[5]~5_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~71_q\ & ((\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a5\))) # (!\mips_0|datapath_c|decode_c|registers|memory~71_q\ 
-- & (\mips_0|datapath_c|decode_c|registers|memory~77_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory~77_q\,
	datab => \mips_0|datapath_c|decode_c|registers|memory~71_q\,
	datad => \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a5\,
	combout => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[5]~5_combout\);

-- Location: LCCOMB_X20_Y23_N26
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[16]~feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[5]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[5]~27_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[16]~feeder_combout\);

-- Location: FF_X20_Y23_N27
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(16));

-- Location: FF_X20_Y23_N19
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[5]~5_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(16),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal1~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(5));

-- Location: FF_X20_Y21_N29
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	asdata => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(5),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(5));

-- Location: LCCOMB_X26_Y20_N4
\mips_0|datapath_c|execute_c|AluMux|y[9]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|AluMux|y[9]~22_combout\ = (\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & 
-- (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(9),
	datac => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|AluMux|y[9]~22_combout\);

-- Location: LCCOMB_X26_Y22_N14
\mips_0|datapath_c|execute_c|MipsAlu|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Mux22~0_combout\ = (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(9) & ((\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0)) # (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ 
-- (\mips_0|datapath_c|execute_c|AluMux|y[9]~22_combout\)))) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(9) & (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ 
-- (\mips_0|datapath_c|execute_c|AluMux|y[9]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datab => \mips_0|datapath_c|execute_c|AluMux|y[9]~22_combout\,
	datac => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(9),
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Mux22~0_combout\);

-- Location: LCCOMB_X26_Y22_N16
\mips_0|datapath_c|execute_c|MipsAlu|Add0~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~120_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (\mips_0|datapath_c|execute_c|MipsAlu|Add0~52_combout\ & ((!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0))))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (((\mips_0|datapath_c|execute_c|MipsAlu|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1),
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Add0~52_combout\,
	datac => \mips_0|datapath_c|execute_c|MipsAlu|Mux22~0_combout\,
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~120_combout\);

-- Location: FF_X26_Y22_N17
\mips_0|datapath_c|execute_memory_c|AluOut_FF|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_c|MipsAlu|Add0~120_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(9));

-- Location: LCCOMB_X24_Y22_N0
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[9]~feeder_combout\ = \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(9),
	combout => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[9]~feeder_combout\);

-- Location: FF_X24_Y22_N1
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[9]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(9));

-- Location: LCCOMB_X24_Y22_N8
\mips_0|datapath_c|writeback_c|mux|y[9]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|writeback_c|mux|y[9]~23_combout\ = (\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (\mips_0|datapath_c|memory_c|mem|ram~39_q\ & (\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a9\))) # 
-- (!\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (((\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\,
	datab => \mips_0|datapath_c|memory_c|mem|ram~39_q\,
	datac => \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a9\,
	datad => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(9),
	combout => \mips_0|datapath_c|writeback_c|mux|y[9]~23_combout\);

-- Location: LCCOMB_X20_Y23_N28
\mips_0|datapath_c|decode_c|registers|memory~75feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~75feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[3]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|writeback_c|mux|y[3]~29_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~75feeder_combout\);

-- Location: FF_X20_Y23_N29
\mips_0|datapath_c|decode_c|registers|memory~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~75feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~75_q\);

-- Location: LCCOMB_X20_Y23_N2
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD2_FF|q[3]~3_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~71_q\ & (\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a3\)) # (!\mips_0|datapath_c|decode_c|registers|memory~71_q\ & 
-- ((\mips_0|datapath_c|decode_c|registers|memory~75_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a3\,
	datab => \mips_0|datapath_c|decode_c|registers|memory~75_q\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~71_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[3]~3_combout\);

-- Location: LCCOMB_X20_Y23_N14
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[14]~feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[3]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|writeback_c|mux|y[3]~29_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[14]~feeder_combout\);

-- Location: FF_X20_Y23_N15
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(14));

-- Location: FF_X20_Y23_N3
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[3]~3_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(14),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal1~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(3));

-- Location: LCCOMB_X28_Y22_N26
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[3]~feeder_combout\ = \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(3),
	combout => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[3]~feeder_combout\);

-- Location: FF_X28_Y22_N27
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[3]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(3));

-- Location: LCCOMB_X25_Y23_N28
\mips_0|datapath_c|execute_c|AluMux|y[8]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|AluMux|y[8]~23_combout\ = (\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & 
-- (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(8),
	datac => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|AluMux|y[8]~23_combout\);

-- Location: LCCOMB_X26_Y22_N8
\mips_0|datapath_c|execute_c|MipsAlu|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Mux23~0_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(8)) # (\mips_0|datapath_c|execute_c|AluMux|y[8]~23_combout\ $ 
-- (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2))))) # (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(8) & (\mips_0|datapath_c|execute_c|AluMux|y[8]~23_combout\ $ 
-- (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|AluMux|y[8]~23_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	datac => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(8),
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Mux23~0_combout\);

-- Location: LCCOMB_X26_Y22_N10
\mips_0|datapath_c|execute_c|MipsAlu|Add0~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~121_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (((\mips_0|datapath_c|execute_c|MipsAlu|Add0~50_combout\ & !\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0))))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (\mips_0|datapath_c|execute_c|MipsAlu|Mux23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1),
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Mux23~0_combout\,
	datac => \mips_0|datapath_c|execute_c|MipsAlu|Add0~50_combout\,
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~121_combout\);

-- Location: FF_X26_Y22_N11
\mips_0|datapath_c|execute_memory_c|AluOut_FF|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_c|MipsAlu|Add0~121_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(8));

-- Location: LCCOMB_X24_Y22_N28
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[8]~feeder_combout\ = \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(8),
	combout => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[8]~feeder_combout\);

-- Location: FF_X24_Y22_N29
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[8]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(8));

-- Location: LCCOMB_X24_Y22_N22
\mips_0|datapath_c|writeback_c|mux|y[8]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|writeback_c|mux|y[8]~24_combout\ = (\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (\mips_0|datapath_c|memory_c|mem|ram~39_q\ & (\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a8\))) # 
-- (!\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (((\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\,
	datab => \mips_0|datapath_c|memory_c|mem|ram~39_q\,
	datac => \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a8\,
	datad => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(8),
	combout => \mips_0|datapath_c|writeback_c|mux|y[8]~24_combout\);

-- Location: LCCOMB_X21_Y20_N20
\mips_0|datapath_c|decode_c|registers|memory~79feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~79feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[7]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|writeback_c|mux|y[7]~25_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~79feeder_combout\);

-- Location: FF_X21_Y20_N21
\mips_0|datapath_c|decode_c|registers|memory~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~79feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~79_q\);

-- Location: LCCOMB_X25_Y23_N24
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD2_FF|q[7]~7_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~71_q\ & (\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a7\)) # (!\mips_0|datapath_c|decode_c|registers|memory~71_q\ & 
-- ((\mips_0|datapath_c|decode_c|registers|memory~79_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a7\,
	datab => \mips_0|datapath_c|decode_c|registers|memory~79_q\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~71_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[7]~7_combout\);

-- Location: LCCOMB_X21_Y20_N12
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[18]~feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[7]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|writeback_c|mux|y[7]~25_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[18]~feeder_combout\);

-- Location: FF_X21_Y20_N13
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(18));

-- Location: FF_X25_Y23_N25
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[7]~7_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(18),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal1~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(7));

-- Location: LCCOMB_X26_Y20_N22
\mips_0|datapath_c|execute_c|AluMux|y[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|AluMux|y[7]~24_combout\ = (\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & 
-- (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(7),
	datac => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|AluMux|y[7]~24_combout\);

-- Location: LCCOMB_X26_Y22_N18
\mips_0|datapath_c|execute_c|MipsAlu|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Mux24~0_combout\ = (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(7) & ((\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0)) # (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ 
-- (\mips_0|datapath_c|execute_c|AluMux|y[7]~24_combout\)))) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(7) & (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ 
-- (\mips_0|datapath_c|execute_c|AluMux|y[7]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datab => \mips_0|datapath_c|execute_c|AluMux|y[7]~24_combout\,
	datac => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(7),
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Mux24~0_combout\);

-- Location: LCCOMB_X26_Y22_N28
\mips_0|datapath_c|execute_c|MipsAlu|Add0~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~122_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (((\mips_0|datapath_c|execute_c|MipsAlu|Add0~48_combout\ & !\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0))))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (\mips_0|datapath_c|execute_c|MipsAlu|Mux24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1),
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Mux24~0_combout\,
	datac => \mips_0|datapath_c|execute_c|MipsAlu|Add0~48_combout\,
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~122_combout\);

-- Location: FF_X26_Y22_N29
\mips_0|datapath_c|execute_memory_c|AluOut_FF|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_c|MipsAlu|Add0~122_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(7));

-- Location: LCCOMB_X21_Y20_N26
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[7]~feeder_combout\ = \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(7),
	combout => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[7]~feeder_combout\);

-- Location: FF_X21_Y20_N27
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[7]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(7));

-- Location: LCCOMB_X21_Y20_N14
\mips_0|datapath_c|writeback_c|mux|y[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|writeback_c|mux|y[7]~25_combout\ = (\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (((\mips_0|datapath_c|memory_c|mem|ram~39_q\ & \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a7\)))) # 
-- (!\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(7),
	datab => \mips_0|datapath_c|memory_c|mem|ram~39_q\,
	datac => \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a7\,
	datad => \mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\,
	combout => \mips_0|datapath_c|writeback_c|mux|y[7]~25_combout\);

-- Location: LCCOMB_X21_Y23_N24
\mips_0|datapath_c|decode_c|registers|memory~78feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~78feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[6]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[6]~26_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~78feeder_combout\);

-- Location: FF_X21_Y23_N25
\mips_0|datapath_c|decode_c|registers|memory~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~78feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~78_q\);

-- Location: LCCOMB_X21_Y23_N30
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD2_FF|q[6]~6_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~71_q\ & (\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a6\)) # (!\mips_0|datapath_c|decode_c|registers|memory~71_q\ & 
-- ((\mips_0|datapath_c|decode_c|registers|memory~78_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory~71_q\,
	datab => \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a6\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~78_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[6]~6_combout\);

-- Location: LCCOMB_X21_Y23_N8
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[17]~feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[6]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[6]~26_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[17]~feeder_combout\);

-- Location: FF_X21_Y23_N9
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(17));

-- Location: FF_X21_Y23_N31
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[6]~6_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(17),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal1~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(6));

-- Location: LCCOMB_X29_Y22_N16
\mips_0|datapath_c|execute_c|MipsAlu|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~25_combout\ = \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ (((\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(6),
	datab => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	datac => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~25_combout\);

-- Location: LCCOMB_X29_Y22_N6
\mips_0|datapath_c|execute_c|AluMux|y[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|AluMux|y[6]~25_combout\ = (\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & 
-- (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(6),
	datac => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|AluMux|y[6]~25_combout\);

-- Location: LCCOMB_X26_Y22_N4
\mips_0|datapath_c|execute_c|MipsAlu|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Mux25~0_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(6)) # (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ 
-- (\mips_0|datapath_c|execute_c|AluMux|y[6]~25_combout\)))) # (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(6) & (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ 
-- (\mips_0|datapath_c|execute_c|AluMux|y[6]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datab => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	datac => \mips_0|datapath_c|execute_c|AluMux|y[6]~25_combout\,
	datad => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(6),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Mux25~0_combout\);

-- Location: LCCOMB_X26_Y22_N30
\mips_0|datapath_c|execute_c|MipsAlu|Add0~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~123_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (\mips_0|datapath_c|execute_c|MipsAlu|Add0~46_combout\ & ((!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0))))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (((\mips_0|datapath_c|execute_c|MipsAlu|Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1),
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Add0~46_combout\,
	datac => \mips_0|datapath_c|execute_c|MipsAlu|Mux25~0_combout\,
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~123_combout\);

-- Location: FF_X26_Y22_N31
\mips_0|datapath_c|execute_memory_c|AluOut_FF|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_c|MipsAlu|Add0~123_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(6));

-- Location: LCCOMB_X23_Y22_N10
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[6]~feeder_combout\ = \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(6),
	combout => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[6]~feeder_combout\);

-- Location: FF_X23_Y22_N11
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[6]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(6));

-- Location: LCCOMB_X23_Y22_N4
\mips_0|datapath_c|writeback_c|mux|y[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|writeback_c|mux|y[6]~26_combout\ = (\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (((\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a6\ & \mips_0|datapath_c|memory_c|mem|ram~39_q\)))) # 
-- (!\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(6),
	datab => \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a6\,
	datac => \mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\,
	datad => \mips_0|datapath_c|memory_c|mem|ram~39_q\,
	combout => \mips_0|datapath_c|writeback_c|mux|y[6]~26_combout\);

-- Location: LCCOMB_X23_Y22_N16
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD1_FF|q[5]~3_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~38_q\ & ((\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a5\))) # (!\mips_0|datapath_c|decode_c|registers|memory~38_q\ 
-- & (\mips_0|datapath_c|decode_c|registers|memory~44_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory~44_q\,
	datab => \mips_0|datapath_c|decode_c|registers|memory~38_q\,
	datad => \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a5\,
	combout => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[5]~3_combout\);

-- Location: FF_X23_Y22_N1
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|writeback_c|mux|y[5]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(16));

-- Location: FF_X23_Y22_N17
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[5]~3_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(16),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal0~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(5));

-- Location: LCCOMB_X29_Y22_N8
\mips_0|datapath_c|execute_c|AluMux|y[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|AluMux|y[5]~26_combout\ = (\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & 
-- (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(5),
	datab => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|AluMux|y[5]~26_combout\);

-- Location: LCCOMB_X25_Y22_N6
\mips_0|datapath_c|execute_c|MipsAlu|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Mux26~0_combout\ = (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(5) & ((\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0)) # (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ 
-- (\mips_0|datapath_c|execute_c|AluMux|y[5]~26_combout\)))) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(5) & (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ 
-- (\mips_0|datapath_c|execute_c|AluMux|y[5]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(5),
	datab => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	datac => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datad => \mips_0|datapath_c|execute_c|AluMux|y[5]~26_combout\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Mux26~0_combout\);

-- Location: LCCOMB_X25_Y22_N8
\mips_0|datapath_c|execute_c|MipsAlu|Add0~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~124_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (\mips_0|datapath_c|execute_c|MipsAlu|Add0~44_combout\ & ((!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0))))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (((\mips_0|datapath_c|execute_c|MipsAlu|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1),
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Add0~44_combout\,
	datac => \mips_0|datapath_c|execute_c|MipsAlu|Mux26~0_combout\,
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~124_combout\);

-- Location: FF_X25_Y22_N9
\mips_0|datapath_c|execute_memory_c|AluOut_FF|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_c|MipsAlu|Add0~124_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(5));

-- Location: LCCOMB_X23_Y22_N12
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[5]~feeder_combout\ = \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(5),
	combout => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[5]~feeder_combout\);

-- Location: FF_X23_Y22_N13
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[5]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(5));

-- Location: LCCOMB_X23_Y22_N0
\mips_0|datapath_c|writeback_c|mux|y[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|writeback_c|mux|y[5]~27_combout\ = (\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (((\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a5\ & \mips_0|datapath_c|memory_c|mem|ram~39_q\)))) # 
-- (!\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(5),
	datab => \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a5\,
	datac => \mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\,
	datad => \mips_0|datapath_c|memory_c|mem|ram~39_q\,
	combout => \mips_0|datapath_c|writeback_c|mux|y[5]~27_combout\);

-- Location: LCCOMB_X20_Y23_N6
\mips_0|datapath_c|decode_c|registers|memory~76feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~76feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[4]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|writeback_c|mux|y[4]~28_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~76feeder_combout\);

-- Location: FF_X20_Y23_N7
\mips_0|datapath_c|decode_c|registers|memory~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~76feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~76_q\);

-- Location: LCCOMB_X20_Y23_N0
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD2_FF|q[4]~4_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~71_q\ & (\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a4\)) # (!\mips_0|datapath_c|decode_c|registers|memory~71_q\ & 
-- ((\mips_0|datapath_c|decode_c|registers|memory~76_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a4\,
	datab => \mips_0|datapath_c|decode_c|registers|memory~71_q\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~76_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[4]~4_combout\);

-- Location: LCCOMB_X20_Y23_N4
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[15]~feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[4]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|writeback_c|mux|y[4]~28_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[15]~feeder_combout\);

-- Location: FF_X20_Y23_N5
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(15));

-- Location: FF_X20_Y23_N1
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[4]~4_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(15),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal1~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(4));

-- Location: LCCOMB_X28_Y22_N6
\mips_0|datapath_c|execute_c|AluMux|y[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|AluMux|y[4]~27_combout\ = (\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & 
-- (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(4),
	datab => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datac => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|AluMux|y[4]~27_combout\);

-- Location: LCCOMB_X25_Y22_N0
\mips_0|datapath_c|execute_c|MipsAlu|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Mux27~0_combout\ = (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(4) & ((\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0)) # (\mips_0|datapath_c|execute_c|AluMux|y[4]~27_combout\ $ 
-- (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2))))) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(4) & (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & (\mips_0|datapath_c|execute_c|AluMux|y[4]~27_combout\ $ 
-- (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|AluMux|y[4]~27_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(4),
	datac => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Mux27~0_combout\);

-- Location: LCCOMB_X25_Y22_N2
\mips_0|datapath_c|execute_c|MipsAlu|Add0~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~125_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (((\mips_0|datapath_c|execute_c|MipsAlu|Add0~42_combout\ & !\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0))))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (\mips_0|datapath_c|execute_c|MipsAlu|Mux27~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1),
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Mux27~0_combout\,
	datac => \mips_0|datapath_c|execute_c|MipsAlu|Add0~42_combout\,
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~125_combout\);

-- Location: FF_X25_Y22_N3
\mips_0|datapath_c|execute_memory_c|AluOut_FF|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_c|MipsAlu|Add0~125_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(4));

-- Location: LCCOMB_X21_Y22_N28
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[4]~feeder_combout\ = \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(4),
	combout => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[4]~feeder_combout\);

-- Location: FF_X21_Y22_N29
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[4]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(4));

-- Location: LCCOMB_X21_Y22_N14
\mips_0|datapath_c|writeback_c|mux|y[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|writeback_c|mux|y[4]~28_combout\ = (\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a4\ & ((\mips_0|datapath_c|memory_c|mem|ram~39_q\)))) # 
-- (!\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (((\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a4\,
	datab => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(4),
	datac => \mips_0|datapath_c|memory_c|mem|ram~39_q\,
	datad => \mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\,
	combout => \mips_0|datapath_c|writeback_c|mux|y[4]~28_combout\);

-- Location: LCCOMB_X21_Y22_N2
\mips_0|datapath_c|decode_c|registers|memory~42feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~42feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[3]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[3]~29_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~42feeder_combout\);

-- Location: FF_X21_Y22_N3
\mips_0|datapath_c|decode_c|registers|memory~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~42feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~42_q\);

-- Location: LCCOMB_X21_Y22_N24
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD1_FF|q[3]~1_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~38_q\ & (\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a3\)) # (!\mips_0|datapath_c|decode_c|registers|memory~38_q\ & 
-- ((\mips_0|datapath_c|decode_c|registers|memory~42_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory~38_q\,
	datab => \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a3\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~42_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[3]~1_combout\);

-- Location: FF_X21_Y22_N7
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|writeback_c|mux|y[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(14));

-- Location: FF_X21_Y22_N25
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[3]~1_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(14),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal0~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(3));

-- Location: LCCOMB_X28_Y22_N18
\mips_0|datapath_c|execute_c|AluMux|y[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|AluMux|y[3]~28_combout\ = (\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & (\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(3))) # (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & 
-- ((\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datac => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(3),
	datad => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(3),
	combout => \mips_0|datapath_c|execute_c|AluMux|y[3]~28_combout\);

-- Location: LCCOMB_X26_Y22_N22
\mips_0|datapath_c|execute_c|MipsAlu|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Mux28~0_combout\ = (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(3) & ((\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0)) # (\mips_0|datapath_c|execute_c|AluMux|y[3]~28_combout\ $ 
-- (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2))))) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(3) & (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & (\mips_0|datapath_c|execute_c|AluMux|y[3]~28_combout\ $ 
-- (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(3),
	datab => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	datac => \mips_0|datapath_c|execute_c|AluMux|y[3]~28_combout\,
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Mux28~0_combout\);

-- Location: LCCOMB_X26_Y22_N24
\mips_0|datapath_c|execute_c|MipsAlu|Add0~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~126_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (\mips_0|datapath_c|execute_c|MipsAlu|Add0~40_combout\ & ((!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0))))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (((\mips_0|datapath_c|execute_c|MipsAlu|Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1),
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Add0~40_combout\,
	datac => \mips_0|datapath_c|execute_c|MipsAlu|Mux28~0_combout\,
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~126_combout\);

-- Location: FF_X26_Y22_N25
\mips_0|datapath_c|execute_memory_c|AluOut_FF|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_c|MipsAlu|Add0~126_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(3));

-- Location: LCCOMB_X21_Y22_N8
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[3]~feeder_combout\ = \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(3),
	combout => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[3]~feeder_combout\);

-- Location: FF_X21_Y22_N9
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[3]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(3));

-- Location: LCCOMB_X21_Y22_N6
\mips_0|datapath_c|writeback_c|mux|y[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|writeback_c|mux|y[3]~29_combout\ = (\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (\mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a3\ & ((\mips_0|datapath_c|memory_c|mem|ram~39_q\)))) # 
-- (!\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (((\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a3\,
	datab => \mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\,
	datac => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(3),
	datad => \mips_0|datapath_c|memory_c|mem|ram~39_q\,
	combout => \mips_0|datapath_c|writeback_c|mux|y[3]~29_combout\);

-- Location: LCCOMB_X24_Y22_N2
\mips_0|datapath_c|decode_c|registers|memory~40feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~40feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[1]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|writeback_c|mux|y[1]~31_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~40feeder_combout\);

-- Location: FF_X24_Y22_N3
\mips_0|datapath_c|decode_c|registers|memory~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~40feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~40_q\);

-- Location: LCCOMB_X24_Y22_N10
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD1_FF|q[1]~30_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~38_q\ & (\mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a1\)) # (!\mips_0|datapath_c|decode_c|registers|memory~38_q\ & 
-- ((\mips_0|datapath_c|decode_c|registers|memory~40_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory~38_q\,
	datab => \mips_0|datapath_c|decode_c|registers|memory_rtl_0|auto_generated|ram_block1a1\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~40_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[1]~30_combout\);

-- Location: FF_X24_Y22_N27
\mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|writeback_c|mux|y[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(12));

-- Location: FF_X24_Y22_N11
\mips_0|datapath_c|decode_execute_C|RD1_FF|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD1_FF|q[1]~30_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_0_bypass\(12),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal0~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(1));

-- Location: LCCOMB_X28_Y22_N14
\mips_0|datapath_c|execute_c|AluMux|y[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|AluMux|y[1]~30_combout\ = (\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & (\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(1))) # (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & 
-- ((\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datac => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(1),
	datad => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(1),
	combout => \mips_0|datapath_c|execute_c|AluMux|y[1]~30_combout\);

-- Location: LCCOMB_X26_Y22_N0
\mips_0|datapath_c|execute_c|MipsAlu|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Mux30~0_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(1)) # (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ 
-- (\mips_0|datapath_c|execute_c|AluMux|y[1]~30_combout\)))) # (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(1) & (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2) $ 
-- (\mips_0|datapath_c|execute_c|AluMux|y[1]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datab => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	datac => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(1),
	datad => \mips_0|datapath_c|execute_c|AluMux|y[1]~30_combout\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Mux30~0_combout\);

-- Location: LCCOMB_X26_Y22_N2
\mips_0|datapath_c|execute_c|MipsAlu|Add0~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~128_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (((\mips_0|datapath_c|execute_c|MipsAlu|Add0~36_combout\ & !\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0))))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (\mips_0|datapath_c|execute_c|MipsAlu|Mux30~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1),
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Mux30~0_combout\,
	datac => \mips_0|datapath_c|execute_c|MipsAlu|Add0~36_combout\,
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~128_combout\);

-- Location: FF_X26_Y22_N3
\mips_0|datapath_c|execute_memory_c|AluOut_FF|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_c|MipsAlu|Add0~128_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(1));

-- Location: LCCOMB_X24_Y22_N12
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[1]~feeder_combout\ = \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(1),
	combout => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[1]~feeder_combout\);

-- Location: FF_X24_Y22_N13
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[1]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(1));

-- Location: LCCOMB_X24_Y22_N26
\mips_0|datapath_c|writeback_c|mux|y[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|writeback_c|mux|y[1]~31_combout\ = (\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (((\mips_0|datapath_c|memory_c|mem|ram~39_q\ & \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a1~portadataout\)))) # 
-- (!\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(1),
	datab => \mips_0|datapath_c|memory_c|mem|ram~39_q\,
	datac => \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a1~portadataout\,
	datad => \mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\,
	combout => \mips_0|datapath_c|writeback_c|mux|y[1]~31_combout\);

-- Location: LCCOMB_X20_Y23_N10
\mips_0|datapath_c|decode_c|registers|memory~73feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~73feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[1]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[1]~31_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~73feeder_combout\);

-- Location: FF_X20_Y23_N11
\mips_0|datapath_c|decode_c|registers|memory~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~73feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~73_q\);

-- Location: LCCOMB_X20_Y23_N30
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD2_FF|q[1]~1_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~71_q\ & ((\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a1\))) # (!\mips_0|datapath_c|decode_c|registers|memory~71_q\ 
-- & (\mips_0|datapath_c|decode_c|registers|memory~73_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory~73_q\,
	datab => \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a1\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~71_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[1]~1_combout\);

-- Location: LCCOMB_X20_Y23_N22
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[12]~feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[1]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[1]~31_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[12]~feeder_combout\);

-- Location: FF_X20_Y23_N23
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(12));

-- Location: FF_X20_Y23_N31
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[1]~1_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(12),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal1~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(1));

-- Location: FF_X20_Y21_N15
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	asdata => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(1),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(1));

-- Location: LCCOMB_X20_Y22_N22
\mips_0|datapath_c|writeback_c|mux|y[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|writeback_c|mux|y[2]~30_combout\ = (\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (((\mips_0|datapath_c|memory_c|mem|ram~39_q\ & \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a2\)))) # 
-- (!\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(2),
	datab => \mips_0|datapath_c|memory_c|mem|ram~39_q\,
	datac => \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a2\,
	datad => \mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\,
	combout => \mips_0|datapath_c|writeback_c|mux|y[2]~30_combout\);

-- Location: LCCOMB_X20_Y23_N12
\mips_0|datapath_c|decode_c|registers|memory~74feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~74feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[2]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|writeback_c|mux|y[2]~30_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~74feeder_combout\);

-- Location: FF_X20_Y23_N13
\mips_0|datapath_c|decode_c|registers|memory~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~74feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~74_q\);

-- Location: LCCOMB_X20_Y23_N16
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD2_FF|q[2]~2_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~71_q\ & ((\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a2\))) # (!\mips_0|datapath_c|decode_c|registers|memory~71_q\ 
-- & (\mips_0|datapath_c|decode_c|registers|memory~74_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory~74_q\,
	datab => \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a2\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~71_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[2]~2_combout\);

-- Location: LCCOMB_X20_Y23_N8
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[13]~feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[2]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|writeback_c|mux|y[2]~30_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[13]~feeder_combout\);

-- Location: FF_X20_Y23_N9
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(13));

-- Location: FF_X20_Y23_N17
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[2]~2_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(13),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal1~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(2));

-- Location: LCCOMB_X29_Y22_N0
\mips_0|datapath_c|execute_c|AluMux|y[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|AluMux|y[2]~29_combout\ = (\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(2)))) # (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & 
-- (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(2),
	datab => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datac => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(2),
	combout => \mips_0|datapath_c|execute_c|AluMux|y[2]~29_combout\);

-- Location: LCCOMB_X25_Y22_N10
\mips_0|datapath_c|execute_c|MipsAlu|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Mux29~0_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(2)) # (\mips_0|datapath_c|execute_c|AluMux|y[2]~29_combout\ $ 
-- (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2))))) # (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(2) & (\mips_0|datapath_c|execute_c|AluMux|y[2]~29_combout\ $ 
-- (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|AluMux|y[2]~29_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	datac => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datad => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(2),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Mux29~0_combout\);

-- Location: LCCOMB_X25_Y22_N4
\mips_0|datapath_c|execute_c|MipsAlu|Add0~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~127_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (((!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & \mips_0|datapath_c|execute_c|MipsAlu|Add0~38_combout\)))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (\mips_0|datapath_c|execute_c|MipsAlu|Mux29~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|MipsAlu|Mux29~0_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	datac => \mips_0|datapath_c|execute_c|MipsAlu|Add0~38_combout\,
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~127_combout\);

-- Location: FF_X25_Y22_N5
\mips_0|datapath_c|execute_memory_c|AluOut_FF|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_c|MipsAlu|Add0~127_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(2));

-- Location: LCCOMB_X21_Y21_N22
\mips_0|datapath_c|writeback_c|mux|y[20]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|writeback_c|mux|y[20]~12_combout\ = (\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (((\mips_0|datapath_c|memory_c|mem|ram~39_q\ & \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a20\)))) # 
-- (!\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(20),
	datab => \mips_0|datapath_c|memory_c|mem|ram~39_q\,
	datac => \mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\,
	datad => \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a20\,
	combout => \mips_0|datapath_c|writeback_c|mux|y[20]~12_combout\);

-- Location: LCCOMB_X23_Y23_N2
\mips_0|datapath_c|decode_c|registers|memory~92feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~92feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[20]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|writeback_c|mux|y[20]~12_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~92feeder_combout\);

-- Location: FF_X23_Y23_N3
\mips_0|datapath_c|decode_c|registers|memory~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~92feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~92_q\);

-- Location: LCCOMB_X23_Y23_N16
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD2_FF|q[20]~20_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~71_q\ & ((\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a20\))) # 
-- (!\mips_0|datapath_c|decode_c|registers|memory~71_q\ & (\mips_0|datapath_c|decode_c|registers|memory~92_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory~71_q\,
	datab => \mips_0|datapath_c|decode_c|registers|memory~92_q\,
	datad => \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a20\,
	combout => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[20]~20_combout\);

-- Location: LCCOMB_X23_Y23_N4
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[31]~feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[20]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_0|datapath_c|writeback_c|mux|y[20]~12_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[31]~feeder_combout\);

-- Location: FF_X23_Y23_N5
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(31));

-- Location: FF_X23_Y23_N17
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[20]~20_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(31),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal1~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(20));

-- Location: LCCOMB_X23_Y21_N6
\mips_0|datapath_c|execute_c|AluMux|y[20]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|AluMux|y[20]~11_combout\ = (\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & ((\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)))) # (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & 
-- (\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(20),
	datac => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_c|AluMux|y[20]~11_combout\);

-- Location: LCCOMB_X23_Y21_N0
\mips_0|datapath_c|execute_c|MipsAlu|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Mux11~0_combout\ = (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(20) & ((\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0)) # (\mips_0|datapath_c|execute_c|AluMux|y[20]~11_combout\ $ 
-- (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2))))) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(20) & (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & (\mips_0|datapath_c|execute_c|AluMux|y[20]~11_combout\ $ 
-- (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|AluMux|y[20]~11_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(20),
	datac => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Mux11~0_combout\);

-- Location: LCCOMB_X26_Y21_N10
\mips_0|datapath_c|execute_c|MipsAlu|Add0~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~109_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (((!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & \mips_0|datapath_c|execute_c|MipsAlu|Add0~74_combout\)))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (\mips_0|datapath_c|execute_c|MipsAlu|Mux11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|MipsAlu|Mux11~0_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	datac => \mips_0|datapath_c|execute_c|MipsAlu|Add0~74_combout\,
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~109_combout\);

-- Location: LCCOMB_X26_Y21_N22
\mips_0|datapath_c|execute_c|MipsAlu|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Equal0~3_combout\ = (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~109_combout\ & (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~108_combout\ & (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~111_combout\ & 
-- !\mips_0|datapath_c|execute_c|MipsAlu|Add0~110_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|MipsAlu|Add0~109_combout\,
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Add0~108_combout\,
	datac => \mips_0|datapath_c|execute_c|MipsAlu|Add0~111_combout\,
	datad => \mips_0|datapath_c|execute_c|MipsAlu|Add0~110_combout\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Equal0~3_combout\);

-- Location: LCCOMB_X27_Y20_N2
\mips_0|datapath_c|execute_c|MipsAlu|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Equal0~0_combout\ = (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~103_combout\ & (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~102_combout\ & (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~100_combout\ & 
-- !\mips_0|datapath_c|execute_c|MipsAlu|Add0~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|MipsAlu|Add0~103_combout\,
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Add0~102_combout\,
	datac => \mips_0|datapath_c|execute_c|MipsAlu|Add0~100_combout\,
	datad => \mips_0|datapath_c|execute_c|MipsAlu|Add0~101_combout\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y20_N4
\mips_0|datapath_c|execute_c|MipsAlu|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Equal0~1_combout\ = (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~99_combout\ & (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~131_combout\ & (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~98_combout\ & 
-- \mips_0|datapath_c|execute_c|MipsAlu|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|MipsAlu|Add0~99_combout\,
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Add0~131_combout\,
	datac => \mips_0|datapath_c|execute_c|MipsAlu|Add0~98_combout\,
	datad => \mips_0|datapath_c|execute_c|MipsAlu|Equal0~0_combout\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Equal0~1_combout\);

-- Location: LCCOMB_X29_Y21_N12
\mips_0|datapath_c|execute_c|MipsAlu|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Equal0~2_combout\ = (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~107_combout\ & (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~105_combout\ & (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~104_combout\ & 
-- !\mips_0|datapath_c|execute_c|MipsAlu|Add0~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|MipsAlu|Add0~107_combout\,
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Add0~105_combout\,
	datac => \mips_0|datapath_c|execute_c|MipsAlu|Add0~104_combout\,
	datad => \mips_0|datapath_c|execute_c|MipsAlu|Add0~106_combout\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Equal0~2_combout\);

-- Location: LCCOMB_X25_Y22_N14
\mips_0|datapath_c|execute_c|MipsAlu|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Equal0~8_combout\ = (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~127_combout\ & (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~125_combout\ & (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~124_combout\ & 
-- !\mips_0|datapath_c|execute_c|MipsAlu|Add0~126_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|MipsAlu|Add0~127_combout\,
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Add0~125_combout\,
	datac => \mips_0|datapath_c|execute_c|MipsAlu|Add0~124_combout\,
	datad => \mips_0|datapath_c|execute_c|MipsAlu|Add0~126_combout\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Equal0~8_combout\);

-- Location: LCCOMB_X24_Y21_N2
\mips_0|datapath_c|execute_c|MipsAlu|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Equal0~4_combout\ = (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~115_combout\ & (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~112_combout\ & (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~113_combout\ & 
-- !\mips_0|datapath_c|execute_c|MipsAlu|Add0~114_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|MipsAlu|Add0~115_combout\,
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Add0~112_combout\,
	datac => \mips_0|datapath_c|execute_c|MipsAlu|Add0~113_combout\,
	datad => \mips_0|datapath_c|execute_c|MipsAlu|Add0~114_combout\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Equal0~4_combout\);

-- Location: LCCOMB_X24_Y21_N12
\mips_0|datapath_c|execute_c|MipsAlu|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Equal0~5_combout\ = (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~116_combout\ & (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~117_combout\ & (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~118_combout\ & 
-- !\mips_0|datapath_c|execute_c|MipsAlu|Add0~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|MipsAlu|Add0~116_combout\,
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Add0~117_combout\,
	datac => \mips_0|datapath_c|execute_c|MipsAlu|Add0~118_combout\,
	datad => \mips_0|datapath_c|execute_c|MipsAlu|Add0~119_combout\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Equal0~5_combout\);

-- Location: LCCOMB_X24_Y21_N22
\mips_0|datapath_c|execute_c|MipsAlu|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Equal0~6_combout\ = (\mips_0|datapath_c|execute_c|MipsAlu|Equal0~4_combout\ & \mips_0|datapath_c|execute_c|MipsAlu|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Equal0~4_combout\,
	datad => \mips_0|datapath_c|execute_c|MipsAlu|Equal0~5_combout\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Equal0~6_combout\);

-- Location: LCCOMB_X26_Y22_N26
\mips_0|datapath_c|execute_c|MipsAlu|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Equal0~7_combout\ = (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~121_combout\ & (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~122_combout\ & (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~123_combout\ & 
-- !\mips_0|datapath_c|execute_c|MipsAlu|Add0~120_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|MipsAlu|Add0~121_combout\,
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Add0~122_combout\,
	datac => \mips_0|datapath_c|execute_c|MipsAlu|Add0~123_combout\,
	datad => \mips_0|datapath_c|execute_c|MipsAlu|Add0~120_combout\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Equal0~7_combout\);

-- Location: LCCOMB_X26_Y22_N20
\mips_0|datapath_c|execute_c|MipsAlu|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Equal0~9_combout\ = (\mips_0|datapath_c|execute_c|MipsAlu|Equal0~8_combout\ & (\mips_0|datapath_c|execute_c|MipsAlu|Equal0~6_combout\ & (\mips_0|datapath_c|execute_c|MipsAlu|Equal0~7_combout\ & 
-- !\mips_0|datapath_c|execute_c|MipsAlu|Add0~128_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|MipsAlu|Equal0~8_combout\,
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Equal0~6_combout\,
	datac => \mips_0|datapath_c|execute_c|MipsAlu|Equal0~7_combout\,
	datad => \mips_0|datapath_c|execute_c|MipsAlu|Add0~128_combout\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Equal0~9_combout\);

-- Location: LCCOMB_X27_Y23_N30
\mips_0|datapath_c|execute_c|MipsAlu|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Equal0~10_combout\ = (\mips_0|datapath_c|execute_c|MipsAlu|Equal0~3_combout\ & (\mips_0|datapath_c|execute_c|MipsAlu|Equal0~1_combout\ & (\mips_0|datapath_c|execute_c|MipsAlu|Equal0~2_combout\ & 
-- \mips_0|datapath_c|execute_c|MipsAlu|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|MipsAlu|Equal0~3_combout\,
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Equal0~1_combout\,
	datac => \mips_0|datapath_c|execute_c|MipsAlu|Equal0~2_combout\,
	datad => \mips_0|datapath_c|execute_c|MipsAlu|Equal0~9_combout\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Equal0~10_combout\);

-- Location: FF_X27_Y23_N31
\mips_0|datapath_c|execute_memory_c|Zero_FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_c|MipsAlu|Equal0~10_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|Zero_FF|q~q\);

-- Location: FF_X29_Y23_N7
\mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[3]~8_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q\(3));

-- Location: LCCOMB_X28_Y23_N6
\mips_0|datapath_c|fetch_c|JumpMux|y[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|fetch_c|JumpMux|y[3]~1_combout\ = (\mips_0|datapath_c|execute_memory_c|Branch_FF|q~q\ & ((\mips_0|datapath_c|execute_memory_c|Zero_FF|q~q\ & ((\mips_0|datapath_c|execute_memory_c|PCBranch_FF|q\(3)))) # 
-- (!\mips_0|datapath_c|execute_memory_c|Zero_FF|q~q\ & (\mips_0|datapath_c|fetch_c|PCAdder|y[3]~2_combout\)))) # (!\mips_0|datapath_c|execute_memory_c|Branch_FF|q~q\ & (((\mips_0|datapath_c|fetch_c|PCAdder|y[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_memory_c|Branch_FF|q~q\,
	datab => \mips_0|datapath_c|execute_memory_c|Zero_FF|q~q\,
	datac => \mips_0|datapath_c|fetch_c|PCAdder|y[3]~2_combout\,
	datad => \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q\(3),
	combout => \mips_0|datapath_c|fetch_c|JumpMux|y[3]~1_combout\);

-- Location: FF_X28_Y23_N7
\mips_0|datapath_c|fetch_c|PCFF|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|fetch_c|JumpMux|y[3]~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|fetch_c|PCFF|q\(3));

-- Location: LCCOMB_X27_Y23_N20
\mips_0|datapath_c|fetch_c|IMemory|rom~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|fetch_c|IMemory|rom~8_combout\ = (\mips_0|datapath_c|fetch_c|PCFF|q\(6) & (\mips_0|datapath_c|fetch_c|PCFF|q\(3) & (!\mips_0|datapath_c|fetch_c|PCFF|q\(7) & !\mips_0|datapath_c|fetch_c|PCFF|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|fetch_c|PCFF|q\(6),
	datab => \mips_0|datapath_c|fetch_c|PCFF|q\(3),
	datac => \mips_0|datapath_c|fetch_c|PCFF|q\(7),
	datad => \mips_0|datapath_c|fetch_c|PCFF|q\(5),
	combout => \mips_0|datapath_c|fetch_c|IMemory|rom~8_combout\);

-- Location: LCCOMB_X29_Y22_N28
\mips_0|datapath_c|fetch_c|IMemory|rom~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|fetch_c|IMemory|rom~9_combout\ = (\mips_0|datapath_c|fetch_c|IMemory|rom~8_combout\ & (\mips_0|datapath_c|fetch_c|PCFF|q\(4) & \mips_0|datapath_c|fetch_c|PCFF|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|fetch_c|IMemory|rom~8_combout\,
	datab => \mips_0|datapath_c|fetch_c|PCFF|q\(4),
	datad => \mips_0|datapath_c|fetch_c|PCFF|q\(2),
	combout => \mips_0|datapath_c|fetch_c|IMemory|rom~9_combout\);

-- Location: FF_X29_Y22_N29
\mips_0|datapath_c|fetch_decode_c|Instr_FF|q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|fetch_c|IMemory|rom~9_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(28));

-- Location: FF_X28_Y22_N7
\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	asdata => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(28),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4));

-- Location: LCCOMB_X26_Y23_N10
\mips_0|datapath_c|execute_memory_c|Branch_FF|q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_memory_c|Branch_FF|q~feeder_combout\ = \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(4),
	combout => \mips_0|datapath_c|execute_memory_c|Branch_FF|q~feeder_combout\);

-- Location: FF_X26_Y23_N11
\mips_0|datapath_c|execute_memory_c|Branch_FF|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_memory_c|Branch_FF|q~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|Branch_FF|q~q\);

-- Location: FF_X29_Y23_N13
\mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q[6]~14_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q\(6));

-- Location: LCCOMB_X28_Y23_N10
\mips_0|datapath_c|fetch_c|JumpMux|y[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|fetch_c|JumpMux|y[6]~3_combout\ = (\mips_0|datapath_c|execute_memory_c|Branch_FF|q~q\ & ((\mips_0|datapath_c|execute_memory_c|Zero_FF|q~q\ & (\mips_0|datapath_c|execute_memory_c|PCBranch_FF|q\(6))) # 
-- (!\mips_0|datapath_c|execute_memory_c|Zero_FF|q~q\ & ((\mips_0|datapath_c|fetch_c|PCAdder|y[6]~8_combout\))))) # (!\mips_0|datapath_c|execute_memory_c|Branch_FF|q~q\ & (((\mips_0|datapath_c|fetch_c|PCAdder|y[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_memory_c|Branch_FF|q~q\,
	datab => \mips_0|datapath_c|execute_memory_c|Zero_FF|q~q\,
	datac => \mips_0|datapath_c|execute_memory_c|PCBranch_FF|q\(6),
	datad => \mips_0|datapath_c|fetch_c|PCAdder|y[6]~8_combout\,
	combout => \mips_0|datapath_c|fetch_c|JumpMux|y[6]~3_combout\);

-- Location: FF_X28_Y23_N11
\mips_0|datapath_c|fetch_c|PCFF|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|fetch_c|JumpMux|y[6]~3_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|fetch_c|PCFF|q\(6));

-- Location: LCCOMB_X28_Y23_N20
\mips_0|datapath_c|fetch_c|IMemory|rom~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|fetch_c|IMemory|rom~10_combout\ = (!\mips_0|datapath_c|fetch_c|PCFF|q\(5) & (\mips_0|datapath_c|fetch_c|PCFF|q\(4) $ (((\mips_0|datapath_c|fetch_c|PCFF|q\(2) & \mips_0|datapath_c|fetch_c|PCFF|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|fetch_c|PCFF|q\(4),
	datab => \mips_0|datapath_c|fetch_c|PCFF|q\(5),
	datac => \mips_0|datapath_c|fetch_c|PCFF|q\(2),
	datad => \mips_0|datapath_c|fetch_c|PCFF|q\(3),
	combout => \mips_0|datapath_c|fetch_c|IMemory|rom~10_combout\);

-- Location: LCCOMB_X28_Y23_N0
\mips_0|datapath_c|fetch_c|IMemory|rom~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|fetch_c|IMemory|rom~11_combout\ = (\mips_0|datapath_c|fetch_c|PCFF|q\(6) & (\mips_0|datapath_c|fetch_c|IMemory|rom~10_combout\ & !\mips_0|datapath_c|fetch_c|PCFF|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|fetch_c|PCFF|q\(6),
	datab => \mips_0|datapath_c|fetch_c|IMemory|rom~10_combout\,
	datac => \mips_0|datapath_c|fetch_c|PCFF|q\(7),
	combout => \mips_0|datapath_c|fetch_c|IMemory|rom~11_combout\);

-- Location: FF_X28_Y23_N1
\mips_0|datapath_c|fetch_decode_c|Instr_FF|q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|fetch_c|IMemory|rom~11_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(31));

-- Location: LCCOMB_X28_Y22_N22
\mips_0|controller_c|aludec_c|alucontrol[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|controller_c|aludec_c|alucontrol[1]~2_combout\ = (\mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(31)) # (((\mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(29)) # (\mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(28))) # 
-- (!\mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(31),
	datab => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(2),
	datac => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(29),
	datad => \mips_0|datapath_c|fetch_decode_c|Instr_FF|q\(28),
	combout => \mips_0|controller_c|aludec_c|alucontrol[1]~2_combout\);

-- Location: FF_X28_Y22_N23
\mips_0|datapath_c|decode_execute_C|AluControl_FF|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|controller_c|aludec_c|alucontrol[1]~2_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1));

-- Location: LCCOMB_X25_Y22_N12
\mips_0|datapath_c|execute_c|MipsAlu|Add0~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~130_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (\mips_0|datapath_c|execute_c|MipsAlu|Add0~34_combout\)) # (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & 
-- ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1),
	datab => \mips_0|datapath_c|execute_c|MipsAlu|Add0~34_combout\,
	datad => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(0),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~130_combout\);

-- Location: LCCOMB_X28_Y22_N10
\mips_0|datapath_c|execute_c|AluMux|y[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|AluMux|y[0]~31_combout\ = (\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & (\mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(0))) # (!\mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\ & 
-- ((\mips_0|datapath_c|decode_execute_C|RD2_FF|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_0|datapath_c|decode_execute_C|AluSrc_FF|q~q\,
	datac => \mips_0|datapath_c|decode_execute_C|Signlmm_FF|q\(0),
	datad => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(0),
	combout => \mips_0|datapath_c|execute_c|AluMux|y[0]~31_combout\);

-- Location: LCCOMB_X27_Y22_N0
\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~1_cout\ = CARRY((\mips_0|datapath_c|execute_c|AluMux|y[0]~31_combout\ & !\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|AluMux|y[0]~31_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(0),
	datad => VCC,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~1_cout\);

-- Location: LCCOMB_X27_Y22_N2
\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~3_cout\ = CARRY((\mips_0|datapath_c|execute_c|AluMux|y[1]~30_combout\ & (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(1) & !\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~1_cout\)) # 
-- (!\mips_0|datapath_c|execute_c|AluMux|y[1]~30_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(1)) # (!\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|AluMux|y[1]~30_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(1),
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~1_cout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~3_cout\);

-- Location: LCCOMB_X27_Y22_N4
\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~5_cout\ = CARRY((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(2) & (\mips_0|datapath_c|execute_c|AluMux|y[2]~29_combout\ & !\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~3_cout\)) # 
-- (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(2) & ((\mips_0|datapath_c|execute_c|AluMux|y[2]~29_combout\) # (!\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(2),
	datab => \mips_0|datapath_c|execute_c|AluMux|y[2]~29_combout\,
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~3_cout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~5_cout\);

-- Location: LCCOMB_X27_Y22_N6
\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~7_cout\ = CARRY((\mips_0|datapath_c|execute_c|AluMux|y[3]~28_combout\ & (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(3) & !\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~5_cout\)) # 
-- (!\mips_0|datapath_c|execute_c|AluMux|y[3]~28_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(3)) # (!\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|AluMux|y[3]~28_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(3),
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~5_cout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~7_cout\);

-- Location: LCCOMB_X27_Y22_N8
\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~9_cout\ = CARRY((\mips_0|datapath_c|execute_c|AluMux|y[4]~27_combout\ & ((!\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~7_cout\) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(4)))) # 
-- (!\mips_0|datapath_c|execute_c|AluMux|y[4]~27_combout\ & (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(4) & !\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|AluMux|y[4]~27_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(4),
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~7_cout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~9_cout\);

-- Location: LCCOMB_X27_Y22_N10
\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~11_cout\ = CARRY((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(5) & ((!\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~9_cout\) # (!\mips_0|datapath_c|execute_c|AluMux|y[5]~26_combout\))) # 
-- (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(5) & (!\mips_0|datapath_c|execute_c|AluMux|y[5]~26_combout\ & !\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(5),
	datab => \mips_0|datapath_c|execute_c|AluMux|y[5]~26_combout\,
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~9_cout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~11_cout\);

-- Location: LCCOMB_X27_Y22_N12
\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~13_cout\ = CARRY((\mips_0|datapath_c|execute_c|AluMux|y[6]~25_combout\ & ((!\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~11_cout\) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(6)))) # 
-- (!\mips_0|datapath_c|execute_c|AluMux|y[6]~25_combout\ & (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(6) & !\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|AluMux|y[6]~25_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(6),
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~11_cout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~13_cout\);

-- Location: LCCOMB_X27_Y22_N14
\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~15_cout\ = CARRY((\mips_0|datapath_c|execute_c|AluMux|y[7]~24_combout\ & (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(7) & !\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~13_cout\)) # 
-- (!\mips_0|datapath_c|execute_c|AluMux|y[7]~24_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(7)) # (!\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|AluMux|y[7]~24_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(7),
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~13_cout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~15_cout\);

-- Location: LCCOMB_X27_Y22_N16
\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~17_cout\ = CARRY((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(8) & (\mips_0|datapath_c|execute_c|AluMux|y[8]~23_combout\ & !\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~15_cout\)) # 
-- (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(8) & ((\mips_0|datapath_c|execute_c|AluMux|y[8]~23_combout\) # (!\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(8),
	datab => \mips_0|datapath_c|execute_c|AluMux|y[8]~23_combout\,
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~15_cout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~17_cout\);

-- Location: LCCOMB_X27_Y22_N18
\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~19_cout\ = CARRY((\mips_0|datapath_c|execute_c|AluMux|y[9]~22_combout\ & (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(9) & !\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~17_cout\)) # 
-- (!\mips_0|datapath_c|execute_c|AluMux|y[9]~22_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(9)) # (!\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|AluMux|y[9]~22_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(9),
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~17_cout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~19_cout\);

-- Location: LCCOMB_X27_Y22_N20
\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~21_cout\ = CARRY((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(10) & (\mips_0|datapath_c|execute_c|AluMux|y[10]~21_combout\ & !\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~19_cout\)) # 
-- (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(10) & ((\mips_0|datapath_c|execute_c|AluMux|y[10]~21_combout\) # (!\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(10),
	datab => \mips_0|datapath_c|execute_c|AluMux|y[10]~21_combout\,
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~19_cout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~21_cout\);

-- Location: LCCOMB_X27_Y22_N22
\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~23_cout\ = CARRY((\mips_0|datapath_c|execute_c|AluMux|y[11]~20_combout\ & (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(11) & !\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~21_cout\)) # 
-- (!\mips_0|datapath_c|execute_c|AluMux|y[11]~20_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(11)) # (!\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|AluMux|y[11]~20_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(11),
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~21_cout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~23_cout\);

-- Location: LCCOMB_X27_Y22_N24
\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~25_cout\ = CARRY((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(12) & (\mips_0|datapath_c|execute_c|AluMux|y[12]~19_combout\ & !\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~23_cout\)) # 
-- (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(12) & ((\mips_0|datapath_c|execute_c|AluMux|y[12]~19_combout\) # (!\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(12),
	datab => \mips_0|datapath_c|execute_c|AluMux|y[12]~19_combout\,
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~23_cout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~25_cout\);

-- Location: LCCOMB_X27_Y22_N26
\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~27_cout\ = CARRY((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(13) & ((!\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~25_cout\) # (!\mips_0|datapath_c|execute_c|AluMux|y[13]~18_combout\))) # 
-- (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(13) & (!\mips_0|datapath_c|execute_c|AluMux|y[13]~18_combout\ & !\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(13),
	datab => \mips_0|datapath_c|execute_c|AluMux|y[13]~18_combout\,
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~25_cout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~27_cout\);

-- Location: LCCOMB_X27_Y22_N28
\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~29_cout\ = CARRY((\mips_0|datapath_c|execute_c|AluMux|y[14]~17_combout\ & ((!\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~27_cout\) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(14)))) # 
-- (!\mips_0|datapath_c|execute_c|AluMux|y[14]~17_combout\ & (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(14) & !\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|AluMux|y[14]~17_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(14),
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~27_cout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~29_cout\);

-- Location: LCCOMB_X27_Y22_N30
\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~31_cout\ = CARRY((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(15) & ((!\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~29_cout\) # (!\mips_0|datapath_c|execute_c|AluMux|y[15]~16_combout\))) # 
-- (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(15) & (!\mips_0|datapath_c|execute_c|AluMux|y[15]~16_combout\ & !\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(15),
	datab => \mips_0|datapath_c|execute_c|AluMux|y[15]~16_combout\,
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~29_cout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~31_cout\);

-- Location: LCCOMB_X27_Y21_N0
\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~33_cout\ = CARRY((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(16) & (\mips_0|datapath_c|execute_c|AluMux|y[16]~15_combout\ & !\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~31_cout\)) # 
-- (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(16) & ((\mips_0|datapath_c|execute_c|AluMux|y[16]~15_combout\) # (!\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(16),
	datab => \mips_0|datapath_c|execute_c|AluMux|y[16]~15_combout\,
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~31_cout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~33_cout\);

-- Location: LCCOMB_X27_Y21_N2
\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~35_cout\ = CARRY((\mips_0|datapath_c|execute_c|AluMux|y[17]~14_combout\ & (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(17) & !\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~33_cout\)) # 
-- (!\mips_0|datapath_c|execute_c|AluMux|y[17]~14_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(17)) # (!\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|AluMux|y[17]~14_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(17),
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~33_cout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~35_cout\);

-- Location: LCCOMB_X27_Y21_N4
\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~37_cout\ = CARRY((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(18) & (\mips_0|datapath_c|execute_c|AluMux|y[18]~13_combout\ & !\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~35_cout\)) # 
-- (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(18) & ((\mips_0|datapath_c|execute_c|AluMux|y[18]~13_combout\) # (!\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(18),
	datab => \mips_0|datapath_c|execute_c|AluMux|y[18]~13_combout\,
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~35_cout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~37_cout\);

-- Location: LCCOMB_X27_Y21_N6
\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~39_cout\ = CARRY((\mips_0|datapath_c|execute_c|AluMux|y[19]~12_combout\ & (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(19) & !\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~37_cout\)) # 
-- (!\mips_0|datapath_c|execute_c|AluMux|y[19]~12_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(19)) # (!\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|AluMux|y[19]~12_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(19),
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~37_cout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~39_cout\);

-- Location: LCCOMB_X27_Y21_N8
\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~41_cout\ = CARRY((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(20) & (\mips_0|datapath_c|execute_c|AluMux|y[20]~11_combout\ & !\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~39_cout\)) # 
-- (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(20) & ((\mips_0|datapath_c|execute_c|AluMux|y[20]~11_combout\) # (!\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(20),
	datab => \mips_0|datapath_c|execute_c|AluMux|y[20]~11_combout\,
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~39_cout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~41_cout\);

-- Location: LCCOMB_X27_Y21_N10
\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~43_cout\ = CARRY((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(21) & ((!\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~41_cout\) # (!\mips_0|datapath_c|execute_c|AluMux|y[21]~10_combout\))) # 
-- (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(21) & (!\mips_0|datapath_c|execute_c|AluMux|y[21]~10_combout\ & !\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(21),
	datab => \mips_0|datapath_c|execute_c|AluMux|y[21]~10_combout\,
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~41_cout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~43_cout\);

-- Location: LCCOMB_X27_Y21_N12
\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~45_cout\ = CARRY((\mips_0|datapath_c|execute_c|AluMux|y[22]~9_combout\ & ((!\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~43_cout\) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(22)))) # 
-- (!\mips_0|datapath_c|execute_c|AluMux|y[22]~9_combout\ & (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(22) & !\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|AluMux|y[22]~9_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(22),
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~43_cout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~45_cout\);

-- Location: LCCOMB_X27_Y21_N14
\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~47_cout\ = CARRY((\mips_0|datapath_c|execute_c|AluMux|y[23]~8_combout\ & (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(23) & !\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~45_cout\)) # 
-- (!\mips_0|datapath_c|execute_c|AluMux|y[23]~8_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(23)) # (!\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|AluMux|y[23]~8_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(23),
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~45_cout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~47_cout\);

-- Location: LCCOMB_X27_Y21_N16
\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~49_cout\ = CARRY((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(24) & (\mips_0|datapath_c|execute_c|AluMux|y[24]~7_combout\ & !\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~47_cout\)) # 
-- (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(24) & ((\mips_0|datapath_c|execute_c|AluMux|y[24]~7_combout\) # (!\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~47_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(24),
	datab => \mips_0|datapath_c|execute_c|AluMux|y[24]~7_combout\,
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~47_cout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~49_cout\);

-- Location: LCCOMB_X27_Y21_N18
\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~51_cout\ = CARRY((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(25) & ((!\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~49_cout\) # (!\mips_0|datapath_c|execute_c|AluMux|y[25]~6_combout\))) # 
-- (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(25) & (!\mips_0|datapath_c|execute_c|AluMux|y[25]~6_combout\ & !\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(25),
	datab => \mips_0|datapath_c|execute_c|AluMux|y[25]~6_combout\,
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~49_cout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~51_cout\);

-- Location: LCCOMB_X27_Y21_N20
\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~53_cout\ = CARRY((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(26) & (\mips_0|datapath_c|execute_c|AluMux|y[26]~5_combout\ & !\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~51_cout\)) # 
-- (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(26) & ((\mips_0|datapath_c|execute_c|AluMux|y[26]~5_combout\) # (!\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(26),
	datab => \mips_0|datapath_c|execute_c|AluMux|y[26]~5_combout\,
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~51_cout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~53_cout\);

-- Location: LCCOMB_X27_Y21_N22
\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~55_cout\ = CARRY((\mips_0|datapath_c|execute_c|AluMux|y[27]~4_combout\ & (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(27) & !\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~53_cout\)) # 
-- (!\mips_0|datapath_c|execute_c|AluMux|y[27]~4_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(27)) # (!\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~53_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|AluMux|y[27]~4_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(27),
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~53_cout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~55_cout\);

-- Location: LCCOMB_X27_Y21_N24
\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~57_cout\ = CARRY((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(28) & (\mips_0|datapath_c|execute_c|AluMux|y[28]~3_combout\ & !\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~55_cout\)) # 
-- (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(28) & ((\mips_0|datapath_c|execute_c|AluMux|y[28]~3_combout\) # (!\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(28),
	datab => \mips_0|datapath_c|execute_c|AluMux|y[28]~3_combout\,
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~55_cout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~57_cout\);

-- Location: LCCOMB_X27_Y21_N26
\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~59_cout\ = CARRY((\mips_0|datapath_c|execute_c|AluMux|y[29]~2_combout\ & (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(29) & !\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~57_cout\)) # 
-- (!\mips_0|datapath_c|execute_c|AluMux|y[29]~2_combout\ & ((\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(29)) # (!\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|AluMux|y[29]~2_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(29),
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~57_cout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~59_cout\);

-- Location: LCCOMB_X27_Y21_N28
\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~61_cout\ = CARRY((\mips_0|datapath_c|execute_c|AluMux|y[30]~1_combout\ & ((!\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~59_cout\) # (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(30)))) # 
-- (!\mips_0|datapath_c|execute_c|AluMux|y[30]~1_combout\ & (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(30) & !\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_c|AluMux|y[30]~1_combout\,
	datab => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(30),
	datad => VCC,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~59_cout\,
	cout => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~61_cout\);

-- Location: LCCOMB_X27_Y21_N30
\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~62_combout\ = (\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(31) & (\mips_0|datapath_c|execute_c|AluMux|y[31]~0_combout\ & \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~61_cout\)) # 
-- (!\mips_0|datapath_c|decode_execute_C|RD1_FF|q\(31) & ((\mips_0|datapath_c|execute_c|AluMux|y[31]~0_combout\) # (\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~61_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|RD1_FF|q\(31),
	datab => \mips_0|datapath_c|execute_c|AluMux|y[31]~0_combout\,
	cin => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~61_cout\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~62_combout\);

-- Location: LCCOMB_X28_Y22_N16
\mips_0|datapath_c|execute_c|MipsAlu|Add0~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~129_combout\ = (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (((\mips_0|datapath_c|execute_c|MipsAlu|LessThan0~62_combout\ & \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2))))) # 
-- (!\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) & (\mips_0|datapath_c|execute_c|AluMux|y[0]~31_combout\ $ (((\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1),
	datab => \mips_0|datapath_c|execute_c|AluMux|y[0]~31_combout\,
	datac => \mips_0|datapath_c|execute_c|MipsAlu|LessThan0~62_combout\,
	datad => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(2),
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~129_combout\);

-- Location: LCCOMB_X27_Y20_N18
\mips_0|datapath_c|execute_c|MipsAlu|Add0~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_c|MipsAlu|Add0~131_combout\ = (\mips_0|datapath_c|execute_c|MipsAlu|Add0~130_combout\ & ((\mips_0|datapath_c|execute_c|MipsAlu|Add0~129_combout\) # (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1) $ 
-- (\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0))))) # (!\mips_0|datapath_c|execute_c|MipsAlu|Add0~130_combout\ & (((\mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0) & \mips_0|datapath_c|execute_c|MipsAlu|Add0~129_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(1),
	datab => \mips_0|datapath_c|decode_execute_C|AluControl_FF|q\(0),
	datac => \mips_0|datapath_c|execute_c|MipsAlu|Add0~130_combout\,
	datad => \mips_0|datapath_c|execute_c|MipsAlu|Add0~129_combout\,
	combout => \mips_0|datapath_c|execute_c|MipsAlu|Add0~131_combout\);

-- Location: FF_X27_Y20_N19
\mips_0|datapath_c|execute_memory_c|AluOut_FF|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_c|MipsAlu|Add0~131_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(0));

-- Location: FF_X27_Y20_N13
\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	asdata => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(0),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(0));

-- Location: LCCOMB_X20_Y22_N8
\mips_0|datapath_c|writeback_c|mux|y[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|writeback_c|mux|y[0]~0_combout\ = (\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (((\mips_0|datapath_c|memory_c|mem|ram~39_q\ & \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a0~portadataout\)))) # 
-- (!\mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\ & (\mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|memory_writeback_c|AluOut_FF|q\(0),
	datab => \mips_0|datapath_c|memory_c|mem|ram~39_q\,
	datac => \mips_0|datapath_c|memory_c|mem|ram_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datad => \mips_0|datapath_c|memory_writeback_c|MemToReg_FF|q~q\,
	combout => \mips_0|datapath_c|writeback_c|mux|y[0]~0_combout\);

-- Location: LCCOMB_X23_Y24_N10
\mips_0|datapath_c|decode_c|registers|memory~72feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory~72feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[0]~0_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory~72feeder_combout\);

-- Location: FF_X23_Y24_N11
\mips_0|datapath_c|decode_c|registers|memory~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory~72feeder_combout\,
	ena => \mips_0|datapath_c|decode_c|registers|memory~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory~72_q\);

-- Location: LCCOMB_X23_Y24_N18
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_execute_C|RD2_FF|q[0]~0_combout\ = (\mips_0|datapath_c|decode_c|registers|memory~71_q\ & ((\mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0~portbdataout\))) # 
-- (!\mips_0|datapath_c|decode_c|registers|memory~71_q\ & (\mips_0|datapath_c|decode_c|registers|memory~72_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|decode_c|registers|memory~72_q\,
	datab => \mips_0|datapath_c|decode_c|registers|memory_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	datad => \mips_0|datapath_c|decode_c|registers|memory~71_q\,
	combout => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[0]~0_combout\);

-- Location: LCCOMB_X23_Y24_N8
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[11]~feeder_combout\ = \mips_0|datapath_c|writeback_c|mux|y[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|writeback_c|mux|y[0]~0_combout\,
	combout => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[11]~feeder_combout\);

-- Location: FF_X23_Y24_N9
\mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(11));

-- Location: FF_X23_Y24_N19
\mips_0|datapath_c|decode_execute_C|RD2_FF|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|decode_execute_C|RD2_FF|q[0]~0_combout\,
	asdata => \mips_0|datapath_c|decode_c|registers|memory_rtl_1_bypass\(11),
	clrn => \KEY[0]~input_o\,
	sclr => \mips_0|datapath_c|decode_c|registers|Equal1~0_combout\,
	sload => \mips_0|datapath_c|decode_c|registers|memory~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(0));

-- Location: LCCOMB_X28_Y22_N0
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[0]~feeder_combout\ = \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|decode_execute_C|RD2_FF|q\(0),
	combout => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[0]~feeder_combout\);

-- Location: FF_X28_Y22_N1
\mips_0|datapath_c|execute_memory_c|WriteData_FF|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q[0]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(0));

-- Location: LCCOMB_X20_Y21_N0
\led_s[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \led_s[0]~feeder_combout\ = \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(0),
	combout => \led_s[0]~feeder_combout\);

-- Location: LCCOMB_X24_Y21_N10
\process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~6_combout\ = (!\mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(11) & (!\mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(8) & (!\mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(10) & !\mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(11),
	datab => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(8),
	datac => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(10),
	datad => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(9),
	combout => \process_0~6_combout\);

-- Location: LCCOMB_X24_Y21_N28
\process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = (!\mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(15) & (!\mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(13) & (!\mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(14) & !\mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(15),
	datab => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(13),
	datac => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(14),
	datad => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(12),
	combout => \process_0~5_combout\);

-- Location: LCCOMB_X24_Y21_N4
\process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~7_combout\ = (\mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(5) & (\mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(6) & (\mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(7) & \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(5),
	datab => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(6),
	datac => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(7),
	datad => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(4),
	combout => \process_0~7_combout\);

-- Location: LCCOMB_X24_Y21_N14
\process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~8_combout\ = (!\mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(0) & (!\mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(1) & (\mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(2) & \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(0),
	datab => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(1),
	datac => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(2),
	datad => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(3),
	combout => \process_0~8_combout\);

-- Location: LCCOMB_X24_Y21_N8
\process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~9_combout\ = (\process_0~6_combout\ & (\process_0~5_combout\ & (\process_0~7_combout\ & \process_0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~6_combout\,
	datab => \process_0~5_combout\,
	datac => \process_0~7_combout\,
	datad => \process_0~8_combout\,
	combout => \process_0~9_combout\);

-- Location: LCCOMB_X28_Y21_N12
\process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (!\mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(20) & (!\mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(21) & (!\mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(23) & !\mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(20),
	datab => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(21),
	datac => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(23),
	datad => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(22),
	combout => \process_0~2_combout\);

-- Location: LCCOMB_X25_Y20_N24
\process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (!\mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(27) & (!\mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(26) & (!\mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(24) & !\mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(27),
	datab => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(26),
	datac => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(24),
	datad => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(25),
	combout => \process_0~1_combout\);

-- Location: LCCOMB_X28_Y21_N30
\process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (!\mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(18) & (!\mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(16) & (!\mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(19) & !\mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(18),
	datab => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(16),
	datac => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(19),
	datad => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(17),
	combout => \process_0~3_combout\);

-- Location: LCCOMB_X28_Y21_N18
\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (!\mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(29) & (!\mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(30) & (!\mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(28) & !\mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(29),
	datab => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(30),
	datac => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(28),
	datad => \mips_0|datapath_c|execute_memory_c|AluOut_FF|q\(31),
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X28_Y21_N24
\process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = (\process_0~2_combout\ & (\process_0~1_combout\ & (\process_0~3_combout\ & \process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~2_combout\,
	datab => \process_0~1_combout\,
	datac => \process_0~3_combout\,
	datad => \process_0~0_combout\,
	combout => \process_0~4_combout\);

-- Location: LCCOMB_X28_Y21_N26
\process_0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~10_combout\ = (\process_0~9_combout\ & (\mips_0|datapath_c|execute_memory_c|MemWrite_FF|q~q\ & \process_0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~9_combout\,
	datac => \mips_0|datapath_c|execute_memory_c|MemWrite_FF|q~q\,
	datad => \process_0~4_combout\,
	combout => \process_0~10_combout\);

-- Location: FF_X20_Y21_N1
\led_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \led_s[0]~feeder_combout\,
	ena => \process_0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_s(0));

-- Location: FF_X20_Y21_N3
\led_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	asdata => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(1),
	sload => VCC,
	ena => \process_0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_s(1));

-- Location: LCCOMB_X20_Y21_N12
\led_s[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \led_s[2]~feeder_combout\ = \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(2),
	combout => \led_s[2]~feeder_combout\);

-- Location: FF_X20_Y21_N13
\led_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \led_s[2]~feeder_combout\,
	ena => \process_0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_s(2));

-- Location: LCCOMB_X20_Y21_N22
\led_s[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \led_s[3]~feeder_combout\ = \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(3),
	combout => \led_s[3]~feeder_combout\);

-- Location: FF_X20_Y21_N23
\led_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \led_s[3]~feeder_combout\,
	ena => \process_0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_s(3));

-- Location: LCCOMB_X20_Y21_N16
\led_s[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \led_s[4]~feeder_combout\ = \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(4),
	combout => \led_s[4]~feeder_combout\);

-- Location: FF_X20_Y21_N17
\led_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \led_s[4]~feeder_combout\,
	ena => \process_0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_s(4));

-- Location: LCCOMB_X20_Y21_N26
\led_s[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \led_s[5]~feeder_combout\ = \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(5),
	combout => \led_s[5]~feeder_combout\);

-- Location: FF_X20_Y21_N27
\led_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \led_s[5]~feeder_combout\,
	ena => \process_0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_s(5));

-- Location: LCCOMB_X20_Y21_N4
\led_s[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \led_s[6]~feeder_combout\ = \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(6),
	combout => \led_s[6]~feeder_combout\);

-- Location: FF_X20_Y21_N5
\led_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \led_s[6]~feeder_combout\,
	ena => \process_0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_s(6));

-- Location: LCCOMB_X28_Y21_N16
\led_s[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \led_s[7]~feeder_combout\ = \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_0|datapath_c|execute_memory_c|WriteData_FF|q\(7),
	combout => \led_s[7]~feeder_combout\);

-- Location: FF_X28_Y21_N17
\led_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv_0|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]~clkctrl_outclk\,
	d => \led_s[7]~feeder_combout\,
	ena => \process_0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_s(7));

-- Location: IOIBUF_X0_Y16_N8
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

ww_LED(0) <= \LED[0]~output_o\;

ww_LED(1) <= \LED[1]~output_o\;

ww_LED(2) <= \LED[2]~output_o\;

ww_LED(3) <= \LED[3]~output_o\;

ww_LED(4) <= \LED[4]~output_o\;

ww_LED(5) <= \LED[5]~output_o\;

ww_LED(6) <= \LED[6]~output_o\;

ww_LED(7) <= \LED[7]~output_o\;
END structure;


