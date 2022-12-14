// ----------------------------------------------------------------------------
// SystemC Testbench Header
//
//    HLS version: 10.4b/841621 Production Release
//       HLS date: Thu Oct 24 17:20:07 PDT 2019
//  Flow Packages: HDL_Tcl 8.0a, SCVerify 10.4
//
//   Generated by: ctorng@caddy01
// Generated date: Sat Oct 01 16:51:16 PDT 2022
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

#include "../../src/Conv.cpp"
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
   sc_port< tlm::tlm_fifo_put_if< ac_int<8, true > > > ccs_input_serial;
   sc_port< tlm::tlm_fifo_put_if< mc_wait_ctrl > > ccs_wait_ctrl_input_serial;
   sc_port< tlm::tlm_fifo_put_if< int > > ccs_sizecount_input_serial;
   sc_port< tlm::tlm_fifo_put_if< ac_int<8, true > > > ccs_weight_serial;
   sc_port< tlm::tlm_fifo_put_if< mc_wait_ctrl > > ccs_wait_ctrl_weight_serial;
   sc_port< tlm::tlm_fifo_put_if< int > > ccs_sizecount_weight_serial;
   sc_port< tlm::tlm_fifo_get_if< ac_int<16, true > > > ccs_output_serial;
   sc_port< tlm::tlm_fifo_put_if< mc_wait_ctrl > > ccs_wait_ctrl_output_serial;
   sc_port< tlm::tlm_fifo_put_if< ac_int<16, false > > > ccs_paramsIn;
   sc_port< tlm::tlm_fifo_put_if< mc_wait_ctrl > > ccs_wait_ctrl_paramsIn;
   sc_port< tlm::tlm_fifo_put_if< int > > ccs_sizecount_paramsIn;
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
   unsigned int remaining_ccs_input_serial;
   bool _capture_input_serial;
   int input_serial_capture_count;
   int input_serial_iteration_count;
   unsigned int remaining_ccs_weight_serial;
   bool _capture_weight_serial;
   int weight_serial_capture_count;
   int weight_serial_iteration_count;
   unsigned int remaining_output_serial_golden;
   tlm::tlm_fifo< mc_golden_info< ac_int<16, true >, ac_int<16, true > > > output_serial_golden;
   bool _capture_output_serial;
   int output_serial_capture_count;
   int output_serial_iteration_count;
   unsigned int remaining_ccs_paramsIn;
   bool _capture_paramsIn;
   int paramsIn_capture_count;
   int paramsIn_iteration_count;
   int wait_cnt;
   
   // Named Objects
   
   // Module instance pointers
   mc_comparator< ac_int<16, true > , ac_int<16, true > > *output_serial_comp;
   
   // Declare processes (SC_METHOD and SC_THREAD)
   void wait_for_end();
   void run();
   
   // Constructor
   SC_HAS_PROCESS(mc_testbench);
   mc_testbench(
      const sc_module_name& name
   )
      : clk("clk")
      , ccs_input_serial("ccs_input_serial")
      , ccs_wait_ctrl_input_serial("ccs_wait_ctrl_input_serial")
      , ccs_sizecount_input_serial("ccs_sizecount_input_serial")
      , ccs_weight_serial("ccs_weight_serial")
      , ccs_wait_ctrl_weight_serial("ccs_wait_ctrl_weight_serial")
      , ccs_sizecount_weight_serial("ccs_sizecount_weight_serial")
      , ccs_output_serial("ccs_output_serial")
      , ccs_wait_ctrl_output_serial("ccs_wait_ctrl_output_serial")
      , ccs_paramsIn("ccs_paramsIn")
      , ccs_wait_ctrl_paramsIn("ccs_wait_ctrl_paramsIn")
      , ccs_sizecount_paramsIn("ccs_sizecount_paramsIn")
      , design_is_idle("design_is_idle")
      , enable_stalls("enable_stalls")
      , stall_coverage("stall_coverage")
      , cpp_testbench_active("cpp_testbench_active")
      , remaining_ccs_input_serial(0)
      , remaining_ccs_weight_serial(0)
      , remaining_output_serial_golden(0)
      , output_serial_golden("output_serial_golden",-1)
      , remaining_ccs_paramsIn(0)
   {
      // Instantiate other modules
      output_serial_comp = new mc_comparator< ac_int<16, true > , ac_int<16, true > > (
         "output_serial_comp",
         "output_serial",
         1,
         0,
         1
      );
      output_serial_comp->data_in(ccs_output_serial);
      output_serial_comp->data_golden(output_serial_golden);
      
      
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
      _capture_input_serial = true;
      _capture_weight_serial = true;
      _capture_output_serial = true;
      _capture_paramsIn = true;
      wait_cnt = 0;
   }
   
   ~mc_testbench()
   {
      delete output_serial_comp;
      output_serial_comp = 0;
   }
   
   // C++ class functions
   public:
      static void wait_for_idle_sync() ;
   public:
      static void set_enable_stalls(bool flag) ;
   public:
      void reset_request() ;
   public:
      void capture_input_serial( ac_channel<ac_int<8, true > > &input_serial) ;
   public:
      void capture_weight_serial( ac_channel<ac_int<8, true > > &weight_serial) ;
   public:
      void capture_output_serial( ac_channel<ac_int<16, true > > &output_serial) ;
   public:
      void capture_paramsIn( ac_channel<ac_int<16, false > > &paramsIn) ;
   protected:
      void wait_on_input_required() ;
   public:
      static void capture_IN( ac_channel<ac_int<8, true > > &input_serial,  ac_channel<ac_int<8, true > > &weight_serial,  ac_channel<ac_int<16, true > > &output_serial,  ac_channel<ac_int<16, false > > &paramsIn) ;
   public:
      static void capture_OUT( ac_channel<ac_int<8, true > > &input_serial,  ac_channel<ac_int<8, true > > &weight_serial,  ac_channel<ac_int<16, true > > &output_serial,  ac_channel<ac_int<16, false > > &paramsIn) ;
   public:
      static void exec_run( ac_channel<ac_int<8, true > > &input_serial,  ac_channel<ac_int<8, true > > &weight_serial,  ac_channel<ac_int<16, true > > &output_serial,  ac_channel<ac_int<16, false > > &paramsIn) ;
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
