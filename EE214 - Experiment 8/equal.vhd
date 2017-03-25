library std;
use std.standard.all;
library work;
use work.EE224_Components.all;
library ieee;
use ieee.std_logic_1164.all;

entity equate is
	port (x, y: in std_ulogic_vector(15 downto 0);
		s: out std_ulogic);
end entity;

architecture equality of equate is
	signal d: std_ulogic_vector(15 downto 0);
	signal b: std_ulogic;
	component sub16 is
		port (x, y: in std_ulogic_vector(15 downto 0);
			sign_bit: out std_ulogic;
			z: out std_ulogic_vector(15 downto 0));
	end component;
begin

	fullsub: sub16 port map (x, y, b, d);

	s <= not (d(0) or d(1) or d(2) or d(3) or d(4) or d(5) or 
		d(6) or d(7) or d(8) or d(9) or d(10) or d(11) or 
		d(12) or d(13) or d(14) or d(15));
end equality;