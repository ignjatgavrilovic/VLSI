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
signal rdReg1_ex_reg : std_logic;
signal rdReg2_ex_reg : std_logic;

signal reg1_no_ex_reg   : std_logic_vector(4 downto 0);
signal reg1_data_reg_ex : std_logic_vector(31 downto 0);
signal reg2_no_ex_reg   : std_logic_vector(4 downto 0);
signal reg2_data_reg_ex : std_logic_vector(31 downto 0);

COMPONENT CPU
	PORT (
		adr_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		clk : IN STD_LOGIC;
		ir_in : in std_logic_vector(31 downto 0);
		reset : IN STD_LOGIC;
		
		rdReg1_ex_reg : out std_logic;
		rdReg2_ex_reg : out std_logic;

		reg1_no_ex_reg   : out std_logic_vector(4 downto 0);
		reg1_data_reg_ex : in  std_logic_vector(31 downto 0);
		reg2_no_ex_reg   : out std_logic_vector(4 downto 0);
		reg2_data_reg_ex : in  std_logic_vector(31 downto 0) 
	);
END COMPONENT;

component INSTR_CACHE
	port (
		reset : in std_logic;
		adr_in : in std_logic_vector(31 downto 0);
		ir_out : out std_logic_vector(31 downto 0)
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
		reg2_data_out : out std_logic_vector(31 downto 0) 
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
		
		rdReg1_ex_reg => rdReg1_ex_reg,
		rdReg2_ex_reg => rdReg2_ex_reg,

		reg1_no_ex_reg   => reg1_no_ex_reg,
		reg1_data_reg_ex => reg1_data_reg_ex,
		reg2_no_ex_reg   => reg2_no_ex_reg,
		reg2_data_reg_ex => reg2_data_reg_ex
	);
	
	i_instr_cache : INSTR_CACHE
	PORT MAP (
		reset => reset,
		ir_out => ir_instrcache_if,
		adr_in => adr_if_instrcache
	);

	i_reg_file : REG_FILE
	port map (
		reset => reset,
		
		rdReg1_in => rdReg1_ex_reg,
		rdReg2_in => rdReg2_ex_reg,
		
		reg1_no_in 	  => reg1_no_ex_reg,
		reg1_data_out => reg1_data_reg_ex,
		reg2_no_in 	  => reg2_no_ex_reg,
		reg2_data_out => reg2_data_reg_ex
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
