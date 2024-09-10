-- Hosseinali
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity Sine_Wave is
generic
(
    IP_INPUT_FREQUENCY : integer := 100000000;
    OUTPUT_SIGNAL_FREQUENCY : integer := 50;
    tDATA_WIDTH             : integer := 8
);
    Port ( 
    
    clk : in STD_LOGIC;
    M_AXIS_tDATA    : out std_logic_vector(tDATA_WIDTH-1 downto 0);
    M_AXIS_tVALID   : out std_logic
    
    );
end Sine_Wave;

architecture Behavioral of Sine_Wave is
signal cnt  : unsigned(31 downto 0) := (others=>'0');

constant Cycles : integer := (IP_INPUT_FREQUENCY/OUTPUT_SIGNAL_FREQUENCY)/(2**tDATA_WIDTH-1);

constant SIN_TABLE_Length : integer := 128;
constant SIN_DATA_WIDTH : integer := 8;
type SIN_TABLEType is array(0 to SIN_TABLE_Length-1) of integer;
constant SIN_TABLE : SIN_TABLEType :=(0,6,12,18,24,31,37,43,48,54,60,65,71,76,81,85,90,94,98,102,106,109,112,
115,118,120,122,124,125,126,127,127,127,127,127,126,125,124,122,120,118,115,112,109,106,102,98,94,90,85,81,76,
71,65,60,54,48,43,37,31,24,18,12,6,0,-6,-12,-18,-24,-31,-37,-43,-48,-54,-60,-65,-71,-76,-81,-85,-90,-94,-98,-102,
-106,-109,-112,-115,-118,-120,-122,-124,-125,-126,-127,-127,-127,-127,-127,-126,-125,-124,-122,-120,-118,-115,-112,
-109,-106,-102,-98,-94,-90,-85,-81,-76,-71,-65,-60,-54,-48,-43,-37,-31,-24,-18,-12,-6);

signal sin_indx		: unsigned(6 downto 0) := (others=>'0');
signal sin_data		: signed(SIN_DATA_WIDTH-1 downto 0) := (others=>'0');

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
