// ----------------------------------------------------------------------------
// User Testbench Interface Header
//
//    HLS version: 10.4b/841621 Production Release
//       HLS date: Thu Oct 24 17:20:07 PDT 2019
//  Flow Packages: HDL_Tcl 8.0a, SCVerify 10.4
//
//   Generated by: ctorng@caddy01
// Generated date: Sun Sep 25 20:34:09 PDT 2022
//
// ----------------------------------------------------------------------------

#ifndef CCS_TESTBENCH_H
#define CCS_TESTBENCH_H
#include <ac_int.h>
#include <ac_channel.h>
#include "mc_wait_ctrl.h"

class testbench
{
   public:
   int argc;
   const char* const *argv;
   int main(); //CCS_MAIN
   static bool enable_idle_sync_mode;
   static unsigned short idle_sync_stable_cycles;
   static void set_enable_stalls(bool flag);
   static void reset_request();
   static bool weights_in_ignore;
   static bool weights_in_skip;
   static bool weights_in_skip_quiet;
   static bool weights_in_skip_once;
   static bool weights_in_skip_noerr;
   static int  weights_in_array_comp_first;
   static int  weights_in_array_comp_last;
   static mc_wait_ctrl weights_in_wait_ctrl;
   static bool weights_out_value_ignore;
   static bool weights_out_value_skip;
   static bool weights_out_value_skip_quiet;
   static bool weights_out_value_skip_once;
   static bool weights_out_value_skip_noerr;
   static int  weights_out_value_array_comp_first;
   static int  weights_out_value_array_comp_last;
   static bool weights_out_value_use_mask;
   static ac_int<8, true > weights_out_value_output_mask;
   static mc_wait_ctrl weights_out_value_wait_ctrl;
   static bool paramsIn_OY1_ignore;
   static bool paramsIn_OY1_skip;
   static bool paramsIn_OY1_skip_quiet;
   static bool paramsIn_OY1_skip_once;
   static bool paramsIn_OY1_skip_noerr;
   static int  paramsIn_OY1_array_comp_first;
   static int  paramsIn_OY1_array_comp_last;
   static mc_wait_ctrl paramsIn_OY1_wait_ctrl;
   static bool paramsIn_OX1_ignore;
   static bool paramsIn_OX1_skip;
   static bool paramsIn_OX1_skip_quiet;
   static bool paramsIn_OX1_skip_once;
   static bool paramsIn_OX1_skip_noerr;
   static int  paramsIn_OX1_array_comp_first;
   static int  paramsIn_OX1_array_comp_last;
   static mc_wait_ctrl paramsIn_OX1_wait_ctrl;
   static bool paramsIn_OY0_ignore;
   static bool paramsIn_OY0_skip;
   static bool paramsIn_OY0_skip_quiet;
   static bool paramsIn_OY0_skip_once;
   static bool paramsIn_OY0_skip_noerr;
   static int  paramsIn_OY0_array_comp_first;
   static int  paramsIn_OY0_array_comp_last;
   static mc_wait_ctrl paramsIn_OY0_wait_ctrl;
   static bool paramsIn_OX0_ignore;
   static bool paramsIn_OX0_skip;
   static bool paramsIn_OX0_skip_quiet;
   static bool paramsIn_OX0_skip_once;
   static bool paramsIn_OX0_skip_noerr;
   static int  paramsIn_OX0_array_comp_first;
   static int  paramsIn_OX0_array_comp_last;
   static mc_wait_ctrl paramsIn_OX0_wait_ctrl;
   static bool paramsIn_OC1_ignore;
   static bool paramsIn_OC1_skip;
   static bool paramsIn_OC1_skip_quiet;
   static bool paramsIn_OC1_skip_once;
   static bool paramsIn_OC1_skip_noerr;
   static int  paramsIn_OC1_array_comp_first;
   static int  paramsIn_OC1_array_comp_last;
   static mc_wait_ctrl paramsIn_OC1_wait_ctrl;
   static bool paramsIn_IC1_ignore;
   static bool paramsIn_IC1_skip;
   static bool paramsIn_IC1_skip_quiet;
   static bool paramsIn_IC1_skip_once;
   static bool paramsIn_IC1_skip_noerr;
   static int  paramsIn_IC1_array_comp_first;
   static int  paramsIn_IC1_array_comp_last;
   static mc_wait_ctrl paramsIn_IC1_wait_ctrl;
   static bool paramsIn_FX_ignore;
   static bool paramsIn_FX_skip;
   static bool paramsIn_FX_skip_quiet;
   static bool paramsIn_FX_skip_once;
   static bool paramsIn_FX_skip_noerr;
   static int  paramsIn_FX_array_comp_first;
   static int  paramsIn_FX_array_comp_last;
   static mc_wait_ctrl paramsIn_FX_wait_ctrl;
   static bool paramsIn_FY_ignore;
   static bool paramsIn_FY_skip;
   static bool paramsIn_FY_skip_quiet;
   static bool paramsIn_FY_skip_once;
   static bool paramsIn_FY_skip_noerr;
   static int  paramsIn_FY_array_comp_first;
   static int  paramsIn_FY_array_comp_last;
   static mc_wait_ctrl paramsIn_FY_wait_ctrl;
   static bool paramsIn_STRIDE_ignore;
   static bool paramsIn_STRIDE_skip;
   static bool paramsIn_STRIDE_skip_quiet;
   static bool paramsIn_STRIDE_skip_once;
   static bool paramsIn_STRIDE_skip_noerr;
   static int  paramsIn_STRIDE_array_comp_first;
   static int  paramsIn_STRIDE_array_comp_last;
   static mc_wait_ctrl paramsIn_STRIDE_wait_ctrl;
   #ifndef CCS_SCVERIFY_USE_CCS_BLOCK
   static void exec_run( ac_channel<ac_int<8, true > > &weights_in,  ac_channel<PackedInt<8UL, 16UL > > &weights_out,  ac_channel<Params > &paramsIn);
   #endif
   explicit testbench(int _argc, const char* const *_argv)
      :argc(_argc), argv(_argv)
   {
   }
   ~testbench()
   {
   }
   private:
   testbench() {}
};
extern void mc_testbench_reset_request();
extern void mc_testbench_weights_in_skip(bool v);
extern void mc_testbench_weights_out_value_skip(bool v);
extern void mc_testbench_paramsIn_OY1_skip(bool v);
extern void mc_testbench_paramsIn_OX1_skip(bool v);
extern void mc_testbench_paramsIn_OY0_skip(bool v);
extern void mc_testbench_paramsIn_OX0_skip(bool v);
extern void mc_testbench_paramsIn_OC1_skip(bool v);
extern void mc_testbench_paramsIn_IC1_skip(bool v);
extern void mc_testbench_paramsIn_FX_skip(bool v);
extern void mc_testbench_paramsIn_FY_skip(bool v);
extern void mc_testbench_paramsIn_STRIDE_skip(bool v);
#endif //CCS_TESTBENCH_H
