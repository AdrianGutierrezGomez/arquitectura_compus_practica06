library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity micro68HC11 is
Port (
	clk: in STD_LOGIC;
	reset: in STD_LOGIC;
	nIRQ: in STD_LOGIC;
	nXIRQ: in STD_LOGIC;
	Data_in: in unsigned(7 downto 0);
	Data_out: out unsigned(7 downto 0); -- Bus de datos de 8 bits
	Dir: out unsigned(15 downto 0); -- Bis de direcciones de 16 bits
	nRW: out STD_LOGIC:= '1'; -- Señal para escribir en memoria
	PC_low_out: out unsigned(7 downto 0);
	e_presente_out: out unsigned(7 downto 0);
	A_out: out unsigned (7 downto 0);
	B_out: out unsigned (7 downto 0);
	X_low_out: out unsigned(7 downto 0);
	X_high_out: out unsigned(7 downto 0);
	Y_low_out: out unsigned(7 downto 0);
	flags: out STD_LOGIC_VECTOR(7 downto 0) -- S X H I N Z V C
);
end micro68HC11;


architecture Behavioral of micro68HC11 is
	signal e_presente: unsigned(11 downto 0) := X"000";
	signal e_siguiente: unsigned(11 downto 0);
	signal PC: unsigned (15 downto 0):= X"0014";
	signal estados: STD_LOGIC_VECTOR (7 downto 0):= X"FF";
	signal A: unsigned (7 downto 0);
	signal B: unsigned (7 downto 0);
	signal Q: unsigned (7 downto 0);
	signal Yupa: unsigned (7 downto 0);
	signal XH: unsigned (7 downto 0);
	signal XL: unsigned (7 downto 0);
	signal YH: unsigned (7 downto 0);
	signal YL: unsigned (7 downto 0);
	signal ACCB: unsigned (7 downto 0);
	signal ACCA: unsigned (7 downto 0);
	signal Aux: unsigned (15 downto 0);
	signal PCH: unsigned (7 downto 0) := X"00";
	signal PCL: unsigned (7 downto 0) := X"14";
	signal SPH: unsigned (7 downto 0) := X"FF"; -- Definir en qué lugar poner el stack...
	signal SPL: unsigned (7 downto 0) := X"FF"; -- de qué tamaño es la memoria y ponerlo en la última dirección

	signal microI: unsigned (11 downto 0) := X"333" ; -- Direccion del driver de I := X""
	signal microX: unsigned (11 downto 0) := X"444" ; -- Direccion del driver de I := X""
	signal IntRI: unsigned (15 downto 0) := X"3330";
	signal IntRX: unsigned (15 downto 0) := X"4440";
	signal IRQ: STD_LOGIC := '0';
	signal XIRQ: STD_LOGIC := '0';
	signal SET_IRQ: STD_LOGIC := '0';
	signal SET_XIRQ: STD_LOGIC := '0';

	signal startMUL: STD_LOGIC := '0';
	constant ZERO : unsigned (7 downto 0) := "00000000" ;
	signal D: unsigned (15 downto 0);
	signal varRW: STD_LOGIC := '1';
	signal indY: STD_LOGIC := '0';
begin

process(clk, reset,e_presente,e_siguiente)
begin
	if (reset = '0') then
		e_siguiente <= X"000";
		PC <= X"0014";
		IRQ <= '0';
		XIRQ <= '0';
		indY <= '0';
	else
		if (rising_edge(clk)) then
			case e_presente is
				when X"000" =>
					Dir <= PC;
					e_siguiente <= X"001";
				when X"001" =>
					PC <= PC + 1;
					e_siguiente <= e_presente + 1;
				when X"002" =>
					e_siguiente <= (Data_in & ZERO(3 downto 0));

				---------------------------------------------------------------------------------------------------------------------

				when X"860" => -- LDAA IMM
					Dir <= PC;
					e_siguiente <= e_presente + 1;
				when X"861" => -- LDAA
					PC <= PC + 1;
					e_siguiente <= e_presente + 1;
				when X"862" => -- LDAA
					A <= Data_in;
					-- Actualiza N
					estados(3) <= Data_in(7);
					-- Actualiza Z
					if(Data_in = ZERO) then
						estados(2) <= '1';
					else
						estados(2) <= '0';
					end if;
				-- Actualiza V
					estados(1) <= '0';
					if (XIRQ = '1') then
						e_siguiente <= microX;
					else
						if (IRQ = '1') then
							e_siguiente <= microI;
						else
							Dir <= PC;
							e_siguiente <= X"001";
						end if;
					end if;

				---------------------------------------------------------------------------------------------------------------------

				when X"C60" => -- LDAB
					Dir <= PC;
					e_siguiente <= e_presente + 1;
				when X"C61" => -- LDAB
					PC <= PC + 1;
					e_siguiente <= e_presente + 1;
				when X"C62" => -- LDAB
					B <= Data_in;
					-- Actualiza N
					estados(3) <= Data_in(7);
					-- Actualiza Z
					if(Data_in = ZERO) then
						estados(2) <= '1';
					else
						estados(2) <= '0';
					end if;
					-- Actualiza V
					estados(1) <= '0';
					if (XIRQ = '1') then
						e_siguiente <= microX;
					else
						if (IRQ = '1') then
							e_siguiente <= microI;
						else
							Dir <= PC;
							e_siguiente <= X"001";
						end if;
					end if;

				---------------------------------------------------------------------------------------------------------------------
				-- Código de la instruccion de acceso relativo BNE
				when X"260" =>
					Dir <= PC;
					e_siguiente <= e_presente + 1;
				when X"261" =>
					PC <= PC + 1;
					e_siguiente <= e_presente + 1;
				when X"262" =>
					if(estados(2)='0') then
						if (Data_in(7) = '1') then
							PC <= PC - unsigned(not(Data_in-1));
						else
							PC <= PC + Data_in;
						end if;
					end if;
					e_siguiente <= e_presente + 1;
				when X"263" =>
					if (XIRQ = '1') then
						e_siguiente <= microX;
						else
						if (IRQ = '1') then
							e_siguiente <= microI;
						else
							Dir <= PC;
							e_siguiente <= X"001";
						end if;
					end if;

				---------------------------------------------------------------------------------------------------------------------
				-- Codigo de la instruccion LDX
				when X"DE0" =>
					Dir <= PC;
					e_siguiente <= e_presente + 1;
				when X"DE1" =>
					PC <= PC + 1;					
					e_siguiente <= e_presente + 1;
				when X"DE2" =>
					XL <= Data_in;
					if (XIRQ = '1') then
						e_siguiente <= microX;
					else
						if (IRQ = '1') then
							e_siguiente <= microI;
						else
							Dir <= PC;
							e_siguiente <= X"001";
						end if;
					end if;
				---------------------------------------------------------------------------------------------------------------------
				-- Codigo de la instruccion ABA
				when X"1B0" =>
					Yupa <= A + B;
					e_siguiente <= e_presente + 1;
				when X"1B1" =>
					A <= Yupa;
					-- Actualiza N
					estados(3) <= Yupa(7);
					-- Actualiza Z
					if(Yupa = ZERO) then
						estados(2) <= '1';
						-- Actualiza V  
						if (B > ZERO) then
							estados(1) <= '1';
						else
							estados(1) <= '0';
						end if;
					else
						estados(2) <= '0';
						-- Actualiza V  
						estados(1) <= '0';
					end if;
					if (XIRQ = '1') then
						e_siguiente <= microX;
					else
						if (IRQ = '1') then
							e_siguiente <= microI;
						else
							Dir <= PC;
							e_siguiente <= X"001";
						end if;
					end if;
				
				---------------------------------------------------------------------------------------------------------------------
				-- Codigo de la instruccion STAA
				when X"A70" =>
					Dir <= PC;
					e_siguiente <= e_presente + 1;
				when X"A71" =>
					PC <= PC + 1;					
					Yupa <= XL + Data_in;
					e_siguiente <= e_presente + 1;
				when X"A72" =>					
					Dir <= (ZERO & Yupa);
					Data_out <= A;
					nRW <= '0';
					-- Actualiza N
					estados(3) <= Yupa(7);
					-- Actualiza Z
					if(Yupa = ZERO) then
						estados(2) <= '1';
					else
						estados(2) <= '0';
					end if;
					-- Actualiza V
					estados(1) <= '0';
					e_siguiente <= e_presente + 1;
				when X"A73" =>
					nRW <= '1';
					if (XIRQ = '1') then
						e_siguiente <= microX;
					else
						if (IRQ = '1') then
							e_siguiente <= microI;
						else
							Dir <= PC;
							e_siguiente <= X"001";
						end if;
					end if;
				---------------------------------------------------------------------------------------------------------------------
				-- Codigo de la instruccion BRA
				when X"200" =>
					Dir <= PC;
					e_siguiente <= e_presente + 1;
				when X"201" =>					
					PC <= PC + 1;			
					e_siguiente <= e_presente + 1;
				when X"202" =>	
					if (Data_in(7) = '1') then
						PC <= PC - unsigned(not(Data_in-1));
					else
						PC <= PC + Data_in;
					end if;					
					e_siguiente <= e_presente + 1;
				when X"203" =>
					if (XIRQ = '1') then
						e_siguiente <= microX;
						else
						if (IRQ = '1') then
							e_siguiente <= microI;
						else
							Dir <= PC;
							e_siguiente <= X"001";
						end if;
					end if;
				---------------------------------------------------------------------------------------------------------------------
				-- Codigo de la instruccion STAB
				when X"E70" =>
					Dir <= PC;
					e_siguiente <= e_presente + 1;
				when X"E71" =>
					PC <= PC + 1;					
					Yupa <= XL + Data_in;
					e_siguiente <= e_presente + 1;
				when X"E72" =>
					Dir <= (ZERO & Yupa);
					Data_out <= B;
					nRW <= '0';
					-- Actualiza N
					estados(3) <= Yupa(7);
					-- Actualiza Z
					if(Yupa = ZERO) then
						estados(2) <= '1';
					else
						estados(2) <= '0';
					end if;
					-- Actualiza V
					estados(1) <= '0';
					e_siguiente <= e_presente + 1;
				when X"E73" =>			
					nRW <= '1';		
					if (XIRQ = '1') then
						e_siguiente <= microX;
					else
						if (IRQ = '1') then
							e_siguiente <= microI;
						else
							Dir <= PC;
							e_siguiente <= X"001";
						end if;
					end if;
				
				---------------------------------------------------------------------------------------------------------------------
				-- Codigo de la instruccion MUL
				when X"3D0" =>
					D <= A * B;					
					e_siguiente <= e_presente + 1;
				when X"3D1" =>
					A <= D(15 downto 8);	
					B <= D(7 downto 0);	
					e_siguiente <= e_presente + 1;
				when X"3D2" =>
					if (XIRQ = '1') then
						e_siguiente <= microX;
					else
						if (IRQ = '1') then
							e_siguiente <= microI;
						else
							Dir <= PC;
							e_siguiente <= X"001";
						end if;
					end if;
					
				---------------------------------------------------------------------------------------------------------------------
				-- Codigo de la instruccion IRQ
				when X"333" =>
					SET_IRQ <= '1';	
					IRQ <= '0';	
					Dir <= (SPH & SPL);
					e_siguiente <= e_presente + 1;
				when X"334" => -- SE GUARDA pc baja
					SPL <= SPL - 1;
					Data_out <= PC(7 DOWNTO 0);		
					nRW <= '0';	
					e_siguiente <= e_presente + 1;
				when X"335" =>
					nRW <= '1';	
					Dir <= (SPH & SPL);		
					e_siguiente <= e_presente + 1;
				when X"336" => --- SE GUARDA Pc alta
					SPL <= SPL - 1;
					Data_out <= PC(15 DOWNTO 8);		
					nRW <= '0';	
					e_siguiente <= e_presente + 1;
				when X"337" =>  -- SE GUARDA LA DIRECCION DE LA INSTRUCCION EN PC
					nRW <= '1';	
					Dir <= (SPH & SPL);	
			      PC <= IntRI;	
					e_siguiente <= e_presente + 1;
					IRQ <= '0';
				when X"338" =>   -- SE GUARDA IY BAJA
					SPL <= SPL - 1;
					Data_out <= YL;		
					nRW <= '0';	
					e_siguiente <= e_presente + 1;
				when X"339" => 
					nRW <= '1';	
					Dir <= (SPH & SPL);	
					e_siguiente <= e_presente + 1;
				when X"33A" =>  -- SE GUARDA YH ALTA
					SPL <= SPL - 1;
					Data_out <= YH;		
					nRW <= '0';	
					e_siguiente <= e_presente + 1;
				when X"33B" =>  
					nRW <= '1';	
					Dir <= (SPH & SPL);	
					e_siguiente <= e_presente + 1;
				when X"33C" =>  -- SE GUARDA XL BAJA
					SPL <= SPL - 1;
					Data_out <= XL;		
					nRW <= '0';	
					e_siguiente <= e_presente + 1;
				when X"33D" =>  
					nRW <= '1';	
					Dir <= (SPH & SPL);	
					e_siguiente <= e_presente + 1;
				when X"33E" =>   -- SE GUARDA XH ALTA
					SPL <= SPL - 1;
					Data_out <= XH;		
					nRW <= '0';	
					e_siguiente <= e_presente + 1;
				when X"33F" => 
					nRW <= '1';	
					Dir <= (SPH & SPL);	
					e_siguiente <= e_presente + 1;
				when X"340" =>  -- SE GUARDA ACCA
					SPL <= SPL - 1;
					Data_out <= ACCA;		
					nRW <= '0';	
					e_siguiente <= e_presente + 1;
				when X"341" =>  
					nRW <= '1';	
					Dir <= (SPH & SPL);	
					e_siguiente <= e_presente + 1;
				when X"342" =>  -- SE GUARDA ACCB
					SPL <= SPL - 1;
					Data_out <= ACCB;		
					nRW <= '0';	
					e_siguiente <= e_presente + 1;
				when X"343" =>  
					nRW <= '1';	
					Dir <= (SPH & SPL);	
					e_siguiente <= e_presente + 1;
				when X"344" =>  -- SE GUARDA estados
					SPL <= SPL - 1;
					Data_out <= unsigned(estados);		
					nRW <= '0';	
					e_siguiente <= e_presente + 1;
				when X"345" =>  -- SE ACABA LA INTERRUPCION Y REGRESA PC
					nRW <= '1';	
					Dir <= PC;
					e_siguiente <= X"001";
					
					
				---------------------------------------------------------------------------------------------------------------------
				-- Codigo de la instruccion XIRQ
				when X"444" =>
					SET_XIRQ <= '1';	
					XIRQ <= '0'	;
					Dir <= (SPH & SPL);
					e_siguiente <= e_presente + 1;
				when X"445" => -- SE GUARDA pc baja
					SPL <= SPL - 1;
					Data_out <= PC(7 DOWNTO 0);		
					nRW <= '0';	
					e_siguiente <= e_presente + 1;
				when X"446" =>
					nRW <= '1';	
					Dir <= (SPH & SPL);		
					e_siguiente <= e_presente + 1;
				when X"447" => --- SE GUARDA Pc alta
					SPL <= SPL - 1;
					Data_out <= PC(15 DOWNTO 8);		
					nRW <= '0';	
					e_siguiente <= e_presente + 1;
				when X"448" =>  -- SE GUARDA LA DIRECCION DE LA INSTRUCCION EN PC
					nRW <= '1';	
					Dir <= (SPH & SPL);	
			      PC <= IntRX;
					XIRQ <= '0';
					e_siguiente <= X"338";
					
				---------------------------------------------------------------------------------------------------------------------
				-- Codigo de la instruccion RTI
				when X"3B0" =>
					SPL <= SPL + 1;					
					e_siguiente <= e_presente + 1;
				when X"3B1" =>
					Dir <= (SPH & SPL);		
					e_siguiente <= e_presente + 1;
				when X"3B2" =>  		-- se recuperan los estados
					SPL <= SPL + 1;	
					estados <= STD_LOGIC_VECTOR(Data_in);
					e_siguiente <= e_presente + 1;
				when X"3B3" =>
					Dir <= (SPH & SPL);		
					e_siguiente <= e_presente + 1;
				when X"3B4" =>  		-- se recupera acumulador b
					SPL <= SPL + 1;	
					b <= Data_in;
					e_siguiente <= e_presente + 1;
				when X"3B5" =>
					Dir <= (SPH & SPL);		
					e_siguiente <= e_presente + 1;
				when X"3B6" =>  		-- se recupera acumulador a
					SPL <= SPL + 1;	
					a <= Data_in;
					e_siguiente <= e_presente + 1;
				when X"3B7" =>
					Dir <= (SPH & SPL);		
					e_siguiente <= e_presente + 1;
				when X"3B8" =>  		-- se recupera XH
					SPL <= SPL + 1;	
					XH <= Data_in;
					e_siguiente <= e_presente + 1;
				when X"3B9" =>
					Dir <= (SPH & SPL);		
					e_siguiente <= e_presente + 1;
				when X"3BA" =>  		-- se recupera XL
					SPL <= SPL + 1;	
					XL <= Data_in;
					e_siguiente <= e_presente + 1;
				when X"3BB" =>
					Dir <= (SPH & SPL);		
					e_siguiente <= e_presente + 1;
				when X"3BC" =>  		-- se recupera YH
					SPL <= SPL + 1;	
					YH <= Data_in;
					e_siguiente <= e_presente + 1;
				when X"3BD" =>
					Dir <= (SPH & SPL);		
					e_siguiente <= e_presente + 1;
				when X"3BE" =>  		-- se recupera YL
					SPL <= SPL + 1;	
					YL <= Data_in;
					e_siguiente <= e_presente + 1;
				when X"3BF" =>
					Dir <= (SPH & SPL);		
					e_siguiente <= e_presente + 1;
				when X"3C0" =>  		-- se recupera PC ALTA
					SPL <= SPL + 1;	
					PCH <= Data_in;
					e_siguiente <= e_presente + 1;
				when X"3C1" =>
					Dir <= (SPH & SPL);		
					e_siguiente <= e_presente + 1;
				when X"3C2" =>  		-- se recupera PC BAJA
					PCL <= Data_in;
					e_siguiente <= e_presente + 1;
				when X"3C3" =>  		-- SE RESTAURA PC
					PC <= (PCH & PCL);
					e_siguiente <= e_presente + 1;
				when X"3C4" =>
					if (XIRQ = '1') then
						e_siguiente <= microX;
					else
						if (IRQ = '1') then
							e_siguiente <= microI;
						else
							Dir <= PC;
							e_siguiente <= X"001";
						end if;
					end if;
					
				---------------------------------------------------------------------------------------------------------------------
				-- Codigo de la instruccion LDAA CON DIRECCION
				when X"960" => -- LDAA IMM
					Dir <= PC;
					e_siguiente <= e_presente + 1;
				when X"961" => -- LDAA
					PC <= PC + 1;
					Aux <= (ZERO & Data_in);
					e_siguiente <= e_presente + 1;
				when X"962" => -- LDAA
					Dir <= Aux;
					e_siguiente <= e_presente + 1;
				when X"963" => -- LDAA
					A <= Data_in;
					-- Actualiza N
					estados(3) <= Data_in(7);
					-- Actualiza Z
					if(Data_in = ZERO) then
						estados(2) <= '1';
					else
						estados(2) <= '0';
					end if;
				-- Actualiza V
					estados(1) <= '0';
					if (XIRQ = '1') then
						e_siguiente <= microX;
					else
						if (IRQ = '1') then
							e_siguiente <= microI;
						else
							Dir <= PC;
							e_siguiente <= X"001";
						end if;
					end if;

				---------------------------------------------------------------------------------------------------------------------
				-- Codigo de la instruccion LDAB CON DIRECCION
				when X"D60" => -- LDAB
					Dir <= PC;
					e_siguiente <= e_presente + 1;
				when X"D61" => -- LDAB
					PC <= PC + 1;
					Aux <= (ZERO & Data_in);
					e_siguiente <= e_presente + 1;
				when X"D62" => -- LDAB
					Dir <= Aux;
					e_siguiente <= e_presente + 1;
				when X"D63" => -- LDAB
					B <= Data_in;
					-- Actualiza N
					estados(3) <= Data_in(7);
					-- Actualiza Z
					if(Data_in = ZERO) then
						estados(2) <= '1';
					else
						estados(2) <= '0';
					end if;
					-- Actualiza V
					estados(1) <= '0';
					if (XIRQ = '1') then
						e_siguiente <= microX;
					else
						if (IRQ = '1') then
							e_siguiente <= microI;
						else
							Dir <= PC;
							e_siguiente <= X"001";
						end if;
					end if;
				---------------------------------------------------------------------------------------------------------------------

				when others =>
					e_siguiente <= X"000";
					PC <= X"0000";

			end case;
			
				-- se checa interrupciones
			if (nXIRQ = '1' and SET_XIRQ = '0') then
					XIRQ <= '1';
			else		
				if (nIRQ = '1' and SET_IRQ = '0' and SET_XIRQ = '0') then
					IRQ <= '1';
				end if;
			end if;
		end if;
	end if;
	e_presente <= e_siguiente;
	

	
	-- debug vals
	A_out<=A;
	B_out<=B;
	e_presente_out<=e_presente(11 downto 4);
	PC_low_out <= PC(7 downto 0);
	X_low_out <= XL;
	X_high_out <= XH;
	Y_low_out <= YL;
	flags <= estados;
end process;



end Behavioral;