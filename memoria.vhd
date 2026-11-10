library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity memoria is
	Port ( 
		Data_in: in STD_LOGIC_VECTOR(7 downto 0);
		direccion : in STD_LOGIC_VECTOR (15 downto 0);
		nRW: in STD_LOGIC; -- Señal para escribir en memoria
		salida10 : out STD_LOGIC_VECTOR (7 downto 0):= X"00";
		salida11 : out STD_LOGIC_VECTOR (7 downto 0):= X"00";
		salida12 : out STD_LOGIC_VECTOR (7 downto 0):= X"00";
		output : out STD_LOGIC_VECTOR (7 downto 0)
	);
end memoria;

architecture Behavioral of memoria is

	signal s10: STD_LOGIC_VECTOR (7 downto 0):= X"00";
	signal s11: STD_LOGIC_VECTOR (7 downto 0):= X"00";
	signal s12: STD_LOGIC_VECTOR (7 downto 0):= X"00";
	signal s20: STD_LOGIC_VECTOR (7 downto 0):= X"02";
	signal s30: STD_LOGIC_VECTOR (7 downto 0):= X"00";
	signal XH: STD_LOGIC_VECTOR (7 downto 0);
	signal XL: STD_LOGIC_VECTOR (7 downto 0);
	signal YH: STD_LOGIC_VECTOR (7 downto 0);
	signal YL: STD_LOGIC_VECTOR (7 downto 0);
	signal ACCB: STD_LOGIC_VECTOR (7 downto 0);
	signal ACCA: STD_LOGIC_VECTOR (7 downto 0);
	signal ccr: STD_LOGIC_VECTOR (7 downto 0);
	signal PCH: STD_LOGIC_VECTOR (7 downto 0);
	signal PCL: STD_LOGIC_VECTOR (7 downto 0);
begin

process(direccion)
begin
   if (direccion = X"0010") then  -- Saving A 0,X
		if (nRW = '0') then
			salida10 <= Data_in;
		end if;
	elsif (direccion = X"0011") then  -- Saving A 1,X
		if (nRW = '0') then
			salida11 <= Data_in;
		end if;
	elsif (direccion = X"0012") then  -- Saving A 2,X
		if (nRW = '0') then
			salida12 <= Data_in;
		end if;
	elsif (direccion = X"0014") then  -- LDAA
		output <= X"86";
	elsif (direccion = X"0015") then  -- Valor LDAA FF
		output <= X"FF";
	elsif (direccion = X"0016") then  -- Instruccion LDAB
		output <= X"C6";
	elsif (direccion = X"0017") then  -- Valor de ldab
		output <= X"01";
	elsif (direccion = X"0018") then  -- Instruccion LDX
		output <= X"DE";
	elsif (direccion = X"0019") then  -- Valor LDX 10
		output <= X"10";
	elsif (direccion = X"001A") then  -- Instruccion ABA
		output <= X"1B";
	elsif (direccion = X"001B") then  -- Instruccion BNE  Salto  ET1
		output <= X"26";
	elsif (direccion = X"001C") then  -- Valor BNE 
		output <= X"04";
	elsif (direccion = X"001D") then  -- Instruccion STAA
		output <= X"A7";
	elsif (direccion = X"001E") then  -- Valor STAA, es el IND
		output <= X"00";
	elsif (direccion = X"001F") then  -- Instruccion BRA salto a  ET2
		output <= X"20";
	elsif (direccion = X"0020") then  -- Valor BRA 
		if (nRW = '0') then
			s20 <= Data_in;
		end if;
		output <= X"02";
	elsif (direccion = X"0021") then  -- Instruccion STAB         ET1
		output <= X"E7";
	elsif (direccion = X"0022") then  -- Valor STAB   
		output <= X"00";
	elsif (direccion = X"0023") then  -- Instruccion LDAA         ET2
		output <= X"86";
	elsif (direccion = X"0024") then  -- Valor LDAA         
		output <= X"07";
	elsif (direccion = X"0025") then  -- Instruccion LDAB  
		output <= X"C6";
	elsif (direccion = X"0026") then  -- Valor LDAB  
		output <= X"02";
	elsif (direccion = X"0027") then  -- Instruccion MUL  
		output <= X"3D";
	elsif (direccion = X"0028") then  -- Instruccion STAA 1,X  
		output <= X"A7";
	elsif (direccion = X"0029") then  -- Valor STAA  
		output <= X"01";
	elsif (direccion = X"002A") then  -- Instruccion STAB 2,X  
		output <= X"E7";
	elsif (direccion = X"002B") then  -- Valor STAB  
		output <= X"02";
	elsif (direccion = X"002C") then  -- Instruccion BRA 			FIN   
		output <= X"20";
	elsif (direccion = X"002D") then  -- Valor BRA hacia 			FIN  
		output <= X"FE";		
	elsif (direccion = X"0030") then  -- valor que intercambia , se agrega el 0 para que salte bra y continue sin hacer salto
		if (nRW = '0') then
			s30 <= Data_in;
		else
			output <= s30;
		end if;
		
	------------------------- INTERRUPCIONES -------------------------
	
	-- empieza la interrupcion IRQ
	elsif (direccion = X"3330") then  -- INSTRUCCION LDX
		output <= X"DE";
	elsif (direccion = X"3331") then  -- valor de ldx 20
		output <= X"20";
	elsif (direccion = X"3332") then  -- INSTRUCCION LDAA POR DIRECCION
		output <= X"96";
	elsif (direccion = X"3333") then  -- VALOR LDAA
		output <= X"30";
	elsif (direccion = X"3334") then  -- INSTRUCCION STAA
		output <= X"A7";
	elsif (direccion = X"3335") then  -- VALOR STAA
		output <= X"00";
	elsif (direccion = X"3336") then  -- INSTRUCCION RTI
		output <= X"3B";
		
	-- empieza la interrupcion XIRQ
	elsif (direccion = X"4440") then  -- INSTRUCCION LDX
		output <= X"DE";
	elsif (direccion = X"4441") then  -- VALOR LDX
		output <= X"30";
	elsif (direccion = X"4442") then  -- INSTRUCCION LDAB POR DIRECCION
		output <= X"D6";
	elsif (direccion = X"4443") then  -- VALOR LDAB
		output <= X"20";
	elsif (direccion = X"4444") then  -- INSTRUCCION STAB
		output <= X"E7";
	elsif (direccion = X"4445") then  -- VALOR STAB
		output <= X"00";
	elsif (direccion = X"4446") then  -- INSTRUCCION RTI
		output <= X"3B";	
	
	------------------------- stack -------------------------
	elsif (direccion = X"FFF7") then  -- CCR
		if (nRW = '0') then
			CCR <= Data_in;
		else
			output <= CCR;
		end if;
	elsif (direccion = X"FFF8") then  -- ACCB
		if (nRW = '0') then
			ACCB <= Data_in;
		else
			output <= ACCB;
		end if;
	elsif (direccion = X"FFF9") then  -- ACCA
		if (nRW = '0') then
			ACCA <= Data_in;
		else
			output <= ACCA;
		end if;
	elsif (direccion = X"FFFA") then  -- XH
		if (nRW = '0') then
			XH <= Data_in;
		else
			output <= XH;
		end if;
	elsif (direccion = X"FFFB") then  -- XL 
		if (nRW = '0') then
			XL <= Data_in;
		else
			output <= XL;
		end if;
	elsif (direccion = X"FFFC") then  -- YH 
		if (nRW = '0') then
			YH <= Data_in;
		else
			output <= YH;
		end if;
	elsif (direccion = X"FFFD") then  -- YL 
		if (nRW = '0') then
			YL <= Data_in;
		else
			output <= YL;
		end if;
	elsif (direccion = X"FFFE") then  -- PC ALTA 
		if (nRW = '0') then
			PCH <= Data_in;
		else
			output <= PCH;
		end if;
	elsif (direccion = X"FFFF") then  -- pc baja
		if (nRW = '0') then
			PCL <= Data_in;
		else
			output <= PCL;
		end if;		
	else
		output <= X"00";
	end if;	
end process;


end Behavioral;