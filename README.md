# Sine Wave Generator Tool
This tool generates a VHDL code for a sine wave generator that can be used in digital signal processing applications. The generated code is a VHDL code that produces a sine wave output with a specified frequency and output data width (amplitude).

## Usage
Compile the sine_wave_generator.c program using a C compiler.
Run the program and follow the prompts to input the required parameters:
* Data width (number of bits for the output signal)

* Strategy (0 or 1):
0: Specify the number of samples in a single sine cycle (precise samples in a single sine cycle)
1: Specify the input frequency, output frequency, and a range for the number of samples (precise output frequency)

* IP input frequency (if strategy 1 is chosen)
* Output signal frequency (if strategy 1 is chosen)
* Number of samples range (if strategy 1 is chosen)
* Block RAM implementation (y/n)
## Generated VHDL Code
The program will generate a VHDL file named Sine_Wave_Gen.vhd in the current directory.
The VHDL code includes a sine table constant that is used to generate the sine wave output.
The generated VHDL code is a sine wave generator entity that takes a clock input and produces a sine wave output with the specified frequency and amplitude. The entity has the following ports:

* M_AXIS_ACLK: Clock input
* M_AXIS_ARESETN: Asynchronous reset input
* M_AXIS_tDATA: Sine wave output signal
* M_AXIS_tVALID: Output valid signal
* M_AXIS_tREADY: this port is not developed but I'll be happy if any of you collaborate.

## Limitations
The generated VHDL code is for a simple sine wave generator and may not be suitable for all applications.
The tool does not perform any error checking or validation on the input parameters.