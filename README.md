ECE281_CE2
==========

Decoder models

### Abstract

The exercise was designed to practice and understand the differences between behavioral
and structural VHDL programming. Two decoder VHDL models were created and tested, one from
structural components and the other from a behavioral script.

### Lab Results and Analysis

The structural VHDL decoder design involved creating and combining inverters and 3 bit and
gates, while the behavioral model was created using logic equations based off of the 
given schematic. Testbenches were created to exhaustively test each combination. The inputs
I0 and I1 served as the 2 bit data input while the EN input served as the enable switch
effectively turning the device on and off. Each 2 bit I0, I1 combination corresponded with
one of 4 outputs Y0 to Y3. The testbench outputs for each of the models is shown below.

Structural Model
![alt text](https://raw2.github.com/IanGoodbody/ECE281_CE2/master/StructuralTB.JPG "Structural Model")

Behavioral Model
![alt text](https://raw2.github.com/IanGoodbody/ECE281_CE2/master/BehavioralTB.JPG "Behavioral Model")

The structural model input sequence began at 0ns and started exhibiting output behavior 
(the bottom four rows of the signal image), only after the enable switch was turned to TRUE
at 400ns. Once the enable switch was turned TRUE, the outpus Y0 to Y3 were turned on 
corresponding to the binary digit given by I0, I1, and as the sequence counted up from 0 to
3 the outputs are individually cascaded Y0 to Y3.

The Behavioral model was given the same set of inputs beginning at 100ns with the enable 
switch coming on at 500ns. Shifting the domain for the the structural signal set shows 
that the two signals are congruent, and the behavioral model 

Although each of these models are functionally equivalent the code used to create each model
was was drastically different. The behavioral model was built off of a straight Boolean equation
for each of the outputs, while the structural model "constructed" each component of the circuit
then virtually wired them together. While the code for the behavioral model was significantly
more difficult than it's structural counterpart, the intuitive, building-block construction of
the structural model could be efficient in designing complex components like systems of ALU's
or a carry-lookahead adder.

As mentioned previously, the device modeled by the design was called a decoder, which turns an
N-bit signal into 2^N number of separate outputs. For example in the the decoder circuit described
here, a signal of 101, with the two least significant bits containing the "encoded" data, produced
an output at Y1. In computer memory such a device, possibly in combination with a multiplexer or a 
tristate buffer, can be used to translate a binary register location to a unique output signal. 
