library ieee;
use ieee.std_logic_1164.all;

entity ID_BLOCK is

	port (
		clk : in std_logic;
		
		--pc_in : in std_logic_vector(31 downto 0);   // vratiti kad budemo propagirali PC
		ir_in : in std_logic_vector(31 downto 0);
		
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
		
		--registri
		Rs1_out: out std_logic_vector(4 downto 0);
		Rs2_out: out std_logic_vector(4 downto 0);
		Rd_out: out std_logic_vector(4 downto 0);
		imm_out: out std_logic_vector(31 downto 0);
		
		pc_in  : in  std_logic_vector(31 downto 0);
		pc_out : out std_logic_vector(31 downto 0)
	);

end ID_BLOCK;

architecture rtl of ID_BLOCK is
	signal imm: std_logic_vector(15 downto 0);
begin

	process(clk,ir_in) is	
	begin
	
		if (rising_edge(clk)) then
			LOAD_out <='Z';
			STORE_out <='Z';
			MOV_out <='Z';
			MOVI_out <='Z';
			ADD_out <='Z';
			SUB_out <='Z';
			ADDI_out <='Z';
			SUBI_out <='Z';
			AND_out <='Z';
			OR_out <='Z';
			XOR_out <='Z';
			NOT_out <='Z';
			SHR_out <='Z';
			SHL_out <='Z';
			SAR_out <='Z';
			ROL_out <='Z';
			ROR_out <='Z';
			JMP_out <='Z';
			JSR_out <='Z';
			RTS_out <='Z';
			PUSH_out <='Z';
			POP_out <='Z';
			BEQ_out <='Z';
			BNQ_out <='Z';
			BGT_out <='Z';
			BLT_out <='Z';
			BGE_out <='Z';
			BLE_out <='Z';
			HALT_out<='Z';
			
			Rs1_out <= (others => 'Z');
			Rs2_out <= (others => 'Z');
			Rd_out <= (others => 'Z');
			imm <= (others => 'Z');
			
			pc_out <= pc_in;
			
			if (B"000000" = ir_in(31 downto 26)) then
				LOAD_out  <= '1';
				Rd_out  <= ir_in(25 downto 21);
				Rs1_out  <= ir_in(20 downto 16);
				imm(15 downto 0)  <= ir_in(15 downto 0);
			end if;
			
			if (B"000001" = ir_in(31 downto 26)) then
				STORE_out  <= '1';
				Rs1_out  <= ir_in(20 downto 16);
				Rs2_out <= ir_in(15 downto 11);
				imm(15 downto 11)  <= ir_in(25 downto 21);
				imm(10 downto 0)  <= ir_in(10 downto 0);				
			end if;
			
			if (B"000100" = ir_in(31 downto 26)) then
				MOV_out <= '1';
				Rd_out  <= ir_in(25 downto 21);
				Rs1_out  <= ir_in(20 downto 16);
			end if;
				
			if (B"000101" = ir_in(31 downto 26)) then
				MOVI_out <= '1';
				Rd_out <= ir_in(25 downto 21);
				imm(15 downto 0) <= ir_in(15 downto 0);
			end if;
			
			if (B"001000" = ir_in(31 downto 26)) then
				ADD_out  <= '1';
				Rd_out   <= ir_in(25 downto 21);
				Rs1_out  <= ir_in(20 downto 16);
				Rs2_out  <= ir_in(15 downto 11);
			end if;
				
			if (B"001001" = ir_in(31 downto 26)) then
				SUB_out  <= '1';
				Rd_out   <= ir_in(25 downto 21);
				Rs1_out  <= ir_in(20 downto 16);
				Rs2_out  <= ir_in(15 downto 11);
			end if;
			
			if (B"001100" = ir_in(31 downto 26)) then
				ADDI_out  <= '1';
				Rd_out  <= ir_in(25 downto 21);
				Rs1_out  <= ir_in(20 downto 16);
				imm(15 downto 0)  <= ir_in(15 downto 0);
			end if;
			
			if (B"001101" = ir_in(31 downto 26)) then
				SUBI_out  <= '1';
				Rd_out  <= ir_in(25 downto 21);
				Rs1_out  <= ir_in(20 downto 16);
				imm(15 downto 0)  <= ir_in(15 downto 0);
			end if;
			
			if (B"010000" = ir_in(31 downto 26)) then
				AND_out  <= '1';
				Rd_out  <= ir_in(25 downto 21);
				Rs1_out  <= ir_in(20 downto 16);
				Rs2_out  <= ir_in(15 downto 11);
			end if;
				
			if (B"010001" = ir_in(31 downto 26)) then
				OR_out <= '1';
				Rd_out  <= ir_in(25 downto 21);
				Rs1_out  <= ir_in(20 downto 16);
				Rs2_out  <= ir_in(15 downto 11);
			end if;
			
			if (B"010010" = ir_in(31 downto 26)) then
				XOR_out  <= '1';
				Rd_out  <= ir_in(25 downto 21);
				Rs1_out  <= ir_in(20 downto 16);
				Rs2_out  <= ir_in(15 downto 11);
			end if;
				
			if (B"010011" = ir_in(31 downto 26)) then
				NOT_out  <= '1';
				Rd_out  <= ir_in(25 downto 21);
				Rs1_out  <= ir_in(20 downto 16);
				--Rs2_out  <= ir_in(15 downto 11);
			end if;
				
			if (B"011000" = ir_in(31 downto 26)) then
				SHL_out  <= '1';
				Rd_out  <= ir_in(25 downto 21);
				imm(15 downto 5)<= (others=>'0');
				imm(4 downto 0)  <= ir_in(15 downto 11);
			end if;
				
			if (B"011001" = ir_in(31 downto 26)) then
				SHR_out  <= '1';
				Rd_out  <= ir_in(25 downto 21);
				imm(15 downto 5)<= (others=>'0');
				imm(4 downto 0)  <= ir_in(15 downto 11);
			end if;
				
			if (B"011010" = ir_in(31 downto 26)) then
				SAR_out  <= '1';
				Rd_out  <= ir_in(25 downto 21);
				imm(15 downto 5)<= (others=>'0');
				imm(4 downto 0)  <= ir_in(15 downto 11);
			end if;
				
			if (B"011011" = ir_in(31 downto 26)) then
				ROL_out  <= '1';
				Rd_out  <= ir_in(25 downto 21);
				imm(15 downto 5)<= (others=>'0');
				imm(4 downto 0)  <= ir_in(15 downto 11);
			end if;
				
			if (B"011100" = ir_in(31 downto 26)) then
				ROR_out  <= '1';
				Rd_out  <= ir_in(25 downto 21);
				imm(15 downto 5)<= (others=>'0');
				imm(4 downto 0)  <= ir_in(15 downto 11);
			end if;
				
			if (B"100000" = ir_in(31 downto 26)) then
				JMP_out  <= '1';
				Rs1_out <= ir_in(20 downto 16);
				imm(15 downto 0) <= ir_in(15 downto 0);
			end if;
				
			if (B"100001" = ir_in(31 downto 26)) then
				JSR_out  <= '1';
				Rs1_out <= ir_in(20 downto 16);
				imm(15 downto 0) <= ir_in(15 downto 0);
			end if;
				
			if (B"100010" = ir_in(31 downto 26)) then
				RTS_out  <= '1';
			end if;
				
			if (B"100100" = ir_in(31 downto 26)) then
				PUSH_out  <= '1';
				Rs2_out <= ir_in(20 downto 16);
			end if;
				
			if (B"100101" = ir_in(31 downto 26)) then
				POP_out  <= '1';
				Rd_out  <= ir_in(25 downto 21);
			end if;
				
			if (B"101000" = ir_in(31 downto 26)) then
				BEQ_out  <= '1';
				imm(15 downto 11)  <= ir_in(25 downto 21);
				Rs1_out <= ir_in(20 downto 16);
				Rs2_out <= ir_in(15 downto 11);
				imm(10 downto 0)  <= ir_in(10 downto 0);
			end if;
			
			if (B"101001" = ir_in(31 downto 26)) then
				BNQ_out  <= '1';
				imm(15 downto 11)  <= ir_in(25 downto 21);
				Rs1_out <= ir_in(20 downto 16);
				Rs2_out <= ir_in(15 downto 11);
				imm(10 downto 0)  <= ir_in(10 downto 0);
			end if;
			
			if (B"101010" = ir_in(31 downto 26)) then
				BGT_out  <= '1';
				imm(15 downto 11)  <= ir_in(25 downto 21);
				Rs1_out <= ir_in(20 downto 16);
				Rs2_out <= ir_in(15 downto 11);
				imm(10 downto 0)  <= ir_in(10 downto 0);
				
			end if;
			
			if (B"101011" = ir_in(31 downto 26)) then
				BLT_out  <= '1';
				imm(15 downto 11)  <= ir_in(25 downto 21);
				Rs1_out <= ir_in(20 downto 16);
				Rs2_out <= ir_in(15 downto 11);
				imm(10 downto 0)  <= ir_in(10 downto 0);
			end if;
			
			if (B"101100" = ir_in(31 downto 26)) then
				BGE_out  <= '1';
				imm(15 downto 11)  <= ir_in(25 downto 21);
				Rs1_out <= ir_in(20 downto 16);
				Rs2_out <= ir_in(15 downto 11);
				imm(10 downto 0)  <= ir_in(10 downto 0);
			end if;
			
			if (B"101101" = ir_in(31 downto 26)) then
				BLE_out  <= '1';
				imm(15 downto 11)  <= ir_in(25 downto 21);
				Rs1_out <= ir_in(20 downto 16);
				Rs2_out <= ir_in(15 downto 11);
				imm(10 downto 0)  <= ir_in(10 downto 0);
			end if;
			
			if (B"111111" = ir_in(31 downto 26)) then
				HALT_out  <= '1';
				--STOP_IF <= '1';
			end if;
			
		end if;
		
	end process;

	process(imm) is
	begin
		--pom	<=to_integer(unsigned (imm_pom));
		imm_out(15 downto 0) <= imm;
		if( imm(15)='0')then
		imm_out(31 downto 16) <= (others=>'0');	
		else
			imm_out(31 downto 16) <= (others=>'1');
		end if;
	end process;

end architecture;





