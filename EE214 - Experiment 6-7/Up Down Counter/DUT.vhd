library ieee;
use ieee.std_logic_1164.all;

entity DUT is
 port(input_vector: in std_ulogic_vector(2 downto 0);    
	output_vector: out std_ulogic_vector(0 downto 0));
end entity;


architecture WRAP of DUT is
  component UpDownCounter is
    port(r,x: in std_ulogic; w: out std_ulogic; clk: in std_ulogic);
  end component;

  signal r,x,w,clk: std_ulogic;

begin
   
  r <= input_vector(2);
  x <= input_vector(1);
  clk <= input_vector(0);

  output_vector(0) <= w;

  upd: UpDownCounter
		port map (r => r, x => x, w => w, clk => clk);

end WRAP;
