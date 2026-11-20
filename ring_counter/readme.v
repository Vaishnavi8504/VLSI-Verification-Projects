A ring counter is a type of shift register in which the output of the 
last flip-flop is connected back to the input of the first flip-flop, forming a closed loop.

It consists of a series of flip-flops connected in cascade, 
where the output of one flip-flop is connected to the input of the next flip-flop.

For an n-bit ring counter, there are n flip-flops and normally n valid states. 
It is not self-starting because if all flip-flops are initialized to zero, 
  the counter will remain in the zero state. Therefore, we need to initialize it
  with a particular pattern, such as 0001, to start the counting sequence
