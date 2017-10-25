library ieee;
use ieee.std_logic_1164.all;
------------------------------------------------------
entity mux2 is
	generic (N: INTEGER := 32);
	port (
		d0: in std_logic_vector ((N-1) downto 0);
		d1: in std_logic_vector ((N-1) downto 0);
		s: in std_logic;
		y: out std_logic_vector ((N-1) downto 0));
end mux2;
------------------------------------------------------
architecture behavioral of mux2 is
begin
	y <= d0 when s='0' else d1;
end behavioral;