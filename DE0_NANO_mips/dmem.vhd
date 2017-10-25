library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dmem is
	port 
	(	
		a		: in std_logic_vector(31 downto 0);
		wd		: in std_logic_vector(31 downto 0);
		we		: in std_logic;
		clk	: in std_logic;
		rd		: out std_logic_vector(31 downto 0)
	);
	
end dmem;

architecture rtl of dmem is
	
	-- Build a 2-D array type for the RAM
	subtype word_t is std_logic_vector(31 downto 0);
	type memory_t is array(63 downto 0) of word_t;
	
	-- Declare the RAM
	signal ram : memory_t;

begin

	-- Port A
	process(clk, ram, a)
	variable aux : std_logic_vector(5 downto 0) := a(7 downto 2);
	begin
		if(rising_edge(clk)) then 
			if(we = '1') then
				ram(to_integer(unsigned(aux))) <= wd;
			end if;
		end if;
		rd <= ram(to_integer(unsigned(aux)));
	end process;
	
end rtl;