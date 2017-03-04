library ieee;
use ieee.std_logic_1164.all;

entity DUT is
 port(input_vector: in std_ulogic_vector(6 downto 0);    
	output_vector: out std_ulogic_vector(0 downto 0));
end entity;


architecture WRAP of DUT is
component bomber is
  port(x: in std_ulogic_vector(4 downto 0);
	r, clk: in std_ulogic;
	s: out std_ulogic);
end component;

component gunman is
	port(x: in std_ulogic_vector(4 downto 0);
		r, clk: in std_ulogic;
		s: out std_ulogic);
end component;

component knife_hurler is
	port(x: in std_ulogic_vector(4 downto 0);
		r, clk: in std_ulogic;
		s: out std_ulogic);
end component;

  signal r, bs, gs, ks, ts, clk: std_ulogic;
  signal x: std_ulogic_vector(4 downto 0);

begin
   
	r <= input_vector(6);	
	clk <= input_vector(5);

	output_vector(0) <= bs or gs or ks or ts;
	x <= input_vector(4 downto 0);
	
	B: bomber port map (r => r, x => x, s => bs, clk => clk);
	G: gunman port map (r => r, x => x, s => gs, clk => clk);
	K: knife_hurler port map (r => r, x => x, s => ks, clk => clk);

end WRAP;
