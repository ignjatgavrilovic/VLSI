library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- dodati Reg_out <= 'Z' za sve instrukcije koje ne upisuju u reg_file

entity EX_BLOCK is
	
	port (
		clk : in std_logic;
	
		-- instrukcijsi signali		
		LOAD_in: in std_logic;
		STORE_in: in std_logic;
		MOV_in: in std_logic;
		MOVI_in: in std_logic;
		ADD_in: in std_logic;
		SUB_in: in std_logic;
		ADDI_in: in std_logic;
		SUBI_in: in std_logic;
		AND_in: in std_logic;
		OR_in: in std_logic;
		XOR_in: in std_logic;
		NOT_in: in std_logic;
		SHR_in: in std_logic;
		SHL_in: in std_logic;
		SAR_in: in std_logic;
		ROL_in: in std_logic;
		ROR_in: in std_logic;
		JMP_in: in std_logic;
		JSR_in: in std_logic;
		RTS_in: in std_logic;
		PUSH_in: in std_logic;
		POP_in: in std_logic;
		BEQ_in: in std_logic;
		BNQ_in: in std_logic;
		BGT_in: in std_logic;
		BLT_in: in std_logic;
		BGE_in: in std_logic;
		BLE_in: in std_logic;
		HALT_in: in std_logic;
		
		-- operandi dobijeni od ID
		Rd_in				: in std_logic_vector(4 downto 0);
		imm_in			: in std_logic_vector(31 downto 0);
		reg1_data_in 	: in std_logic_vector(31 downto 0);
		reg2_data_in 	: in std_logic_vector(31 downto 0);
		
		-- za komunikaciju sa MEM_BLOCK
		ALU_out  : out std_logic_vector(31 downto 0);
		B_out    : out std_logic_vector(31 downto 0); --operand za store
		load_out : out std_logic;
		store_out: out std_logic;
		Reg_out  : out std_logic_vector(4 downto 0); -- 5 bitova iz IR-a sluze za adresiranje registara u WB stepenu
		
		pc_in		: in std_logic_vector(31 downto 0);
		
		-- HAZARDI
		
		-- ex -> ex
		reg_no_ex_fwd_in    : in  std_logic_vector(4 downto 0);
		reg_data_ex_fwd_in  : in  std_logic_vector(31 downto 0);
		reg_no_ex_fwd_out   : out std_logic_vector(4 downto 0);
		reg_data_ex_fwd_out : out std_logic_vector(31 downto 0);
		stall_out			  : out std_logic; -- ovo ide i na IF i ID i u sebe
		stall_in				  : in  std_logic;
		was_load_in			  : in  std_logic;
		was_load_out		  : out std_logic;
		
		-- mem -> ex
		reg_no_mem_fwd_in   : in  std_logic_vector(4 downto 0);
		reg_data_mem_fwd_in : in  std_logic_vector(31 downto 0);
		
		-- id -> ex
		reg1_no_fwd_in		  : in std_logic_vector(4 downto 0);
		reg2_no_fwd_in		  : in std_logic_vector(4 downto 0)
	);
	
end EX_BLOCK;

architecture rtl of EX_BLOCK is
	signal sp : std_logic_vector(31 downto 0) := X"0000FFFF";
	signal idle_out : std_logic;
	signal idle_in  : std_logic;
begin
	
	process (clk) is
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
		
		variable Rd_pom:  std_logic_vector(4 downto 0);
		variable imm_pom: std_logic_vector(31 downto 0);
		
		variable pc_pom : std_logic_vector(31 downto 0);
		
		variable stall_pom : std_logic;
		variable operand1 : std_logic_vector(31 downto 0);
		variable operand2 : std_logic_vector(31 downto 0);
	begin
		
		if (rising_edge(clk)) then
		
			if (stall_pom /= '1') then
			
				LOAD_pom   := LOAD_in ;
				STORE_pom  := STORE_in;
				MOV_pom    := MOV_in  ;
				MOVI_pom   := MOVI_in ;
				ADD_pom    := ADD_in  ;
				SUB_pom    := SUB_in  ;
				ADDI_pom   := ADDI_in ;
				SUBI_pom   := SUBI_in ;
				AND_pom    := AND_in  ;
				OR_pom     := OR_in   ;
				XOR_pom    := XOR_in  ;
				NOT_pom    := NOT_in  ;
				SHR_pom    := SHR_in  ;
				SHL_pom    := SHL_in  ;
				SAR_pom    := SAR_in  ;
				ROL_pom    := ROL_in  ;
				ROR_pom    := ROR_in  ;
				JMP_pom    := JMP_in  ;
				JSR_pom    := JSR_in  ;
				RTS_pom    := RTS_in  ;
				PUSH_pom   := PUSH_in ;
				POP_pom    := POP_in  ;
				BEQ_pom    := BEQ_in  ;
				BNQ_pom    := BNQ_in  ;
				BGT_pom    := BGT_in  ;
				BLT_pom    := BLT_in  ;
				BGE_pom    := BGE_in  ;
				BLE_pom    := BLE_in  ;
				HALT_pom   := HALT_in ;
				
				Rd_pom     := Rd_in   ;
				imm_pom    := imm_in  ;
				
				-- HAZARDI logika za stall
				if (reg1_no_fwd_in(0) /= 'Z' AND reg1_no_fwd_in(0) /= 'U') then
					if (reg1_no_fwd_in = reg_no_ex_fwd_in AND was_load_in /= '1') then
						operand1 := reg_data_ex_fwd_in;
					elsif (reg1_no_fwd_in = reg_no_ex_fwd_in AND was_load_in = '1') then
						stall_out <= '1';
					elsif (reg1_no_fwd_in = reg_no_mem_fwd_in) then
						operand1 := reg_data_mem_fwd_in;
					else
						operand1 := reg1_data_in;
					end if;
				else
				
				end if;
				
				if (reg2_no_fwd_in(0) /= 'Z' AND reg1_no_fwd_in(0) /= 'U') then
					if (reg2_no_fwd_in = reg_no_ex_fwd_in AND was_load_in /= '1') then
						operand2 := reg_data_ex_fwd_in;
					elsif (reg2_no_fwd_in = reg_no_ex_fwd_in AND was_load_in = '1') then
						stall_out <= '1';
					elsif (reg2_no_fwd_in = reg_no_mem_fwd_in) then					
							operand2 := reg_data_mem_fwd_in;
					else
						operand2 := reg2_data_in;
					end if;
				else
				
				end if;

				
				
			else -- ako je stall_in bio '1'
				stall_out <= '0'; -- ako je bio stall (posto je samo jedan uvek dovoljan), vraca se na 0
				if (reg1_no_fwd_in(0) /= 'Z' AND reg1_no_fwd_in(0) /= 'U') then
					if (reg1_no_fwd_in = reg_no_mem_fwd_in) then
						operand1 := reg_data_mem_fwd_in;
					end if;
				end if;
				
				if (reg2_no_fwd_in(0) /= 'Z' AND reg1_no_fwd_in(0) /= 'U') then
					if (reg2_no_fwd_in = reg_no_mem_fwd_in) then
						operand2 := reg_data_mem_fwd_in;
					end if;
				end if;
			end if; -- stall
		
		end if;
	
		if (falling_edge(clk)) then
		
			stall_pom := stall_in;
			
			if (stall_in /= '1') then
			
				Reg_out   <= (others => 'Z');
				ALU_out   <= (others => 'Z');
				B_out     <= (others => 'Z');
				load_out  <= 'Z';
				store_out <= 'Z';
				was_load_out <= 'Z';
				reg_no_ex_fwd_out <= (others => 'Z');
				
				if (LOAD_pom = '1') then
					ALU_out <= std_logic_vector(signed(operand1) + signed(imm_pom)); -- adresa sa koje se cita
					Reg_out <= Rd_pom;
					-- 'Z' jer kad je LOAD prosledjujemo iz MEM-a
					reg_data_ex_fwd_out <= (others => 'Z');
					reg_no_ex_fwd_out <= Rd_pom;
					was_load_out <= '1';
				end if;
				
				if (STORE_pom = '1') then
					ALU_out <= std_logic_vector(signed(operand1) + signed(imm_pom));
					B_out <= operand2;
					--store_out <= '1';
				end if;
				
				if (MOV_pom = '1') then
					ALU_out <= operand1;
					Reg_out <= Rd_pom;
					reg_data_ex_fwd_out <= operand1;
					reg_no_ex_fwd_out <= Rd_pom;
				end if;
				
				if (MOVI_pom = '1') then
					ALU_out <= imm_pom;
					Reg_out <= Rd_pom;
					reg_data_ex_fwd_out <= imm_pom;
					reg_no_ex_fwd_out <= Rd_pom;
				end if;
				
				if (ADD_pom = '1') then
					ALU_out <= std_logic_vector(signed(operand1) + signed(operand2));
					Reg_out <= Rd_pom;
					reg_data_ex_fwd_out <= std_logic_vector(signed(operand1) + signed(operand2));
					reg_no_ex_fwd_out <= Rd_pom;
				end if;
				
				if (SUB_pom = '1') then
					ALU_out <= std_logic_vector(signed(operand1) - signed(operand2));
					Reg_out <= Rd_pom;
					reg_data_ex_fwd_out <= std_logic_vector(signed(operand1) - signed(operand2));
					reg_no_ex_fwd_out <= Rd_pom;
				end if;
				
				if (ADDI_pom = '1') then
					ALU_out <= std_logic_vector(signed(operand1) + signed(imm_pom));
					Reg_out <= Rd_pom;
					reg_data_ex_fwd_out <= std_logic_vector(signed(operand1) + signed(imm_pom));
					reg_no_ex_fwd_out <= Rd_pom;
				end if;
				
				if (SUBI_pom = '1') then
					ALU_out <= std_logic_vector(signed(operand1) - signed(imm_pom));
					Reg_out <= Rd_pom;
					reg_data_ex_fwd_out <= std_logic_vector(signed(operand1) - signed(imm_pom));
					reg_no_ex_fwd_out <= Rd_pom;
				end if;
				
				if (AND_pom = '1') then
					ALU_out <= operand1 and operand2;
					Reg_out <= Rd_pom;
					reg_data_ex_fwd_out <= operand1 and operand2;
					reg_no_ex_fwd_out <= Rd_pom;
				end if;
				
				if (OR_pom = '1') then
					ALU_out <= operand1 or operand2;
					Reg_out <= Rd_pom;
					reg_data_ex_fwd_out <= operand1 or operand2;
					reg_no_ex_fwd_out <= Rd_pom;
				end if;
				
				if (XOR_pom = '1') then
					ALU_out <= operand1 xor operand2;
					Reg_out <= Rd_pom;
					reg_data_ex_fwd_out <= operand1 xor operand2;
					reg_no_ex_fwd_out <= Rd_pom;
				end if;
				
				if (NOT_pom = '1') then
					ALU_out <= not operand1;
					Reg_out <= Rd_pom;
					reg_data_ex_fwd_out <= not operand1;
					reg_no_ex_fwd_out <= Rd_pom;
				end if;
				
				if (SHR_pom = '1') then
					for i in 0 to 31 loop
						if (i < 31 - to_integer(unsigned(imm_in))) then
							ALU_out(i) <= operand1(i + to_integer(unsigned(imm_in)));
							reg_data_ex_fwd_out(i) <= operand1(i + to_integer(unsigned(imm_in)));
						else
							ALU_out(i) <= '0';
							reg_data_ex_fwd_out(i) <= '0';
						end if;
					end loop;
					Reg_out <= Rd_pom;
					reg_no_ex_fwd_out <= Rd_pom;
				end if;
				
				if (SHL_pom = '1') then
					for i in 31 downto 0 loop
						if (i > 31 - to_integer(unsigned(imm_in))) then
							ALU_out(i) <= operand1(i - to_integer(unsigned(imm_in)));
							reg_data_ex_fwd_out(i) <= operand1(i - to_integer(unsigned(imm_in)));
						else
							ALU_out(i) <= '0';
							reg_data_ex_fwd_out(i) <= '0';
						end if;
					end loop;
					Reg_out <= Rd_pom;
					reg_no_ex_fwd_out <= Rd_pom;
				end if;
				
				if (SAR_pom = '1') then
					for i in 0 to 31 loop
						if (i < 31 - to_integer(unsigned(imm_in))) then
							ALU_out(i) <= operand1(i + to_integer(unsigned(imm_in)));
							reg_data_ex_fwd_out(i) <= operand1(i + to_integer(unsigned(imm_in)));
						else
							ALU_out(i) <= operand1(31);
							reg_data_ex_fwd_out(i) <= operand1(31);
						end if;
					end loop;
					Reg_out <= Rd_pom;
					reg_no_ex_fwd_out <= Rd_pom;
				end if;
				
				if (ROL_pom = '1') then
					for i in 31 downto 0 loop
						if (i >= 31 - to_integer(unsigned(imm_in))) then
							ALU_out(i) <= operand1(i - to_integer(unsigned(imm_in)));
							reg_data_ex_fwd_out(i) <= operand1(i - to_integer(unsigned(imm_in)));
						else
							ALU_out(i) <= operand1(i + to_integer(unsigned(imm_in)) - 32);
							reg_data_ex_fwd_out(i) <= operand1(i + to_integer(unsigned(imm_in)) - 32);
						end if;
					end loop;
					Reg_out <= Rd_pom;
					reg_no_ex_fwd_out <= Rd_pom;
				end if;
				
				if (ROR_pom = '1') then
					for i in 0 to 31 loop
						if (i <= 31 - to_integer(unsigned(imm_in))) then
								ALU_out(i) <= operand1(i + to_integer(unsigned(imm_in)));
								reg_data_ex_fwd_out(i) <= operand1(i + to_integer(unsigned(imm_in)));
							else
								ALU_out(i) <= operand1(i + to_integer(unsigned(imm_in)) - 32);
								reg_data_ex_fwd_out(i) <= operand1(i + to_integer(unsigned(imm_in)) - 32);
							end if;
					end loop;
					Reg_out <= Rd_pom;
					reg_no_ex_fwd_out <= Rd_pom;
				end if;
				
				if (JMP_pom = '1') then
					--new_pc_out <= std_logic_vector(signed(operand1) + signed(imm_pom));
				end if;
				
				if (JSR_pom = '1') then
					-- sp na stack
					ALU_out <= sp;
					sp <= std_logic_vector(unsigned(sp) + 1);
					B_out <= std_logic_vector(unsigned(pc_in) + 1);
					store_out <= '1';
					-- prva adresa potprograma
					--new_pc_out <= std_logic_vector(signed(operand1) + signed(imm_pom));
				end if;
				
				if (RTS_pom = '1') then
					-- uraditi sa hazardima zbog stall-a
				end if;
				
				if (PUSH_pom = '1') then
					ALU_out <= sp;
					sp <= std_logic_vector(unsigned(sp) + 1);
					B_out <= operand1;
					store_out <= '1';
				end if;
				
				if (POP_pom = '1') then
					sp <= std_logic_vector(unsigned(sp) - 1);
					ALU_out <= sp;
					Reg_out <= Rd_pom;
					reg_no_ex_fwd_out <= Rd_pom;
					reg_data_ex_fwd_out <= sp;
					load_out <= '1';
				end if;
				
				if (BEQ_pom = '1') then
					
				end if;
				
				if (BNQ_pom = '1') then
				
				end if;
				
				if (BGT_pom = '1') then
				
				end if;
				
				if (BLT_pom = '1') then
					
				end if;
				
				if (BGE_pom = '1') then
					
				end if;
				
				if (BLE_pom = '1') then
					
				end if;
				
				if (HALT_pom = '1') then
					
				end if;
				
				if (LOAD_pom = '1') then
					load_out <= '1';
				else
					load_out <= 'Z';
				end if;
				
				if (STORE_pom = '1') then
					store_out <= '1';
				else
					store_out <= 'Z';
				end if;
			else -- ako je bio stall
				was_load_out <= '0';
			end if;
				
		end if; -- falling_edge
	
	end process;
	
end architecture;