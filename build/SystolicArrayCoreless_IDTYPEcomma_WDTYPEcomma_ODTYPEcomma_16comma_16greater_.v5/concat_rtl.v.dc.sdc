# written for flow package DesignCompiler 
set sdc_version 1.7 

set_operating_conditions typical
set_load 2.0 [all_outputs]
## driver/slew constraints on inputs
set data_inputs [list input_rsc_vld {input_rsc_dat[*]} weight_rsc_vld {weight_rsc_dat[*]} output_rsc_rdy paramsIn_rsc_vld {paramsIn_rsc_dat[*]} loopIndicesIn_rsc_vld {loopIndicesIn_rsc_dat[*]}]
set_driving_cell -no_design_rule -library NangateOpenCellLibrary -lib_cell BUF_X2 -pin Z $data_inputs
set_units -time ns
# time_factor: 1.0

create_clock -name clk -period 5.0 -waveform { 0.0 2.5 } [get_ports {clk}]
set_clock_uncertainty 0.0 [get_clocks {clk}]

create_clock -name virtual_io_clk -period 5.0
## IO TIMING CONSTRAINTS
set_input_delay -clock [get_clocks {clk}] 0.0 [get_ports {input_rsc_dat[*]}]
set_input_delay -clock [get_clocks {clk}] 0.0 [get_ports {input_rsc_vld}]
set_output_delay -clock [get_clocks {clk}] 0.0 [get_ports {input_rsc_rdy}]
set_input_delay -clock [get_clocks {clk}] 0.0 [get_ports {weight_rsc_dat[*]}]
set_input_delay -clock [get_clocks {clk}] 0.0 [get_ports {weight_rsc_vld}]
set_output_delay -clock [get_clocks {clk}] 0.0 [get_ports {weight_rsc_rdy}]
set_output_delay -clock [get_clocks {clk}] 0.0 [get_ports {output_rsc_dat[*]}]
set_output_delay -clock [get_clocks {clk}] 0.0 [get_ports {output_rsc_vld}]
set_input_delay -clock [get_clocks {clk}] 0.0 [get_ports {output_rsc_rdy}]
set_input_delay -clock [get_clocks {clk}] 0.0 [get_ports {paramsIn_rsc_dat[*]}]
set_input_delay -clock [get_clocks {clk}] 0.0 [get_ports {paramsIn_rsc_vld}]
set_output_delay -clock [get_clocks {clk}] 0.0 [get_ports {paramsIn_rsc_rdy}]
set_input_delay -clock [get_clocks {clk}] 0.0 [get_ports {loopIndicesIn_rsc_dat[*]}]
set_input_delay -clock [get_clocks {clk}] 0.0 [get_ports {loopIndicesIn_rsc_vld}]
set_output_delay -clock [get_clocks {clk}] 0.0 [get_ports {loopIndicesIn_rsc_rdy}]

