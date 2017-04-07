library work;
use work.thepackage.all;
library ieee;
use ieee.std_logic_1164.all;


entity GCD_controlpath is
	port (
		T0,T1,T2,T3,T4,T5: out std_logic;
		divDone, compareDone, count_var: in std_logic;
		start: in std_logic;
		srdy : out std_logic;
		erdy : in std_logic;
		done : out std_logic;
		clk, reset: in std_logic
	     );
end entity GCD_controlpath;

architecture Behave of GCD_controlpath is
	type FsmState is ( phi, input1, input2, doDivide, checkRem, donestate);
	signal fsm_state : FsmState;
begin

   process(fsm_state, start, clk, reset)
      variable next_state: FsmState;
      variable Tvar: std_logic_vector(0 to 5);
      variable done_var: std_logic;
      variable srdy_var : std_logic;
   begin
       -- defaults
       Tvar := (others => '0');
       done_var := '0';
       next_state := fsm_state;
       srdy_var := '0';

       case fsm_state is 
          when phi =>
               if(start = '1') then
                  next_state := input1;
                  Tvar(0) := '1';
		  srdy_var := '1';
               end if;
          when input1 => 
		if(erdy = '1') then
			Tvar(1) := '1';
			next_state := input2;
			srdy_var := '1';
		else
			srdy_var := '1';
			next_state := input1;
		end if;
	  when input2 =>
		if (count_var = '1') then
			next_state := donestate;
		elsif (erdy = '1') then
			Tvar(2) := '1';
			next_state := doDivide;
			--srdy_var := '1';
		else 
			srdy_var := '1';
			next_state := input2;
	  	end if;
	  when doDivide =>
		Tvar(3) := '1';                   --start div command
		if (divDone = '1') then
			next_state := checkRem;
		else
			next_state := doDivide;
		end if;
	  when checkRem =>
		if (compareDone = '1') then
			next_state := input2;
			srdy_var := '1';
			Tvar(5) := '1';
		else
			Tvar(4) := '1';
			next_state := doDivide;
		end if;
          when donestate =>
               done_var := '1';
               next_state := phi;
     end case;

     T0 <= Tvar(0); T1 <= Tvar(1); T2 <= Tvar(2); T3 <= Tvar(3); T4 <= Tvar(4); T5 <= Tvar(5);
     done <= done_var;
     srdy <= srdy_var;
  
     if(clk'event and (clk = '1')) then
	if(reset = '1') then
             fsm_state <= phi;
        else
             fsm_state <= next_state;
        end if;
     end if;
   end process;
end Behave;




















