void mc_testbench_capture_IN( ac_channel<PackedInt<8UL, 16UL > > &input,  ac_channel<PackedInt<8UL, 16UL > > &weight,  ac_channel<PackedInt<16UL, 16UL > > &output,  ac_channel<Params > &paramsIn,  ac_channel<LoopIndices > &loopIndicesIn) { mc_testbench::capture_IN(input,weight,output,paramsIn,loopIndicesIn); }
void mc_testbench_capture_OUT( ac_channel<PackedInt<8UL, 16UL > > &input,  ac_channel<PackedInt<8UL, 16UL > > &weight,  ac_channel<PackedInt<16UL, 16UL > > &output,  ac_channel<Params > &paramsIn,  ac_channel<LoopIndices > &loopIndicesIn) { mc_testbench::capture_OUT(input,weight,output,paramsIn,loopIndicesIn); }
void mc_testbench_wait_for_idle_sync() {mc_testbench::wait_for_idle_sync(); }

