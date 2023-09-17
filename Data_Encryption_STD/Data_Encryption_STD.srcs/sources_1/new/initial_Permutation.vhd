----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/10/2022 04:08:09 PM
-- Design Name: 
-- Module Name: Initial_Permutation - Behavioral
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

entity Initial_Permutation is
    Port ( Data_in : in STD_LOGIC_VECTOR (63 downto 0);
           Data_out : out STD_LOGIC_VECTOR (63 downto 0));
end Initial_Permutation;

architecture Behavioral of Initial_Permutation is
signal P_connector : STD_LOGIC_VECTOR(63 downto 0); 


begin

P_connector <= Data_IN;

Data_out(0) <= P_connector(58);
Data_out(1) <= P_connector(50);
Data_out(2) <= P_connector(42);
Data_out(3) <= P_connector(34);
Data_out(4) <= P_connector(26);
Data_out(5) <= P_connector(18);
Data_out(6) <= P_connector(10);
Data_out(7) <= P_connector(02);

Data_out(8) <= P_connector(60);
Data_out(9) <= P_connector(52);
Data_out(10) <= P_connector(44);
Data_out(11) <= P_connector(36);
Data_out(12) <= P_connector(28);
Data_out(13) <= P_connector(20);
Data_out(14) <= P_connector(12);
Data_out(15) <= P_connector(04);

Data_out(16) <= P_connector(62);
Data_out(17) <= P_connector(54);
Data_out(18) <= P_connector(46);
Data_out(19) <= P_connector(38);
Data_out(20) <= P_connector(30);
Data_out(21) <= P_connector(22);
Data_out(22) <= P_connector(14);
Data_out(23) <= P_connector(06);

Data_out(24) <= P_connector(64);
Data_out(25) <= P_connector(56);
Data_out(26) <= P_connector(48);
Data_out(27) <= P_connector(40);
Data_out(28) <= P_connector(32);
Data_out(29) <= P_connector(24);
Data_out(30) <= P_connector(16);
Data_out(31) <= P_connector(08);

Data_out(32) <= P_connector(57);
Data_out(33) <= P_connector(49);
Data_out(34) <= P_connector(41);
Data_out(35) <= P_connector(33);
Data_out(36) <= P_connector(25);
Data_out(37) <= P_connector(17);
Data_out(38) <= P_connector(09);
Data_out(39) <= P_connector(01);

Data_out(40) <= P_connector(59);
Data_out(41) <= P_connector(51);
Data_out(42) <= P_connector(43);
Data_out(43) <= P_connector(35);
Data_out(44) <= P_connector(27);
Data_out(45) <= P_connector(19);
Data_out(46) <= P_connector(11);
Data_out(47) <= P_connector(03);

Data_out(48) <= P_connector(61);
Data_out(49) <= P_connector(53);
Data_out(50) <= P_connector(45);
Data_out(51) <= P_connector(37);
Data_out(52) <= P_connector(29);
Data_out(53) <= P_connector(21);
Data_out(54) <= P_connector(13);
Data_out(55) <= P_connector(05);

Data_out(56) <= P_connector(63);
Data_out(57) <= P_connector(55);
Data_out(58) <= P_connector(47);
Data_out(59) <= P_connector(39);
Data_out(60) <= P_connector(31);
Data_out(61) <= P_connector(23);
Data_out(62) <= P_connector(15);
Data_out(63) <= P_connector(07);


end Behavioral;
