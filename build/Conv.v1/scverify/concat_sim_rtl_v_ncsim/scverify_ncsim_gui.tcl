# Source static function file
global env
# Source the common TCL file (that also reads the wave database file)
source $env(MGC_HOME)/pkgs/sif/userware/En_na/flows/ncsim_funcs.tcl
read_ccs_wave ./build/Conv.v1/scverify/ccs_wave_signals.dat
setup_vcd_file ./build/Conv.v1/.dut_inst_info.tcl

populate_wave_window

if { ("0" != {}) && [file exists "0"] } {
   source "0"
}
# If not running in GUI mode, run the entire simulation
if { ![gui_is_active] } {
   do_simulation_run
}
