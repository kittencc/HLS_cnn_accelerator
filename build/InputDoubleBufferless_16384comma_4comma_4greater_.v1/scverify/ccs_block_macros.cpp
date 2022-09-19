void mc_testbench_capture_IN( ac_channel<ac_int<8, true > > &inputs_in,  ac_channel<PackedInt<8UL, 4UL > > &inputs_out,  ac_channel<Params > &paramsIn) { mc_testbench::capture_IN(inputs_in,inputs_out,paramsIn); }
void mc_testbench_capture_OUT( ac_channel<ac_int<8, true > > &inputs_in,  ac_channel<PackedInt<8UL, 4UL > > &inputs_out,  ac_channel<Params > &paramsIn) { mc_testbench::capture_OUT(inputs_in,inputs_out,paramsIn); }
void mc_testbench_wait_for_idle_sync() {mc_testbench::wait_for_idle_sync(); }

