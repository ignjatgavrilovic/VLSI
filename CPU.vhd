library ieee;
use ieee.std_logic_1164.all;

entity CPU is

	port 
	(
		clk : in std_logic;
		reset : in std_logic;
		ir_in : in std_logic_vector(31 downto 0); -- dobijeno od instr_cache
		adr_out : out std_logic_vector(31 downto 0);
		first_pc_instrcache_if : in std_logic_vector(31 downto 0);
		
		rdReg1_id_reg : out std_logic;
		rdReg2_id_reg : out std_logic;

		reg1_no_id_reg   : out std_logic_vector(4 downto 0);
		reg1_data_reg_id : in  std_logic_vector(31 downto 0);
		reg2_no_id_reg   : out std_logic_vector(4 downto 0);
		reg2_data_reg_id : in  std_logic_vector(31 downto 0);
		
		rd_mem_datacache		: out std_logic;
		wr_mem_datacache		: out std_logic;
		adr_mem_datacache		: out std_logic_vector(31 downto 0);
		data_mem_datacache	: out std_logic_vector(31 downto 0);
		data_datacache_mem	: in  std_logic_vector(31 downto 0);
	
		wr_wb_reg	: out std_logic;
		Reg_wb_reg	: out std_logic_vector(4 downto 0);
		data_wb_reg	: out std_logic_vector(31 downto 0);
		
		halt_out    : out std_logic
	);

end CPU;

architecture rtl of CPU is	

		signal ir_if_id : std_logic_vector(31 downto 0); -- saljemo ID
		signal pc_if_id : std_logic_vector(31 downto 0);
		
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
		
		signal pc_id_ex : std_logic_vector(31 downto 0);
		 
		--registri
		signal reg1_data_id_ex: std_logic_vector(31 downto 0);
		signal reg2_data_id_ex: std_logic_vector(31 downto 0);
		signal Rd_id_ex: std_logic_vector(4 downto 0);
		signal imm_id_ex: std_logic_vector(31 downto 0);
		
		signal ALU_ex_mem : std_logic_vector(31 downto 0);
		signal B_ex_mem	  : std_logic_vector(31 downto 0);
		signal Reg_ex_mem : std_logic_vector(4 downto 0);
		
		signal load_ex_mem  : std_logic;
		signal store_ex_mem : std_logic;
		signal new_pc_id_if	: std_logic_vector(31 downto 0);
		
		signal ALU_mem_wb		: std_logic_vector(31 downto 0);
		signal Reg_mem_wb		: std_logic_vector(4 downto 0);

		signal predicted_pc_if_id   : std_logic_vector(31 downto 0);
		signal jump_predicted_if_id : std_logic;
		signal predicted_pc_id_ex   : std_logic_vector(31 downto 0);
		

		signal idle_id_id : std_logic;
		
		-- hazardi
		signal reg_no_ex_ex_fwd    : std_logic_vector(4 downto 0);
		signal reg_data_ex_ex_fwd  : std_logic_vector(31 downto 0);
		
		signal reg_no_mem_ex_fwd   : std_logic_vector(4 downto 0);
		signal reg_data_mem_ex_fwd : std_logic_vector(31 downto 0);
		
		signal reg1_no_id_ex_fwd   : std_logic_vector(4 downto 0);
		signal reg2_no_id_ex_fwd   : std_logic_vector(4 downto 0);
		
		signal stall_ex : std_logic;
		signal stall_id : std_logic;
		signal was_load : std_logic;
		
		-- predikcijski cache IF-ID
		signal predictor_if_id 	  : std_logic_vector(1 downto 0);
		signal predictor_id_if    : std_logic_vector(1 downto 0);
		signal jump_from_pc_id_if : std_logic_vector(31 downto 0);
		signal jump_to_pc_id_if   : std_logic_vector(31 downto 0);
		signal write_cache_id_if  : std_logic;
		
		-- komunikacija IF/EX i MEM zbog RTS
		signal new_pc_mem_if   : std_logic_vector(31 downto 0);
		signal rts_ex_mem 	  : std_logic;
		
		-- halt
		signal halt_ex_mem : std_logic;
		signal halt_mem_wb : std_logic;
		
begin
	IF_BLOCK: entity work.IF_BLOCK
	port map (
		clk => clk,
		ir_in => ir_in,
		ir_out => ir_if_id,
		adr_out => adr_out,
		new_pc_in => new_pc_id_if,
		pc_out => pc_if_id,

		predicted_pc_out 	 => predicted_pc_if_id,
		jump_predicted_out => jump_predicted_if_id,
		
		stall_ex_in => stall_ex,
		stall_id_in => stall_id,
		
		predictor_out   => predictor_if_id,   
		jump_from_pc_in => jump_from_pc_id_if,
		jump_to_pc_in	 => jump_to_pc_id_if,
		predictor_in	 => predictor_id_if,
		write_cache_in	 => write_cache_id_if,
		
		first_pc_in => first_pc_instrcache_if,
		
		new_pc_mem_in => new_pc_mem_if
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
		
		rdReg1_out => rdReg1_id_reg,
		rdReg2_out => rdReg2_id_reg,
		
		reg1_no_out   => reg1_no_id_reg,
		reg1_data_in  => reg1_data_reg_id,
		reg2_no_out   => reg2_no_id_reg,
		reg2_data_in  => reg2_data_reg_id,
		
		--registri
		Rd_out => Rd_id_ex,
		imm_out => imm_id_ex,
		reg1_data_out => reg1_data_id_ex, 
		reg2_data_out => reg2_data_id_ex,
		
		pc_in  => pc_if_id,
		pc_out => pc_id_ex,
		
		predicted_pc_in	 => predicted_pc_if_id,
		jump_predicted_in	 => jump_predicted_if_id,
		
		new_pc_out => new_pc_id_if,
		
		reg1_no_fwd_out => reg1_no_id_ex_fwd,
		reg2_no_fwd_out => reg2_no_id_ex_fwd,
		
		stall_ex_in  => stall_ex,
		stall_id_in  => stall_id,
		stall_id_out => stall_id,
		
		predictor_in 	  => predictor_if_id, 	  
		predictor_out    => predictor_id_if,    
		jump_from_pc_out => jump_from_pc_id_if, 
		jump_to_pc_out   => jump_to_pc_id_if,  
		write_cache_out  => write_cache_id_if,

		-- ruzni nazivi s desne strane jer su se koristili za stall u ex-u
		reg_no_ex_fwd_in    => reg_no_ex_ex_fwd,
      reg_data_ex_fwd_in  => reg_data_ex_ex_fwd,
      reg_no_mem_fwd_in   => reg_no_mem_ex_fwd,
		reg_data_mem_fwd_in => reg_data_mem_ex_fwd
	);
	
	

	EX_BLOCK: entity work.EX_BLOCK
	port map (
		clk => clk, 
		
		LOAD_in => LOAD_id_ex,
		STORE_in => STORE_id_ex,
		MOV_in => MOV_id_ex,
		MOVI_in => MOVI_id_ex,
		ADD_in => ADD_id_ex,
		SUB_in => SUB_id_ex,
		ADDI_in => ADDI_id_ex,
		SUBI_in => SUBI_id_ex,
		AND_in => AND_id_ex,
		OR_in => OR_id_ex,
		XOR_in => XOR_id_ex,
		NOT_in => NOT_id_ex,
		SHR_in => SHR_id_ex,
		SHL_in => SHL_id_ex,
		SAR_in => SAR_id_ex,
		ROL_in => ROL_id_ex,
		ROR_in => ROR_id_ex,
		JMP_in => JMP_id_ex,
		JSR_in => JSR_id_ex,
		RTS_in => RTS_id_ex,
		PUSH_in => PUSH_id_ex,
		POP_in => POP_id_ex,
		BEQ_in => BEQ_id_ex,
		BNQ_in => BNQ_id_ex,
		BGT_in => BGT_id_ex,
		BLT_in => BLT_id_ex,
		BGE_in => BGE_id_ex,
		BLE_in => BLE_id_ex,
		HALT_in => HALT_id_ex,
		
		Rd_in => Rd_id_ex,
		imm_in => imm_id_ex,
		reg1_data_in => reg1_data_id_ex,
		reg2_data_in => reg2_data_id_ex,
	
		ALU_out => ALU_ex_mem,
		B_out   => B_ex_mem,
		Reg_out => Reg_ex_mem,
		
		load_out => load_ex_mem,
		store_out => store_ex_mem,
		
		pc_in => pc_id_ex,
		
		reg_no_ex_fwd_in  => reg_no_ex_ex_fwd,
		reg_no_ex_fwd_out => reg_no_ex_ex_fwd,
		reg_data_ex_fwd_in  => reg_data_ex_ex_fwd,
		reg_data_ex_fwd_out => reg_data_ex_ex_fwd,
		
		reg_no_mem_fwd_in   => reg_no_mem_ex_fwd,
		reg_data_mem_fwd_in => reg_data_mem_ex_fwd,
		
		reg1_no_fwd_in => reg1_no_id_ex_fwd,
		reg2_no_fwd_in => reg2_no_id_ex_fwd,
		
		stall_in  => stall_ex,
		stall_out => stall_ex,
		
		was_load_in  => was_load,
		was_load_out => was_load,
		
		rts_out => rts_ex_mem,

		halt_out => halt_ex_mem
	);
	
	MEM_BLOCK: entity work.MEM_BLOCK
	port map(
		clk 		=> clk,
		ALU_in	=> ALU_ex_mem,
		B_in    	=> B_ex_mem,
		load_in	=> load_ex_mem,
		store_in	=> store_ex_mem,
		Reg_in	=> reg_ex_mem,
		ALU_out  => ALU_mem_wb,
		Reg_out  => Reg_mem_wb,
		rd_out	=> rd_mem_datacache,
		wr_out	=> wr_mem_datacache,
		adr_out	=> adr_mem_datacache,
		data_out => data_mem_datacache,
		data_in  => data_datacache_mem,
		
		reg_no_fwd_out   => reg_no_mem_ex_fwd,
		reg_data_fwd_out => reg_data_mem_ex_fwd,
		
		new_pc_out => new_pc_mem_if,
		rts_in => rts_ex_mem,
		
		halt_in  => halt_ex_mem,
		halt_out => halt_mem_wb
	);
	
	WB_BLOCK: entity work.WB_BLOCK
	port map(
		clk => clk,
		ALU_in => ALU_mem_wb,
		Reg_in => Reg_mem_wb,
		wr_out   => wr_wb_reg,	
		reg_out  => Reg_wb_reg,	
		data_out => data_wb_reg,
	
		halt_in => halt_mem_wb,
		halt_out => halt_out
	);
end architecture;

