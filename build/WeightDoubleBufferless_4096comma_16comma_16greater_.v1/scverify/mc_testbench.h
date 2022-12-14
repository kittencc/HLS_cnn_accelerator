// ----------------------------------------------------------------------------
// SystemC Testbench Header
//
//    HLS version: 10.4b/841621 Production Release
//       HLS date: Thu Oct 24 17:20:07 PDT 2019
//  Flow Packages: HDL_Tcl 8.0a, SCVerify 10.4
//
//   Generated by: ctorng@caddy01
// Generated date: Sat Oct 01 16:41:00 PDT 2022
//
// ----------------------------------------------------------------------------
#ifdef CCS_SCVERIFY

// 
// -------------------------------------
// mc_testbench
// SCVerify mc_testbench SC_MODULE
// -------------------------------------
// 
#ifndef INCLUDED_MC_TESTBENCH_H
#define INCLUDED_MC_TESTBENCH_H


#ifndef SC_USE_STD_STRING
#define SC_USE_STD_STRING
#endif

#include "../../src/conv.h"
#include "../../src/Serializer.h"
#include "../../src/Deserializer.h"
#include "../../src/InputDoubleBuffer.h"
#include "../../src/WeightDoubleBuffer.h"
#include "../../src/SystolicArray.h"
#include "ccs_testbench.h"
#include <systemc.h>
#include <tlm.h>
#include <ac_int.h>
#include <ac_channel.h>
#include <mc_container_types.h>
#include <mc_typeconv.h>
#include <mc_transactors.h>
#include <mc_comparator.h>
#include <mc_end_of_testbench.h>
#include <vector>


class mc_testbench : public sc_module
{
public:
   // Interface Ports
   sc_in< bool > clk;
   sc_port< tlm::tlm_fifo_put_if< ac_int<8, true > > > ccs_weights_in;
   sc_port< tlm::tlm_fifo_put_if< mc_wait_ctrl > > ccs_wait_ctrl_weights_in;
   sc_port< tlm::tlm_fifo_put_if< int > > ccs_sizecount_weights_in;
   sc_port< tlm::tlm_fifo_get_if< mgc_sysc_ver_array1D<ac_int<8, true >,16> > > ccs_weights_out_value;
   sc_port< tlm::tlm_fifo_put_if< mc_wait_ctrl > > ccs_wait_ctrl_weights_out_value;
   sc_port< tlm::tlm_fifo_put_if< ac_int<16, false > > > ccs_paramsIn_OY1;
   sc_port< tlm::tlm_fifo_put_if< mc_wait_ctrl > > ccs_wait_ctrl_paramsIn_OY1;
   sc_port< tlm::tlm_fifo_put_if< int > > ccs_sizecount_paramsIn_OY1;
   sc_port< tlm::tlm_fifo_put_if< ac_int<16, false > > > ccs_paramsIn_OX1;
   sc_port< tlm::tlm_fifo_put_if< mc_wait_ctrl > > ccs_wait_ctrl_paramsIn_OX1;
   sc_port< tlm::tlm_fifo_put_if< int > > ccs_sizecount_paramsIn_OX1;
   sc_port< tlm::tlm_fifo_put_if< ac_int<16, false > > > ccs_paramsIn_OY0;
   sc_port< tlm::tlm_fifo_put_if< mc_wait_ctrl > > ccs_wait_ctrl_paramsIn_OY0;
   sc_port< tlm::tlm_fifo_put_if< int > > ccs_sizecount_paramsIn_OY0;
   sc_port< tlm::tlm_fifo_put_if< ac_int<16, false > > > ccs_paramsIn_OX0;
   sc_port< tlm::tlm_fifo_put_if< mc_wait_ctrl > > ccs_wait_ctrl_paramsIn_OX0;
   sc_port< tlm::tlm_fifo_put_if< int > > ccs_sizecount_paramsIn_OX0;
   sc_port< tlm::tlm_fifo_put_if< ac_int<16, false > > > ccs_paramsIn_OC1;
   sc_port< tlm::tlm_fifo_put_if< mc_wait_ctrl > > ccs_wait_ctrl_paramsIn_OC1;
   sc_port< tlm::tlm_fifo_put_if< int > > ccs_sizecount_paramsIn_OC1;
   sc_port< tlm::tlm_fifo_put_if< ac_int<16, false > > > ccs_paramsIn_IC1;
   sc_port< tlm::tlm_fifo_put_if< mc_wait_ctrl > > ccs_wait_ctrl_paramsIn_IC1;
   sc_port< tlm::tlm_fifo_put_if< int > > ccs_sizecount_paramsIn_IC1;
   sc_port< tlm::tlm_fifo_put_if< ac_int<16, false > > > ccs_paramsIn_FX;
   sc_port< tlm::tlm_fifo_put_if< mc_wait_ctrl > > ccs_wait_ctrl_paramsIn_FX;
   sc_port< tlm::tlm_fifo_put_if< int > > ccs_sizecount_paramsIn_FX;
   sc_port< tlm::tlm_fifo_put_if< ac_int<16, false > > > ccs_paramsIn_FY;
   sc_port< tlm::tlm_fifo_put_if< mc_wait_ctrl > > ccs_wait_ctrl_paramsIn_FY;
   sc_port< tlm::tlm_fifo_put_if< int > > ccs_sizecount_paramsIn_FY;
   sc_port< tlm::tlm_fifo_put_if< ac_int<16, false > > > ccs_paramsIn_STRIDE;
   sc_port< tlm::tlm_fifo_put_if< mc_wait_ctrl > > ccs_wait_ctrl_paramsIn_STRIDE;
   sc_port< tlm::tlm_fifo_put_if< int > > ccs_sizecount_paramsIn_STRIDE;
   sc_in< bool > design_is_idle;
   sc_out< sc_logic > enable_stalls;
   sc_in< unsigned short > stall_coverage;
   
   // Data objects
   bool testbench_ended;
   int main_exit_code;
   bool atleast_one_active_input;
   sc_time last_event_time;
   sc_time last_event_time2;
   sc_signal< bool >                          cpp_testbench_active;
   sc_event testbench_end_event;
   sc_event reset_request_event;
   bool _checked_results;
   bool _failed;
   static mc_testbench* that;
   unsigned int remaining_ccs_weights_in;
   bool _capture_weights_in;
   int weights_in_capture_count;
   int weights_in_iteration_count;
   unsigned int remaining_weights_out_value_golden;
   tlm::tlm_fifo< mc_golden_info< mgc_sysc_ver_array1D<ac_int<8, true >,16>, ac_int<8, true > > > weights_out_value_golden;
   bool _capture_weights_out_value;
   int weights_out_value_capture_count;
   int weights_out_value_iteration_count;
   unsigned int remaining_ccs_paramsIn_OY1;
   bool _capture_paramsIn_OY1;
   int paramsIn_OY1_capture_count;
   int paramsIn_OY1_iteration_count;
   unsigned int remaining_ccs_paramsIn_OX1;
   bool _capture_paramsIn_OX1;
   int paramsIn_OX1_capture_count;
   int paramsIn_OX1_iteration_count;
   unsigned int remaining_ccs_paramsIn_OY0;
   bool _capture_paramsIn_OY0;
   int paramsIn_OY0_capture_count;
   int paramsIn_OY0_iteration_count;
   unsigned int remaining_ccs_paramsIn_OX0;
   bool _capture_paramsIn_OX0;
   int paramsIn_OX0_capture_count;
   int paramsIn_OX0_iteration_count;
   unsigned int remaining_ccs_paramsIn_OC1;
   bool _capture_paramsIn_OC1;
   int paramsIn_OC1_capture_count;
   int paramsIn_OC1_iteration_count;
   unsigned int remaining_ccs_paramsIn_IC1;
   bool _capture_paramsIn_IC1;
   int paramsIn_IC1_capture_count;
   int paramsIn_IC1_iteration_count;
   unsigned int remaining_ccs_paramsIn_FX;
   bool _capture_paramsIn_FX;
   int paramsIn_FX_capture_count;
   int paramsIn_FX_iteration_count;
   unsigned int remaining_ccs_paramsIn_FY;
   bool _capture_paramsIn_FY;
   int paramsIn_FY_capture_count;
   int paramsIn_FY_iteration_count;
   unsigned int remaining_ccs_paramsIn_STRIDE;
   bool _capture_paramsIn_STRIDE;
   int paramsIn_STRIDE_capture_count;
   int paramsIn_STRIDE_iteration_count;
   int wait_cnt;
   
   // Named Objects
   
   // Module instance pointers
   mc_comparator< mgc_sysc_ver_array1D<ac_int<8, true >,16> , ac_int<8, true > > *weights_out_value_comp;
   
   // Declare processes (SC_METHOD and SC_THREAD)
   void wait_for_end();
   void run();
   
   // Constructor
   SC_HAS_PROCESS(mc_testbench);
   mc_testbench(
      const sc_module_name& name
   )
      : clk("clk")
      , ccs_weights_in("ccs_weights_in")
      , ccs_wait_ctrl_weights_in("ccs_wait_ctrl_weights_in")
      , ccs_sizecount_weights_in("ccs_sizecount_weights_in")
      , ccs_weights_out_value("ccs_weights_out_value")
      , ccs_wait_ctrl_weights_out_value("ccs_wait_ctrl_weights_out_value")
      , ccs_paramsIn_OY1("ccs_paramsIn_OY1")
      , ccs_wait_ctrl_paramsIn_OY1("ccs_wait_ctrl_paramsIn_OY1")
      , ccs_sizecount_paramsIn_OY1("ccs_sizecount_paramsIn_OY1")
      , ccs_paramsIn_OX1("ccs_paramsIn_OX1")
      , ccs_wait_ctrl_paramsIn_OX1("ccs_wait_ctrl_paramsIn_OX1")
      , ccs_sizecount_paramsIn_OX1("ccs_sizecount_paramsIn_OX1")
      , ccs_paramsIn_OY0("ccs_paramsIn_OY0")
      , ccs_wait_ctrl_paramsIn_OY0("ccs_wait_ctrl_paramsIn_OY0")
      , ccs_sizecount_paramsIn_OY0("ccs_sizecount_paramsIn_OY0")
      , ccs_paramsIn_OX0("ccs_paramsIn_OX0")
      , ccs_wait_ctrl_paramsIn_OX0("ccs_wait_ctrl_paramsIn_OX0")
      , ccs_sizecount_paramsIn_OX0("ccs_sizecount_paramsIn_OX0")
      , ccs_paramsIn_OC1("ccs_paramsIn_OC1")
      , ccs_wait_ctrl_paramsIn_OC1("ccs_wait_ctrl_paramsIn_OC1")
      , ccs_sizecount_paramsIn_OC1("ccs_sizecount_paramsIn_OC1")
      , ccs_paramsIn_IC1("ccs_paramsIn_IC1")
      , ccs_wait_ctrl_paramsIn_IC1("ccs_wait_ctrl_paramsIn_IC1")
      , ccs_sizecount_paramsIn_IC1("ccs_sizecount_paramsIn_IC1")
      , ccs_paramsIn_FX("ccs_paramsIn_FX")
      , ccs_wait_ctrl_paramsIn_FX("ccs_wait_ctrl_paramsIn_FX")
      , ccs_sizecount_paramsIn_FX("ccs_sizecount_paramsIn_FX")
      , ccs_paramsIn_FY("ccs_paramsIn_FY")
      , ccs_wait_ctrl_paramsIn_FY("ccs_wait_ctrl_paramsIn_FY")
      , ccs_sizecount_paramsIn_FY("ccs_sizecount_paramsIn_FY")
      , ccs_paramsIn_STRIDE("ccs_paramsIn_STRIDE")
      , ccs_wait_ctrl_paramsIn_STRIDE("ccs_wait_ctrl_paramsIn_STRIDE")
      , ccs_sizecount_paramsIn_STRIDE("ccs_sizecount_paramsIn_STRIDE")
      , design_is_idle("design_is_idle")
      , enable_stalls("enable_stalls")
      , stall_coverage("stall_coverage")
      , cpp_testbench_active("cpp_testbench_active")
      , remaining_ccs_weights_in(0)
      , remaining_weights_out_value_golden(0)
      , weights_out_value_golden("weights_out_value_golden",-1)
      , remaining_ccs_paramsIn_OY1(0)
      , remaining_ccs_paramsIn_OX1(0)
      , remaining_ccs_paramsIn_OY0(0)
      , remaining_ccs_paramsIn_OX0(0)
      , remaining_ccs_paramsIn_OC1(0)
      , remaining_ccs_paramsIn_IC1(0)
      , remaining_ccs_paramsIn_FX(0)
      , remaining_ccs_paramsIn_FY(0)
      , remaining_ccs_paramsIn_STRIDE(0)
   {
      // Instantiate other modules
      weights_out_value_comp = new mc_comparator< mgc_sysc_ver_array1D<ac_int<8, true >,16> , ac_int<8, true > > (
         "weights_out_value_comp",
         "weights_out_value",
         1,
         0,
         1
      );
      weights_out_value_comp->data_in(ccs_weights_out_value);
      weights_out_value_comp->data_golden(weights_out_value_golden);
      
      
      // Register processes
      SC_METHOD(wait_for_end);
      sensitive << clk.pos() << testbench_end_event;
      SC_THREAD(run);
      // Other constructor statements
      set_stack_size(64000000);
      _checked_results = false;
      that = this;
      testbench_ended = false;
      main_exit_code = 0;
      atleast_one_active_input = true;
      _failed = false;
      _capture_weights_in = true;
      _capture_weights_out_value = true;
      _capture_paramsIn_OY1 = true;
      _capture_paramsIn_OX1 = true;
      _capture_paramsIn_OY0 = true;
      _capture_paramsIn_OX0 = true;
      _capture_paramsIn_OC1 = true;
      _capture_paramsIn_IC1 = true;
      _capture_paramsIn_FX = true;
      _capture_paramsIn_FY = true;
      _capture_paramsIn_STRIDE = true;
      wait_cnt = 0;
   }
   
   ~mc_testbench()
   {
      delete weights_out_value_comp;
      weights_out_value_comp = 0;
   }
   
   // C++ class functions
   public:
      static void wait_for_idle_sync() ;
   public:
      static void set_enable_stalls(bool flag) ;
   public:
      void reset_request() ;
   public:
      void capture_weights_in( ac_channel<ac_int<8, true > > &weights_in) ;
   public:
      void capture_weights_out( ac_channel<PackedInt<8UL, 16UL > > &weights_out) ;
   public:
      void capture_paramsIn( ac_channel<Params > &paramsIn) ;
   protected:
      void wait_on_input_required() ;
   public:
      static void capture_IN( ac_channel<ac_int<8, true > > &weights_in,  ac_channel<PackedInt<8UL, 16UL > > &weights_out,  ac_channel<Params > &paramsIn) ;
   public:
      static void capture_OUT( ac_channel<ac_int<8, true > > &weights_in,  ac_channel<PackedInt<8UL, 16UL > > &weights_out,  ac_channel<Params > &paramsIn) ;
   public:
      static void exec_run( ac_channel<ac_int<8, true > > &weights_in,  ac_channel<PackedInt<8UL, 16UL > > &weights_out,  ac_channel<Params > &paramsIn) ;
   protected:
      void start_of_simulation() ;
   protected:
      void end_of_simulation() ;
   public:
      void check_results() ;
   public:
      bool failed() ;
   public:
      void set_failed(bool fail) ;
};
#endif
#endif //CCS_SCVERIFY
