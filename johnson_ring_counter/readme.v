A Johnson counter is a type of shift register counter in which 
the complemented output of the last flip-flop is connected to the input of the first flip-flop.
It consists of flip-flops connected in cascade, where the output 
of one flip-flop is connected to the input of the next flip-flop.
An n-bit Johnson counter generates 2n different states. 
It is also known as a twisted ring counter
why and how 2n states for n fff ?
  A Johnson counter generates 2n states using n flip-flops. This happens because the complemented 
  output of the last flip-flop is fed back to the first flip-flop. Initially, 1s enter the register one by one,
  and after all bits become 1, zeros enter one by one. This produces 2n unique states
