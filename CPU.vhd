library ieee;
use ieee.std_logic_1164.all;

entity CPU is

	port 
	(
		clk : in std_logic;
		reset : in std_logic;
		adr_out : out std_logic_vector(31 downto 0)
	);

end CPU;

architecture rtl of CPU is
	-- IF
	--signal rd : std_logic;
	signal ir_in : std_logic_vector(31 downto 0);	
	signal ir_out : std_logic_vector(31 downto 0);
	
		
begin
	IF_BLOCK: entity work.IF_BLOCK
	port map (
		clk => clk,
		--rd => rd,
		ir_in => ir_in,
		ir_out => ir_out,
		adr_out => adr_out
	);
	
end architecture;
