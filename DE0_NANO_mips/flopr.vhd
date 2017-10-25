library ieee;
use ieee.std_logic_1164.all;
------------------------------------------------------
entity flopr is
	generic (N: INTEGER := 32);
	port (
		d: in std_logic_vector ((N-1) downto 0);
		reset: in std_logic;
		clk: in std_logic;
		q: out std_logic_vector ((N-1) downto 0));
end flopr;
------------------------------------------------------
architecture behavioral of flopr is
begin
	process (clk, reset)
	begin
		if reset='1' then
			q <= (others => '0');
		elsif clk='1' and clk'EVENT then
			q <= d;
		end if;
	end process;
end behavioral;