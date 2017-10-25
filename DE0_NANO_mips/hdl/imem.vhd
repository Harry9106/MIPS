library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity imem is
	generic (
	DATA_WIDTH : natural := 32;
	ADDR_WIDTH : natural := 6
	);

	port (
	address	: in std_logic_vector ((ADDR_WIDTH-1) downto 0);
	q		: out std_logic_vector((DATA_WIDTH -1) downto 0)
	);
end entity;

architecture rtl of imem is

	subtype word_t is std_logic_vector((DATA_WIDTH-1) downto 0);
	type memory_t is array(2**ADDR_WIDTH-1 downto 0) of word_t;	 

	signal rom : memory_t;
	attribute ram_init_file : string;
	attribute ram_init_file of rom :
	signal is "imem.mif";	

begin
	q <= rom(to_integer(unsigned(address)));

end rtl;
