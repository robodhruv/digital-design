-- Author: Dhruv Ilesh Shah
-- an implementation for sequential GCD computation
 --of sixteen 16-bit nos.

library work;
use work.GCDCOMPONENTS.all;
use work.EE224_Components.all;

entity System is
	port ( din: in bit_vector(15 downto 0);
		dout: out bit_vector(15 downto 0);
		start: in bit;
		done: out bit;
		erdy: in bit;
		srdy: out bit;
		clk: in bit;
		reset: in bit);
end entity;

-- State Mapping
-- inits	0	0
-- computes	0	1
-- loads	1 	0

architecture seq of System is
	signal q0, q1, nq0, nq1, inits, computes, loads, compute_enable, complete,
		init_load, load_B_en, load_A_en, gcd_start, gcd_done, count_update_en: bit;
	signal A, B, nB, gcd_out, count, count_inc, sixteen: bit_vector(15 downto 0);
	component gcd2 is
		port (num1: in bit_vector(15 downto 0);
			num2: in bit_vector(15 downto 0);
			gcd_out: out bit_vector(15 downto 0);
			start: in bit;
			done: out bit;
			clk: in bit;
			reset: in bit);
	end component;
	component mux16 is
		port(mx1, my1: in bit_vector(15 downto 0);
				mo1: out bit_vector(15 downto 0);
				sel1: in bit);
	end component;
	component equate is
		port (x, y: in bit_vector(15 downto 0);
			s: out bit);
	end component;
begin
	
	inits <= (not q0) and (not q1);
	computes <= (not q1) and q1;
	loads <= q0 and (not q1);

	compute_enable <= (inits and start) or (computes and gcd_done);
	init_load <= (inits and start);
	load_A_en <= (loads and erdy) or (inits and start);
	load_B_en <= (inits and start) or (computes and gcd_done);

	load_A: dregister
		generic map (nbits => 16)
		port map (din, A, clk, load_A_en);

	next_B: mux16 port map (din, gcd_out, nB, init_load);
	load_B: dregister
		generic map (nbits => 16)
		port map (nB, B, clk, load_B_en);

	increment_count: unsigned_adder
		generic map (nbits => 16)
		port map(count, "0000000000000001", count_inc);

	sixteen <= "0000000000010000";
	check_done: equate port map (count, sixteen, complete);

	done <= complete;

	gcd_start <= (inits and start) or (loads);

	gcd_compute: gcd2 port map (A, B, gcd_out, gcd_start, gcd_done, clk, reset);

	srdy <= (computes and gcd_done);
	nq0 <= ((inits and start) or (loads)) and (not complete);
	nq1 <= (computes and gcd_done) and (not complete);
	count_update_en <= computes and gcd_done;
	update_count: dregister
		generic map (nbits => 16)
		port map (count_inc, count, clk, count_update_en);

end seq;