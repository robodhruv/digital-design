library work;
use work.thepackage.all;
library ieee;
use ieee.std_logic_1164.all;

entity System is
	port ( din: in std_logic_vector(15 downto 0);
	dout: out std_logic_vector(15 downto 0);
	start: in std_logic;
	done: out std_logic;
	erdy: in std_logic;
	srdy: out std_logic;
	clk: in std_logic;
	reset: in std_logic);
end entity;

architecture behave of System is
	signal T0, T1, T2, T3, T4, T5 : std_logic;
	signal divDone, compareDone, count_var : std_logic;
begin
	control : GCD_controlpath port map (T0 => T0,T1 => T1,T2 => T2,T3 => T3,T4 => T4,T5 => T5,
						divDone => divDone, compareDone => compareDone, count_var =>count_var,
						start => start, srdy => srdy, erdy => erdy, done => done, reset => reset, clk => clk);
	data : GCD_datapath port map (T0 => T0,T1 => T1,T2 => T2,T3 => T3,T4 => T4,T5 => T5,
					divDone => divDone, compareDone => compareDone, count_var =>count_var,
					input => din, GCD => dout, clk => clk, reset => reset);
							

end behave;
