-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  two-bit adder.
entity DUT is
   port(input_vector: in bit_vector(3 downto 0);
       	output_vector: out bit_vector(1 downto 0));
end entity;

architecture DutWrap of DUT is
   component TwoBitSubtractor is
     port(x1,x0,y1,y0: in bit;
         	b1, b0: out bit);
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!

   -- For this case, the port map has been altered.
   add_instance: TwoBitSubtractor 
			port map (
					x1 => input_vector(3),
					x0 => input_vector(2),
					y1 => input_vector(1),
					y0 => input_vector(0),
					b1 => output_vector(1),
					b0 => output_vector(0));

end DutWrap;

