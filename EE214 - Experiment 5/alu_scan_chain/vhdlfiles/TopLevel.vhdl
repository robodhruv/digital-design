library ieee;
use ieee.std_logic_1164.all;

--TCLK	Input	PIN_23	1	3.3-V LVTTL (default)		16mA (default)		
--TDI	Input	PIN_5	1	3.3-V LVTTL (default)		16mA (default)		
--TDO	Output	PIN_3	1	3.3-V LVTTL (default)		16mA (default)		
--TMS	Input	PIN_7	1	3.3-V LVTTL (default)		16mA (default)		
--TRST	Input	PIN_21	1	3.3-V LVTTL (default)		16mA (default)		
								

entity TopLevel is
  port (
    TDI : in std_logic;  -- Test Data In
    TDO : out std_logic;  -- Test Data Out
    TMS : in std_logic;  -- TAP controller signal
    TCLK : in std_logic;  -- Test clock
    TRST : in std_logic  -- Test reset
  );
end TopLevel; 

architecture Struct of TopLevel is
   -- declare DUT component
	component alu is 
		port( X,Y : in std_logic_vector(7 downto 0); x0,x1 : in std_logic ; Z : out std_logic_vector(7 downto 0));
	end component;
	
   -- declare Scan-chain component.
   component Scan_Chain is
  	generic (
    	in_pins : integer; -- Number of input pins
    	out_pins : integer -- Number of output pins
  	);
  	port (
    	TDI : in std_logic;  -- Test Data In
    	TDO : out std_logic;  -- Test Data Out
    	TMS : in std_logic;  -- TAP controller signal
    	TCLK : in std_logic;  -- Test clock
    	TRST : in std_logic;  -- Test reset
    	dut_in : out std_logic_vector(in_pins-1 downto 0);  -- Input for the DUT
    	dut_out : in std_logic_vector(out_pins-1 downto 0)  -- Output from the DUT
  	);
   end component;
   -- declare I/O signals to DUT component
	signal X,Y : std_logic_vector(7 downto 0); 
	signal x0,x1 : std_logic ; 
	signal Z :  std_logic_vector(7 downto 0);
   -- declare signals to Scan-chain component.
   signal scan_chain_parallel_in : std_logic_vector(17 downto 0);
   signal scan_chain_parallel_out: std_logic_vector(7 downto 0);
begin
   scan_instance: Scan_Chain
       generic map(in_pins => 18, out_pins => 8)
       port map (TDI => TDI,
                  TDO => TDO,
                  TMS => TMS,
                  TCLK => TCLK,
                  TRST => TRST,
                  dut_in => scan_chain_parallel_in,
                  dut_out => scan_chain_parallel_out);

  dut: alu 
     port map( X => X, Y => Y , x0 => x0 , x1 => x1,
              Z => Z);

   -- connections between DUT and Scan_Chain
	x1 <= scan_chain_parallel_in(17);
	x0 <= scan_chain_parallel_in(16);
	X <= scan_chain_parallel_in(15 downto 8);
   Y <= scan_chain_parallel_in(7 downto 0);
  
   scan_chain_parallel_out <= Z;
end Struct;
