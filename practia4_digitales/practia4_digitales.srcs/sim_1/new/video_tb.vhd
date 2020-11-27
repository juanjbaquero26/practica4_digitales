----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.11.2020 11:00:26
-- Design Name: 
-- Module Name: video_tb - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity video_tb is
--  Port ( );
end video_tb;

architecture Behavioral of video_tb is
    component testbench
    port(
        clk1: in std_logic;
        rst_reloj: in std_logic;
        out_clk: inout std_logic_vector(2 downto 0)
        );
    end component;
    Signal clk : std_logic :='0'; 
    Signal rst : std_logic := '0'; 
    Signal salida : std_logic_vector (2 downto 0) := "000";begin


end Behavioral;
