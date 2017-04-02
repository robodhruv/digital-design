library ieee;
use ieee.std_logic_1164.all;

entity mux is
	port(n1,n0,s: in bit;
		b: out bit);
end entity;

architecture choose of mux is
begin
	b <= ((s and n1) or ((not s) and n0));
end choose;