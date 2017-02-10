entity DUT is
   port(input_vector: in bit_vector(7 downto 0);
       	output_vector: out bit_vector(3 downto 0));
end entity;

architecture DutWrap of DUT is
    component PriorityEncoder is
    port ( x7 , x6 , x5 , x4 , x3 , x2 , x1 , x0 :in bit ;
    s2 , s1 , s0 , N :out bit ) ;
   end component;
begin
   add_instance: PriorityEncoder
			port map (
          x7 => input_vector(7),
          x6 => input_vector(6),
          x5 => input_vector(5),
          x4 => input_vector(4),
          x3 => input_vector(3),
          x2 => input_vector(2),
          x1 => input_vector(1),
          x0 => input_vector(0),
          s0 => output_vector(1),
          s1 => output_vector(2),
          s2 => output_vector(3),
          N => output_vector(0));

end DutWrap;

