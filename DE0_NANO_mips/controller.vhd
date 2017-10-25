library ieee;
library work;
use ieee.std_logic_1164.all;
use work.all;

entity controller is

  port (
			Op, Funct : in std_logic_vector(5 downto 0);
			MemToReg, MemWrite, Branch, AluSrc, RegDst, RegWrite, Jump : out std_logic;
			AluControl : out std_logic_vector(2 downto 0)
  );

end controller;

architecture behavior of controller is

	signal AluOp_s : std_logic_vector(1 downto 0);

begin

	maindec_c : maindec port map	(Op => Op, RegDst => RegDst,
					RegWrite => RegWrite, Jump => Jump,
					AluOp => AluOp_s, MemToReg => MemToReg,
					MemWrite => MemWrite, Branch => Branch,
					AluSrc => AluSrc);

	aludec_c : aludec port map	(funct => Funct, aluop => AluOp_s,
					alucontrol => AluControl);

end architecture;
