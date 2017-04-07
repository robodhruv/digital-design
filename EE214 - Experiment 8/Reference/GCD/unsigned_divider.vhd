library work;
use work.thepackage.all;
library ieee;
use ieee.std_logic_1164.all;


entity unsigned_divider is
	port(	clk: in std_logic;
			reset: in std_logic;
			-- the two inputs
			dividend: in std_logic_vector(15 downto 0);
			divisor : in std_logic_vector(15 downto 0);
			-- the next two implement a ready-ready
			-- protocol to start the division
			inputs_ready: in std_logic;
			divider_ready : out std_logic;
			-- the two outputs
			quotient : out std_logic_vector(15 downto 0);
			remainder : out std_logic_vector(15 downto 0);
			-- the output ready-ready handshake
			output_ready: out std_logic;
			output_accept: in std_logic	);
end entity unsigned_divider;

architecture Behave of unsigned_divider is
	signal T0, T1, T2, T3, T4, T5 : std_logic;
	signal start, done : std_logic;
	signal divShiftDone, compareDone, rightShiftDone : std_logic;
	signal random : std_logic := '0';
	
begin
	control : controlpath port map(T0 => T0, T1 => T1, T2 => T2, T3 => T3, T4 => T4, T5 => T5,
					divShiftDone => divShiftDone, compareDone=> compareDone, rightShiftDone => rightShiftDone,
					start => inputs_ready, done=> output_ready, clk=>clk, reset=>reset );
	datap : datapath port map(T0 => T0, T1 => T1, T2 => T2, T3 => T3, T4 => T4, T5 => T5,
					divShiftDone => divShiftDone, compareDone=> compareDone, rightShiftDone => rightShiftDone,
					dividend => dividend, divisor =>divisor, quotient =>quotient, remainder=>remainder,
					clk => clk, reset => reset );
	divider_ready <= random;	

end Behave;
