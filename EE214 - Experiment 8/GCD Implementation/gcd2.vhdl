-- Author: Dhruv Ilesh Shah
-- an implementation for GCD of two 16-bit nos.
library work;
use work.GCDCOMPONENTS.all;
use work.EE224_Components.all;

entity gcd2 is
	port (num1: in bit_vector(15 downto 0);
		num2: in bit_vector(15 downto 0);
		gcd_out: out bit_vector(15 downto 0);
		start: in bit;
		done: out bit;
		clk: in bit;
		reset: in bit);
end entity;

-- State Mapping
-- starts	0
-- divides	1

architecture compute of gcd2 is
	signal q0, nq0, starts, divides, num_reg_en, div_done: bit;
	signal A, B, nA, nB, div_R: bit_vector(15 downto 0);
	component Divider16 is
	   port ( divisor: in bit_vector(15 downto 0);
		  dividend: in bit_vector(15 downto 0);
	 	  quotient: out bit_vector(15 downto 0);
	 	  remainder: out bit_vector(15 downto 0);
	    div_start: in bit;
		  div_done: out bit;
	    clk: in bit;
	    reset: in bit);
	end component;
	component mux16 is
		port(mx1, my1: in bit_vector(15 downto 0);
				mo1: out bit_vector(15 downto 0);
				sel1: in bit);
	end component;

begin
	starts <= not q0;
	divides <= q0;

	num_reg_en <= starts or (divides and div_done);

	next_A: mux16 port map (num1, B, nA, starts);
	next_B: mux16 port map (num2, div_R, nB, starts);

	load_A: dregister
		generic map (nbits => 16)
		port map (nA, A, clk, num_reg_en);
	load_B: dregister
		generic map (nbits => 16)
		port map (nB, B, clk, num_reg_en);

	
	

	--nq0 <= rem_zero and divides and div_done;
	nq0 <= (starts and start) or (divides and (not rem_zero));
	d0: dffi port map (d => nq0, clk => clk, q => q0, r => reset);

end compute;