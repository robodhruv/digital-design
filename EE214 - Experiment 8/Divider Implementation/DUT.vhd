library ieee;
use ieee.std_logic_1164.all;

entity DUT is
 port(input_vector: in std_ulogic_vector(35 downto 0);    
	output_vector: out std_ulogic_vector(33 downto 0));
end entity;

architecture WRAP of DUT is
	component unsigned_divider is
		port(clk: in std_ulogic;
			reset: in std_ulogic;
			-- the two inputs
			dividend: in std_ulogic_vector(15 downto 0);
			divisor : in std_ulogic_vector(15 downto 0);
			-- the next two implement a ready-ready
			-- protocol to start the division
			inputs_ready: in std_ulogic;
			divider_ready : out std_ulogic;
			-- the two outputs
			quotient : out std_ulogic_vector(15 downto 0);
			remainder : out std_ulogic_vector(15 downto 0);
			-- the output ready-ready handshake
			output_ready: out std_ulogic;
			output_accept: in std_ulogic);
	end component;
begin
	
	divide: unsigned_divider port map (
		clk => input_vector(34),
		reset => input_vector(35),
		dividend => input_vector(33 downto 18),
		divisor => input_vector(17 downto 2),
		inputs_ready => input_vector(1),
		output_accept => input_vector(0),
		divider_ready => output_vector(33),
		quotient => output_vector(32 downto 17),
		remainder => output_vector(16 downto 1),
		output_ready => output_vector(0));

end WRAP;
