library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_textio.all;
library std;
use std.textio.all;

library work;
use work.STD_LOGIC_TEXTIO.all;

entity Testbench is
end entity;

architecture Behave of Testbench is
    signal din, dout: std_logic_vector(15 downto 0);
    signal start, done, erdy, srdy: std_logic;
    
    signal clk: std_logic := '0';
    signal reset: std_logic := '1';
    signal finished: std_logic := '0';
    
    component System is
        port( 
            din: in std_logic_vector(15 downto 0);
            dout: out std_logic_vector(15 downto 0);
            start: in std_logic;
            done: out std_logic;
            erdy: in std_logic;
            srdy: out std_logic;
            clk: in std_logic;
            reset: in std_logic);
    end component;

begin
    clk <= not clk after 10 ns when (finished='0') else '0'; -- assume 20ns clock.

    -- reset process
    process
    begin
        wait until clk = '1';
        reset <= '0';
        wait;
    end process;

    process 
        variable err_flag : boolean := false;
        File INFILE: text open read_mode is "/home/dhruv-shah/Tracefiles/TRACEFILE.txt";
        FILE OUTFILE: text  open write_mode is "/home/dhruv-shah/Desktop/IIT Bombay 2015-19/Sem 4/EE214/EE214 - Experiment 8/Reference/GCD/Tracefiles/OUTPUTS.txt";
        
        ---------------------------------------------------
        -- DUT variables
        variable din_var, dout_var: std_logic_vector(15 downto 0);
        ----------------------------------------------------
        
        variable INPUT_LINE: Line;
        variable OUTPUT_LINE: Line;
        variable LINE_COUNT: integer := 0;
        
    begin
        wait until clk = '1';
        
        while not endfile(INFILE) loop 
            wait until clk = '0';
            LINE_COUNT := LINE_COUNT + 1;
            readLine (INFILE, INPUT_LINE);
            
            --start the gcd system
            start <= '1';
            wait until clk='1';
            
            for i in 1 to 8 loop
                wait until clk = '0';
                read (INPUT_LINE, din_var);
                
                --------------------------------------
                -- from input-vector to DUT inputs
                din <= din_var;
                --------------------------------------
                
                -- set inputs ready
                erdy <= '1';
                
                -- wait for gcd system to accept the input
                while(true) loop
                    wait until clk='1';
                    if(srdy='1') then
                        erdy <= '0';
                        wait until clk='1';
                        exit;
                    end if;
                end loop;
            end loop;
            
            read(INPUT_LINE, dout_var);
            
            -- wait for gcd system to finish
            while(true) loop
                wait until clk='1';
                if(done='1') then
                    start <= '0';
                    wait until clk='1';
                    exit;
                end if;
            end loop;
            
            --------------------------------------
            -- check outputs. 
            write(OUTPUT_LINE,dout);
            writeline(OUTFILE,OUTPUT_LINE);
            if (dout /= dout_var) then
                write(OUTPUT_LINE,string'("ERROR: in line "));
                write(OUTPUT_LINE, LINE_COUNT);
                writeline(OUTFILE, OUTPUT_LINE);
                err_flag := true;
            end if;
            --------------------------------------
        end loop;
        
        assert (err_flag) report "SUCCESS, all tests passed." severity note;
        assert (not err_flag) report "FAILURE, some tests failed." severity error;
        
        finished <= '1';
        wait;
    end process;
	 
	process(din,dout,start,done,erdy,srdy,clk,reset)
        variable scLine: Line;
        variable scIn: std_logic_vector(19 downto 0);
        FILE scFile: text  open write_mode is "in.txt";
    begin
        scIn(19) := start;
        scIn(18) := erdy;
        scIn(17) := reset;
        scIn(16) := clk;
        scIn(15 downto 0) := din;
        
        write(scLine,string'("SDR 20 TDI("));
        hwrite(scLine,scIn);
        write(scLine,string'(") 16 TDO("));
        hwrite(scLine,dout);
        
        if(done='1') then
            if(clk='1') then
                write(scLine,string'(") MASK(FFFF)"));
            else
                write(scLine,string'(") MASK(0000)"));
            end if;
        else
            write(scLine,string'(") MASK(0000)"));
        end if;
        
        writeline(scFile, scLine);
        write(scLine,string'("RUNTEST 1 MSEC"));
        writeline(scFile, scLine);
    end process;

    dut: System port map(
        din => din, dout => dout,
        start => start, done => done, erdy => erdy, srdy => srdy,
        clk => clk, reset => reset);

end Behave;
