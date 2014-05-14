-- Student name: your name goes here
-- Student ID number: your student id # goes here
-- Student name: your partner's name goes here
-- Student ID number: your partner's student id # goes here

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
entity RegFile is 
  port(
        clk, wr_en                    : in STD_LOGIC;
        rd_addr_1, rd_addr_2, wr_addr : in STD_LOGIC_VECTOR(4 downto 0);
        d_in                          : in STD_LOGIC_VECTOR(31 downto 0); 
        d_out_1, d_out_2              : out STD_LOGIC_VECTOR(31 downto 0)
  );
end RegFile;

architecture behavioral of RegFile is
-- signal declaration
type RegFile is array(0 to 31) of STD_LOGIC_VECTOR(31 downto 0);
signal registers: RegFile;

begin process(clk)
begin if(rising_edge(clk)) then
  if(wr_en = '1') then
    registers(TO_INTEGER(UNSIGNED(wr_addr))) <= d_in;
  end if;
end if;
end process;

d_out_1 <= registers(TO_INTEGER(UNSIGNED(rd_addr_1)));
d_out_2 <= registers(TO_INTEGER(UNSIGNED(rd_addr_2)));
  
end behavioral;
