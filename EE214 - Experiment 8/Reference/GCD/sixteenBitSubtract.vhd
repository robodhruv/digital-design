library work;
use work.thepackage.all;
library ieee;
use ieee.std_logic_1164.all;


entity sixteenBitSubtract is
	port (a,b : in std_logic_vector(15 downto 0);
		y : out std_logic_vector(15 downto 0));
end entity;
architecture basic of sixteenBitSubtract is 
	signal c : std_logic_vector(15 downto 0);
	signal nb : std_logic_vector(15 downto 0);
begin
	nb <= not b;
	
 	add0 : bitAdder port map ( x=> a(0), y=> nb(0), cin=> '1', s=> y(0), cout=>c(0)); 
	add1 : bitAdder port map ( x=> a(1), y=> nb(1), cin=> c(0), s=> y(1), cout=>c(1));
	add2 : bitAdder port map ( x=> a(2), y=> nb(2), cin=> c(1), s=> y(2), cout=>c(2));
	add3 : bitAdder port map ( x=> a(3), y=> nb(3), cin=> c(2), s=> y(3), cout=>c(3));
	add4 : bitAdder port map ( x=> a(4), y=> nb(4), cin=> c(3), s=> y(4), cout=>c(4));
	add5 : bitAdder port map ( x=> a(5), y=> nb(5), cin=> c(4), s=> y(5), cout=>c(5));
	add6 : bitAdder port map ( x=> a(6), y=> nb(6), cin=> c(5), s=> y(6), cout=>c(6));
	add7 : bitAdder port map ( x=> a(7), y=> nb(7), cin=> c(6), s=> y(7), cout=>c(7));
	add8 : bitAdder port map ( x=> a(8), y=> nb(8), cin=> c(7), s=> y(8), cout=>c(8));
	add9 : bitAdder port map ( x=> a(9), y=> nb(9), cin=> c(8), s=> y(9), cout=>c(9));
	add10: bitAdder port map ( x=> a(10), y=> nb(10), cin=> c(9), s=> y(10), cout=>c(10));
	add11: bitAdder port map ( x=> a(11), y=> nb(11), cin=> c(10), s=> y(11), cout=>c(11));
	add12: bitAdder port map ( x=> a(12), y=> nb(12), cin=> c(11), s=> y(12), cout=>c(12));
	add13: bitAdder port map ( x=> a(13), y=> nb(13), cin=> c(12), s=> y(13), cout=>c(13));
	add14: bitAdder port map ( x=> a(14), y=> nb(14), cin=> c(13), s=> y(14), cout=>c(14));
	add15: bitAdder port map ( x=> a(15), y=> nb(15), cin=> c(14), s=> y(15), cout=>c(15));
end basic;
