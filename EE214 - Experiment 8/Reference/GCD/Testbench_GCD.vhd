library ieee;
use ieee.std_logic_1164.all;
library std;
use std.textio.all;
use ieee.STD_LOGIC_TEXTIO.all;

--library work;
--use work.STD_LOGIC_TEXTIO.all;

entity Testbench_GCD is
end entity;
architecture Behave of Testbench_GCD is
  signal din, dout: std_logic_vector(15 downto 0);
  signal start, done, srdy, erdy: std_logic;
  signal clk: std_logic := '0';
  signal reset: std_logic := '1';

	component System is
		port ( din: in std_logic_vector(15 downto 0);
			dout: out std_logic_vector(15 downto 0);
			start: in std_logic;
			done: out std_logic;
			erdy: in std_logic;
			srdy: out std_logic;
			clk: in std_logic;
			reset: in std_logic);
	end component System;

  function to_string(x: string) return string is
      variable ret_val: string(1 to x'length);
      alias lx : string (1 to x'length) is x;
  begin  
      ret_val := lx;
      return(ret_val);
  end to_string;

  function to_std_logic_vector(x: bit_vector) return std_logic_vector is
    alias lx: bit_vector(1 to x'length) is x;
    variable ret_var : std_logic_vector(1 to x'length);
  begin
     for I in 1 to x'length loop
        if(lx(I) = '1') then
           ret_var(I) :=  '1';
        else 
           ret_var(I) :=  '0';
	end if;
     end loop;
     return(ret_var);
  end to_std_logic_vector;



begin
  clk <= not clk after 20 ns; -- assume 10ns clock.

  -- reset process
  process
  begin
     wait until clk = '1';
     reset <= '0';
     wait;
  end process;

  process 
    variable err_flag : boolean := false;
    File INFILE: text open read_mode is "~/Tracefiles/Input.txt";
    FILE OUTFILE: text  open write_mode is "~/Tracefiles/Output.txt";

    ---------------------------------------------------
    -- edit the next few lines to customize
    variable active: bit_vector (15 downto 0);
    variable op: bit_vector (15 downto 0);
    ----------------------------------------------------
    variable INPUT_LINE: Line;
    variable OUTPUT_LINE: Line;
    variable LINE_COUNT: integer := 0;
    
  begin

    wait until clk = '1';

    while not endfile(INFILE) loop
    	  wait until clk = '0';

        LINE_COUNT := LINE_COUNT + 1;
	      readLine (INFILE, INPUT_LINE);
        start <= '1';



        for I in 1 to 16 loop
          read(INPUT_LINE, active);
          din <= to_std_logic_vector(active);
          erdy <= '1';
	  

        -- wait till srdy becomes 0
         -- while (true) loop
           -- wait until clk = '1';
            --start <= '0';
            --if (srdy = '0') then
              --exit;
            --end if;
          --end loop;

         --  wait till srdy becomes 1
          while (true) loop
            wait until clk = '1';

            if (srdy = '1') then
		
              exit;
            end if;
          end loop;

        end loop;

        read(INPUT_LINE, op);
        -- spin waiting for done
        while (true) loop
           wait until clk = '1';
           if(done = '1') then
              exit;
           end if;
        end loop;


    	  if (dout /= to_std_logic_vector(op)) then
           write(OUTPUT_LINE,to_string("ERROR: in RESULT, line "));
           write(OUTPUT_LINE, LINE_COUNT);
           writeline(OUTFILE, OUTPUT_LINE);
           err_flag := true;
	else 
		write(OUTPUT_LINE,to_string("CORRECT: in RESULT, line "));
           write(OUTPUT_LINE, LINE_COUNT);
           writeline(OUTFILE, OUTPUT_LINE);
        end if;

    end loop;

    assert (err_flag) report "SUCCESS, all tests passed." severity note;
    assert (not err_flag) report "FAILURE, some tests failed." severity error;

    wait;
  end process;
  process(din,dout,start,done,erdy,srdy,clk,reset)
        variable scLine: Line;
        variable scIn: std_logic_vector(19 downto 0);
        FILE scFile: text  open write_mode is "in.txt";
    begin
        scIn(19) := start;
        scIn(18) := erdy;
        scIn(17) := reset;
        scIn(16) := clk;
        scIn(15 downto 0) := din;
        
        write(scLine,string'("SDR 20 TDI("));
        hwrite(scLine,scIn);
        write(scLine,string'(") 16 TDO("));
        hwrite(scLine,dout);
        
        if(done='1') then
            if(clk='1') then
                write(scLine,string'(") MASK(FFFF)"));
            else
                write(scLine,string'(") MASK(0000)"));
            end if;
        else
            write(scLine,string'(") MASK(0000)"));
        end if;
        
        writeline(scFile, scLine);
        write(scLine,string'("RUNTEST 1 MSEC"));
        writeline(scFile, scLine);
    end process;

  dut: System
    port map (
       Din => din,
       Dout => dout,
       start => start,
       done => done,
       erdy => erdy,
       srdy => srdy,
       clk => clk, reset => reset);

end Behave;

