library ieee;
use ieee.std_logic_1164.all;

entity FourBitAdder is
	port(x,y: in std_logic_vector(3 downto 0);
		z: out std_logic_vector(4 downto 0));
end entity;

architecture add_all of FourBitAdder is
	signal c : std_logic_vector(4 downto 0);
	component full_adder is
		port(ci,xi,yi: in std_logic;
			co,so: out std_logic);
	end component;
begin
	c(0) <= '0';

	bit_1: full_adder
		port map (c(0),x(0),y(0),c(1),z(0));
	bit_2: full_adder
		port map (c(1),x(1),y(1),c(2),z(1));
	bit_3: full_adder
		port map (c(2),x(2),y(2),c(3),z(2));
	bit_4: full_adder
		port map (c(3),x(3),y(3),c(4),z(3));

	z(4) <= c(4); -- bit_5 to account for overflow

end add_all;