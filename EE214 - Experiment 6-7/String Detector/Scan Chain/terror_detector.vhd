library ieee;
use ieee.std_logic_1164.all;
library work;
use work.EE224_Components.all;


entity terrorist is
	port(x: in std_ulogic_vector(4 downto 0);
		reset, clk: in std_ulogic;
		s: out std_ulogic);
end entity;

architecture terror_detector of terrorist is
	signal q, nq, qb: std_ulogic_vector(2 downto 0);
	signal t, e, r, o, tb, eb, rb, ob, phis, ts, tes, ters,
	terrs, terros, n0, n1, n2, n3, n4, q01, q02, q03, q11,
	q12, q13, q14, q21, q22, q23: std_ulogic;
	
--State Description
--phi	0 0 0
--t		0 0 1
--te	0 1 1
--ter	0 1 0
--terr	1 1 0
--terro	1 0 0

begin
	INV0: inverter port map (x(0), n0);
	INV1: inverter port map (x(1), n1);
	INV2: inverter port map (x(2), n2);
	INV3: inverter port map (x(3), n3);
	INV4: inverter port map (x(4), n4);

	A5e: andi5 port map (n4, n3, x(2), n1, x(0), e); -- Identifying E
	A5o: andi5 port map (n4, x(3), x(2), x(1), x(0), o); -- Identifying O
	A5t: andi5 port map (x(4), n3, x(2), n1, n0, t); -- Identifying T
	A5r: andi5 port map (x(4), n3, n2, x(1), n0, r);

	INV5: inverter port	map (q(0), qb(0));
	INV6: inverter port	map (q(1), qb(1));
	INV7: inverter port map (q(2), qb(2));
	INV8: inverter port map (t, tb);
	INV9: inverter port map (e, eb);
	INV10: inverter port map (r, rb);
	INV11: inverter port map (o, ob);

	-- Declaring the states
	A31: andi3 port map (qb(2), qb(1), qb(0), phis);
	A32: andi3 port map (qb(2), qb(1), q(0), ts);
	A33: andi3 port map (qb(2), q(1), q(0), tes);
	A34: andi3 port map (qb(2), q(1), qb(0), ters);
	A35: andi3 port map (q(2), q(1), qb(0), terrs);
	A36: andi3 port map (q(2), qb(1), qb(0), terros);

	-- Assigning State nq(2)
	A1: andi2 port map (ters, r, q21);
	A2: andi2 port map (terros, rb, q22);
	O1: ori2 port map (q21, q22, q23);
	O11: ori2 port map (q23, terrs, nq(2));


	-- Assigning State nq(1)
	O2: ori2 port map (tes, terrs, q11);
	A3: andi2 port map (ts, e, q12);
	A4: andi2 port map (terrs, rb, q13);
	O3: ori2 port map (q12, q13, q14);
	O4: ori2 port map (q11, q14, nq(1));

	-- Assigning State nq(0)
	A5: andi2 port map (tes, rb, q01);
	A6: andi2 port map (phis, t, q02);
	O5: ori2 port map (q02, ts, q03);
	O6: ori2 port map (q03, q01, nq(0));

	-- Assigning the Output
	A7: andi2 port map (terros, r, s);

	-- Adding the DFF's
	d0: DFFi port map (d => nq(0), clk => clk, q => q(0), r => reset);
	d1: DFFi port map (d => nq(1), clk => clk, q => q(1), r => reset);
	d2: DFFi port map (d => nq(2), clk => clk, q => q(2), r => reset);

end terror_detector;