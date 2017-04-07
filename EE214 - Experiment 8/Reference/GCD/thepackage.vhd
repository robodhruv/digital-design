library ieee;
use ieee.std_logic_1164.all;


package thepackage is	
	component comparer is
		port(a, b : in std_logic_vector(15 downto 0);
			c : out std_logic);
	end component comparer;

	component controlpath is
		port (
			T0,T1,T2,T3,T4,T5: out std_logic;
			divShiftDone, compareDone, rightShiftDone: in std_logic;
			start: in std_logic;
			done : out std_logic;
			clk, reset: in std_logic
		     );
	end component controlpath;

	component datapath is
		port (
			T0,T1,T2,T3,T4,T5: in std_logic;
			divShiftDone, compareDone, rightShiftDone : out std_logic;
			Dividend , Divisor : in std_logic_vector(15 downto 0);
			Quotient, Remainder: out std_logic_vector(15 downto 0);
			clk, reset: in std_logic
		     );
	end component datapath;

	component dataregister is
		generic (data_width:integer);
		port (Din: in std_logic_vector(data_width-1 downto 0);
		      Dout: out std_logic_vector(data_width-1 downto 0);
		      clk, enable: in std_logic);
	end component dataregister;

	component bitAdder is
		port(x, y, cin: in std_logic;
			cout, s: out std_logic);
	end component bitAdder;

	component sixteenBitSubtract is
		port (a,b : in std_logic_vector(15 downto 0);
			y : out std_logic_vector(15 downto 0));
	end component sixteenBitSubtract;
	
	component unsigned_divider is
		port(	clk: in std_logic;
				reset: in std_logic;
				dividend: in std_logic_vector(15 downto 0);
				divisor : in std_logic_vector(15 downto 0);
				inputs_ready: in std_logic;
				divider_ready : out std_logic;
				quotient : out std_logic_vector(15 downto 0);
				remainder : out std_logic_vector(15 downto 0);
				output_ready: out std_logic;
				output_accept: in std_logic	);
	end component unsigned_divider;

	component GCD_controlpath is
		port (
		T0,T1,T2,T3,T4,T5: out std_logic;
		divDone, compareDone, count_var: in std_logic;
		start: in std_logic;
		srdy : out std_logic;
		erdy : in std_logic;
		done : out std_logic;
		clk, reset: in std_logic
	     );
	end component GCD_controlpath;

	component GCD_datapath is
		port (
		T0,T1,T2,T3,T4,T5: in std_logic;
		divDone, compareDone, count_var : out std_logic;
		input : in std_logic_vector(15 downto 0);
		GCD: out std_logic_vector(15 downto 0);
		clk, reset: in std_logic
	     );
	end component GCD_datapath;

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

end thepackage;




















