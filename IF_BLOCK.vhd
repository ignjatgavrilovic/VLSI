library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity IF_BLOCK is

	port (
		clk : in std_logic;
		adr_out : out std_logic_vector(31 downto 0); -- ka INSTR_CACHE
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
		predictor_high_bit_in : in std_logic
	);
	

end IF_BLOCK;

architecture rtl of IF_BLOCK is
	signal ir : std_logic_vector(31 downto 0);
begin
	process (clk) is 
		variable pc : std_logic_vector(31 downto 0) := (others => '1');
		variable pc_next : std_logic_vector(31 downto 0) := (others => '0');
		variable imm_jump: std_logic_vector(15 downto 0);
	begin
		if (rising_edge(clk)) then 
			
			if (new_pc_in(0) /= 'Z' AND new_pc_in(0) /= 'U') then
				pc_next := new_pc_in;
			end if;
			pc := pc_next;
			adr_out <= pc_next;
		end if;
		
		if (falling_edge(clk)) then
			ir_out <= ir_in; -- dobijen od INSTR_CACHE-a i salje se ID_BLOCK-u
			pc_out <= pc;  -- ovo se prosledjuje ID-ju
			
			if (ir_in(31 downto 29) = B"101") then
				if (predictor_high_bit_in = '1') then
					imm_jump(15 downto 11) := ir_in(25 downto 21);
					imm_jump(10 downto 0)  := ir_in(10 downto 0);
					pc_next := std_logic_vector(signed(pc) + signed(imm_jump));
					predicted_pc_out <= pc_next;
					jump_predicted_out <= '1';
				else
					pc_next := std_logic_vector(unsigned(pc) + 1);
					predicted_pc_out <= pc_next;
					jump_predicted_out <= '0';
				end if;
			else -- ako nije instrukcija skoka
				pc_next := std_logic_vector(unsigned(pc) + 1);
				predicted_pc_out <= (others => 'Z');
				jump_predicted_out <= 'Z';
			end if;
				
		end if;
		
	end process;	
end architecture;