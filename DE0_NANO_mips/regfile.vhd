library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity regfile is

	port(
			we3, clk: in std_logic;
			wd3: in std_logic_vector(31 downto 0);
			ra1, ra2, wa3: in std_logic_vector(4 downto 0);
			rd1, rd2: out std_logic_vector(31 downto 0));
			

end regfile;

architecture behavior of regfile is

  type reg_memory is array (0 to 31) of std_logic_vector(31 downto 0);
  signal memory : reg_memory;

begin

	process (clk, ra1, ra2)
	begin

		if (clk'event and clk = '1' and we3 = '1') then
			memory(to_integer(unsigned(wa3))) <= wd3;
		end if;

		if (to_integer(unsigned(ra1)) = 0) then
			rd1 <= (others => '0');
		else
			rd1 <= memory(to_integer(unsigned(ra1)));
		end if;

		if (to_integer(unsigned(ra2)) = 0) then
			rd2 <= (others => '0');
		else
			rd2 <= memory(to_integer(unsigned(ra2)));
		end if;

	end process;

end architecture;