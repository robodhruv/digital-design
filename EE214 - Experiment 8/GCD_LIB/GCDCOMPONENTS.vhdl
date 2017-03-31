package GCDCOMPONENTS is
  
--
-- data-register
--    (as discussed in class)
--  
-- to instantiated an 8-bit register use
--   di: dregister generic map (nbits => 8) 
--      port map (din => .., dout => .. , clk => .., enable => ..);
--
component dregister is
  generic (
    nbits : integer);                    -- no. of bits
  port (
    din  : in  bit_vector(nbits-1 downto 0);
    dout : out bit_vector(nbits-1 downto 0);
    clk: in bit;
    enable: in  bit);
end component;

--
-- combinational unsigned addition
--  (2's complement numbers)
-- 
component unsigned_adder is
  generic ( nbits : integer);
  port ( A : in  bit_vector(nbits-1 downto 0);
    B : in  bit_vector(nbits-1 downto 0);
    result   : out bit_vector(nbits-1 downto 0));
end component;

--
-- combinational unsigned subtractor
--  (2's complement numbers)
-- 
component unsigned_subtractor is
  generic ( nbits : integer);
  port ( A : in  bit_vector(nbits-1 downto 0);
    B : in  bit_vector(nbits-1 downto 0);
    result   : out bit_vector(nbits-1 downto 0));
end component;

--
-- combinational comparator
--
component unsigned_comparator is
  generic (
    nbits : integer);
  port (
    a      : in  bit_vector(nbits-1 downto 0);
    b      : in  bit_vector(nbits-1 downto 0);
    a_lt_b : out bit;
    a_eq_b : out bit;
    a_gt_b : out bit);
end component;


--
-- synchronous memory.
--
component synch_mem is
   generic (data_width: integer:= 8; addr_width: integer := 8);
   port(din: in bit_vector(data_width-1 downto 0);
        dout: out bit_vector(data_width-1 downto 0);
        en: in bit;
        wrbar: in bit;
        addrin: in bit_vector(addr_width-1 downto 0);
        clk: in bit);
end component;

--
-- Make div_start = 1 to start the division.  When
-- the division is completed, div_done will become 1.
--
component Divider16 is
   port ( divisor: in bit_vector(15 downto 0);
	  dividend: in bit_vector(15 downto 0);
 	  quotient: out bit_vector(15 downto 0);
 	  remainder: out bit_vector(15 downto 0);
          div_start: in bit;
	  div_done: out bit;
          clk: in bit;
          reset: in bit);
end component;

end package;

