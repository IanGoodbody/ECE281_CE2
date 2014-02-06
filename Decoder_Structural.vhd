----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:56:58 02/04/2014 
-- Design Name: 
-- Module Name:    Decoder_Structural - Structural 
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

entity Decoder_Structural is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           EN : in  STD_LOGIC;
           Y0 : out  STD_LOGIC;
           Y1 : out  STD_LOGIC;
           Y2 : out  STD_LOGIC;
           Y3 : out  STD_LOGIC);
end Decoder_Structural;

architecture Structural of Decoder_Structural is

	component inverter
	Port(
		I : in STD_LOGIC;
		O : out STD_LOGIC
		);
	end component;
	
	component and3
	Port(
		I0 : in STD_LOGIC;
		I1 : in STD_LOGIC;
		I2 : in STD_LOGIC;
		O : out STD_LOGIC
		);
	end component;
	
	signal I0_not, I1_Not : STD_LOGIC;

begin

	Y0_and3: and3 PORT MAP(
		I0 => I0_not,
		I1 => I1_not,
		I2 => EN,
		O => Y0
	);
	
	Y1_and3: and3 PORT MAP(
		I0 => I0,
		I1 => I1_not,
		I2 => EN,
		O => Y1
	);
	
	Y2_and3: and3 PORT MAP(
		I0 => I0_not,
		I1 => I1,
		I2 => EN,
		O => Y2
	);
	
	Y3_and3: and3 PORT MAP(
		I0 => I0,
		I1 => I1,
		I2 => EN,
		O => Y3
	);
	
	I0_inv: INVERTER PORT MAP(
		I => I0,
		O => I0_not
	);
	
	I1_inv: INVERTER PORT MAP(
		I => I1,
		O => I1_not
	);

end Structural;

