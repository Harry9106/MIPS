library ieee;
library work;
use ieee.std_logic_1164.all;
use work.all;

entity execute is

  port (
			rd1, rd2, Signlmm, PCPlus4 : in std_logic_vector(31 downto 0);
			AluSrc, RegDst : in std_logic;
			AluControl: in std_logic_vector (2 downto 0);
			RtE, RdE : in std_logic_vector(4 downto 0);
			Zero: out std_logic;
			WriteReg : out std_logic_vector(4 downto 0);
			WriteData, AluResult, PCBranch : out std_logic_vector(31 downto 0)
			);

end execute;

architecture behavior of execute is
  
  signal sl2_s, mux2_s : std_logic_vector(31 downto 0);

begin

  WriteData <= rd2;
  
  RegMux  : mux2 generic map (N => 5) port map (s => RegDst , d0 => RtE,
                            d1 => RdE, y => WriteReg);

  AluMux  : mux2  port map (s => AluSrc, d0 => rd2,
                            d1 => Signlmm, y => mux2_s);

  Shift2  : sl2   port map (a => Signlmm, y => sl2_s);

  MipsAlu : alu   port map (alucontrol => AluControl, a => rd1, b => mux2_s,
                            zero => Zero, result => AluResult);

  PcAdder : adder port map (a => PCPlus4, b => sl2_s, y => PCBranch);

end architecture;