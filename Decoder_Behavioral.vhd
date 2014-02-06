----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:46:47 02/05/2014 
-- Design Name: 
-- Module Name:    Decoder_Behavioral - Behavioral 
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
use IEEE.STD_LOGIC_1164.ALL;

entity Decoder_Behavioral is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           EN : in  STD_LOGIC;
           Y0 : out  STD_LOGIC;
           Y1 : out  STD_LOGIC;
           Y2 : out  STD_LOGIC;
           Y3 : out  STD_LOGIC);
end Decoder_Behavioral;

architecture Behavioral of Decoder_Behavioral is

	signal I0_not, I1_not : STD_LOGIC; 

begin

I0_not <= not I0;
I1_not <= not I1;

Y0 <= EN and I0_not and I1_not;
Y1 <= EN and I0 and I1_not;
Y2 <= EN and I0_not and I1;
Y3 <= EN and I0 and I1;

end Behavioral;

