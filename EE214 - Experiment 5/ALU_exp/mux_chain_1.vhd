library ieee;
use ieee.std_logic_1164.all;


entity mux_chain_1 is
	port (inp: in std_logic_vector(7 downto 0);
		sel: in std_logic;
		outp: out std_logic_vector(7 downto 0));
end entity;

architecture chain of mux_chain_1 is

component mux is
	port(n1,n0,s: in std_logic;
		b: out std_logic);
end component;
begin
	mux_7: mux port map('0',inp(7),sel, outp(7));
	mux_6: mux port map('0',inp(6),sel, outp(6));
	mux_5: mux port map('0',inp(5),sel, outp(5));
	mux_4: mux port map('0',inp(4),sel, outp(4));
	mux_3: mux port map(inp(7),inp(3),sel, outp(3));
	mux_2: mux port map(inp(6),inp(2),sel, outp(2));
	mux_1: mux port map(inp(5),inp(1),sel, outp(1));
	mux_0: mux port map(inp(4),inp(0),sel, outp(0));
end chain;