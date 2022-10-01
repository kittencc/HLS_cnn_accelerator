void mc_testbench_capture_IN( ac_channel<ac_int<8, true > > &input_serial,  ac_channel<ac_int<8, true > > &weight_serial,  ac_channel<ac_int<16, true > > &output_serial,  ac_channel<ac_int<16, false > > &paramsIn) { mc_testbench::capture_IN(input_serial,weight_serial,output_serial,paramsIn); }
void mc_testbench_capture_OUT( ac_channel<ac_int<8, true > > &input_serial,  ac_channel<ac_int<8, true > > &weight_serial,  ac_channel<ac_int<16, true > > &output_serial,  ac_channel<ac_int<16, false > > &paramsIn) { mc_testbench::capture_OUT(input_serial,weight_serial,output_serial,paramsIn); }
void mc_testbench_wait_for_idle_sync() {mc_testbench::wait_for_idle_sync(); }

class ccs_intercept
{
  public:
  void capture_THIS( void* _this ) {
    if ( dut == NULL ) dut = _this;
    cur_inst = _this;
    if ( capture_msg && dut != NULL && dut == cur_inst ) {
      std::cout << "SCVerify intercepting C++ function 'Conv::run' for RTL block 'Conv'" << std::endl;
      capture_msg = false;
    }
  }
  void capture_IN(  ac_channel<ac_int<8, true > > &input_serial,  ac_channel<ac_int<8, true > > &weight_serial,  ac_channel<ac_int<16, true > > &output_serial,  ac_channel<ac_int<16, false > > &paramsIn ) {
    if ( dut != NULL && dut == cur_inst )
      mc_testbench_capture_IN(input_serial,weight_serial,output_serial,paramsIn);
  }
  void capture_OUT(  ac_channel<ac_int<8, true > > &input_serial,  ac_channel<ac_int<8, true > > &weight_serial,  ac_channel<ac_int<16, true > > &output_serial,  ac_channel<ac_int<16, false > > &paramsIn ) {
    if ( dut != NULL && dut == cur_inst )
      mc_testbench_capture_OUT(input_serial,weight_serial,output_serial,paramsIn);
  }
  void wait_for_idle_sync() {
    if ( dut != NULL && dut == cur_inst )
      mc_testbench_wait_for_idle_sync();
  }
  ccs_intercept(): dut(NULL), cur_inst(NULL), capture_msg(true){}
  private:
  void *dut, *cur_inst;
  bool capture_msg;
};

void Conv::run(ac_channel<ac_int<8, true > > &input_serial,ac_channel<ac_int<8, true > > &weight_serial,ac_channel<ac_int<16, true > > &output_serial,ac_channel<ac_int<16, false > > &paramsIn) {
  static ccs_intercept ccs_intercept_inst;
  void* ccs_intercept_this = this;
  ccs_intercept_inst.capture_THIS(ccs_intercept_this);
  ccs_intercept_inst.capture_IN(input_serial,weight_serial,output_serial,paramsIn);
  ccs_real_run(input_serial,weight_serial,output_serial,paramsIn);
  ccs_intercept_inst.capture_OUT(input_serial,weight_serial,output_serial,paramsIn);
}
