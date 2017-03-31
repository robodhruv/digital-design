-- Author: Madhav Desai
-- an implementation of a divider
-- 
library work;
use work.base_components.all;

entity Divider16 is
   port ( divisor: in bit_vector(15 downto 0);
	  dividend: in bit_vector(15 downto 0);
 	  quotient: out bit_vector(15 downto 0);
 	  remainder: out bit_vector(15 downto 0);
          div_start: in bit;
	  div_done: out bit;
          clk: in bit;
          reset: in bit);
end entity;


-- architecture
architecture Behave of Divider16 is

  -- useful functions..
  function left_shift(x: bit_vector) return bit_vector is
     alias lx: bit_vector(1 to x'length) is x;
     variable ret_var : bit_vector(1 to x'length);
  begin
     ret_var(1 to x'length-1) := lx(2 to x'length);
     ret_var(x'length) := '0';
     return(ret_var);
  end left_shift;

  function right_shift(x: bit_vector) return bit_vector is
     alias lx: bit_vector(1 to x'length) is x;
     variable ret_var : bit_vector(1 to x'length);
  begin
     ret_var(2 to x'length) := lx(1 to x'length-1);
     ret_var(1) := '0';
     return(ret_var);
  end right_shift;

  
  ---------------------------------------------------------------------------------------------
  -- divider thread.
  ---------------------------------------------------------------------------------------------
  Type DivState is (div_reset, div_outerloop, div_innerloop,div_update, div_completed);
  signal div_state: DivState;
  -- transfer control signals from divide thread
  -- 0:  curr_quotient = "0000000000000001"
  -- 1:  dividend_by_2 = (remainder >> 1)
  -- 2:  shifted_divisor = divisor
  -- 3:  shifted_divisor = (shifted_divisor << 1)
  -- 4:  curr_quotient = (curr_quotient << 1)
  -- 5:  quotient = quotient OR curr_quotient
  -- 6:  remainder = remainder - shifted_divisor
  -- 7:  remainder = dividend
  -- 8:  quotient = 0
  -- 9:  quotient = dividend
  --10:  remainder = 0
  signal div_tx_controls: bit_vector(10 downto 0);
  -- comparator controls
  -- 0:  divisor <= remainder
  -- 1:  shifted_divisor < dividend_by_2
  -- 2:  divisor == 1
  signal div_cmp_controls: bit_vector(2 downto 0);

  -- registers
  signal quotient_reg, curr_quotient, remainder_reg, shifted_divisor, dividend_by_2:
    bit_vector(15 downto 0);
  signal dividend_in, divisor_in, quotient_in, curr_quotient_in,
    remainder_in, shifted_divisor_in, dividend_by_2_in:    bit_vector(15 downto 0);
  signal dividend_enable, divisor_enable, quotient_enable, curr_quotient_enable,
    remainder_enable, shifted_divisor_enable, dividend_by_2_enable: bit;

  
  -- data-path predicates used in the control path.
  signal cmp_eq, cmp_lt, cmp_gt, cmp_lte, cmp_gte: bit;

  -- comparator inputs.
  signal comparator_A, comparator_B: bit_vector(15 downto 0);

  -- subtractor inputs and output.
  signal subtractor_A, subtractor_B, subtractor_result: bit_vector(15 downto 0);

  -- adder inputs and output.
  signal adder_A, adder_B, adder_result: bit_vector(15 downto 0);


  -- constants
  constant constant_zero : bit_vector(15 downto 0) := (others => '0');  
  constant constant_one : bit_vector(15 downto 0) := (0 => '1', others => '0');
  constant constant_16  : bit_vector(15 downto 0) := (4 => '1', others => '0');
  
begin

  -- connect quotient/remainder registers to the output ports.
  quotient <= quotient_reg;
  remainder <= remainder_reg;

  --------------------------------------------------------------------------------------------- 
  -- datapath
  --------------------------------------------------------------------------------------------- 


  -- comparator predicates
  cmp_lte <= cmp_eq or cmp_lt;
  cmp_gte <= cmp_eq or cmp_gt;
  
  -- comparator instance.
  cmp: unsigned_comparator generic map(nbits => 16)
    port map(A => comparator_A,
             B => comparator_B,
             a_eq_b => cmp_eq,
             a_lt_b => cmp_lt,
             a_gt_b => cmp_gt);

  -- comparator input muxes.
  comparator_A <= divisor when div_cmp_controls(0) = '1' else
                  shifted_divisor when div_cmp_controls(1) = '1' else
                  divisor when div_cmp_controls(2) = '1' else
                  (others => '0');
  comparator_B <= remainder_reg when div_cmp_controls(0) = '1' else
                  dividend_by_2 when div_cmp_controls(1) = '1' else
                  constant_one when div_cmp_controls(2) = '1' else
                  (others => '0');
  
  

  -- subtractor.
  sub: unsigned_subtractor
    generic map(nbits => 16)
    port map (A => subtractor_A,
              B => subtractor_B,
              Result => subtractor_result);
  subtractor_A <= remainder_reg;
  subtractor_B <= shifted_divisor;

  -- register: quotient
  rquotient: dregister
    generic map(nbits => 16)
    port map(din => quotient_in, dout => quotient_reg, clk => clk, enable => quotient_enable);
  quotient_in <= (quotient_reg or curr_quotient) when div_tx_controls(5) = '1' else
                 constant_zero when div_tx_controls(8) = '1' else
                 dividend when div_tx_controls(9) = '1' else
                 constant_zero;
  quotient_enable <= div_tx_controls(5) or div_tx_controls(8) or div_tx_controls(9);
  
  
  -- register: curr_quotient
  rcurr_quotient: dregister
    generic map(nbits => 16)
    port map(din => curr_quotient_in, dout => curr_quotient, clk => clk, enable => curr_quotient_enable);
  curr_quotient_in <= left_shift(curr_quotient) when div_tx_controls(4) = '1' else
                      constant_one when div_tx_controls(0) = '1' else
                      constant_zero;
  curr_quotient_enable <= div_tx_controls(0) or div_tx_controls(4);
  
  -- register: remainder
  rremainder: dregister generic map(nbits => 16)  
	port map(din => remainder_in, dout => remainder_reg, clk => clk, enable => remainder_enable);               
  remainder_in <=  subtractor_result when div_tx_controls(6) = '1' else
                dividend when div_tx_controls(7) = '1' else
                constant_zero when div_tx_controls(10) = '1' else
                constant_zero;
  remainder_enable <= div_tx_controls(6) or div_tx_controls(7) or div_tx_controls(10);
  
  -- register: shifted_divisor
  rshifted_divisor: dregister generic map(nbits => 16)
    port map(din => shifted_divisor_in, dout => shifted_divisor, clk => clk, enable => shifted_divisor_enable);
  shifted_divisor_in <= divisor when div_tx_controls(2) = '1' else
                     left_shift(shifted_divisor) when div_tx_controls(3) = '1' else
                     constant_zero;
  shifted_divisor_enable <= div_tx_controls(2) or div_tx_controls(3);
  
  -- register: dividend_by_2:
  rdividend_by_2: dregister
    generic map(nbits => 16)
    port map(din => dividend_by_2_in, dout => dividend_by_2, clk => clk, enable => dividend_by_2_enable);
  dividend_by_2_in <= ('0' & remainder_reg(15 downto 1));
  dividend_by_2_enable <= div_tx_controls(1);

  --------------------------------------------------------------------------------------------------------
  -- control path
  --------------------------------------------------------------------------------------------------------
  
  -- Divider process.
  process(clk,reset,div_state, cmp_lte, cmp_lt, div_start)
      variable next_state: DivState;
  begin
      next_state := div_state;

      div_tx_controls <= (others => '0');
      div_cmp_controls <= (others => '0');
      
      div_done <= '0';
      case div_state is
        when div_reset =>
          if(div_start = '1') then
            div_cmp_controls(2) <= '1';  -- divisor == 1?
            if(cmp_eq = '1') then
               next_state :=  div_completed;
	       div_tx_controls(9) <= '1';   -- quotient = dividend
               div_tx_controls(10) <= '1';  -- remainder = 0
            else
               next_state := div_outerloop;
               div_tx_controls(7) <= '1'; -- remainder = dividend
               div_tx_controls(8) <= '0'; -- quotient = 0
            end if;
          end if;
        when div_outerloop =>
          div_cmp_controls(0) <= '1'; -- divisor =< remainder.
          if(cmp_lte = '1') then
            next_state := div_innerloop;
            div_tx_controls(0) <= '1'; -- curr_quotient = 0x1
            div_tx_controls(1) <= '1'; -- dividend_by_2 = (remainder >> 1)
            div_tx_controls(2) <= '1'; -- shifted_divisor = divisor
          else
            next_state := div_completed;
          end if;
        when div_innerloop =>
          div_cmp_controls(1) <= '1'; -- shifted_divisor < dividend_by_2.
          if(cmp_lt = '1') then
            div_tx_controls(3) <= '1'; -- shifted_divisor = shifted_divisor<<1
            div_tx_controls(4) <= '1'; -- curr_quotient = curr_quotient << 1
          else
            next_state := div_update;
          end if;
        when div_update =>
          next_state := div_outerloop;
          div_tx_controls(5) <= '1'; -- quotient = quotient OR curr_quotient
          div_tx_controls(6) <= '1'; -- remainder = remainder - shifted_divisor
        when div_completed =>
	   next_state := div_reset;
	   div_done <= '1';
        when others => null;
      end case ;

      if(clk'event and clk = '1') then
        if(reset = '1') then
          div_state <= div_reset;
        else
          div_state <= next_state;
        end if;
      end if;
  end process;
  
end Behave;
