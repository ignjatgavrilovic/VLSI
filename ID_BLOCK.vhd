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
		
		new_pc_out				  : out std_logic_vector(31 downto 0);
		
		idle_self_in  : in  std_logic;
		idle_self_out : out std_logic;
		
		-- dobijeno od IF vezano za prediktorski cache
		predictor_in 	  : in std_logic_vector(1 downto 0);
		predictor_out    : out std_logic_vector(1 downto 0); 
		jump_from_pc_out : out std_logic_vector(31 downto 0); 
		jump_to_pc_out   : out std_logic_vector(31 downto 0); 
		write_cache_out  : out std_logic;
		
		
		-- HAZARDI za NE Branch instrukcije
		
		-- id -> ex
		reg1_no_fwd_out : out std_logic_vector(4 downto 0);
		reg2_no_fwd_out : out std_logic_vector(4 downto 0);
		
		-- ex -> id
		stall_ex_in  : in  std_logic;
		
		-- HAZARDI kada je branch posle aritmeticke/load instrukcije
		reg_no_ex_fwd_in    : in std_logic_vector(4 downto 0);
		reg_data_ex_fwd_in  : in std_logic_vector(31 downto 0);
		reg_no_mem_fwd_in   : in std_logic_vector(4 downto 0);
		reg_data_mem_fwd_in : in std_logic_vector(31 downto 0);
		
		stall_id_in  : in  std_logic;
		stall_id_out : out std_logic
	); 

end ID_BLOCK;

architecture rtl of ID_BLOCK is
	signal imm: std_logic_vector(15 downto 0);
	shared variable imm_long : std_logic_vector(31 downto 0);
	
	shared variable was_load_1 : std_logic := 'Z';
	shared variable was_load_2 : std_logic := 'Z';
	shared variable was_arithm : std_logic := 'Z';
	shared variable was_load_1_reg_no : std_logic_vector(4 downto 0) := (others => 'Z');
	shared variable was_load_2_reg_no : std_logic_vector(4 downto 0) := (others => 'Z');
	shared variable was_arithm_reg_no : std_logic_vector(4 downto 0) := (others => 'Z');
	shared variable reg1no : std_logic_vector(4 downto 0) := (others => 'Z');
	shared variable reg2no : std_logic_vector(4 downto 0) := (others => 'Z');
	shared variable reg1data : std_logic_vector(31 downto 0) := (others => 'Z');
	shared variable reg2data : std_logic_vector(31 downto 0) := (others => 'Z');
	shared variable stall_branch_1 : integer := 0;
	shared variable stall_branch_2 : integer := 0;
	shared variable stall_branch	 : integer := 0;
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
		variable stall_ex : std_logic;
		variable stall_id : std_logic;
		
		variable predictor_latch : std_logic_vector(1 downto 0);
		variable predictor : std_logic_vector(1 downto 0);
	begin
		if (rising_edge(clk)) then
			
			if (stall_ex /= '1' AND stall_id /= '1') then
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
				
				predictor_latch := predictor_in;
				
				rdReg1_out <= 'Z';
				rdReg2_out <= 'Z';
				
				imm <= (others => 'Z');
				
				--idle_self_in <= idle_self_out;
				if (idle /= '1') then
					
					if (B"000000" = ir(31 downto 26)) then -- load
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
					
					-- branch
					if (B"101" = ir(31 downto 29)) then
						
						reg1no := ir(20 downto 16);
						reg2no := ir(15 downto 11);
						stall_branch_1 := 0;
						stall_branch_2 := 0;
						
						if (was_load_1 = '1') then
							if (reg1no = was_load_1_reg_no) then
								stall_branch_1 := 2;
							end if;
						elsif (was_load_2 = '1') then
							if (reg1no = was_load_2_reg_no) then
								stall_branch_1 := 1;
							end if;
						elsif (was_arithm = '1') then
							if (reg1no = was_arithm_reg_no) then
								stall_branch_1 := 1;
							end if;
						elsif (reg1no = reg_no_ex_fwd_in) then
							reg1data := reg_data_ex_fwd_in;
						elsif (reg1no = reg_no_mem_fwd_in) then
							reg1data := reg_data_mem_fwd_in;
						else
							reg1data := (others => 'Z');
						end if;
						
						if (was_load_1 = '1') then
							if (reg2no = was_load_1_reg_no) then
								stall_branch_2 := 2;
							end if;
						elsif (was_load_2 = '1') then
							if (reg2no = was_load_2_reg_no) then
								stall_branch_2 := 1;
							end if;
						elsif (was_arithm = '1') then
							if (reg2no = was_arithm_reg_no) then
								stall_branch_2 := 1;
							end if;
						elsif (reg2no = reg_no_ex_fwd_in) then
							reg2data := reg_data_ex_fwd_in;
						elsif (reg2no = reg_no_mem_fwd_in) then
							reg2data := reg_data_mem_fwd_in;
						else
							reg2data := (others => 'Z');
						end if;
						
						if (stall_branch_1 > stall_branch_2) then
							stall_branch := stall_branch_1;
						else
							stall_branch := stall_branch_2;
						end if;
						
						if (stall_branch = 1 OR stall_branch = 2) then
							stall_id_out <= '1';
						end if;
						
					end if;
					
					--JMP i JSR
					if (B"10000" = ir(31 downto 27)) then
						
						reg1no := ir(20 downto 16);
						reg2no := (others => 'Z');
						stall_branch_1 := 0;
						stall_branch_2 := 0;
						
						if (was_load_1 = '1') then
							if (reg1no = was_load_1_reg_no) then
								stall_branch_1 := 2;
							end if;
						elsif (was_load_2 = '1') then
							if (reg1no = was_load_2_reg_no) then
								stall_branch_1 := 1;
							end if;
						elsif (was_arithm = '1') then
							if (reg1no = was_arithm_reg_no) then
								stall_branch_1 := 1;
							end if;
						elsif (reg1no = reg_no_ex_fwd_in) then
							reg1data := reg_data_ex_fwd_in;
						elsif (reg1no = reg_no_mem_fwd_in) then
							reg1data := reg_data_mem_fwd_in;
						else
							reg1data := (others => 'Z');
						end if;
						
						if (stall_branch_1 > stall_branch_2) then
							stall_branch := stall_branch_1;
						else
							stall_branch := stall_branch_2;
						end if;
						
						if (stall_branch = 1 OR stall_branch = 2) then
							stall_id_out <= '1';
						end if;
						
					end if;
					
					
				end if; -- ako je idle /= '1'
			
			elsif (stall_ex = '1') then
				-- ne treba nista 
			elsif (stall_id = '1') then
				stall_branch := stall_branch - 1;
				
				if (stall_branch /= 0) then
					stall_id_out <= '1';
				else
					stall_id_out <= '0';
					-- dohvatiti ono sto se cekalo
					
					if (reg1no = reg_no_ex_fwd_in) then
						reg1data := reg_data_ex_fwd_in;
					elsif (reg1no = reg_no_mem_fwd_in) then
						reg1data := reg_data_mem_fwd_in;
					end if;
					
					if (reg2no = reg_no_ex_fwd_in) then
						reg2data := reg_data_ex_fwd_in;
					elsif (reg2no = reg_no_mem_fwd_in) then
						reg2data := reg_data_mem_fwd_in;
					end if;
					
				end if;
			
			end if; 
		end if;
		
		if (falling_edge(clk)) then
		
			stall_ex := stall_ex_in;
			stall_id := stall_id_in;
			
			if (stall_ex /= '1' AND stall_id /= '1') then	
				
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

				reg1_no_fwd_out <= (others => 'Z');
				reg2_no_fwd_out <= (others => 'Z');

				if (idle /= '1') then
				
					was_load_2 := was_load_1;
					was_load_1 := 'Z';
					was_arithm := 'Z';
					
					was_load_2_reg_no := was_load_1_reg_no;
					was_load_1_reg_no := (others => 'Z');
					was_arithm_reg_no := (others => 'Z');
					
					if (reg1data(0) = 'Z' OR reg1data(0) = 'U') then
						reg1data := reg1_data_in;
					end if;
					
					if (reg2data(0) = 'Z' OR reg2data(0) = 'U') then
						reg2data := reg2_data_in;
					end if;
					
					if (LOAD_pom = '1') then
						Rd_out <= Rd_pom;
						reg1_data_out <= reg1_data_in;
						reg1_no_fwd_out  <= ir(20 downto 16);
						was_load_1 := '1';
						was_load_1_reg_no := Rd_pom;
					end if;
					
					if (STORE_pom = '1') then
						reg1_data_out <= reg1_data_in;
						reg2_data_out <= reg2_data_in;
						reg1_no_fwd_out <= ir(20 downto 16);
						reg2_no_fwd_out <= ir(15 downto 11);
						
					end if;
					
					if (MOV_pom = '1') then
						Rd_out <= Rd_pom;
						reg1_data_out <= reg1_data_in;
						reg1_no_fwd_out  <= ir(20 downto 16);
						was_arithm := '1';
						was_arithm_reg_no := Rd_pom;
					end if;
					
					if (MOVI_pom = '1') then
						Rd_out <= Rd_pom;
						was_arithm := '1';
						was_arithm_reg_no := Rd_pom;
					end if;
					
					if (ADD_pom = '1') then
						Rd_out <= Rd_pom;
						reg1_data_out <= reg1_data_in;
						reg2_data_out <= reg2_data_in;
						reg1_no_fwd_out <= ir(20 downto 16);
						reg2_no_fwd_out <= ir(15 downto 11);
						was_arithm := '1';
						was_arithm_reg_no := Rd_pom;
					end if;
					
					if (SUB_pom = '1') then
						Rd_out <= Rd_pom;
						reg1_data_out <= reg1_data_in;
						reg2_data_out <= reg2_data_in;
						reg1_no_fwd_out <= ir(20 downto 16);
						reg2_no_fwd_out <= ir(15 downto 11);
						was_arithm := '1';
						was_arithm_reg_no := Rd_pom;
					end if;
					
					if (ADDI_pom = '1') then
						Rd_out <= Rd_pom;
						reg1_data_out <= reg1_data_in;
						reg1_no_fwd_out <= ir(20 downto 16);
						was_arithm := '1';
						was_arithm_reg_no := Rd_pom;
					end if;
					
					if (SUBI_pom = '1') then
						Rd_out <= Rd_pom;
						reg1_data_out <= reg1_data_in;
						reg1_no_fwd_out <= ir(20 downto 16);
						was_arithm := '1';
						was_arithm_reg_no := Rd_pom;
					end if;
					
					if (AND_pom = '1') then
						Rd_out <= Rd_pom;
						reg1_data_out <= reg1_data_in;
						reg2_data_out <= reg2_data_in;
						reg1_no_fwd_out <= ir(20 downto 16);
						reg2_no_fwd_out <= ir(15 downto 11);
						was_arithm := '1';
						was_arithm_reg_no := Rd_pom;
					end if;
					
					if (OR_pom = '1') then
						Rd_out <= Rd_pom;
						reg1_data_out <= reg1_data_in;
						reg2_data_out <= reg2_data_in;
						reg1_no_fwd_out <= ir(20 downto 16);
						reg2_no_fwd_out <= ir(15 downto 11);
						was_arithm := '1';
						was_arithm_reg_no := Rd_pom;
					end if;
					
					if (XOR_pom = '1') then
						Rd_out <= Rd_pom;
						reg1_data_out <= reg1_data_in;
						reg2_data_out <= reg2_data_in;
						reg1_no_fwd_out <= ir(20 downto 16);
						reg2_no_fwd_out <= ir(15 downto 11);
						was_arithm := '1';
						was_arithm_reg_no := Rd_pom;
					end if;
					
					if (NOT_pom = '1') then
						Rd_out <= Rd_pom;
						reg1_data_out <= reg1_data_in;
						reg1_no_fwd_out <= ir(20 downto 16);
						was_arithm := '1';
						was_arithm_reg_no := Rd_pom;
					end if;
					
					if (SHR_pom = '1') then
						Rd_out <= Rd_pom;
						was_arithm := '1';
						was_arithm_reg_no := Rd_pom;
					end if;
					
					if (SHL_pom = '1') then
						Rd_out <= Rd_pom;
						was_arithm := '1';
						was_arithm_reg_no := Rd_pom;
					end if;
					
					if (SAR_pom = '1') then
						Rd_out <= Rd_pom;
						was_arithm := '1';
						was_arithm_reg_no := Rd_pom;
					end if;
						
					if (ROL_pom = '1') then
						Rd_out <= Rd_pom;
						was_arithm := '1';
						was_arithm_reg_no := Rd_pom;
					end if;
					
					if (ROR_pom = '1') then
						Rd_out <= Rd_pom;
						was_arithm := '1';
						was_arithm_reg_no := Rd_pom;
					end if;
					
					if (JMP_pom = '1') then
						new_pc := std_logic_vector(signed(reg1data) + signed(imm_long));
					end if;
					
					if (JSR_pom = '1') then
						new_pc := std_logic_vector(signed(reg1data) + signed(imm_long));
					end if;
					
					if (RTS_pom = '1') then
					
					end if;
					
					if (PUSH_pom = '1') then
						reg1_data_out <= reg1_data_in;
						reg1_no_fwd_out <= ir(20 downto 16);
					end if;
					
					if (POP_pom = '1') then
						Rd_out <= Rd_pom;
						was_load_1 := '1';
						was_load_1_reg_no := Rd_pom;
					end if;
					
					-- iz uslovnih skokova skloniti prosledjivanje reg_data
					
					if (BEQ_pom = '1') then
						reg1_data_out <= reg1data;
						reg2_data_out <= reg2data;
						reg1_no_fwd_out <= ir(20 downto 16);
						reg2_no_fwd_out <= ir(15 downto 11);
						
						if (reg1data = reg2data) then
							new_pc := std_logic_vector(signed(pc_in) + signed(imm_long));
						else
							new_pc := std_logic_vector(signed(pc_in) + 1);
						end if;
					end if;
					
					if (BNQ_pom = '1') then
						reg1_data_out <= reg1data;
						reg2_data_out <= reg2data;
						reg1_no_fwd_out <= ir(20 downto 16);
						reg2_no_fwd_out <= ir(15 downto 11);
						
						if (reg1data /= reg2data) then
							new_pc := std_logic_vector(signed(pc_in) + signed(imm_long));
						else
							new_pc := std_logic_vector(signed(pc_in) + 1);
						end if;
					end if;
					
					if (BGT_pom = '1') then
						reg1_data_out <= reg1data;
						reg2_data_out <= reg2data;
						reg1_no_fwd_out <= ir(20 downto 16);
						reg2_no_fwd_out <= ir(15 downto 11);

						if (reg1data > reg2data) then
							new_pc := std_logic_vector(signed(pc_in) + signed(imm_long));
						else
							new_pc := std_logic_vector(signed(pc_in) + 1);
						end if;
					end if;
					
					if (BLT_pom = '1') then
						reg1_data_out <= reg1data;
						reg2_data_out <= reg2data;
						reg1_no_fwd_out <= ir(20 downto 16);
						reg2_no_fwd_out <= ir(15 downto 11);

						if (reg1data < reg2data) then
							new_pc := std_logic_vector(signed(pc_in) + signed(imm_long));
						else
							new_pc := std_logic_vector(signed(pc_in) + 1);
						end if;
					end if;
					
					if (BGE_pom = '1') then
						reg1_data_out <= reg1data;
						reg2_data_out <= reg2data;
						reg1_no_fwd_out <= ir(20 downto 16);
						reg2_no_fwd_out <= ir(15 downto 11);

						if (reg1data >= reg2data) then
							new_pc := std_logic_vector(signed(pc_in) + signed(imm_long));
						else
							new_pc := std_logic_vector(signed(pc_in) + 1);
						end if;
					end if;
					
					if (BLE_pom = '1') then
						reg1_data_out <= reg1data;
						reg2_data_out <= reg2data;
						reg1_no_fwd_out <= ir(20 downto 16);
						reg2_no_fwd_out <= ir(15 downto 11);

						if (reg1data <= reg2data) then
							new_pc := std_logic_vector(signed(pc_in) + signed(imm_long));
						else
							new_pc := std_logic_vector(signed(pc_in) + 1);
						end if;
					end if;
					
					if (HALT_pom = '1') then
						
					end if;
					
					if (ir_in(31 downto 29) = B"101") then
						predictor := predictor_latch;
						if (new_pc = predicted_pc_in) then -- predictor je pogodio
							idle := 'Z';
							new_pc_out <= (others => 'Z');
							if (jump_predicted_in = '1') then
								if (predictor(0) = 'Z' OR predictor(0) = 'U') then
									predictor := B"10";
								elsif (predictor /= B"11") then
									predictor := std_logic_vector(unsigned(predictor) + 1);
								else
									predictor := predictor;
								end if;	
							elsif (jump_predicted_in = '0') then
								if (predictor(0) = 'Z' OR predictor(0) = 'U') then
									predictor := B"01";
								elsif (predictor /= B"00") then
									predictor := std_logic_vector(unsigned(predictor) - 1);
								else
									predictor := predictor;
								end if;
							end if;	
						
						elsif (new_pc /= predicted_pc_in) then -- predictor je promasio
							new_pc_out <= new_pc;
							idle := '1'; -- moramo da idle-ujemo sledecu instrukciju
							if (jump_predicted_in = '1') then -- ako je promasio a predvideo je skok umanjujemo brojac
								if (predictor(0) = 'Z' OR predictor(0) = 'U') then
									predictor := B"01";
								elsif (predictor /= B"00") then
									predictor := std_logic_vector(unsigned(predictor) - 1);
								else
									predictor := predictor;
								end if;
							elsif (jump_predicted_in = '0') then -- ako nije predvideo skok uvecavamo brojac
								if (predictor(0) = 'Z' OR predictor(0) = 'U') then
									predictor := B"10";
								elsif (predictor /= B"11") then
									predictor := std_logic_vector(unsigned(predictor) + 1);
								else
									predictor := predictor;
								end if;
							end if;
						end if;
						
						predictor_out <= predictor;
						jump_from_pc_out <= pc;
						jump_to_pc_out <= new_pc;
						write_cache_out <= '1';
					
					elsif (ir_in(31 downto 27) = B"10000") then
						-- desio se JMP ili JSR, sledeca ins idle, postavi novu ins
						new_pc_out <= new_pc;
						idle := '1';
					else -- ako nije instrukcija skoka
						new_pc_out <= (others => 'Z');
					end if;
				else -- ako je idle_self_in = 1
					idle := 'Z';
					new_pc_out <= (others => 'Z');
					reg1_no_fwd_out <= (others => 'Z');
					reg2_no_fwd_out <= (others => 'Z');
				end if;	
				
			else
				LOAD_out  	<= 'Z';
				STORE_out 	<= 'Z';
				MOV_out   	<= 'Z';
				MOVI_out 	<= 'Z';
				ADD_out 		<= 'Z';  
				SUB_out 		<= 'Z';  
				ADDI_out 	<= 'Z';
				SUBI_out    <= 'Z';
				AND_out     <= 'Z';
				OR_out      <= 'Z';
				XOR_out     <= 'Z';
				NOT_out     <= 'Z';
				SHR_out     <= 'Z';
				SHL_out     <= 'Z';
				SAR_out     <= 'Z';
				ROL_out     <= 'Z';
				ROR_out     <= 'Z';
				JMP_out     <= 'Z';
				JSR_out     <= 'Z';
				RTS_out     <= 'Z';
				PUSH_out    <= 'Z';
				POP_out     <= 'Z';
				BEQ_out     <= 'Z';
				BNQ_out     <= 'Z';
				BGT_out     <= 'Z';
				BLT_out     <= 'Z';
				BGE_out     <= 'Z';
				BLE_out     <= 'Z';
				HALT_out    <= 'Z';
				
			end if; -- stall = '1'
		
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






