library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


package sin_table is

constant SIN_TABLE_Length : integer := 256;
constant SIN_DATA_WIDTH : integer := 15;
type SIN_TABLEType is array(0 to SIN_TABLE_Length-1) of integer;
constant SIN_TABLE : SIN_TABLEType :=(0,402,803,1205,1605,2005,2404,2801,3196,3589,3980,4369,4756,5139,5519,5896,6269,6639,7005,7366,7723,8075,8423,8765,9102,9434,9759,10079,10393,10701,11002,11297,11585,11866,12139,12406,12665,12916,13159,13395,13622,13842,14053,14255,14449,14634,14810,14978,15136,15286,15426,15557,15678,15790,15892,15985,16069,16142,16206,16260,16305,16339,16364,16379,16383,16379,16364,16339,16305,16260,16206,16142,16069,15985,15892,15790,15678,15557,15426,15286,15136,14978,14810,14634,14449,14255,14053,13842,13622,13395,13159,12916,12665,12406,12139,11866,11585,11297,11002,10701,10393,10079,9759,9434,9102,8765,8423,8075,7723,7366,7005,6639,6269,5896,5519,5139,4756,4369,3980,3589,3196,2801,2404,2005,1605,1205,803,402,0,-402,-803,-1205,-1605,-2005,-2404,-2801,-3196,-3589,-3981,-4369,-4756,-5139,-5519,-5896,-6269,-6639,-7005,-7366,-7723,-8075,-8423,-8765,-9102,-9434,-9759,-10079,-10393,-10701,-11002,-11297,-11585,-11866,-12139,-12406,-12665,-12916,-13159,-13395,-13622,-13842,-14053,-14255,-14449,-14634,-14810,-14978,-15136,-15286,-15426,-15557,-15678,-15790,-15893,-15985,-16069,-16142,-16206,-16260,-16305,-16339,-16364,-16379,-16383,-16379,-16364,-16339,-16305,-16260,-16206,-16142,-16069,-15985,-15892,-15790,-15678,-15557,-15426,-15286,-15136,-14978,-14810,-14634,-14449,-14255,-14052,-13842,-13622,-13395,-13159,-12916,-12664,-12406,-12139,-11865,-11585,-11297,-11002,-10701,-10393,-10079,-9759,-9433,-9102,-8765,-8422,-8075,-7723,-7366,-7004,-6639,-6269,-5896,-5519,-5139,-4755,-4369,-3980,-3589,-3196,-2800,-2403,-2005,-1605,-1205,-803,-402);
end sin_table;
