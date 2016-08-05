library ieee;
use ieee.std_logic_1164.all;

entity CPU is

	port 
	(
		clk : in std_logic;
		reset : in std_logic;
		ir_in : in std_logic_vector(31 downto 0); -- dobijeno od instr_cache
		ir_out : out std_logic_vector(31 downto 0); -- saljemo ID
		adr_out : out std_logic_vector(31 downto 0)
	);

end CPU;

architecture rtl of CPU is	
		
begin
	IF_BLOCK: entity work.IF_BLOCK
	port map (
		clk => clk,
		ir_in => ir_in,
		ir_out => ir_out,
		adr_out => adr_out
	);
	
end architecture;
