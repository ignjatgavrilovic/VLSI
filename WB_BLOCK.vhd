library ieee;
use ieee.std_logic_1164.all;

entity WB_BLOCK is

	port (
		clk : in std_logic;
		
		-- dobijeno od MEM
		ALU_in : in std_logic_vector(31 downto 0);
		Reg_in : in std_logic_vector(4 downto 0);
		
		-- za komunikaciju sa REG_FILE-om
		wr_out	: out std_logic;
		Reg_out	: out std_logic_vector(4 downto 0);
		data_out	: out std_logic_vector(31 downto 0);
		
		-- halt
		halt_in  : in  std_logic;
		halt_out : out std_logic
	);

end WB_BLOCK;

architecture rtl of WB_BLOCK is

begin
	
	process (clk) is
		variable ALU_pom  : std_logic_vector(31 downto 0);
		variable Reg_pom  : std_logic_vector(4 downto 0);
		variable halt_pom : std_logic;
	begin
		if (rising_edge(clk)) then
			
			ALU_pom  := ALU_in;
			REG_pom  := Reg_in;
			halt_pom := halt_in; 
			
			if (Reg_in /= "ZZZZZ" AND Reg_in /= "UUUUU") then -- jel moze ovako?
				Reg_out <= Reg_in;
				data_out <= ALU_in;
				wr_out <= '1';
			else
				wr_out <= 'Z';
			end if;
			
		end if;
		
		if (falling_edge(clk)) then
			if (halt_pom = '1') then
				halt_out <= '1';
			end if;
		end if;
		
	end process;
	
end architecture;