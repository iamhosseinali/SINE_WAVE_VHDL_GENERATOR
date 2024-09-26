-- Hosseinali
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.sin_table.ALL;

entity Sine_Wave is
generic
(
    IP_INPUT_FREQUENCY 		: integer := 100000000;
    OUTPUT_SIGNAL_FREQUENCY : integer := 50
);
    Port ( 
    
    clk 			: in STD_LOGIC;
    M_AXIS_tDATA    : out std_logic_vector(SIN_DATA_WIDTH-1 downto 0);
    M_AXIS_tVALID   : out std_logic
    
    );
end Sine_Wave;

architecture Behavioral of Sine_Wave is

constant Cycles 	: integer := (IP_INPUT_FREQUENCY/OUTPUT_SIGNAL_FREQUENCY)/(2**SIN_DATA_WIDTH-1);
signal sin_indx		: unsigned(6 downto 0) := (others=>'0');
signal cnt  		: unsigned(31 downto 0) := (others=>'0');


begin
process(clk)
begin
	if rising_edge(clk) then 
		cnt			<= cnt+1;
		M_AXIS_tVALID	<= '0';
		if(cnt=Cycles)then 
		    cnt               <= (others=>'0');			
			sin_indx	      <= sin_indx+1;
			M_AXIS_tVALID	  <= '1'; 	
            M_AXIS_tDATA      <= std_logic_vector(to_signed(SIN_TABLE(to_integer(sin_indx)),SIN_DATA_WIDTH));																			
		end if;
	end if;
end process;

end Behavioral;
