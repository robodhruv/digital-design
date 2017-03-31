library std;
use std.standard.all;
library work;
use work.EE224_Components.all;
library ieee;
use ieee.std_logic_1164.all;

entity reg4 is
	port (DIN: in std_ulogic_vector(3 downto 0);
		reset, enable, clk: in std_ulogic;
		DOUT: out std_ulogic_vector(3 downto 0));
end entity;

architecture register4 of reg4 is
	signal din_b, dout_b: std_ulogic_vector(15 downto 0);
	component reg16 is
		port (DIN: in std_ulogic_vector(15 downto 0);
			reset, enable, clk: in std_ulogic;
			DOUT: out std_ulogic_vector(15 downto 0));
	end component;
	
begin
	din_b(15 downto 4) <= "000000000000";
	din_b(3 downto 0) <= DIN;

	reg_stepdown: reg16 port map (din_b, reset, enable, clk, dout_b);

	DOUT <= dout_b(3 downto 0);
end register4;