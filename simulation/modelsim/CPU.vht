LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CPU_vhd_tst IS
END CPU_vhd_tst;
ARCHITECTURE CPU_arch OF CPU_vhd_tst IS
-- constants                                                 
-- signals                                                   
signal adr : std_logic_vector(31 downto 0);
SIGNAL clk : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
signal ir_cache_if : std_logic_vector(31 downto 0);
signal ir_if_id : std_logic_vector(31 downto 0);

COMPONENT CPU
	PORT (
		adr_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		clk : IN STD_LOGIC;
		ir_in : in std_logic_vector(31 downto 0);
		ir_out : out std_logic_vector(31 downto 0);
		reset : IN STD_LOGIC
	);
END COMPONENT;

component INSTR_CACHE
	port (
		reset : in std_logic;
		adr_in : in std_logic_vector(31 downto 0);
		ir_out : out std_logic_vector(31 downto 0)
	);
end component;

BEGIN
	-- signal sa signal iz komponente => TSB
	i1 : CPU
	PORT MAP (
		adr_out => adr,
		clk => clk,
		reset => reset,
		ir_in => ir_cache_if,
		ir_out => ir_if_id
	);
	
	i2 : INSTR_CACHE
	PORT MAP (
		reset => reset,
		ir_out => ir_cache_if,
		adr_in => adr
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
