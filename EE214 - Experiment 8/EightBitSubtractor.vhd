library ieee;
use ieee.std_logic_1164.all;

entity EightBitSub is
	port(x,y: in std_ulogic_vector(7 downto 0);
		di: in std_ulogic;
		do: out std_ulogic;
		z: out std_ulogic_vector(7 downto 0));
end entity;

architecture Diff of EightBitSub is
	signal d : std_ulogic_vector(7 downto 0);
	signal etc: std_ulogic;
	component subtractor is
		port(di,xi,yi: in std_ulogic;
			do,so: out std_ulogic);
	end component;

begin
	d(0) <= di;
	bit_1: subtractor
		port map (d(0),x(0),y(0),d(1),z(0));
	bit_2: subtractor
		port map (d(1),x(1),y(1),d(2),z(1));
	bit_3: subtractor
		port map (d(2),x(2),y(2),d(3),z(2));
	bit_4: subtractor
		port map (d(3),x(3),y(3),d(4),z(3));
	bit_5: subtractor
		port map (d(4),x(4),y(4),d(5),z(4));
	bit_6: subtractor
		port map (d(5),x(5),y(5),d(6),z(5));
	bit_7: subtractor
		port map (d(6),x(6),y(6),d(7),z(6));
	bit_8: subtractor
		port map (d(7),x(7),y(7),do,z(7));

end Diff;