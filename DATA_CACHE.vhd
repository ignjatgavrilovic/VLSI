LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_textio.all;
use std.textio.all;

entity DATA_CACHE is
	
	port (
		reset 	: in std_logic; 
		clk		: in std_logic;
		
		rd_in		: in std_logic;
		wr_in		: in std_logic;
		
		adr_in	: in  std_logic_vector(31 downto 0); -- adresa na koju se upisuje/sa koje se cita
		data_in  : in  std_logic_vector(31 downto 0);
		data_out : out std_logic_vector(31 downto 0)
	);
	
end DATA_CACHE;

architecture rtl of DATA_CACHE is
	type cache_type is array(550 downto 0) of std_logic_vector(31 downto 0);
	shared variable cache : cache_type;
begin
	-- process koji ce da cita iz fajla
	process (reset, clk) is
		file read_file : text; 
		variable read_line : line; 
		variable adr : std_logic_vector (31 downto 0);
		variable data : std_logic_vector (31 downto 0);
		variable stop: std_logic:='0';
	begin
		--for i in cache'range loop
		--	cache(i) := cache_next(i);
		--end loop;
		if (reset = '1' AND  stop ='0') then
			file_open(read_file, "testovi/test_data_01.txt", read_mode);
			--readline (read_file, read_line); -- pocetna pc
		
			while not (endfile(read_file)) loop
				readline (read_file, read_line);
				hread(read_line, adr);
				read(read_line, data);

				cache(to_integer(unsigned(adr))) := data;
			end loop;-- for_loop;
			file_close(read_file);
			stop:='1';
		end if;
	end process;
	
--	process (cache) is
--	begin
--		for i in cache'range loop
--			cache_next(i) := cache(i);
--		end loop;
--	end process;
	
	process (rd_in, adr_in) is
	begin
		if (rd_in = '1') then
			data_out <= cache(to_integer(unsigned(adr_in)));
		end if;
	end process;
	
	process (wr_in, adr_in) is
	begin
		if (wr_in = '1') then
			cache(to_integer(unsigned(adr_in))) := data_in;
		end if;
	end process;
	
end architecture;