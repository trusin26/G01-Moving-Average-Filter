# G01-Moving-Average-Filter

Project name: Four-Point Moving Average Filter

Introduction

The 4-point moving average filter is a basic digital signal processing algorithm used to smooth data by filtering out high-frequency random noise. The circuit continuously computes the average of the 4 most recent data samples:
y[n]=(x[n]+x[n-1]+x[n-2]+x[n-3))/4

In digital hardware, this process operates through three core mechanisms:
- Sliding Window: The circuit uses registers (delay line) to maintain a “window” containing exactly the 4 latest data samples. Each time a clock pulse and valid input signal arrive, the newest sample is pushed into the window, while the oldest sample (from 4 cycles earlier) is discarded.
- Accumulation: The circuit adds together the 4 values currently in the window. Since each input sample in problem G01 has a width of 8 bits, the sum of 4 values can expand (bit growth), requiring the adder and the register holding the sum to have a width of 10 bits to avoid overflow.
- Division by Bit Shift: The accumulated sum is then divided by 4. In hardware design, instead of using a complex divider, division by 4 is implemented by shifting all bits of the sum two positions to the right (right shift >> 2).

Note: 
- Overflow occurs during addition due to bit growth when performing arithmetic operations in hardware. For 8-bit input data, the maximum unsigned sample value is 2^8-1=255. If the sum variable is designed with only 8 bits, adding samples will overflow the register, and hardware will automatically discard the highest bits (wraparound).
- The shift register in this filter is a serial chain of 4 registers, each 8 bits wide, corresponding to one data sample. Physically, this structure consumes exactly 
4 × 8 = 32 memory cells (flip-flops) to fully maintain the data “window.”
