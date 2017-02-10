library ieee;
use ieee.std_logic_1164.all;


entity mux_chain_3 is
	port (inp3: in std_logic_vector(7 downto 0);
		sel3: in std_logic;
		outp3: out std_logic_vector(7 downto 0));
end entity;

architecture chain of mux_chain_3 is
component mux is
	port(n1,n0,s: in std_logic;
		b: out std_logic);
end component;
begin
	mux_7: mux port map('0',inp3(7),sel3, outp3(7));
	mux_6: mux port map(inp3(7),inp3(6),sel3, outp3(6));
	mux_5: mux port map(inp3(6),inp3(5),sel3, outp3(5));
	mux_4: mux port map(inp3(5),inp3(4),sel3, outp3(4));
	mux_3: mux port map(inp3(4),inp3(3),sel3, outp3(3));
	mux_2: mux port map(inp3(3),inp3(2),sel3, outp3(2));
	mux_1: mux port map(inp3(2),inp3(1),sel3, outp3(1));
	mux_0: mux port map(inp3(1),inp3(0),sel3, outp3(0));
end chain;