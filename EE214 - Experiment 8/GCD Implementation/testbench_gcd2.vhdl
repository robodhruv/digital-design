-- Author: Madhav Desai
-- a test-bench for the GCD system.

library std;
use std.textio.all;
library ieee;
use ieee.std_logic_1164.all;

entity testbench_gcd2 is
end testbench_gcd2;



-- read a file: gcd_inputs.txt and run the gcd algorithm..
-- and compare with the result from file gcd_result.txt
architecture behave of testbench_gcd2 is

  -- system being tested.
  component gcd2 is
   port (num1, num2: in bit_vector(15 downto 0); clk, reset, start: in bit; done: out bit; gcd_out: out bit_vector(15 downto 0));
  end component;

  signal Ain, Bin, dout:  bit_vector(15 downto 0);
  signal clk, reset, start, done: bit := '0';

  file stimulus_file: text is in "Tracefiles/gcd_inputs.txt";
  file result_file: text is in "Tracefiles/gcd_result.txt";
  
  function to_bit_vector(x: bit_vector) return bit_vector is
      variable ret_val: bit_vector(1 to x'length);
      alias lx: bit_vector(1 to x'length) is x;
  begin
 	for I in 1 to x'length loop
		if(lx(I) = '1') then
			ret_val(I) := '1';
		else
			ret_val(I) := '0';
		end if;
	end loop;
	return(ret_val);
  end to_bit_vector;

begin

  -- 10 ns clock.
  clk <= not clk after 5 ns;
  
  process
    variable L: line;
    variable next_number: bit_vector(15 downto 0);
    variable counter: integer;
  begin
    counter := 0;
    reset <= '1';
    start <= '0';
    wait until clk = '1';
    reset <= '0';
    wait until clk = '1';
    
      readline(stimulus_file,L);
      read(L,next_number);

      Ain <= to_bit_vector(next_number);
	  readline(stimulus_file,L);
	  read(L, next_number);
	  Bin <= to_bit_vector(next_number);

      assert false report "Sent item " severity note;



    
    start <= '1';

	wait until clk = '1';
	start <= '0';
	assert false report "Started " severity note;

    while true loop
		wait until clk = '1';      	
		if(done = '1') then
assert false report "Done" severity note;
        	exit;
      	end if;
      wait for 1 ns;

    end loop;

    assert false report "Received done " severity note;

    readline(result_file,L);
    read(L,next_number);
    if(dout = to_bit_vector(next_number)) then
      assert false report "SUCCESS: got the correct GCD." severity note;
    else
      assert false report "FAILURE: incorrect GCD! " severity ERROR;
    end if;

    wait;
  end process;


  --  instantiate the system..
  sys: gcd2 port map(num1 => Ain, num2 => Bin, gcd_out => dout, start => start, done => done, clk=> clk, reset => reset);
  
  
end behave;
