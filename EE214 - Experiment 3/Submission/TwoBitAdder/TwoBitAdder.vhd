entity TwoBitAdder is
	port(x1,x0,y1,y0: in bit;
		s1,s0: out bit);
end entity;

architecture Formulas of TwoBitAdder is
   signal w, z: bit;
begin
   s0 <= (y0 and (not x0)) or ((not y0) and x0); -- s0 <= (y0 xor x0)
   w  <= (y1 and (not x1)) or ((not y1) and x1); -- w <= (y1 xor x1)
   z  <= (y0 and x0);
   s1 <= (w  and (not z)) or ((not w) and z); -- s1 <= (w xor z)
end Formulas;