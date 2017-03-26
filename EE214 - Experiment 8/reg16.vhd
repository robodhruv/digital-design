library std;
use std.standard.all;
library work;
use work.EE224_Components.all;
library ieee;
use ieee.std_logic_1164.all;

entity reg16 is
	port (DIN: in std_ulogic_vector(15 downto 0);
		reset, enable, clk: in std_ulogic;
		DOUT: out std_ulogic_vector(15 downto 0));
end entity;

architecture register16 of reg16 is
	signal n_dout: std_ulogic_vector(15 downto 0);
	signal a: std_ulogic;

	component mux16 is
		port(mx1, my1: in std_ulogic_vector(15 downto 0);
			mo1: out std_ulogic_vector(15 downto 0);
			sel1: in std_ulogic);
	end component;
begin
	--dff0: DFFi port map (d => n_dout(0), clk => clk, q => DOUT(0), r => reset);
	--dff1: DFFi port map (d => n_dout(1), clk => clk, q => DOUT(1), r => reset);
	--dff2: DFFi port map (d => n_dout(2), clk => clk, q => DOUT(2), r => reset);
	--dff3: DFFi port map (d => n_dout(3), clk => clk, q => DOUT(3), r => reset);
	--dff4: DFFi port map (d => n_dout(4), clk => clk, q => DOUT(4), r => reset);
	--dff5: DFFi port map (d => n_dout(5), clk => clk, q => DOUT(5), r => reset);
	--dff6: DFFi port map (d => n_dout(6), clk => clk, q => DOUT(6), r => reset);
	--dff7: DFFi port map (d => n_dout(7), clk => clk, q => DOUT(7), r => reset);
	--dff8: DFFi port map (d => n_dout(8), clk => clk, q => DOUT(8), r => reset);
	--dff9: DFFi port map (d => n_dout(9), clk => clk, q => DOUT(9), r => reset);
	--dff10: DFFi port map (d => n_dout(10), clk => clk, q => DOUT(10), r => reset);
	--dff11: DFFi port map (d => n_dout(11), clk => clk, q => DOUT(11), r => reset);
	--dff12: DFFi port map (d => n_dout(12), clk => clk, q => DOUT(12), r => reset);
	--dff13: DFFi port map (d => n_dout(13), clk => clk, q => DOUT(13),r => reset);
	--dff14: DFFi port map (d => n_dout(14), clk => clk, q => DOUT(14), r => reset);
	--dff15: DFFi port map (d => n_dout(15), clk => clk, q => DOUT(15), r=> reset);
	
	---- Enable Feature
	--enable_check: mux16 port map (DIN, DOUT, n_dout, enable);

	process(clk)
	begin 
	  if(clk'event and clk = '1') then
	    if enable = '1' then
	      DOUT <= DIN;
	    end if;
	  end if;
	end process;
end register16;