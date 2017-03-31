-- author: Madhav Desai
-- register with synchronous enable 
entity dregister is
  generic (
    nbits : integer);                    -- no. of bits
  port (
    din  : in  bit_vector(nbits-1 downto 0);
    dout : out bit_vector(nbits-1 downto 0);
    enable: in bit;
    clk     : in  bit);
end dregister;

architecture behave of dregister is

begin  -- behave
process(clk)
begin 
  if(clk'event and clk = '1') then
    if enable = '1' then
      dout <= din;
    end if;
  end if;
end process;
end behave;
