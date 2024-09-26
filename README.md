# VHDL LUT-based Sine Wave Generator
This is a simple sine wave generator in VHDL which uses a SIN_TABLE constant made with a tiny .c app
## How to use ?  
Compile main.c app and run it, then use the generated sin_table.vhd file, copy and paste the code in ur design. 
### Why should you use this ? 
You can simply change the sine wave frequency like in sine_Wave_Gen.vhd via generic, also simply change the DATA_WIDTH and NUMS_PER_CYCLE in the main.c app. 