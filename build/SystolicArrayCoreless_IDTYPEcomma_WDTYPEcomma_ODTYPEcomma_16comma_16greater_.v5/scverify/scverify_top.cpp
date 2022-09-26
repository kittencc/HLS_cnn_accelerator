#include <string>
#include <fstream>
#include <iostream>
#include "mc_testbench.h"
#include <mc_reset.h>
#include <mc_transactors.h>
#include <mc_scverify.h>
#include <mc_stall_ctrl.h>
#include "ccs_ioport_trans_rsc_v1.h"
#include <mc_monitor.h>
#include <mc_simulator_extensions.h>
#include "mc_dut_wrapper.h"
#include "ccs_probes.cpp"
#include <mt19937ar.c>
#ifndef TO_QUOTED_STRING
#define TO_QUOTED_STRING(x) TO_QUOTED_STRING1(x)
#define TO_QUOTED_STRING1(x) #x
#endif
#ifndef TOP_HDL_ENTITY
#define TOP_HDL_ENTITY SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16
#endif
// Hold time for the SCVerify testbench to account for the gate delay after downstream synthesis in pico second(s)
// Hold time value is obtained from 'top_gate_constraints.cpp', which is generated at the end of RTL synthesis
#ifdef CCS_DUT_GATE
extern double __scv_hold_time;
extern double __scv_hold_time_RSCID_100;
extern double __scv_hold_time_RSCID_101;
extern double __scv_hold_time_RSCID_102;
extern double __scv_hold_time_RSCID_103;
extern double __scv_hold_time_RSCID_104;
#else
double __scv_hold_time = 0.0; // default for non-gate simulation is zero
double __scv_hold_time_RSCID_100 = 0;
double __scv_hold_time_RSCID_101 = 0;
double __scv_hold_time_RSCID_102 = 0;
double __scv_hold_time_RSCID_103 = 0;
double __scv_hold_time_RSCID_104 = 0;
#endif

class scverify_top : public sc_module
{
public:
  sc_signal<sc_logic>                                                            rst;
  sc_signal<sc_logic>                                                            rst_n;
  sc_signal<sc_logic>                                                            SIG_SC_LOGIC_0;
  sc_signal<sc_logic>                                                            SIG_SC_LOGIC_1;
  sc_signal<sc_logic>                                                            TLS_design_is_idle;
  sc_signal<bool>                                                                TLS_design_is_idle_reg;
  sc_clock                                                                       clk;
  mc_programmable_reset                                                          arst_n_driver;
  sc_signal<sc_logic>                                                            TLS_arst_n;
  sc_signal<sc_lv<128> >                                                         TLS_input_rsc_dat;
  sc_signal<sc_logic>                                                            TLS_input_rsc_vld;
  sc_signal<sc_logic>                                                            TLS_input_rsc_rdy;
  sc_signal<sc_lv<128> >                                                         TLS_weight_rsc_dat;
  sc_signal<sc_logic>                                                            TLS_weight_rsc_vld;
  sc_signal<sc_logic>                                                            TLS_weight_rsc_rdy;
  sc_signal<sc_lv<256> >                                                         TLS_output_rsc_dat;
  sc_signal<sc_logic>                                                            TLS_output_rsc_vld;
  sc_signal<sc_logic>                                                            TLS_output_rsc_rdy;
  sc_signal<sc_lv<144> >                                                         TLS_paramsIn_rsc_dat;
  sc_signal<sc_logic>                                                            TLS_paramsIn_rsc_vld;
  sc_signal<sc_logic>                                                            TLS_paramsIn_rsc_rdy;
  sc_signal<sc_lv<48> >                                                          TLS_loopIndicesIn_rsc_dat;
  sc_signal<sc_logic>                                                            TLS_loopIndicesIn_rsc_vld;
  sc_signal<sc_logic>                                                            TLS_loopIndicesIn_rsc_rdy;
  ccs_DUT_wrapper                                                                SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_INST;
  ccs_in_wait_trans_rsc_v1<1,128 >                                               input_rsc_INST;
  ccs_in_wait_trans_rsc_v1<1,128 >                                               weight_rsc_INST;
  ccs_out_wait_trans_rsc_v1<1,256 >                                              output_rsc_INST;
  ccs_in_wait_trans_rsc_v1<1,144 >                                               paramsIn_rsc_INST;
  ccs_in_wait_trans_rsc_v1<1,48 >                                                loopIndicesIn_rsc_INST;
  tlm::tlm_fifo<mgc_sysc_ver_array1D<ac_int<8, true >,16> >                      TLS_in_fifo_input_value;
  tlm::tlm_fifo<mc_wait_ctrl>                                                    TLS_in_wait_ctrl_fifo_input_value;
  tlm::tlm_fifo<int>                                                             TLS_in_fifo_input_value_sizecount;
  sc_signal<sc_logic>                                                            TLS_input_rsc_trdone;
  mc_channel_input_transactor<mgc_sysc_ver_array1D<ac_int<8, true >,16>,8,true>  transactor_input_value;
  tlm::tlm_fifo<mgc_sysc_ver_array1D<ac_int<8, true >,16> >                      TLS_in_fifo_weight_value;
  tlm::tlm_fifo<mc_wait_ctrl>                                                    TLS_in_wait_ctrl_fifo_weight_value;
  tlm::tlm_fifo<int>                                                             TLS_in_fifo_weight_value_sizecount;
  sc_signal<sc_logic>                                                            TLS_weight_rsc_trdone;
  mc_channel_input_transactor<mgc_sysc_ver_array1D<ac_int<8, true >,16>,8,true>  transactor_weight_value;
  tlm::tlm_fifo<mgc_sysc_ver_array1D<ac_int<16, true >,16> >                     TLS_out_fifo_output_value;
  tlm::tlm_fifo<mc_wait_ctrl>                                                    TLS_out_wait_ctrl_fifo_output_value;
  sc_signal<sc_logic>                                                            TLS_output_rsc_trdone;
  mc_output_transactor<mgc_sysc_ver_array1D<ac_int<16, true >,16>,16,true>       transactor_output_value;
  tlm::tlm_fifo<ac_int<16, false > >                                             TLS_in_fifo_paramsIn_OY1;
  tlm::tlm_fifo<mc_wait_ctrl>                                                    TLS_in_wait_ctrl_fifo_paramsIn_OY1;
  tlm::tlm_fifo<int>                                                             TLS_in_fifo_paramsIn_OY1_sizecount;
  sc_signal<sc_logic>                                                            TLS_paramsIn_rsc_trdone;
  mc_channel_input_transactor<ac_int<16, false >,16,false>                       transactor_paramsIn_OY1;
  tlm::tlm_fifo<ac_int<16, false > >                                             TLS_in_fifo_paramsIn_OX1;
  tlm::tlm_fifo<mc_wait_ctrl>                                                    TLS_in_wait_ctrl_fifo_paramsIn_OX1;
  tlm::tlm_fifo<int>                                                             TLS_in_fifo_paramsIn_OX1_sizecount;
  mc_channel_input_transactor<ac_int<16, false >,16,false>                       transactor_paramsIn_OX1;
  tlm::tlm_fifo<ac_int<16, false > >                                             TLS_in_fifo_paramsIn_OY0;
  tlm::tlm_fifo<mc_wait_ctrl>                                                    TLS_in_wait_ctrl_fifo_paramsIn_OY0;
  tlm::tlm_fifo<int>                                                             TLS_in_fifo_paramsIn_OY0_sizecount;
  mc_channel_input_transactor<ac_int<16, false >,16,false>                       transactor_paramsIn_OY0;
  tlm::tlm_fifo<ac_int<16, false > >                                             TLS_in_fifo_paramsIn_OX0;
  tlm::tlm_fifo<mc_wait_ctrl>                                                    TLS_in_wait_ctrl_fifo_paramsIn_OX0;
  tlm::tlm_fifo<int>                                                             TLS_in_fifo_paramsIn_OX0_sizecount;
  mc_channel_input_transactor<ac_int<16, false >,16,false>                       transactor_paramsIn_OX0;
  tlm::tlm_fifo<ac_int<16, false > >                                             TLS_in_fifo_paramsIn_OC1;
  tlm::tlm_fifo<mc_wait_ctrl>                                                    TLS_in_wait_ctrl_fifo_paramsIn_OC1;
  tlm::tlm_fifo<int>                                                             TLS_in_fifo_paramsIn_OC1_sizecount;
  mc_channel_input_transactor<ac_int<16, false >,16,false>                       transactor_paramsIn_OC1;
  tlm::tlm_fifo<ac_int<16, false > >                                             TLS_in_fifo_paramsIn_IC1;
  tlm::tlm_fifo<mc_wait_ctrl>                                                    TLS_in_wait_ctrl_fifo_paramsIn_IC1;
  tlm::tlm_fifo<int>                                                             TLS_in_fifo_paramsIn_IC1_sizecount;
  mc_channel_input_transactor<ac_int<16, false >,16,false>                       transactor_paramsIn_IC1;
  tlm::tlm_fifo<ac_int<16, false > >                                             TLS_in_fifo_paramsIn_FX;
  tlm::tlm_fifo<mc_wait_ctrl>                                                    TLS_in_wait_ctrl_fifo_paramsIn_FX;
  tlm::tlm_fifo<int>                                                             TLS_in_fifo_paramsIn_FX_sizecount;
  mc_channel_input_transactor<ac_int<16, false >,16,false>                       transactor_paramsIn_FX;
  tlm::tlm_fifo<ac_int<16, false > >                                             TLS_in_fifo_paramsIn_FY;
  tlm::tlm_fifo<mc_wait_ctrl>                                                    TLS_in_wait_ctrl_fifo_paramsIn_FY;
  tlm::tlm_fifo<int>                                                             TLS_in_fifo_paramsIn_FY_sizecount;
  mc_channel_input_transactor<ac_int<16, false >,16,false>                       transactor_paramsIn_FY;
  tlm::tlm_fifo<ac_int<16, false > >                                             TLS_in_fifo_paramsIn_STRIDE;
  tlm::tlm_fifo<mc_wait_ctrl>                                                    TLS_in_wait_ctrl_fifo_paramsIn_STRIDE;
  tlm::tlm_fifo<int>                                                             TLS_in_fifo_paramsIn_STRIDE_sizecount;
  mc_channel_input_transactor<ac_int<16, false >,16,false>                       transactor_paramsIn_STRIDE;
  tlm::tlm_fifo<ac_int<16, false > >                                             TLS_in_fifo_loopIndicesIn_ic1_idx;
  tlm::tlm_fifo<mc_wait_ctrl>                                                    TLS_in_wait_ctrl_fifo_loopIndicesIn_ic1_idx;
  tlm::tlm_fifo<int>                                                             TLS_in_fifo_loopIndicesIn_ic1_idx_sizecount;
  sc_signal<sc_logic>                                                            TLS_loopIndicesIn_rsc_trdone;
  mc_channel_input_transactor<ac_int<16, false >,16,false>                       transactor_loopIndicesIn_ic1_idx;
  tlm::tlm_fifo<ac_int<16, false > >                                             TLS_in_fifo_loopIndicesIn_fx_idx;
  tlm::tlm_fifo<mc_wait_ctrl>                                                    TLS_in_wait_ctrl_fifo_loopIndicesIn_fx_idx;
  tlm::tlm_fifo<int>                                                             TLS_in_fifo_loopIndicesIn_fx_idx_sizecount;
  mc_channel_input_transactor<ac_int<16, false >,16,false>                       transactor_loopIndicesIn_fx_idx;
  tlm::tlm_fifo<ac_int<16, false > >                                             TLS_in_fifo_loopIndicesIn_fy_idx;
  tlm::tlm_fifo<mc_wait_ctrl>                                                    TLS_in_wait_ctrl_fifo_loopIndicesIn_fy_idx;
  tlm::tlm_fifo<int>                                                             TLS_in_fifo_loopIndicesIn_fy_idx_sizecount;
  mc_channel_input_transactor<ac_int<16, false >,16,false>                       transactor_loopIndicesIn_fy_idx;
  mc_testbench                                                                   testbench_INST;
  sc_signal<sc_logic>                                                            catapult_start;
  sc_signal<sc_logic>                                                            catapult_done;
  sc_signal<sc_logic>                                                            catapult_ready;
  sc_signal<sc_logic>                                                            in_sync;
  sc_signal<sc_logic>                                                            out_sync;
  sc_signal<sc_logic>                                                            inout_sync;
  sc_signal<unsigned>                                                            wait_for_init;
  sync_generator                                                                 sync_generator_INST;
  catapult_monitor                                                               catapult_monitor_INST;
  ccs_probe_monitor                                                             *ccs_probe_monitor_INST;
  sc_event                                                                       generate_reset_event;
  sc_event                                                                       deadlock_event;
  sc_signal<sc_logic>                                                            deadlocked;
  sc_signal<sc_logic>                                                            maxsimtime;
  sc_event                                                                       max_sim_time_event;
  sc_signal<sc_logic>                                                            OFS_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_staller_inst_run_wen;
  sc_signal<sc_logic>                                                            OFS_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_input_rsci_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_input_rsci_input_wait_ctrl_inst_input_rsci_irdy_run_sct;
  sc_signal<sc_logic>                                                            OFS_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_input_rsci_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_input_rsci_input_wait_ctrl_inst_input_rsci_ivld;
  sc_signal<sc_logic>                                                            OFS_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_weight_rsci_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_weight_rsci_weight_wait_ctrl_inst_weight_rsci_irdy_run_sct;
  sc_signal<sc_logic>                                                            OFS_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_weight_rsci_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_weight_rsci_weight_wait_ctrl_inst_weight_rsci_ivld;
  sc_signal<sc_logic>                                                            OFS_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_output_rsci_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_output_rsci_output_wait_ctrl_inst_output_rsci_irdy;
  sc_signal<sc_logic>                                                            OFS_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_output_rsci_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_output_rsci_output_wait_ctrl_inst_output_rsci_ivld_run_sct;
  sc_signal<sc_logic>                                                            OFS_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_paramsIn_rsci_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_irdy_run_sct;
  sc_signal<sc_logic>                                                            OFS_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_paramsIn_rsci_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_ivld;
  sc_signal<sc_logic>                                                            OFS_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_loopIndicesIn_rsci_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_loopIndicesIn_rsci_loopIndicesIn_wait_ctrl_inst_loopIndicesIn_rsci_irdy_run_sct;
  sc_signal<sc_logic>                                                            OFS_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_loopIndicesIn_rsci_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_loopIndicesIn_rsci_loopIndicesIn_wait_ctrl_inst_loopIndicesIn_rsci_ivld;
  sc_signal<sc_logic>                                                            OFS_input_rsc_vld;
  sc_signal<sc_logic>                                                            OFS_weight_rsc_vld;
  sc_signal<sc_logic>                                                            OFS_output_rsc_rdy;
  sc_signal<sc_logic>                                                            OFS_paramsIn_rsc_vld;
  sc_signal<sc_logic>                                                            OFS_loopIndicesIn_rsc_vld;
  sc_signal<sc_logic>                                                            TLS_enable_stalls;
  sc_signal<unsigned short>                                                      TLS_stall_coverage;

  void TLS_arst_n_method();
  void drive_TLS_input_rsc_trdone();
  void drive_TLS_weight_rsc_trdone();
  void drive_TLS_output_rsc_trdone();
  void drive_TLS_paramsIn_rsc_trdone();
  void drive_TLS_loopIndicesIn_rsc_trdone();
  void max_sim_time_notify();
  void start_of_simulation();
  void setup_debug();
  void debug(const char* varname, int flags, int count);
  void generate_reset();
  void install_observe_foreign_signals();
  void deadlock_watch();
  void deadlock_notify();

  // Constructor
  SC_HAS_PROCESS(scverify_top);
  scverify_top(const sc_module_name& name)
    : rst("rst")
    , rst_n("rst_n")
    , SIG_SC_LOGIC_0("SIG_SC_LOGIC_0")
    , SIG_SC_LOGIC_1("SIG_SC_LOGIC_1")
    , TLS_design_is_idle("TLS_design_is_idle")
    , TLS_design_is_idle_reg("TLS_design_is_idle_reg")
    , CCS_CLK_CTOR(clk, "clk", 5, SC_NS, 0.5, 0, SC_NS, false)
    , arst_n_driver("arst_n_driver", 10.000000, true)
    , TLS_arst_n("TLS_arst_n")
    , TLS_input_rsc_dat("TLS_input_rsc_dat")
    , TLS_input_rsc_vld("TLS_input_rsc_vld")
    , TLS_input_rsc_rdy("TLS_input_rsc_rdy")
    , TLS_weight_rsc_dat("TLS_weight_rsc_dat")
    , TLS_weight_rsc_vld("TLS_weight_rsc_vld")
    , TLS_weight_rsc_rdy("TLS_weight_rsc_rdy")
    , TLS_output_rsc_dat("TLS_output_rsc_dat")
    , TLS_output_rsc_vld("TLS_output_rsc_vld")
    , TLS_output_rsc_rdy("TLS_output_rsc_rdy")
    , TLS_paramsIn_rsc_dat("TLS_paramsIn_rsc_dat")
    , TLS_paramsIn_rsc_vld("TLS_paramsIn_rsc_vld")
    , TLS_paramsIn_rsc_rdy("TLS_paramsIn_rsc_rdy")
    , TLS_loopIndicesIn_rsc_dat("TLS_loopIndicesIn_rsc_dat")
    , TLS_loopIndicesIn_rsc_vld("TLS_loopIndicesIn_rsc_vld")
    , TLS_loopIndicesIn_rsc_rdy("TLS_loopIndicesIn_rsc_rdy")
    , SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_INST("rtl", TO_QUOTED_STRING(TOP_HDL_ENTITY))
    , input_rsc_INST("input_rsc", true)
    , weight_rsc_INST("weight_rsc", true)
    , output_rsc_INST("output_rsc", true)
    , paramsIn_rsc_INST("paramsIn_rsc", true)
    , loopIndicesIn_rsc_INST("loopIndicesIn_rsc", true)
    , TLS_in_fifo_input_value("TLS_in_fifo_input_value", -1)
    , TLS_in_wait_ctrl_fifo_input_value("TLS_in_wait_ctrl_fifo_input_value", -1)
    , TLS_in_fifo_input_value_sizecount("TLS_in_fifo_input_value_sizecount", 1)
    , TLS_input_rsc_trdone("TLS_input_rsc_trdone")
    , transactor_input_value("transactor_input_value", 0, 128, 0)
    , TLS_in_fifo_weight_value("TLS_in_fifo_weight_value", -1)
    , TLS_in_wait_ctrl_fifo_weight_value("TLS_in_wait_ctrl_fifo_weight_value", -1)
    , TLS_in_fifo_weight_value_sizecount("TLS_in_fifo_weight_value_sizecount", 1)
    , TLS_weight_rsc_trdone("TLS_weight_rsc_trdone")
    , transactor_weight_value("transactor_weight_value", 0, 128, 0)
    , TLS_out_fifo_output_value("TLS_out_fifo_output_value", -1)
    , TLS_out_wait_ctrl_fifo_output_value("TLS_out_wait_ctrl_fifo_output_value", -1)
    , TLS_output_rsc_trdone("TLS_output_rsc_trdone")
    , transactor_output_value("transactor_output_value", 0, 256, 0)
    , TLS_in_fifo_paramsIn_OY1("TLS_in_fifo_paramsIn_OY1", -1)
    , TLS_in_wait_ctrl_fifo_paramsIn_OY1("TLS_in_wait_ctrl_fifo_paramsIn_OY1", -1)
    , TLS_in_fifo_paramsIn_OY1_sizecount("TLS_in_fifo_paramsIn_OY1_sizecount", 1)
    , TLS_paramsIn_rsc_trdone("TLS_paramsIn_rsc_trdone")
    , transactor_paramsIn_OY1("transactor_paramsIn_OY1", 0, 16, 0)
    , TLS_in_fifo_paramsIn_OX1("TLS_in_fifo_paramsIn_OX1", -1)
    , TLS_in_wait_ctrl_fifo_paramsIn_OX1("TLS_in_wait_ctrl_fifo_paramsIn_OX1", -1)
    , TLS_in_fifo_paramsIn_OX1_sizecount("TLS_in_fifo_paramsIn_OX1_sizecount", 1)
    , transactor_paramsIn_OX1("transactor_paramsIn_OX1", 0, 16, 16)
    , TLS_in_fifo_paramsIn_OY0("TLS_in_fifo_paramsIn_OY0", -1)
    , TLS_in_wait_ctrl_fifo_paramsIn_OY0("TLS_in_wait_ctrl_fifo_paramsIn_OY0", -1)
    , TLS_in_fifo_paramsIn_OY0_sizecount("TLS_in_fifo_paramsIn_OY0_sizecount", 1)
    , transactor_paramsIn_OY0("transactor_paramsIn_OY0", 0, 16, 32)
    , TLS_in_fifo_paramsIn_OX0("TLS_in_fifo_paramsIn_OX0", -1)
    , TLS_in_wait_ctrl_fifo_paramsIn_OX0("TLS_in_wait_ctrl_fifo_paramsIn_OX0", -1)
    , TLS_in_fifo_paramsIn_OX0_sizecount("TLS_in_fifo_paramsIn_OX0_sizecount", 1)
    , transactor_paramsIn_OX0("transactor_paramsIn_OX0", 0, 16, 48)
    , TLS_in_fifo_paramsIn_OC1("TLS_in_fifo_paramsIn_OC1", -1)
    , TLS_in_wait_ctrl_fifo_paramsIn_OC1("TLS_in_wait_ctrl_fifo_paramsIn_OC1", -1)
    , TLS_in_fifo_paramsIn_OC1_sizecount("TLS_in_fifo_paramsIn_OC1_sizecount", 1)
    , transactor_paramsIn_OC1("transactor_paramsIn_OC1", 0, 16, 64)
    , TLS_in_fifo_paramsIn_IC1("TLS_in_fifo_paramsIn_IC1", -1)
    , TLS_in_wait_ctrl_fifo_paramsIn_IC1("TLS_in_wait_ctrl_fifo_paramsIn_IC1", -1)
    , TLS_in_fifo_paramsIn_IC1_sizecount("TLS_in_fifo_paramsIn_IC1_sizecount", 1)
    , transactor_paramsIn_IC1("transactor_paramsIn_IC1", 0, 16, 80)
    , TLS_in_fifo_paramsIn_FX("TLS_in_fifo_paramsIn_FX", -1)
    , TLS_in_wait_ctrl_fifo_paramsIn_FX("TLS_in_wait_ctrl_fifo_paramsIn_FX", -1)
    , TLS_in_fifo_paramsIn_FX_sizecount("TLS_in_fifo_paramsIn_FX_sizecount", 1)
    , transactor_paramsIn_FX("transactor_paramsIn_FX", 0, 16, 96)
    , TLS_in_fifo_paramsIn_FY("TLS_in_fifo_paramsIn_FY", -1)
    , TLS_in_wait_ctrl_fifo_paramsIn_FY("TLS_in_wait_ctrl_fifo_paramsIn_FY", -1)
    , TLS_in_fifo_paramsIn_FY_sizecount("TLS_in_fifo_paramsIn_FY_sizecount", 1)
    , transactor_paramsIn_FY("transactor_paramsIn_FY", 0, 16, 112)
    , TLS_in_fifo_paramsIn_STRIDE("TLS_in_fifo_paramsIn_STRIDE", -1)
    , TLS_in_wait_ctrl_fifo_paramsIn_STRIDE("TLS_in_wait_ctrl_fifo_paramsIn_STRIDE", -1)
    , TLS_in_fifo_paramsIn_STRIDE_sizecount("TLS_in_fifo_paramsIn_STRIDE_sizecount", 1)
    , transactor_paramsIn_STRIDE("transactor_paramsIn_STRIDE", 0, 16, 128)
    , TLS_in_fifo_loopIndicesIn_ic1_idx("TLS_in_fifo_loopIndicesIn_ic1_idx", -1)
    , TLS_in_wait_ctrl_fifo_loopIndicesIn_ic1_idx("TLS_in_wait_ctrl_fifo_loopIndicesIn_ic1_idx", -1)
    , TLS_in_fifo_loopIndicesIn_ic1_idx_sizecount("TLS_in_fifo_loopIndicesIn_ic1_idx_sizecount", 1)
    , TLS_loopIndicesIn_rsc_trdone("TLS_loopIndicesIn_rsc_trdone")
    , transactor_loopIndicesIn_ic1_idx("transactor_loopIndicesIn_ic1_idx", 0, 16, 0)
    , TLS_in_fifo_loopIndicesIn_fx_idx("TLS_in_fifo_loopIndicesIn_fx_idx", -1)
    , TLS_in_wait_ctrl_fifo_loopIndicesIn_fx_idx("TLS_in_wait_ctrl_fifo_loopIndicesIn_fx_idx", -1)
    , TLS_in_fifo_loopIndicesIn_fx_idx_sizecount("TLS_in_fifo_loopIndicesIn_fx_idx_sizecount", 1)
    , transactor_loopIndicesIn_fx_idx("transactor_loopIndicesIn_fx_idx", 0, 16, 16)
    , TLS_in_fifo_loopIndicesIn_fy_idx("TLS_in_fifo_loopIndicesIn_fy_idx", -1)
    , TLS_in_wait_ctrl_fifo_loopIndicesIn_fy_idx("TLS_in_wait_ctrl_fifo_loopIndicesIn_fy_idx", -1)
    , TLS_in_fifo_loopIndicesIn_fy_idx_sizecount("TLS_in_fifo_loopIndicesIn_fy_idx_sizecount", 1)
    , transactor_loopIndicesIn_fy_idx("transactor_loopIndicesIn_fy_idx", 0, 16, 32)
    , testbench_INST("user_tb")
    , catapult_start("catapult_start")
    , catapult_done("catapult_done")
    , catapult_ready("catapult_ready")
    , in_sync("in_sync")
    , out_sync("out_sync")
    , inout_sync("inout_sync")
    , wait_for_init("wait_for_init")
    , sync_generator_INST("sync_generator", true, false, false, false, 6, 6, 0)
    , catapult_monitor_INST("Monitor", clk, true, 6LL, 1LL)
    , ccs_probe_monitor_INST(NULL)
    , deadlocked("deadlocked")
    , maxsimtime("maxsimtime")
  {
    arst_n_driver.reset_out(TLS_arst_n);

    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_INST.clk(clk);
    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_INST.arst_n(TLS_arst_n);
    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_INST.input_rsc_dat(TLS_input_rsc_dat);
    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_INST.input_rsc_vld(TLS_input_rsc_vld);
    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_INST.input_rsc_rdy(TLS_input_rsc_rdy);
    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_INST.weight_rsc_dat(TLS_weight_rsc_dat);
    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_INST.weight_rsc_vld(TLS_weight_rsc_vld);
    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_INST.weight_rsc_rdy(TLS_weight_rsc_rdy);
    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_INST.output_rsc_dat(TLS_output_rsc_dat);
    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_INST.output_rsc_vld(TLS_output_rsc_vld);
    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_INST.output_rsc_rdy(TLS_output_rsc_rdy);
    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_INST.paramsIn_rsc_dat(TLS_paramsIn_rsc_dat);
    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_INST.paramsIn_rsc_vld(TLS_paramsIn_rsc_vld);
    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_INST.paramsIn_rsc_rdy(TLS_paramsIn_rsc_rdy);
    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_INST.loopIndicesIn_rsc_dat(TLS_loopIndicesIn_rsc_dat);
    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_INST.loopIndicesIn_rsc_vld(TLS_loopIndicesIn_rsc_vld);
    SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_INST.loopIndicesIn_rsc_rdy(TLS_loopIndicesIn_rsc_rdy);

    input_rsc_INST.rdy(TLS_input_rsc_rdy);
    input_rsc_INST.vld(TLS_input_rsc_vld);
    input_rsc_INST.dat(TLS_input_rsc_dat);
    input_rsc_INST.clk(clk);
    input_rsc_INST.add_attribute(*(new sc_attribute<double>("CLK_SKEW_DELAY", __scv_hold_time_RSCID_100)));

    weight_rsc_INST.rdy(TLS_weight_rsc_rdy);
    weight_rsc_INST.vld(TLS_weight_rsc_vld);
    weight_rsc_INST.dat(TLS_weight_rsc_dat);
    weight_rsc_INST.clk(clk);
    weight_rsc_INST.add_attribute(*(new sc_attribute<double>("CLK_SKEW_DELAY", __scv_hold_time_RSCID_101)));

    output_rsc_INST.rdy(TLS_output_rsc_rdy);
    output_rsc_INST.vld(TLS_output_rsc_vld);
    output_rsc_INST.dat(TLS_output_rsc_dat);
    output_rsc_INST.clk(clk);
    output_rsc_INST.add_attribute(*(new sc_attribute<double>("CLK_SKEW_DELAY", __scv_hold_time_RSCID_102)));

    paramsIn_rsc_INST.rdy(TLS_paramsIn_rsc_rdy);
    paramsIn_rsc_INST.vld(TLS_paramsIn_rsc_vld);
    paramsIn_rsc_INST.dat(TLS_paramsIn_rsc_dat);
    paramsIn_rsc_INST.clk(clk);
    paramsIn_rsc_INST.add_attribute(*(new sc_attribute<double>("CLK_SKEW_DELAY", __scv_hold_time_RSCID_103)));

    loopIndicesIn_rsc_INST.rdy(TLS_loopIndicesIn_rsc_rdy);
    loopIndicesIn_rsc_INST.vld(TLS_loopIndicesIn_rsc_vld);
    loopIndicesIn_rsc_INST.dat(TLS_loopIndicesIn_rsc_dat);
    loopIndicesIn_rsc_INST.clk(clk);
    loopIndicesIn_rsc_INST.add_attribute(*(new sc_attribute<double>("CLK_SKEW_DELAY", __scv_hold_time_RSCID_104)));

    transactor_input_value.in_fifo(TLS_in_fifo_input_value);
    transactor_input_value.in_wait_ctrl_fifo(TLS_in_wait_ctrl_fifo_input_value);
    transactor_input_value.sizecount_fifo(TLS_in_fifo_input_value_sizecount);
    transactor_input_value.bind_clk(clk, true, rst);
    transactor_input_value.add_attribute(*(new sc_attribute<int>("MC_TRANSACTOR_EVENT", 0 )));
    transactor_input_value.register_block(&input_rsc_INST, input_rsc_INST.basename(), TLS_input_rsc_trdone, 0,
        0, 1);

    transactor_weight_value.in_fifo(TLS_in_fifo_weight_value);
    transactor_weight_value.in_wait_ctrl_fifo(TLS_in_wait_ctrl_fifo_weight_value);
    transactor_weight_value.sizecount_fifo(TLS_in_fifo_weight_value_sizecount);
    transactor_weight_value.bind_clk(clk, true, rst);
    transactor_weight_value.add_attribute(*(new sc_attribute<int>("MC_TRANSACTOR_EVENT", 0 )));
    transactor_weight_value.register_block(&weight_rsc_INST, weight_rsc_INST.basename(), TLS_weight_rsc_trdone,
        0, 0, 1);

    transactor_output_value.out_fifo(TLS_out_fifo_output_value);
    transactor_output_value.out_wait_ctrl_fifo(TLS_out_wait_ctrl_fifo_output_value);
    transactor_output_value.bind_clk(clk, true, rst);
    transactor_output_value.add_attribute(*(new sc_attribute<int>("MC_TRANSACTOR_EVENT", 0 )));
    transactor_output_value.register_block(&output_rsc_INST, output_rsc_INST.basename(), TLS_output_rsc_trdone,
        0, 0, 1);

    transactor_paramsIn_OY1.in_fifo(TLS_in_fifo_paramsIn_OY1);
    transactor_paramsIn_OY1.in_wait_ctrl_fifo(TLS_in_wait_ctrl_fifo_paramsIn_OY1);
    transactor_paramsIn_OY1.sizecount_fifo(TLS_in_fifo_paramsIn_OY1_sizecount);
    transactor_paramsIn_OY1.bind_clk(clk, true, rst);
    transactor_paramsIn_OY1.add_attribute(*(new sc_attribute<int>("MC_TRANSACTOR_EVENT", 0 )));
    transactor_paramsIn_OY1.register_block(&paramsIn_rsc_INST, paramsIn_rsc_INST.basename(), TLS_paramsIn_rsc_trdone,
        0, 0, 1);

    transactor_paramsIn_OX1.in_fifo(TLS_in_fifo_paramsIn_OX1);
    transactor_paramsIn_OX1.in_wait_ctrl_fifo(TLS_in_wait_ctrl_fifo_paramsIn_OX1);
    transactor_paramsIn_OX1.sizecount_fifo(TLS_in_fifo_paramsIn_OX1_sizecount);
    transactor_paramsIn_OX1.bind_clk(clk, true, rst);
    transactor_paramsIn_OX1.add_attribute(*(new sc_attribute<int>("MC_TRANSACTOR_EVENT", 0 )));
    transactor_paramsIn_OX1.register_block(&paramsIn_rsc_INST, paramsIn_rsc_INST.basename(), TLS_paramsIn_rsc_trdone,
        0, 0, 1);

    transactor_paramsIn_OY0.in_fifo(TLS_in_fifo_paramsIn_OY0);
    transactor_paramsIn_OY0.in_wait_ctrl_fifo(TLS_in_wait_ctrl_fifo_paramsIn_OY0);
    transactor_paramsIn_OY0.sizecount_fifo(TLS_in_fifo_paramsIn_OY0_sizecount);
    transactor_paramsIn_OY0.bind_clk(clk, true, rst);
    transactor_paramsIn_OY0.add_attribute(*(new sc_attribute<int>("MC_TRANSACTOR_EVENT", 0 )));
    transactor_paramsIn_OY0.register_block(&paramsIn_rsc_INST, paramsIn_rsc_INST.basename(), TLS_paramsIn_rsc_trdone,
        0, 0, 1);

    transactor_paramsIn_OX0.in_fifo(TLS_in_fifo_paramsIn_OX0);
    transactor_paramsIn_OX0.in_wait_ctrl_fifo(TLS_in_wait_ctrl_fifo_paramsIn_OX0);
    transactor_paramsIn_OX0.sizecount_fifo(TLS_in_fifo_paramsIn_OX0_sizecount);
    transactor_paramsIn_OX0.bind_clk(clk, true, rst);
    transactor_paramsIn_OX0.add_attribute(*(new sc_attribute<int>("MC_TRANSACTOR_EVENT", 0 )));
    transactor_paramsIn_OX0.register_block(&paramsIn_rsc_INST, paramsIn_rsc_INST.basename(), TLS_paramsIn_rsc_trdone,
        0, 0, 1);

    transactor_paramsIn_OC1.in_fifo(TLS_in_fifo_paramsIn_OC1);
    transactor_paramsIn_OC1.in_wait_ctrl_fifo(TLS_in_wait_ctrl_fifo_paramsIn_OC1);
    transactor_paramsIn_OC1.sizecount_fifo(TLS_in_fifo_paramsIn_OC1_sizecount);
    transactor_paramsIn_OC1.bind_clk(clk, true, rst);
    transactor_paramsIn_OC1.add_attribute(*(new sc_attribute<int>("MC_TRANSACTOR_EVENT", 0 )));
    transactor_paramsIn_OC1.register_block(&paramsIn_rsc_INST, paramsIn_rsc_INST.basename(), TLS_paramsIn_rsc_trdone,
        0, 0, 1);

    transactor_paramsIn_IC1.in_fifo(TLS_in_fifo_paramsIn_IC1);
    transactor_paramsIn_IC1.in_wait_ctrl_fifo(TLS_in_wait_ctrl_fifo_paramsIn_IC1);
    transactor_paramsIn_IC1.sizecount_fifo(TLS_in_fifo_paramsIn_IC1_sizecount);
    transactor_paramsIn_IC1.bind_clk(clk, true, rst);
    transactor_paramsIn_IC1.add_attribute(*(new sc_attribute<int>("MC_TRANSACTOR_EVENT", 0 )));
    transactor_paramsIn_IC1.register_block(&paramsIn_rsc_INST, paramsIn_rsc_INST.basename(), TLS_paramsIn_rsc_trdone,
        0, 0, 1);

    transactor_paramsIn_FX.in_fifo(TLS_in_fifo_paramsIn_FX);
    transactor_paramsIn_FX.in_wait_ctrl_fifo(TLS_in_wait_ctrl_fifo_paramsIn_FX);
    transactor_paramsIn_FX.sizecount_fifo(TLS_in_fifo_paramsIn_FX_sizecount);
    transactor_paramsIn_FX.bind_clk(clk, true, rst);
    transactor_paramsIn_FX.add_attribute(*(new sc_attribute<int>("MC_TRANSACTOR_EVENT", 0 )));
    transactor_paramsIn_FX.register_block(&paramsIn_rsc_INST, paramsIn_rsc_INST.basename(), TLS_paramsIn_rsc_trdone,
        0, 0, 1);

    transactor_paramsIn_FY.in_fifo(TLS_in_fifo_paramsIn_FY);
    transactor_paramsIn_FY.in_wait_ctrl_fifo(TLS_in_wait_ctrl_fifo_paramsIn_FY);
    transactor_paramsIn_FY.sizecount_fifo(TLS_in_fifo_paramsIn_FY_sizecount);
    transactor_paramsIn_FY.bind_clk(clk, true, rst);
    transactor_paramsIn_FY.add_attribute(*(new sc_attribute<int>("MC_TRANSACTOR_EVENT", 0 )));
    transactor_paramsIn_FY.register_block(&paramsIn_rsc_INST, paramsIn_rsc_INST.basename(), TLS_paramsIn_rsc_trdone,
        0, 0, 1);

    transactor_paramsIn_STRIDE.in_fifo(TLS_in_fifo_paramsIn_STRIDE);
    transactor_paramsIn_STRIDE.in_wait_ctrl_fifo(TLS_in_wait_ctrl_fifo_paramsIn_STRIDE);
    transactor_paramsIn_STRIDE.sizecount_fifo(TLS_in_fifo_paramsIn_STRIDE_sizecount);
    transactor_paramsIn_STRIDE.bind_clk(clk, true, rst);
    transactor_paramsIn_STRIDE.add_attribute(*(new sc_attribute<int>("MC_TRANSACTOR_EVENT", 0 )));
    transactor_paramsIn_STRIDE.register_block(&paramsIn_rsc_INST, paramsIn_rsc_INST.basename(), TLS_paramsIn_rsc_trdone,
        0, 0, 1);

    transactor_loopIndicesIn_ic1_idx.in_fifo(TLS_in_fifo_loopIndicesIn_ic1_idx);
    transactor_loopIndicesIn_ic1_idx.in_wait_ctrl_fifo(TLS_in_wait_ctrl_fifo_loopIndicesIn_ic1_idx);
    transactor_loopIndicesIn_ic1_idx.sizecount_fifo(TLS_in_fifo_loopIndicesIn_ic1_idx_sizecount);
    transactor_loopIndicesIn_ic1_idx.bind_clk(clk, true, rst);
    transactor_loopIndicesIn_ic1_idx.add_attribute(*(new sc_attribute<int>("MC_TRANSACTOR_EVENT", 0 )));
    transactor_loopIndicesIn_ic1_idx.register_block(&loopIndicesIn_rsc_INST, loopIndicesIn_rsc_INST.basename(),
        TLS_loopIndicesIn_rsc_trdone, 0, 0, 1);

    transactor_loopIndicesIn_fx_idx.in_fifo(TLS_in_fifo_loopIndicesIn_fx_idx);
    transactor_loopIndicesIn_fx_idx.in_wait_ctrl_fifo(TLS_in_wait_ctrl_fifo_loopIndicesIn_fx_idx);
    transactor_loopIndicesIn_fx_idx.sizecount_fifo(TLS_in_fifo_loopIndicesIn_fx_idx_sizecount);
    transactor_loopIndicesIn_fx_idx.bind_clk(clk, true, rst);
    transactor_loopIndicesIn_fx_idx.add_attribute(*(new sc_attribute<int>("MC_TRANSACTOR_EVENT", 0 )));
    transactor_loopIndicesIn_fx_idx.register_block(&loopIndicesIn_rsc_INST, loopIndicesIn_rsc_INST.basename(),
        TLS_loopIndicesIn_rsc_trdone, 0, 0, 1);

    transactor_loopIndicesIn_fy_idx.in_fifo(TLS_in_fifo_loopIndicesIn_fy_idx);
    transactor_loopIndicesIn_fy_idx.in_wait_ctrl_fifo(TLS_in_wait_ctrl_fifo_loopIndicesIn_fy_idx);
    transactor_loopIndicesIn_fy_idx.sizecount_fifo(TLS_in_fifo_loopIndicesIn_fy_idx_sizecount);
    transactor_loopIndicesIn_fy_idx.bind_clk(clk, true, rst);
    transactor_loopIndicesIn_fy_idx.add_attribute(*(new sc_attribute<int>("MC_TRANSACTOR_EVENT", 0 )));
    transactor_loopIndicesIn_fy_idx.register_block(&loopIndicesIn_rsc_INST, loopIndicesIn_rsc_INST.basename(),
        TLS_loopIndicesIn_rsc_trdone, 0, 0, 1);

    testbench_INST.clk(clk);
    testbench_INST.ccs_input_value(TLS_in_fifo_input_value);
    testbench_INST.ccs_wait_ctrl_input_value(TLS_in_wait_ctrl_fifo_input_value);
    testbench_INST.ccs_sizecount_input_value(TLS_in_fifo_input_value_sizecount);
    testbench_INST.ccs_weight_value(TLS_in_fifo_weight_value);
    testbench_INST.ccs_wait_ctrl_weight_value(TLS_in_wait_ctrl_fifo_weight_value);
    testbench_INST.ccs_sizecount_weight_value(TLS_in_fifo_weight_value_sizecount);
    testbench_INST.ccs_output_value(TLS_out_fifo_output_value);
    testbench_INST.ccs_wait_ctrl_output_value(TLS_out_wait_ctrl_fifo_output_value);
    testbench_INST.ccs_paramsIn_OY1(TLS_in_fifo_paramsIn_OY1);
    testbench_INST.ccs_wait_ctrl_paramsIn_OY1(TLS_in_wait_ctrl_fifo_paramsIn_OY1);
    testbench_INST.ccs_sizecount_paramsIn_OY1(TLS_in_fifo_paramsIn_OY1_sizecount);
    testbench_INST.ccs_paramsIn_OX1(TLS_in_fifo_paramsIn_OX1);
    testbench_INST.ccs_wait_ctrl_paramsIn_OX1(TLS_in_wait_ctrl_fifo_paramsIn_OX1);
    testbench_INST.ccs_sizecount_paramsIn_OX1(TLS_in_fifo_paramsIn_OX1_sizecount);
    testbench_INST.ccs_paramsIn_OY0(TLS_in_fifo_paramsIn_OY0);
    testbench_INST.ccs_wait_ctrl_paramsIn_OY0(TLS_in_wait_ctrl_fifo_paramsIn_OY0);
    testbench_INST.ccs_sizecount_paramsIn_OY0(TLS_in_fifo_paramsIn_OY0_sizecount);
    testbench_INST.ccs_paramsIn_OX0(TLS_in_fifo_paramsIn_OX0);
    testbench_INST.ccs_wait_ctrl_paramsIn_OX0(TLS_in_wait_ctrl_fifo_paramsIn_OX0);
    testbench_INST.ccs_sizecount_paramsIn_OX0(TLS_in_fifo_paramsIn_OX0_sizecount);
    testbench_INST.ccs_paramsIn_OC1(TLS_in_fifo_paramsIn_OC1);
    testbench_INST.ccs_wait_ctrl_paramsIn_OC1(TLS_in_wait_ctrl_fifo_paramsIn_OC1);
    testbench_INST.ccs_sizecount_paramsIn_OC1(TLS_in_fifo_paramsIn_OC1_sizecount);
    testbench_INST.ccs_paramsIn_IC1(TLS_in_fifo_paramsIn_IC1);
    testbench_INST.ccs_wait_ctrl_paramsIn_IC1(TLS_in_wait_ctrl_fifo_paramsIn_IC1);
    testbench_INST.ccs_sizecount_paramsIn_IC1(TLS_in_fifo_paramsIn_IC1_sizecount);
    testbench_INST.ccs_paramsIn_FX(TLS_in_fifo_paramsIn_FX);
    testbench_INST.ccs_wait_ctrl_paramsIn_FX(TLS_in_wait_ctrl_fifo_paramsIn_FX);
    testbench_INST.ccs_sizecount_paramsIn_FX(TLS_in_fifo_paramsIn_FX_sizecount);
    testbench_INST.ccs_paramsIn_FY(TLS_in_fifo_paramsIn_FY);
    testbench_INST.ccs_wait_ctrl_paramsIn_FY(TLS_in_wait_ctrl_fifo_paramsIn_FY);
    testbench_INST.ccs_sizecount_paramsIn_FY(TLS_in_fifo_paramsIn_FY_sizecount);
    testbench_INST.ccs_paramsIn_STRIDE(TLS_in_fifo_paramsIn_STRIDE);
    testbench_INST.ccs_wait_ctrl_paramsIn_STRIDE(TLS_in_wait_ctrl_fifo_paramsIn_STRIDE);
    testbench_INST.ccs_sizecount_paramsIn_STRIDE(TLS_in_fifo_paramsIn_STRIDE_sizecount);
    testbench_INST.ccs_loopIndicesIn_ic1_idx(TLS_in_fifo_loopIndicesIn_ic1_idx);
    testbench_INST.ccs_wait_ctrl_loopIndicesIn_ic1_idx(TLS_in_wait_ctrl_fifo_loopIndicesIn_ic1_idx);
    testbench_INST.ccs_sizecount_loopIndicesIn_ic1_idx(TLS_in_fifo_loopIndicesIn_ic1_idx_sizecount);
    testbench_INST.ccs_loopIndicesIn_fx_idx(TLS_in_fifo_loopIndicesIn_fx_idx);
    testbench_INST.ccs_wait_ctrl_loopIndicesIn_fx_idx(TLS_in_wait_ctrl_fifo_loopIndicesIn_fx_idx);
    testbench_INST.ccs_sizecount_loopIndicesIn_fx_idx(TLS_in_fifo_loopIndicesIn_fx_idx_sizecount);
    testbench_INST.ccs_loopIndicesIn_fy_idx(TLS_in_fifo_loopIndicesIn_fy_idx);
    testbench_INST.ccs_wait_ctrl_loopIndicesIn_fy_idx(TLS_in_wait_ctrl_fifo_loopIndicesIn_fy_idx);
    testbench_INST.ccs_sizecount_loopIndicesIn_fy_idx(TLS_in_fifo_loopIndicesIn_fy_idx_sizecount);
    testbench_INST.design_is_idle(TLS_design_is_idle_reg);
    testbench_INST.enable_stalls(TLS_enable_stalls);
    testbench_INST.stall_coverage(TLS_stall_coverage);

    sync_generator_INST.clk(clk);
    sync_generator_INST.rst(rst);
    sync_generator_INST.in_sync(in_sync);
    sync_generator_INST.out_sync(out_sync);
    sync_generator_INST.inout_sync(inout_sync);
    sync_generator_INST.wait_for_init(wait_for_init);
    sync_generator_INST.catapult_start(catapult_start);
    sync_generator_INST.catapult_ready(catapult_ready);
    sync_generator_INST.catapult_done(catapult_done);

    catapult_monitor_INST.rst(rst);


    SC_METHOD(TLS_arst_n_method);
      sensitive_neg << TLS_arst_n;
      dont_initialize();

    SC_METHOD(drive_TLS_input_rsc_trdone);
      sensitive << TLS_input_rsc_rdy;
      sensitive << TLS_input_rsc_vld;
      sensitive << rst;

    SC_METHOD(drive_TLS_weight_rsc_trdone);
      sensitive << TLS_weight_rsc_rdy;
      sensitive << TLS_weight_rsc_vld;
      sensitive << rst;

    SC_METHOD(drive_TLS_output_rsc_trdone);
      sensitive << TLS_output_rsc_vld;
      sensitive << TLS_output_rsc_rdy;

    SC_METHOD(drive_TLS_paramsIn_rsc_trdone);
      sensitive << TLS_paramsIn_rsc_rdy;
      sensitive << TLS_paramsIn_rsc_vld;
      sensitive << rst;

    SC_METHOD(drive_TLS_loopIndicesIn_rsc_trdone);
      sensitive << TLS_loopIndicesIn_rsc_rdy;
      sensitive << TLS_loopIndicesIn_rsc_vld;
      sensitive << rst;

    SC_METHOD(max_sim_time_notify);
      sensitive << max_sim_time_event;
      dont_initialize();

    SC_METHOD(generate_reset);
      sensitive << generate_reset_event;
      sensitive << testbench_INST.reset_request_event;

    SC_METHOD(deadlock_watch);
      sensitive << clk;
      sensitive << OFS_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_staller_inst_run_wen;
      dont_initialize();

    SC_METHOD(deadlock_notify);
      sensitive << deadlock_event;
      dont_initialize();


    #if defined(CCS_SCVERIFY) && defined(CCS_DUT_RTL) && !defined(CCS_DUT_SYSC) && !defined(CCS_SYSC) && !defined(CCS_DUT_POWER)
        ccs_probe_monitor_INST = new ccs_probe_monitor("ccs_probe_monitor");
    ccs_probe_monitor_INST->clk(clk);
    ccs_probe_monitor_INST->rst(rst);
    #endif
    SIG_SC_LOGIC_0.write(SC_LOGIC_0);
    SIG_SC_LOGIC_1.write(SC_LOGIC_1);
    mt19937_init_genrand(19650218UL);
    install_observe_foreign_signals();
  }
};
void scverify_top::TLS_arst_n_method() {
  std::ostringstream msg;
  msg << "TLS_arst_n active @ " << sc_time_stamp();
  SC_REPORT_INFO("HW reset", msg.str().c_str());
  input_rsc_INST.clear();
  weight_rsc_INST.clear();
  output_rsc_INST.clear();
  paramsIn_rsc_INST.clear();
  loopIndicesIn_rsc_INST.clear();
}

void scverify_top::drive_TLS_input_rsc_trdone() {
  if (rst.read()==sc_dt::Log_1) { assert(TLS_input_rsc_rdy.read()!= SC_LOGIC_1); }
  TLS_input_rsc_trdone.write(TLS_input_rsc_rdy.read() & TLS_input_rsc_vld.read() & ~rst.read());
}

void scverify_top::drive_TLS_weight_rsc_trdone() {
  if (rst.read()==sc_dt::Log_1) { assert(TLS_weight_rsc_rdy.read()!= SC_LOGIC_1); }
  TLS_weight_rsc_trdone.write(TLS_weight_rsc_rdy.read() & TLS_weight_rsc_vld.read() & ~rst.read());
}

void scverify_top::drive_TLS_output_rsc_trdone() {
  if (rst.read()==sc_dt::Log_1) { assert(TLS_output_rsc_vld.read()!= SC_LOGIC_1); }
  TLS_output_rsc_trdone.write(TLS_output_rsc_vld.read() & TLS_output_rsc_rdy.read());
}

void scverify_top::drive_TLS_paramsIn_rsc_trdone() {
  if (rst.read()==sc_dt::Log_1) { assert(TLS_paramsIn_rsc_rdy.read()!= SC_LOGIC_1); }
  TLS_paramsIn_rsc_trdone.write(TLS_paramsIn_rsc_rdy.read() & TLS_paramsIn_rsc_vld.read() & ~rst.read());
}

void scverify_top::drive_TLS_loopIndicesIn_rsc_trdone() {
  if (rst.read()==sc_dt::Log_1) { assert(TLS_loopIndicesIn_rsc_rdy.read()!= SC_LOGIC_1); }
  TLS_loopIndicesIn_rsc_trdone.write(TLS_loopIndicesIn_rsc_rdy.read() & TLS_loopIndicesIn_rsc_vld.read() & ~rst.read());
}

void scverify_top::max_sim_time_notify() {
  testbench_INST.set_failed(true);
  testbench_INST.check_results();
  SC_REPORT_ERROR("System", "Specified maximum simulation time reached");
  sc_stop();
}

void scverify_top::start_of_simulation() {
  char *SCVerify_AUTOWAIT = getenv("SCVerify_AUTOWAIT");
  if (SCVerify_AUTOWAIT) {
    int l = atoi(SCVerify_AUTOWAIT);
    transactor_input_value.set_auto_wait_limit(l);
    transactor_weight_value.set_auto_wait_limit(l);
    transactor_output_value.set_auto_wait_limit(l);
    transactor_paramsIn_OY1.set_auto_wait_limit(l);
    transactor_paramsIn_OX1.set_auto_wait_limit(l);
    transactor_paramsIn_OY0.set_auto_wait_limit(l);
    transactor_paramsIn_OX0.set_auto_wait_limit(l);
    transactor_paramsIn_OC1.set_auto_wait_limit(l);
    transactor_paramsIn_IC1.set_auto_wait_limit(l);
    transactor_paramsIn_FX.set_auto_wait_limit(l);
    transactor_paramsIn_FY.set_auto_wait_limit(l);
    transactor_paramsIn_STRIDE.set_auto_wait_limit(l);
    transactor_loopIndicesIn_ic1_idx.set_auto_wait_limit(l);
    transactor_loopIndicesIn_fx_idx.set_auto_wait_limit(l);
    transactor_loopIndicesIn_fy_idx.set_auto_wait_limit(l);
  }
}

void scverify_top::setup_debug() {
#ifdef MC_DEFAULT_TRANSACTOR_LOG
  static int transactor_input_value_flags = MC_DEFAULT_TRANSACTOR_LOG;
  static int transactor_weight_value_flags = MC_DEFAULT_TRANSACTOR_LOG;
  static int transactor_output_value_flags = MC_DEFAULT_TRANSACTOR_LOG;
  static int transactor_paramsIn_OY1_flags = MC_DEFAULT_TRANSACTOR_LOG;
  static int transactor_paramsIn_OX1_flags = MC_DEFAULT_TRANSACTOR_LOG;
  static int transactor_paramsIn_OY0_flags = MC_DEFAULT_TRANSACTOR_LOG;
  static int transactor_paramsIn_OX0_flags = MC_DEFAULT_TRANSACTOR_LOG;
  static int transactor_paramsIn_OC1_flags = MC_DEFAULT_TRANSACTOR_LOG;
  static int transactor_paramsIn_IC1_flags = MC_DEFAULT_TRANSACTOR_LOG;
  static int transactor_paramsIn_FX_flags = MC_DEFAULT_TRANSACTOR_LOG;
  static int transactor_paramsIn_FY_flags = MC_DEFAULT_TRANSACTOR_LOG;
  static int transactor_paramsIn_STRIDE_flags = MC_DEFAULT_TRANSACTOR_LOG;
  static int transactor_loopIndicesIn_ic1_idx_flags = MC_DEFAULT_TRANSACTOR_LOG;
  static int transactor_loopIndicesIn_fx_idx_flags = MC_DEFAULT_TRANSACTOR_LOG;
  static int transactor_loopIndicesIn_fy_idx_flags = MC_DEFAULT_TRANSACTOR_LOG;
#else
  static int transactor_input_value_flags = MC_TRANSACTOR_UNDERFLOW | MC_TRANSACTOR_WAIT;
  static int transactor_weight_value_flags = MC_TRANSACTOR_UNDERFLOW | MC_TRANSACTOR_WAIT;
  static int transactor_output_value_flags = MC_TRANSACTOR_UNDERFLOW | MC_TRANSACTOR_WAIT;
  static int transactor_paramsIn_OY1_flags = MC_TRANSACTOR_UNDERFLOW | MC_TRANSACTOR_WAIT;
  static int transactor_paramsIn_OX1_flags = MC_TRANSACTOR_UNDERFLOW | MC_TRANSACTOR_WAIT;
  static int transactor_paramsIn_OY0_flags = MC_TRANSACTOR_UNDERFLOW | MC_TRANSACTOR_WAIT;
  static int transactor_paramsIn_OX0_flags = MC_TRANSACTOR_UNDERFLOW | MC_TRANSACTOR_WAIT;
  static int transactor_paramsIn_OC1_flags = MC_TRANSACTOR_UNDERFLOW | MC_TRANSACTOR_WAIT;
  static int transactor_paramsIn_IC1_flags = MC_TRANSACTOR_UNDERFLOW | MC_TRANSACTOR_WAIT;
  static int transactor_paramsIn_FX_flags = MC_TRANSACTOR_UNDERFLOW | MC_TRANSACTOR_WAIT;
  static int transactor_paramsIn_FY_flags = MC_TRANSACTOR_UNDERFLOW | MC_TRANSACTOR_WAIT;
  static int transactor_paramsIn_STRIDE_flags = MC_TRANSACTOR_UNDERFLOW | MC_TRANSACTOR_WAIT;
  static int transactor_loopIndicesIn_ic1_idx_flags = MC_TRANSACTOR_UNDERFLOW | MC_TRANSACTOR_WAIT;
  static int transactor_loopIndicesIn_fx_idx_flags = MC_TRANSACTOR_UNDERFLOW | MC_TRANSACTOR_WAIT;
  static int transactor_loopIndicesIn_fy_idx_flags = MC_TRANSACTOR_UNDERFLOW | MC_TRANSACTOR_WAIT;
#endif
  static int transactor_input_value_count = -1;
  static int transactor_weight_value_count = -1;
  static int transactor_output_value_count = -1;
  static int transactor_paramsIn_OY1_count = -1;
  static int transactor_paramsIn_OX1_count = -1;
  static int transactor_paramsIn_OY0_count = -1;
  static int transactor_paramsIn_OX0_count = -1;
  static int transactor_paramsIn_OC1_count = -1;
  static int transactor_paramsIn_IC1_count = -1;
  static int transactor_paramsIn_FX_count = -1;
  static int transactor_paramsIn_FY_count = -1;
  static int transactor_paramsIn_STRIDE_count = -1;
  static int transactor_loopIndicesIn_ic1_idx_count = -1;
  static int transactor_loopIndicesIn_fx_idx_count = -1;
  static int transactor_loopIndicesIn_fy_idx_count = -1;

  // At the breakpoint, modify the local variables
  // above to turn on/off different levels of transaction
  // logging for each variable. Available flags are:
  //   MC_TRANSACTOR_EMPTY       - log empty FIFOs (on by default)
  //   MC_TRANSACTOR_UNDERFLOW   - log FIFOs that run empty and then are loaded again (off)
  //   MC_TRANSACTOR_READ        - log all read events
  //   MC_TRANSACTOR_WRITE       - log all write events
  //   MC_TRANSACTOR_LOAD        - log all FIFO load events
  //   MC_TRANSACTOR_DUMP        - log all FIFO dump events
  //   MC_TRANSACTOR_STREAMCNT   - log all streamed port index counter events
  //   MC_TRANSACTOR_WAIT        - log user specified handshake waits
  //   MC_TRANSACTOR_SIZE        - log input FIFO size updates

  std::ifstream debug_cmds;
  debug_cmds.open("scverify.cmd",std::fstream::in);
  if (debug_cmds.is_open()) {
    std::cout << "Reading SCVerify debug commands from file 'scverify.cmd'" << std::endl;
    std::string line;
    while (getline(debug_cmds,line)) {
      std::size_t pos1 = line.find(" ");
      if (pos1 == std::string::npos) continue;
      std::size_t pos2 = line.find(" ", pos1+1);
      std::string varname = line.substr(0,pos1);
      std::string flags = line.substr(pos1+1,pos2-pos1-1);
      std::string count = line.substr(pos2+1);
      debug(varname.c_str(),std::atoi(flags.c_str()),std::atoi(count.c_str()));
    }
    debug_cmds.close();
  } else {
    debug("transactor_input_value",transactor_input_value_flags,transactor_input_value_count);
    debug("transactor_weight_value",transactor_weight_value_flags,transactor_weight_value_count);
    debug("transactor_output_value",transactor_output_value_flags,transactor_output_value_count);
    debug("transactor_paramsIn_OY1",transactor_paramsIn_OY1_flags,transactor_paramsIn_OY1_count);
    debug("transactor_paramsIn_OX1",transactor_paramsIn_OX1_flags,transactor_paramsIn_OX1_count);
    debug("transactor_paramsIn_OY0",transactor_paramsIn_OY0_flags,transactor_paramsIn_OY0_count);
    debug("transactor_paramsIn_OX0",transactor_paramsIn_OX0_flags,transactor_paramsIn_OX0_count);
    debug("transactor_paramsIn_OC1",transactor_paramsIn_OC1_flags,transactor_paramsIn_OC1_count);
    debug("transactor_paramsIn_IC1",transactor_paramsIn_IC1_flags,transactor_paramsIn_IC1_count);
    debug("transactor_paramsIn_FX",transactor_paramsIn_FX_flags,transactor_paramsIn_FX_count);
    debug("transactor_paramsIn_FY",transactor_paramsIn_FY_flags,transactor_paramsIn_FY_count);
    debug("transactor_paramsIn_STRIDE",transactor_paramsIn_STRIDE_flags,transactor_paramsIn_STRIDE_count);
    debug("transactor_loopIndicesIn_ic1_idx",transactor_loopIndicesIn_ic1_idx_flags,transactor_loopIndicesIn_ic1_idx_count);
    debug("transactor_loopIndicesIn_fx_idx",transactor_loopIndicesIn_fx_idx_flags,transactor_loopIndicesIn_fx_idx_count);
    debug("transactor_loopIndicesIn_fy_idx",transactor_loopIndicesIn_fy_idx_flags,transactor_loopIndicesIn_fy_idx_count);
  }
}

void scverify_top::debug(const char* varname, int flags, int count) {
  sc_module *xlator_p = 0;
  sc_attr_base *debug_attr_p = 0;
  if (strcmp(varname,"transactor_input_value") == 0)
    xlator_p = &transactor_input_value;
  if (strcmp(varname,"transactor_weight_value") == 0)
    xlator_p = &transactor_weight_value;
  if (strcmp(varname,"transactor_output_value") == 0)
    xlator_p = &transactor_output_value;
  if (strcmp(varname,"transactor_paramsIn_OY1") == 0)
    xlator_p = &transactor_paramsIn_OY1;
  if (strcmp(varname,"transactor_paramsIn_OX1") == 0)
    xlator_p = &transactor_paramsIn_OX1;
  if (strcmp(varname,"transactor_paramsIn_OY0") == 0)
    xlator_p = &transactor_paramsIn_OY0;
  if (strcmp(varname,"transactor_paramsIn_OX0") == 0)
    xlator_p = &transactor_paramsIn_OX0;
  if (strcmp(varname,"transactor_paramsIn_OC1") == 0)
    xlator_p = &transactor_paramsIn_OC1;
  if (strcmp(varname,"transactor_paramsIn_IC1") == 0)
    xlator_p = &transactor_paramsIn_IC1;
  if (strcmp(varname,"transactor_paramsIn_FX") == 0)
    xlator_p = &transactor_paramsIn_FX;
  if (strcmp(varname,"transactor_paramsIn_FY") == 0)
    xlator_p = &transactor_paramsIn_FY;
  if (strcmp(varname,"transactor_paramsIn_STRIDE") == 0)
    xlator_p = &transactor_paramsIn_STRIDE;
  if (strcmp(varname,"transactor_loopIndicesIn_ic1_idx") == 0)
    xlator_p = &transactor_loopIndicesIn_ic1_idx;
  if (strcmp(varname,"transactor_loopIndicesIn_fx_idx") == 0)
    xlator_p = &transactor_loopIndicesIn_fx_idx;
  if (strcmp(varname,"transactor_loopIndicesIn_fy_idx") == 0)
    xlator_p = &transactor_loopIndicesIn_fy_idx;
  if (xlator_p) {
    debug_attr_p = xlator_p->get_attribute("MC_TRANSACTOR_EVENT");
    if (!debug_attr_p) {
      debug_attr_p = new sc_attribute<int>("MC_TRANSACTOR_EVENT",flags);
      xlator_p->add_attribute(*debug_attr_p);
    }
    ((sc_attribute<int>*)debug_attr_p)->value = flags;
  }

  if (count>=0) {
    debug_attr_p = xlator_p->get_attribute("MC_TRANSACTOR_COUNT");
    if (!debug_attr_p) {
      debug_attr_p = new sc_attribute<int>("MC_TRANSACTOR_COUNT",count);
      xlator_p->add_attribute(*debug_attr_p);
    }
    ((sc_attribute<int>*)debug_attr_p)->value = count;
  }
}

// Process: SC_METHOD generate_reset
void scverify_top::generate_reset() {
  static bool activate_reset = true;
  static bool toggle_hw_reset = false;
  if (activate_reset || sc_time_stamp() == SC_ZERO_TIME) {
    setup_debug();
    activate_reset = false;
    rst.write(SC_LOGIC_1);
    arst_n_driver.reset_driver();
    generate_reset_event.notify(10.000000 , SC_NS);
  } else {
    if (toggle_hw_reset) {
      toggle_hw_reset = false;
      generate_reset_event.notify(10.000000 , SC_NS);
    } else {
      transactor_input_value.reset_streams();
      transactor_weight_value.reset_streams();
      transactor_output_value.reset_streams();
      transactor_paramsIn_OY1.reset_streams();
      transactor_paramsIn_OX1.reset_streams();
      transactor_paramsIn_OY0.reset_streams();
      transactor_paramsIn_OX0.reset_streams();
      transactor_paramsIn_OC1.reset_streams();
      transactor_paramsIn_IC1.reset_streams();
      transactor_paramsIn_FX.reset_streams();
      transactor_paramsIn_FY.reset_streams();
      transactor_paramsIn_STRIDE.reset_streams();
      transactor_loopIndicesIn_ic1_idx.reset_streams();
      transactor_loopIndicesIn_fx_idx.reset_streams();
      transactor_loopIndicesIn_fy_idx.reset_streams();
      rst.write(SC_LOGIC_0);
    }
    activate_reset = true;
  }
}

void scverify_top::install_observe_foreign_signals() {
#if !defined(CCS_DUT_SYSC) && defined(DEADLOCK_DETECTION)
#if defined(CCS_DUT_CYCLE) || defined(CCS_DUT_RTL)
  OBSERVE_FOREIGN_SIGNAL(OFS_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_staller_inst_run_wen,
      /scverify_top/rtl/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_staller_inst/run_wen);
  OBSERVE_FOREIGN_SIGNAL(OFS_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_input_rsci_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_input_rsci_input_wait_ctrl_inst_input_rsci_irdy_run_sct,
      /scverify_top/rtl/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_input_rsci_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_input_rsci_input_wait_ctrl_inst/input_rsci_irdy_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_input_rsci_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_input_rsci_input_wait_ctrl_inst_input_rsci_ivld,
      /scverify_top/rtl/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_input_rsci_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_input_rsci_input_wait_ctrl_inst/input_rsci_ivld);
  OBSERVE_FOREIGN_SIGNAL(OFS_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_weight_rsci_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_weight_rsci_weight_wait_ctrl_inst_weight_rsci_irdy_run_sct,
      /scverify_top/rtl/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_weight_rsci_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_weight_rsci_weight_wait_ctrl_inst/weight_rsci_irdy_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_weight_rsci_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_weight_rsci_weight_wait_ctrl_inst_weight_rsci_ivld,
      /scverify_top/rtl/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_weight_rsci_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_weight_rsci_weight_wait_ctrl_inst/weight_rsci_ivld);
  OBSERVE_FOREIGN_SIGNAL(OFS_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_output_rsci_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_output_rsci_output_wait_ctrl_inst_output_rsci_irdy,
      /scverify_top/rtl/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_output_rsci_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_output_rsci_output_wait_ctrl_inst/output_rsci_irdy);
  OBSERVE_FOREIGN_SIGNAL(OFS_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_output_rsci_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_output_rsci_output_wait_ctrl_inst_output_rsci_ivld_run_sct,
      /scverify_top/rtl/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_output_rsci_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_output_rsci_output_wait_ctrl_inst/output_rsci_ivld_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_paramsIn_rsci_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_irdy_run_sct,
      /scverify_top/rtl/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_paramsIn_rsci_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst/paramsIn_rsci_irdy_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_paramsIn_rsci_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_ivld,
      /scverify_top/rtl/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_paramsIn_rsci_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst/paramsIn_rsci_ivld);
  OBSERVE_FOREIGN_SIGNAL(OFS_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_loopIndicesIn_rsci_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_loopIndicesIn_rsci_loopIndicesIn_wait_ctrl_inst_loopIndicesIn_rsci_irdy_run_sct,
      /scverify_top/rtl/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_loopIndicesIn_rsci_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_loopIndicesIn_rsci_loopIndicesIn_wait_ctrl_inst/loopIndicesIn_rsci_irdy_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_loopIndicesIn_rsci_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_loopIndicesIn_rsci_loopIndicesIn_wait_ctrl_inst_loopIndicesIn_rsci_ivld,
      /scverify_top/rtl/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_loopIndicesIn_rsci_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_loopIndicesIn_rsci_loopIndicesIn_wait_ctrl_inst/loopIndicesIn_rsci_ivld);
  OBSERVE_FOREIGN_SIGNAL(OFS_input_rsc_vld, /scverify_top/rtl/input_rsc_vld);
  OBSERVE_FOREIGN_SIGNAL(OFS_weight_rsc_vld, /scverify_top/rtl/weight_rsc_vld);
  OBSERVE_FOREIGN_SIGNAL(OFS_output_rsc_rdy, /scverify_top/rtl/output_rsc_rdy);
  OBSERVE_FOREIGN_SIGNAL(OFS_paramsIn_rsc_vld, /scverify_top/rtl/paramsIn_rsc_vld);
  OBSERVE_FOREIGN_SIGNAL(OFS_loopIndicesIn_rsc_vld, /scverify_top/rtl/loopIndicesIn_rsc_vld);
#endif
#endif
}

void scverify_top::deadlock_watch() {
#if !defined(CCS_DUT_SYSC) && defined(DEADLOCK_DETECTION)
#if defined(CCS_DUT_CYCLE) || defined(CCS_DUT_RTL)
#if defined(MTI_SYSTEMC) || defined(NCSC) || defined(VCS_SYSTEMC)
  if (!clk) {
    if (rst == SC_LOGIC_0 &&
      (OFS_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_staller_inst_run_wen.read()
          == SC_LOGIC_0)
      && (OFS_input_rsc_vld.read() == SC_LOGIC_1)
      && (OFS_weight_rsc_vld.read() == SC_LOGIC_1)
      && (OFS_output_rsc_rdy.read() == SC_LOGIC_1)
      && (OFS_paramsIn_rsc_vld.read() == SC_LOGIC_1)
      && (OFS_loopIndicesIn_rsc_vld.read() == SC_LOGIC_1)
    ) {
      deadlocked.write(SC_LOGIC_1);
      deadlock_event.notify(185, SC_NS);
    } else {
      if (deadlocked.read() == SC_LOGIC_1)
        deadlock_event.cancel();
      deadlocked.write(SC_LOGIC_0);
    }
  }
#endif
#endif
#endif
}

void scverify_top::deadlock_notify() {
  if (deadlocked.read() == SC_LOGIC_1) {
    testbench_INST.check_results();
    SC_REPORT_ERROR("System", "Simulation deadlock detected");
    sc_stop();
  }
}

#if defined(MC_SIMULATOR_OSCI) || defined(MC_SIMULATOR_VCS)
int sc_main(int argc, char *argv[]) {
  sc_report_handler::set_actions("/IEEE_Std_1666/deprecated", SC_DO_NOTHING);
  scverify_top scverify_top("scverify_top");
  sc_start();
  return scverify_top.testbench_INST.failed();
}
#else
MC_MODULE_EXPORT(scverify_top);
#endif
