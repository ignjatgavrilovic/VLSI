library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

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
		
		--registri
		Rs1_in: in std_logic_vector(4 downto 0);
		Rs2_in: in std_logic_vector(4 downto 0);
		Rd_in: in std_logic_vector(4 downto 0);
		imm_in: in std_logic_vector(31 downto 0);
	
		-- za komunikaciju sa REG_FILE
		rdReg1_out: out std_logic;
		rdReg2_out: out std_logic;
		
		reg1_no_out   : out std_logic_vector(4 downto 0); 
		reg1_data_in  : in  std_logic_vector(31 downto 0); 
		reg2_no_out   : out std_logic_vector(4 downto 0);
		reg2_data_in  : in  std_logic_vector(31 downto 0); 
		
		-- za komunikaciju sa MEM_BLOCK
		ALU_out : out std_logic_vector(31 downto 0);
		B_out   : out std_logic_vector(31 downto 0); --operand za store
		
		-- 5 bitova iz IR-a sluze za adresiranje registara u WB stepenu
		Reg_out : out std_logic_vector(4 downto 0);
		
		load_out : out std_logic;
		store_out: out std_logic;
		pc_in : in std_logic_vector(31 downto 0);
		new_pc_out : out std_logic_vector(31 downto 0)
	);
	
end EX_BLOCK;

architecture rtl of EX_BLOCK is

begin
	
	process (clk) is
	begin
	
		if (rising_edge(clk)) then
		
			if (LOAD_in = '1') then
				reg1_no_out <= Rs1_in;
				rdReg1_out <= '1';
			end if;
			
			if (STORE_in = '1') then
				reg1_no_out <= Rs1_in;
				rdReg1_out <= '1';
				reg2_no_out <= Rs2_in;
				rdReg2_out <= '1';
			end if;
			
			if (MOV_in = '1') then
				reg1_no_out <= Rs1_in;
				rdReg1_out <= '1';
			end if;
			
			if (MOVI_in = '1') then
				-- ovde nista ne treba
			end if;
			
			if (ADD_in = '1') then
				reg1_no_out <= Rs1_in;
				rdReg1_out <= '1';
				reg2_no_out <= Rs2_in;
				rdReg2_out <= '1';
			end if;
			
			if (SUB_in = '1') then
				reg1_no_out <= Rs1_in;
				rdReg1_out <= '1';
				reg2_no_out <= Rs2_in;
				rdReg2_out <= '1';
			end if;
			
			if (ADDI_in = '1') then
				reg1_no_out <= Rs1_in;
				rdReg1_out <= '1';
			end if;
			
			if (SUBI_in = '1') then
				reg1_no_out <= Rs1_in;
				rdReg1_out <= '1';
			end if;
			
			if (AND_in = '1') then
				reg1_no_out <= Rs1_in;
				rdReg1_out <= '1';
				reg2_no_out <= Rs2_in;
				rdReg2_out <= '1';
			end if;
			
			if (OR_in = '1') then
				reg1_no_out <= Rs1_in;
				rdReg1_out <= '1';
				reg2_no_out <= Rs2_in;
				rdReg2_out <= '1';
			end if;
			
			if (XOR_in = '1') then
				reg1_no_out <= Rs1_in;
				rdReg1_out <= '1';
				reg2_no_out <= Rs2_in;
				rdReg2_out <= '1';
			end if;
			
			if (NOT_in = '1') then
				reg1_no_out <= Rs1_in;
				rdReg1_out <= '1';
			end if;
			
			if (SHR_in = '1') then
				reg1_no_out <= Rd_in;
				rdReg1_out <= '1';
			end if;
			
			if (SHL_in = '1') then
				reg1_no_out <= Rd_in;
				rdReg1_out <= '1';
			end if;
			
			if (SAR_in = '1') then
				reg1_no_out <= Rd_in;
				rdReg1_out <= '1';
			end if;
				
			if (ROL_in = '1') then
				reg1_no_out <= Rd_in;
				rdReg1_out <= '1';
			end if;
			
			if (ROR_in = '1') then
				reg1_no_out <= Rd_in;
				rdReg1_out <= '1';
			end if;
			
			if (JMP_in = '1') then
				reg1_no_out <= Rd_in;
				rdReg1_out <= '1';
			end if;
			
			if (JSR_in = '1') then
				reg1_no_out <= Rd_in;
				rdReg1_out <= '1';
			end if;
			
			if (RTS_in = '1') then
				-- vraca iz subroutine, rad sa stekom
			end if;
			
			if (PUSH_in = '1') then
				-- rad sa stekom
			end if;
			
			if (POP_in = '1') then
				-- rad sa stekom
			end if;
			
			if (BEQ_in = '1') then
				reg1_no_out <= Rs1_in;
				rdReg1_out <= '1';
				reg2_no_out <= Rs2_in;
				rdReg2_out <= '1';
			end if;
			
			if (BNQ_in = '1') then
				reg1_no_out <= Rs1_in;
				rdReg1_out <= '1';
				reg2_no_out <= Rs2_in;
				rdReg2_out <= '1';
			end if;
			
			if (BGT_in = '1') then
				reg1_no_out <= Rs1_in;
				rdReg1_out <= '1';
				reg2_no_out <= Rs2_in;
				rdReg2_out <= '1';
			end if;
			
			if (BLT_in = '1') then
				reg1_no_out <= Rs1_in;
				rdReg1_out <= '1';
				reg2_no_out <= Rs2_in;
				rdReg2_out <= '1';
			end if;
			
			if (BGE_in = '1') then
				reg1_no_out <= Rs1_in;
				rdReg1_out <= '1';
				reg2_no_out <= Rs2_in;
				rdReg2_out <= '1';
			end if;
			
			if (BLE_in = '1') then
				reg1_no_out <= Rs1_in;
				rdReg1_out <= '1';
				reg2_no_out <= Rs2_in;
				rdReg2_out <= '1';
			end if;
			
			if (HALT_in = '1') then
				
			end if;
			
		end if;
	
		if (falling_edge(clk)) then
			
			if (LOAD_in = '1') then
				ALU_out <= std_logic_vector(signed(reg1_data_in) + signed(imm_in));
				Reg_out <= Rd_in;
				load_out <= '1';
			end if;
			
			if (STORE_in = '1') then
				ALU_out <= std_logic_vector(signed(reg1_data_in) + signed(imm_in));
				B_out <= reg2_data_in;
				store_out <= '1';
			end if;
			
			if (MOV_in = '1') then
				ALU_out <= reg1_data_in;
				Reg_out <= Rd_in;
			end if;
			
			if (MOVI_in = '1') then
				ALU_out <= imm_in;
				Reg_out <= Rd_in;
			end if;
			
			if (ADD_in = '1') then
				ALU_out <= std_logic_vector(signed(reg1_data_in) + signed(reg2_data_in));
				Reg_out <= Rd_in;
			end if;
			
			if (SUB_in = '1') then
				ALU_out <= std_logic_vector(signed(reg1_data_in) - signed(reg2_data_in));
				Reg_out <= Rd_in;
			end if;
			
			if (ADDI_in = '1') then
				ALU_out <= std_logic_vector(signed(reg1_data_in) + signed(imm_in));
				Reg_out <= Rd_in;
			end if;
			
			if (SUBI_in = '1') then
				ALU_out <= std_logic_vector(signed(reg1_data_in) - signed(imm_in));
				Reg_out <= Rd_in;
			end if;
			
			if (AND_in = '1') then
				ALU_out <= reg1_data_in and reg2_data_in;
				Reg_out <= Rd_in;
			end if;
			
			if (OR_in = '1') then
				ALU_out <= reg1_data_in or reg2_data_in;
				Reg_out <= Rd_in;
			end if;
			
			if (XOR_in = '1') then
				ALU_out <= reg1_data_in xor reg2_data_in;
				Reg_out <= Rd_in;
			end if;
			
			if (NOT_in = '1') then
				ALU_out <= not reg1_data_in;
				Reg_out <= Rd_in;
			end if;
			
			if (SHR_in = '1') then
				ALU_out <= reg1_data_in; --std_logic_vector(unsigned(reg1_data_in) srl unsigned(imm_in));  
				Reg_out <= Rd_in;
			end if;
			
			if (SHL_in = '1') then
				ALU_out <= reg1_data_in; --std_logic_vector(unsigned(reg1_data_in) sll unsigned(imm_in));
				Reg_out <= Rd_in;
			end if;
			
			if (SAR_in = '1') then
				ALU_out <= reg1_data_in;-- sra unsigned(imm_in);
				Reg_out <= Rd_in;
			end if;
			
			if (ROL_in = '1') then
				ALU_out <= reg1_data_in;-- ror unsigned(imm_in);
				Reg_out <= Rd_in;
			end if;
			
			if (ROR_in = '1') then
				ALU_out <= reg1_data_in;-- rol unsigned(imm_in);
				Reg_out <= Rd_in;
			end if;
			
			if (JMP_in = '1') then
				new_pc_out <= std_logic_vector(signed(reg1_data_in) + signed(imm_in));
			end if;
			
			if (JSR_in = '1') then
				-- dodati rad sa stekom
				new_pc_out <= std_logic_vector(signed(reg1_data_in) + signed(imm_in));
			end if;
			
			if (RTS_in = '1') then
				
			end if;
			
			if (PUSH_in = '1') then
				
			end if;
			
			if (POP_in = '1') then
				
			end if;
			
			if (BEQ_in = '1') then
				if (reg1_data_in = reg2_data_in) then
					new_pc_out <= std_logic_vector(signed(pc_in) + signed(imm_in));
				end if;
			end if;
			
			if (BNQ_in = '1') then
				if (reg1_data_in /= reg2_data_in) then
					new_pc_out <= std_logic_vector(signed(pc_in) + signed(imm_in));
				end if;
			end if;
			
			if (BGT_in = '1') then
				if (reg1_data_in > reg2_data_in) then
					new_pc_out <= std_logic_vector(signed(pc_in) + signed(imm_in));
				end if;
			end if;
			
			if (BLT_in = '1') then
				if (reg1_data_in < reg2_data_in) then
					new_pc_out <= std_logic_vector(signed(pc_in) + signed(imm_in));
				end if;
			end if;
			
			if (BGE_in = '1') then
				if (reg1_data_in >= reg2_data_in) then
					new_pc_out <= std_logic_vector(signed(pc_in) + signed(imm_in));
				end if;
			end if;
			
			if (BLE_in = '1') then
				if (reg1_data_in <= reg2_data_in) then
					new_pc_out <= std_logic_vector(signed(pc_in) + signed(imm_in));
				end if;
			end if;
			
			if (HALT_in = '1') then
				
			end if;
			
		end if;
	
	end process;
	
end architecture;