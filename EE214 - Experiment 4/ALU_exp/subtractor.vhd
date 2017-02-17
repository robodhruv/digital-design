library ieee;
use ieee.std_logic_1164.all;

entity subtractor is
	port(di,xi,yi: in std_logic;
		do,so: out std_logic);
end entity;

architecture Form of subtractor is
	signal xor_i: std_logic;
	signal hold: std_logic;
	component myXOR is
		port(x,y: in std_logic;
			s: out std_logic);
	end component;
begin
	out_instance_1: myXOR
		port map(xi, yi, xor_i);
	out_instance_2: myXOR
		port map(xor_i, di, so);

	do <= (((not xi) and (yi)) or (di and (not xor_i)));

end Form;