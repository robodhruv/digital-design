library ieee;
use ieee.std_logic_1164.all;
library work;
use work.EE224_Components.all;

entity bomber is
	port(x: in std_ulogic_vector(4 downto 0);
		r, clk: in std_ulogic;
		s: out std_ulogic);
end entity;

architecture bomb_detector of bomber is
	signal q, nq, qb: std_ulogic_vector(1 downto 0);
	signal b, b1, b2, b3, n0, n1, n2, n3, n4, bb, q01, q02, q03,
	phis, bs, bos, boms, m, m1, m2, m3, mb, q11, q12, q13, o, ob: std_ulogic;
--State Description:
--phi		0 1
--b 		1 1
--bo 		1 0
--bom 		0 0

begin
	INV0: inverter port map (x(0), n0);
	N100: inverter port map (x(1), n1);
	INV2: inverter port map (x(2), n2);
	INV3: inverter port map (x(3), n3);
	INV4: inverter port map (x(4), n4);

	A5b: and5 port map (n4, n3, n2, x(1), n0, b); -- Identifying B

	A5m: and5 port map (n4, x(3), x(2), n1, x(0), m); -- Identifying M

	A5o: and5 port map (n4, x(3), x(2), x(1), x(0), o); -- Identifying O


	INV5: inverter port map (b, bb);
	INV6: inverter port map (m, mb);
	INV60: inverter port map (o, ob);

	-- Deciphering states
	N7: inverter port map (q(0), qb(0));
	N8: inverter port map (q(1), qb(1));

	A5: and2 port map (qb(1), q(0), phis);
	A6: and2 port map (q(1), q(0), bs);
	A7: and2 port map (q(1), qb(0), bos);
	A8: and2 port map (qb(1), qb(0), boms);

	-- Assigning state nq(0)
	A9: and2 port map (boms, b, q01);
	O1: or2 port map (phis, q01, q02);
	A10: and2 port map (bs, ob, q03);
	O2: or2 port map (q02, q03, nq(0));

	-- Assigning state nq(1)
	A11: and2 port map (phis, b, q11);
	A12: and2 port map (bos, mb, q12);
	O3: or2 port map (q11, q12, q13);
	O4: or2 port map (q13, bs, nq(1));

	-- Assigning the Output
	A13: and2 port map (boms, b, s);

	-- Adding DFF's
	d1: DFF port map (d => nq(1), clk => clk, q => q(1), r => r);
	d0: DFF1 port map (d => nq(0), clk => clk, q => q(0), r => r);

end bomb_detector;