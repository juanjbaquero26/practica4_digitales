----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.11.2020 22:36:21
-- Design Name: 
-- Module Name: testbench - Behavioral
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

entity testbench is    port
    (
        clk1: in std_logic;
        rst_reloj: in std_logic;
        out_clk: inout std_logic_vector(2 downto 0));
end testbench;

architecture Behavioral of testbench is
    component contador
    port(
        clk : in std_logic;
        rst : in std_logic;
        Q   : inout std_logic_vector(2 downto 0)
    );
    end component;
    component divisor
    port( 
    	clk50mhz: 	in STD_LOGIC;   
	    clk:		out STD_LOGIC
	);
	end component;
	    signal conta: STD_LOGIC := '0'; 
begin

    div: divisor port map(
        clk50mhz => clk1,        
        clk => conta        
      );
    clk: contador port map(
                clk =>conta,
        rst => '0',
        Q=> out_clk );

end Behavioral;
