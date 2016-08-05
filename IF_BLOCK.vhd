library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity IF_BLOCK is

	port
	(
		clk : in std_logic;
		ir_in : in std_logic_vector(31 downto 0);
		
	--	rd : out std_logic;
		adr_out : out std_logic_vector(31 downto 0);
		ir_out : out std_logic_vector(31 downto 0)
	);
	

end IF_BLOCK;

architecture rtl of IF_BLOCK is
	
begin
	process (clk) is 
		variable pc : std_logic_vector(31 downto 0);
	begin
		if (rising_edge(clk)) then 
			--rd <= '1';
			adr_out <= pc;
			pc := std_logic_vector(unsigned(pc) + 1);
		end if;
		
		if (falling_edge(clk)) then
			ir_out <= ir_in;
		end if;
		
	end process;	
end architecture;