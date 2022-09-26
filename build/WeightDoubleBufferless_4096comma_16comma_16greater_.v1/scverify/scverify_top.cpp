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
#define TOP_HDL_ENTITY WeightDoubleBuffer_4096_16_16
#endif
// Hold time for the SCVerify testbench to account for the gate delay after downstream synthesis in pico second(s)
// Hold time value is obtained from 'top_gate_constraints.cpp', which is generated at the end of RTL synthesis
#ifdef CCS_DUT_GATE
extern double __scv_hold_time;
extern double __scv_hold_time_RSCID_10;
extern double __scv_hold_time_RSCID_11;
extern double __scv_hold_time_RSCID_12;
#else
double __scv_hold_time = 0.0; // default for non-gate simulation is zero
double __scv_hold_time_RSCID_10 = 0;
double __scv_hold_time_RSCID_11 = 0;
double __scv_hold_time_RSCID_12 = 0;
#endif

class scverify_top : public sc_module
{
public:
  sc_signal<sc_logic>                                                     rst;
  sc_signal<sc_logic>                                                     rst_n;
  sc_signal<sc_logic>                                                     SIG_SC_LOGIC_0;
  sc_signal<sc_logic>                                                     SIG_SC_LOGIC_1;
  sc_signal<sc_logic>                                                     TLS_design_is_idle;
  sc_signal<bool>                                                         TLS_design_is_idle_reg;
  sc_clock                                                                clk;
  mc_programmable_reset                                                   arst_n_driver;
  sc_signal<sc_logic>                                                     TLS_arst_n;
  sc_signal<sc_lv<8> >                                                    TLS_weights_in_rsc_dat;
  sc_signal<sc_logic>                                                     TLS_weights_in_rsc_vld;
  sc_signal<sc_logic>                                                     TLS_weights_in_rsc_rdy;
  sc_signal<sc_lv<128> >                                                  TLS_weights_out_rsc_dat;
  sc_signal<sc_logic>                                                     TLS_weights_out_rsc_vld;
  sc_signal<sc_logic>                                                     TLS_weights_out_rsc_rdy;
  sc_signal<sc_lv<144> >                                                  TLS_paramsIn_rsc_dat;
  sc_signal<sc_logic>                                                     TLS_paramsIn_rsc_vld;
  sc_signal<sc_logic>                                                     TLS_paramsIn_rsc_rdy;
  ccs_DUT_wrapper                                                         WeightDoubleBuffer_4096_16_16_INST;
  ccs_in_wait_trans_rsc_v1<1,8 >                                          weights_in_rsc_INST;
  ccs_out_wait_trans_rsc_v1<1,128 >                                       weights_out_rsc_INST;
  ccs_in_wait_trans_rsc_v1<1,144 >                                        paramsIn_rsc_INST;
  tlm::tlm_fifo<ac_int<8, true > >                                        TLS_in_fifo_weights_in;
  tlm::tlm_fifo<mc_wait_ctrl>                                             TLS_in_wait_ctrl_fifo_weights_in;
  tlm::tlm_fifo<int>                                                      TLS_in_fifo_weights_in_sizecount;
  sc_signal<sc_logic>                                                     TLS_weights_in_rsc_trdone;
  mc_channel_input_transactor<ac_int<8, true >,8,true>                    transactor_weights_in;
  tlm::tlm_fifo<mgc_sysc_ver_array1D<ac_int<8, true >,16> >               TLS_out_fifo_weights_out_value;
  tlm::tlm_fifo<mc_wait_ctrl>                                             TLS_out_wait_ctrl_fifo_weights_out_value;
  sc_signal<sc_logic>                                                     TLS_weights_out_rsc_trdone;
  mc_output_transactor<mgc_sysc_ver_array1D<ac_int<8, true >,16>,8,true>  transactor_weights_out_value;
  tlm::tlm_fifo<ac_int<16, false > >                                      TLS_in_fifo_paramsIn_OY1;
  tlm::tlm_fifo<mc_wait_ctrl>                                             TLS_in_wait_ctrl_fifo_paramsIn_OY1;
  tlm::tlm_fifo<int>                                                      TLS_in_fifo_paramsIn_OY1_sizecount;
  sc_signal<sc_logic>                                                     TLS_paramsIn_rsc_trdone;
  mc_channel_input_transactor<ac_int<16, false >,16,false>                transactor_paramsIn_OY1;
  tlm::tlm_fifo<ac_int<16, false > >                                      TLS_in_fifo_paramsIn_OX1;
  tlm::tlm_fifo<mc_wait_ctrl>                                             TLS_in_wait_ctrl_fifo_paramsIn_OX1;
  tlm::tlm_fifo<int>                                                      TLS_in_fifo_paramsIn_OX1_sizecount;
  mc_channel_input_transactor<ac_int<16, false >,16,false>                transactor_paramsIn_OX1;
  tlm::tlm_fifo<ac_int<16, false > >                                      TLS_in_fifo_paramsIn_OY0;
  tlm::tlm_fifo<mc_wait_ctrl>                                             TLS_in_wait_ctrl_fifo_paramsIn_OY0;
  tlm::tlm_fifo<int>                                                      TLS_in_fifo_paramsIn_OY0_sizecount;
  mc_channel_input_transactor<ac_int<16, false >,16,false>                transactor_paramsIn_OY0;
  tlm::tlm_fifo<ac_int<16, false > >                                      TLS_in_fifo_paramsIn_OX0;
  tlm::tlm_fifo<mc_wait_ctrl>                                             TLS_in_wait_ctrl_fifo_paramsIn_OX0;
  tlm::tlm_fifo<int>                                                      TLS_in_fifo_paramsIn_OX0_sizecount;
  mc_channel_input_transactor<ac_int<16, false >,16,false>                transactor_paramsIn_OX0;
  tlm::tlm_fifo<ac_int<16, false > >                                      TLS_in_fifo_paramsIn_OC1;
  tlm::tlm_fifo<mc_wait_ctrl>                                             TLS_in_wait_ctrl_fifo_paramsIn_OC1;
  tlm::tlm_fifo<int>                                                      TLS_in_fifo_paramsIn_OC1_sizecount;
  mc_channel_input_transactor<ac_int<16, false >,16,false>                transactor_paramsIn_OC1;
  tlm::tlm_fifo<ac_int<16, false > >                                      TLS_in_fifo_paramsIn_IC1;
  tlm::tlm_fifo<mc_wait_ctrl>                                             TLS_in_wait_ctrl_fifo_paramsIn_IC1;
  tlm::tlm_fifo<int>                                                      TLS_in_fifo_paramsIn_IC1_sizecount;
  mc_channel_input_transactor<ac_int<16, false >,16,false>                transactor_paramsIn_IC1;
  tlm::tlm_fifo<ac_int<16, false > >                                      TLS_in_fifo_paramsIn_FX;
  tlm::tlm_fifo<mc_wait_ctrl>                                             TLS_in_wait_ctrl_fifo_paramsIn_FX;
  tlm::tlm_fifo<int>                                                      TLS_in_fifo_paramsIn_FX_sizecount;
  mc_channel_input_transactor<ac_int<16, false >,16,false>                transactor_paramsIn_FX;
  tlm::tlm_fifo<ac_int<16, false > >                                      TLS_in_fifo_paramsIn_FY;
  tlm::tlm_fifo<mc_wait_ctrl>                                             TLS_in_wait_ctrl_fifo_paramsIn_FY;
  tlm::tlm_fifo<int>                                                      TLS_in_fifo_paramsIn_FY_sizecount;
  mc_channel_input_transactor<ac_int<16, false >,16,false>                transactor_paramsIn_FY;
  tlm::tlm_fifo<ac_int<16, false > >                                      TLS_in_fifo_paramsIn_STRIDE;
  tlm::tlm_fifo<mc_wait_ctrl>                                             TLS_in_wait_ctrl_fifo_paramsIn_STRIDE;
  tlm::tlm_fifo<int>                                                      TLS_in_fifo_paramsIn_STRIDE_sizecount;
  mc_channel_input_transactor<ac_int<16, false >,16,false>                transactor_paramsIn_STRIDE;
  mc_testbench                                                            testbench_INST;
  sc_signal<sc_logic>                                                     catapult_start;
  sc_signal<sc_logic>                                                     catapult_done;
  sc_signal<sc_logic>                                                     catapult_ready;
  sc_signal<sc_logic>                                                     in_sync;
  sc_signal<sc_logic>                                                     out_sync;
  sc_signal<sc_logic>                                                     inout_sync;
  sc_signal<unsigned>                                                     wait_for_init;
  sync_generator                                                          sync_generator_INST;
  catapult_monitor                                                        catapult_monitor_INST;
  ccs_probe_monitor                                                      *ccs_probe_monitor_INST;
  sc_event                                                                generate_reset_event;
  sc_event                                                                deadlock_event;
  sc_signal<sc_logic>                                                     deadlocked;
  sc_signal<sc_logic>                                                     maxsimtime;
  sc_event                                                                max_sim_time_event;
  sc_signal<sc_logic>                                                     OFS_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferWriter_WeightDoubleBufferWriter_4096_16_16_run_inst_WeightDoubleBufferWriter_4096_16_16_run_staller_inst_run_wen;
  sc_signal<sc_logic>                                                     OFS_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferReader_WeightDoubleBufferReader_4096_16_16_run_inst_WeightDoubleBufferReader_4096_16_16_run_staller_inst_run_wen;
  sc_signal<sc_logic>                                                     OFS_WeightDoubleBuffer_4096_16_16_struct_inst_WeightDoubleBuffer_4096_16_16_run_inst_WeightDoubleBuffer_4096_16_16_run_run_inst_WeightDoubleBuffer_4096_16_16_run_run_staller_inst_run_wen;
  sc_signal<sc_logic>                                                     OFS_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferWriter_WeightDoubleBufferWriter_4096_16_16_run_inst_WeightDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_inst_WeightDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_irdy_run_sct;
  sc_signal<sc_logic>                                                     OFS_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferWriter_WeightDoubleBufferWriter_4096_16_16_run_inst_WeightDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_inst_WeightDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_ivld;
  sc_signal<sc_logic>                                                     OFS_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferWriter_WeightDoubleBufferWriter_4096_16_16_run_inst_WeightDoubleBufferWriter_4096_16_16_run_din_rsci_inst_WeightDoubleBufferWriter_4096_16_16_run_din_rsci_din_wait_ctrl_inst_din_rsci_irdy_run_sct;
  sc_signal<sc_logic>                                                     OFS_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferWriter_WeightDoubleBufferWriter_4096_16_16_run_inst_WeightDoubleBufferWriter_4096_16_16_run_din_rsci_inst_WeightDoubleBufferWriter_4096_16_16_run_din_rsci_din_wait_ctrl_inst_din_rsci_ivld;
  sc_signal<sc_logic>                                                     OFS_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferWriter_WeightDoubleBufferWriter_4096_16_16_run_inst_WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_rls_obj_inst_WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_rls_obj_dout_rsc_rls_wait_ctrl_inst_dout_rsc_rls_obj_ld_run_sct;
  sc_signal<sc_logic>                                                     OFS_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferWriter_WeightDoubleBufferWriter_4096_16_16_run_inst_WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_req_obj_inst_WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_req_obj_dout_rsc_req_wait_ctrl_inst_dout_rsc_req_obj_vd;
  sc_signal<sc_logic>                                                     OFS_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferReader_WeightDoubleBufferReader_4096_16_16_run_inst_WeightDoubleBufferReader_4096_16_16_run_paramsIn_rsci_inst_WeightDoubleBufferReader_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_irdy_run_sct;
  sc_signal<sc_logic>                                                     OFS_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferReader_WeightDoubleBufferReader_4096_16_16_run_inst_WeightDoubleBufferReader_4096_16_16_run_paramsIn_rsci_inst_WeightDoubleBufferReader_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_ivld;
  sc_signal<sc_logic>                                                     OFS_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferReader_WeightDoubleBufferReader_4096_16_16_run_inst_WeightDoubleBufferReader_4096_16_16_run_dout_rsci_inst_WeightDoubleBufferReader_4096_16_16_run_dout_rsci_dout_wait_ctrl_inst_dout_rsci_irdy;
  sc_signal<sc_logic>                                                     OFS_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferReader_WeightDoubleBufferReader_4096_16_16_run_inst_WeightDoubleBufferReader_4096_16_16_run_dout_rsci_inst_WeightDoubleBufferReader_4096_16_16_run_dout_rsci_dout_wait_ctrl_inst_dout_rsci_ivld_run_sct;
  sc_signal<sc_logic>                                                     OFS_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferReader_WeightDoubleBufferReader_4096_16_16_run_inst_WeightDoubleBufferReader_4096_16_16_run_din_rsc_rls_obj_inst_WeightDoubleBufferReader_4096_16_16_run_din_rsc_rls_obj_din_rsc_rls_wait_ctrl_inst_din_rsc_rls_obj_ld_run_sct;
  sc_signal<sc_logic>                                                     OFS_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferReader_WeightDoubleBufferReader_4096_16_16_run_inst_WeightDoubleBufferReader_4096_16_16_run_din_rsc_req_obj_inst_WeightDoubleBufferReader_4096_16_16_run_din_rsc_req_obj_din_rsc_req_wait_ctrl_inst_din_rsc_req_obj_vd;
  sc_signal<sc_logic>                                                     OFS_WeightDoubleBuffer_4096_16_16_struct_inst_WeightDoubleBuffer_4096_16_16_run_inst_WeightDoubleBuffer_4096_16_16_run_run_inst_WeightDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_inst_WeightDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_irdy_run_sct;
  sc_signal<sc_logic>                                                     OFS_WeightDoubleBuffer_4096_16_16_struct_inst_WeightDoubleBuffer_4096_16_16_run_inst_WeightDoubleBuffer_4096_16_16_run_run_inst_WeightDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_inst_WeightDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_ivld;
  sc_signal<sc_logic>                                                     OFS_WeightDoubleBuffer_4096_16_16_struct_inst_WeightDoubleBuffer_4096_16_16_run_inst_WeightDoubleBuffer_4096_16_16_run_run_inst_WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferWriterParams_cnsi_inst_WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferWriterParams_cnsi_weightDoubleBufferWriterParams_wait_ctrl_inst_weightDoubleBufferWriterParams_cnsi_irdy;
  sc_signal<sc_logic>                                                     OFS_WeightDoubleBuffer_4096_16_16_struct_inst_WeightDoubleBuffer_4096_16_16_run_inst_WeightDoubleBuffer_4096_16_16_run_run_inst_WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferWriterParams_cnsi_inst_WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferWriterParams_cnsi_weightDoubleBufferWriterParams_wait_ctrl_inst_weightDoubleBufferWriterParams_cnsi_ivld_run_sct;
  sc_signal<sc_logic>                                                     OFS_WeightDoubleBuffer_4096_16_16_struct_inst_WeightDoubleBuffer_4096_16_16_run_inst_WeightDoubleBuffer_4096_16_16_run_run_inst_WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferReaderParams_cnsi_inst_WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferReaderParams_cnsi_weightDoubleBufferReaderParams_wait_ctrl_inst_weightDoubleBufferReaderParams_cnsi_irdy;
  sc_signal<sc_logic>                                                     OFS_WeightDoubleBuffer_4096_16_16_struct_inst_WeightDoubleBuffer_4096_16_16_run_inst_WeightDoubleBuffer_4096_16_16_run_run_inst_WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferReaderParams_cnsi_inst_WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferReaderParams_cnsi_weightDoubleBufferReaderParams_wait_ctrl_inst_weightDoubleBufferReaderParams_cnsi_ivld_run_sct;
  sc_signal<sc_logic>                                                     OFS_weights_in_rsc_vld;
  sc_signal<sc_logic>                                                     OFS_weights_out_rsc_rdy;
  sc_signal<sc_logic>                                                     OFS_paramsIn_rsc_vld;
  sc_signal<sc_logic>                                                     TLS_enable_stalls;
  sc_signal<unsigned short>                                               TLS_stall_coverage;

  void TLS_arst_n_method();
  void drive_TLS_weights_in_rsc_trdone();
  void drive_TLS_weights_out_rsc_trdone();
  void drive_TLS_paramsIn_rsc_trdone();
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
    , TLS_weights_in_rsc_dat("TLS_weights_in_rsc_dat")
    , TLS_weights_in_rsc_vld("TLS_weights_in_rsc_vld")
    , TLS_weights_in_rsc_rdy("TLS_weights_in_rsc_rdy")
    , TLS_weights_out_rsc_dat("TLS_weights_out_rsc_dat")
    , TLS_weights_out_rsc_vld("TLS_weights_out_rsc_vld")
    , TLS_weights_out_rsc_rdy("TLS_weights_out_rsc_rdy")
    , TLS_paramsIn_rsc_dat("TLS_paramsIn_rsc_dat")
    , TLS_paramsIn_rsc_vld("TLS_paramsIn_rsc_vld")
    , TLS_paramsIn_rsc_rdy("TLS_paramsIn_rsc_rdy")
    , WeightDoubleBuffer_4096_16_16_INST("rtl", TO_QUOTED_STRING(TOP_HDL_ENTITY))
    , weights_in_rsc_INST("weights_in_rsc", true)
    , weights_out_rsc_INST("weights_out_rsc", true)
    , paramsIn_rsc_INST("paramsIn_rsc", true)
    , TLS_in_fifo_weights_in("TLS_in_fifo_weights_in", -1)
    , TLS_in_wait_ctrl_fifo_weights_in("TLS_in_wait_ctrl_fifo_weights_in", -1)
    , TLS_in_fifo_weights_in_sizecount("TLS_in_fifo_weights_in_sizecount", 1)
    , TLS_weights_in_rsc_trdone("TLS_weights_in_rsc_trdone")
    , transactor_weights_in("transactor_weights_in", 0, 8, 0)
    , TLS_out_fifo_weights_out_value("TLS_out_fifo_weights_out_value", -1)
    , TLS_out_wait_ctrl_fifo_weights_out_value("TLS_out_wait_ctrl_fifo_weights_out_value", -1)
    , TLS_weights_out_rsc_trdone("TLS_weights_out_rsc_trdone")
    , transactor_weights_out_value("transactor_weights_out_value", 0, 128, 0)
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
    , testbench_INST("user_tb")
    , catapult_start("catapult_start")
    , catapult_done("catapult_done")
    , catapult_ready("catapult_ready")
    , in_sync("in_sync")
    , out_sync("out_sync")
    , inout_sync("inout_sync")
    , wait_for_init("wait_for_init")
    , sync_generator_INST("sync_generator", true, false, false, false, 45, 45, 0)
    , catapult_monitor_INST("Monitor", clk, true, 45LL, 26LL)
    , ccs_probe_monitor_INST(NULL)
    , deadlocked("deadlocked")
    , maxsimtime("maxsimtime")
  {
    arst_n_driver.reset_out(TLS_arst_n);

    WeightDoubleBuffer_4096_16_16_INST.clk(clk);
    WeightDoubleBuffer_4096_16_16_INST.arst_n(TLS_arst_n);
    WeightDoubleBuffer_4096_16_16_INST.weights_in_rsc_dat(TLS_weights_in_rsc_dat);
    WeightDoubleBuffer_4096_16_16_INST.weights_in_rsc_vld(TLS_weights_in_rsc_vld);
    WeightDoubleBuffer_4096_16_16_INST.weights_in_rsc_rdy(TLS_weights_in_rsc_rdy);
    WeightDoubleBuffer_4096_16_16_INST.weights_out_rsc_dat(TLS_weights_out_rsc_dat);
    WeightDoubleBuffer_4096_16_16_INST.weights_out_rsc_vld(TLS_weights_out_rsc_vld);
    WeightDoubleBuffer_4096_16_16_INST.weights_out_rsc_rdy(TLS_weights_out_rsc_rdy);
    WeightDoubleBuffer_4096_16_16_INST.paramsIn_rsc_dat(TLS_paramsIn_rsc_dat);
    WeightDoubleBuffer_4096_16_16_INST.paramsIn_rsc_vld(TLS_paramsIn_rsc_vld);
    WeightDoubleBuffer_4096_16_16_INST.paramsIn_rsc_rdy(TLS_paramsIn_rsc_rdy);

    weights_in_rsc_INST.rdy(TLS_weights_in_rsc_rdy);
    weights_in_rsc_INST.vld(TLS_weights_in_rsc_vld);
    weights_in_rsc_INST.dat(TLS_weights_in_rsc_dat);
    weights_in_rsc_INST.clk(clk);
    weights_in_rsc_INST.add_attribute(*(new sc_attribute<double>("CLK_SKEW_DELAY", __scv_hold_time_RSCID_10)));

    weights_out_rsc_INST.rdy(TLS_weights_out_rsc_rdy);
    weights_out_rsc_INST.vld(TLS_weights_out_rsc_vld);
    weights_out_rsc_INST.dat(TLS_weights_out_rsc_dat);
    weights_out_rsc_INST.clk(clk);
    weights_out_rsc_INST.add_attribute(*(new sc_attribute<double>("CLK_SKEW_DELAY", __scv_hold_time_RSCID_11)));

    paramsIn_rsc_INST.rdy(TLS_paramsIn_rsc_rdy);
    paramsIn_rsc_INST.vld(TLS_paramsIn_rsc_vld);
    paramsIn_rsc_INST.dat(TLS_paramsIn_rsc_dat);
    paramsIn_rsc_INST.clk(clk);
    paramsIn_rsc_INST.add_attribute(*(new sc_attribute<double>("CLK_SKEW_DELAY", __scv_hold_time_RSCID_12)));

    transactor_weights_in.in_fifo(TLS_in_fifo_weights_in);
    transactor_weights_in.in_wait_ctrl_fifo(TLS_in_wait_ctrl_fifo_weights_in);
    transactor_weights_in.sizecount_fifo(TLS_in_fifo_weights_in_sizecount);
    transactor_weights_in.bind_clk(clk, true, rst);
    transactor_weights_in.add_attribute(*(new sc_attribute<int>("MC_TRANSACTOR_EVENT", 0 )));
    transactor_weights_in.register_block(&weights_in_rsc_INST, weights_in_rsc_INST.basename(), TLS_weights_in_rsc_trdone,
        0, 0, 1);

    transactor_weights_out_value.out_fifo(TLS_out_fifo_weights_out_value);
    transactor_weights_out_value.out_wait_ctrl_fifo(TLS_out_wait_ctrl_fifo_weights_out_value);
    transactor_weights_out_value.bind_clk(clk, true, rst);
    transactor_weights_out_value.add_attribute(*(new sc_attribute<int>("MC_TRANSACTOR_EVENT", 0 )));
    transactor_weights_out_value.register_block(&weights_out_rsc_INST, weights_out_rsc_INST.basename(), TLS_weights_out_rsc_trdone,
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

    testbench_INST.clk(clk);
    testbench_INST.ccs_weights_in(TLS_in_fifo_weights_in);
    testbench_INST.ccs_wait_ctrl_weights_in(TLS_in_wait_ctrl_fifo_weights_in);
    testbench_INST.ccs_sizecount_weights_in(TLS_in_fifo_weights_in_sizecount);
    testbench_INST.ccs_weights_out_value(TLS_out_fifo_weights_out_value);
    testbench_INST.ccs_wait_ctrl_weights_out_value(TLS_out_wait_ctrl_fifo_weights_out_value);
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

    SC_METHOD(drive_TLS_weights_in_rsc_trdone);
      sensitive << TLS_weights_in_rsc_rdy;
      sensitive << TLS_weights_in_rsc_vld;
      sensitive << rst;

    SC_METHOD(drive_TLS_weights_out_rsc_trdone);
      sensitive << TLS_weights_out_rsc_vld;
      sensitive << TLS_weights_out_rsc_rdy;

    SC_METHOD(drive_TLS_paramsIn_rsc_trdone);
      sensitive << TLS_paramsIn_rsc_rdy;
      sensitive << TLS_paramsIn_rsc_vld;
      sensitive << rst;

    SC_METHOD(max_sim_time_notify);
      sensitive << max_sim_time_event;
      dont_initialize();

    SC_METHOD(generate_reset);
      sensitive << generate_reset_event;
      sensitive << testbench_INST.reset_request_event;

    SC_METHOD(deadlock_watch);
      sensitive << clk;
      sensitive << OFS_WeightDoubleBuffer_4096_16_16_struct_inst_WeightDoubleBuffer_4096_16_16_run_inst_WeightDoubleBuffer_4096_16_16_run_run_inst_WeightDoubleBuffer_4096_16_16_run_run_staller_inst_run_wen;
      sensitive << OFS_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferReader_WeightDoubleBufferReader_4096_16_16_run_inst_WeightDoubleBufferReader_4096_16_16_run_staller_inst_run_wen;
      sensitive << OFS_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferWriter_WeightDoubleBufferWriter_4096_16_16_run_inst_WeightDoubleBufferWriter_4096_16_16_run_staller_inst_run_wen;
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
  weights_in_rsc_INST.clear();
  weights_out_rsc_INST.clear();
  paramsIn_rsc_INST.clear();
}

void scverify_top::drive_TLS_weights_in_rsc_trdone() {
  if (rst.read()==sc_dt::Log_1) { assert(TLS_weights_in_rsc_rdy.read()!= SC_LOGIC_1); }
  TLS_weights_in_rsc_trdone.write(TLS_weights_in_rsc_rdy.read() & TLS_weights_in_rsc_vld.read() & ~rst.read());
}

void scverify_top::drive_TLS_weights_out_rsc_trdone() {
  if (rst.read()==sc_dt::Log_1) { assert(TLS_weights_out_rsc_vld.read()!= SC_LOGIC_1); }
  TLS_weights_out_rsc_trdone.write(TLS_weights_out_rsc_vld.read() & TLS_weights_out_rsc_rdy.read());
}

void scverify_top::drive_TLS_paramsIn_rsc_trdone() {
  if (rst.read()==sc_dt::Log_1) { assert(TLS_paramsIn_rsc_rdy.read()!= SC_LOGIC_1); }
  TLS_paramsIn_rsc_trdone.write(TLS_paramsIn_rsc_rdy.read() & TLS_paramsIn_rsc_vld.read() & ~rst.read());
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
    transactor_weights_in.set_auto_wait_limit(l);
    transactor_weights_out_value.set_auto_wait_limit(l);
    transactor_paramsIn_OY1.set_auto_wait_limit(l);
    transactor_paramsIn_OX1.set_auto_wait_limit(l);
    transactor_paramsIn_OY0.set_auto_wait_limit(l);
    transactor_paramsIn_OX0.set_auto_wait_limit(l);
    transactor_paramsIn_OC1.set_auto_wait_limit(l);
    transactor_paramsIn_IC1.set_auto_wait_limit(l);
    transactor_paramsIn_FX.set_auto_wait_limit(l);
    transactor_paramsIn_FY.set_auto_wait_limit(l);
    transactor_paramsIn_STRIDE.set_auto_wait_limit(l);
  }
}

void scverify_top::setup_debug() {
#ifdef MC_DEFAULT_TRANSACTOR_LOG
  static int transactor_weights_in_flags = MC_DEFAULT_TRANSACTOR_LOG;
  static int transactor_weights_out_value_flags = MC_DEFAULT_TRANSACTOR_LOG;
  static int transactor_paramsIn_OY1_flags = MC_DEFAULT_TRANSACTOR_LOG;
  static int transactor_paramsIn_OX1_flags = MC_DEFAULT_TRANSACTOR_LOG;
  static int transactor_paramsIn_OY0_flags = MC_DEFAULT_TRANSACTOR_LOG;
  static int transactor_paramsIn_OX0_flags = MC_DEFAULT_TRANSACTOR_LOG;
  static int transactor_paramsIn_OC1_flags = MC_DEFAULT_TRANSACTOR_LOG;
  static int transactor_paramsIn_IC1_flags = MC_DEFAULT_TRANSACTOR_LOG;
  static int transactor_paramsIn_FX_flags = MC_DEFAULT_TRANSACTOR_LOG;
  static int transactor_paramsIn_FY_flags = MC_DEFAULT_TRANSACTOR_LOG;
  static int transactor_paramsIn_STRIDE_flags = MC_DEFAULT_TRANSACTOR_LOG;
#else
  static int transactor_weights_in_flags = MC_TRANSACTOR_UNDERFLOW | MC_TRANSACTOR_WAIT;
  static int transactor_weights_out_value_flags = MC_TRANSACTOR_UNDERFLOW | MC_TRANSACTOR_WAIT;
  static int transactor_paramsIn_OY1_flags = MC_TRANSACTOR_UNDERFLOW | MC_TRANSACTOR_WAIT;
  static int transactor_paramsIn_OX1_flags = MC_TRANSACTOR_UNDERFLOW | MC_TRANSACTOR_WAIT;
  static int transactor_paramsIn_OY0_flags = MC_TRANSACTOR_UNDERFLOW | MC_TRANSACTOR_WAIT;
  static int transactor_paramsIn_OX0_flags = MC_TRANSACTOR_UNDERFLOW | MC_TRANSACTOR_WAIT;
  static int transactor_paramsIn_OC1_flags = MC_TRANSACTOR_UNDERFLOW | MC_TRANSACTOR_WAIT;
  static int transactor_paramsIn_IC1_flags = MC_TRANSACTOR_UNDERFLOW | MC_TRANSACTOR_WAIT;
  static int transactor_paramsIn_FX_flags = MC_TRANSACTOR_UNDERFLOW | MC_TRANSACTOR_WAIT;
  static int transactor_paramsIn_FY_flags = MC_TRANSACTOR_UNDERFLOW | MC_TRANSACTOR_WAIT;
  static int transactor_paramsIn_STRIDE_flags = MC_TRANSACTOR_UNDERFLOW | MC_TRANSACTOR_WAIT;
#endif
  static int transactor_weights_in_count = -1;
  static int transactor_weights_out_value_count = -1;
  static int transactor_paramsIn_OY1_count = -1;
  static int transactor_paramsIn_OX1_count = -1;
  static int transactor_paramsIn_OY0_count = -1;
  static int transactor_paramsIn_OX0_count = -1;
  static int transactor_paramsIn_OC1_count = -1;
  static int transactor_paramsIn_IC1_count = -1;
  static int transactor_paramsIn_FX_count = -1;
  static int transactor_paramsIn_FY_count = -1;
  static int transactor_paramsIn_STRIDE_count = -1;

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
    debug("transactor_weights_in",transactor_weights_in_flags,transactor_weights_in_count);
    debug("transactor_weights_out_value",transactor_weights_out_value_flags,transactor_weights_out_value_count);
    debug("transactor_paramsIn_OY1",transactor_paramsIn_OY1_flags,transactor_paramsIn_OY1_count);
    debug("transactor_paramsIn_OX1",transactor_paramsIn_OX1_flags,transactor_paramsIn_OX1_count);
    debug("transactor_paramsIn_OY0",transactor_paramsIn_OY0_flags,transactor_paramsIn_OY0_count);
    debug("transactor_paramsIn_OX0",transactor_paramsIn_OX0_flags,transactor_paramsIn_OX0_count);
    debug("transactor_paramsIn_OC1",transactor_paramsIn_OC1_flags,transactor_paramsIn_OC1_count);
    debug("transactor_paramsIn_IC1",transactor_paramsIn_IC1_flags,transactor_paramsIn_IC1_count);
    debug("transactor_paramsIn_FX",transactor_paramsIn_FX_flags,transactor_paramsIn_FX_count);
    debug("transactor_paramsIn_FY",transactor_paramsIn_FY_flags,transactor_paramsIn_FY_count);
    debug("transactor_paramsIn_STRIDE",transactor_paramsIn_STRIDE_flags,transactor_paramsIn_STRIDE_count);
  }
}

void scverify_top::debug(const char* varname, int flags, int count) {
  sc_module *xlator_p = 0;
  sc_attr_base *debug_attr_p = 0;
  if (strcmp(varname,"transactor_weights_in") == 0)
    xlator_p = &transactor_weights_in;
  if (strcmp(varname,"transactor_weights_out_value") == 0)
    xlator_p = &transactor_weights_out_value;
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
      transactor_weights_in.reset_streams();
      transactor_weights_out_value.reset_streams();
      transactor_paramsIn_OY1.reset_streams();
      transactor_paramsIn_OX1.reset_streams();
      transactor_paramsIn_OY0.reset_streams();
      transactor_paramsIn_OX0.reset_streams();
      transactor_paramsIn_OC1.reset_streams();
      transactor_paramsIn_IC1.reset_streams();
      transactor_paramsIn_FX.reset_streams();
      transactor_paramsIn_FY.reset_streams();
      transactor_paramsIn_STRIDE.reset_streams();
      rst.write(SC_LOGIC_0);
    }
    activate_reset = true;
  }
}

void scverify_top::install_observe_foreign_signals() {
#if !defined(CCS_DUT_SYSC) && defined(DEADLOCK_DETECTION)
#if defined(CCS_DUT_CYCLE) || defined(CCS_DUT_RTL)
  OBSERVE_FOREIGN_SIGNAL(OFS_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferWriter_WeightDoubleBufferWriter_4096_16_16_run_inst_WeightDoubleBufferWriter_4096_16_16_run_staller_inst_run_wen,
      /scverify_top/rtl/WeightDoubleBuffer_4096_16_16_struct_inst/weightDoubleBufferWriter/WeightDoubleBufferWriter_4096_16_16_run_inst/WeightDoubleBufferWriter_4096_16_16_run_staller_inst/run_wen);
  OBSERVE_FOREIGN_SIGNAL(OFS_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferReader_WeightDoubleBufferReader_4096_16_16_run_inst_WeightDoubleBufferReader_4096_16_16_run_staller_inst_run_wen,
      /scverify_top/rtl/WeightDoubleBuffer_4096_16_16_struct_inst/weightDoubleBufferReader/WeightDoubleBufferReader_4096_16_16_run_inst/WeightDoubleBufferReader_4096_16_16_run_staller_inst/run_wen);
  OBSERVE_FOREIGN_SIGNAL(OFS_WeightDoubleBuffer_4096_16_16_struct_inst_WeightDoubleBuffer_4096_16_16_run_inst_WeightDoubleBuffer_4096_16_16_run_run_inst_WeightDoubleBuffer_4096_16_16_run_run_staller_inst_run_wen,
      /scverify_top/rtl/WeightDoubleBuffer_4096_16_16_struct_inst/WeightDoubleBuffer_4096_16_16_run_inst/WeightDoubleBuffer_4096_16_16_run_run_inst/WeightDoubleBuffer_4096_16_16_run_run_staller_inst/run_wen);
  OBSERVE_FOREIGN_SIGNAL(OFS_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferWriter_WeightDoubleBufferWriter_4096_16_16_run_inst_WeightDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_inst_WeightDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_irdy_run_sct,
      /scverify_top/rtl/WeightDoubleBuffer_4096_16_16_struct_inst/weightDoubleBufferWriter/WeightDoubleBufferWriter_4096_16_16_run_inst/WeightDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_inst/WeightDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst/paramsIn_rsci_irdy_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferWriter_WeightDoubleBufferWriter_4096_16_16_run_inst_WeightDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_inst_WeightDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_ivld,
      /scverify_top/rtl/WeightDoubleBuffer_4096_16_16_struct_inst/weightDoubleBufferWriter/WeightDoubleBufferWriter_4096_16_16_run_inst/WeightDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_inst/WeightDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst/paramsIn_rsci_ivld);
  OBSERVE_FOREIGN_SIGNAL(OFS_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferWriter_WeightDoubleBufferWriter_4096_16_16_run_inst_WeightDoubleBufferWriter_4096_16_16_run_din_rsci_inst_WeightDoubleBufferWriter_4096_16_16_run_din_rsci_din_wait_ctrl_inst_din_rsci_irdy_run_sct,
      /scverify_top/rtl/WeightDoubleBuffer_4096_16_16_struct_inst/weightDoubleBufferWriter/WeightDoubleBufferWriter_4096_16_16_run_inst/WeightDoubleBufferWriter_4096_16_16_run_din_rsci_inst/WeightDoubleBufferWriter_4096_16_16_run_din_rsci_din_wait_ctrl_inst/din_rsci_irdy_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferWriter_WeightDoubleBufferWriter_4096_16_16_run_inst_WeightDoubleBufferWriter_4096_16_16_run_din_rsci_inst_WeightDoubleBufferWriter_4096_16_16_run_din_rsci_din_wait_ctrl_inst_din_rsci_ivld,
      /scverify_top/rtl/WeightDoubleBuffer_4096_16_16_struct_inst/weightDoubleBufferWriter/WeightDoubleBufferWriter_4096_16_16_run_inst/WeightDoubleBufferWriter_4096_16_16_run_din_rsci_inst/WeightDoubleBufferWriter_4096_16_16_run_din_rsci_din_wait_ctrl_inst/din_rsci_ivld);
  OBSERVE_FOREIGN_SIGNAL(OFS_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferWriter_WeightDoubleBufferWriter_4096_16_16_run_inst_WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_rls_obj_inst_WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_rls_obj_dout_rsc_rls_wait_ctrl_inst_dout_rsc_rls_obj_ld_run_sct,
      /scverify_top/rtl/WeightDoubleBuffer_4096_16_16_struct_inst/weightDoubleBufferWriter/WeightDoubleBufferWriter_4096_16_16_run_inst/WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_rls_obj_inst/WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_rls_obj_dout_rsc_rls_wait_ctrl_inst/dout_rsc_rls_obj_ld_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferWriter_WeightDoubleBufferWriter_4096_16_16_run_inst_WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_req_obj_inst_WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_req_obj_dout_rsc_req_wait_ctrl_inst_dout_rsc_req_obj_vd,
      /scverify_top/rtl/WeightDoubleBuffer_4096_16_16_struct_inst/weightDoubleBufferWriter/WeightDoubleBufferWriter_4096_16_16_run_inst/WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_req_obj_inst/WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_req_obj_dout_rsc_req_wait_ctrl_inst/dout_rsc_req_obj_vd);
  OBSERVE_FOREIGN_SIGNAL(OFS_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferReader_WeightDoubleBufferReader_4096_16_16_run_inst_WeightDoubleBufferReader_4096_16_16_run_paramsIn_rsci_inst_WeightDoubleBufferReader_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_irdy_run_sct,
      /scverify_top/rtl/WeightDoubleBuffer_4096_16_16_struct_inst/weightDoubleBufferReader/WeightDoubleBufferReader_4096_16_16_run_inst/WeightDoubleBufferReader_4096_16_16_run_paramsIn_rsci_inst/WeightDoubleBufferReader_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst/paramsIn_rsci_irdy_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferReader_WeightDoubleBufferReader_4096_16_16_run_inst_WeightDoubleBufferReader_4096_16_16_run_paramsIn_rsci_inst_WeightDoubleBufferReader_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_ivld,
      /scverify_top/rtl/WeightDoubleBuffer_4096_16_16_struct_inst/weightDoubleBufferReader/WeightDoubleBufferReader_4096_16_16_run_inst/WeightDoubleBufferReader_4096_16_16_run_paramsIn_rsci_inst/WeightDoubleBufferReader_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst/paramsIn_rsci_ivld);
  OBSERVE_FOREIGN_SIGNAL(OFS_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferReader_WeightDoubleBufferReader_4096_16_16_run_inst_WeightDoubleBufferReader_4096_16_16_run_dout_rsci_inst_WeightDoubleBufferReader_4096_16_16_run_dout_rsci_dout_wait_ctrl_inst_dout_rsci_irdy,
      /scverify_top/rtl/WeightDoubleBuffer_4096_16_16_struct_inst/weightDoubleBufferReader/WeightDoubleBufferReader_4096_16_16_run_inst/WeightDoubleBufferReader_4096_16_16_run_dout_rsci_inst/WeightDoubleBufferReader_4096_16_16_run_dout_rsci_dout_wait_ctrl_inst/dout_rsci_irdy);
  OBSERVE_FOREIGN_SIGNAL(OFS_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferReader_WeightDoubleBufferReader_4096_16_16_run_inst_WeightDoubleBufferReader_4096_16_16_run_dout_rsci_inst_WeightDoubleBufferReader_4096_16_16_run_dout_rsci_dout_wait_ctrl_inst_dout_rsci_ivld_run_sct,
      /scverify_top/rtl/WeightDoubleBuffer_4096_16_16_struct_inst/weightDoubleBufferReader/WeightDoubleBufferReader_4096_16_16_run_inst/WeightDoubleBufferReader_4096_16_16_run_dout_rsci_inst/WeightDoubleBufferReader_4096_16_16_run_dout_rsci_dout_wait_ctrl_inst/dout_rsci_ivld_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferReader_WeightDoubleBufferReader_4096_16_16_run_inst_WeightDoubleBufferReader_4096_16_16_run_din_rsc_rls_obj_inst_WeightDoubleBufferReader_4096_16_16_run_din_rsc_rls_obj_din_rsc_rls_wait_ctrl_inst_din_rsc_rls_obj_ld_run_sct,
      /scverify_top/rtl/WeightDoubleBuffer_4096_16_16_struct_inst/weightDoubleBufferReader/WeightDoubleBufferReader_4096_16_16_run_inst/WeightDoubleBufferReader_4096_16_16_run_din_rsc_rls_obj_inst/WeightDoubleBufferReader_4096_16_16_run_din_rsc_rls_obj_din_rsc_rls_wait_ctrl_inst/din_rsc_rls_obj_ld_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferReader_WeightDoubleBufferReader_4096_16_16_run_inst_WeightDoubleBufferReader_4096_16_16_run_din_rsc_req_obj_inst_WeightDoubleBufferReader_4096_16_16_run_din_rsc_req_obj_din_rsc_req_wait_ctrl_inst_din_rsc_req_obj_vd,
      /scverify_top/rtl/WeightDoubleBuffer_4096_16_16_struct_inst/weightDoubleBufferReader/WeightDoubleBufferReader_4096_16_16_run_inst/WeightDoubleBufferReader_4096_16_16_run_din_rsc_req_obj_inst/WeightDoubleBufferReader_4096_16_16_run_din_rsc_req_obj_din_rsc_req_wait_ctrl_inst/din_rsc_req_obj_vd);
  OBSERVE_FOREIGN_SIGNAL(OFS_WeightDoubleBuffer_4096_16_16_struct_inst_WeightDoubleBuffer_4096_16_16_run_inst_WeightDoubleBuffer_4096_16_16_run_run_inst_WeightDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_inst_WeightDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_irdy_run_sct,
      /scverify_top/rtl/WeightDoubleBuffer_4096_16_16_struct_inst/WeightDoubleBuffer_4096_16_16_run_inst/WeightDoubleBuffer_4096_16_16_run_run_inst/WeightDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_inst/WeightDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_paramsIn_wait_ctrl_inst/paramsIn_rsci_irdy_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_WeightDoubleBuffer_4096_16_16_struct_inst_WeightDoubleBuffer_4096_16_16_run_inst_WeightDoubleBuffer_4096_16_16_run_run_inst_WeightDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_inst_WeightDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_ivld,
      /scverify_top/rtl/WeightDoubleBuffer_4096_16_16_struct_inst/WeightDoubleBuffer_4096_16_16_run_inst/WeightDoubleBuffer_4096_16_16_run_run_inst/WeightDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_inst/WeightDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_paramsIn_wait_ctrl_inst/paramsIn_rsci_ivld);
  OBSERVE_FOREIGN_SIGNAL(OFS_WeightDoubleBuffer_4096_16_16_struct_inst_WeightDoubleBuffer_4096_16_16_run_inst_WeightDoubleBuffer_4096_16_16_run_run_inst_WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferWriterParams_cnsi_inst_WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferWriterParams_cnsi_weightDoubleBufferWriterParams_wait_ctrl_inst_weightDoubleBufferWriterParams_cnsi_irdy,
      /scverify_top/rtl/WeightDoubleBuffer_4096_16_16_struct_inst/WeightDoubleBuffer_4096_16_16_run_inst/WeightDoubleBuffer_4096_16_16_run_run_inst/WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferWriterParams_cnsi_inst/WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferWriterParams_cnsi_weightDoubleBufferWriterParams_wait_ctrl_inst/weightDoubleBufferWriterParams_cnsi_irdy);
  OBSERVE_FOREIGN_SIGNAL(OFS_WeightDoubleBuffer_4096_16_16_struct_inst_WeightDoubleBuffer_4096_16_16_run_inst_WeightDoubleBuffer_4096_16_16_run_run_inst_WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferWriterParams_cnsi_inst_WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferWriterParams_cnsi_weightDoubleBufferWriterParams_wait_ctrl_inst_weightDoubleBufferWriterParams_cnsi_ivld_run_sct,
      /scverify_top/rtl/WeightDoubleBuffer_4096_16_16_struct_inst/WeightDoubleBuffer_4096_16_16_run_inst/WeightDoubleBuffer_4096_16_16_run_run_inst/WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferWriterParams_cnsi_inst/WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferWriterParams_cnsi_weightDoubleBufferWriterParams_wait_ctrl_inst/weightDoubleBufferWriterParams_cnsi_ivld_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_WeightDoubleBuffer_4096_16_16_struct_inst_WeightDoubleBuffer_4096_16_16_run_inst_WeightDoubleBuffer_4096_16_16_run_run_inst_WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferReaderParams_cnsi_inst_WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferReaderParams_cnsi_weightDoubleBufferReaderParams_wait_ctrl_inst_weightDoubleBufferReaderParams_cnsi_irdy,
      /scverify_top/rtl/WeightDoubleBuffer_4096_16_16_struct_inst/WeightDoubleBuffer_4096_16_16_run_inst/WeightDoubleBuffer_4096_16_16_run_run_inst/WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferReaderParams_cnsi_inst/WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferReaderParams_cnsi_weightDoubleBufferReaderParams_wait_ctrl_inst/weightDoubleBufferReaderParams_cnsi_irdy);
  OBSERVE_FOREIGN_SIGNAL(OFS_WeightDoubleBuffer_4096_16_16_struct_inst_WeightDoubleBuffer_4096_16_16_run_inst_WeightDoubleBuffer_4096_16_16_run_run_inst_WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferReaderParams_cnsi_inst_WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferReaderParams_cnsi_weightDoubleBufferReaderParams_wait_ctrl_inst_weightDoubleBufferReaderParams_cnsi_ivld_run_sct,
      /scverify_top/rtl/WeightDoubleBuffer_4096_16_16_struct_inst/WeightDoubleBuffer_4096_16_16_run_inst/WeightDoubleBuffer_4096_16_16_run_run_inst/WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferReaderParams_cnsi_inst/WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferReaderParams_cnsi_weightDoubleBufferReaderParams_wait_ctrl_inst/weightDoubleBufferReaderParams_cnsi_ivld_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_weights_in_rsc_vld, /scverify_top/rtl/weights_in_rsc_vld);
  OBSERVE_FOREIGN_SIGNAL(OFS_weights_out_rsc_rdy, /scverify_top/rtl/weights_out_rsc_rdy);
  OBSERVE_FOREIGN_SIGNAL(OFS_paramsIn_rsc_vld, /scverify_top/rtl/paramsIn_rsc_vld);
#endif
#endif
}

void scverify_top::deadlock_watch() {
#if !defined(CCS_DUT_SYSC) && defined(DEADLOCK_DETECTION)
#if defined(CCS_DUT_CYCLE) || defined(CCS_DUT_RTL)
#if defined(MTI_SYSTEMC) || defined(NCSC) || defined(VCS_SYSTEMC)
  if (!clk) {
    if (rst == SC_LOGIC_0 &&
      (OFS_WeightDoubleBuffer_4096_16_16_struct_inst_WeightDoubleBuffer_4096_16_16_run_inst_WeightDoubleBuffer_4096_16_16_run_run_inst_WeightDoubleBuffer_4096_16_16_run_run_staller_inst_run_wen.read()
          == SC_LOGIC_0)
      && (OFS_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferReader_WeightDoubleBufferReader_4096_16_16_run_inst_WeightDoubleBufferReader_4096_16_16_run_staller_inst_run_wen.read()
          == SC_LOGIC_0)
      && (OFS_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferWriter_WeightDoubleBufferWriter_4096_16_16_run_inst_WeightDoubleBufferWriter_4096_16_16_run_staller_inst_run_wen.read()
          == SC_LOGIC_0)
      && (OFS_weights_in_rsc_vld.read() == SC_LOGIC_1)
      && (OFS_weights_out_rsc_rdy.read() == SC_LOGIC_1)
      && (OFS_paramsIn_rsc_vld.read() == SC_LOGIC_1)
    ) {
      deadlocked.write(SC_LOGIC_1);
      deadlock_event.notify(1535, SC_NS);
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
