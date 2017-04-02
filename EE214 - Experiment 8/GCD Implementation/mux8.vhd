library ieee;
use ieee.std_logic_1164.all;

entity mux8 is
	port(mx, my: in bit_vector(7 downto 0);
			mo: out bit_vector(7 downto 0);
			sel: in bit);
end entity;

architecture choose of mux8 is
component mux is
	port(n1,n0,s: in bit;
		b: out bit);
end component;
begin
	mux_7: mux port map(mx(7),my(7),sel, mo(7));
	mux_6: mux port map(mx(6),my(6),sel, mo(6));
	mux_5: mux port map(mx(5),my(5),sel, mo(5));
	mux_4: mux port map(mx(4),my(4),sel, mo(4));
	mux_3: mux port map(mx(3),my(3),sel, mo(3));
	mux_2: mux port map(mx(2),my(2),sel, mo(2));
	mux_1: mux port map(mx(1),my(1),sel, mo(1));
	mux_0: mux port map(mx(0),my(0),sel, mo(0));

end choose;
