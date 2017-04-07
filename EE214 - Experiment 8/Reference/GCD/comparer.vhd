library work;
use work.thepackage.all;
library ieee;
use ieee.std_logic_1164.all;


entity comparer is
	port(a, b : in std_logic_vector(15 downto 0);
		c : out std_logic);
end entity comparer;

architecture behave of comparer is
--	variable g, e : std_logic;
	begin
--	g := '0';
--	e := '1';
--		process(a, b)
--			begin 
--				for I in 15 to 0 loop
--					g := g or ( e and a(I) and (not b(I)));
--					e := e and ((a(I) and b(I)) or ((not b(I)) and (not a(I))));
--				end loop;
--		end process;
--	c <= g or e;
	c <= '0' when (b > a) else '1';
end architecture behave;

