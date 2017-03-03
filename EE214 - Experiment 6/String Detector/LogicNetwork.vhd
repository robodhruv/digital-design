library ieee;
use ieee.std_logic_1164.all;
library work;
use work.EE224_Components.all;

entity UpDownCounter is
  port(r,x: in std_ulogic; w: out std_ulogic; clk: in std_ulogic);
end entity;
architecture LogicNetwork of UpDownCounter is
  signal q1, q0, nq1, nq0: std_ulogic;
  signal u,v,m,n,p,t,rb,e,f,g,h: std_ulogic;
begin

  G1: nor2 port map (q1,q0,u);
  G2: nand2 port map (q0,p,m);
  G3: nand2 port map (q1, v, n);
  G4: nand2 port map (m,n,w);

  G5: nor2 port map (r,x,p);
  G6: nand2 port map (u,p,e);
  G7: nand2 port map (e,f,nq1);
  G8: nand2 port map (q0,v,f);
  
  G9: inverter port map (r,rb);
  G10: nand2 port map (rb,x,t);
  G11: nand2 port map (q1,p,g);
  G12: nand2 port map (u,v,h);
  
  G13: nand2 port map (g,h,nq0);
  G14: inverter port map (t,v);  

  -- the DFF's
  d1: DFF port map (d => nq1, clk => clk, q => q1);
  d0: DFF port map (d => nq0, clk => clk, q => q0);
end LogicNetwork;

