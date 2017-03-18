library ieee;
use ieee.std_logic_1164.all;

entity full_counter is
	port(b15, b14, b13, b12, b11, b10, b9, b8, b7,
			b6, b5, b4, b3, b2, b1, b0: in std_logic;
		s3, s2, s1, s0: out std_logic);
end entity;

architecture count of full_counter is
	signal int0, int1, int2, int3: std_logic_vector(3 downto 0);
	signal sum1, sum2, sum3: std_logic_vector(4 downto 0);

	component four_bit_linear is
		port(a, b, c, d: in std_logic;
			s: out std_logic_vector(3 downto 0));
	end component;

	component FourBitAdder is
		port(x,y: in std_logic_vector(3 downto 0);
			z: out std_logic_vector(4 downto 0));
	end component;
begin
	
	-- Computing the sum, four at a time, to reduce latency
	quad0: four_bit_linear port map (b15, b14, b13, b12, int0);
	quad1: four_bit_linear port map (b11, b10, b9, b8, int1);
	quad2: four_bit_linear port map (b7, b6, b5, b4, int2);
	quad3: four_bit_linear port map (b3, b2, b1, b0, int3);

	-- Pooling up the calculated sums
	adder1: FourBitAdder port map (int0, int1, sum1);
	adder2: FourBitAdder port map (sum1(3 downto 0), int2, sum2);
	adder3: FourBitAdder port map (sum2(3 downto 0), int3, sum3);

	-- Assigning mod 16 outputs
	s0 <= sum3(0);
	s1 <= sum3(1);
	s2 <= sum3(2);
	s3 <= sum3(3);

end count;