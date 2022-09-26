void mc_testbench_capture_IN( ac_channel<ac_int<8, true > > &weights_in,  ac_channel<PackedInt<8UL, 16UL > > &weights_out,  ac_channel<Params > &paramsIn) { mc_testbench::capture_IN(weights_in,weights_out,paramsIn); }
void mc_testbench_capture_OUT( ac_channel<ac_int<8, true > > &weights_in,  ac_channel<PackedInt<8UL, 16UL > > &weights_out,  ac_channel<Params > &paramsIn) { mc_testbench::capture_OUT(weights_in,weights_out,paramsIn); }
void mc_testbench_wait_for_idle_sync() {mc_testbench::wait_for_idle_sync(); }

