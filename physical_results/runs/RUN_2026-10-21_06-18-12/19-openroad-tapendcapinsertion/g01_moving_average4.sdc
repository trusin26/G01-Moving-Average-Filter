###############################################################################
# Created by write_sdc
###############################################################################
current_design g01_moving_average4
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 10.0000 [get_ports {clk}]
set_propagated_clock [get_clocks {clk}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -add_delay [get_ports {rst_n}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -add_delay [get_ports {sample_in[0]}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -add_delay [get_ports {sample_in[1]}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -add_delay [get_ports {sample_in[2]}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -add_delay [get_ports {sample_in[3]}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -add_delay [get_ports {sample_in[4]}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -add_delay [get_ports {sample_in[5]}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -add_delay [get_ports {sample_in[6]}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -add_delay [get_ports {sample_in[7]}]
set_input_delay 1.0000 -clock [get_clocks {clk}] -add_delay [get_ports {valid_in}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -add_delay [get_ports {avg_out[0]}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -add_delay [get_ports {avg_out[1]}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -add_delay [get_ports {avg_out[2]}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -add_delay [get_ports {avg_out[3]}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -add_delay [get_ports {avg_out[4]}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -add_delay [get_ports {avg_out[5]}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -add_delay [get_ports {avg_out[6]}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -add_delay [get_ports {avg_out[7]}]
set_output_delay 1.0000 -clock [get_clocks {clk}] -add_delay [get_ports {valid_out}]
###############################################################################
# Environment
###############################################################################
###############################################################################
# Design Rules
###############################################################################
