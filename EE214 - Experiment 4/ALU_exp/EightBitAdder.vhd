library ieee;
use ieee.std_logic_1164.all;

entity EightBitAdder is
	--constant size : integer := 8;
	port(x,y: in std_logic_vector(7 downto 0);
		z: out std_logic_vector(7 downto 0));
end entity;

architecture Summer of EightBitAdder is
	signal c : std_logic_vector(7 downto 0);
	signal etc: std_logic;
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
	bit_5: full_adder
		port map (c(4),x(4),y(4),c(5),z(4));
	bit_6: full_adder
		port map (c(5),x(5),y(5),c(6),z(5));
	bit_7: full_adder
		port map (c(6),x(6),y(6),c(7),z(6));
	bit_8: full_adder
		port map (c(7),x(7),y(7),etc,z(7));
end Summer;