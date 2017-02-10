library ieee;
use ieee.std_logic_1164.all;

entity left_shifter is
	port (x,y: in std_logic_vector(7 downto 0);
		s: out std_logic_vector(7 downto 0));
end entity;

architecture rtl of left_shifter is
	signal x_r, y_r: std_logic_vector(7 downto 0);
	
	component reverse is
		port (x: in std_logic_vector(7 downto 0);
			y: out std_logic_vector(7 downto 0));
	end component;

	component right_shifter is
		port (x,y: in std_logic_vector(7 downto 0);
			s: out std_logic_vector(7 downto 0));
	end component;
begin
	reverse_input: reverse
		port map(x, x_r);
	right_shift: right_shifter
		port map(x_r,y,y_r);

	reverse_output: reverse
		port map(y_r,s);
end rtl;