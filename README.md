# 4-bit-register
4-bit register in verilog
Module file defines the behavior of the register. If load signal is high, Q=D, else Q remains with its previous value.
If reset is high, Q=0.

Testbench file tests its functionality.
Waveform of testbench:
![image](https://github.com/rafaelpinheiro32/4-bit-register/assets/151592512/b88eea8b-7f94-4d79-80c3-39e5ce4752fa)
(t=35 and 105) Load is high at positive clock edge, then Q=D
(t=50 and 150) Reset is high at positive clock edge, then Q=0
(t=125 and 225) After reset, behavior of load high and low remains.
