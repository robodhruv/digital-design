library work;
use work.thepackage.all;
library ieee;
use ieee.std_logic_1164.all;

entity datapath is
	port (
		T0,T1,T2,T3,T4,T5: in std_logic;
		divShiftDone, compareDone, rightShiftDone : out std_logic;
		Dividend , Divisor : in std_logic_vector(15 downto 0);
		Quotient, Remainder: out std_logic_vector(15 downto 0);
		clk, reset: in std_logic
	     );
end entity datapath;

architecture Mixed of datapath is
    signal DDREG, DRREG: std_logic_vector(15 downto 0) := "0000000000000001";
    signal CREG: std_logic_vector(15 downto 0) := "0000000000000001";
    signal RREG, QREG: std_logic_vector(15 downto 0);
	constant C16 : std_logic_vector(15 downto 0) := (others => '0');
	constant C15 : std_logic_vector(15 downto 0) := "0000000000000001";

	signal DDREG_in, DRREG_in, QREG_in, CREG_in : std_logic_vector(15 downto 0);
	signal subtractOUT, lShiftDiv, lShiftCount, rShiftDiv, rShiftCount : std_logic_vector(15 downto 0);

	signal compare : std_logic;
	--signal arstd_logic1, arstd_logic2 : std_logic_vector(15 downto 0);
	signal x1, x2, x3 : std_logic;
	
	begin

	--writing down the inputs to the controlpath
	divShiftDone <= DRREG(15);
	rightShiftDone <= CREG(0);
	compareDone <= (compare and T2) ;

	--writing down the required registers	
	dr1 : dataregister generic map (data_width => 16)
						port map (Din => DDREG_in, Dout => DDREG, enable => x1, clk => clk);
	x1 <= T0 or T4;
	dr2 : dataregister generic map (data_width => 16)
						port map (Din => DRREG_in, Dout => DRREG, enable => x2, clk => clk);
	x2 <= T0 or T1 or T3;
	dr3 : dataregister generic map (data_width => 16)
						port map (Din => QREG_in, Dout => QREG, enable => x3, clk => clk);
	x3 <= T0 or T5;
	--dr4 : dataregister generic map (data_width => 16)
	--					port map (Din => RREG_in, Dout => RREG, enable => (T0 or T5), clk => clk);
	dr5 : dataregister generic map (data_width => 16)
						port map (Din => CREG_in, Dout => CREG, enable => x2, clk => clk);

	--Now writing the logical calculators and calculations
	subtract : sixteenBitSubtract port map(a => DDREG, b => DRREG, y => subtractOUT);
	comparator : comparer port map(a => DDREG, b => DRREG, c => compare);                      --if compareDone, goto subtract in control
	lShiftDiv <= DRREG(14 downto 0) & '0';
	rShiftDiv <= '0' & DRREG(15 downto 1);
	lShiftCount <= CREG(14 downto 0) & '0';
	rShiftCount <= '0' & CREG(15 downto 1);

	--Now writing down all the transfers
	DDREG_in <= Dividend when (T0 = '1') else subtractOUT;
	DRREG_in <= Divisor when (T0 = '1') else lShiftDiv when (T1 = '1') else rShiftDiv when (T3 = '1') else DRREG;
	QREG_in <= C16 when (T0 = '1') else (QREG(14 downto 0) & compare);
	CREG_in <= C15 when (T0 = '1') else lShiftCount when (T1 = '1') else rShiftCount when (T3 = '1') else CREG;
	Remainder <= DDREG;  
	Quotient <= QREG; 

end Mixed;


















	
