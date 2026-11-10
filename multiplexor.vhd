library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity multiplexor is
    Port (
        s10     : in  unsigned(7 downto 0);
        s11     : in  unsigned(7 downto 0);
        s12     : in  unsigned(7 downto 0);
        entrada : in  unsigned(1 downto 0);
        output  : out unsigned(7 downto 0)
    );
end multiplexor;

architecture Behavioral of multiplexor is
begin
    process(s10, s11, s12, entrada)
    begin
        case entrada is
            when "00" =>
                output <= s10;
            when "01" =>
                output <= s11;
            when "10" =>
                output <= s12;
            when others =>
                output <= (others => '0'); -- Opción por defecto ("11")
        end case;
    end process;
end Behavioral;