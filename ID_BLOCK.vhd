library ieee;
use ieee.std_logic_1164.all;

entity ID_BLOCK is

	port (
		clk : in std_logic;
		
		pc_in : in std_logic_vector(31 downto 0);
		ir_in : in std_logic_vector(31 downto 0);
	);

end ID_BLOCK;

architecture rtl of ID_BLOCK is
	
begin

end architecture;