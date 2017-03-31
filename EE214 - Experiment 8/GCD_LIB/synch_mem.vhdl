-- author: Madhav Desai
-- synchronous memory model (single cycle read/write delay).
library ieee;
use ieee.numeric_bit.all;

entity synch_mem is
   generic (data_width: integer:= 8; addr_width: integer := 8);
   port(din: in bit_vector(data_width-1 downto 0);
        dout: out bit_vector(data_width-1 downto 0);
        en: in bit;
        wrbar: in bit;
        addrin: in bit_vector(addr_width-1 downto 0);
        clk: in bit);
end entity;
architecture behave of synch_mem is
   type MemArray is array(natural range <>) of bit_vector(data_width-1 downto 0);
   signal marray: MemArray(0 to ((2**addr_width)-1));
   
   function To_Integer(x: bit_vector) return integer is
      variable xu: unsigned(x'range);
   begin
      for I in x'range loop
         xu(I) := x(I);
      end loop;
      return(To_Integer(xu));
   end To_Integer;

begin

   -- there is only one state..
   process(clk)
      variable addr_var: integer range 0 to (2**addr_width)-1;
   begin
      addr_var := To_Integer(addrin);
      if(clk'event and clk = '1') then
         if(en = '1' and wrbar = '1') then
            dout <= marray(addr_var);
         elsif (en = '1') then
            marray(addr_var) <= din;
	end if;
      end if;        
   end process;

end behave;
