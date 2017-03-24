library std;
use std.standard.all;
library work;
use work.EE224_Components.all;
library ieee;
use ieee.std_logic_1164.all;


entity sub16 is
	port (x, y: in std_ulogic_vector(15 downto 0);
		z: out std_ulogic_vector(15 downto 0));
end entity;

architecture subractor of sub16 is
	signal dmid, etc: std_ulogic;
	component EightBitSub is
		port(x,y: in std_ulogic_vector(7 downto 0);
			di: in std_ulogic;
			do: out std_ulogic;
			z: out std_ulogic_vector(7 downto 0));
	end component;

begin

	sub1: EightBitSub port map (x(7 downto 0), y(7 downto 0), '0', dmid, z(7 downto 0));
	sub2: EightBitSub port map (x(15 downto 8), y(15 downto 8), dmid, etc, z(15 downto 8));

end subractor ;