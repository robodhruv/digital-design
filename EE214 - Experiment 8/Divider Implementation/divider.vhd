library std;
use std.standard.all;
library work;
use work.EE224_Components.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.ALL;

entity unsigned_divider is
	port(clk: in std_ulogic;
		reset: in std_ulogic;
		-- the two inputs
		dividend: in std_ulogic_vector(15 downto 0);
		divisor : in std_ulogic_vector(15 downto 0);
		-- the next two implement a ready-ready
		-- protocol to start the division
		inputs_ready: in std_ulogic;
		divider_ready : out std_ulogic;
		-- the two outputs
		quotient : out std_ulogic_vector(15 downto 0);
		remainder : out std_ulogic_vector(15 downto 0);
		-- the output ready-ready handshake
		output_ready: out std_ulogic;
		output_accept: in std_ulogic);
end entity unsigned_divider;

-- State Mapping
-- 			q1	q0
-- inits	0	0
-- computes	0	1
-- outs		1	0

architecture division of unsigned_divider is
	signal q0, q1, count0, sign_bit, inits, computes, outs, nq0, nq1,
		compute_ready, count_etc, Qi, Qsi, compute_done, not_done: std_ulogic;
	signal count_int: integer;
	signal D, R, Rs, nRcom, nR, Cs, Q, Qs, nQ, M, N, nC, zeros, ones: std_ulogic_vector(15 downto 0);
	signal count: std_ulogic_vector(15 downto 0) := "1111111111111111";
	component reg16 is
		port (DIN: in std_ulogic_vector(15 downto 0);
			reset, enable, clk: in std_ulogic;
			DOUT: out std_ulogic_vector(15 downto 0));
	end component;
	component reg4 is
		port (DIN: in std_ulogic_vector(3 downto 0);
			reset, enable, clk: in std_ulogic;
			DOUT: out std_ulogic_vector(3 downto 0));
	end component;
	component equate is
		port (x, y: in std_ulogic_vector(15 downto 0);
			s: out std_ulogic);
	end component;
	component sub16 is
		port (x, y: in std_ulogic_vector(15 downto 0);
			sign_bit: out std_ulogic;
			z: out std_ulogic_vector(15 downto 0));
	end component;
	component mux16 is
		port(mx1, my1: in std_ulogic_vector(15 downto 0);
			mo1: out std_ulogic_vector(15 downto 0);
			sel1: in std_ulogic);
	end component;
	component countdown is
		port (x: in std_ulogic_vector(15 downto 0);
			z: out std_ulogic_vector(15 downto 0));
	end component;
	component mux is
		port(n1,n0,s: in std_ulogic;
			b: out std_ulogic);
	end component;
begin
	
	-- Deciphering States
	inits <= (not q1) and (not q0);
	computes <= (not q1) and q0;
	outs <= q1 and (not q0);

	compute_ready <= inputs_ready and inits;

	-- Loading N and D as inputs arrive
	load_divisor: reg16 port map (divisor, '0', compute_ready, clk, D);
	load_dividend: reg16 port map (dividend, '0', compute_ready, clk, N);

	ones <= "1111111111111111";
	zeros <= "0000000000000000";

	countdown_predicate: equate port map (count, zeros, count0);

	--KK <= (R sll 1);
	--Rs(15 downto 1) <= KK(15 downto 1);
	left_shift_R: for i in 1 to 15 generate
		Rs(i) <= R(i - 1);
	end generate;
	count_int <= to_integer(signed(count));
	
	Rs(0) <= N(0);
	
	fullsub: sub16 port map (Rs, D, sign_bit, M);

	-- Update Qs if R >= D
	-- Note that this has been done sep. because enable is diff.
	--Qi <= Q(count_int);
	update_Qs: mux port map ('0', '1', sign_bit, Qsi);
	Qs(0) <= Qsi;

	not_done <= computes or inits;

	-- When in computes (enable of reg), nRcom should update reg.
	-- nRcom equals Rs or M depending on sign_bit
	next_R: mux16 port map (Rs, M, nRcom, sign_bit);
	reset_R: mux16 port map (zeros, nRcom, nR, inits);
	update_R: reg16 port map (nR, '0', not_done, clk, R);

	--reset_count: reg16 port map (ones, '0', inits, clk, count);

	-- Countdown, when in computes
	next_count: countdown port map (count, Cs);
	reset_count: mux16 port map (ones, Cs, nC, inits);
	update_count: reg16 port map (nC, '0', not_done, clk, count);

	-- Update Q, when in computes (and R >= D taken care of by Qs)
	reset_Q: mux16 port map (zeros, Qs, nQ, inits);
	update_Q: reg16 port map (nQ, '0', not_done, clk, Q);

	compute_done <= count0 and computes;

	-- Actions in the outs state. This can be assigned without delays as
	-- quotient and remainder outputs were changed at count0! Saved a clk! :D

	output_ready <= inits;
	--update_quotient: reg16 port map (nQ, '0', compute_done, clk, quotient);
	--update_remainder: reg16 port map (nR, '0', compute_done, clk, remainder);

	quotient <= Q;
	remainder <= R;

	-- The below are not preferrable as one clock delay for output ready
	--update_quotient: reg16 port map (Q, '0', output_ready, clk, quotient);
	--update_remainder: reg16 port map (R, '0', output_ready, clk, remainder);

	-- When output accepted, shift to divider ready. (Also, to inits)
	ready: dffi port map (d => output_accept, clk => clk, q => divider_ready, r => reset);


	-- Updating the states
	nq0 <= (inits and inputs_ready) or (computes and (not count0));
	nq1 <= (computes and count0) or (outs and (not output_accept));

	d1: dffi port map (d => nq1, clk => clk, q => q1, r => reset);
	d0: dffi port map (d => nq0, clk => clk, q => q0, r => reset);

end division;