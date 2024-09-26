library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


package sin_table is

constant SIN_TABLE_Length : integer := 128;
constant SIN_DATA_WIDTH : integer := 8;
type SIN_TABLEType is array(0 to SIN_TABLE_Length-1) of integer;
constant SIN_TABLE : SIN_TABLEType :=(0,6,12,18,24,31,37,43,48,54,60,65,71,76,81,85,90,94,98,102,106,109,112,115,118,120,122,124,125,126,127,127,127,127,127,126,125,124,122,120,118,115,112,109,106,102,98,94,90,85,81,76,71,65,60,54,48,43,37,31,24,18,12,6,0,-6,-12,-18,-24,-31,-37,-43,-48,-54,-60,-65,-71,-76,-81,-85,-90,-94,-98,-102,-106,-109,-112,-115,-118,-120,-122,-124,-125,-126,-127,-127,-127,-127,-127,-126,-125,-124,-122,-120,-118,-115,-112,-109,-106,-102,-98,-94,-90,-85,-81,-76,-71,-65,-60,-54,-48,-43,-37,-31,-24,-18,-12,-6);
end sin_table;

---- Copy and paste the below code to use the generated package:
---- use work.sin_table.ALL;