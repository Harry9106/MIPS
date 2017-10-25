library ieee;
library work;
use ieee.std_logic_1164.all;
use work.all;

entity decode is

  port (clk, RegWrite : in std_logic;
		  WriteReg : in std_logic_vector(4 downto 0);
		  Instr, Result : in std_logic_vector(31 downto 0);
		  rd1, rd2, Signlmm: out std_logic_vector(31 downto 0));
		
end decode;

architecture behavior of decode is
begin

  signextend : signext port map (a => Instr(15 downto 0), y => Signlmm);

  registers   : regfile port map (ra1 => Instr(25 downto 21),
											 ra2 => Instr(20 downto 16),
											 wa3 => WriteReg, wd3 => Result,
											 we3 => RegWrite, clk => clk,
											 rd1 => rd1, rd2 => rd2);

end architecture;