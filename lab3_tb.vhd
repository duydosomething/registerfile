-- Student name: What is your name?
-- Student ID number: What is your student id?
-- Student name: What is your partner's name?
-- Student ID number: What is your partner's student id?

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity lab3_tb is
  
end lab3_tb;

architecture behavioral of lab3_tb is
-- component declaration
component lab3
 port( clk, wr_en                    : in STD_LOGIC;
        rd_addr_1, rd_addr_2, wr_addr : in STD_LOGIC_VECTOR(4 downto 0);
        d_in                          : in STD_LOGIC_VECTOR(31 downto 0); 
        d_out_1, d_out_2              : out STD_LOGIC_VECTOR(31 downto 0)
  );
end component;



-- signal declaration
signal clk: std_logic := '0';
signal wr_en: STD_LOGIC := '1';

begin
	
end behavioral;