library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity REG_FILE is

	port(
		reset : in std_logic;
	
		rdReg1_in : in std_logic;
		rdReg2_in : in std_logic;
		
		reg1_no_in 	  : in  std_logic_vector(4 downto 0);
		reg1_data_out : out std_logic_vector(31 downto 0);
		reg2_no_in 	  : in  std_logic_vector(4 downto 0);
		reg2_data_out : out std_logic_vector(31 downto 0) 
	);
	
end REG_FILE;

architecture rtl of REG_FILE is
	type reg_type is array(31 downto 0) of std_logic_vector(31 downto 0);
	signal regs : reg_type;
begin
	
	process (reset) is
	begin
		if (reset = '1') then
			L1: for i in 0 to 31 loop
				regs(i) <= (others => '1');
			end loop L1;
		end if;
	end process;
	
	process (rdReg1_in) is
	begin
		if (rising_edge(rdReg1_in)) then
			reg1_data_out <= regs(to_integer(unsigned(reg1_no_in)));
		end if;
	end process;
	
	process (rdReg2_in) is
	begin
		if (rising_edge(rdReg2_in)) then
			reg1_data_out <= regs(to_integer(unsigned(reg1_no_in)));
		end if;
	end process;
	
--	process (wr_in) is
--	begin
--		if (rising_edge(wr_in)) then
--			regs(to_integer(unsigned(reg_no_in))) <= reg_data_in;
--		end if;
--	end process;
	
end architecture;