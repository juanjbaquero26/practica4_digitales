----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.11.2020 16:32:06
-- Design Name: 
-- Module Name: circuito - Behavioral
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

entity draw is
    Port ( pix_x : in STD_LOGIC_VECTOR (9 downto 0);
           pix_y : in STD_LOGIC_VECTOR (9 downto 0);
           sw : in STD_LOGIC_VECTOR (2 downto 0);
           video_on: in std_logic;
           rgb_out : out STD_LOGIC_VECTOR (11 downto 0));
end draw;

architecture Behavioral of draw is

signal negro: STD_LOGIC_VECTOR (11 downto 0);
signal rojo: STD_LOGIC_VECTOR (11 downto 0);
signal verde: STD_LOGIC_VECTOR (11 downto 0);
signal azul: STD_LOGIC_VECTOR (11 downto 0);
signal blanco: STD_LOGIC_VECTOR (11 downto 0);
signal amarillo: STD_LOGIC_VECTOR (11 downto 0);

begin

negro <= x"000";
rojo <=x"F00";
verde <=x"0B4";
azul <=x"0F0";
blanco<=x"FFF";
amarillo <=x"4b0";

process (sw)
	begin
	case sw is
		when "000" => --rusia
			      if (((pix_x >= 140) and (pix_x <= 500) and (pix_y >= 90) and (pix_y <= 190))) then rgb_out <= blanco; 
			      elsif (((pix_x >= 140) and (pix_x <= 500) and (pix_y >= 190) and (pix_y <= 290))) then rgb_out <= azul;
		              elsif (((pix_x >= 140) and (pix_x <= 500) and (pix_y >= 290) and (pix_y <= 390))) then rgb_out <= rojo;
			      else rgb_out <= negro;

		when "001" => --deutschland
			      if (((pix_x >= 140) and (pix_x <= 500) and (pix_y >= 90) and (pix_y <= 190))) then rgb_out <= negro; 
			      elsif (((pix_x >= 140) and (pix_x <= 500) and (pix_y >= 190) and (pix_y <= 290))) then rgb_out <= rojo;
		              elsif (((pix_x >= 140) and (pix_x <= 500) and (pix_y >= 290) and (pix_y <= 390))) then rgb_out <= amarillo;
			      else rgb_out <= blanco;

		when "101" =>    --ecuador
			      if ((pix_x >= 140) and (pix_x <= 500) and (pix_y >= 90) and (pix_y <= 190)) then rgb_out <= amarillo;
			      elsif (((pix_x >= 140) and (pix_x <= 259) and (pix_y >= 190) and (pix_y <= 240)) then rgb_out <= amarillo; 
			      elsif (((pix_x >= 381) and (pix_x <= 500) and (pix_y >= 190) and (pix_y <= 240)) then rgb_out <= amarillo; 
		              elsif (((pix_x >= 260) and (pix_x <= 380) and (pix_y >= 190) and (pix_y <= 315))) then rgb_out <= negro;
			      elsif (((pix_x >= 140) and (pix_x <= 259) and (pix_y >= 240) and (pix_y <= 315))) then rgb_out <= azul;
			      elsif (((pix_x >= 381) and (pix_x <= 500) and (pix_y >= 240) and (pix_y <= 315))) then rgb_out <= azul;
		              elsif (((pix_x >= 140) and (pix_x <= 500) and (pix_y >= 315) and (pix_y <= 390))) then rgb_out <= rojo;
			      else rgb_out <= blanco;

		when "110" => --bolivia
			      if (((pix_x >= 140) and (pix_x <= 500) and (pix_y >= 90) and (pix_y <= 190))) then rgb_out <= rojo; 
			      elsif (((pix_x >= 140) and (pix_x <= 500) and (pix_y >= 190) and (pix_y <= 290))) then rgb_out <= amarillo;
		              elsif (((pix_x >= 140) and (pix_x <= 500) and (pix_y >= 290) and (pix_y <= 390))) then rgb_out <= verde;
			      else rgb_out <= blanco;

		when "111" => --colombia
			      if (((pix_x >= 140) and (pix_x <= 500) and (pix_y >= 90) and (pix_y <= 240))) then rgb_out <= amarillo; 
			      elsif (((pix_x >= 140) and (pix_x <= 500) and (pix_y >= 240) and (pix_y <= 315))) then rgb_out <= azul;
		              elsif (((pix_x >= 140) and (pix_x <= 500) and (pix_y >= 315) and (pix_y <= 390))) then rgb_out <= rojo;
			      else rgb_out <= blanco;
end Behavioral;


