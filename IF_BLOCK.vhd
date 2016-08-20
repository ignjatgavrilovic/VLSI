library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity IF_BLOCK is

	port (
		clk : in std_logic;
		adr_out : out std_logic_vector(31 downto 0); -- ka INSTR_CACHE
		first_pc_in : in std_logic_vector(31 downto 0);
		ir_in : in std_logic_vector(31 downto 0);
		
		-- saljemo ID_BLOCK-u
		ir_out : out std_logic_vector(31 downto 0);
		pc_out : out std_logic_vector(31 downto 0);
		
		-- predikcija skoka
		new_pc_in 			 : in  std_logic_vector(31 downto 0); -- dobijamo od ID_BLOCK-a 
		predicted_pc_in	 : in  std_logic_vector(31 downto 0); -- dobijamo od ID_BLOCK-a 
		predicted_pc_out 	 : out std_logic_vector(31 downto 0); -- saljemo do EX_BLOCK-a preko ID-a
		jump_predicted_in	 : in  std_logic; 
		jump_predicted_out : out std_logic;
		
		-- predikcija cache
		predictor_out   : out std_logic_vector(1 downto 0); -- izlaz ka ID-u
		jump_from_pc_in : in std_logic_vector(31 downto 0);
		jump_to_pc_in	 : in std_logic_vector(31 downto 0);
		predictor_in	 : in std_logic_vector(1 downto 0);
		write_cache_in	 : in std_logic;
		
		-- HAZARDI
		stall_id_in	: in std_logic;
		stall_ex_in	: in std_logic
	);
	

end IF_BLOCK;

architecture rtl of IF_BLOCK is
	signal ir : std_logic_vector(31 downto 0);
	
	shared variable to_delete : integer := 0;
	
	-- prediktorski cache
	type cache_pc   is array (3 downto 0) of std_logic_vector(31 downto 0);
	type cache_pred is array (3 downto 0) of std_logic_vector(1 downto 0);
	signal jump_from_pc : cache_pc;
	signal jump_to_pc	  : cache_pc;
	signal predictor	  : cache_pred;
begin
	process (clk) is 
		variable pc : std_logic_vector(31 downto 0) := (others => '1');
		variable pc_next : std_logic_vector(31 downto 0) := (others => '0');
		variable imm_jump: std_logic_vector(15 downto 0);
		variable stall_ex : std_logic;
		variable stall_id : std_logic;
	begin
		if (rising_edge(clk)) then 
			
			if (stall_ex /= '1' AND stall_id /= '1') then
				if (new_pc_in(0) /= 'Z' AND new_pc_in(0) /= 'U') then
					pc_next := new_pc_in;
				end if;
				if (first_pc_in(0) /= 'Z' AND first_pc_in(0) /= 'U') then
					pc_next := first_pc_in;
				end if;
				pc := pc_next;
				adr_out <= pc_next;
			else
			
			end if;
			
		end if; -- rising_edge
		
		if (falling_edge(clk)) then
			stall_ex := stall_ex_in;
			stall_id := stall_id_in;
			
			if (stall_ex /= '1' AND stall_id /= '1') then
				
				ir_out <= ir_in; -- dobijen od INSTR_CACHE-a i salje se ID_BLOCK-u
				pc_out <= pc;  -- ovo se prosledjuje ID-ju
				
				pc_next := (others => 'Z');
				
				if (ir_in(31 downto 29) = B"101") then
					-- trazimo pc u kesu
					for i in 0 to 3 loop 
						if (pc = jump_from_pc(i)) then
							pc_next := jump_to_pc(i);
							predictor_out <= predictor(i);
						end if;
					end loop;
					
					-- ako ga ne nadjemo, pretpostavimo da nema skoka
					if (pc_next(0) = 'Z') then
						pc_next := std_logic_vector(unsigned(pc) + 1);
						predictor_out <= (others => 'Z');
					end if;
					
					if (pc_next = std_logic_vector(unsigned(pc) + 1)) then
						jump_predicted_out <= '0';
					else
						jump_predicted_out <= '1';
					end if;
					
					predicted_pc_out <= pc_next;
					
				else -- ako nije instrukcija skoka
					pc_next := std_logic_vector(unsigned(pc) + 1);
					predicted_pc_out <= (others => 'Z');
					jump_predicted_out <= 'Z';
				end if;
				
			else
				
			end if;
		end if; -- falling edge
		
	end process;

	process (write_cache_in, jump_from_pc_in) is
		variable found : integer := 0;
	begin
		if (write_cache_in = '1') then
			for i in 0 to 3 loop
				if (jump_from_pc_in = jump_from_pc(i)) then
					jump_to_pc(i) <= jump_to_pc_in;
					predictor(i) <= predictor_in;
					found := 1;
				end if;
			end loop;
			
			if (found = 0) then
				jump_from_pc(to_delete) <= jump_from_pc_in;
				jump_to_pc(to_delete)	<= jump_to_pc_in;
				predictor(to_delete)		<= predictor_in;
				
				to_delete := (to_delete + 1) mod 4; 
			end if;
		end if;
	end process;
	
end architecture;