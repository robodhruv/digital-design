library ieee;
use ieee.std_logic_1164.all;

entity subtractor is
	port(di,xi,yi: in bit;
		do,so: out bit);
end entity;

architecture Form of subtractor is
	signal xor_i: bit;
	signal hold: bit;
	component myXOR is
		port(x,y: in bit;
			s: out bit);
	end component;
begin
	out_instance_1: myXOR
		port map(xi, yi, xor_i);
	out_instance_2: myXOR
		port map(xor_i, di, so);

	do <= (((not xi) and (yi)) or (di and (not xor_i)));

end Form;