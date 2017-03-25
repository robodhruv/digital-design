library std;
use std.standard.all;
library work;
use work.EE224_Components.all;
library ieee;
use ieee.std_logic_1164.all;

entity compare is
	port (x, y: in std_ulogic_vector(15 downto 0);
		s: out std_ulogic);
end entity;

architecture compare16 of compare is
	signal diff: std_ulogic_vector(15 downto 0);
	component sub16 is
		port (x, y: in std_ulogic_vector(15 downto 0);
			sign_bit: out std_ulogic;
			z: out std_ulogic_vector(15 downto 0));
	end component;
begin
	fullsub: sub16 port map (x, y, s, diff);
end compare16;