-- Author: Madhav Desai
-- a test-bench for the GCD system.
library work;
use work.base_components.all;
library std;
use std.textio.all;

entity test_bench is
end test_bench;



-- read a file: gcd_inputs.txt and run the gcd algorithm..
-- and compare with the result from file gcd_result.txt
architecture behave of test_bench is

  -- system being tested.
  component System is
   port ( din: in bit_vector(15 downto 0);
 	  dout: out bit_vector(15 downto 0);
          start: in bit;
	  done: out bit;
	  erdy: in bit;
          srdy: out bit;
          clk: in bit;
          reset: in bit);
  end component;

  signal din, dout:  bit_vector(15 downto 0);
  signal clk, reset, start, done, erdy, srdy: bit := '0';

  file stimulus_file: text is in "gcd_inputs.txt";
  file result_file: text is in "gcd_result.txt";
  
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
    erdy  <= '0';
    wait until clk = '1';
    reset <= '0';

    start <= '1';
    wait until clk = '1';
    start <= '0';
    
    while( not endfile(stimulus_file)) loop
      readline(stimulus_file,L);
      read(L,next_number);

      din <= next_number;
      erdy <= '1';

      while true loop
        wait until clk = '1';
        if(srdy = '1') then
          exit;
        end if;
      end loop;

      assert false report "Sent item " severity note;

    end loop;


    wait for 0 ns;
    erdy <= '0';
    assert false report "Sent all items " severity note;

    while true loop
      wait until clk = '1';
      if(done = '1') then
        exit;
      end if;
      wait for 1 ns;

    end loop;

    assert false report "Received done " severity note;

    readline(result_file,L);
    read(L,next_number);
    if(dout = next_number) then
      assert false report "SUCCESS: got the correct GCD." severity note;
    else
      assert false report "FAILURE: incorrect GCD! " severity ERROR;
    end if;

    wait;
  end process;


  --  instantiate the system..
  sys: System port map(din => din, dout => dout, erdy => erdy, srdy => srdy, start => start, done => done, clk=> clk, reset => reset);
  
  
end behave;
