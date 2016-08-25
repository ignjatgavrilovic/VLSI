library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity REG_FILE is

	port(
		reset : in std_logic;
	
		-- za komunikaciju sa ID_BLOCK-om
		rdReg1_in : in std_logic;
		rdReg2_in : in std_logic;
		
		reg1_no_in 	  : in  std_logic_vector(4 downto 0);
		reg1_data_out : out std_logic_vector(31 downto 0);
		reg2_no_in 	  : in  std_logic_vector(4 downto 0);
		reg2_data_out : out std_logic_vector(31 downto 0);
		
		-- za komunikaciju sa WB_BLOCK-om
		wr_in		: in std_logic;
		reg_in	: in std_logic_vector(4 downto 0);
		data_in	: in std_logic_vector(31 downto 0)
	);
	
end REG_FILE;

architecture rtl of REG_FILE is
	type reg_type is array(31 downto 0) of std_logic_vector(31 downto 0);
	shared variable regs : reg_type;
	signal change : std_logic := '0';
begin
	
	process (reset) is
	begin
		if (reset = '1') then
			--L1: for i in 0 to 31 loop
			--	regs(i) <= (others => '0');
			--end loop L1;
			regs := (others => (others => '0'));
		end if;
	end process;
	
	process (rdReg1_in, reg1_no_in, change) is
	begin
		if (rdReg1_in = '1') then
			reg1_data_out <= regs(to_integer(unsigned(reg1_no_in)));
		end if;
	end process;
	
	process (rdReg2_in, reg2_no_in, change) is
	begin
		if (rdReg2_in = '1') then
			reg2_data_out <= regs(to_integer(unsigned(reg2_no_in)));
		end if;
	end process;
	
	-- upis iz WB_BLOCK-a
	process (wr_in, data_in, reg_in) is
	begin
		if (wr_in = '1') then
			regs(to_integer(unsigned(reg_in))) := data_in;
			change <= not change;
		end if;
	end process;

	
end architecture;