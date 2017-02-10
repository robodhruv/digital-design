entity TwoBitSubtractor is
	port(x1,x0,y1,y0: in bit;
		b1,b0: out bit);
end entity;
architecture Formulae of TwoBitSubtractor is
	signal s0, s1: bit;
begin
	b0 <= (x0 xor y0);
	s0 <= (x1 xor y1);
	s1 <= ((not x0) and y0);
	b1 <= (s0 xor s1);
end Formulae;
-- For the logic of b1, the bit b1 is unaffected by x0, y0 as long
-- as there is no carry-over in the subtraction. Look below:
-- x0	y0	diff
-- 0	1	-1
-- 1	1	0
-- 1	0	1
-- 0	0	0
-- Thus, if the case is the first, then we flip  (x1 xor y1), and
-- in other cases, just let it be.