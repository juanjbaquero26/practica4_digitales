----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.11.2020 18:27:04
-- Design Name: 
-- Module Name: Circuito_TB - Behavioral
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

use STD.textio.all;
use IEEE.std_logic_textio.all;

library UNISIM;
use UNISIM.VComponents.all;

entity testb_div is
end testb_div;

architecture Behavioral of testb_div is
    component testbench
    port(
        clk1: in std_logic;
        rst_reloj: in std_logic;
        out_clk: inout std_logic_vector(2 downto 0)
        );
    end component;
    Signal clk : std_logic :='0'; 
    Signal rst : std_logic := '0'; 
    Signal salida : std_logic_vector (2 downto 0) := "000";

    begin
    uut1:  testbench PORT MAP 
     (
        clk1 => clk,
        rst_reloj => rst,
        out_clk => salida
     );	
	clk <= not clk after 20 ns;
--	process
--	     variable cout : std_logic; 
--	begin
--	for cont in 0 to 1000000 loop
--	if cont < 1000000 then

--	end if;
--end loop;
--end process;
end Behavioral;