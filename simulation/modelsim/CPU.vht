LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CPU_vhd_tst IS
END CPU_vhd_tst;
ARCHITECTURE CPU_arch OF CPU_vhd_tst IS
-- constants                                                 
-- signals                                                   
signal adr_if_instrcache : std_logic_vector(31 downto 0);
SIGNAL clk : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
signal ir_instrcache_if : std_logic_vector(31 downto 0);
--signal ir_if_id : std_logic_vector(31 downto 0);

-- vezano za REG_FILE
signal rdReg1_id_reg : std_logic;
signal rdReg2_id_reg : std_logic;

signal reg1_no_id_reg   : std_logic_vector(4 downto 0);
signal reg1_data_reg_id : std_logic_vector(31 downto 0);
signal reg2_no_id_reg   : std_logic_vector(4 downto 0);
signal reg2_data_reg_id : std_logic_vector(31 downto 0);

signal rd_mem_datacache		: std_logic;
signal wr_mem_datacache		: std_logic;
signal adr_mem_datacache	: std_logic_vector(31 downto 0);
signal data_mem_datacache	: std_logic_vector(31 downto 0);
signal data_datacache_mem	: std_logic_vector(31 downto 0);

signal wr_wb_reg	 : std_logic;
signal Reg_wb_reg	 : std_logic_vector(4 downto 0);
signal data_wb_reg : std_logic_vector(31 downto 0);

signal first_pc	 : std_logic_vector(31 downto 0);

signal halt_wb_datacahce : std_logic;

COMPONENT CPU
	PORT (
		adr_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		clk : IN STD_LOGIC;
		ir_in : in std_logic_vector(31 downto 0);
		reset : IN STD_LOGIC;
		first_pc_instrcache_if : in  std_logic_vector(31 downto 0);
		
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
		halt_out		: out std_logic
	);
END COMPONENT;

component INSTR_CACHE
	port (
		reset : in std_logic;
		adr_in : in std_logic_vector(31 downto 0);
		ir_out : out std_logic_vector(31 downto 0);
		first_pc_out : out std_logic_vector(31 downto 0)
	);
end component;

component REG_FILE
	port(
		reset : in std_logic;
	
		rdReg1_in : in std_logic;
		rdReg2_in : in std_logic;
		
		reg1_no_in 	  : in  std_logic_vector(4 downto 0);
		reg1_data_out : out std_logic_vector(31 downto 0);
		reg2_no_in 	  : in  std_logic_vector(4 downto 0);
		reg2_data_out : out std_logic_vector(31 downto 0);
	
		wr_in		: in std_logic;
		reg_in	: in std_logic_vector(4 downto 0);
		data_in	: in std_logic_vector(31 downto 0)
	);
end component;

component DATA_CACHE
	port (
		reset 	: in std_logic; 
		clk		: in std_logic;
		
		rd_in		: in std_logic;
		wr_in		: in std_logic;
		
		adr_in	: in  std_logic_vector(31 downto 0);
		data_in  : in  std_logic_vector(31 downto 0);
		data_out : out std_logic_vector(31 downto 0);
		
		halt_in  : in std_logic
	);
end component;

BEGIN
	-- signal iz komponente => TSB
	i_cpu : CPU
	PORT MAP (
		adr_out => adr_if_instrcache,
		clk => clk,
		reset => reset,
		ir_in => ir_instrcache_if,
		first_pc_instrcache_if => first_pc,
		
		rdReg1_id_reg => rdReg1_id_reg,
		rdReg2_id_reg => rdReg2_id_reg,

		reg1_no_id_reg   => reg1_no_id_reg,
		reg1_data_reg_id => reg1_data_reg_id,
		reg2_no_id_reg   => reg2_no_id_reg,
		reg2_data_reg_id => reg2_data_reg_id,
		
		rd_mem_datacache	 => rd_mem_datacache,
		wr_mem_datacache	 => wr_mem_datacache,
		adr_mem_datacache	 => adr_mem_datacache,
		data_mem_datacache => data_mem_datacache,
		data_datacache_mem => data_datacache_mem,
		
		wr_wb_reg	=> wr_wb_reg,
		Reg_wb_reg	=> Reg_wb_reg,
		data_wb_reg	=> data_wb_reg,
		halt_out => halt_wb_datacahce
	);
	
	i_instr_cache : INSTR_CACHE
	PORT MAP (
		reset => reset,
		ir_out => ir_instrcache_if,
		adr_in => adr_if_instrcache,
		first_pc_out => first_pc
	);

	i_reg_file : REG_FILE
	port map (
		reset => reset,
		
		rdReg1_in => rdReg1_id_reg,
		rdReg2_in => rdReg2_id_reg,
		
		reg1_no_in 	  => reg1_no_id_reg,
		reg1_data_out => reg1_data_reg_id,
		reg2_no_in 	  => reg2_no_id_reg,
		reg2_data_out => reg2_data_reg_id,
		
		wr_in		=> wr_wb_reg,
		reg_in	=> reg_wb_reg,
		data_in	=> data_wb_reg
	);
	
	i_data_cache : DATA_CACHE
	port map (
		reset 	=> reset,
		clk 		=> clk,
		rd_in		=> rd_mem_datacache,
		wr_in		=> wr_mem_datacache,
		adr_in	=> adr_mem_datacache,
		data_in  => data_mem_datacache,
		data_out => data_datacache_mem,
		
		halt_in => halt_wb_datacahce
	);
	
	clock: process is
		variable clk_next:std_logic:='1';
   begin
		loop
        clk <= clk_next;
		  clk_next:= not clk_next;
        wait for 3 ns; 
		end loop;  
   end process clock;
	
	rst: process is
	begin
		reset <= '1';
		wait for 6 ns;
		reset <= 'Z';
		wait;
	end process rst;
	
END CPU_arch;
