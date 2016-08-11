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
		
		pc_in		: in std_logic_vector(31 downto 0)
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
		
		
		--variable Rs1_pom: std_logic_vector(4 downto 0);
		--variable Rs2_pom: std_logic_vector(4 downto 0);
		variable Rd_pom:  std_logic_vector(4 downto 0);
		variable imm_pom: std_logic_vector(31 downto 0);
		
		variable pc_pom : std_logic_vector(31 downto 0);
	begin
		
		if (rising_edge(clk)) then
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

		end if;
	
		if (falling_edge(clk)) then
		
			--predicted_pc_out <= predicted_pc_in;
			--jump_predicted_out <= jump_predicted_in;
			
			Reg_out   <= (others => 'Z');
			ALU_out   <= (others => 'Z');
			B_out     <= (others => 'Z');
			load_out  <= 'Z';
			store_out <= 'Z';
			
			if (LOAD_pom = '1') then
				ALU_out <= std_logic_vector(signed(reg1_data_in) + signed(imm_pom)); -- adresa sa koje se cita
				Reg_out <= Rd_pom;
				--load_out <= '1';
			end if;
			
			if (STORE_pom = '1') then
				ALU_out <= std_logic_vector(signed(reg1_data_in) + signed(imm_pom));
				B_out <= reg2_data_in;
				--store_out <= '1';
			end if;
			
			if (MOV_pom = '1') then
				ALU_out <= reg1_data_in;
				Reg_out <= Rd_pom;
			end if;
			
			if (MOVI_pom = '1') then
				ALU_out <= imm_pom;
				Reg_out <= Rd_pom;
			end if;
			
			if (ADD_pom = '1') then
				ALU_out <= std_logic_vector(signed(reg1_data_in) + signed(reg2_data_in));
				Reg_out <= Rd_pom;
			end if;
			
			if (SUB_pom = '1') then
				ALU_out <= std_logic_vector(signed(reg1_data_in) - signed(reg2_data_in));
				Reg_out <= Rd_pom;
			end if;
			
			if (ADDI_pom = '1') then
				ALU_out <= std_logic_vector(signed(reg1_data_in) + signed(imm_pom));
				Reg_out <= Rd_pom;
			end if;
			
			if (SUBI_pom = '1') then
				ALU_out <= std_logic_vector(signed(reg1_data_in) - signed(imm_pom));
				Reg_out <= Rd_pom;
			end if;
			
			if (AND_pom = '1') then
				ALU_out <= reg1_data_in and reg2_data_in;
				Reg_out <= Rd_pom;
			end if;
			
			if (OR_pom = '1') then
				ALU_out <= reg1_data_in or reg2_data_in;
				Reg_out <= Rd_pom;
			end if;
			
			if (XOR_pom = '1') then
				ALU_out <= reg1_data_in xor reg2_data_in;
				Reg_out <= Rd_pom;
			end if;
			
			if (NOT_pom = '1') then
				ALU_out <= not reg1_data_in;
				Reg_out <= Rd_pom;
			end if;
			
			if (SHR_pom = '1') then
				for i in 0 to 31 loop
					if (i < 31 - to_integer(unsigned(imm_in))) then
						ALU_out(i) <= reg1_data_in(i + to_integer(unsigned(imm_in)));
					else
						ALU_out(i) <= '0';
					end if;
				end loop;
				Reg_out <= Rd_pom;
			end if;
			
			if (SHL_pom = '1') then
				for i in 31 downto 0 loop
					if (i > 31 - to_integer(unsigned(imm_in))) then
						ALU_out(i) <= reg1_data_in(i - to_integer(unsigned(imm_in)));
					else
						ALU_out(i) <= '0';
					end if;
				end loop;
				Reg_out <= Rd_pom;
			end if;
			
			if (SAR_pom = '1') then
				for i in 0 to 31 loop
					if (i < 31 - to_integer(unsigned(imm_in))) then
						ALU_out(i) <= reg1_data_in(i + to_integer(unsigned(imm_in)));
					else
						ALU_out(i) <= reg1_data_in(31);
					end if;
				end loop;
				Reg_out <= Rd_pom;
			end if;
			
			if (ROL_pom = '1') then
				for i in 31 downto 0 loop
					if (i >= 31 - to_integer(unsigned(imm_in))) then
						ALU_out(i) <= reg1_data_in(i - to_integer(unsigned(imm_in)));
					else
						ALU_out(i) <= reg1_data_in(i + to_integer(unsigned(imm_in)) - 32);
					end if;
				end loop;
				Reg_out <= Rd_pom;
			end if;
			
			if (ROR_pom = '1') then
				for i in 0 to 31 loop
					if (i <= 31 - to_integer(unsigned(imm_in))) then
							ALU_out(i) <= reg1_data_in(i + to_integer(unsigned(imm_in)));
						else
							ALU_out(i) <= reg1_data_in(i + to_integer(unsigned(imm_in)) - 32);
						end if;
				end loop;
				Reg_out <= Rd_pom;
			end if;
			
			if (JMP_pom = '1') then
				--new_pc_out <= std_logic_vector(signed(reg1_data_in) + signed(imm_pom));
			end if;
			
			if (JSR_pom = '1') then
				-- sp na stack
				ALU_out <= sp;
				sp <= std_logic_vector(unsigned(sp) + 1);
				B_out <= std_logic_vector(unsigned(pc_in) + 1);
				store_out <= '1';
				-- prva adresa potprograma
				--new_pc_out <= std_logic_vector(signed(reg1_data_in) + signed(imm_pom));
			end if;
			
			if (RTS_pom = '1') then
				-- uraditi sa hazardima zbog stall-a
			end if;
			
			if (PUSH_pom = '1') then
				ALU_out <= sp;
				sp <= std_logic_vector(unsigned(sp) + 1);
				B_out <= reg1_data_in;
				store_out <= '1';
			end if;
			
			if (POP_pom = '1') then
				sp <= std_logic_vector(unsigned(sp) - 1);
				ALU_out <= sp;
				Reg_out <= Rd_pom;
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
			
			
		end if;
	
	end process;
	
end architecture;