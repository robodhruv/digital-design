-- author: Madhav Desai
-- unsigned combinational subtractor
entity unsigned_subtractor is
  generic ( nbits : integer);
  port ( A : in  bit_vector(nbits-1 downto 0);
    B : in  bit_vector(nbits-1 downto 0);
    result   : out bit_vector(nbits-1 downto 0));
end unsigned_subtractor;


architecture behave  of unsigned_subtractor is

begin  -- behave 
 
  -- compute A + (not B) + 1.
  -- ie. convert B to 2's complement and add to A.
  process (A, B)
    variable c: bit;
   begin
     c := '1'; -- end-around carry..
     for i in 0 to nbits-1 loop
      result(i) <= c xor (A(i) xor (not B(i)));
      c := (c and (A(i) or (not B(i)))) or
            (A(i) and (not B(i)));
     end loop;  -- i
   end process;
   
end behave ;
