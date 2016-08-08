library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity IF_BLOCK is

	port (
		clk : in std_logic;
		adr_out : out std_logic_vector(31 downto 0);
		ir_in : in std_logic_vector(31 downto 0);
		
		-- saljemo ID_BLOCK-u
		ir_out : out std_logic_vector(31 downto 0);
		pc_out : out std_logic_vector(31 downto 0);
		
		-- predikcija skoka
		new_pc_in 			 : in  std_logic_vector(31 downto 0); -- dobijamo od EX_BLOCK-a 
		predicted_pc_in	 : in  std_logic_vector(31 downto 0); -- dobijamo od EX_BLOCK-a 
		predicted_pc_out 	 : out std_logic_vector(31 downto 0); -- saljemo do EX_BLOCK-a preko ID-a
		jump_predicted_in	 : in  std_logic; 
		jump_predicted_out : out std_logic
	);
	

end IF_BLOCK;

architecture rtl of IF_BLOCK is
	signal ir : std_logic_vector(31 downto 0);
	shared variable predictor : std_logic_vector(1 downto 0) := "01";
begin
	process (clk) is 
		variable pc : std_logic_vector(31 downto 0);
		variable pc_next : std_logic_vector(31 downto 0) := (others => '0');
		variable imm_jump: std_logic_vector(15 downto 0);
	begin
		if (rising_edge(clk)) then 
			pc := pc_next;
			adr_out <= pc_next;
			
			if (new_pc_in = predicted_pc_in AND new_pc_in(0) /= 'U' AND new_pc_in(0) /= 'Z') then -- predictor je pogodio
				
				if (jump_predicted_in = '1') then
					if (predictor /= B"11") then
						predictor := std_logic_vector(unsigned(predictor) + 1);
					else
						predictor := predictor;
					end if;	
				elsif (jump_predicted_in = '0') then
					if (predictor /= B"00") then
						predictor := std_logic_vector(unsigned(predictor) - 1);
					else
						predictor := predictor;
					end if;	
				end if;
			
			elsif (new_pc_in /= predicted_pc_in AND new_pc_in(0) /= 'U' AND new_pc_in(0) /= 'Z') then -- predictor je promasio
				
				if (jump_predicted_in = '1') then -- ako je promasio a predvideo je skok umanjujemo brojac
					if (predictor /= B"00") then
						predictor := std_logic_vector(unsigned(predictor) - 1);
					else
						predictor := predictor;
					end if;
				elsif (jump_predicted_in = '0') then -- ako nije predvideo skok uvecavamo brojac
					if (predictor /= B"11") then
						predictor := std_logic_vector(unsigned(predictor) + 1);
					else
						predictor := predictor;
					end if;
				end if;
			end if;
		end if;
		
		if (falling_edge(clk)) then
			ir_out <= ir_in; -- dobijen od INSTR_CACHE-a i salje se ID_BLOCK-u
			pc_out <= pc;  -- ovo se prosledjuje ID-ju
			
			if (ir_in(31 downto 29) = B"101") then
				if (predictor(1) = '1') then
					imm_jump(15 downto 11) := ir_in(25 downto 21);
					imm_jump(10 downto 0)  := ir_in(10 downto 0);
					predicted_pc_out <= std_logic_vector(signed(pc) + signed(imm_jump));
					pc_next := std_logic_vector(signed(pc) + signed(imm_jump));
					jump_predicted_out <= '1';
				else
					pc_next := std_logic_vector(unsigned(pc) + 1);
					predicted_pc_out <= pc_next;
					jump_predicted_out <= '0';
				end if;
			else
				predicted_pc_out <= (others => 'Z');
				pc_next := std_logic_vector(unsigned(pc) + 1);
				jump_predicted_out <= 'Z';
			end if;
			
			
		end if;
		
	end process;	
end architecture;