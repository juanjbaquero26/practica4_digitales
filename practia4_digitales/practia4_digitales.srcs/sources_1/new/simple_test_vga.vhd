----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.11.2020 19:11:41
-- Design Name: 
-- Module Name: simple_test_vga - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

Library UNISIM;
use UNISIM.vcomponents.all;

entity Simple_Test_VGA is
    Port(  clk, reset: in std_logic;
		   sw: in std_logic_vector(1 downto 0);
		   hsync, vsync: out std_logic;
		   rgb_out: out std_logic_vector(11 downto 0)
        );
end Simple_Test_VGA;

architecture Behavioral of Simple_Test_VGA is

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
signal sig_video_on: std_logic;

begin

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
    sw =>sw,
    video_on=>sig_video_on,
    rgb_out =>rgb_out
);
end Behavioral;