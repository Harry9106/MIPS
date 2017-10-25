library ieee;
library work;
use ieee.std_logic_1164.all;
use work.all;

entity mips is

  port (
			reset, clk : in std_logic;
			--Instr, pc, ReadData : out std_logic_vector(31 downto 0);
			MemAddress, MemData : out std_logic_vector(31 downto 0);
			MemEna : out std_logic
  );

end mips;

architecture behavior of mips is

	signal MemToReg_s, MemWrite_s, Branch_s, AluSrc_s, RegDst_s, RegWrite_s,
				Jump_s : std_logic;
	signal AluControl_s : std_logic_vector(2 downto 0);
	signal Instr_s, pc_s, RD_s, WD_s : std_logic_vector(31 downto 0);

begin

	controller_c : controller port map	(Op => Instr_s(31 downto 26),
													Funct => Instr_s(5 downto 0),
													MemToReg => MemToReg_s,
													MemWrite => MemWrite_s,
													Branch => Branch_s,
													AluSrc => AluSrc_s,
													RegDst => RegDst_s,
													RegWrite => RegWrite_s,
													Jump => Jump_s,
													AluControl => AluControl_s);
								
	datapath_c : datapath port map	(Jump => Jump_s, clk => clk,
												reset => reset, RegWrite => RegWrite_s,
												AluSrc => AluSrc_s,
												RegDst => RegDst_s,
												MemWrite => MemWrite_s,
												Branch => Branch_s,
												MemToReg => MemToReg_s,
												AluControl => AluControl_s,
												Instr => Instr_s,
												--pc => pc_s,
												--ReadData => ReadData,
												MemAddress => MemAddress,
												MemData => MemData,
												MemEna => MemEna);
												
	--Instr <= Instr_s;
	--pc <= pc_s;
	
end architecture;