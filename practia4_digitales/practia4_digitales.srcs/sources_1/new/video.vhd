----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.11.2020 10:19:09
-- Design Name: 
-- Module Name: video - Behavioral
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

entity video is
Port ( 
    clk, reset: in std_logic;
    sw: in std_logic_vector(1 downto 0);
    hsync, vsync: out std_logic;
    rgb_out: out std_logic_vector(11 downto 0) ;       
    clk1: in std_logic;
    rst_reloj: in std_logic
);
end video;

architecture Behavioral of video is
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
	    clk5s:		out STD_LOGIC
	);
    end component;
    component vga_ctrl_640x480 is
        port (
                clk, reset: in std_logic;
                hsync, vsync: out std_logic;
                pixel_x, pixel_y: out std_logic_vector (9 downto 0);
                video_on, p_tick: out std_logic
            );
    end component;
    
    component draw is
        Port ( pix_x : in STD_LOGIC_VECTOR (9 downto 0);
               pix_y : in STD_LOGIC_VECTOR (9 downto 0);
               sw : in STD_LOGIC_VECTOR (1 downto 0);
               video_on: in std_logic;
               rgb_out : out STD_LOGIC_VECTOR (11 downto 0));
    end component;
    
    signal sig_pixel_x, sig_pixel_y:  std_logic_vector (9 downto 0);
    signal sig_video_on: std_logic;	    signal conta: STD_LOGIC := '0'; 
    signal out_clk: std_logic_vector (2 downto 0);
    
begin
    div: divisor port map(
        clk50mhz => clk1,        
        clk5s => conta        
      );
    clk11: contador port map(
        clk =>conta,
        rst => '0',
        Q => out_clk );
        
    vga : vga_ctrl_640x480
    port map (
       clk=>clk, 
       reset=>reset,
       hsync=>hsync,
       vsync=>vsync,
       pixel_x=>sig_pixel_x,
       pixel_y=>sig_pixel_y,
       video_on=>sig_video_on,
       p_tick=>OPEN
    );
    
    draw1 : draw
    port map (
        pix_x =>sig_pixel_x,
        pix_y =>sig_pixel_y,
        sw => out_clk,
        video_on=>sig_video_on,
        rgb_out =>rgb_out
    );        

end Behavioral;
