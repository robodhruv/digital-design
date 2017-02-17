library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
	port(ci,xi,yi: in std_logic;
		co,so: out std_logic);
end entity;

architecture Form of full_adder is
	signal xor_i: std_logic;
	component myXOR is
		port(x,y: in std_logic;
			s: out std_logic);
	end component;
begin
	add_instance_s0_1: myXOR
		port map (xi,yi,xor_i);
		
	add_instance_s0_2: myXOR
		port map (xor_i,ci,so);

	co <= ((xi and yi) or (yi and ci) or (ci and xi));
end Form;