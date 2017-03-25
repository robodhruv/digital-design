library std;
use std.standard.all;
library work;
use work.EE224_Components.all;
library ieee;
use ieee.std_logic_1164.all;


entity countdown is
	port (x: in std_ulogic_vector(15 downto 0);
		z: out std_ulogic_vector(15 downto 0));
end entity;

architecture reduce of countdown is
	signal etc: std_ulogic;
	component sub16 is
		port (x, y: in std_ulogic_vector(15 downto 0);
			sign_bit: out std_ulogic;
			z: out std_ulogic_vector(15 downto 0));
	end component;
begin
	main: sub16 port map (x, "0000000000000001", etc, z);
end reduce;
