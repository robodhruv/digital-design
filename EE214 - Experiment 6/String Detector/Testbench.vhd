library std;
use std.textio.all;
library ieee;
use ieee.std_logic_1164.all;

entity Testbench is
end entity;
architecture Behave of Testbench is

  ----------------------------------------------------------------
  --  edit the following lines to set the number of i/o's of your
  --  DUT.
  ----------------------------------------------------------------
  constant number_of_inputs  : integer := 7;  -- # input bits to your design.
  constant number_of_outputs : integer := 1;  -- # output bits from your design.

  -- component port widths..
  component DUT is
   port(input_vector: in std_ulogic_vector(number_of_inputs-1 downto 0);    
       	output_vector: out std_ulogic_vector(number_of_outputs-1 downto 0));
  end component;

  -- end editing.
  ----------------------------------------------------------------
  ----------------------------------------------------------------

  signal input_vector  : std_ulogic_vector(number_of_inputs-1 downto 0);
  signal output_vector : std_ulogic_vector(number_of_outputs-1 downto 0);

  -- create a constrained string outof
  function to_string(x: string) return string is
      variable ret_val: string(1 to x'length);
      alias lx : string (1 to x'length) is x;
  begin  
      ret_val := lx;
      return(ret_val);
  end to_string;

  function to_std_ulogic_vector(x: bit_vector) return std_ulogic_vector is
      variable ret_val: std_ulogic_vector(1 to x'length);
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
  end to_std_ulogic_vector;

  function to_bit_vector(x: std_ulogic_vector) return bit_vector is
      variable ret_val: bit_vector(1 to x'length);
      alias lx: std_ulogic_vector(1 to x'length) is x;
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
  process 
    variable err_flag : boolean := false;
    File INFILE: text open read_mode is "Tracefiles/tracefile.txt";
    FILE OUTFILE: text  open write_mode is "Tracefiles/outputs.txt";

    ---------------------------------------------------
    -- edit the next two lines to customize
    ---------------------------------------------------
    variable input_vector_var: bit_vector (number_of_inputs-1 downto 0);
    variable output_vector_var: bit_vector (number_of_outputs-1 downto 0);
    variable expected_output_vector_var: bit_vector (number_of_outputs-1 downto 0);
    variable output_mask_var: bit_vector (number_of_outputs-1 downto 0);
    variable output_comp_var: bit_vector (number_of_outputs-1 downto 0);
    constant ZZZZ : bit_vector(number_of_outputs-1 downto 0) := (others => '0');
    ----------------------------------------------------

    variable INPUT_LINE: Line;
    variable OUTPUT_LINE: Line;
    variable LINE_COUNT: integer := 0;

    
  begin
    while not endfile(INFILE) loop 
	  -- will read a new line every 5ns, apply input,
	  -- wait for 1 ns for circuit to settle.
	  -- read output.


          LINE_COUNT := LINE_COUNT + 1;


	  -- read input at current time.
	  readLine (INFILE, INPUT_LINE);
          read (INPUT_LINE, input_vector_var);
          read (INPUT_LINE, expected_output_vector_var);
          read (INPUT_LINE, output_mask_var);
	
	  -- apply input.
          input_vector <= to_std_ulogic_vector(input_vector_var);

	  -- wait for the circuit to settle 
	  wait for 1 ns;

	  -- convert to bit.
          output_vector_var := to_bit_vector(output_vector);

	  -- check output.
          output_comp_var := (output_mask_var and (output_vector_var xor expected_output_vector_var));
	  if (output_comp_var  /= ZZZZ) then
             write(OUTPUT_LINE,to_string("ERROR: line "));
             write(OUTPUT_LINE, LINE_COUNT);
             writeline(OUTFILE, OUTPUT_LINE);
             err_flag := true;
          end if;

          write(OUTPUT_LINE, input_vector_var);
          write(OUTPUT_LINE, to_string(" "));
          write(OUTPUT_LINE, output_mask_var);
          write(OUTPUT_LINE, to_string(" "));
          write(OUTPUT_LINE, output_vector_var);
          writeline(OUTFILE, OUTPUT_LINE);

	  -- advance time by 4 ns.
	  wait for 4 ns;
    end loop;

    assert (err_flag) report "SUCCESS, all tests passed." severity note;
    assert (not err_flag) report "FAILURE, some tests failed." severity error;

    wait;
  end process;

  dut_instance: DUT 
     	port map(input_vector => input_vector, output_vector => output_vector);

end Behave;
