library ieee;
use ieee.std_logic_1164.all;

entity subtractor is
	port(di,xi,yi: in std_ulogic;
		do,so: out std_ulogic);
end entity;

architecture Form of subtractor is
	signal xor_i: std_ulogic;
	signal hold: std_ulogic;
	component myXOR is
		port(x,y: in std_ulogic;
			s: out std_ulogic);
	end component;
begin
	out_instance_1: myXOR
		port map(xi, yi, xor_i);
	out_instance_2: myXOR
		port map(xor_i, di, so);

	do <= (((not xi) and (yi)) or (di and (not xor_i)));

end Form;