//  Catapult Ultra Synthesis 10.4b/841621 (Production Release) Thu Oct 24 17:20:07 PDT 2019
//  
//  Copyright (c) Mentor Graphics Corporation, 1996-2019, All Rights Reserved.
//                        UNPUBLISHED, LICENSED SOFTWARE.
//             CONFIDENTIAL AND PROPRIETARY INFORMATION WHICH IS THE
//                 PROPERTY OF MENTOR GRAPHICS OR ITS LICENSORS
//  
//  Running on Linux ctorng@caddy01 3.10.0-1160.76.1.el7.x86_64 x86_64 aol
//  
//  Package information: SIFLIBS v23.4_2.0, HLS_PKGS v23.4_2.0, 
//                       SIF_TOOLKITS v23.4_2.0, SIF_XILINX v23.4_2.0, 
//                       SIF_ALTERA v23.4_2.0, CCS_LIBS v23.4_2.0, 
//                       CDS_PPRO v10.3a_3, CDS_DesigChecker v10.4b, 
//                       CDS_OASYS v19.1_2.4, CDS_PSR v19.1_1.16, 
//                       DesignPad v2.78_1.0
//  
solution new -state initial
solution options defaults
solution options set /Architectural/DefaultRegisterThreshold 4096
solution options set /Input/TargetPlatform x86_64
solution options set /Input/SearchPath ./src
solution options set /Output/OutputVHDL false
solution options set /Output/GenerateCycleNetlist false
solution options set /Flows/NCSim/NC_ROOT /cad/cadence/INCISIVE15.20.022/
solution options set /Flows/SCVerify/USE_QUESTASIM false
solution options set /Flows/SCVerify/USE_NCSIM true
solution options set /Flows/SCVerify/USE_CCS_BLOCK true
flow package require /NCSim
solution file add ./src/Conv.cpp -type C++
solution file add ./src/ConvTb.cpp -type C++ -exclude true
directive set -PIPELINE_RAMP_UP true
directive set -CLUSTER_TYPE combinational
directive set -CLUSTER_FAST_MODE false
directive set -CLUSTER_RTL_SYN false
directive set -CLUSTER_OPT_CONSTANT_INPUTS true
directive set -CLUSTER_ADDTREE_IN_COUNT_THRESHOLD 0
directive set -CLUSTER_ADDTREE_IN_WIDTH_THRESHOLD 0
directive set -ROM_THRESHOLD 64
directive set -PROTOTYPE_ROM true
directive set -CHARACTERIZE_ROM false
directive set -OPT_CONST_MULTS use_library
directive set -CLOCK_OVERHEAD 20.000000
directive set -RESET_CLEARS_ALL_REGS use_library
directive set -START_FLAG {}
directive set -READY_FLAG {}
directive set -DONE_FLAG {}
directive set -TRANSACTION_DONE_SIGNAL true
directive set -STALL_FLAG false
directive set -IDLE_SIGNAL {}
directive set -REGISTER_IDLE_SIGNAL false
directive set -ARRAY_SIZE 1024
directive set -CHAN_IO_PROTOCOL use_library
directive set -IO_MODE super
directive set -UNROLL no
directive set -REALLOC true
directive set -MUXPATH true
directive set -TIMING_CHECKS true
directive set -ASSIGN_OVERHEAD 0
directive set -REGISTER_SHARING_LIMIT 0
directive set -REGISTER_SHARING_MAX_WIDTH_DIFFERENCE 8
directive set -SAFE_FSM false
directive set -NO_X_ASSIGNMENTS true
directive set -REG_MAX_FANOUT 0
directive set -FSM_BINARY_ENCODING_THRESHOLD 64
directive set -FSM_ENCODING none
directive set -LOGIC_OPT false
directive set -MEM_MAP_THRESHOLD 32
directive set -MERGEABLE true
directive set -SPECULATE true
directive set -DESIGN_GOAL area
go new
directive set -REGISTER_THRESHOLD 4096
go analyze
directive set -DESIGN_HIERARCHY {
    {SystolicArrayCore<IDTYPE, WDTYPE, ODTYPE, 16, 16>}
}
go compile
solution library add nangate-45nm_beh -- -rtlsyntool DesignCompiler -vendor Nangate -technology 045nm
solution library add ccs_sample_mem
solution library add {[CCORE] ProcessingElement<IDTYPE,WDTYPE,ODTYPE>.v1}
go libraries
directive set -CLOCKS {clk {-CLOCK_PERIOD 5.0 -CLOCK_EDGE rising -CLOCK_UNCERTAINTY 0.0 -CLOCK_HIGH_TIME 2.5 -RESET_SYNC_NAME rst -RESET_ASYNC_NAME arst_n -RESET_KIND async -RESET_SYNC_ACTIVE high -RESET_ASYNC_ACTIVE low -ENABLE_ACTIVE high}}
directive set /SystolicArrayCore<IDTYPE,WDTYPE,ODTYPE,16,16>/ProcessingElement<IDTYPE,WDTYPE,ODTYPE> -MAP_TO_MODULE {[CCORE] ProcessingElement<IDTYPE,WDTYPE,ODTYPE>.v1}
go assembly
directive set /SystolicArrayCore<IDTYPE,WDTYPE,ODTYPE,16,16>/run -DESIGN_GOAL latency
directive set /SystolicArrayCore<IDTYPE,WDTYPE,ODTYPE,16,16>/run -CLOCK_OVERHEAD 0.000000
directive set /SystolicArrayCore<IDTYPE,WDTYPE,ODTYPE,16,16>/run/accum_buf:rsc -INTERLEAVE 16
directive set /SystolicArrayCore<IDTYPE,WDTYPE,ODTYPE,16,16>/run/accum_buf:rsc -BLOCK_SIZE 256
directive set /SystolicArrayCore<IDTYPE,WDTYPE,ODTYPE,16,16> -REGISTER_THRESHOLD 4096
directive set /SystolicArrayCore<IDTYPE,WDTYPE,ODTYPE,16,16>/run/weight_reg_array:rsc -MAP_TO_MODULE {[Register]}
directive set /SystolicArrayCore<IDTYPE,WDTYPE,ODTYPE,16,16>/run/inputIn_reg_array:rsc -MAP_TO_MODULE {[Register]}
directive set /SystolicArrayCore<IDTYPE,WDTYPE,ODTYPE,16,16>/run/inputOut_reg_array:rsc -MAP_TO_MODULE {[Register]}
directive set /SystolicArrayCore<IDTYPE,WDTYPE,ODTYPE,16,16>/run/psumIn_reg_array:rsc -MAP_TO_MODULE {[Register]}
directive set /SystolicArrayCore<IDTYPE,WDTYPE,ODTYPE,16,16>/run/psumOut_reg_array:rsc -MAP_TO_MODULE {[Register]}
go architect
directive set /SystolicArrayCore<IDTYPE,WDTYPE,ODTYPE,16,16>/run/step:if#2:else:for:read_mem(accum_buf:rsc(0)(0).@) -IGNORE_DEPENDENCY_FROM step:if#3:for:write_mem(accum_buf:rsc(0)(0).@)
go architect