// Xuat waveform cho g01_tb (testbench cua thay khong tu dump VCD).
// File nay chi them $dumpfile/$dumpvars, khong doi hanh vi testbench.
module g01_dump;
  initial begin
    $dumpfile("g01_wave.vcd");
    $dumpvars(0, g01_tb);
  end
endmodule
