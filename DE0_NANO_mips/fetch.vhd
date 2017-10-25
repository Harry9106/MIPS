library ieee;
library work;
use ieee.std_logic_1164.all;
use work.all;


entity fetch is

  port (
			PCBranch : in std_logic_vector(31 downto 0);
			PCSrc, Jump, reset, clk : in std_logic;
			PCPlus4, Instr : out std_logic_vector(31 downto 0)
  );

end entity;

architecture behavior of fetch is

	signal aux1, aux2, PC, Instr_s, PCPlus4_s, PCJump : std_logic_vector(31 downto 0);

begin

  PCMux   : mux2  port map (s => PCSrc, d0 => PCPlus4_s,
                            d1 => PCBranch, y => aux1);

  JumpMux : mux2  port map (s => Jump, d0 => aux1,
                            d1 => PCJump, y => aux2);

  PCFF    : flopr port map (reset => reset, clk => clk,
                            d => aux2, q => PC);

  IMemory : imem  port map (address => PC(7 downto 2), q => Instr_s);

  PCAdder : adder port map (a => PC, b => X"00000004", y => PCPlus4_s);
  
  Instr <= Instr_s;
  PcPlus4 <= PCPlus4_s;
  PCJump <= PCPlus4_s(31 downto 28) & Instr_s(25 downto 0) & "00";

end architecture;