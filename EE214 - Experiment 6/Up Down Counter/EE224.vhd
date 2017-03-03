library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

package EE224_Components is
   component INVERTER is
	port (a: in std_logic; b : out std_logic);
   end component;
   component AND2 is
	port (a, b: in std_logic; c : out std_logic);
   end component;
   component NAND2 is
	port (a, b: in std_logic; c : out std_logic);
   end component;
   component OR2 is
	port (a, b: in std_logic; c : out std_logic);
   end component;
   component NOR2 is
	port (a, b: in std_logic; c : out std_logic);
   end component;
   component positive_d_latch is
	port (d, clk: in std_logic; q : out std_logic);
   end component;
   component negative_d_latch is
	port (d, clk: in std_logic; q : out std_logic);
   end component;
   component DFF is
	port (d, clk: in std_logic; q : out std_logic);
   end component;

end EE224_Components;

library ieee;
use ieee.std_logic_1164.all;
entity INVERTER is
  port (a: in std_ulogic;
         b: out std_ulogic);
end entity INVERTER;
architecture Behave of INVERTER is
begin
  b <= not a;
end Behave;

library ieee;
use ieee.std_logic_1164.all;
entity AND2 is
  port (a, b: in std_ulogic;
         c: out std_ulogic);
end entity AND2;
architecture Behave of AND2 is
begin
  c <= a and b;
end Behave;

library ieee;
use ieee.std_logic_1164.all;
entity NAND2 is
  port (a, b: in std_ulogic;
         c: out std_ulogic);
end entity NAND2;
architecture Behave of NAND2 is
begin
  c <= not(a and b);
end Behave;

library ieee;
use ieee.std_logic_1164.all;
entity OR2 is
  port (a, b: in std_ulogic;
         c: out std_ulogic);
end entity OR2;
architecture Behave of OR2 is
begin
  c <= a or b;
end Behave;

library ieee;
use ieee.std_logic_1164.all;
entity NOR2 is
  port (a, b: in std_ulogic;
         c: out std_ulogic);
end entity NOR2;
architecture Behave of NOR2 is
begin
  c <= not (a or b);
end Behave;

library ieee;
use ieee.std_logic_1164.all;
use work.EE224_Components.all; 
entity positive_d_latch is
  port (d, clk: in std_ulogic; q: out std_ulogic);
end entity positive_d_latch;
architecture Equations of positive_d_latch is
   signal qsig: std_logic;
begin
   -- q cannot be read.
   qsig    <= (d and clk) or (qsig and (not clk));
   q <= qsig;
end Equations;

library ieee;
use ieee.std_logic_1164.all;
use work.EE224_Components.all; 
entity negative_d_latch is
  port (d, clk: in std_ulogic; q: out std_ulogic);
end entity negative_d_latch;
architecture Equations of negative_d_latch is
   signal qsig: std_logic;
begin
   qsig    <= (d and (not clk)) or (qsig and clk);
   q <= qsig;
end Equations;

library ieee;
use ieee.std_logic_1164.all;
use work.EE224_Components.all; 
entity DFF is
  port (d, clk: in std_ulogic; q: out std_ulogic);
end entity DFF;
architecture Struct of DFF is
   signal U: std_logic;
begin
   master: negative_d_latch
            port map (d => d, clk => clk, q => U);
   slave: positive_d_latch
            port map (d => U, clk => clk, q => q);
end Struct;
