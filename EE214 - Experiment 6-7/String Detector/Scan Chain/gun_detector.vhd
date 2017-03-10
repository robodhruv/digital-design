library ieee;
use ieee.std_logic_1164.all;
library work;
use work.EE224_Components.all;

entity gunman is
	port(x: in std_ulogic_vector(4 downto 0);
		reset, clk: in std_ulogic;
		s: out std_ulogic);
end entity;

architecture gun_detector of gunman is
	signal q, nq, qb: std_ulogic_vector(1 downto 0);
	signal n0, n1, n2, n3, n4, g, u, n, gb, nb, ub, gs,
	gus, phis, g11, g12, g01, g02: std_ulogic;
--State Description
--phi 		0 0
--g 		1 0
--gu 		0 1
begin
	INV0: inverter port map (x(0), n0);
	INV1: inverter port map (x(1), n1);
	INV2: inverter port map (x(2), n2);
	INV3: inverter port map (x(3), n3);
	INV4: inverter port map (x(4), n4);

	A51: andi5 port map (n4, n3, x(2), x(1), x(0), g); -- Identifying G
	A52: andi5 port map (x(4), n3, x(2), n1, x(0), u); -- Identifying U
	A53: andi5 port map (n4, x(3), x(2), x(1), n0, n); -- Identifying N

	INV5: inverter port	map (q(0), qb(0));
	INV6: inverter port map (q(1), qb(1));
	INV7: inverter port map (g, gb);
	INV8: inverter port map (u, ub);
	INV9: inverter port map (n, nb);


	-- Declaring the States
	A1: andi2 port map (qb(0), qb(1), phis);
	A2: andi2 port map (qb(0), q(1), gus);
	A3: andi2 port map (qb(1), q(0), gs);

	-- Assigning State nq(0)
	A4: andi2 port map (phis, g, g11);
	A5: andi2 port map (gs, ub, g12);
	O1: ori2 port map (g11, g12, nq(0));

	-- Assigning State nq(1)
	A6: andi2 port map (gs, u, g01);
	A7: andi2 port map (gus, nb, g02);
	O2: ori2 port map (g01, g02, nq(1));

	-- Assigning the Output
	A8: andi2 port map (gus, n, s);

	-- Adding the DFF's
	d0: DFFi port map (d => nq(0), clk => clk, q => q(0), r => reset);
	d1: DFFi port map (d => nq(1), clk => clk, q => q(1), r => reset);

end gun_detector;