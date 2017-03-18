library ieee;
use ieee.std_logic_1164.all;

entity four_bit_linear is
	port(a, b, c, d: in std_logic;
		s: out std_logic_vector(3 downto 0));
end entity;

architecture add4 of four_bit_linear is
	signal x1, x0, y1, y0, c0: std_logic;
	component full_adder is
		port(ci,xi,yi: in std_logic;
			co,so: out std_logic);
	end component;
begin
	fa1: full_adder port map ('0', a, b, x1, x0);
	fa2: full_adder port map ('0', c, d, y1, y0);

	-- Combinational Logic for sum of two 2-bit numbers
	fa3: full_adder port map ('0', x0, y0, c0, s(0));
	fa4: full_adder port map (c0, x1, y1, s(2), s(1));

	s(3) <= '0';
end add4;