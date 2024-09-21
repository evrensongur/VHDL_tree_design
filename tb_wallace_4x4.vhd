----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.09.2024 12:10:39
-- Design Name: 
-- Module Name: tb_wallace_4x4 - Behavioral
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

entity tb_wallace_4x4 is
--  Port ( );
end tb_wallace_4x4;

architecture Behavioral of tb_wallace_4x4 is
component wallace_tree_4x4 is
    port (
        A_in : in std_logic_vector(3 downto 0);
        B_in : in std_logic_vector(3 downto 0);
        result : out std_logic_vector(7 downto 0)
    );
 
end component wallace_tree_4x4;
signal A_in,B_in:std_logic_vector(3 downto 0);
signal result:std_logic_vector(7 downto 0);
begin
uut:wallace_tree_4x4 port map (
    A_in => A_in,
    B_in => B_in,
    result => result
    
);
stim_procc:process
begin 
A_in <= "0110";
B_in <= "0100";
wait for 20ns;

A_in <= "1010";
B_in <= "1110";
wait for 20ns;

A_in <= "1000";
B_in <= "1111";
wait for 20ns;

A_in <= "0000";
B_in <= "0111";
wait for 20ns;

A_in <= "0101";
B_in <= "0100";
wait for 20ns;

A_in <= "1111";
B_in <= "1111";
wait for 20ns;

wait;
end process;
end Behavioral;
