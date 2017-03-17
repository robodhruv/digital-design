library ieee;
use ieee.std_logic_1164.all;

entity mux is
	port(n1,n0,s: in std_ulogic;
		b: out std_ulogic);
end entity;

architecture choose of mux is
begin
	b <= ((s and n1) or ((not s) and n0));
end choose;