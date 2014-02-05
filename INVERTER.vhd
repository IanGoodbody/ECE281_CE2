----------------------------------------------------------------------------------
-- Company: United States Air Force Academy
-- Engineer: Ian goodbody
-- 
-- Create Date:    23:42:19 02/04/2014 
-- Design Name: 	inverter component
-- Module Name:    inverter - Behavioral 
-- Project Name:  Decoder Models
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

entity inverter is
    Port ( I : in  STD_LOGIC;
           O : out  STD_LOGIC
		);
end inverter;

architecture Behavioral of inverter is

begin

	O <= not A;

end Behavioral;

