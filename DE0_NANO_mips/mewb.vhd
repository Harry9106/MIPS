library ieee;
library work;
use work.all;
use ieee.std_logic_1164.all;

entity mewb is

  port(reset, clk : in std_logic;
       RegWriteM, MemToRegM : in std_logic;
		 WriteRegM : in std_logic_vector(4 downto 0);
		 AluOutM, ReadDataM : in std_logic_vector(31 downto 0);
       RegWriteW, MemToRegW : out std_logic;
       WriteRegW : out std_logic_vector(4 downto 0);
       AluOutW, ReadDataW : out std_logic_vector(31 downto 0));

end entity;

architecture behavior of mewb is
begin

  AluOut_FF   : flopr port map (reset => reset, clk => clk, d => AluOutM, q => AluOutW);
  ReadData_FF : flopr port map (reset => reset, clk => clk, d => ReadDataM, q => ReadDataW);
  WriteReg_FF : flopr generic map (N => 5) port map (reset => reset, clk => clk, d => WriteRegM, q => WriteRegW);
  RegWrite_FF  : flopr1 port map (reset => reset, clk => clk, d => RegWriteM, q => RegWriteW);
  MemToReg_FF  : flopr1 port map (reset => reset, clk => clk, d => MemToRegM, q => MemToRegW);

end architecture;