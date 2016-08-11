library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ID_BLOCK is

	port (
		clk : in std_logic;
		
		ir_in : in std_logic_vector(31 downto 0);
		pc_in  : in  std_logic_vector(31 downto 0);
		pc_out : out std_logic_vector(31 downto 0);
		
		-- instrukcijsi signali		
		LOAD_out: out std_logic;
		STORE_out: out std_logic;
		MOV_out: out std_logic;
		MOVI_out: out std_logic;
		ADD_out: out std_logic;
		SUB_out: out std_logic;
		ADDI_out: out std_logic;
		SUBI_out: out std_logic;
		AND_out: out std_logic;
		OR_out: out std_logic;
		XOR_out: out std_logic;
		NOT_out: out std_logic;
		SHR_out: out std_logic;
		SHL_out: out std_logic;
		SAR_out: out std_logic;
		ROL_out: out std_logic;
		ROR_out: out std_logic;
		JMP_out: out std_logic;
		JSR_out: out std_logic;
		RTS_out: out std_logic;
		PUSH_out: out std_logic;
		POP_out: out std_logic;
		BEQ_out: out std_logic;
		BNQ_out: out std_logic;
		BGT_out: out std_logic;
		BLT_out: out std_logic;
		BGE_out: out std_logic;
		BLE_out: out std_logic;
		HALT_out: out std_logic;
		
		-- za komunikaciju sa REG_FILE
		rdReg1_out: out std_logic;
		rdReg2_out: out std_logic;
		
		reg1_no_out   : out std_logic_vector(4 downto 0); 
		reg1_data_in  : in  std_logic_vector(31 downto 0); 
		reg2_no_out   : out std_logic_vector(4 downto 0);
		reg2_data_in  : in  std_logic_vector(31 downto 0); 
		
		-- prosledjujemo EX-u operande
		Rd_out: out std_logic_vector(4 downto 0);
		imm_out: out std_logic_vector(31 downto 0);
		reg1_data_out : out std_logic_vector(31 downto 0);
		reg2_data_out : out std_logic_vector(31 downto 0);
		
		-- prosledjivanje od IF do EX
		predicted_pc_in	 : in  std_logic_vector(31 downto 0); 
		predicted_pc_out 	 : out std_logic_vector(31 downto 0); 
		jump_predicted_in	 : in  std_logic; 
		jump_predicted_out : out std_logic;
		
		predictor_high_bit_out : out std_logic;
		new_pc_out				  : out std_logic_vector(31 downto 0);
		
		idle_self_in  : in  std_logic;
		idle_self_out : out std_logic;
		
		-- HAZARDI id -> ex
		reg1_no_fwd_out : out std_logic_vector(4 downto 0);
		reg2_no_fwd_out : out std_logic_vector(4 downto 0)
	); 

end ID_BLOCK;

architecture rtl of ID_BLOCK is
	signal imm: std_logic_vector(15 downto 0);
	shared variable imm_long : std_logic_vector(31 downto 0);
	shared variable predictor : std_logic_vector(1 downto 0) := "10";
begin

	process(clk,ir_in) is	
		variable ir : std_logic_vector(31 downto 0);
		variable pc : std_logic_vector(31 downto 0);
		
		variable LOAD_pom:  std_logic;
		variable STORE_pom:  std_logic;
		variable MOV_pom:  std_logic;
		variable MOVI_pom:  std_logic;
		variable ADD_pom:  std_logic;
		variable SUB_pom:  std_logic;
		variable ADDI_pom:  std_logic;
		variable SUBI_pom:  std_logic;
		variable AND_pom:  std_logic;
		variable OR_pom:  std_logic;
		variable XOR_pom:  std_logic;
		variable NOT_pom:  std_logic;
		variable SHR_pom:  std_logic;
		variable SHL_pom:  std_logic;
		variable SAR_pom:  std_logic;
		variable ROL_pom:  std_logic;
		variable ROR_pom:  std_logic;
		variable JMP_pom:  std_logic;
		variable JSR_pom:  std_logic;
		variable RTS_pom:  std_logic;
		variable PUSH_pom:  std_logic;
		variable POP_pom:  std_logic;
		variable BEQ_pom:  std_logic;
		variable BNQ_pom:  std_logic;
		variable BGT_pom:  std_logic;
		variable BLT_pom:  std_logic;
		variable BGE_pom:  std_logic;
		variable BLE_pom:  std_logic;
		variable HALT_pom:  std_logic;
		
		variable Rd_pom : std_logic_vector(4 downto 0);
		variable new_pc : std_logic_vector(31 downto 0);
		variable idle   : std_logic := 'Z';
	begin
		predictor_high_bit_out <= predictor(1);
		if (rising_edge(clk)) then
			ir := ir_in;
			pc := pc_in;
			
			LOAD_pom   := 'Z';
			STORE_pom  := 'Z';
			MOV_pom    := 'Z';
			MOVI_pom   := 'Z';
			ADD_pom    := 'Z';
			SUB_pom    := 'Z';
			ADDI_pom   := 'Z';
			SUBI_pom   := 'Z';
			AND_pom    := 'Z';
			OR_pom     := 'Z';
			XOR_pom    := 'Z';
			NOT_pom    := 'Z';
			SHR_pom    := 'Z';
			SHL_pom    := 'Z';
			SAR_pom    := 'Z';
			ROL_pom    := 'Z';
			ROR_pom    := 'Z';
			JMP_pom    := 'Z';
			JSR_pom    := 'Z';
			RTS_pom    := 'Z';
			PUSH_pom   := 'Z';
			POP_pom    := 'Z';
			BEQ_pom    := 'Z';
			BNQ_pom    := 'Z';
			BGT_pom    := 'Z';
			BLT_pom    := 'Z';
			BGE_pom    := 'Z';
			BLE_pom    := 'Z';
			HALT_pom   := 'Z';
			
			rdReg1_out <= 'Z';
			rdReg2_out <= 'Z';
			
			imm <= (others => 'Z');
			
			--idle_self_in <= idle_self_out;
			if (idle /= '1') then
				if (B"000000" = ir(31 downto 26)) then
					LOAD_pom  := '1';
					Rd_pom    := ir(25 downto 21);
					reg1_no_out  <= ir(20 downto 16);
					rdReg1_out <= '1';
					imm(15 downto 0)  <= ir(15 downto 0);
				end if;
				
				if (B"000001" = ir(31 downto 26)) then
					STORE_pom := '1';
					reg1_no_out <= ir(20 downto 16);
					reg2_no_out <= ir(15 downto 11);
					rdReg1_out <= '1';
					rdReg2_out <= '1';
					imm(15 downto 11) <= ir(25 downto 21);
					imm(10 downto 0)  <= ir(10 downto 0);				
				end if;
				
				if (B"000100" = ir(31 downto 26)) then
					MOV_pom := '1';
					Rd_pom  := ir(25 downto 21);
					reg1_no_out  <= ir(20 downto 16);
					rdReg1_out <= '1';
				end if;
					
				if (B"000101" = ir(31 downto 26)) then
					MOVI_pom := '1';
					Rd_pom := ir(25 downto 21);
					imm(15 downto 0) <= ir(15 downto 0);
				end if;
				
				if (B"001000" = ir(31 downto 26)) then
					ADD_pom  := '1';
					Rd_pom   := ir(25 downto 21);
					reg1_no_out <= ir(20 downto 16);
					reg2_no_out <= ir(15 downto 11);
					rdReg1_out <= '1';
					rdReg2_out <= '1';
				end if;
					
				if (B"001001" = ir(31 downto 26)) then
					SUB_pom  := '1';
					Rd_pom   := ir(25 downto 21);
					reg1_no_out <= ir(20 downto 16);
					reg2_no_out <= ir(15 downto 11);
					rdReg1_out <= '1';
					rdReg2_out <= '1';
				end if;
				
				if (B"001100" = ir(31 downto 26)) then
					ADDI_pom  := '1';
					Rd_pom   := ir(25 downto 21);
					reg1_no_out <= ir(20 downto 16);
					rdReg1_out <= '1';
					imm(15 downto 0)  <= ir(15 downto 0);
				end if;
				
				if (B"001101" = ir(31 downto 26)) then
					SUBI_pom  := '1';
					Rd_pom   := ir(25 downto 21);
					reg1_no_out <= ir(20 downto 16);
					rdReg1_out <= '1';	
					imm(15 downto 0)  <= ir(15 downto 0);
				end if;
				
				if (B"010000" = ir(31 downto 26)) then
					AND_pom  := '1';
					Rd_pom   := ir(25 downto 21);
					reg1_no_out <= ir(20 downto 16);
					reg2_no_out <= ir(15 downto 11);
					rdReg1_out <= '1';
					rdReg2_out <= '1';
				end if;
					
				if (B"010001" = ir(31 downto 26)) then
					OR_pom := '1';
					Rd_pom   := ir(25 downto 21);
					reg1_no_out <= ir(20 downto 16);
					reg2_no_out <= ir(15 downto 11);
					rdReg1_out <= '1';
					rdReg2_out <= '1';
				end if;
				
				if (B"010010" = ir(31 downto 26)) then
					XOR_pom := '1';
					Rd_pom   := ir(25 downto 21);
					reg1_no_out <= ir(20 downto 16);
					reg2_no_out <= ir(15 downto 11);
					rdReg1_out <= '1';
					rdReg2_out <= '1';
				end if;
					
				if (B"010011" = ir(31 downto 26)) then
					NOT_pom := '1';
					Rd_pom   := ir(25 downto 21);
					reg1_no_out <= ir(20 downto 16);
					rdReg1_out <= '1';
				end if;
					
				if (B"011000" = ir(31 downto 26)) then
					SHL_pom  := '1';
					Rd_pom   := ir(25 downto 21);
					imm(15 downto 5)<= (others=>'0');
					imm(4 downto 0)  <= ir(15 downto 11);
				end if;
					
				if (B"011001" = ir(31 downto 26)) then
					SHR_pom  := '1';
					Rd_pom   := ir(25 downto 21);
					imm(15 downto 5)<= (others=>'0');
					imm(4 downto 0)  <= ir(15 downto 11);
				end if;
					
				if (B"011010" = ir(31 downto 26)) then
					SAR_pom  := '1';
					Rd_pom   := ir(25 downto 21);
					imm(15 downto 5)<= (others=>'0');
					imm(4 downto 0)  <= ir(15 downto 11);
				end if;
					
				if (B"011011" = ir(31 downto 26)) then
					ROL_pom  := '1';
					Rd_pom   := ir(25 downto 21);
					imm(15 downto 5)<= (others=>'0');
					imm(4 downto 0)  <= ir(15 downto 11);
				end if;
					
				if (B"011100" = ir(31 downto 26)) then
					ROR_pom  := '1';
					Rd_pom   := ir(25 downto 21);
					imm(15 downto 5)<= (others=>'0');
					imm(4 downto 0)  <= ir(15 downto 11);
				end if;
					
				if (B"100000" = ir(31 downto 26)) then
					JMP_pom  := '1';
					reg1_no_out <= ir(20 downto 16);
					rdReg1_out <= '1';
					imm(15 downto 0) <= ir(15 downto 0);
				end if;
					
				if (B"100001" = ir(31 downto 26)) then
					JSR_pom  := '1';
					reg1_no_out <= ir(20 downto 16);
					rdReg1_out <= '1';
					imm(15 downto 0) <= ir(15 downto 0);
				end if;
					
				if (B"100010" = ir(31 downto 26)) then
					RTS_pom  := '1';
				end if;
					
				if (B"100100" = ir(31 downto 26)) then
					PUSH_pom  := '1';
					reg2_no_out <= ir(20 downto 16);
					rdReg2_out <= '1';
				end if;
					
				if (B"100101" = ir(31 downto 26)) then
					POP_pom  := '1';
					Rd_pom   := ir(25 downto 21);
				end if;
					
				if (B"101000" = ir(31 downto 26)) then
					BEQ_pom := '1';
					imm(15 downto 11)  <= ir(25 downto 21);
					reg1_no_out <= ir(20 downto 16);
					reg2_no_out <= ir(15 downto 11);
					rdReg1_out <= '1';
					rdReg2_out <= '1';
					imm(10 downto 0)  <= ir(10 downto 0);
				end if;
				
				if (B"101001" = ir(31 downto 26)) then
					BNQ_pom := '1';
					imm(15 downto 11)  <= ir(25 downto 21);
					reg1_no_out <= ir(20 downto 16);
					reg2_no_out <= ir(15 downto 11);
					rdReg1_out <= '1';
					rdReg2_out <= '1';
					imm(10 downto 0)  <= ir(10 downto 0);
				end if;
				
				if (B"101010" = ir(31 downto 26)) then
					BGT_pom := '1';
					imm(15 downto 11)  <= ir(25 downto 21);
					reg1_no_out <= ir(20 downto 16);
					reg2_no_out <= ir(15 downto 11);
					rdReg1_out <= '1';
					rdReg2_out <= '1';
					imm(10 downto 0)  <= ir(10 downto 0);
					
				end if;
				
				if (B"101011" = ir(31 downto 26)) then
					BLT_pom  := '1';
					imm(15 downto 11)  <= ir(25 downto 21);
					reg1_no_out <= ir(20 downto 16);
					reg2_no_out <= ir(15 downto 11);
					rdReg1_out <= '1';
					rdReg2_out <= '1';
					imm(10 downto 0)  <= ir(10 downto 0);
				end if;
				
				if (B"101100" = ir(31 downto 26)) then
					BGE_pom := '1';
					imm(15 downto 11)  <= ir(25 downto 21);
					reg1_no_out <= ir(20 downto 16);
					reg2_no_out <= ir(15 downto 11);
					rdReg1_out <= '1';
					rdReg2_out <= '1';
					imm(10 downto 0)  <= ir(10 downto 0);
				end if;
				
				if (B"101101" = ir(31 downto 26)) then
					BLE_pom := '1';
					imm(15 downto 11)  <= ir(25 downto 21);
					reg1_no_out <= ir(20 downto 16);
					reg2_no_out <= ir(15 downto 11);
					rdReg1_out <= '1';
					rdReg2_out <= '1';
					imm(10 downto 0)  <= ir(10 downto 0);
				end if;
				
				if (B"111111" = ir(31 downto 26)) then
					HALT_pom  := '1';
					--STOP_IF <= '1';
				end if;
			end if; -- ako je idle /= '1'
		end if;
		
		if (falling_edge(clk)) then
			-- lecovati po potrebi
			--predicted_pc_out <= predicted_pc_in;
			--jump_predicted_out <= jump_predicted_in;
				LOAD_out  	<= LOAD_pom;
				STORE_out 	<= STORE_pom;
				MOV_out   	<= MOV_pom; 
				MOVI_out 	<= MOVI_pom;
				ADD_out 		<= ADD_pom;   
				SUB_out 		<= SUB_pom;   
				ADDI_out 	<= ADDI_pom;
				SUBI_out    <= SUBI_pom;
				AND_out     <= AND_pom; 
				OR_out      <= OR_pom;  
				XOR_out     <= XOR_pom; 
				NOT_out     <= NOT_pom; 
				SHR_out     <= SHR_pom; 
				SHL_out     <= SHL_pom; 
				SAR_out     <= SAR_pom; 
				ROL_out     <= ROL_pom; 
				ROR_out     <= ROR_pom; 
				JMP_out     <= JMP_pom; 
				JSR_out     <= JSR_pom; 
				RTS_out     <= RTS_pom; 
				PUSH_out    <= PUSH_pom;
				POP_out     <= POP_pom; 
				BEQ_out     <= BEQ_pom; 
				BNQ_out     <= BNQ_pom; 
				BGT_out     <= BGT_pom; 
				BLT_out     <= BLT_pom; 
				BGE_out     <= BGE_pom; 
				BLE_out     <= BLE_pom; 
				HALT_out    <= HALT_pom;
				
				reg1_data_out <= (others => 'Z');
				reg2_data_out <= (others => 'Z');
				Rd_out <= (others => 'Z');
				
				pc_out <= pc;

			

			if (idle /= '1') then

				if (LOAD_pom = '1') then
					Rd_out <= Rd_pom;
					reg1_data_out <= reg1_data_in;
					-- imm_out <= imm;
				end if;
				
				if (STORE_pom = '1') then
					reg1_data_out <= reg1_data_in;
					reg2_data_out <= reg2_data_in;
					-- imm_out <= imm;
				end if;
				
				if (MOV_pom = '1') then
					Rd_out <= Rd_pom;
					reg1_data_out <= reg1_data_in;
				end if;
				
				if (MOVI_pom = '1') then
					Rd_out <= Rd_pom;
					-- imm_out <= imm;
				end if;
				
				if (ADD_pom = '1') then
					Rd_out <= Rd_pom;
					reg1_data_out <= reg1_data_in;
					reg2_data_out <= reg2_data_in;
				end if;
				
				if (SUB_pom = '1') then
					Rd_out <= Rd_pom;
					reg1_data_out <= reg1_data_in;
					reg2_data_out <= reg2_data_in;
				end if;
				
				if (ADDI_pom = '1') then
					Rd_out <= Rd_pom;
					reg1_data_out <= reg1_data_in;
					-- imm_out <= imm;
				end if;
				
				if (SUBI_pom = '1') then
					Rd_out <= Rd_pom;
					reg1_data_out <= reg1_data_in;
					-- imm_out <= imm;
				end if;
				
				if (AND_pom = '1') then
					Rd_out <= Rd_pom;
					reg1_data_out <= reg1_data_in;
					reg2_data_out <= reg2_data_in;
				end if;
				
				if (OR_pom = '1') then
					Rd_out <= Rd_pom;
					reg1_data_out <= reg1_data_in;
					reg2_data_out <= reg2_data_in;
				end if;
				
				if (XOR_pom = '1') then
					Rd_out <= Rd_pom;
					reg1_data_out <= reg1_data_in;
					reg2_data_out <= reg2_data_in;
				end if;
				
				if (NOT_pom = '1') then
					Rd_out <= Rd_pom;
					reg1_data_out <= reg1_data_in;
				end if;
				
				if (SHR_pom = '1') then
					Rd_out <= Rd_pom;
					-- imm_out <= imm;
				end if;
				
				if (SHL_pom = '1') then
					Rd_out <= Rd_pom;
					-- imm_out <= imm;
				end if;
				
				if (SAR_pom = '1') then
					Rd_out <= Rd_pom;
					-- imm_out <= imm;
				end if;
					
				if (ROL_pom = '1') then
					Rd_out <= Rd_pom;
					-- imm_out <= imm;
				end if;
				
				if (ROR_pom = '1') then
					Rd_out <= Rd_pom;
					-- imm_out <= imm;
				end if;
				
				if (JMP_pom = '1') then
					reg1_data_out <= reg1_data_in;
					-- imm_out <= imm;
				end if;
				
				if (JSR_pom = '1') then
					reg1_data_out <= reg1_data_in;
					-- imm_out <= imm;
				end if;
				
				if (RTS_pom = '1') then
					-- vraca iz subroutine
				end if;
				
				if (PUSH_pom = '1') then
					reg1_data_out <= reg1_data_in;
				end if;
				
				if (POP_pom = '1') then
					Rd_out <= Rd_pom;
				end if;
				
				-- iz uslovnih skokova skloniti prosledjivanje reg_data
				
				if (BEQ_pom = '1') then
					reg1_data_out <= reg1_data_in;
					reg2_data_out <= reg2_data_in;
					
					if (reg1_data_in = reg2_data_in) then
						new_pc := std_logic_vector(signed(pc_in) + signed(imm_long));
					else
						new_pc := std_logic_vector(signed(pc_in) + 1);
					end if;
				end if;
				
				if (BNQ_pom = '1') then
					reg1_data_out <= reg1_data_in;
					reg2_data_out <= reg2_data_in;
					
					if (reg1_data_in /= reg2_data_in) then
						new_pc := std_logic_vector(signed(pc_in) + signed(imm_long));
					else
						new_pc := std_logic_vector(signed(pc_in) + 1);
					end if;
				end if;
				
				if (BGT_pom = '1') then
					reg1_data_out <= reg1_data_in;
					reg2_data_out <= reg2_data_in;

					if (reg1_data_in > reg2_data_in) then
						new_pc := std_logic_vector(signed(pc_in) + signed(imm_long));
					else
						new_pc := std_logic_vector(signed(pc_in) + 1);
					end if;
				end if;
				
				if (BLT_pom = '1') then
					reg1_data_out <= reg1_data_in;
					reg2_data_out <= reg2_data_in;

					if (reg1_data_in < reg2_data_in) then
						new_pc := std_logic_vector(signed(pc_in) + signed(imm_long));
					else
						new_pc := std_logic_vector(signed(pc_in) + 1);
					end if;
				end if;
				
				if (BGE_pom = '1') then
					reg1_data_out <= reg1_data_in;
					reg2_data_out <= reg2_data_in;

					if (reg1_data_in >= reg2_data_in) then
						new_pc := std_logic_vector(signed(pc_in) + signed(imm_long));
					else
						new_pc := std_logic_vector(signed(pc_in) + 1);
					end if;
				end if;
				
				if (BLE_pom = '1') then
					reg1_data_out <= reg1_data_in;
					reg2_data_out <= reg2_data_in;

					if (reg1_data_in <= reg2_data_in) then
						new_pc := std_logic_vector(signed(pc_in) + signed(imm_long));
					else
						new_pc := std_logic_vector(signed(pc_in) + 1);
					end if;
				end if;
				
				if (HALT_pom = '1') then
					
				end if;
				
				if (ir_in(31 downto 29) = B"101") then
				
					if (new_pc = predicted_pc_in) then -- predictor je pogodio
						idle := 'Z';
						new_pc_out <= (others => 'Z');
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
					
					elsif (new_pc /= predicted_pc_in) then -- predictor je promasio
						new_pc_out <= new_pc;
						idle := '1'; -- moramo da idle-ujemo sledecu instrukciju
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
					
				else -- ako nije instrukcija skoka
					new_pc_out <= (others => 'Z');
				end if;
			else -- ako je idle_self_in = 1
				idle := 'Z';
				new_pc_out <= (others => 'Z');
			end if;	
		end if;-- falling edge 
		
		
	end process;

	process(imm) is
	begin
		--pom	<=to_integer(unsigned (imm_pom));
		imm_long(15 downto 0) := imm(15 downto 0);
		if( imm(15)='0')then
			imm_long(31 downto 16) := (others=>'0');	
		else
			imm_long(31 downto 16) := (others=>'1');
		end if;
		imm_out <= imm_long;
		
	end process;
	
end architecture;






