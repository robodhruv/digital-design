library work;
use work.thepackage.all;
library ieee;
use ieee.std_logic_1164.all;


entity GCD_datapath is
	port (
		T0,T1,T2,T3,T4,T5: in std_logic;
		divDone, compareDone, count_var : out std_logic;
		input : in std_logic_vector(15 downto 0);
		GCD: out std_logic_vector(15 downto 0);
		clk, reset: in std_logic
	     );
end entity GCD_datapath;

architecture Mixed of GCD_datapath is
    signal DDREG, DRREG: std_logic_vector(15 downto 0) := "0000000000000000";
    signal CREG: std_logic_vector(7 downto 0) := "10000000";
    signal RREG, QREG: std_logic_vector(15 downto 0);
	constant C16 : std_logic_vector(15 downto 0) := (others => '0');
	constant C7 : std_logic_vector(7 downto 0) := "00000000";

	signal DDREG_in, DRREG_in: std_logic_vector(15 downto 0);
	signal CREG_in : std_logic_vector(7 downto 0);
	signal rShiftCount : std_logic_vector(7 downto 0);

	signal compare : std_logic;
	signal random : std_logic;
	signal x1, x2, x3 : std_logic;
	
	begin

	--writing down the inputs to the controlpath
	count_var <= CREG(0);
	compareDone <= compare;

	--writing down the required registers	
	dr1 : dataregister generic map (data_width => 16)
						port map (Din => DDREG_in, Dout => DDREG, enable => x1, clk => clk);
	x1 <= (T1 or T5 or T4);
	dr2 : dataregister generic map (data_width => 16)
						port map (Din => DRREG_in, Dout => DRREG, enable => x2, clk => clk);
	x2 <= (T2 or T4);

	dr5 : dataregister generic map (data_width => 8)
						port map (Din => CREG_in, Dout => CREG, enable => x3, clk => clk);
	x3 <= (T0 or T5);

	--Now writing the logical calculators and calculations
	divider : unsigned_divider port map(clk => clk,
						reset => reset,
						dividend => DDREG,
						divisor  => DRREG,
						inputs_ready => T3,
						divider_ready => random,
						quotient => QREG,
						remainder => RREG,
						output_ready => divDone,
						output_accept => T4);
	comparator : comparer port map(a => C16, b => RREG, c => compare);           --will return 1 when RREG = 0
	rShiftCount <= '1' & CREG(7 downto 1);

	--Now writing down all the transfers
	DDREG_in <= input when (T1 = '1') else DRREG when ((T5 or T4) = '1') else  DDREG;
	DRREG_in <= input when (T2 = '1') else RREG when (T4 = '1') else DRREG;
	CREG_in <= C7 when (T0 = '1') else rShiftCount when (T5 = '1') else CREG;
	GCD <= DDREG;

end Mixed;


















	
