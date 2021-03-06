----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:31:39 04/27/2016 
-- Design Name: 
-- Module Name:    reg54 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.ALL;

entity reg54 is
	generic (regCount : integer := 54);
	port ( clk : in std_logic;
			 rst : in std_logic;
			 loadEn : in std_logic;
			 reg_in : in std_logic_vector (regCount-1 downto 0);
			 reg_out : out std_logic_vector (regCount-1 downto 0)
			 );
end reg54 ;

architecture Behavioral of reg54 is

begin 
	process (clk, rst)
		begin
		if rst = '1' then
			reg_out <= (others => '1'); 
		elsif rising_edge(clk) then
			if loadEn = '1' then
				reg_out <= reg_in;
			end if;
		end if;
	end process;
	
end Behavioral;

