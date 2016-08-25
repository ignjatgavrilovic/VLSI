library ieee;
use ieee.std_logic_1164.all;

entity MEM_BLOCK is

	port (
		clk : in std_logic;
		
		-- dobijeno od EX
		ALU_in	: in std_logic_vector(31 downto 0);
		B_in    	: in std_logic_vector(31 downto 0); --operand za store
		load_in	: in std_logic;
		store_in	: in std_logic;
		rts_in	: in std_logic;
		Reg_in	: in std_logic_vector(4 downto 0);
		
		-- salje se WB
		ALU_out  : out std_logic_vector(31 downto 0);
		Reg_out  : out std_logic_vector(4 downto 0);
		
		-- komunikacija sa DATA_CACHE-om
		rd_out	: out std_logic;
		wr_out	: out std_logic;
		adr_out	: out std_logic_vector(31 downto 0); -- adresa na koju se upisuje/sa koje se cita
		data_out : out std_logic_vector(31 downto 0);
		data_in  : in  std_logic_vector(31 downto 0);
		
		-- HAZARDI mem -> ex
		reg_no_fwd_out   : out std_logic_vector(4 downto 0);
		reg_data_fwd_out : out std_logic_vector(31 downto 0);
		
		-- komunikacija sa ID zbog RTS_in
		new_pc_out : out std_logic_vector(31 downto 0);
		
		-- halt
		halt_in  : in  std_logic;
		halt_out : out std_logic
	);
	
end MEM_BLOCK;

architecture rtl of MEM_BLOCK is

begin
	process (clk) is
		variable ALU_pom	: std_logic_vector(31 downto 0);
		variable B_pom   	: std_logic_vector(31 downto 0); 
		variable load_pom	: std_logic;
		variable store_pom: std_logic;
		variable rts_pom  : std_logic;
		variable Reg_pom	: std_logic_vector(4 downto 0);
		variable halt_pom : std_logic;
	begin
	
		if (rising_edge(clk)) then
			
			ALU_pom	 := ALU_in	 ;
			B_pom   	 := B_in     ;	
			load_pom	 := load_in	 ;
			store_pom := store_in ;	
			rts_pom   := rts_in	 ;
			Reg_pom	 := Reg_in	 ;
			halt_pom  := halt_in  ;
			
			if (load_pom = '1' OR rts_pom = '1') then
				adr_out <= ALU_pom; -- adresa koju saljemo DATA_CACHE
				rd_out <= '1';
				wr_out <= 'Z';
			elsif (store_pom = '1') then
				adr_out <= ALU_pom;
				data_out <= B_pom;
				wr_out <= '1';
				rd_out <= 'Z';
			else 
				-- ne radimo nista
				rd_out <= 'Z';
				wr_out <= 'Z';
			end if;
		end if;
		
		if (falling_edge(clk)) then
			halt_out <= halt_pom;
			new_pc_out <= (others => 'Z');
			
			if (load_pom = '1') then
				ALU_out <= data_in; -- dobijen podatak od DATA_CACHE
				Reg_out <= Reg_pom;
				reg_no_fwd_out <= Reg_pom;  
				reg_data_fwd_out <= data_in;
			elsif (store_pom = '1') then
				Reg_out <= Reg_pom; -- 'Z'
				reg_no_fwd_out   <= (others => 'Z');  
				reg_data_fwd_out <= (others => 'Z');
			elsif (rts_pom = '1') then
				new_pc_out <= data_in;
			else 
				ALU_out <= ALU_pom;
				Reg_out <= Reg_pom;
				reg_no_fwd_out   <= Reg_pom;
				reg_data_fwd_out <= ALU_pom;
			end if; 
		end if;
		
	end process;
end architecture;