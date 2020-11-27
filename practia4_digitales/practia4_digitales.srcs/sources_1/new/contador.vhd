----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.11.2020 18:43:33
-- Design Name: 
-- Module Name: contador - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity contador is
    generic (
        N_BITS: integer := 3

    );
    port (
        clk : in std_logic;
        rst : in std_logic;

        Q   : inout std_logic_vector((N_BITS-1) downto 0)
    );
end contador;

architecture behavioral of contador is

begin

process (clk) begin
    if(rising_edge(clk)) then
        if(rst='1') then

            Q <= (others => '0');
        else
            Q <= std_logic_vector(unsigned(Q) + 1);

        end if;
    end if;
end process;

end behavioral;




