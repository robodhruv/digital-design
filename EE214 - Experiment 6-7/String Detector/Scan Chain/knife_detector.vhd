library ieee;
use ieee.std_logic_1164.all;
library work;
use work.EE224_Components.all;


entity knife_hurler is
	port(x: in std_ulogic_vector(4 downto 0);
		reset, clk: in std_ulogic;
		s: out std_ulogic);
end entity;

architecture knife_detector of knife_hurler is
	signal q, nq, qb: std_ulogic_vector(2 downto 0);
	signal k, n, i, f, e, kb, nb, ib, fb, eb, ks, phis,
	kns, knis, knifs, n0, n1, n2, n3, n4,
	q01, q02, q03, q11, q12, q13, q14, q21, q22: std_ulogic;
--State Description
--phi		0 0 0
--k 		0 0 1
--kn 		0 1 1
--kni		0 1 0
--knif		1 1 0

begin
	INV0: inverter port map (x(0), n0);
	INV1: inverter port map (x(1), n1);
	INV2: inverter port map (x(2), n2);
	INV3: inverter port map (x(3), n3);
	INV4: inverter port map (x(4), n4);

	A5k: andi5 port map (n4, x(3), n2, x(1), x(0), k); -- Identifying K
	A5n: andi5 port map (n4, x(3), x(2), x(1), n0, n); -- Identifying N
	A5i: andi5 port map (n4, x(3), n2, n1, x(0), i); -- Identifying I
	A5f: andi5 port map (n4, n3, x(2), n1, x(0), e); -- Identifying E
	A5e: andi5 port map (n4, n3, x(2), x(1), n0, f); -- Identifying F

	INV5: inverter port	map (q(0), qb(0));
	INV6: inverter port	map (q(1), qb(1));
	INV7: inverter port map (q(2), qb(2));
	INV8: inverter port map (k, kb);
	INV9: inverter port map (n, nb);
	INV10: inverter port map (i, ib);
	INV11: inverter port map (f, fb);
	INV12: inverter port map (e, eb);

	-- Declaring the states
	A31: andi3 port map (qb(2), qb(1), qb(0), phis);
	A32: andi3 port map (qb(2), qb(1), q(0), ks);
	A33: andi3 port map (qb(2), q(1), q(0), kns);
	A34: andi3 port map (qb(2), q(1), qb(0), knis);
	A35: andi3 port map (q(2), q(1), qb(0), knifs);

	-- Assigning State nq(2)
	A1: andi2 port map (knis, f, q21);
	A2: andi2 port map (knifs, eb, q22);
	O1: ori2 port map (q21, q22, nq(2));

	-- Assigning State nq(1)
	O2: ori2 port map (kns, knis, q11);
	A3: andi2 port map (ks, n, q12);
	A4: andi2 port map (knifs, eb, q13);
	O3: ori2 port map (q12, q13, q14);
	O4: ori2 port map (q11, q14, nq(1));

	-- Assigning State nq(0)
	A5: andi2 port map (kns, ib, q01);
	A6: andi2 port map (phis, k, q02);
	O5: ori2 port map (q02, ks, q03);
	O6: ori2 port map (q03, q01, nq(0));

	-- Assigning the Output
	A7: andi2 port map (knifs, e, s);

	-- Adding the DFF's
	d0: DFFi port map (d => nq(0), clk => clk, q => q(0), r => reset);
	d1: DFFi port map (d => nq(1), clk => clk, q => q(1), r => reset);
	d2: DFFi port map (d => nq(2), clk => clk, q => q(2), r => reset);

end knife_detector;