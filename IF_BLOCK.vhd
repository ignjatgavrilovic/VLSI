library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity IF_BLOCK is

	port (
		clk : in std_logic;
		adr_out : out std_logic_vector(31 downto 0);
		ir_in : in std_logic_vector(31 downto 0);
		
		-- dobijamo od EX_BLOCK-a u slucaju da treba da se skoci
		new_pc_in : in  std_logic_vector(31 downto 0); 
		
		-- saljemo ID_BLOCK-u
		ir_out : out std_logic_vector(31 downto 0);
		pc_out : out std_logic_vector(31 downto 0)
	);
	

end IF_BLOCK;

architecture rtl of IF_BLOCK is
	signal ir : std_logic_vector(31 downto 0);
begin
	process (clk) is 
		variable pc : std_logic_vector(31 downto 0);
		variable pc_next : std_logic_vector(31 downto 0) := (others => '0');
	begin
		if (rising_edge(clk)) then 
			pc := pc_next;
			adr_out <= pc_next;
		end if;
		
		if (falling_edge(clk)) then
			ir_out <= ir_in; -- dobijen od INSTR_CACHE-a i salje se ID_BLOCK-u
			pc_out <= pc;  -- ovo se prosledjuje ID-ju
			pc_next := std_logic_vector(unsigned(pc) + 1);
		end if;
		
	end process;	
end architecture;