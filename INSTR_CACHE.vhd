library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_textio.all;
use std.textio.all; 

entity INSTR_CACHE is
	
	port (
		reset : in std_logic;
		adr_in : in std_logic_vector(31 downto 0);
		ir_out : out std_logic_vector(31 downto 0);
		first_pc_out : out std_logic_vector(31 downto 0)
	);
	
end INSTR_CACHE;

architecture RTL of INSTR_CACHE is
	type cache_type is array(4095 downto 0) of std_logic_vector(31 downto 0);
	signal cache : cache_type;
begin
	-- napuni cache podacima iz fajla
	process (reset) is
		file read_file : text; 
		variable read_line : line; 
		variable adr : std_logic_vector (31 downto 0);
		variable data : std_logic_vector (31 downto 0);
		variable stop: std_logic:='0';
	begin
		if (reset = '1' AND  stop ='0') then
			file_open(read_file, "testovi/test_ins_01.txt", read_mode);
			
			readline(read_file, read_line);
			hread(read_line, adr);
			first_pc_out <= adr;
			
			while not (endfile(read_file)) loop
				readline (read_file, read_line);
				hread(read_line, adr);
				read(read_line, data);

				cache(to_integer(unsigned(adr))) <= data;
			end loop;-- for_loop;
			file_close(read_file);
			stop:='1';
		end if;
		if (reset = 'Z') then
			first_pc_out <= (others => 'Z');
		end if;
	end process;
	
	process (adr_in) is begin 
		ir_out <= cache(to_integer(unsigned(adr_in)));
	end process;
	
end architecture;

