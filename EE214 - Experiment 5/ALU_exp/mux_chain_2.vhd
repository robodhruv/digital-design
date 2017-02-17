library ieee;
use ieee.std_logic_1164.all;


entity mux_chain_2 is
	port (inp2: in std_logic_vector(7 downto 0);
		sel2: in std_logic;
		outp2: out std_logic_vector(7 downto 0));
end entity;

architecture chain of mux_chain_2 is
component mux is
	port(n1,n0,s: in std_logic;
		b: out std_logic);
end component;
begin
	mux_7: mux port map('0',inp2(7),sel2, outp2(7));
	mux_6: mux port map('0',inp2(6),sel2, outp2(6));
	mux_5: mux port map(inp2(7),inp2(5),sel2, outp2(5));
	mux_4: mux port map(inp2(6),inp2(4),sel2, outp2(4));
	mux_3: mux port map(inp2(5),inp2(3),sel2, outp2(3));
	mux_2: mux port map(inp2(4),inp2(2),sel2, outp2(2));
	mux_1: mux port map(inp2(3),inp2(1),sel2, outp2(1));
	mux_0: mux port map(inp2(2),inp2(0),sel2, outp2(0));
end chain;