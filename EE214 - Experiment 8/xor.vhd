library ieee;
use ieee.std_logic_1164.all;

entity myXOR is
	port(x,y: in std_ulogic;
		s: out std_ulogic);
end entity;

architecture Form of myXOR is
begin
	s <= ((x and (not y)) or (y and (not x)));
end Form;