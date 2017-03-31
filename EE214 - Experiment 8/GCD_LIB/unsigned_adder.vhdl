-- author: Madhav Desai
-- unsigned combinational adder
entity unsigned_adder is
  generic ( nbits : integer);
  port ( A : in  bit_vector(nbits-1 downto 0);
    B : in  bit_vector(nbits-1 downto 0);
    result   : out bit_vector(nbits-1 downto 0));
end unsigned_adder;


architecture behave  of unsigned_adder is

begin  -- behave 
  process (A, B)
    variable c: bit;
   begin
     c := '0';
     for i in 0 to nbits-1 loop
      result(i) <= c xor (A(i) xor B(i));
      c := (c and (A(i) or B(i))) or
            (A(i) and B(i));
     end loop;  -- i
   end process;
   
end behave ;
