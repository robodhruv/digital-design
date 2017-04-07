library work;
use work.thepackage.all;
library ieee;
use ieee.std_logic_1164.all;


entity controlpath is
	port (
		T0,T1,T2,T3,T4,T5: out std_logic;
		divShiftDone, compareDone, rightShiftDone: in std_logic;
		start: in std_logic;
		done : out std_logic;
		clk, reset: in std_logic
	     );
end entity controlpath;

architecture Behave of controlpath is
	type FsmState is ( phi, leftshift, comparing, subtracting, doing, donestate);
	signal fsm_state : FsmState;
begin

   process(fsm_state, start, divShiftDone, compareDone, rightShiftDone, clk, reset)
      variable next_state: FsmState;
      variable Tvar: std_logic_vector(0 to 5);
      variable done_var: std_logic;
   begin
       -- defaults
       Tvar := (others => '0');
       done_var := '0';
       next_state := fsm_state;

       case fsm_state is 
          when phi =>
               if(start = '1') then
                  next_state := leftshift;
                  Tvar(0) := '1';                                       --initialize all registers here
               end if;
          when leftshift =>
		if(divShiftDone = '1') then
		next_state := comparing;
		--Tvar(2) := '1';
		else 
		Tvar(1) := '1';
		end if;
          when comparing =>
		Tvar(2) := '1';
		if(compareDone = '1') then
			next_state := subtracting;
			Tvar(5) := '1';			
		else 
			next_state := doing;
			Tvar(5) := '1';	
		end if;
	  when subtracting =>
		Tvar(4) := '1';
		next_state := doing;
          when doing => 
		if(rightShiftDone = '1') then
			next_state := donestate;
		else 
			next_state := comparing;
			Tvar(3) := '1';
			--Tvar(2) := '1';
		end if;
          when donestate =>
               done_var := '1';
               next_state := phi;
     end case;

     T0 <= Tvar(0); T1 <= Tvar(1); T2 <= Tvar(2); T3 <= Tvar(3); T4 <= Tvar(4); T5 <= Tvar(5);
     done <= done_var;
  
     if(clk'event and (clk = '1')) then
	if(reset = '1') then
             fsm_state <= phi;
        else
             fsm_state <= next_state;
        end if;
     end if;
   end process;
end Behave;
