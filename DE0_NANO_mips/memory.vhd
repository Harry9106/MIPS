library ieee;
library work;
use ieee.std_logic_1164.all;
use work.all;

entity memory is

  port (
			AluResultIn, WriteData : in std_logic_vector(31 downto 0);
			MemWrite, clk, Branch, Zero : in std_logic;
			PCSrc : out std_logic;
			AluResultOut, ReadData : out std_logic_vector(31 downto 0);
			WriteDataOut : out std_logic_vector(31 downto 0);
			MemWriteEna : out std_logic
  );

end memory;

architecture behavior of memory is
begin

	AluResultOut <= AluResultIn;
	PCSrc <= Branch and Zero;
	
	WriteDataOut <= WriteData;
	MemWriteEna <= MemWrite;
	
	mem : dmem port map (a => AluResultIn, wd => WriteData,
                           clk => clk, we => MemWrite, rd => ReadData);

end architecture;