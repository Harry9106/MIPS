library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
------------------------------------------------------
entity alu is
	port (
		a: in std_logic_vector (31 downto 0);
		b: in std_logic_vector (31 downto 0);
		alucontrol: in std_logic_vector (2 downto 0);
		zero: out std_logic;
		result: out std_logic_vector (31 downto 0));
end alu;
------------------------------------------------------
architecture behavioral of alu is
begin
	process (alucontrol, a, b)
		variable aux : std_logic_vector(31 downto 0);
	begin
		case alucontrol is
			when "000" => aux := a and b;
			when "001" => aux := a or b;
			when "010" => aux := std_logic_vector(unsigned(a) + unsigned(b));
			when "100" => aux := a and (not b);
			when "101" => aux := a or (not b);
			when "110" => aux := std_logic_vector(unsigned(a) - unsigned(b));
			when "111" => aux := (others => '0');
							  if a < b then aux(0) := '1';
							  end if;
			when others => aux := (others => 'X');
		 end case;
		 
		 if aux = X"00000000" then zero <= '1';
		 else	zero <= '0';
		 end if;
		 
		 result <= aux;

	end process;
end behavioral;