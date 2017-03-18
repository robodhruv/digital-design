
library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(15 downto 0); ---Note: for alu testing (17 downto 0) for others (15 downto 0)
       	output_vector: out std_logic_vector(3 downto 0));
end entity;

architecture DutWrap of DUT is
	
	component full_counter is
		port(b15, b14, b13, b12, b11, b10, b9, b8, b7,
				b6, b5, b4, b3, b2, b1, b0: in std_logic;
			s3, s2, s1, s0: out std_logic);
	end component;

begin
	counter_inst: full_counter port map (
	b15 => input_vector(15),
	b14 => input_vector(14),
	b13 => input_vector(13),
	b12 => input_vector(12),
	b11 => input_vector(11),
	b10 => input_vector(10),
	b9 => input_vector(9),
	b8 => input_vector(8),
	b7 => input_vector(7),
	b6 => input_vector(6),
	b5 => input_vector(5),
	b4 => input_vector(4),
	b3 => input_vector(3),
	b2 => input_vector(2),
	b1 => input_vector(1),
	b0 => input_vector(0),

	s3 => output_vector(3),
	s2 => output_vector(2),
	s1 => output_vector(1),
	s0 => output_vector(0)
	);

end DutWrap;