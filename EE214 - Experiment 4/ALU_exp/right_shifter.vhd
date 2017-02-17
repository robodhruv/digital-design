library ieee;
use ieee.std_logic_1164.all;

entity right_shifter is
	port (x,y: in std_logic_vector(7 downto 0);
		s: out std_logic_vector(7 downto 0));
end entity;
architecture logical_right of right_shifter is
	signal zero_check: std_logic;
	signal level1, level2, level3: std_logic_vector(7 downto 0);
	component mux_chain_1 is
		port (inp: in std_logic_vector(7 downto 0);
			sel: in std_logic;
			outp: out std_logic_vector(7 downto 0));
	end component;
	component mux_chain_2 is
		port (inp2: in std_logic_vector(7 downto 0);
			sel2: in std_logic;
			outp2: out std_logic_vector(7 downto 0));
	end component;
	component mux_chain_3 is
		port (inp3: in std_logic_vector(7 downto 0);
			sel3: in std_logic;
			outp3: out std_logic_vector(7 downto 0));
	end component;
	component mux8 is
		port(mx, my: in std_logic_vector(7 downto 0);
				mo: out std_logic_vector(7 downto 0);
				sel: in std_logic);
	end component;
begin
	lev1: mux_chain_1
		port map(x,y(2),level1);
	lev2: mux_chain_2
		port map(level1, y(1), level2);
	lev3: mux_chain_3
		port map(level2, y(0), level3);
	zero_check <= (not ((y(3)) or (y(4)) or (y(5)) or (y(6)) or (y(7))));
	final: mux8
		port map(level3, "00000000", s, zero_check);
end logical_right;