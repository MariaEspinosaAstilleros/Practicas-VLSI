LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

ENTITY dec_hex_seg7 IS 
    PORT (
        hex: IN STD_LOGIC_VECTOR(5 to 8);
        enable : IN STD_LOGIC;
        DP : OUT STD_LOGIC;
        display : OUT STD_LOGIC_VECTOR(1 to 7)
         );
END dec_hex_seg7;

ARCHITECTURE DecFunc OF dec_hex_seg7 IS 
BEGIN 
    PROCESS(hex)
    BEGIN
        IF enable = '1' THEN 
            CASE hex is
                WHEN "0000" => display <= "0000000"; -- 0
                WHEN "0001" => display <= "0110000"; -- 1
                WHEN "0010" => display <= "1101101"; -- 2
                WHEN "0011" => display <= "1111001"; -- 3
                WHEN "0100" => display <= "0110011"; -- 4
                WHEN "0101" => display <= "1011011"; -- 5
                WHEN "0110" => display <= "1011111"; -- 6
                WHEN "0111" => display <= "1110000"; -- 7
                WHEN "1000" => display <= "1111111"; -- 8
                WHEN "1001" => display <= "1111011"; -- 9
                WHEN "1010" => display <= "1110111"; -- A
                WHEN "1011" => display <= "0011111"; -- B
                WHEN "1100" => display <= "1001110"; -- C
                WHEN "1101" => display <= "0111101"; -- D
                WHEN "1110" => display <= "1001111"; -- E
                WHEN OTHERS => display <= "1000111"; -- F
            END CASE;
        ELSE 
            display <= "0000000";
        END IF;
    END PROCESS;

    DP <= '1' WHEN (hex >= 9) ELSE '0';


END DecFunc;