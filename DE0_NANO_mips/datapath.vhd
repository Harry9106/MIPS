library ieee;
library work;
use ieee.std_logic_1164.all;
use work.all;

entity datapath is

  port (
			Jump, clk, reset, RegWrite, AluSrc, RegDst, MemWrite, Branch, MemToReg : in std_logic;
			AluControl: in std_logic_vector (2 downto 0);
			Instr : out std_logic_vector(31 downto 0);
			--pc : out std_logic_vector(31 downto 0);
			--ReadData : out std_logic_vector(31 downto 0);
			MemData, MemAddress : out std_logic_vector(31 downto 0);
			MemEna : out std_logic
  );

end datapath;

architecture behavior of datapath is


	signal RegWriteE_s, MemToRegE_s, MemWriteE_s, JumpE_s, BranchE_s, AluSrcE_s, RegDstE_s, ZeroE_s : std_logic;
	signal RegWriteM_s, MemToRegM_s, MemWriteM_s, BranchM_s, MemToRegW_s : std_logic;
	signal AluControlE_s : std_logic_vector(2 downto 0);
	signal RegWriteW_s : std_logic;
	signal PCSrcM_s : std_logic;
	signal PCBranchM_s, PCBranchE_s,InstrF_s, InstrD_s, PCPlus4F_s, PCPlus4D_s, PCPlus4E_s : std_logic_vector(31 downto 0);
	signal WriteRegW_s, WriteRegE_s, WriteRegM_s, RtE_s, RdE_s : std_logic_vector(4 downto 0);
	signal ResultW_s, rd1D_s, rd2D_s, rd1E_s, rd2E_s, SignlmmD_s, SignlmmE_s : std_logic_vector(31 downto 0);
	signal ZeroM_s : std_logic;
	signal WriteDataE_s, WriteDataOut_s, AluResultE_s : std_logic_vector(31 downto 0);
	signal AluOutM_s, AluResultOutM_s, AluResultOutW_s, ReadDataW_s, ReadDataM_s : std_logic_vector(31 downto 0);
	signal JumpM_s : std_logic;
	signal WriteDataM_s : std_logic_vector(31 downto 0);
	signal MemWriteEna_s : std_logic;

begin

	--pc <= PCPlus4F_s;
	--ReadData <= ResultW_s;
	Instr <= InstrD_s;
	MemData<= WriteDataOut_s;
	MemAddress<=AluOutM_s;
	MemEna<=MemWriteEna_s;

	fetch_c : fetch port map  (Jump => JumpM_s, PCSrc => PCSrcM_s, clk => clk,
									reset => reset, PCBranch => PCBranchM_s,
									Instr => InstrF_s, PCPlus4 => PCPlus4F_s);
									
	fetch_decode_c : ifde port map (clk => clk, reset => reset,
                                   InstrF => InstrF_s, PCPlus4F => PCPlus4F_s,
                                   InstrD => InstrD_s, PCPlus4D => PCPlus4D_s);
									
	decode_c : decode port map 	(clk => clk, RegWrite => RegWriteW_s,
											WriteReg => WriteRegW_s, Instr => InstrD_s,
											Result => ResultW_s,
											rd1 => rd1D_s, rd2 => rd2D_s,
											Signlmm => SignlmmD_s);
										
	decode_execute_C : deex  port map (reset => reset, clk => clk,
													 RtD => InstrD_s(20 downto 16), RdD => InstrD_s(15 downto 11),
													 RtE => RtE_s, RdE => RdE_s,
													 AluControlD => AluControl,
													 AluControlE => AluControlE_s,
													 PCPlus4D => PCPlus4D_s, RD1D => RD1D_s, RD2D => RD2D_s, SignlmmD => SignlmmD_s,
													 PCPlus4E => PCPlus4E_s, RD1E => rd1E_s, RD2E => rd2E_s, SignlmmE => SignlmmE_s,
													 RegWriteD => RegWrite, MemToRegD => MemToReg, MemWriteD => MemWrite, JumpD => Jump, BranchD => Branch, AluSrcD => AluSrc, RegDstD => RegDst,
													 RegWriteE => RegWriteE_s, MemToRegE => MemToRegE_s, MemWriteE => MemWriteE_s, JumpE => JumpE_s, BranchE => BranchE_s, AluSrcE => AluSrcE_s, RegDstE => RegDstE_s);
										
	execute_c : execute port map	(rd1 => rd1E_s, rd2 => rd2E_s,
											Signlmm => SignlmmE_s, PCPlus4 => PCPlus4E_s,
											RtE => RtE_s, RdE => RdE_s, AluSrc => AluSrcE_s,
											RegDst => RegDstE_s, AluControl => AluControlE_s,
											Zero => ZeroE_s, WriteReg => WriteRegE_s,
											WriteData => WriteDataE_s,
											AluResult => AluResultE_s,
											PCBranch => PCBranchE_s);
										
	execute_memory_c : exme port map (ZeroE => ZeroE_s, reset => reset, clk => clk,
												 RegWriteE => RegWriteE_s, MemToRegE => MemToRegE_s, MemWriteE => MemWriteE_s, JumpE => JumpE_s, BranchE => BranchE_s,
												 WriteRegE => WriteRegE_s,
												 AluOutE => AluResultE_s, WriteDataE => WriteDataE_s, PCBranchE => PCBranchE_s,
												 ZeroM => ZeroM_s,
												 WriteRegM => WriteRegM_s,
												 RegWriteM => RegWriteM_s, MemToRegM => MemToRegM_s, MemWriteM => MemWriteM_s, JumpM => JumpM_s, BranchM => BranchM_s,
												 AluOutM => AluResultOutM_s, WriteDataM => WriteDataM_s, PCBranchM => PCBranchM_s);
	
	memory_c : memory port map	(AluResultIn => AluResultOutM_s,
										WriteData => WriteDataM_s, MemWrite => MemWriteM_s,
										clk => clk, Branch => BranchM_s, Zero => ZeroM_s,
										PCSrc => PCSrcM_s,
										AluResultOut => AluOutM_s,
										ReadData => ReadDataM_s,
										WriteDataOut => WriteDataOut_s,
										MemWriteEna => MemWriteEna_s);
										
	memory_writeback_c : mewb port map (reset => reset, clk => clk,
													RegWriteM => RegWriteM_s, MemToRegM => MemToRegM_s,
													WriteRegM => WriteRegM_s,
													AluOutM => AluOutM_s, ReadDataM => ReadDataM_s,
													RegWriteW => RegWriteW_s, MemToRegW => MemToRegW_s,
													WriteRegW => WriteRegW_s,
													AluOutW => AluResultOutW_s, ReadDataW => ReadDataW_s);
	
	writeback_c : writeback port map	(AluResult => AluResultOutW_s,
												ReadData => ReadDataW_s,
												MemToReg => MemToRegW_s,
												Result => ResultW_s);

end architecture;