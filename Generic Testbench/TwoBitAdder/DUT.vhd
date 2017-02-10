-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  two-bit adder.
entity DUT is
   port(input_vector: in bit_vector(3 downto 0);
       	output_vector: out bit_vector(1 downto 0));
end entity;

architecture DutWrap of DUT is
   component TwoBitAdder is
     port(x1,x0,y1,y0: in bit;
         	s1,s0: out bit);
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: TwoBitAdder 
			port map (
					x0 => input_vector(0),
					x1 => input_vector(1),
					y0 => input_vector(2),
					y1 => input_vector(3),
					s0 => output_vector(0),
					s1 => output_vector(1));

end DutWrap;

