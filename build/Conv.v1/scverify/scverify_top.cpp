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
#define TOP_HDL_ENTITY Conv
#endif
// Hold time for the SCVerify testbench to account for the gate delay after downstream synthesis in pico second(s)
// Hold time value is obtained from 'top_gate_constraints.cpp', which is generated at the end of RTL synthesis
#ifdef CCS_DUT_GATE
extern double __scv_hold_time;
extern double __scv_hold_time_RSCID_163;
extern double __scv_hold_time_RSCID_164;
extern double __scv_hold_time_RSCID_165;
extern double __scv_hold_time_RSCID_166;
#else
double __scv_hold_time = 0.0; // default for non-gate simulation is zero
double __scv_hold_time_RSCID_163 = 0;
double __scv_hold_time_RSCID_164 = 0;
double __scv_hold_time_RSCID_165 = 0;
double __scv_hold_time_RSCID_166 = 0;
#endif

class scverify_top : public sc_module
{
public:
  sc_signal<sc_logic>                                       rst;
  sc_signal<sc_logic>                                       rst_n;
  sc_signal<sc_logic>                                       SIG_SC_LOGIC_0;
  sc_signal<sc_logic>                                       SIG_SC_LOGIC_1;
  sc_signal<sc_logic>                                       TLS_design_is_idle;
  sc_signal<bool>                                           TLS_design_is_idle_reg;
  sc_clock                                                  clk;
  mc_programmable_reset                                     arst_n_driver;
  sc_signal<sc_logic>                                       TLS_arst_n;
  sc_signal<sc_lv<8> >                                      TLS_input_serial_rsc_dat;
  sc_signal<sc_logic>                                       TLS_input_serial_rsc_vld;
  sc_signal<sc_logic>                                       TLS_input_serial_rsc_rdy;
  sc_signal<sc_lv<8> >                                      TLS_weight_serial_rsc_dat;
  sc_signal<sc_logic>                                       TLS_weight_serial_rsc_vld;
  sc_signal<sc_logic>                                       TLS_weight_serial_rsc_rdy;
  sc_signal<sc_lv<16> >                                     TLS_output_serial_rsc_dat;
  sc_signal<sc_logic>                                       TLS_output_serial_rsc_vld;
  sc_signal<sc_logic>                                       TLS_output_serial_rsc_rdy;
  sc_signal<sc_lv<16> >                                     TLS_paramsIn_rsc_dat;
  sc_signal<sc_logic>                                       TLS_paramsIn_rsc_vld;
  sc_signal<sc_logic>                                       TLS_paramsIn_rsc_rdy;
  ccs_DUT_wrapper                                           Conv_INST;
  ccs_in_wait_trans_rsc_v1<1,16 >                           paramsIn_rsc_INST;
  ccs_out_wait_trans_rsc_v1<1,16 >                          output_serial_rsc_INST;
  ccs_in_wait_trans_rsc_v1<1,8 >                            input_serial_rsc_INST;
  ccs_in_wait_trans_rsc_v1<1,8 >                            weight_serial_rsc_INST;
  tlm::tlm_fifo<ac_int<16, false > >                        TLS_in_fifo_paramsIn;
  tlm::tlm_fifo<mc_wait_ctrl>                               TLS_in_wait_ctrl_fifo_paramsIn;
  tlm::tlm_fifo<int>                                        TLS_in_fifo_paramsIn_sizecount;
  sc_signal<sc_logic>                                       TLS_paramsIn_rsc_trdone;
  mc_channel_input_transactor<ac_int<16, false >,16,false>  transactor_paramsIn;
  tlm::tlm_fifo<ac_int<16, true > >                         TLS_out_fifo_output_serial;
  tlm::tlm_fifo<mc_wait_ctrl>                               TLS_out_wait_ctrl_fifo_output_serial;
  sc_signal<sc_logic>                                       TLS_output_serial_rsc_trdone;
  mc_output_transactor<ac_int<16, true >,16,true>           transactor_output_serial;
  tlm::tlm_fifo<ac_int<8, true > >                          TLS_in_fifo_input_serial;
  tlm::tlm_fifo<mc_wait_ctrl>                               TLS_in_wait_ctrl_fifo_input_serial;
  tlm::tlm_fifo<int>                                        TLS_in_fifo_input_serial_sizecount;
  sc_signal<sc_logic>                                       TLS_input_serial_rsc_trdone;
  mc_channel_input_transactor<ac_int<8, true >,8,true>      transactor_input_serial;
  tlm::tlm_fifo<ac_int<8, true > >                          TLS_in_fifo_weight_serial;
  tlm::tlm_fifo<mc_wait_ctrl>                               TLS_in_wait_ctrl_fifo_weight_serial;
  tlm::tlm_fifo<int>                                        TLS_in_fifo_weight_serial_sizecount;
  sc_signal<sc_logic>                                       TLS_weight_serial_rsc_trdone;
  mc_channel_input_transactor<ac_int<8, true >,8,true>      transactor_weight_serial;
  mc_testbench                                              testbench_INST;
  sc_signal<sc_logic>                                       catapult_start;
  sc_signal<sc_logic>                                       catapult_done;
  sc_signal<sc_logic>                                       catapult_ready;
  sc_signal<sc_logic>                                       in_sync;
  sc_signal<sc_logic>                                       out_sync;
  sc_signal<sc_logic>                                       inout_sync;
  sc_signal<unsigned>                                       wait_for_init;
  sync_generator                                            sync_generator_INST;
  catapult_monitor                                          catapult_monitor_INST;
  ccs_probe_monitor                                        *ccs_probe_monitor_INST;
  sc_event                                                  generate_reset_event;
  sc_event                                                  deadlock_event;
  sc_signal<sc_logic>                                       deadlocked;
  sc_signal<sc_logic>                                       maxsimtime;
  sc_event                                                  max_sim_time_event;
  sc_signal<sc_logic>                                       OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_inputDoubleBufferWriter_InputDoubleBufferWriter_4096_16_16_run_inst_InputDoubleBufferWriter_4096_16_16_run_staller_inst_run_wen;
  sc_signal<sc_logic>                                       OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_inputDoubleBufferReader_InputDoubleBufferReader_4096_16_16_run_inst_InputDoubleBufferReader_4096_16_16_run_staller_inst_run_wen;
  sc_signal<sc_logic>                                       OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_InputDoubleBuffer_4096_16_16_run_inst_InputDoubleBuffer_4096_16_16_run_run_inst_InputDoubleBuffer_4096_16_16_run_run_staller_inst_run_wen;
  sc_signal<sc_logic>                                       OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferWriter_WeightDoubleBufferWriter_4096_16_16_run_inst_WeightDoubleBufferWriter_4096_16_16_run_staller_inst_run_wen;
  sc_signal<sc_logic>                                       OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferReader_WeightDoubleBufferReader_4096_16_16_run_inst_WeightDoubleBufferReader_4096_16_16_run_staller_inst_run_wen;
  sc_signal<sc_logic>                                       OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_WeightDoubleBuffer_4096_16_16_run_inst_WeightDoubleBuffer_4096_16_16_run_run_inst_WeightDoubleBuffer_4096_16_16_run_run_staller_inst_run_wen;
  sc_signal<sc_logic>                                       OFS_systolicArray_systolicArrayCore_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_staller_inst_run_wen;
  sc_signal<sc_logic>                                       OFS_paramsDeserializer_1_ParamsDeserializer_run_inst_ParamsDeserializer_run_staller_inst_run_wen;
  sc_signal<sc_logic>                                       OFS_outputSerializer_Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_inst_Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_staller_inst_run_wen;
  sc_signal<sc_logic>                                       OFS_systolicArray_systolicArrayLooper_1_SystolicArrayLooper_run_inst_SystolicArrayLooper_run_staller_inst_run_wen;
  sc_signal<sc_logic>                                       OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_inputDoubleBufferWriter_InputDoubleBufferWriter_4096_16_16_run_inst_InputDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_inst_InputDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_irdy_run_sct;
  sc_signal<sc_logic>                                       OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_inputDoubleBufferWriter_InputDoubleBufferWriter_4096_16_16_run_inst_InputDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_inst_InputDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_ivld;
  sc_signal<sc_logic>                                       OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_inputDoubleBufferWriter_InputDoubleBufferWriter_4096_16_16_run_inst_InputDoubleBufferWriter_4096_16_16_run_din_rsci_inst_InputDoubleBufferWriter_4096_16_16_run_din_rsci_din_wait_ctrl_inst_din_rsci_irdy_run_sct;
  sc_signal<sc_logic>                                       OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_inputDoubleBufferWriter_InputDoubleBufferWriter_4096_16_16_run_inst_InputDoubleBufferWriter_4096_16_16_run_din_rsci_inst_InputDoubleBufferWriter_4096_16_16_run_din_rsci_din_wait_ctrl_inst_din_rsci_ivld;
  sc_signal<sc_logic>                                       OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_inputDoubleBufferWriter_InputDoubleBufferWriter_4096_16_16_run_inst_InputDoubleBufferWriter_4096_16_16_run_dout_rsc_rls_obj_inst_InputDoubleBufferWriter_4096_16_16_run_dout_rsc_rls_obj_dout_rsc_rls_wait_ctrl_inst_dout_rsc_rls_obj_ld_run_sct;
  sc_signal<sc_logic>                                       OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_inputDoubleBufferWriter_InputDoubleBufferWriter_4096_16_16_run_inst_InputDoubleBufferWriter_4096_16_16_run_dout_rsc_req_obj_inst_InputDoubleBufferWriter_4096_16_16_run_dout_rsc_req_obj_dout_rsc_req_wait_ctrl_inst_dout_rsc_req_obj_vd;
  sc_signal<sc_logic>                                       OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_inputDoubleBufferReader_InputDoubleBufferReader_4096_16_16_run_inst_InputDoubleBufferReader_4096_16_16_run_paramsIn_rsci_inst_InputDoubleBufferReader_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_irdy_run_sct;
  sc_signal<sc_logic>                                       OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_inputDoubleBufferReader_InputDoubleBufferReader_4096_16_16_run_inst_InputDoubleBufferReader_4096_16_16_run_paramsIn_rsci_inst_InputDoubleBufferReader_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_ivld;
  sc_signal<sc_logic>                                       OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_inputDoubleBufferReader_InputDoubleBufferReader_4096_16_16_run_inst_InputDoubleBufferReader_4096_16_16_run_dout_rsci_inst_InputDoubleBufferReader_4096_16_16_run_dout_rsci_dout_wait_ctrl_inst_dout_rsci_irdy;
  sc_signal<sc_logic>                                       OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_inputDoubleBufferReader_InputDoubleBufferReader_4096_16_16_run_inst_InputDoubleBufferReader_4096_16_16_run_dout_rsci_inst_InputDoubleBufferReader_4096_16_16_run_dout_rsci_dout_wait_ctrl_inst_dout_rsci_ivld_run_sct;
  sc_signal<sc_logic>                                       OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_inputDoubleBufferReader_InputDoubleBufferReader_4096_16_16_run_inst_InputDoubleBufferReader_4096_16_16_run_din_rsc_rls_obj_inst_InputDoubleBufferReader_4096_16_16_run_din_rsc_rls_obj_din_rsc_rls_wait_ctrl_inst_din_rsc_rls_obj_ld_run_sct;
  sc_signal<sc_logic>                                       OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_inputDoubleBufferReader_InputDoubleBufferReader_4096_16_16_run_inst_InputDoubleBufferReader_4096_16_16_run_din_rsc_req_obj_inst_InputDoubleBufferReader_4096_16_16_run_din_rsc_req_obj_din_rsc_req_wait_ctrl_inst_din_rsc_req_obj_vd;
  sc_signal<sc_logic>                                       OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_InputDoubleBuffer_4096_16_16_run_inst_InputDoubleBuffer_4096_16_16_run_run_inst_InputDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_inst_InputDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_irdy_run_sct;
  sc_signal<sc_logic>                                       OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_InputDoubleBuffer_4096_16_16_run_inst_InputDoubleBuffer_4096_16_16_run_run_inst_InputDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_inst_InputDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_ivld;
  sc_signal<sc_logic>                                       OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_InputDoubleBuffer_4096_16_16_run_inst_InputDoubleBuffer_4096_16_16_run_run_inst_InputDoubleBuffer_4096_16_16_run_run_inputDoubleBufferWriterParams_cnsi_inst_InputDoubleBuffer_4096_16_16_run_run_inputDoubleBufferWriterParams_cnsi_inputDoubleBufferWriterParams_wait_ctrl_inst_inputDoubleBufferWriterParams_cnsi_irdy;
  sc_signal<sc_logic>                                       OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_InputDoubleBuffer_4096_16_16_run_inst_InputDoubleBuffer_4096_16_16_run_run_inst_InputDoubleBuffer_4096_16_16_run_run_inputDoubleBufferWriterParams_cnsi_inst_InputDoubleBuffer_4096_16_16_run_run_inputDoubleBufferWriterParams_cnsi_inputDoubleBufferWriterParams_wait_ctrl_inst_inputDoubleBufferWriterParams_cnsi_ivld_run_sct;
  sc_signal<sc_logic>                                       OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_InputDoubleBuffer_4096_16_16_run_inst_InputDoubleBuffer_4096_16_16_run_run_inst_InputDoubleBuffer_4096_16_16_run_run_inputDoubleBufferReaderParams_cnsi_inst_InputDoubleBuffer_4096_16_16_run_run_inputDoubleBufferReaderParams_cnsi_inputDoubleBufferReaderParams_wait_ctrl_inst_inputDoubleBufferReaderParams_cnsi_irdy;
  sc_signal<sc_logic>                                       OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_InputDoubleBuffer_4096_16_16_run_inst_InputDoubleBuffer_4096_16_16_run_run_inst_InputDoubleBuffer_4096_16_16_run_run_inputDoubleBufferReaderParams_cnsi_inst_InputDoubleBuffer_4096_16_16_run_run_inputDoubleBufferReaderParams_cnsi_inputDoubleBufferReaderParams_wait_ctrl_inst_inputDoubleBufferReaderParams_cnsi_ivld_run_sct;
  sc_signal<sc_logic>                                       OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferWriter_WeightDoubleBufferWriter_4096_16_16_run_inst_WeightDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_inst_WeightDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_irdy_run_sct;
  sc_signal<sc_logic>                                       OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferWriter_WeightDoubleBufferWriter_4096_16_16_run_inst_WeightDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_inst_WeightDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_ivld;
  sc_signal<sc_logic>                                       OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferWriter_WeightDoubleBufferWriter_4096_16_16_run_inst_WeightDoubleBufferWriter_4096_16_16_run_din_rsci_inst_WeightDoubleBufferWriter_4096_16_16_run_din_rsci_din_wait_ctrl_inst_din_rsci_irdy_run_sct;
  sc_signal<sc_logic>                                       OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferWriter_WeightDoubleBufferWriter_4096_16_16_run_inst_WeightDoubleBufferWriter_4096_16_16_run_din_rsci_inst_WeightDoubleBufferWriter_4096_16_16_run_din_rsci_din_wait_ctrl_inst_din_rsci_ivld;
  sc_signal<sc_logic>                                       OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferWriter_WeightDoubleBufferWriter_4096_16_16_run_inst_WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_rls_obj_inst_WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_rls_obj_dout_rsc_rls_wait_ctrl_inst_dout_rsc_rls_obj_ld_run_sct;
  sc_signal<sc_logic>                                       OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferWriter_WeightDoubleBufferWriter_4096_16_16_run_inst_WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_req_obj_inst_WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_req_obj_dout_rsc_req_wait_ctrl_inst_dout_rsc_req_obj_vd;
  sc_signal<sc_logic>                                       OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferReader_WeightDoubleBufferReader_4096_16_16_run_inst_WeightDoubleBufferReader_4096_16_16_run_paramsIn_rsci_inst_WeightDoubleBufferReader_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_irdy_run_sct;
  sc_signal<sc_logic>                                       OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferReader_WeightDoubleBufferReader_4096_16_16_run_inst_WeightDoubleBufferReader_4096_16_16_run_paramsIn_rsci_inst_WeightDoubleBufferReader_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_ivld;
  sc_signal<sc_logic>                                       OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferReader_WeightDoubleBufferReader_4096_16_16_run_inst_WeightDoubleBufferReader_4096_16_16_run_dout_rsci_inst_WeightDoubleBufferReader_4096_16_16_run_dout_rsci_dout_wait_ctrl_inst_dout_rsci_irdy;
  sc_signal<sc_logic>                                       OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferReader_WeightDoubleBufferReader_4096_16_16_run_inst_WeightDoubleBufferReader_4096_16_16_run_dout_rsci_inst_WeightDoubleBufferReader_4096_16_16_run_dout_rsci_dout_wait_ctrl_inst_dout_rsci_ivld_run_sct;
  sc_signal<sc_logic>                                       OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferReader_WeightDoubleBufferReader_4096_16_16_run_inst_WeightDoubleBufferReader_4096_16_16_run_din_rsc_rls_obj_inst_WeightDoubleBufferReader_4096_16_16_run_din_rsc_rls_obj_din_rsc_rls_wait_ctrl_inst_din_rsc_rls_obj_ld_run_sct;
  sc_signal<sc_logic>                                       OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferReader_WeightDoubleBufferReader_4096_16_16_run_inst_WeightDoubleBufferReader_4096_16_16_run_din_rsc_req_obj_inst_WeightDoubleBufferReader_4096_16_16_run_din_rsc_req_obj_din_rsc_req_wait_ctrl_inst_din_rsc_req_obj_vd;
  sc_signal<sc_logic>                                       OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_WeightDoubleBuffer_4096_16_16_run_inst_WeightDoubleBuffer_4096_16_16_run_run_inst_WeightDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_inst_WeightDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_irdy_run_sct;
  sc_signal<sc_logic>                                       OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_WeightDoubleBuffer_4096_16_16_run_inst_WeightDoubleBuffer_4096_16_16_run_run_inst_WeightDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_inst_WeightDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_ivld;
  sc_signal<sc_logic>                                       OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_WeightDoubleBuffer_4096_16_16_run_inst_WeightDoubleBuffer_4096_16_16_run_run_inst_WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferWriterParams_cnsi_inst_WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferWriterParams_cnsi_weightDoubleBufferWriterParams_wait_ctrl_inst_weightDoubleBufferWriterParams_cnsi_irdy;
  sc_signal<sc_logic>                                       OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_WeightDoubleBuffer_4096_16_16_run_inst_WeightDoubleBuffer_4096_16_16_run_run_inst_WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferWriterParams_cnsi_inst_WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferWriterParams_cnsi_weightDoubleBufferWriterParams_wait_ctrl_inst_weightDoubleBufferWriterParams_cnsi_ivld_run_sct;
  sc_signal<sc_logic>                                       OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_WeightDoubleBuffer_4096_16_16_run_inst_WeightDoubleBuffer_4096_16_16_run_run_inst_WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferReaderParams_cnsi_inst_WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferReaderParams_cnsi_weightDoubleBufferReaderParams_wait_ctrl_inst_weightDoubleBufferReaderParams_cnsi_irdy;
  sc_signal<sc_logic>                                       OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_WeightDoubleBuffer_4096_16_16_run_inst_WeightDoubleBuffer_4096_16_16_run_run_inst_WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferReaderParams_cnsi_inst_WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferReaderParams_cnsi_weightDoubleBufferReaderParams_wait_ctrl_inst_weightDoubleBufferReaderParams_cnsi_ivld_run_sct;
  sc_signal<sc_logic>                                       OFS_systolicArray_systolicArrayCore_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_input_rsci_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_input_rsci_input_wait_ctrl_inst_input_rsci_irdy_run_sct;
  sc_signal<sc_logic>                                       OFS_systolicArray_systolicArrayCore_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_input_rsci_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_input_rsci_input_wait_ctrl_inst_input_rsci_ivld;
  sc_signal<sc_logic>                                       OFS_systolicArray_systolicArrayCore_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_weight_rsci_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_weight_rsci_weight_wait_ctrl_inst_weight_rsci_irdy_run_sct;
  sc_signal<sc_logic>                                       OFS_systolicArray_systolicArrayCore_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_weight_rsci_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_weight_rsci_weight_wait_ctrl_inst_weight_rsci_ivld;
  sc_signal<sc_logic>                                       OFS_systolicArray_systolicArrayCore_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_output_rsci_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_output_rsci_output_wait_ctrl_inst_output_rsci_irdy;
  sc_signal<sc_logic>                                       OFS_systolicArray_systolicArrayCore_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_output_rsci_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_output_rsci_output_wait_ctrl_inst_output_rsci_ivld_run_sct;
  sc_signal<sc_logic>                                       OFS_systolicArray_systolicArrayCore_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_paramsIn_rsci_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_irdy_run_sct;
  sc_signal<sc_logic>                                       OFS_systolicArray_systolicArrayCore_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_paramsIn_rsci_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_ivld;
  sc_signal<sc_logic>                                       OFS_systolicArray_systolicArrayCore_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_loopIndicesIn_rsci_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_loopIndicesIn_rsci_loopIndicesIn_wait_ctrl_inst_loopIndicesIn_rsci_irdy_run_sct;
  sc_signal<sc_logic>                                       OFS_systolicArray_systolicArrayCore_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_loopIndicesIn_rsci_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_loopIndicesIn_rsci_loopIndicesIn_wait_ctrl_inst_loopIndicesIn_rsci_ivld;
  sc_signal<sc_logic>                                       OFS_paramsDeserializer_1_ParamsDeserializer_run_inst_ParamsDeserializer_run_inputChannel_rsci_inst_ParamsDeserializer_run_inputChannel_rsci_inputChannel_wait_ctrl_inst_inputChannel_rsci_irdy_run_sct;
  sc_signal<sc_logic>                                       OFS_paramsDeserializer_1_ParamsDeserializer_run_inst_ParamsDeserializer_run_inputChannel_rsci_inst_ParamsDeserializer_run_inputChannel_rsci_inputChannel_wait_ctrl_inst_inputChannel_rsci_ivld;
  sc_signal<sc_logic>                                       OFS_paramsDeserializer_1_ParamsDeserializer_run_inst_ParamsDeserializer_run_outputChannel1_rsci_inst_ParamsDeserializer_run_outputChannel1_rsci_outputChannel1_wait_ctrl_inst_outputChannel1_rsci_irdy;
  sc_signal<sc_logic>                                       OFS_paramsDeserializer_1_ParamsDeserializer_run_inst_ParamsDeserializer_run_outputChannel1_rsci_inst_ParamsDeserializer_run_outputChannel1_rsci_outputChannel1_wait_ctrl_inst_outputChannel1_rsci_ivld_run_sct;
  sc_signal<sc_logic>                                       OFS_paramsDeserializer_1_ParamsDeserializer_run_inst_ParamsDeserializer_run_outputChannel2_rsci_inst_ParamsDeserializer_run_outputChannel2_rsci_outputChannel2_wait_ctrl_inst_outputChannel2_rsci_irdy;
  sc_signal<sc_logic>                                       OFS_paramsDeserializer_1_ParamsDeserializer_run_inst_ParamsDeserializer_run_outputChannel2_rsci_inst_ParamsDeserializer_run_outputChannel2_rsci_outputChannel2_wait_ctrl_inst_outputChannel2_rsci_ivld_run_sct;
  sc_signal<sc_logic>                                       OFS_paramsDeserializer_1_ParamsDeserializer_run_inst_ParamsDeserializer_run_outputChannel3_rsci_inst_ParamsDeserializer_run_outputChannel3_rsci_outputChannel3_wait_ctrl_inst_outputChannel3_rsci_irdy;
  sc_signal<sc_logic>                                       OFS_paramsDeserializer_1_ParamsDeserializer_run_inst_ParamsDeserializer_run_outputChannel3_rsci_inst_ParamsDeserializer_run_outputChannel3_rsci_outputChannel3_wait_ctrl_inst_outputChannel3_rsci_ivld_run_sct;
  sc_signal<sc_logic>                                       OFS_outputSerializer_Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_inst_Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_inputChannel_rsci_inst_Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_inputChannel_rsci_inputChannel_wait_ctrl_inst_inputChannel_rsci_irdy_run_sct;
  sc_signal<sc_logic>                                       OFS_outputSerializer_Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_inst_Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_inputChannel_rsci_inst_Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_inputChannel_rsci_inputChannel_wait_ctrl_inst_inputChannel_rsci_ivld;
  sc_signal<sc_logic>                                       OFS_outputSerializer_Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_inst_Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_serialOutChannel_rsci_inst_Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_serialOutChannel_rsci_serialOutChannel_wait_ctrl_inst_serialOutChannel_rsci_irdy;
  sc_signal<sc_logic>                                       OFS_outputSerializer_Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_inst_Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_serialOutChannel_rsci_inst_Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_serialOutChannel_rsci_serialOutChannel_wait_ctrl_inst_serialOutChannel_rsci_ivld_run_sct;
  sc_signal<sc_logic>                                       OFS_systolicArray_systolicArrayLooper_1_SystolicArrayLooper_run_inst_SystolicArrayLooper_run_paramsIn_rsci_inst_SystolicArrayLooper_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_irdy_run_sct;
  sc_signal<sc_logic>                                       OFS_systolicArray_systolicArrayLooper_1_SystolicArrayLooper_run_inst_SystolicArrayLooper_run_paramsIn_rsci_inst_SystolicArrayLooper_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_ivld;
  sc_signal<sc_logic>                                       OFS_systolicArray_systolicArrayLooper_1_SystolicArrayLooper_run_inst_SystolicArrayLooper_run_paramsOut_rsci_inst_SystolicArrayLooper_run_paramsOut_rsci_paramsOut_wait_ctrl_inst_paramsOut_rsci_irdy;
  sc_signal<sc_logic>                                       OFS_systolicArray_systolicArrayLooper_1_SystolicArrayLooper_run_inst_SystolicArrayLooper_run_paramsOut_rsci_inst_SystolicArrayLooper_run_paramsOut_rsci_paramsOut_wait_ctrl_inst_paramsOut_rsci_ivld_run_sct;
  sc_signal<sc_logic>                                       OFS_systolicArray_systolicArrayLooper_1_SystolicArrayLooper_run_inst_SystolicArrayLooper_run_loopIndicesOut_rsci_inst_SystolicArrayLooper_run_loopIndicesOut_rsci_loopIndicesOut_wait_ctrl_inst_loopIndicesOut_rsci_irdy;
  sc_signal<sc_logic>                                       OFS_systolicArray_systolicArrayLooper_1_SystolicArrayLooper_run_inst_SystolicArrayLooper_run_loopIndicesOut_rsci_inst_SystolicArrayLooper_run_loopIndicesOut_rsci_loopIndicesOut_wait_ctrl_inst_loopIndicesOut_rsci_ivld_run_sct;
  sc_signal<sc_logic>                                       OFS_paramsIn_rsc_vld;
  sc_signal<sc_logic>                                       OFS_output_serial_rsc_rdy;
  sc_signal<sc_logic>                                       OFS_input_serial_rsc_vld;
  sc_signal<sc_logic>                                       OFS_weight_serial_rsc_vld;
  sc_signal<sc_logic>                                       TLS_enable_stalls;
  sc_signal<unsigned short>                                 TLS_stall_coverage;

  void TLS_arst_n_method();
  void drive_TLS_paramsIn_rsc_trdone();
  void drive_TLS_output_serial_rsc_trdone();
  void drive_TLS_input_serial_rsc_trdone();
  void drive_TLS_weight_serial_rsc_trdone();
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
    , TLS_input_serial_rsc_dat("TLS_input_serial_rsc_dat")
    , TLS_input_serial_rsc_vld("TLS_input_serial_rsc_vld")
    , TLS_input_serial_rsc_rdy("TLS_input_serial_rsc_rdy")
    , TLS_weight_serial_rsc_dat("TLS_weight_serial_rsc_dat")
    , TLS_weight_serial_rsc_vld("TLS_weight_serial_rsc_vld")
    , TLS_weight_serial_rsc_rdy("TLS_weight_serial_rsc_rdy")
    , TLS_output_serial_rsc_dat("TLS_output_serial_rsc_dat")
    , TLS_output_serial_rsc_vld("TLS_output_serial_rsc_vld")
    , TLS_output_serial_rsc_rdy("TLS_output_serial_rsc_rdy")
    , TLS_paramsIn_rsc_dat("TLS_paramsIn_rsc_dat")
    , TLS_paramsIn_rsc_vld("TLS_paramsIn_rsc_vld")
    , TLS_paramsIn_rsc_rdy("TLS_paramsIn_rsc_rdy")
    , Conv_INST("rtl", TO_QUOTED_STRING(TOP_HDL_ENTITY))
    , paramsIn_rsc_INST("paramsIn_rsc", true)
    , output_serial_rsc_INST("output_serial_rsc", true)
    , input_serial_rsc_INST("input_serial_rsc", true)
    , weight_serial_rsc_INST("weight_serial_rsc", true)
    , TLS_in_fifo_paramsIn("TLS_in_fifo_paramsIn", -1)
    , TLS_in_wait_ctrl_fifo_paramsIn("TLS_in_wait_ctrl_fifo_paramsIn", -1)
    , TLS_in_fifo_paramsIn_sizecount("TLS_in_fifo_paramsIn_sizecount", 1)
    , TLS_paramsIn_rsc_trdone("TLS_paramsIn_rsc_trdone")
    , transactor_paramsIn("transactor_paramsIn", 0, 16, 0)
    , TLS_out_fifo_output_serial("TLS_out_fifo_output_serial", -1)
    , TLS_out_wait_ctrl_fifo_output_serial("TLS_out_wait_ctrl_fifo_output_serial", -1)
    , TLS_output_serial_rsc_trdone("TLS_output_serial_rsc_trdone")
    , transactor_output_serial("transactor_output_serial", 0, 16, 0)
    , TLS_in_fifo_input_serial("TLS_in_fifo_input_serial", -1)
    , TLS_in_wait_ctrl_fifo_input_serial("TLS_in_wait_ctrl_fifo_input_serial", -1)
    , TLS_in_fifo_input_serial_sizecount("TLS_in_fifo_input_serial_sizecount", 1)
    , TLS_input_serial_rsc_trdone("TLS_input_serial_rsc_trdone")
    , transactor_input_serial("transactor_input_serial", 0, 8, 0)
    , TLS_in_fifo_weight_serial("TLS_in_fifo_weight_serial", -1)
    , TLS_in_wait_ctrl_fifo_weight_serial("TLS_in_wait_ctrl_fifo_weight_serial", -1)
    , TLS_in_fifo_weight_serial_sizecount("TLS_in_fifo_weight_serial_sizecount", 1)
    , TLS_weight_serial_rsc_trdone("TLS_weight_serial_rsc_trdone")
    , transactor_weight_serial("transactor_weight_serial", 0, 8, 0)
    , testbench_INST("user_tb")
    , catapult_start("catapult_start")
    , catapult_done("catapult_done")
    , catapult_ready("catapult_ready")
    , in_sync("in_sync")
    , out_sync("out_sync")
    , inout_sync("inout_sync")
    , wait_for_init("wait_for_init")
    , sync_generator_INST("sync_generator", true, false, false, false, 39, 39, 0)
    , catapult_monitor_INST("Monitor", clk, true, 39LL, 16LL)
    , ccs_probe_monitor_INST(NULL)
    , deadlocked("deadlocked")
    , maxsimtime("maxsimtime")
  {
    arst_n_driver.reset_out(TLS_arst_n);

    Conv_INST.clk(clk);
    Conv_INST.arst_n(TLS_arst_n);
    Conv_INST.input_serial_rsc_dat(TLS_input_serial_rsc_dat);
    Conv_INST.input_serial_rsc_vld(TLS_input_serial_rsc_vld);
    Conv_INST.input_serial_rsc_rdy(TLS_input_serial_rsc_rdy);
    Conv_INST.weight_serial_rsc_dat(TLS_weight_serial_rsc_dat);
    Conv_INST.weight_serial_rsc_vld(TLS_weight_serial_rsc_vld);
    Conv_INST.weight_serial_rsc_rdy(TLS_weight_serial_rsc_rdy);
    Conv_INST.output_serial_rsc_dat(TLS_output_serial_rsc_dat);
    Conv_INST.output_serial_rsc_vld(TLS_output_serial_rsc_vld);
    Conv_INST.output_serial_rsc_rdy(TLS_output_serial_rsc_rdy);
    Conv_INST.paramsIn_rsc_dat(TLS_paramsIn_rsc_dat);
    Conv_INST.paramsIn_rsc_vld(TLS_paramsIn_rsc_vld);
    Conv_INST.paramsIn_rsc_rdy(TLS_paramsIn_rsc_rdy);

    paramsIn_rsc_INST.rdy(TLS_paramsIn_rsc_rdy);
    paramsIn_rsc_INST.vld(TLS_paramsIn_rsc_vld);
    paramsIn_rsc_INST.dat(TLS_paramsIn_rsc_dat);
    paramsIn_rsc_INST.clk(clk);
    paramsIn_rsc_INST.add_attribute(*(new sc_attribute<double>("CLK_SKEW_DELAY", __scv_hold_time_RSCID_166)));

    output_serial_rsc_INST.rdy(TLS_output_serial_rsc_rdy);
    output_serial_rsc_INST.vld(TLS_output_serial_rsc_vld);
    output_serial_rsc_INST.dat(TLS_output_serial_rsc_dat);
    output_serial_rsc_INST.clk(clk);
    output_serial_rsc_INST.add_attribute(*(new sc_attribute<double>("CLK_SKEW_DELAY", __scv_hold_time_RSCID_165)));

    input_serial_rsc_INST.rdy(TLS_input_serial_rsc_rdy);
    input_serial_rsc_INST.vld(TLS_input_serial_rsc_vld);
    input_serial_rsc_INST.dat(TLS_input_serial_rsc_dat);
    input_serial_rsc_INST.clk(clk);
    input_serial_rsc_INST.add_attribute(*(new sc_attribute<double>("CLK_SKEW_DELAY", __scv_hold_time_RSCID_163)));

    weight_serial_rsc_INST.rdy(TLS_weight_serial_rsc_rdy);
    weight_serial_rsc_INST.vld(TLS_weight_serial_rsc_vld);
    weight_serial_rsc_INST.dat(TLS_weight_serial_rsc_dat);
    weight_serial_rsc_INST.clk(clk);
    weight_serial_rsc_INST.add_attribute(*(new sc_attribute<double>("CLK_SKEW_DELAY", __scv_hold_time_RSCID_164)));

    transactor_paramsIn.in_fifo(TLS_in_fifo_paramsIn);
    transactor_paramsIn.in_wait_ctrl_fifo(TLS_in_wait_ctrl_fifo_paramsIn);
    transactor_paramsIn.sizecount_fifo(TLS_in_fifo_paramsIn_sizecount);
    transactor_paramsIn.bind_clk(clk, true, rst);
    transactor_paramsIn.add_attribute(*(new sc_attribute<int>("MC_TRANSACTOR_EVENT", 0 )));
    transactor_paramsIn.register_block(&paramsIn_rsc_INST, paramsIn_rsc_INST.basename(), TLS_paramsIn_rsc_trdone,
        0, 0, 1);

    transactor_output_serial.out_fifo(TLS_out_fifo_output_serial);
    transactor_output_serial.out_wait_ctrl_fifo(TLS_out_wait_ctrl_fifo_output_serial);
    transactor_output_serial.bind_clk(clk, true, rst);
    transactor_output_serial.add_attribute(*(new sc_attribute<int>("MC_TRANSACTOR_EVENT", 0 )));
    transactor_output_serial.register_block(&output_serial_rsc_INST, output_serial_rsc_INST.basename(), TLS_output_serial_rsc_trdone,
        0, 0, 1);

    transactor_input_serial.in_fifo(TLS_in_fifo_input_serial);
    transactor_input_serial.in_wait_ctrl_fifo(TLS_in_wait_ctrl_fifo_input_serial);
    transactor_input_serial.sizecount_fifo(TLS_in_fifo_input_serial_sizecount);
    transactor_input_serial.bind_clk(clk, true, rst);
    transactor_input_serial.add_attribute(*(new sc_attribute<int>("MC_TRANSACTOR_EVENT", 0 )));
    transactor_input_serial.register_block(&input_serial_rsc_INST, input_serial_rsc_INST.basename(), TLS_input_serial_rsc_trdone,
        0, 0, 1);

    transactor_weight_serial.in_fifo(TLS_in_fifo_weight_serial);
    transactor_weight_serial.in_wait_ctrl_fifo(TLS_in_wait_ctrl_fifo_weight_serial);
    transactor_weight_serial.sizecount_fifo(TLS_in_fifo_weight_serial_sizecount);
    transactor_weight_serial.bind_clk(clk, true, rst);
    transactor_weight_serial.add_attribute(*(new sc_attribute<int>("MC_TRANSACTOR_EVENT", 0 )));
    transactor_weight_serial.register_block(&weight_serial_rsc_INST, weight_serial_rsc_INST.basename(), TLS_weight_serial_rsc_trdone,
        0, 0, 1);

    testbench_INST.clk(clk);
    testbench_INST.ccs_paramsIn(TLS_in_fifo_paramsIn);
    testbench_INST.ccs_wait_ctrl_paramsIn(TLS_in_wait_ctrl_fifo_paramsIn);
    testbench_INST.ccs_sizecount_paramsIn(TLS_in_fifo_paramsIn_sizecount);
    testbench_INST.ccs_output_serial(TLS_out_fifo_output_serial);
    testbench_INST.ccs_wait_ctrl_output_serial(TLS_out_wait_ctrl_fifo_output_serial);
    testbench_INST.ccs_input_serial(TLS_in_fifo_input_serial);
    testbench_INST.ccs_wait_ctrl_input_serial(TLS_in_wait_ctrl_fifo_input_serial);
    testbench_INST.ccs_sizecount_input_serial(TLS_in_fifo_input_serial_sizecount);
    testbench_INST.ccs_weight_serial(TLS_in_fifo_weight_serial);
    testbench_INST.ccs_wait_ctrl_weight_serial(TLS_in_wait_ctrl_fifo_weight_serial);
    testbench_INST.ccs_sizecount_weight_serial(TLS_in_fifo_weight_serial_sizecount);
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

    SC_METHOD(drive_TLS_paramsIn_rsc_trdone);
      sensitive << TLS_paramsIn_rsc_rdy;
      sensitive << TLS_paramsIn_rsc_vld;
      sensitive << rst;

    SC_METHOD(drive_TLS_output_serial_rsc_trdone);
      sensitive << TLS_output_serial_rsc_vld;
      sensitive << TLS_output_serial_rsc_rdy;

    SC_METHOD(drive_TLS_input_serial_rsc_trdone);
      sensitive << TLS_input_serial_rsc_rdy;
      sensitive << TLS_input_serial_rsc_vld;
      sensitive << rst;

    SC_METHOD(drive_TLS_weight_serial_rsc_trdone);
      sensitive << TLS_weight_serial_rsc_rdy;
      sensitive << TLS_weight_serial_rsc_vld;
      sensitive << rst;

    SC_METHOD(max_sim_time_notify);
      sensitive << max_sim_time_event;
      dont_initialize();

    SC_METHOD(generate_reset);
      sensitive << generate_reset_event;
      sensitive << testbench_INST.reset_request_event;

    SC_METHOD(deadlock_watch);
      sensitive << clk;
      sensitive << OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_InputDoubleBuffer_4096_16_16_run_inst_InputDoubleBuffer_4096_16_16_run_run_inst_InputDoubleBuffer_4096_16_16_run_run_staller_inst_run_wen;
      sensitive << OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_inputDoubleBufferReader_InputDoubleBufferReader_4096_16_16_run_inst_InputDoubleBufferReader_4096_16_16_run_staller_inst_run_wen;
      sensitive << OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_inputDoubleBufferWriter_InputDoubleBufferWriter_4096_16_16_run_inst_InputDoubleBufferWriter_4096_16_16_run_staller_inst_run_wen;
      sensitive << OFS_outputSerializer_Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_inst_Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_staller_inst_run_wen;
      sensitive << OFS_paramsDeserializer_1_ParamsDeserializer_run_inst_ParamsDeserializer_run_staller_inst_run_wen;
      sensitive << OFS_systolicArray_systolicArrayCore_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_staller_inst_run_wen;
      sensitive << OFS_systolicArray_systolicArrayLooper_1_SystolicArrayLooper_run_inst_SystolicArrayLooper_run_staller_inst_run_wen;
      sensitive << OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_WeightDoubleBuffer_4096_16_16_run_inst_WeightDoubleBuffer_4096_16_16_run_run_inst_WeightDoubleBuffer_4096_16_16_run_run_staller_inst_run_wen;
      sensitive << OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferReader_WeightDoubleBufferReader_4096_16_16_run_inst_WeightDoubleBufferReader_4096_16_16_run_staller_inst_run_wen;
      sensitive << OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferWriter_WeightDoubleBufferWriter_4096_16_16_run_inst_WeightDoubleBufferWriter_4096_16_16_run_staller_inst_run_wen;
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
  paramsIn_rsc_INST.clear();
  output_serial_rsc_INST.clear();
  input_serial_rsc_INST.clear();
  weight_serial_rsc_INST.clear();
}

void scverify_top::drive_TLS_paramsIn_rsc_trdone() {
  if (rst.read()==sc_dt::Log_1) { assert(TLS_paramsIn_rsc_rdy.read()!= SC_LOGIC_1); }
  TLS_paramsIn_rsc_trdone.write(TLS_paramsIn_rsc_rdy.read() & TLS_paramsIn_rsc_vld.read() & ~rst.read());
}

void scverify_top::drive_TLS_output_serial_rsc_trdone() {
  if (rst.read()==sc_dt::Log_1) { assert(TLS_output_serial_rsc_vld.read()!= SC_LOGIC_1); }
  TLS_output_serial_rsc_trdone.write(TLS_output_serial_rsc_vld.read() & TLS_output_serial_rsc_rdy.read());
}

void scverify_top::drive_TLS_input_serial_rsc_trdone() {
  if (rst.read()==sc_dt::Log_1) { assert(TLS_input_serial_rsc_rdy.read()!= SC_LOGIC_1); }
  TLS_input_serial_rsc_trdone.write(TLS_input_serial_rsc_rdy.read() & TLS_input_serial_rsc_vld.read() & ~rst.read());
}

void scverify_top::drive_TLS_weight_serial_rsc_trdone() {
  if (rst.read()==sc_dt::Log_1) { assert(TLS_weight_serial_rsc_rdy.read()!= SC_LOGIC_1); }
  TLS_weight_serial_rsc_trdone.write(TLS_weight_serial_rsc_rdy.read() & TLS_weight_serial_rsc_vld.read() & ~rst.read());
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
    transactor_paramsIn.set_auto_wait_limit(l);
    transactor_output_serial.set_auto_wait_limit(l);
    transactor_input_serial.set_auto_wait_limit(l);
    transactor_weight_serial.set_auto_wait_limit(l);
  }
}

void scverify_top::setup_debug() {
#ifdef MC_DEFAULT_TRANSACTOR_LOG
  static int transactor_paramsIn_flags = MC_DEFAULT_TRANSACTOR_LOG;
  static int transactor_output_serial_flags = MC_DEFAULT_TRANSACTOR_LOG;
  static int transactor_input_serial_flags = MC_DEFAULT_TRANSACTOR_LOG;
  static int transactor_weight_serial_flags = MC_DEFAULT_TRANSACTOR_LOG;
#else
  static int transactor_paramsIn_flags = MC_TRANSACTOR_UNDERFLOW | MC_TRANSACTOR_WAIT;
  static int transactor_output_serial_flags = MC_TRANSACTOR_UNDERFLOW | MC_TRANSACTOR_WAIT;
  static int transactor_input_serial_flags = MC_TRANSACTOR_UNDERFLOW | MC_TRANSACTOR_WAIT;
  static int transactor_weight_serial_flags = MC_TRANSACTOR_UNDERFLOW | MC_TRANSACTOR_WAIT;
#endif
  static int transactor_paramsIn_count = -1;
  static int transactor_output_serial_count = -1;
  static int transactor_input_serial_count = -1;
  static int transactor_weight_serial_count = -1;

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
    debug("transactor_paramsIn",transactor_paramsIn_flags,transactor_paramsIn_count);
    debug("transactor_output_serial",transactor_output_serial_flags,transactor_output_serial_count);
    debug("transactor_input_serial",transactor_input_serial_flags,transactor_input_serial_count);
    debug("transactor_weight_serial",transactor_weight_serial_flags,transactor_weight_serial_count);
  }
}

void scverify_top::debug(const char* varname, int flags, int count) {
  sc_module *xlator_p = 0;
  sc_attr_base *debug_attr_p = 0;
  if (strcmp(varname,"transactor_paramsIn") == 0)
    xlator_p = &transactor_paramsIn;
  if (strcmp(varname,"transactor_output_serial") == 0)
    xlator_p = &transactor_output_serial;
  if (strcmp(varname,"transactor_input_serial") == 0)
    xlator_p = &transactor_input_serial;
  if (strcmp(varname,"transactor_weight_serial") == 0)
    xlator_p = &transactor_weight_serial;
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
      transactor_paramsIn.reset_streams();
      transactor_output_serial.reset_streams();
      transactor_input_serial.reset_streams();
      transactor_weight_serial.reset_streams();
      rst.write(SC_LOGIC_0);
    }
    activate_reset = true;
  }
}

void scverify_top::install_observe_foreign_signals() {
#if !defined(CCS_DUT_SYSC) && defined(DEADLOCK_DETECTION)
#if defined(CCS_DUT_CYCLE) || defined(CCS_DUT_RTL)
  OBSERVE_FOREIGN_SIGNAL(OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_inputDoubleBufferWriter_InputDoubleBufferWriter_4096_16_16_run_inst_InputDoubleBufferWriter_4096_16_16_run_staller_inst_run_wen,
      /scverify_top/rtl/inputDoubleBuffer/InputDoubleBuffer_4096_16_16_struct_inst/inputDoubleBufferWriter/InputDoubleBufferWriter_4096_16_16_run_inst/InputDoubleBufferWriter_4096_16_16_run_staller_inst/run_wen);
  OBSERVE_FOREIGN_SIGNAL(OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_inputDoubleBufferReader_InputDoubleBufferReader_4096_16_16_run_inst_InputDoubleBufferReader_4096_16_16_run_staller_inst_run_wen,
      /scverify_top/rtl/inputDoubleBuffer/InputDoubleBuffer_4096_16_16_struct_inst/inputDoubleBufferReader/InputDoubleBufferReader_4096_16_16_run_inst/InputDoubleBufferReader_4096_16_16_run_staller_inst/run_wen);
  OBSERVE_FOREIGN_SIGNAL(OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_InputDoubleBuffer_4096_16_16_run_inst_InputDoubleBuffer_4096_16_16_run_run_inst_InputDoubleBuffer_4096_16_16_run_run_staller_inst_run_wen,
      /scverify_top/rtl/inputDoubleBuffer/InputDoubleBuffer_4096_16_16_struct_inst/InputDoubleBuffer_4096_16_16_run_inst/InputDoubleBuffer_4096_16_16_run_run_inst/InputDoubleBuffer_4096_16_16_run_run_staller_inst/run_wen);
  OBSERVE_FOREIGN_SIGNAL(OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferWriter_WeightDoubleBufferWriter_4096_16_16_run_inst_WeightDoubleBufferWriter_4096_16_16_run_staller_inst_run_wen,
      /scverify_top/rtl/weightDoubleBuffer/WeightDoubleBuffer_4096_16_16_struct_inst/weightDoubleBufferWriter/WeightDoubleBufferWriter_4096_16_16_run_inst/WeightDoubleBufferWriter_4096_16_16_run_staller_inst/run_wen);
  OBSERVE_FOREIGN_SIGNAL(OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferReader_WeightDoubleBufferReader_4096_16_16_run_inst_WeightDoubleBufferReader_4096_16_16_run_staller_inst_run_wen,
      /scverify_top/rtl/weightDoubleBuffer/WeightDoubleBuffer_4096_16_16_struct_inst/weightDoubleBufferReader/WeightDoubleBufferReader_4096_16_16_run_inst/WeightDoubleBufferReader_4096_16_16_run_staller_inst/run_wen);
  OBSERVE_FOREIGN_SIGNAL(OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_WeightDoubleBuffer_4096_16_16_run_inst_WeightDoubleBuffer_4096_16_16_run_run_inst_WeightDoubleBuffer_4096_16_16_run_run_staller_inst_run_wen,
      /scverify_top/rtl/weightDoubleBuffer/WeightDoubleBuffer_4096_16_16_struct_inst/WeightDoubleBuffer_4096_16_16_run_inst/WeightDoubleBuffer_4096_16_16_run_run_inst/WeightDoubleBuffer_4096_16_16_run_run_staller_inst/run_wen);
  OBSERVE_FOREIGN_SIGNAL(OFS_systolicArray_systolicArrayCore_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_staller_inst_run_wen,
      /scverify_top/rtl/systolicArray/systolicArrayCore/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_staller_inst/run_wen);
  OBSERVE_FOREIGN_SIGNAL(OFS_paramsDeserializer_1_ParamsDeserializer_run_inst_ParamsDeserializer_run_staller_inst_run_wen,
      /scverify_top/rtl/paramsDeserializer_1/ParamsDeserializer_run_inst/ParamsDeserializer_run_staller_inst/run_wen);
  OBSERVE_FOREIGN_SIGNAL(OFS_outputSerializer_Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_inst_Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_staller_inst_run_wen,
      /scverify_top/rtl/outputSerializer/Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_inst/Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_staller_inst/run_wen);
  OBSERVE_FOREIGN_SIGNAL(OFS_systolicArray_systolicArrayLooper_1_SystolicArrayLooper_run_inst_SystolicArrayLooper_run_staller_inst_run_wen,
      /scverify_top/rtl/systolicArray/systolicArrayLooper_1/SystolicArrayLooper_run_inst/SystolicArrayLooper_run_staller_inst/run_wen);
  OBSERVE_FOREIGN_SIGNAL(OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_inputDoubleBufferWriter_InputDoubleBufferWriter_4096_16_16_run_inst_InputDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_inst_InputDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_irdy_run_sct,
      /scverify_top/rtl/inputDoubleBuffer/InputDoubleBuffer_4096_16_16_struct_inst/inputDoubleBufferWriter/InputDoubleBufferWriter_4096_16_16_run_inst/InputDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_inst/InputDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst/paramsIn_rsci_irdy_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_inputDoubleBufferWriter_InputDoubleBufferWriter_4096_16_16_run_inst_InputDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_inst_InputDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_ivld,
      /scverify_top/rtl/inputDoubleBuffer/InputDoubleBuffer_4096_16_16_struct_inst/inputDoubleBufferWriter/InputDoubleBufferWriter_4096_16_16_run_inst/InputDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_inst/InputDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst/paramsIn_rsci_ivld);
  OBSERVE_FOREIGN_SIGNAL(OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_inputDoubleBufferWriter_InputDoubleBufferWriter_4096_16_16_run_inst_InputDoubleBufferWriter_4096_16_16_run_din_rsci_inst_InputDoubleBufferWriter_4096_16_16_run_din_rsci_din_wait_ctrl_inst_din_rsci_irdy_run_sct,
      /scverify_top/rtl/inputDoubleBuffer/InputDoubleBuffer_4096_16_16_struct_inst/inputDoubleBufferWriter/InputDoubleBufferWriter_4096_16_16_run_inst/InputDoubleBufferWriter_4096_16_16_run_din_rsci_inst/InputDoubleBufferWriter_4096_16_16_run_din_rsci_din_wait_ctrl_inst/din_rsci_irdy_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_inputDoubleBufferWriter_InputDoubleBufferWriter_4096_16_16_run_inst_InputDoubleBufferWriter_4096_16_16_run_din_rsci_inst_InputDoubleBufferWriter_4096_16_16_run_din_rsci_din_wait_ctrl_inst_din_rsci_ivld,
      /scverify_top/rtl/inputDoubleBuffer/InputDoubleBuffer_4096_16_16_struct_inst/inputDoubleBufferWriter/InputDoubleBufferWriter_4096_16_16_run_inst/InputDoubleBufferWriter_4096_16_16_run_din_rsci_inst/InputDoubleBufferWriter_4096_16_16_run_din_rsci_din_wait_ctrl_inst/din_rsci_ivld);
  OBSERVE_FOREIGN_SIGNAL(OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_inputDoubleBufferWriter_InputDoubleBufferWriter_4096_16_16_run_inst_InputDoubleBufferWriter_4096_16_16_run_dout_rsc_rls_obj_inst_InputDoubleBufferWriter_4096_16_16_run_dout_rsc_rls_obj_dout_rsc_rls_wait_ctrl_inst_dout_rsc_rls_obj_ld_run_sct,
      /scverify_top/rtl/inputDoubleBuffer/InputDoubleBuffer_4096_16_16_struct_inst/inputDoubleBufferWriter/InputDoubleBufferWriter_4096_16_16_run_inst/InputDoubleBufferWriter_4096_16_16_run_dout_rsc_rls_obj_inst/InputDoubleBufferWriter_4096_16_16_run_dout_rsc_rls_obj_dout_rsc_rls_wait_ctrl_inst/dout_rsc_rls_obj_ld_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_inputDoubleBufferWriter_InputDoubleBufferWriter_4096_16_16_run_inst_InputDoubleBufferWriter_4096_16_16_run_dout_rsc_req_obj_inst_InputDoubleBufferWriter_4096_16_16_run_dout_rsc_req_obj_dout_rsc_req_wait_ctrl_inst_dout_rsc_req_obj_vd,
      /scverify_top/rtl/inputDoubleBuffer/InputDoubleBuffer_4096_16_16_struct_inst/inputDoubleBufferWriter/InputDoubleBufferWriter_4096_16_16_run_inst/InputDoubleBufferWriter_4096_16_16_run_dout_rsc_req_obj_inst/InputDoubleBufferWriter_4096_16_16_run_dout_rsc_req_obj_dout_rsc_req_wait_ctrl_inst/dout_rsc_req_obj_vd);
  OBSERVE_FOREIGN_SIGNAL(OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_inputDoubleBufferReader_InputDoubleBufferReader_4096_16_16_run_inst_InputDoubleBufferReader_4096_16_16_run_paramsIn_rsci_inst_InputDoubleBufferReader_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_irdy_run_sct,
      /scverify_top/rtl/inputDoubleBuffer/InputDoubleBuffer_4096_16_16_struct_inst/inputDoubleBufferReader/InputDoubleBufferReader_4096_16_16_run_inst/InputDoubleBufferReader_4096_16_16_run_paramsIn_rsci_inst/InputDoubleBufferReader_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst/paramsIn_rsci_irdy_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_inputDoubleBufferReader_InputDoubleBufferReader_4096_16_16_run_inst_InputDoubleBufferReader_4096_16_16_run_paramsIn_rsci_inst_InputDoubleBufferReader_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_ivld,
      /scverify_top/rtl/inputDoubleBuffer/InputDoubleBuffer_4096_16_16_struct_inst/inputDoubleBufferReader/InputDoubleBufferReader_4096_16_16_run_inst/InputDoubleBufferReader_4096_16_16_run_paramsIn_rsci_inst/InputDoubleBufferReader_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst/paramsIn_rsci_ivld);
  OBSERVE_FOREIGN_SIGNAL(OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_inputDoubleBufferReader_InputDoubleBufferReader_4096_16_16_run_inst_InputDoubleBufferReader_4096_16_16_run_dout_rsci_inst_InputDoubleBufferReader_4096_16_16_run_dout_rsci_dout_wait_ctrl_inst_dout_rsci_irdy,
      /scverify_top/rtl/inputDoubleBuffer/InputDoubleBuffer_4096_16_16_struct_inst/inputDoubleBufferReader/InputDoubleBufferReader_4096_16_16_run_inst/InputDoubleBufferReader_4096_16_16_run_dout_rsci_inst/InputDoubleBufferReader_4096_16_16_run_dout_rsci_dout_wait_ctrl_inst/dout_rsci_irdy);
  OBSERVE_FOREIGN_SIGNAL(OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_inputDoubleBufferReader_InputDoubleBufferReader_4096_16_16_run_inst_InputDoubleBufferReader_4096_16_16_run_dout_rsci_inst_InputDoubleBufferReader_4096_16_16_run_dout_rsci_dout_wait_ctrl_inst_dout_rsci_ivld_run_sct,
      /scverify_top/rtl/inputDoubleBuffer/InputDoubleBuffer_4096_16_16_struct_inst/inputDoubleBufferReader/InputDoubleBufferReader_4096_16_16_run_inst/InputDoubleBufferReader_4096_16_16_run_dout_rsci_inst/InputDoubleBufferReader_4096_16_16_run_dout_rsci_dout_wait_ctrl_inst/dout_rsci_ivld_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_inputDoubleBufferReader_InputDoubleBufferReader_4096_16_16_run_inst_InputDoubleBufferReader_4096_16_16_run_din_rsc_rls_obj_inst_InputDoubleBufferReader_4096_16_16_run_din_rsc_rls_obj_din_rsc_rls_wait_ctrl_inst_din_rsc_rls_obj_ld_run_sct,
      /scverify_top/rtl/inputDoubleBuffer/InputDoubleBuffer_4096_16_16_struct_inst/inputDoubleBufferReader/InputDoubleBufferReader_4096_16_16_run_inst/InputDoubleBufferReader_4096_16_16_run_din_rsc_rls_obj_inst/InputDoubleBufferReader_4096_16_16_run_din_rsc_rls_obj_din_rsc_rls_wait_ctrl_inst/din_rsc_rls_obj_ld_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_inputDoubleBufferReader_InputDoubleBufferReader_4096_16_16_run_inst_InputDoubleBufferReader_4096_16_16_run_din_rsc_req_obj_inst_InputDoubleBufferReader_4096_16_16_run_din_rsc_req_obj_din_rsc_req_wait_ctrl_inst_din_rsc_req_obj_vd,
      /scverify_top/rtl/inputDoubleBuffer/InputDoubleBuffer_4096_16_16_struct_inst/inputDoubleBufferReader/InputDoubleBufferReader_4096_16_16_run_inst/InputDoubleBufferReader_4096_16_16_run_din_rsc_req_obj_inst/InputDoubleBufferReader_4096_16_16_run_din_rsc_req_obj_din_rsc_req_wait_ctrl_inst/din_rsc_req_obj_vd);
  OBSERVE_FOREIGN_SIGNAL(OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_InputDoubleBuffer_4096_16_16_run_inst_InputDoubleBuffer_4096_16_16_run_run_inst_InputDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_inst_InputDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_irdy_run_sct,
      /scverify_top/rtl/inputDoubleBuffer/InputDoubleBuffer_4096_16_16_struct_inst/InputDoubleBuffer_4096_16_16_run_inst/InputDoubleBuffer_4096_16_16_run_run_inst/InputDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_inst/InputDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_paramsIn_wait_ctrl_inst/paramsIn_rsci_irdy_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_InputDoubleBuffer_4096_16_16_run_inst_InputDoubleBuffer_4096_16_16_run_run_inst_InputDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_inst_InputDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_ivld,
      /scverify_top/rtl/inputDoubleBuffer/InputDoubleBuffer_4096_16_16_struct_inst/InputDoubleBuffer_4096_16_16_run_inst/InputDoubleBuffer_4096_16_16_run_run_inst/InputDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_inst/InputDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_paramsIn_wait_ctrl_inst/paramsIn_rsci_ivld);
  OBSERVE_FOREIGN_SIGNAL(OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_InputDoubleBuffer_4096_16_16_run_inst_InputDoubleBuffer_4096_16_16_run_run_inst_InputDoubleBuffer_4096_16_16_run_run_inputDoubleBufferWriterParams_cnsi_inst_InputDoubleBuffer_4096_16_16_run_run_inputDoubleBufferWriterParams_cnsi_inputDoubleBufferWriterParams_wait_ctrl_inst_inputDoubleBufferWriterParams_cnsi_irdy,
      /scverify_top/rtl/inputDoubleBuffer/InputDoubleBuffer_4096_16_16_struct_inst/InputDoubleBuffer_4096_16_16_run_inst/InputDoubleBuffer_4096_16_16_run_run_inst/InputDoubleBuffer_4096_16_16_run_run_inputDoubleBufferWriterParams_cnsi_inst/InputDoubleBuffer_4096_16_16_run_run_inputDoubleBufferWriterParams_cnsi_inputDoubleBufferWriterParams_wait_ctrl_inst/inputDoubleBufferWriterParams_cnsi_irdy);
  OBSERVE_FOREIGN_SIGNAL(OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_InputDoubleBuffer_4096_16_16_run_inst_InputDoubleBuffer_4096_16_16_run_run_inst_InputDoubleBuffer_4096_16_16_run_run_inputDoubleBufferWriterParams_cnsi_inst_InputDoubleBuffer_4096_16_16_run_run_inputDoubleBufferWriterParams_cnsi_inputDoubleBufferWriterParams_wait_ctrl_inst_inputDoubleBufferWriterParams_cnsi_ivld_run_sct,
      /scverify_top/rtl/inputDoubleBuffer/InputDoubleBuffer_4096_16_16_struct_inst/InputDoubleBuffer_4096_16_16_run_inst/InputDoubleBuffer_4096_16_16_run_run_inst/InputDoubleBuffer_4096_16_16_run_run_inputDoubleBufferWriterParams_cnsi_inst/InputDoubleBuffer_4096_16_16_run_run_inputDoubleBufferWriterParams_cnsi_inputDoubleBufferWriterParams_wait_ctrl_inst/inputDoubleBufferWriterParams_cnsi_ivld_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_InputDoubleBuffer_4096_16_16_run_inst_InputDoubleBuffer_4096_16_16_run_run_inst_InputDoubleBuffer_4096_16_16_run_run_inputDoubleBufferReaderParams_cnsi_inst_InputDoubleBuffer_4096_16_16_run_run_inputDoubleBufferReaderParams_cnsi_inputDoubleBufferReaderParams_wait_ctrl_inst_inputDoubleBufferReaderParams_cnsi_irdy,
      /scverify_top/rtl/inputDoubleBuffer/InputDoubleBuffer_4096_16_16_struct_inst/InputDoubleBuffer_4096_16_16_run_inst/InputDoubleBuffer_4096_16_16_run_run_inst/InputDoubleBuffer_4096_16_16_run_run_inputDoubleBufferReaderParams_cnsi_inst/InputDoubleBuffer_4096_16_16_run_run_inputDoubleBufferReaderParams_cnsi_inputDoubleBufferReaderParams_wait_ctrl_inst/inputDoubleBufferReaderParams_cnsi_irdy);
  OBSERVE_FOREIGN_SIGNAL(OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_InputDoubleBuffer_4096_16_16_run_inst_InputDoubleBuffer_4096_16_16_run_run_inst_InputDoubleBuffer_4096_16_16_run_run_inputDoubleBufferReaderParams_cnsi_inst_InputDoubleBuffer_4096_16_16_run_run_inputDoubleBufferReaderParams_cnsi_inputDoubleBufferReaderParams_wait_ctrl_inst_inputDoubleBufferReaderParams_cnsi_ivld_run_sct,
      /scverify_top/rtl/inputDoubleBuffer/InputDoubleBuffer_4096_16_16_struct_inst/InputDoubleBuffer_4096_16_16_run_inst/InputDoubleBuffer_4096_16_16_run_run_inst/InputDoubleBuffer_4096_16_16_run_run_inputDoubleBufferReaderParams_cnsi_inst/InputDoubleBuffer_4096_16_16_run_run_inputDoubleBufferReaderParams_cnsi_inputDoubleBufferReaderParams_wait_ctrl_inst/inputDoubleBufferReaderParams_cnsi_ivld_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferWriter_WeightDoubleBufferWriter_4096_16_16_run_inst_WeightDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_inst_WeightDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_irdy_run_sct,
      /scverify_top/rtl/weightDoubleBuffer/WeightDoubleBuffer_4096_16_16_struct_inst/weightDoubleBufferWriter/WeightDoubleBufferWriter_4096_16_16_run_inst/WeightDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_inst/WeightDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst/paramsIn_rsci_irdy_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferWriter_WeightDoubleBufferWriter_4096_16_16_run_inst_WeightDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_inst_WeightDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_ivld,
      /scverify_top/rtl/weightDoubleBuffer/WeightDoubleBuffer_4096_16_16_struct_inst/weightDoubleBufferWriter/WeightDoubleBufferWriter_4096_16_16_run_inst/WeightDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_inst/WeightDoubleBufferWriter_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst/paramsIn_rsci_ivld);
  OBSERVE_FOREIGN_SIGNAL(OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferWriter_WeightDoubleBufferWriter_4096_16_16_run_inst_WeightDoubleBufferWriter_4096_16_16_run_din_rsci_inst_WeightDoubleBufferWriter_4096_16_16_run_din_rsci_din_wait_ctrl_inst_din_rsci_irdy_run_sct,
      /scverify_top/rtl/weightDoubleBuffer/WeightDoubleBuffer_4096_16_16_struct_inst/weightDoubleBufferWriter/WeightDoubleBufferWriter_4096_16_16_run_inst/WeightDoubleBufferWriter_4096_16_16_run_din_rsci_inst/WeightDoubleBufferWriter_4096_16_16_run_din_rsci_din_wait_ctrl_inst/din_rsci_irdy_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferWriter_WeightDoubleBufferWriter_4096_16_16_run_inst_WeightDoubleBufferWriter_4096_16_16_run_din_rsci_inst_WeightDoubleBufferWriter_4096_16_16_run_din_rsci_din_wait_ctrl_inst_din_rsci_ivld,
      /scverify_top/rtl/weightDoubleBuffer/WeightDoubleBuffer_4096_16_16_struct_inst/weightDoubleBufferWriter/WeightDoubleBufferWriter_4096_16_16_run_inst/WeightDoubleBufferWriter_4096_16_16_run_din_rsci_inst/WeightDoubleBufferWriter_4096_16_16_run_din_rsci_din_wait_ctrl_inst/din_rsci_ivld);
  OBSERVE_FOREIGN_SIGNAL(OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferWriter_WeightDoubleBufferWriter_4096_16_16_run_inst_WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_rls_obj_inst_WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_rls_obj_dout_rsc_rls_wait_ctrl_inst_dout_rsc_rls_obj_ld_run_sct,
      /scverify_top/rtl/weightDoubleBuffer/WeightDoubleBuffer_4096_16_16_struct_inst/weightDoubleBufferWriter/WeightDoubleBufferWriter_4096_16_16_run_inst/WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_rls_obj_inst/WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_rls_obj_dout_rsc_rls_wait_ctrl_inst/dout_rsc_rls_obj_ld_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferWriter_WeightDoubleBufferWriter_4096_16_16_run_inst_WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_req_obj_inst_WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_req_obj_dout_rsc_req_wait_ctrl_inst_dout_rsc_req_obj_vd,
      /scverify_top/rtl/weightDoubleBuffer/WeightDoubleBuffer_4096_16_16_struct_inst/weightDoubleBufferWriter/WeightDoubleBufferWriter_4096_16_16_run_inst/WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_req_obj_inst/WeightDoubleBufferWriter_4096_16_16_run_dout_rsc_req_obj_dout_rsc_req_wait_ctrl_inst/dout_rsc_req_obj_vd);
  OBSERVE_FOREIGN_SIGNAL(OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferReader_WeightDoubleBufferReader_4096_16_16_run_inst_WeightDoubleBufferReader_4096_16_16_run_paramsIn_rsci_inst_WeightDoubleBufferReader_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_irdy_run_sct,
      /scverify_top/rtl/weightDoubleBuffer/WeightDoubleBuffer_4096_16_16_struct_inst/weightDoubleBufferReader/WeightDoubleBufferReader_4096_16_16_run_inst/WeightDoubleBufferReader_4096_16_16_run_paramsIn_rsci_inst/WeightDoubleBufferReader_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst/paramsIn_rsci_irdy_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferReader_WeightDoubleBufferReader_4096_16_16_run_inst_WeightDoubleBufferReader_4096_16_16_run_paramsIn_rsci_inst_WeightDoubleBufferReader_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_ivld,
      /scverify_top/rtl/weightDoubleBuffer/WeightDoubleBuffer_4096_16_16_struct_inst/weightDoubleBufferReader/WeightDoubleBufferReader_4096_16_16_run_inst/WeightDoubleBufferReader_4096_16_16_run_paramsIn_rsci_inst/WeightDoubleBufferReader_4096_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst/paramsIn_rsci_ivld);
  OBSERVE_FOREIGN_SIGNAL(OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferReader_WeightDoubleBufferReader_4096_16_16_run_inst_WeightDoubleBufferReader_4096_16_16_run_dout_rsci_inst_WeightDoubleBufferReader_4096_16_16_run_dout_rsci_dout_wait_ctrl_inst_dout_rsci_irdy,
      /scverify_top/rtl/weightDoubleBuffer/WeightDoubleBuffer_4096_16_16_struct_inst/weightDoubleBufferReader/WeightDoubleBufferReader_4096_16_16_run_inst/WeightDoubleBufferReader_4096_16_16_run_dout_rsci_inst/WeightDoubleBufferReader_4096_16_16_run_dout_rsci_dout_wait_ctrl_inst/dout_rsci_irdy);
  OBSERVE_FOREIGN_SIGNAL(OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferReader_WeightDoubleBufferReader_4096_16_16_run_inst_WeightDoubleBufferReader_4096_16_16_run_dout_rsci_inst_WeightDoubleBufferReader_4096_16_16_run_dout_rsci_dout_wait_ctrl_inst_dout_rsci_ivld_run_sct,
      /scverify_top/rtl/weightDoubleBuffer/WeightDoubleBuffer_4096_16_16_struct_inst/weightDoubleBufferReader/WeightDoubleBufferReader_4096_16_16_run_inst/WeightDoubleBufferReader_4096_16_16_run_dout_rsci_inst/WeightDoubleBufferReader_4096_16_16_run_dout_rsci_dout_wait_ctrl_inst/dout_rsci_ivld_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferReader_WeightDoubleBufferReader_4096_16_16_run_inst_WeightDoubleBufferReader_4096_16_16_run_din_rsc_rls_obj_inst_WeightDoubleBufferReader_4096_16_16_run_din_rsc_rls_obj_din_rsc_rls_wait_ctrl_inst_din_rsc_rls_obj_ld_run_sct,
      /scverify_top/rtl/weightDoubleBuffer/WeightDoubleBuffer_4096_16_16_struct_inst/weightDoubleBufferReader/WeightDoubleBufferReader_4096_16_16_run_inst/WeightDoubleBufferReader_4096_16_16_run_din_rsc_rls_obj_inst/WeightDoubleBufferReader_4096_16_16_run_din_rsc_rls_obj_din_rsc_rls_wait_ctrl_inst/din_rsc_rls_obj_ld_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferReader_WeightDoubleBufferReader_4096_16_16_run_inst_WeightDoubleBufferReader_4096_16_16_run_din_rsc_req_obj_inst_WeightDoubleBufferReader_4096_16_16_run_din_rsc_req_obj_din_rsc_req_wait_ctrl_inst_din_rsc_req_obj_vd,
      /scverify_top/rtl/weightDoubleBuffer/WeightDoubleBuffer_4096_16_16_struct_inst/weightDoubleBufferReader/WeightDoubleBufferReader_4096_16_16_run_inst/WeightDoubleBufferReader_4096_16_16_run_din_rsc_req_obj_inst/WeightDoubleBufferReader_4096_16_16_run_din_rsc_req_obj_din_rsc_req_wait_ctrl_inst/din_rsc_req_obj_vd);
  OBSERVE_FOREIGN_SIGNAL(OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_WeightDoubleBuffer_4096_16_16_run_inst_WeightDoubleBuffer_4096_16_16_run_run_inst_WeightDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_inst_WeightDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_irdy_run_sct,
      /scverify_top/rtl/weightDoubleBuffer/WeightDoubleBuffer_4096_16_16_struct_inst/WeightDoubleBuffer_4096_16_16_run_inst/WeightDoubleBuffer_4096_16_16_run_run_inst/WeightDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_inst/WeightDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_paramsIn_wait_ctrl_inst/paramsIn_rsci_irdy_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_WeightDoubleBuffer_4096_16_16_run_inst_WeightDoubleBuffer_4096_16_16_run_run_inst_WeightDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_inst_WeightDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_ivld,
      /scverify_top/rtl/weightDoubleBuffer/WeightDoubleBuffer_4096_16_16_struct_inst/WeightDoubleBuffer_4096_16_16_run_inst/WeightDoubleBuffer_4096_16_16_run_run_inst/WeightDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_inst/WeightDoubleBuffer_4096_16_16_run_run_paramsIn_rsci_paramsIn_wait_ctrl_inst/paramsIn_rsci_ivld);
  OBSERVE_FOREIGN_SIGNAL(OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_WeightDoubleBuffer_4096_16_16_run_inst_WeightDoubleBuffer_4096_16_16_run_run_inst_WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferWriterParams_cnsi_inst_WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferWriterParams_cnsi_weightDoubleBufferWriterParams_wait_ctrl_inst_weightDoubleBufferWriterParams_cnsi_irdy,
      /scverify_top/rtl/weightDoubleBuffer/WeightDoubleBuffer_4096_16_16_struct_inst/WeightDoubleBuffer_4096_16_16_run_inst/WeightDoubleBuffer_4096_16_16_run_run_inst/WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferWriterParams_cnsi_inst/WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferWriterParams_cnsi_weightDoubleBufferWriterParams_wait_ctrl_inst/weightDoubleBufferWriterParams_cnsi_irdy);
  OBSERVE_FOREIGN_SIGNAL(OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_WeightDoubleBuffer_4096_16_16_run_inst_WeightDoubleBuffer_4096_16_16_run_run_inst_WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferWriterParams_cnsi_inst_WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferWriterParams_cnsi_weightDoubleBufferWriterParams_wait_ctrl_inst_weightDoubleBufferWriterParams_cnsi_ivld_run_sct,
      /scverify_top/rtl/weightDoubleBuffer/WeightDoubleBuffer_4096_16_16_struct_inst/WeightDoubleBuffer_4096_16_16_run_inst/WeightDoubleBuffer_4096_16_16_run_run_inst/WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferWriterParams_cnsi_inst/WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferWriterParams_cnsi_weightDoubleBufferWriterParams_wait_ctrl_inst/weightDoubleBufferWriterParams_cnsi_ivld_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_WeightDoubleBuffer_4096_16_16_run_inst_WeightDoubleBuffer_4096_16_16_run_run_inst_WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferReaderParams_cnsi_inst_WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferReaderParams_cnsi_weightDoubleBufferReaderParams_wait_ctrl_inst_weightDoubleBufferReaderParams_cnsi_irdy,
      /scverify_top/rtl/weightDoubleBuffer/WeightDoubleBuffer_4096_16_16_struct_inst/WeightDoubleBuffer_4096_16_16_run_inst/WeightDoubleBuffer_4096_16_16_run_run_inst/WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferReaderParams_cnsi_inst/WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferReaderParams_cnsi_weightDoubleBufferReaderParams_wait_ctrl_inst/weightDoubleBufferReaderParams_cnsi_irdy);
  OBSERVE_FOREIGN_SIGNAL(OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_WeightDoubleBuffer_4096_16_16_run_inst_WeightDoubleBuffer_4096_16_16_run_run_inst_WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferReaderParams_cnsi_inst_WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferReaderParams_cnsi_weightDoubleBufferReaderParams_wait_ctrl_inst_weightDoubleBufferReaderParams_cnsi_ivld_run_sct,
      /scverify_top/rtl/weightDoubleBuffer/WeightDoubleBuffer_4096_16_16_struct_inst/WeightDoubleBuffer_4096_16_16_run_inst/WeightDoubleBuffer_4096_16_16_run_run_inst/WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferReaderParams_cnsi_inst/WeightDoubleBuffer_4096_16_16_run_run_weightDoubleBufferReaderParams_cnsi_weightDoubleBufferReaderParams_wait_ctrl_inst/weightDoubleBufferReaderParams_cnsi_ivld_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_systolicArray_systolicArrayCore_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_input_rsci_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_input_rsci_input_wait_ctrl_inst_input_rsci_irdy_run_sct,
      /scverify_top/rtl/systolicArray/systolicArrayCore/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_input_rsci_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_input_rsci_input_wait_ctrl_inst/input_rsci_irdy_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_systolicArray_systolicArrayCore_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_input_rsci_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_input_rsci_input_wait_ctrl_inst_input_rsci_ivld,
      /scverify_top/rtl/systolicArray/systolicArrayCore/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_input_rsci_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_input_rsci_input_wait_ctrl_inst/input_rsci_ivld);
  OBSERVE_FOREIGN_SIGNAL(OFS_systolicArray_systolicArrayCore_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_weight_rsci_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_weight_rsci_weight_wait_ctrl_inst_weight_rsci_irdy_run_sct,
      /scverify_top/rtl/systolicArray/systolicArrayCore/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_weight_rsci_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_weight_rsci_weight_wait_ctrl_inst/weight_rsci_irdy_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_systolicArray_systolicArrayCore_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_weight_rsci_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_weight_rsci_weight_wait_ctrl_inst_weight_rsci_ivld,
      /scverify_top/rtl/systolicArray/systolicArrayCore/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_weight_rsci_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_weight_rsci_weight_wait_ctrl_inst/weight_rsci_ivld);
  OBSERVE_FOREIGN_SIGNAL(OFS_systolicArray_systolicArrayCore_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_output_rsci_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_output_rsci_output_wait_ctrl_inst_output_rsci_irdy,
      /scverify_top/rtl/systolicArray/systolicArrayCore/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_output_rsci_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_output_rsci_output_wait_ctrl_inst/output_rsci_irdy);
  OBSERVE_FOREIGN_SIGNAL(OFS_systolicArray_systolicArrayCore_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_output_rsci_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_output_rsci_output_wait_ctrl_inst_output_rsci_ivld_run_sct,
      /scverify_top/rtl/systolicArray/systolicArrayCore/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_output_rsci_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_output_rsci_output_wait_ctrl_inst/output_rsci_ivld_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_systolicArray_systolicArrayCore_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_paramsIn_rsci_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_irdy_run_sct,
      /scverify_top/rtl/systolicArray/systolicArrayCore/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_paramsIn_rsci_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst/paramsIn_rsci_irdy_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_systolicArray_systolicArrayCore_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_paramsIn_rsci_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_ivld,
      /scverify_top/rtl/systolicArray/systolicArrayCore/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_paramsIn_rsci_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_paramsIn_rsci_paramsIn_wait_ctrl_inst/paramsIn_rsci_ivld);
  OBSERVE_FOREIGN_SIGNAL(OFS_systolicArray_systolicArrayCore_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_loopIndicesIn_rsci_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_loopIndicesIn_rsci_loopIndicesIn_wait_ctrl_inst_loopIndicesIn_rsci_irdy_run_sct,
      /scverify_top/rtl/systolicArray/systolicArrayCore/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_loopIndicesIn_rsci_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_loopIndicesIn_rsci_loopIndicesIn_wait_ctrl_inst/loopIndicesIn_rsci_irdy_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_systolicArray_systolicArrayCore_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_loopIndicesIn_rsci_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_loopIndicesIn_rsci_loopIndicesIn_wait_ctrl_inst_loopIndicesIn_rsci_ivld,
      /scverify_top/rtl/systolicArray/systolicArrayCore/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_loopIndicesIn_rsci_inst/SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_loopIndicesIn_rsci_loopIndicesIn_wait_ctrl_inst/loopIndicesIn_rsci_ivld);
  OBSERVE_FOREIGN_SIGNAL(OFS_paramsDeserializer_1_ParamsDeserializer_run_inst_ParamsDeserializer_run_inputChannel_rsci_inst_ParamsDeserializer_run_inputChannel_rsci_inputChannel_wait_ctrl_inst_inputChannel_rsci_irdy_run_sct,
      /scverify_top/rtl/paramsDeserializer_1/ParamsDeserializer_run_inst/ParamsDeserializer_run_inputChannel_rsci_inst/ParamsDeserializer_run_inputChannel_rsci_inputChannel_wait_ctrl_inst/inputChannel_rsci_irdy_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_paramsDeserializer_1_ParamsDeserializer_run_inst_ParamsDeserializer_run_inputChannel_rsci_inst_ParamsDeserializer_run_inputChannel_rsci_inputChannel_wait_ctrl_inst_inputChannel_rsci_ivld,
      /scverify_top/rtl/paramsDeserializer_1/ParamsDeserializer_run_inst/ParamsDeserializer_run_inputChannel_rsci_inst/ParamsDeserializer_run_inputChannel_rsci_inputChannel_wait_ctrl_inst/inputChannel_rsci_ivld);
  OBSERVE_FOREIGN_SIGNAL(OFS_paramsDeserializer_1_ParamsDeserializer_run_inst_ParamsDeserializer_run_outputChannel1_rsci_inst_ParamsDeserializer_run_outputChannel1_rsci_outputChannel1_wait_ctrl_inst_outputChannel1_rsci_irdy,
      /scverify_top/rtl/paramsDeserializer_1/ParamsDeserializer_run_inst/ParamsDeserializer_run_outputChannel1_rsci_inst/ParamsDeserializer_run_outputChannel1_rsci_outputChannel1_wait_ctrl_inst/outputChannel1_rsci_irdy);
  OBSERVE_FOREIGN_SIGNAL(OFS_paramsDeserializer_1_ParamsDeserializer_run_inst_ParamsDeserializer_run_outputChannel1_rsci_inst_ParamsDeserializer_run_outputChannel1_rsci_outputChannel1_wait_ctrl_inst_outputChannel1_rsci_ivld_run_sct,
      /scverify_top/rtl/paramsDeserializer_1/ParamsDeserializer_run_inst/ParamsDeserializer_run_outputChannel1_rsci_inst/ParamsDeserializer_run_outputChannel1_rsci_outputChannel1_wait_ctrl_inst/outputChannel1_rsci_ivld_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_paramsDeserializer_1_ParamsDeserializer_run_inst_ParamsDeserializer_run_outputChannel2_rsci_inst_ParamsDeserializer_run_outputChannel2_rsci_outputChannel2_wait_ctrl_inst_outputChannel2_rsci_irdy,
      /scverify_top/rtl/paramsDeserializer_1/ParamsDeserializer_run_inst/ParamsDeserializer_run_outputChannel2_rsci_inst/ParamsDeserializer_run_outputChannel2_rsci_outputChannel2_wait_ctrl_inst/outputChannel2_rsci_irdy);
  OBSERVE_FOREIGN_SIGNAL(OFS_paramsDeserializer_1_ParamsDeserializer_run_inst_ParamsDeserializer_run_outputChannel2_rsci_inst_ParamsDeserializer_run_outputChannel2_rsci_outputChannel2_wait_ctrl_inst_outputChannel2_rsci_ivld_run_sct,
      /scverify_top/rtl/paramsDeserializer_1/ParamsDeserializer_run_inst/ParamsDeserializer_run_outputChannel2_rsci_inst/ParamsDeserializer_run_outputChannel2_rsci_outputChannel2_wait_ctrl_inst/outputChannel2_rsci_ivld_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_paramsDeserializer_1_ParamsDeserializer_run_inst_ParamsDeserializer_run_outputChannel3_rsci_inst_ParamsDeserializer_run_outputChannel3_rsci_outputChannel3_wait_ctrl_inst_outputChannel3_rsci_irdy,
      /scverify_top/rtl/paramsDeserializer_1/ParamsDeserializer_run_inst/ParamsDeserializer_run_outputChannel3_rsci_inst/ParamsDeserializer_run_outputChannel3_rsci_outputChannel3_wait_ctrl_inst/outputChannel3_rsci_irdy);
  OBSERVE_FOREIGN_SIGNAL(OFS_paramsDeserializer_1_ParamsDeserializer_run_inst_ParamsDeserializer_run_outputChannel3_rsci_inst_ParamsDeserializer_run_outputChannel3_rsci_outputChannel3_wait_ctrl_inst_outputChannel3_rsci_ivld_run_sct,
      /scverify_top/rtl/paramsDeserializer_1/ParamsDeserializer_run_inst/ParamsDeserializer_run_outputChannel3_rsci_inst/ParamsDeserializer_run_outputChannel3_rsci_outputChannel3_wait_ctrl_inst/outputChannel3_rsci_ivld_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_outputSerializer_Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_inst_Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_inputChannel_rsci_inst_Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_inputChannel_rsci_inputChannel_wait_ctrl_inst_inputChannel_rsci_irdy_run_sct,
      /scverify_top/rtl/outputSerializer/Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_inst/Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_inputChannel_rsci_inst/Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_inputChannel_rsci_inputChannel_wait_ctrl_inst/inputChannel_rsci_irdy_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_outputSerializer_Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_inst_Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_inputChannel_rsci_inst_Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_inputChannel_rsci_inputChannel_wait_ctrl_inst_inputChannel_rsci_ivld,
      /scverify_top/rtl/outputSerializer/Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_inst/Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_inputChannel_rsci_inst/Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_inputChannel_rsci_inputChannel_wait_ctrl_inst/inputChannel_rsci_ivld);
  OBSERVE_FOREIGN_SIGNAL(OFS_outputSerializer_Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_inst_Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_serialOutChannel_rsci_inst_Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_serialOutChannel_rsci_serialOutChannel_wait_ctrl_inst_serialOutChannel_rsci_irdy,
      /scverify_top/rtl/outputSerializer/Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_inst/Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_serialOutChannel_rsci_inst/Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_serialOutChannel_rsci_serialOutChannel_wait_ctrl_inst/serialOutChannel_rsci_irdy);
  OBSERVE_FOREIGN_SIGNAL(OFS_outputSerializer_Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_inst_Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_serialOutChannel_rsci_inst_Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_serialOutChannel_rsci_serialOutChannel_wait_ctrl_inst_serialOutChannel_rsci_ivld_run_sct,
      /scverify_top/rtl/outputSerializer/Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_inst/Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_serialOutChannel_rsci_inst/Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_serialOutChannel_rsci_serialOutChannel_wait_ctrl_inst/serialOutChannel_rsci_ivld_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_systolicArray_systolicArrayLooper_1_SystolicArrayLooper_run_inst_SystolicArrayLooper_run_paramsIn_rsci_inst_SystolicArrayLooper_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_irdy_run_sct,
      /scverify_top/rtl/systolicArray/systolicArrayLooper_1/SystolicArrayLooper_run_inst/SystolicArrayLooper_run_paramsIn_rsci_inst/SystolicArrayLooper_run_paramsIn_rsci_paramsIn_wait_ctrl_inst/paramsIn_rsci_irdy_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_systolicArray_systolicArrayLooper_1_SystolicArrayLooper_run_inst_SystolicArrayLooper_run_paramsIn_rsci_inst_SystolicArrayLooper_run_paramsIn_rsci_paramsIn_wait_ctrl_inst_paramsIn_rsci_ivld,
      /scverify_top/rtl/systolicArray/systolicArrayLooper_1/SystolicArrayLooper_run_inst/SystolicArrayLooper_run_paramsIn_rsci_inst/SystolicArrayLooper_run_paramsIn_rsci_paramsIn_wait_ctrl_inst/paramsIn_rsci_ivld);
  OBSERVE_FOREIGN_SIGNAL(OFS_systolicArray_systolicArrayLooper_1_SystolicArrayLooper_run_inst_SystolicArrayLooper_run_paramsOut_rsci_inst_SystolicArrayLooper_run_paramsOut_rsci_paramsOut_wait_ctrl_inst_paramsOut_rsci_irdy,
      /scverify_top/rtl/systolicArray/systolicArrayLooper_1/SystolicArrayLooper_run_inst/SystolicArrayLooper_run_paramsOut_rsci_inst/SystolicArrayLooper_run_paramsOut_rsci_paramsOut_wait_ctrl_inst/paramsOut_rsci_irdy);
  OBSERVE_FOREIGN_SIGNAL(OFS_systolicArray_systolicArrayLooper_1_SystolicArrayLooper_run_inst_SystolicArrayLooper_run_paramsOut_rsci_inst_SystolicArrayLooper_run_paramsOut_rsci_paramsOut_wait_ctrl_inst_paramsOut_rsci_ivld_run_sct,
      /scverify_top/rtl/systolicArray/systolicArrayLooper_1/SystolicArrayLooper_run_inst/SystolicArrayLooper_run_paramsOut_rsci_inst/SystolicArrayLooper_run_paramsOut_rsci_paramsOut_wait_ctrl_inst/paramsOut_rsci_ivld_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_systolicArray_systolicArrayLooper_1_SystolicArrayLooper_run_inst_SystolicArrayLooper_run_loopIndicesOut_rsci_inst_SystolicArrayLooper_run_loopIndicesOut_rsci_loopIndicesOut_wait_ctrl_inst_loopIndicesOut_rsci_irdy,
      /scverify_top/rtl/systolicArray/systolicArrayLooper_1/SystolicArrayLooper_run_inst/SystolicArrayLooper_run_loopIndicesOut_rsci_inst/SystolicArrayLooper_run_loopIndicesOut_rsci_loopIndicesOut_wait_ctrl_inst/loopIndicesOut_rsci_irdy);
  OBSERVE_FOREIGN_SIGNAL(OFS_systolicArray_systolicArrayLooper_1_SystolicArrayLooper_run_inst_SystolicArrayLooper_run_loopIndicesOut_rsci_inst_SystolicArrayLooper_run_loopIndicesOut_rsci_loopIndicesOut_wait_ctrl_inst_loopIndicesOut_rsci_ivld_run_sct,
      /scverify_top/rtl/systolicArray/systolicArrayLooper_1/SystolicArrayLooper_run_inst/SystolicArrayLooper_run_loopIndicesOut_rsci_inst/SystolicArrayLooper_run_loopIndicesOut_rsci_loopIndicesOut_wait_ctrl_inst/loopIndicesOut_rsci_ivld_run_sct);
  OBSERVE_FOREIGN_SIGNAL(OFS_paramsIn_rsc_vld, /scverify_top/rtl/paramsIn_rsc_vld);
  OBSERVE_FOREIGN_SIGNAL(OFS_output_serial_rsc_rdy, /scverify_top/rtl/output_serial_rsc_rdy);
  OBSERVE_FOREIGN_SIGNAL(OFS_input_serial_rsc_vld, /scverify_top/rtl/input_serial_rsc_vld);
  OBSERVE_FOREIGN_SIGNAL(OFS_weight_serial_rsc_vld, /scverify_top/rtl/weight_serial_rsc_vld);
#endif
#endif
}

void scverify_top::deadlock_watch() {
#if !defined(CCS_DUT_SYSC) && defined(DEADLOCK_DETECTION)
#if defined(CCS_DUT_CYCLE) || defined(CCS_DUT_RTL)
#if defined(MTI_SYSTEMC) || defined(NCSC) || defined(VCS_SYSTEMC)
  if (!clk) {
    if (rst == SC_LOGIC_0 &&
      (OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_InputDoubleBuffer_4096_16_16_run_inst_InputDoubleBuffer_4096_16_16_run_run_inst_InputDoubleBuffer_4096_16_16_run_run_staller_inst_run_wen.read()
          == SC_LOGIC_0)
      && (OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_inputDoubleBufferReader_InputDoubleBufferReader_4096_16_16_run_inst_InputDoubleBufferReader_4096_16_16_run_staller_inst_run_wen.read()
          == SC_LOGIC_0)
      && (OFS_inputDoubleBuffer_InputDoubleBuffer_4096_16_16_struct_inst_inputDoubleBufferWriter_InputDoubleBufferWriter_4096_16_16_run_inst_InputDoubleBufferWriter_4096_16_16_run_staller_inst_run_wen.read()
          == SC_LOGIC_0)
      && (OFS_outputSerializer_Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_inst_Serializer_PackedInt_16UL_16UL_ODTYPE_16_run_staller_inst_run_wen.read()
          == SC_LOGIC_0)
      && (OFS_paramsDeserializer_1_ParamsDeserializer_run_inst_ParamsDeserializer_run_staller_inst_run_wen.read()
          == SC_LOGIC_0)
      && (OFS_systolicArray_systolicArrayCore_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_struct_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_inst_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run_staller_inst_run_wen.read()
          == SC_LOGIC_0)
      && (OFS_systolicArray_systolicArrayLooper_1_SystolicArrayLooper_run_inst_SystolicArrayLooper_run_staller_inst_run_wen.read()
          == SC_LOGIC_0)
      && (OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_WeightDoubleBuffer_4096_16_16_run_inst_WeightDoubleBuffer_4096_16_16_run_run_inst_WeightDoubleBuffer_4096_16_16_run_run_staller_inst_run_wen.read()
          == SC_LOGIC_0)
      && (OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferReader_WeightDoubleBufferReader_4096_16_16_run_inst_WeightDoubleBufferReader_4096_16_16_run_staller_inst_run_wen.read()
          == SC_LOGIC_0)
      && (OFS_weightDoubleBuffer_WeightDoubleBuffer_4096_16_16_struct_inst_weightDoubleBufferWriter_WeightDoubleBufferWriter_4096_16_16_run_inst_WeightDoubleBufferWriter_4096_16_16_run_staller_inst_run_wen.read()
          == SC_LOGIC_0)
      && (OFS_paramsIn_rsc_vld.read() == SC_LOGIC_1)
      && (OFS_output_serial_rsc_rdy.read() == SC_LOGIC_1)
      && (OFS_input_serial_rsc_vld.read() == SC_LOGIC_1)
      && (OFS_weight_serial_rsc_vld.read() == SC_LOGIC_1)
    ) {
      deadlocked.write(SC_LOGIC_1);
      deadlock_event.notify(1355, SC_NS);
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
