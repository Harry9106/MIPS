library ieee;
library work;
use ieee.std_logic_1164.all;
use work.all;

entity writeback is

  port (
			AluResult, ReadData : in std_logic_vector(31 downto 0);
			MemToReg : in std_logic;
			Result : out std_logic_vector(31 downto 0)
  );

end entity;

architecture behavior of writeback is
begin

  mux : mux2 port map (s => MemToReg, d0 => AluResult,
                       d1 => ReadData, y => Result);

end architecture;