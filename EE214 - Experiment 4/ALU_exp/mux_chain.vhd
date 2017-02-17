library ieee;
use ieee.std_logic_1164.all;


entity mux_chain is
	port (inp0: in std_logic_vector(15 downto 0);
		sel0: in std_logic;
		outp0: out std_logic_vector(7 downto 0));
end entity;

architecture chain of mux_chain is
	component mux is
		port(n1,n0,s: in std_logic;
			b: out std_logic);
	end component;
begin
	mux_7: mux port map(inp0(15), inp0(14),sel0, outp0(7));
	mux_6: mux port map(inp0(13),inp0(12),sel0, outp0(6));
	mux_5: mux port map(inp0(11),inp0(10),sel0, outp0(5));
	mux_4: mux port map(inp0(9),inp0(8),sel0, outp0(4));
	mux_3: mux port map(inp0(7),inp0(6),sel0, outp0(3));
	mux_2: mux port map(inp0(5),inp0(4),sel0, outp0(2));
	mux_1: mux port map(inp0(3),inp0(2),sel0, outp0(1));
	mux_0: mux port map(inp0(1),inp0(0),sel0, outp0(0));
end chain;