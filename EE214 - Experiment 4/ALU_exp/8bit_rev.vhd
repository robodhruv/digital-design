library ieee;
use ieee.std_logic_1164.all;

entity reverse is
	port (x: in std_logic_vector(7 downto 0);
		y: out std_logic_vector(7 downto 0));
end entity;

architecture reverse of reverse is
begin 
	y(0) <= x(7);
	y(1) <= x(6);
	y(2) <= x(5);
	y(3) <= x(4);
	y(4) <= x(3);
	y(5) <= x(2);
	y(6) <= x(1);
	y(7) <= x(0);

end reverse;