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
verde <=x"0B1";
azul <=x"03f";
blanco<=x"FFF";
amarillo <=x"ff0";

process (sw,pix_x,pix_y)
	begin
	case sw is
		when "000" => --rusia
			      if (((pix_x >= 140) and (pix_x <= 500)) and ((pix_y >= 90) and (pix_y <= 190))) then rgb_out <= blanco; 
			      elsif (((pix_x >= 140) and (pix_x <= 500)) and ((pix_y >= 190) and (pix_y <= 290))) then rgb_out <= azul;
		              elsif (((pix_x >= 140) and (pix_x <= 500)) and ((pix_y >= 290) and (pix_y <= 390))) then rgb_out <= rojo;
			      else rgb_out <= verde;
			      end if;

		when "001" => --deutschland
			      if (((pix_x >= 140) and (pix_x <= 500)) and ((pix_y >= 90) and (pix_y <= 190))) then rgb_out <= negro; 
			      elsif (((pix_x >= 140) and (pix_x <= 500)) and ((pix_y >= 190) and (pix_y <= 290))) then rgb_out <= rojo;
		              elsif (((pix_x >= 140) and (pix_x <= 500)) and ((pix_y >= 290) and (pix_y <= 390))) then rgb_out <= amarillo;
			      else rgb_out <= blanco;
			      end if;
		when "010" => --australia
				if (((pix_x >= 0) and (pix_x <= 139)) and ((pix_y >= 0) and (pix_y <= 89))) then rgb_out <= blanco; end if; 
				if (((pix_x >= 140) and (pix_x <= 205)) and ((pix_y >= 90) and (pix_y <= 125))) then rgb_out <= blanco; end if; 
                if (((pix_x >= 206) and (pix_x <= 235)) and ((pix_y >= 90) and (pix_y <= 125))) then rgb_out <= rojo; end if;
                if (((pix_x >= 236) and (pix_x <= 300)) and ((pix_y >= 90) and (pix_y <= 125))) then rgb_out <= blanco; end if;
                if (((pix_x >= 301) and (pix_x <= 500)) and ((pix_y >= 90) and (pix_y <= 125))) then rgb_out <= azul; end if;
                if (((pix_x >= 140) and (pix_x <= 300)) and ((pix_y >= 126) and (pix_y <= 155))) then rgb_out <= rojo; end if;
                if (((pix_x >= 301) and (pix_x <= 385)) and ((pix_y >= 126) and (pix_y <= 155))) then rgb_out <= azul; end if;
                if (((pix_x >= 386) and (pix_x <= 415)) and ((pix_y >= 126) and (pix_y <= 155))) then rgb_out <= blanco; end if;
                if (((pix_x >= 416) and (pix_x <= 500)) and ((pix_y >= 126) and (pix_y <= 155))) then rgb_out <= azul; end if;
                if (((pix_x >= 140) and (pix_x <= 205)) and ((pix_y >= 156) and (pix_y <= 190))) then rgb_out <= blanco; end if;
                if (((pix_x >= 206) and (pix_x <= 235)) and ((pix_y >= 156) and (pix_y <= 190))) then rgb_out <= rojo; end if;
                if (((pix_x >= 236) and (pix_x <= 300)) and ((pix_y >= 156) and (pix_y <= 190))) then rgb_out <= blanco; end if;
                if (((pix_x >= 301) and (pix_x <= 355)) and ((pix_y >= 156) and (pix_y <= 190))) then rgb_out <= azul; end if;
                if (((pix_x >= 356) and (pix_x <= 380)) and ((pix_y >= 156) and (pix_y <= 190))) then rgb_out <= blanco; end if;
                if (((pix_x >= 381) and (pix_x <= 420)) and ((pix_y >= 156) and (pix_y <= 190))) then rgb_out <= azul; end if;
                if (((pix_x >= 421) and (pix_x <= 450)) and ((pix_y >= 156) and (pix_y <= 190))) then rgb_out <= blanco; end if;
                if (((pix_x >= 451) and (pix_x <= 500)) and ((pix_y >= 156) and (pix_y <= 190))) then rgb_out <= azul; end if; 
                if (((pix_x >= 140) and (pix_x <= 415)) and ((pix_y >= 191) and (pix_y <= 240))) then rgb_out <= azul; end if;
                if (((pix_x >= 416) and (pix_x <= 435)) and ((pix_y >= 191) and (pix_y <= 220))) then rgb_out <= azul; end if;
                if (((pix_x >= 416) and (pix_x <= 435)) and ((pix_y >= 221) and (pix_y <= 240))) then rgb_out <= blanco; end if;
                if (((pix_x >= 435) and (pix_x <= 500)) and ((pix_y >= 191) and (pix_y <= 240))) then rgb_out <= azul; end if;
                if (((pix_x >= 140) and (pix_x <= 195)) and ((pix_y >= 241) and (pix_y <= 340))) then rgb_out <= azul; end if;
                if (((pix_x >= 196) and (pix_x <= 245)) and ((pix_y >= 241) and (pix_y <= 340))) then rgb_out <= blanco; end if;
                if (((pix_x >= 246) and (pix_x <= 385)) and ((pix_y >= 241) and (pix_y <= 340))) then rgb_out <= azul; end if;
                if (((pix_x >= 386) and (pix_x <= 415)) and ((pix_y >= 241) and (pix_y <= 310))) then rgb_out <= azul; end if;
                if (((pix_x >= 386) and (pix_x <= 415)) and ((pix_y >= 311) and (pix_y <= 340))) then rgb_out <= blanco; end if;
                if (((pix_x >= 416) and (pix_x <= 500)) and ((pix_y >= 241) and (pix_y <= 340))) then rgb_out <= azul; end if;
                if (((pix_x >= 140) and (pix_x <= 500)) and ((pix_y >= 341) and (pix_y <= 390))) then rgb_out <= azul;end if;
                
		when "011" =>	--eeuu

                    if ((pix_x >= 140) and (pix_x <= 500)) then
                        if ((pix_x >= 140) and (pix_x <= 310)) then
                            if ((pix_y >= 80) and (pix_y <= 100)) then rgb_out <= azul; end if;
                            if ((pix_y >= 111) and (pix_y <= 130)) then rgb_out <= azul; end if;
                            if ((pix_y >= 141) and (pix_y <= 160)) then rgb_out <= azul; end if;
                            if ((pix_y >= 171) and (pix_y <= 190)) then rgb_out <= azul; end if;
                            if (((pix_x >= 140) and (pix_x <= 160)) and (pix_y >= 80) and (pix_y <= 190)) then rgb_out <= azul; end if;
                            if (((pix_x >= 171) and (pix_x <= 190)) and (pix_y >= 80) and (pix_y <= 190)) then rgb_out <= azul; end if;
                            if (((pix_x >= 201) and (pix_x <= 220)) and (pix_y >= 80) and (pix_y <= 190)) then rgb_out <= azul; end if;
                            if (((pix_x >= 231) and (pix_x <= 250)) and (pix_y >= 80) and (pix_y <= 190)) then rgb_out <= azul; end if;
                            if (((pix_x >= 261) and (pix_x <= 280)) and (pix_y >= 80) and (pix_y <= 190)) then rgb_out <= azul; end if;
                            if (((pix_x >= 291) and (pix_x <= 310)) and (pix_y >= 80) and (pix_y <= 190)) then rgb_out <= azul; end if;
                        end if;
                        if ((pix_x >= 311) and (pix_x <= 500)) then
                            if ((pix_y >= 80) and (pix_y <= 110)) then rgb_out <= rojo; end if;
                            if ((pix_y >= 111) and (pix_y <= 140)) then rgb_out <= azul; end if;
                            if ((pix_y >= 141) and (pix_y <= 170)) then rgb_out <= rojo; end if;
                            if ((pix_y >= 171) and (pix_y <= 200)) then rgb_out <= azul; end if;
                        end if;
                        if ((pix_y >= 201) and (pix_y <= 230)) then rgb_out <= rojo; end if;
                        if ((pix_y >= 231) and (pix_y <= 260)) then rgb_out <= azul; end if;
                        if ((pix_y >= 261) and (pix_y <= 290)) then rgb_out <= rojo; end if;
                        if ((pix_y >= 291) and (pix_y <= 320)) then rgb_out <= azul; end if;
                        if ((pix_y >= 321) and (pix_y <= 350)) then rgb_out <= rojo; end if;
                        if ((pix_y >= 351) and (pix_y <= 380)) then rgb_out <= azul; end if;
                    end if;

		when "100" =>	--panama
                if (((pix_x >= 140) and (pix_x <= 290)) and ((pix_y >= 90) and (pix_y <= 120))) then rgb_out <= blanco; end if;
                if (((pix_x >= 291) and (pix_x <= 440)) and ((pix_y >= 90) and (pix_y <= 240))) then rgb_out <= rojo; end if;
                if (((pix_x >= 140) and (pix_x <= 170)) and ((pix_y >= 121) and (pix_y <= 210))) then rgb_out <= blanco; end if;
                if (((pix_x >= 171) and (pix_x <= 260)) and ((pix_y >= 121) and (pix_y <= 210))) then rgb_out <= azul; end if;
                if (((pix_x >= 261) and (pix_x <= 290)) and ((pix_y >= 121) and (pix_y <= 210))) then rgb_out <= blanco; end if;
                if (((pix_x >= 140) and (pix_x <= 290)) and ((pix_y <= 211) and (pix_y <= 240))) then rgb_out <= blanco; end if;
                if (((pix_x >= 140) and (pix_x <= 290)) and ((pix_y <= 241) and (pix_y <= 390))) then rgb_out <= azul; end if;
                if (((pix_x >= 291) and (pix_x <= 440)) and ((pix_y >= 241) and (pix_y <= 270))) then rgb_out <= blanco; end if;
                if (((pix_x >= 291) and (pix_x <= 320)) and ((pix_y >= 271) and (pix_y <= 360))) then rgb_out <= blanco; end if;
                if (((pix_x >= 321) and (pix_x <= 410)) and ((pix_y >= 271) and (pix_y <= 360))) then rgb_out <= rojo; end if;
                if (((pix_x >= 411) and (pix_x <= 440)) and ((pix_y >= 271) and (pix_y <= 360))) then rgb_out <= blanco; end if;
                if (((pix_x >= 140) and (pix_x <= 440)) and ((pix_y >= 361) and (pix_y <= 390))) then rgb_out <= blanco; end if;
		when "101" =>    --ecuador
			      if ((pix_x >= 140) and (pix_x <= 500) and (pix_y >= 90) and (pix_y <= 190)) then rgb_out <= amarillo;
			      elsif (((pix_x >= 140) and (pix_x <= 259)) and (pix_y >= 190) and (pix_y <= 240)) then rgb_out <= amarillo; 
			      elsif (((pix_x >= 381) and (pix_x <= 500)) and ((pix_y >= 190) and (pix_y <= 240))) then rgb_out <= amarillo; 
		              elsif (((pix_x >= 260) and (pix_x <= 380) and (pix_y >= 190) and (pix_y <= 315))) then rgb_out <= negro;
			      elsif (((pix_x >= 140) and (pix_x <= 259) and (pix_y >= 240) and (pix_y <= 315))) then rgb_out <= azul;
			      elsif (((pix_x >= 381) and (pix_x <= 500) and (pix_y >= 240) and (pix_y <= 315))) then rgb_out <= azul;
		              elsif (((pix_x >= 140) and (pix_x <= 500) and (pix_y >= 315) and (pix_y <= 390))) then rgb_out <= rojo;
			      else rgb_out <= blanco;
			      end if;

		when "110" => --bolivia
			      if (((pix_x >= 140) and (pix_x <= 500) and (pix_y >= 90) and (pix_y <= 190))) then rgb_out <= rojo; 
			      elsif (((pix_x >= 140) and (pix_x <= 500) and (pix_y >= 190) and (pix_y <= 290))) then rgb_out <= amarillo;
		              elsif (((pix_x >= 140) and (pix_x <= 500) and (pix_y >= 290) and (pix_y <= 390))) then rgb_out <= verde;
			      else rgb_out <= blanco;
			      end if;

		when others => --colombia
			      if (((pix_x >= 140) and (pix_x <= 500) and (pix_y >= 90) and (pix_y <= 240))) then rgb_out <= amarillo; 
			      elsif (((pix_x >= 140) and (pix_x <= 500) and (pix_y >= 240) and (pix_y <= 315))) then rgb_out <= azul;
		              elsif (((pix_x >= 140) and (pix_x <= 500) and (pix_y >= 315) and (pix_y <= 390))) then rgb_out <= rojo;
			      else rgb_out <= blanco;
			      end if;
	   
			   
end case;
end process;
end Behavioral;



