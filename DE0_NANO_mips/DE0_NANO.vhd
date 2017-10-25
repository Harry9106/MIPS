library ieee;
use ieee.std_logic_1164.all;

library work;
use work.all;

entity DE0_NANO is
    port (
        KEY : in std_logic_vector (1 downto 0);
		  CLOCK_50 : in std_logic;
		  LED : out std_logic_vector (7 downto 0)
    );
end DE0_NANO;

architecture arch of DE0_NANO is

component clkDiv IS
	PORT
	(
		clock		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (22 DOWNTO 0)
	);
END component;

signal reset_s,clk: std_logic;
signal instr_s,pc_s,ReadData_s: std_logic_vector(31 downto 0);
signal clk_s : std_LOGIC_VECTOR(22 downto 0);
signal MemData, MemAddress: std_logic_vector(32-1 downto 0);
signal MemEna : std_LOGIC;
signal led_s : std_logic_vector (7 downto 0);

begin
	mips_0: mips port map (
									clk => clk,
									reset => reset_s,
									--Instr => instr_s,
									--pc => pc_s,
									--ReadData => ReadData_s,
									MemData => MemData,
									MemAddress => MemAddress,
									MemEna => MemEna
									);
									
	clkDiv_0 : clkDiv port map (CLOCK_50, clk_s);
	clk <= clk_s(22);
   led <= led_s;
   reset_s <= not KEY(0);

	process (clk)
	begin
		if (rising_edge(clk)) then
			if (MemEna = '1' and MemAddress = "00000000000000000000000011111100") then
				 led_s <=MemData(7 downto 0);
			else 
				led_s <= led_s;
			end if;
		end if;
	end process;
end arch;