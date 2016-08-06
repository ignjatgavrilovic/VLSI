library ieee;
use ieee.std_logic_1164.all;

entity CPU is

	port 
	(
		clk : in std_logic;
		reset : in std_logic;
		ir_in : in std_logic_vector(31 downto 0); -- dobijeno od instr_cache
		adr_out : out std_logic_vector(31 downto 0)
	);

end CPU;

architecture rtl of CPU is	

		signal ir_if_id : std_logic_vector(31 downto 0); -- saljemo ID

		signal LOAD_id_ex: std_logic;
		signal STORE_id_ex: std_logic;
		signal MOV_id_ex: std_logic;
		signal MOVI_id_ex: std_logic;
		signal ADD_id_ex: std_logic;
		signal SUB_id_ex: std_logic;
		signal ADDI_id_ex: std_logic;
		signal SUBI_id_ex: std_logic;
		signal AND_id_ex: std_logic;
		signal OR_id_ex: std_logic;
		signal XOR_id_ex: std_logic;
		signal NOT_id_ex: std_logic;
		signal SHR_id_ex: std_logic;
		signal SHL_id_ex: std_logic;
		signal SAR_id_ex: std_logic;
		signal ROL_id_ex: std_logic;
		signal ROR_id_ex: std_logic;
		signal JMP_id_ex: std_logic;
		signal JSR_id_ex: std_logic;
		signal RTS_id_ex: std_logic;
		signal PUSH_id_ex: std_logic;
		signal POP_id_ex: std_logic;
		signal BEQ_id_ex: std_logic;
		signal BNQ_id_ex: std_logic;
		signal BGT_id_ex: std_logic;
		signal BLT_id_ex: std_logic;
		signal BGE_id_ex: std_logic;
		signal BLE_id_ex: std_logic;
		signal HALT_id_ex: std_logic;
		 
		--registri
		signal Rs1_id_ex: std_logic_vector(4 downto 0);
		signal Rs2_id_ex: std_logic_vector(4 downto 0);
		signal Rd_id_ex: std_logic_vector(4 downto 0);
		signal imm_id_ex: std_logic_vector(31 downto 0);
		
begin
	IF_BLOCK: entity work.IF_BLOCK
	port map (
		clk => clk,
		ir_in => ir_in,
		ir_out => ir_if_id,
		adr_out => adr_out
	);
	
	ID_BLOCK: entity work.ID_BLOCK
	port map(
		clk => clk,
		ir_in => ir_if_id,
		
		LOAD_out => LOAD_id_ex,
		STORE_out => STORE_id_ex,
		MOV_out => MOV_id_ex,
		MOVI_out => MOVI_id_ex,
		ADD_out => ADD_id_ex,
		SUB_out => SUB_id_ex,
		ADDI_out => ADDI_id_ex,
		SUBI_out => SUBI_id_ex,
		AND_out => AND_id_ex,
		OR_out => OR_id_ex,
		XOR_out => XOR_id_ex,
		NOT_out => NOT_id_ex,
		SHR_out => SHR_id_ex,
		SHL_out => SHL_id_ex,
		SAR_out => SAR_id_ex,
		ROL_out => ROL_id_ex,
		ROR_out => ROR_id_ex,
		JMP_out => JMP_id_ex,
		JSR_out => JSR_id_ex,
		RTS_out => RTS_id_ex,
		PUSH_out => PUSH_id_ex,
		POP_out => POP_id_ex,
		BEQ_out => BEQ_id_ex,
		BNQ_out => BNQ_id_ex,
		BGT_out => BGT_id_ex,
		BLT_out => BLT_id_ex,
		BGE_out => BGE_id_ex,
		BLE_out => BLE_id_ex,
		HALT_out => HALT_id_ex,
		
		--registri
		Rs1_out => Rs1_id_ex,
		Rs2_out => Rs2_id_ex,
		Rd_out => Rd_id_ex,
		imm_out => imm_id_ex
		
	);
	
	
end architecture;
