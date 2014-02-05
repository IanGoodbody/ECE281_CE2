----------------------------------------------------------------------------------
-- Company: United States Air Force Academy
-- Engineer: Ian Goodbody
-- 
-- Create Date:    23:47:19 02/04/2014 
-- Design Name: 3 input and component
-- Module Name:    and3 - Behavioral 
-- Project Name: Decoder Models
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
use IEEE.STD_LOGIC_1164.ALL;

entity and3 is
	Port( I0 : in STD_LOGIC;
			I1 : in STD_LOGIC;
			I2 : in STD_LOGIC;
			O : out STD_Logic			
	);
end and3;

architecture Behavioral of and3 is

begin
	O <= I0 and I1 and I2;

end Behavioral;

