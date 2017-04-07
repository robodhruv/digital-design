library ieee;
use ieee.std_logic_1164.all;


entity bitAdder is
	port(x, y, cin: in std_logic;
		cout, s: out std_logic);
end entity;
architecture simple of bitAdder is
begin
	s<= ((not x) and (not y) and cin) or
		((not x) and y and (not cin)) or
		(x and (not y) and (not cin)) or
		(x and y and cin);
	cout<= (x and y) or (cin and y) or (cin and x);
end simple;

