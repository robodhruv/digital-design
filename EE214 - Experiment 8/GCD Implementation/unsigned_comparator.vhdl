-- author: Madhav Desai
-- unsigned comparator with three outputs.
entity unsigned_comparator is
  generic (
    nbits : integer);
  port (
    a      : in  bit_vector(nbits-1 downto 0);
    b      : in  bit_vector(nbits-1 downto 0);
    a_lt_b : out bit;
    a_eq_b : out bit;
    a_gt_b : out bit);
end unsigned_comparator;

architecture behave  of unsigned_comparator is
begin  -- behave 
  process(a,b)
    variable i,l,e,g,x,y : bit;
    begin
      l := '0';
      e := '1';
      g := '0';
      for i  in nbits-1 downto 0 loop
         x := a(i) and (not( b(i)) );
         y := not(a(i) xor b(i));
         if( x = '1' and e = '1') then
           g := '1';
           e := '0';
         elsif (y = '0' and e = '1') then
           l := '1';
           e := '0';
         end if;
      end loop;  -- i
      a_lt_b <= l;
      a_gt_b <= g;
      a_eq_b <= e;
   end process;
end behave ;
