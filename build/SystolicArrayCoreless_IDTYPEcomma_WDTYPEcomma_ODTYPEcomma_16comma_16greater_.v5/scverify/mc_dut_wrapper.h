// Generated by ZYANG
#ifndef INCLUDED_CCS_DUT_WRAPPER_H
#define INCLUDED_CCS_DUT_WRAPPER_H

#ifndef SC_USE_STD_STRING
#define SC_USE_STD_STRING
#endif

#include <systemc.h>
#include <mc_simulator_extensions.h>

#ifdef CCS_SYSC
namespace HDL {
#endif
#if defined(CCS_DUT_SYSC)
// alias ccs_DUT_wrapper to namespace enclosure of either cycle or RTL SystemC netlist
namespace
    ccs_design {
#if defined(CCS_DUT_CYCLE)
#include "cycle.cxx"
#else
#if defined(CCS_DUT_RTL)
#include "rtl.cxx"
#endif
#endif
}
typedef
    ccs_design::HDL::SystolicArrayCore<IDTYPE,WDTYPE,ODTYPE,16,16> ccs_DUT_wrapper;

#else

// Create a foreign
    // module wrapper around the HDL
#ifdef VCS_SYSTEMC
// VCS support - ccs_DUT_wrapper is derived from VCS-generated SystemC wrapper around HDL code
class ccs_DUT_wrapper : public TOP_HDL_ENTITY
{
public:
  ccs_DUT_wrapper(const sc_module_name& nm, const char *hdl_name)
  : TOP_HDL_ENTITY(nm)
  {
  // elaborate_foreign_module(hdl_name);
  }

  ~ccs_DUT_wrapper() {}
};

#else
// non VCS simulators - ccs_DUT_wrapper is derived from mc_foreign_module (adding 2nd ctor arg)
class ccs_DUT_wrapper: public mc_foreign_module
{
public:
  // Interface Ports
  sc_in<bool> clk;
  sc_in<sc_logic> arst_n;
  sc_in<sc_lv<128> > input_rsc_dat;
  sc_in<sc_logic> input_rsc_vld;
  sc_out<sc_logic> input_rsc_rdy;
  sc_in<sc_lv<128> > weight_rsc_dat;
  sc_in<sc_logic> weight_rsc_vld;
  sc_out<sc_logic> weight_rsc_rdy;
  sc_out<sc_lv<256> > output_rsc_dat;
  sc_out<sc_logic> output_rsc_vld;
  sc_in<sc_logic> output_rsc_rdy;
  sc_in<sc_lv<144> > paramsIn_rsc_dat;
  sc_in<sc_logic> paramsIn_rsc_vld;
  sc_out<sc_logic> paramsIn_rsc_rdy;
  sc_in<sc_lv<48> > loopIndicesIn_rsc_dat;
  sc_in<sc_logic> loopIndicesIn_rsc_vld;
  sc_out<sc_logic> loopIndicesIn_rsc_rdy;
public:
  ccs_DUT_wrapper(const sc_module_name& nm, const char *hdl_name)
  :
    mc_foreign_module(nm, hdl_name), 
    clk("clk"), 
    arst_n("arst_n"), 
    input_rsc_dat("input_rsc_dat"), 
    input_rsc_vld("input_rsc_vld"), 
    input_rsc_rdy("input_rsc_rdy"), 
    weight_rsc_dat("weight_rsc_dat"), 
    weight_rsc_vld("weight_rsc_vld"), 
    weight_rsc_rdy("weight_rsc_rdy"), 
    output_rsc_dat("output_rsc_dat"), 
    output_rsc_vld("output_rsc_vld"), 
    output_rsc_rdy("output_rsc_rdy"), 
    paramsIn_rsc_dat("paramsIn_rsc_dat"), 
    paramsIn_rsc_vld("paramsIn_rsc_vld"), 
    paramsIn_rsc_rdy("paramsIn_rsc_rdy"), 
    loopIndicesIn_rsc_dat("loopIndicesIn_rsc_dat"), 
    loopIndicesIn_rsc_vld("loopIndicesIn_rsc_vld"), 
    loopIndicesIn_rsc_rdy("loopIndicesIn_rsc_rdy")
  {
    elaborate_foreign_module(hdl_name);
  }

  ~ccs_DUT_wrapper() {}
};
#endif

#endif

#ifdef CCS_SYSC
} // end namespace HDL
#endif
#endif

