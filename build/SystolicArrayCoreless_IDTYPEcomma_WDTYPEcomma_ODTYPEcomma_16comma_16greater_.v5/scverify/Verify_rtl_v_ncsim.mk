# ----------------------------------------------------------------------------
# RTL Verilog output 'rtl.v' vs Untimed C++
#
#    HLS version: 10.4b/841621 Production Release
#       HLS date: Thu Oct 24 17:20:07 PDT 2019
#  Flow Packages: HDL_Tcl 8.0a, SCVerify 10.4
#
#   Generated by: ctorng@caddy01
# Generated date: Sun Sep 25 22:03:29 PDT 2022
#
# ----------------------------------------------------------------------------
# ===================================================
# DEFAULT GOAL is the help target
.PHONY: all
all: help

# ===================================================
# Directories (at the time this makefile was created)
#   MGC_HOME      /cad/mentor/2019.11/Catapult_Synthesis_10.4b-841621/Mgc_home
#   PROJECT_HOME  /home/users/ctorng/work/cc/ee272-hw4
#   SOLUTION_DIR  /home/users/ctorng/work/cc/ee272-hw4/build/SystolicArrayCoreless_IDTYPEcomma_WDTYPEcomma_ODTYPEcomma_16comma_16greater_.v5
#   WORKING_DIR   /home/users/ctorng/work/cc/ee272-hw4/build/SystolicArrayCoreless_IDTYPEcomma_WDTYPEcomma_ODTYPEcomma_16comma_16greater_.v5/.

# ===================================================
# VARIABLES
# 
MGC_HOME          = /cad/mentor/2019.11/Catapult_Synthesis_10.4b-841621/Mgc_home
export MGC_HOME

WORK_DIR  = $(CURDIR)
WORK2PROJ = ../..
WORK2SOLN = .
PROJ2WORK = ./build/SystolicArrayCoreless_IDTYPEcomma_WDTYPEcomma_ODTYPEcomma_16comma_16greater_.v5
PROJ2SOLN = ./build/SystolicArrayCoreless_IDTYPEcomma_WDTYPEcomma_ODTYPEcomma_16comma_16greater_.v5
export WORK_DIR
export WORK2PROJ
export WORK2SOLN
export PROJ2WORK
export PROJ2SOLN

# Variables that can be overridden from the make command line
ifeq "$(INCL_DIRS)" ""
INCL_DIRS                   = ./scverify . ../.. ../../src
endif
export INCL_DIRS
ifeq "$(STAGE)" ""
STAGE                       = rtl
endif
export STAGE
ifeq "$(NETLIST_LEAF)" ""
NETLIST_LEAF                = rtl
endif
export NETLIST_LEAF
ifeq "$(SIMTOOL)" ""
SIMTOOL                     = ncsim
endif
export SIMTOOL
ifeq "$(NETLIST)" ""
NETLIST                     = v
endif
export NETLIST
ifeq "$(RTL_NETLIST_FNAME)" ""
RTL_NETLIST_FNAME           = /home/users/ctorng/work/cc/ee272-hw4/build/SystolicArrayCoreless_IDTYPEcomma_WDTYPEcomma_ODTYPEcomma_16comma_16greater_.v5/rtl.v
endif
export RTL_NETLIST_FNAME
ifeq "$(GATE_FNAME_BASE)" ""
GATE_FNAME_BASE             = gate.dc.v
endif
export GATE_FNAME_BASE
ifeq "$(INVOKE_ARGS)" ""
INVOKE_ARGS                 = 
endif
export INVOKE_ARGS
export SCVLIBS
TOP_HDL_ENTITY           := SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16
TOP_DU                   := scverify_top
TARGET                   := scverify/$(NETLIST_LEAF)_$(NETLIST)_$(SIMTOOL)
export TOP_HDL_ENTITY
export TARGET

ifeq ($(RECUR),)
ifeq ($(STAGE),mapped)
ifeq ($(RTLTOOL),)
   $(error This makefile requires specifying the RTLTOOL variable on the make command line)
endif
endif
endif
# ===================================================
# Include environment variables set by flow options
include ./ccs_env.mk

# ===================================================
# Include makefile for default commands and variables
include $(MGC_HOME)/shared/include/mkfiles/ccs_default_cmds.mk

SYNTHESIS_FLOWPKG := DesignCompiler
SYN_FLOW          := DesignCompiler
# ===================================================
# SOURCES
# 
# Specify list of Questa SIM libraries to create
HDL_LIB_NAMES = mgc_hls work ccs_sample_mem_lib
# ===================================================
# Simulation libraries required by loaded Catapult libraries or gate simulation
SIMLIBS_V   += 
SIMLIBS_VHD += 
# 
# Specify list of source files - MUST be ordered properly
ifeq ($(STAGE),gate)
ifeq ($(RTLTOOL),)
ifeq ($(GATE_VHDL_DEP),)
GATE_VHDL_DEP = 
endif
ifeq ($(GATE_VLOG_DEP),)
GATE_VLOG_DEP = ./rtl.v/rtl.v_38.vts
endif
endif
VHDL_SRC +=  $(GATE_VHDL_DEP)
VLOG_SRC += $(MGC_HOME)/pkgs/siflibs/ccs_in_wait_v1.v/ccs_in_wait_v1.v.vts $(MGC_HOME)/pkgs/siflibs/ccs_out_wait_v1.v/ccs_out_wait_v1.v.vts $(MGC_HOME)/pkgs/siflibs/ccs_in_v1.v/ccs_in_v1.v.vts $(MGC_HOME)/pkgs/siflibs/mgc_out_dreg_v2.v/mgc_out_dreg_v2.v.vts ../td_ccore_solutions/Fifo_ODTYPE_16__221b3917049bbc5c28349b3242b352d67c53_0/rtl.v/rtl.v.vts ../td_ccore_solutions/Fifo_ODTYPE_15__0588a2793143081c26ab62d19350374879f4_0/rtl.v/rtl.v_5.vts ../td_ccore_solutions/Fifo_ODTYPE_14__45e500b517c70224a67c6e90729192d87795_0/rtl.v/rtl.v_6.vts ../td_ccore_solutions/Fifo_ODTYPE_13__cfc4e6d714c299c88f1ea11a4aa19dcd7536_0/rtl.v/rtl.v_7.vts ../td_ccore_solutions/Fifo_ODTYPE_12__20588fe682fdeb9113d6793626c8c22872d7_0/rtl.v/rtl.v_8.vts ../td_ccore_solutions/Fifo_ODTYPE_11__917724a8fd2b9046ed510e9c8c2f6e0c7078_0/rtl.v/rtl.v_9.vts ../td_ccore_solutions/Fifo_ODTYPE_10__98cb450ab203be4fbf6a1bbccd8ea7be6e1a_0/rtl.v/rtl.v_10.vts ../td_ccore_solutions/Fifo_ODTYPE_9__59d17ff0eccb20043113c483bd4832ad6bb0_0/rtl.v/rtl.v_11.vts ../td_ccore_solutions/Fifo_ODTYPE_8__fe12db0fc7a2f935da96abaa8a4058ea6952_0/rtl.v/rtl.v_12.vts ../td_ccore_solutions/Fifo_ODTYPE_7__d003a84803bb8a29bae7687df0b778f666f4_0/rtl.v/rtl.v_13.vts ../td_ccore_solutions/Fifo_ODTYPE_6__ef9cbbb510dc9b7e23fbd9ad2a0b75166496_0/rtl.v/rtl.v_14.vts ../td_ccore_solutions/Fifo_ODTYPE_5__3e4e6554e1972e837dfae32d6649bb6d6238_0/rtl.v/rtl.v_15.vts ../td_ccore_solutions/Fifo_ODTYPE_4__156db601d575e3447c254544adc35f885fda_0/rtl.v/rtl.v_16.vts ../td_ccore_solutions/Fifo_ODTYPE_3__7b12ca58716272e54ee61060556848705d7c_0/rtl.v/rtl.v_17.vts ../td_ccore_solutions/Fifo_ODTYPE_2__d9255459d1985bba09ce948bd73b39735b1e_0/rtl.v/rtl.v_18.vts ../td_ccore_solutions/Fifo_IDTYPE_16__d38d5c3f7f7d770ed3944fd5fef6db0b7c26_0/rtl.v/rtl.v_19.vts ../td_ccore_solutions/Fifo_IDTYPE_15__a3693e6df94c682291b73c0533bd535379c8_0/rtl.v/rtl.v_20.vts ../td_ccore_solutions/Fifo_IDTYPE_14__6ed558445f9b0ba26813510e683ff2e6776a_0/rtl.v/rtl.v_21.vts ../td_ccore_solutions/Fifo_IDTYPE_13__3ab39e6656c571656f9f918808a98c90750c_0/rtl.v/rtl.v_22.vts ../td_ccore_solutions/Fifo_IDTYPE_12__41334737f9db89f3401ddbdb180284a372ae_0/rtl.v/rtl.v_23.vts ../td_ccore_solutions/Fifo_IDTYPE_11__b143065b8a794d7c3150cb2396006f267050_0/rtl.v/rtl.v_24.vts ../td_ccore_solutions/Fifo_IDTYPE_10__2ffa16ce99a732e8d71a5f721f0f2d316df3_0/rtl.v/rtl.v_25.vts ../td_ccore_solutions/Fifo_IDTYPE_9__3850d4c5a858cb636c57c5c7832e8f086b8a_0/rtl.v/rtl.v_26.vts ../td_ccore_solutions/Fifo_IDTYPE_8__088804bffe2cbc7474b0591ee11c8c42692d_0/rtl.v/rtl.v_27.vts ../td_ccore_solutions/Fifo_IDTYPE_7__219aaa96b5533f6efa14178ba0ae3f9266d0_0/rtl.v/rtl.v_28.vts ../td_ccore_solutions/Fifo_IDTYPE_6__4caa842e06e3cce2ef6eb0925cfd318a6473_0/rtl.v/rtl.v_29.vts ../td_ccore_solutions/Fifo_IDTYPE_5__74b9abe40f59f3bac195e723964a8a776216_0/rtl.v/rtl.v_30.vts ../td_ccore_solutions/Fifo_IDTYPE_4__99dd0c69a5e527ded4c3d01075afb99b5fb9_0/rtl.v/rtl.v_31.vts ../td_ccore_solutions/Fifo_IDTYPE_3__9ab5ce9495ab244439c9135630c9d9035d5c_0/rtl.v/rtl.v_32.vts ../td_ccore_solutions/Fifo_IDTYPE_2__e3a3a79fd6d2b9552fe00c731f1f97345afd_0/rtl.v/rtl.v_33.vts ../ProcessingElementless_IDTYPEcomma_WDTYPEcomma_ODTYPEgreater_.v1/rtl.v/rtl.v_34.vts ../td_ccore_solutions/Fifo_ODTYPE_1__9c4a99f532013522e5120280b322b342544e_0/rtl.v/rtl.v_35.vts ../td_ccore_solutions/Fifo_IDTYPE_1__93d204e0bede44f1c5761a5d5c8023bb542f_0/rtl.v/rtl.v_36.vts $(MGC_HOME)/pkgs/siflibs/ccs_ram_sync_1R1W.v/ccs_ram_sync_1R1W.v.vts $(GATE_VLOG_DEP)
else
VHDL_SRC += 
VLOG_SRC += $(MGC_HOME)/pkgs/siflibs/ccs_in_wait_v1.v/ccs_in_wait_v1.v.vts $(MGC_HOME)/pkgs/siflibs/ccs_out_wait_v1.v/ccs_out_wait_v1.v.vts $(MGC_HOME)/pkgs/siflibs/ccs_in_v1.v/ccs_in_v1.v.vts $(MGC_HOME)/pkgs/siflibs/mgc_out_dreg_v2.v/mgc_out_dreg_v2.v.vts ../td_ccore_solutions/Fifo_ODTYPE_16__221b3917049bbc5c28349b3242b352d67c53_0/rtl.v/rtl.v.vts ../td_ccore_solutions/Fifo_ODTYPE_15__0588a2793143081c26ab62d19350374879f4_0/rtl.v/rtl.v_5.vts ../td_ccore_solutions/Fifo_ODTYPE_14__45e500b517c70224a67c6e90729192d87795_0/rtl.v/rtl.v_6.vts ../td_ccore_solutions/Fifo_ODTYPE_13__cfc4e6d714c299c88f1ea11a4aa19dcd7536_0/rtl.v/rtl.v_7.vts ../td_ccore_solutions/Fifo_ODTYPE_12__20588fe682fdeb9113d6793626c8c22872d7_0/rtl.v/rtl.v_8.vts ../td_ccore_solutions/Fifo_ODTYPE_11__917724a8fd2b9046ed510e9c8c2f6e0c7078_0/rtl.v/rtl.v_9.vts ../td_ccore_solutions/Fifo_ODTYPE_10__98cb450ab203be4fbf6a1bbccd8ea7be6e1a_0/rtl.v/rtl.v_10.vts ../td_ccore_solutions/Fifo_ODTYPE_9__59d17ff0eccb20043113c483bd4832ad6bb0_0/rtl.v/rtl.v_11.vts ../td_ccore_solutions/Fifo_ODTYPE_8__fe12db0fc7a2f935da96abaa8a4058ea6952_0/rtl.v/rtl.v_12.vts ../td_ccore_solutions/Fifo_ODTYPE_7__d003a84803bb8a29bae7687df0b778f666f4_0/rtl.v/rtl.v_13.vts ../td_ccore_solutions/Fifo_ODTYPE_6__ef9cbbb510dc9b7e23fbd9ad2a0b75166496_0/rtl.v/rtl.v_14.vts ../td_ccore_solutions/Fifo_ODTYPE_5__3e4e6554e1972e837dfae32d6649bb6d6238_0/rtl.v/rtl.v_15.vts ../td_ccore_solutions/Fifo_ODTYPE_4__156db601d575e3447c254544adc35f885fda_0/rtl.v/rtl.v_16.vts ../td_ccore_solutions/Fifo_ODTYPE_3__7b12ca58716272e54ee61060556848705d7c_0/rtl.v/rtl.v_17.vts ../td_ccore_solutions/Fifo_ODTYPE_2__d9255459d1985bba09ce948bd73b39735b1e_0/rtl.v/rtl.v_18.vts ../td_ccore_solutions/Fifo_IDTYPE_16__d38d5c3f7f7d770ed3944fd5fef6db0b7c26_0/rtl.v/rtl.v_19.vts ../td_ccore_solutions/Fifo_IDTYPE_15__a3693e6df94c682291b73c0533bd535379c8_0/rtl.v/rtl.v_20.vts ../td_ccore_solutions/Fifo_IDTYPE_14__6ed558445f9b0ba26813510e683ff2e6776a_0/rtl.v/rtl.v_21.vts ../td_ccore_solutions/Fifo_IDTYPE_13__3ab39e6656c571656f9f918808a98c90750c_0/rtl.v/rtl.v_22.vts ../td_ccore_solutions/Fifo_IDTYPE_12__41334737f9db89f3401ddbdb180284a372ae_0/rtl.v/rtl.v_23.vts ../td_ccore_solutions/Fifo_IDTYPE_11__b143065b8a794d7c3150cb2396006f267050_0/rtl.v/rtl.v_24.vts ../td_ccore_solutions/Fifo_IDTYPE_10__2ffa16ce99a732e8d71a5f721f0f2d316df3_0/rtl.v/rtl.v_25.vts ../td_ccore_solutions/Fifo_IDTYPE_9__3850d4c5a858cb636c57c5c7832e8f086b8a_0/rtl.v/rtl.v_26.vts ../td_ccore_solutions/Fifo_IDTYPE_8__088804bffe2cbc7474b0591ee11c8c42692d_0/rtl.v/rtl.v_27.vts ../td_ccore_solutions/Fifo_IDTYPE_7__219aaa96b5533f6efa14178ba0ae3f9266d0_0/rtl.v/rtl.v_28.vts ../td_ccore_solutions/Fifo_IDTYPE_6__4caa842e06e3cce2ef6eb0925cfd318a6473_0/rtl.v/rtl.v_29.vts ../td_ccore_solutions/Fifo_IDTYPE_5__74b9abe40f59f3bac195e723964a8a776216_0/rtl.v/rtl.v_30.vts ../td_ccore_solutions/Fifo_IDTYPE_4__99dd0c69a5e527ded4c3d01075afb99b5fb9_0/rtl.v/rtl.v_31.vts ../td_ccore_solutions/Fifo_IDTYPE_3__9ab5ce9495ab244439c9135630c9d9035d5c_0/rtl.v/rtl.v_32.vts ../td_ccore_solutions/Fifo_IDTYPE_2__e3a3a79fd6d2b9552fe00c731f1f97345afd_0/rtl.v/rtl.v_33.vts ../ProcessingElementless_IDTYPEcomma_WDTYPEcomma_ODTYPEgreater_.v1/rtl.v/rtl.v_34.vts ../td_ccore_solutions/Fifo_ODTYPE_1__9c4a99f532013522e5120280b322b342544e_0/rtl.v/rtl.v_35.vts ../td_ccore_solutions/Fifo_IDTYPE_1__93d204e0bede44f1c5761a5d5c8023bb542f_0/rtl.v/rtl.v_36.vts $(MGC_HOME)/pkgs/siflibs/ccs_ram_sync_1R1W.v/ccs_ram_sync_1R1W.v.vts ./rtl.v/rtl.v_38.vts
endif
CXX_SRC  = ../../src/Conv.cpp/Conv.cpp.cxxts ../../src/ConvTb.cpp/ConvTb.cpp.cxxts ./scverify/mc_testbench.cpp/mc_testbench.cpp.cxxts ./scverify/scverify_top.cpp/scverify_top.cpp.cxxts
# Specify RTL synthesis scripts (if any)
RTL_SCRIPT = 

# Specify hold time file name (for verifying synthesized netlists)
HLD_CONSTRAINT_FNAME = top_gate_constraints.cpp

# ===================================================
# GLOBAL OPTIONS
# 
# CXXFLAGS - global C++ options (apply to all C++ compilations) except for include file search paths
CXXFLAGS += -DCCS_SCVERIFY -DSC_INCLUDE_DYNAMIC_PROCESSES -DSC_USE_STD_STRING -DTOP_HDL_ENTITY=$(TOP_HDL_ENTITY) -DCCS_DESIGN_FUNC_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run -DCCS_DESIGN_TOP_$(TOP_HDL_ENTITY) -DCCS_MISMATCHED_OUTPUTS_ONLY $(F_WRAP_OPT)
# 
# If the make command line includes a definition of the special variable MC_DEFAULT_TRANSACTOR_LOG
# then define that value for all compilations as well
ifneq "$(MC_DEFAULT_TRANSACTOR_LOG)" ""
CXXFLAGS += -DMC_DEFAULT_TRANSACTOR_LOG=$(MC_DEFAULT_TRANSACTOR_LOG)
endif
# 
# CXX_INCLUDES - include file search paths
CXX_INCLUDES = ./scverify . ../.. ../../src
# 
# TCL shell
TCLSH_CMD = /cad/mentor/2019.11/Catapult_Synthesis_10.4b-841621/Mgc_home/bin/tclsh8.5

# Pass along SCVerify_DEADLOCK_DETECTION option
ifneq "$(SCVerify_DEADLOCK_DETECTION)" "false"
CXXFLAGS += -DDEADLOCK_DETECTION
endif
# ===================================================
# PER SOURCE FILE SPECIALIZATIONS
# 
# Specify source file paths
ifeq ($(STAGE),gate)
ifneq ($(GATE_VHDL_DEP),)
$(TARGET)/$(notdir $(GATE_VHDL_DEP)): $(dir $(GATE_VHDL_DEP))
endif
ifneq ($(GATE_VLOG_DEP),)
$(TARGET)/$(notdir $(GATE_VLOG_DEP)): $(dir $(GATE_VLOG_DEP))
endif
endif
$(TARGET)/ccs_in_wait_v1.v.vts: $(MGC_HOME)/pkgs/siflibs/ccs_in_wait_v1.v
$(TARGET)/ccs_out_wait_v1.v.vts: $(MGC_HOME)/pkgs/siflibs/ccs_out_wait_v1.v
$(TARGET)/ccs_in_v1.v.vts: $(MGC_HOME)/pkgs/siflibs/ccs_in_v1.v
$(TARGET)/mgc_out_dreg_v2.v.vts: $(MGC_HOME)/pkgs/siflibs/mgc_out_dreg_v2.v
$(TARGET)/rtl.v.vts: ../td_ccore_solutions/Fifo_ODTYPE_16__221b3917049bbc5c28349b3242b352d67c53_0/rtl.v
$(TARGET)/rtl.v_5.vts: ../td_ccore_solutions/Fifo_ODTYPE_15__0588a2793143081c26ab62d19350374879f4_0/rtl.v
$(TARGET)/rtl.v_6.vts: ../td_ccore_solutions/Fifo_ODTYPE_14__45e500b517c70224a67c6e90729192d87795_0/rtl.v
$(TARGET)/rtl.v_7.vts: ../td_ccore_solutions/Fifo_ODTYPE_13__cfc4e6d714c299c88f1ea11a4aa19dcd7536_0/rtl.v
$(TARGET)/rtl.v_8.vts: ../td_ccore_solutions/Fifo_ODTYPE_12__20588fe682fdeb9113d6793626c8c22872d7_0/rtl.v
$(TARGET)/rtl.v_9.vts: ../td_ccore_solutions/Fifo_ODTYPE_11__917724a8fd2b9046ed510e9c8c2f6e0c7078_0/rtl.v
$(TARGET)/rtl.v_10.vts: ../td_ccore_solutions/Fifo_ODTYPE_10__98cb450ab203be4fbf6a1bbccd8ea7be6e1a_0/rtl.v
$(TARGET)/rtl.v_11.vts: ../td_ccore_solutions/Fifo_ODTYPE_9__59d17ff0eccb20043113c483bd4832ad6bb0_0/rtl.v
$(TARGET)/rtl.v_12.vts: ../td_ccore_solutions/Fifo_ODTYPE_8__fe12db0fc7a2f935da96abaa8a4058ea6952_0/rtl.v
$(TARGET)/rtl.v_13.vts: ../td_ccore_solutions/Fifo_ODTYPE_7__d003a84803bb8a29bae7687df0b778f666f4_0/rtl.v
$(TARGET)/rtl.v_14.vts: ../td_ccore_solutions/Fifo_ODTYPE_6__ef9cbbb510dc9b7e23fbd9ad2a0b75166496_0/rtl.v
$(TARGET)/rtl.v_15.vts: ../td_ccore_solutions/Fifo_ODTYPE_5__3e4e6554e1972e837dfae32d6649bb6d6238_0/rtl.v
$(TARGET)/rtl.v_16.vts: ../td_ccore_solutions/Fifo_ODTYPE_4__156db601d575e3447c254544adc35f885fda_0/rtl.v
$(TARGET)/rtl.v_17.vts: ../td_ccore_solutions/Fifo_ODTYPE_3__7b12ca58716272e54ee61060556848705d7c_0/rtl.v
$(TARGET)/rtl.v_18.vts: ../td_ccore_solutions/Fifo_ODTYPE_2__d9255459d1985bba09ce948bd73b39735b1e_0/rtl.v
$(TARGET)/rtl.v_19.vts: ../td_ccore_solutions/Fifo_IDTYPE_16__d38d5c3f7f7d770ed3944fd5fef6db0b7c26_0/rtl.v
$(TARGET)/rtl.v_20.vts: ../td_ccore_solutions/Fifo_IDTYPE_15__a3693e6df94c682291b73c0533bd535379c8_0/rtl.v
$(TARGET)/rtl.v_21.vts: ../td_ccore_solutions/Fifo_IDTYPE_14__6ed558445f9b0ba26813510e683ff2e6776a_0/rtl.v
$(TARGET)/rtl.v_22.vts: ../td_ccore_solutions/Fifo_IDTYPE_13__3ab39e6656c571656f9f918808a98c90750c_0/rtl.v
$(TARGET)/rtl.v_23.vts: ../td_ccore_solutions/Fifo_IDTYPE_12__41334737f9db89f3401ddbdb180284a372ae_0/rtl.v
$(TARGET)/rtl.v_24.vts: ../td_ccore_solutions/Fifo_IDTYPE_11__b143065b8a794d7c3150cb2396006f267050_0/rtl.v
$(TARGET)/rtl.v_25.vts: ../td_ccore_solutions/Fifo_IDTYPE_10__2ffa16ce99a732e8d71a5f721f0f2d316df3_0/rtl.v
$(TARGET)/rtl.v_26.vts: ../td_ccore_solutions/Fifo_IDTYPE_9__3850d4c5a858cb636c57c5c7832e8f086b8a_0/rtl.v
$(TARGET)/rtl.v_27.vts: ../td_ccore_solutions/Fifo_IDTYPE_8__088804bffe2cbc7474b0591ee11c8c42692d_0/rtl.v
$(TARGET)/rtl.v_28.vts: ../td_ccore_solutions/Fifo_IDTYPE_7__219aaa96b5533f6efa14178ba0ae3f9266d0_0/rtl.v
$(TARGET)/rtl.v_29.vts: ../td_ccore_solutions/Fifo_IDTYPE_6__4caa842e06e3cce2ef6eb0925cfd318a6473_0/rtl.v
$(TARGET)/rtl.v_30.vts: ../td_ccore_solutions/Fifo_IDTYPE_5__74b9abe40f59f3bac195e723964a8a776216_0/rtl.v
$(TARGET)/rtl.v_31.vts: ../td_ccore_solutions/Fifo_IDTYPE_4__99dd0c69a5e527ded4c3d01075afb99b5fb9_0/rtl.v
$(TARGET)/rtl.v_32.vts: ../td_ccore_solutions/Fifo_IDTYPE_3__9ab5ce9495ab244439c9135630c9d9035d5c_0/rtl.v
$(TARGET)/rtl.v_33.vts: ../td_ccore_solutions/Fifo_IDTYPE_2__e3a3a79fd6d2b9552fe00c731f1f97345afd_0/rtl.v
$(TARGET)/rtl.v_34.vts: ../ProcessingElementless_IDTYPEcomma_WDTYPEcomma_ODTYPEgreater_.v1/rtl.v
$(TARGET)/rtl.v_35.vts: ../td_ccore_solutions/Fifo_ODTYPE_1__9c4a99f532013522e5120280b322b342544e_0/rtl.v
$(TARGET)/rtl.v_36.vts: ../td_ccore_solutions/Fifo_IDTYPE_1__93d204e0bede44f1c5761a5d5c8023bb542f_0/rtl.v
$(TARGET)/ccs_ram_sync_1R1W.v.vts: $(MGC_HOME)/pkgs/siflibs/ccs_ram_sync_1R1W.v
$(TARGET)/rtl.v_38.vts: ./rtl.v
$(TARGET)/Conv.cpp.cxxts: ../../src/Conv.cpp
$(TARGET)/ConvTb.cpp.cxxts: ../../src/ConvTb.cpp
$(TARGET)/mc_testbench.cpp.cxxts: ./scverify/mc_testbench.cpp
$(TARGET)/scverify_top.cpp.cxxts: ./scverify/scverify_top.cpp
# 
# Specify additional C++ options per C++ source by setting CXX_OPTS
$(TARGET)/scverify_top.cpp.cxxts: CXX_OPTS=
$(TARGET)/mc_testbench.cpp.cxxts: CXX_OPTS=$(F_WRAP_OPT)
$(TARGET)/ConvTb.cpp.cxxts: CXX_OPTS=
$(TARGET)/Conv.cpp.cxxts: CXX_OPTS=
# 
# Specify dependencies
$(TARGET)/Conv.cpp.cxxts: .ccs_env_opts/SCVerify_USE_CCS_BLOCK.ts
$(TARGET)/ConvTb.cpp.cxxts: .ccs_env_opts/SCVerify_USE_CCS_BLOCK.ts
$(TARGET)/mc_testbench.cpp.cxxts: .ccs_env_opts/SCVerify_USE_CCS_BLOCK.ts
$(TARGET)/scverify_top.cpp.cxxts: .ccs_env_opts/SCVerify_USE_CCS_BLOCK.ts .ccs_env_opts/SCVerify_DEADLOCK_DETECTION.ts
# 
# Specify compilation library for HDL source
$(TARGET)/rtl.v_17.vts: HDL_LIB=work
$(TARGET)/rtl.v_14.vts: HDL_LIB=work
$(TARGET)/ccs_out_wait_v1.v.vts: HDL_LIB=mgc_hls
$(TARGET)/rtl.v_11.vts: HDL_LIB=work
$(TARGET)/rtl.v_28.vts: HDL_LIB=work
$(TARGET)/rtl.v_35.vts: HDL_LIB=work
$(TARGET)/rtl.v_34.vts: HDL_LIB=work
$(TARGET)/rtl.v_32.vts: HDL_LIB=work
$(TARGET)/rtl.v.vts: HDL_LIB=work
$(TARGET)/rtl.v_36.vts: HDL_LIB=work
$(TARGET)/rtl.v_29.vts: HDL_LIB=work
$(TARGET)/rtl.v_27.vts: HDL_LIB=work
$(TARGET)/rtl.v_12.vts: HDL_LIB=work
$(TARGET)/rtl.v_38.vts: HDL_LIB=work
$(TARGET)/rtl.v_33.vts: HDL_LIB=work
$(TARGET)/rtl.v_30.vts: HDL_LIB=work
$(TARGET)/rtl.v_16.vts: HDL_LIB=work
$(TARGET)/rtl.v_10.vts: HDL_LIB=work
$(TARGET)/ccs_in_v1.v.vts: HDL_LIB=mgc_hls
$(TARGET)/rtl.v_6.vts: HDL_LIB=work
$(TARGET)/rtl.v_9.vts: HDL_LIB=work
$(TARGET)/ccs_ram_sync_1R1W.v.vts: HDL_LIB=ccs_sample_mem_lib
$(TARGET)/rtl.v_20.vts: HDL_LIB=work
$(TARGET)/mgc_out_dreg_v2.v.vts: HDL_LIB=mgc_hls
$(TARGET)/rtl.v_22.vts: HDL_LIB=work
$(TARGET)/rtl.v_8.vts: HDL_LIB=work
$(TARGET)/rtl.v_24.vts: HDL_LIB=work
$(TARGET)/rtl.v_26.vts: HDL_LIB=work
$(TARGET)/rtl.v_25.vts: HDL_LIB=work
$(TARGET)/rtl.v_23.vts: HDL_LIB=work
$(TARGET)/rtl.v_7.vts: HDL_LIB=work
$(TARGET)/rtl.v_18.vts: HDL_LIB=work
$(TARGET)/rtl.v_31.vts: HDL_LIB=work
$(TARGET)/rtl.v_21.vts: HDL_LIB=work
$(TARGET)/rtl.v_19.vts: HDL_LIB=work
$(TARGET)/rtl.v_15.vts: HDL_LIB=work
$(TARGET)/rtl.v_13.vts: HDL_LIB=work
$(TARGET)/ccs_in_wait_v1.v.vts: HDL_LIB=mgc_hls
$(TARGET)/rtl.v_5.vts: HDL_LIB=work
ifeq ($(STAGE),gate)
ifneq ($(GATE_VHDL_DEP),)
$(TARGET)/$(notdir $(GATE_VHDL_DEP)): HDL_LIB=work
endif
ifneq ($(GATE_VLOG_DEP),)
$(TARGET)/$(notdir $(GATE_VLOG_DEP)): HDL_LIB=work
endif
endif
# 
# Specify additional HDL source compilation options if any
$(TARGET)/rtl.v_17.vts: VLOG_F_OPTS=
$(TARGET)/rtl.v_14.vts: VLOG_F_OPTS=
$(TARGET)/ccs_out_wait_v1.v.vts: VLOG_F_OPTS=
$(TARGET)/rtl.v_11.vts: VLOG_F_OPTS=
$(TARGET)/rtl.v_28.vts: VLOG_F_OPTS=
$(TARGET)/rtl.v_35.vts: VLOG_F_OPTS=
$(TARGET)/rtl.v_34.vts: VLOG_F_OPTS=
$(TARGET)/rtl.v_32.vts: VLOG_F_OPTS=
$(TARGET)/rtl.v.vts: VLOG_F_OPTS=
$(TARGET)/rtl.v_36.vts: VLOG_F_OPTS=
$(TARGET)/rtl.v_29.vts: VLOG_F_OPTS=
$(TARGET)/rtl.v_27.vts: VLOG_F_OPTS=
$(TARGET)/rtl.v_12.vts: VLOG_F_OPTS=
$(TARGET)/rtl.v_38.vts: VLOG_F_OPTS=
$(TARGET)/rtl.v_33.vts: VLOG_F_OPTS=
$(TARGET)/rtl.v_30.vts: VLOG_F_OPTS=
$(TARGET)/rtl.v_16.vts: VLOG_F_OPTS=
$(TARGET)/rtl.v_10.vts: VLOG_F_OPTS=
$(TARGET)/ccs_in_v1.v.vts: VLOG_F_OPTS=
$(TARGET)/rtl.v_6.vts: VLOG_F_OPTS=
$(TARGET)/rtl.v_9.vts: VLOG_F_OPTS=
$(TARGET)/ccs_ram_sync_1R1W.v.vts: VLOG_F_OPTS=
$(TARGET)/rtl.v_20.vts: VLOG_F_OPTS=
$(TARGET)/mgc_out_dreg_v2.v.vts: VLOG_F_OPTS=
$(TARGET)/rtl.v_22.vts: VLOG_F_OPTS=
$(TARGET)/rtl.v_8.vts: VLOG_F_OPTS=
$(TARGET)/rtl.v_24.vts: VLOG_F_OPTS=
$(TARGET)/rtl.v_26.vts: VLOG_F_OPTS=
$(TARGET)/rtl.v_25.vts: VLOG_F_OPTS=
$(TARGET)/rtl.v_23.vts: VLOG_F_OPTS=
$(TARGET)/rtl.v_7.vts: VLOG_F_OPTS=
$(TARGET)/rtl.v_18.vts: VLOG_F_OPTS=
$(TARGET)/rtl.v_31.vts: VLOG_F_OPTS=
$(TARGET)/rtl.v_21.vts: VLOG_F_OPTS=
$(TARGET)/rtl.v_19.vts: VLOG_F_OPTS=
$(TARGET)/rtl.v_15.vts: VLOG_F_OPTS=
$(TARGET)/rtl.v_13.vts: VLOG_F_OPTS=
$(TARGET)/ccs_in_wait_v1.v.vts: VLOG_F_OPTS=
$(TARGET)/rtl.v_5.vts: VLOG_F_OPTS=
$(TARGET)/rtl.v_17.vts: NCVLOG_F_OPTS=
$(TARGET)/rtl.v_14.vts: NCVLOG_F_OPTS=
$(TARGET)/ccs_out_wait_v1.v.vts: NCVLOG_F_OPTS=
$(TARGET)/rtl.v_11.vts: NCVLOG_F_OPTS=
$(TARGET)/rtl.v_28.vts: NCVLOG_F_OPTS=
$(TARGET)/rtl.v_35.vts: NCVLOG_F_OPTS=
$(TARGET)/rtl.v_34.vts: NCVLOG_F_OPTS=
$(TARGET)/rtl.v_32.vts: NCVLOG_F_OPTS=
$(TARGET)/rtl.v.vts: NCVLOG_F_OPTS=
$(TARGET)/rtl.v_36.vts: NCVLOG_F_OPTS=
$(TARGET)/rtl.v_29.vts: NCVLOG_F_OPTS=
$(TARGET)/rtl.v_27.vts: NCVLOG_F_OPTS=
$(TARGET)/rtl.v_12.vts: NCVLOG_F_OPTS=
$(TARGET)/rtl.v_38.vts: NCVLOG_F_OPTS=
$(TARGET)/rtl.v_33.vts: NCVLOG_F_OPTS=
$(TARGET)/rtl.v_30.vts: NCVLOG_F_OPTS=
$(TARGET)/rtl.v_16.vts: NCVLOG_F_OPTS=
$(TARGET)/rtl.v_10.vts: NCVLOG_F_OPTS=
$(TARGET)/ccs_in_v1.v.vts: NCVLOG_F_OPTS=
$(TARGET)/rtl.v_6.vts: NCVLOG_F_OPTS=
$(TARGET)/rtl.v_9.vts: NCVLOG_F_OPTS=
$(TARGET)/ccs_ram_sync_1R1W.v.vts: NCVLOG_F_OPTS=
$(TARGET)/rtl.v_20.vts: NCVLOG_F_OPTS=
$(TARGET)/mgc_out_dreg_v2.v.vts: NCVLOG_F_OPTS=
$(TARGET)/rtl.v_22.vts: NCVLOG_F_OPTS=
$(TARGET)/rtl.v_8.vts: NCVLOG_F_OPTS=
$(TARGET)/rtl.v_24.vts: NCVLOG_F_OPTS=
$(TARGET)/rtl.v_26.vts: NCVLOG_F_OPTS=
$(TARGET)/rtl.v_25.vts: NCVLOG_F_OPTS=
$(TARGET)/rtl.v_23.vts: NCVLOG_F_OPTS=
$(TARGET)/rtl.v_7.vts: NCVLOG_F_OPTS=
$(TARGET)/rtl.v_18.vts: NCVLOG_F_OPTS=
$(TARGET)/rtl.v_31.vts: NCVLOG_F_OPTS=
$(TARGET)/rtl.v_21.vts: NCVLOG_F_OPTS=
$(TARGET)/rtl.v_19.vts: NCVLOG_F_OPTS=
$(TARGET)/rtl.v_15.vts: NCVLOG_F_OPTS=
$(TARGET)/rtl.v_13.vts: NCVLOG_F_OPTS=
$(TARGET)/ccs_in_wait_v1.v.vts: NCVLOG_F_OPTS=
$(TARGET)/rtl.v_5.vts: NCVLOG_F_OPTS=
$(TARGET)/rtl.v_17.vts: VCS_F_OPTS=
$(TARGET)/rtl.v_14.vts: VCS_F_OPTS=
$(TARGET)/ccs_out_wait_v1.v.vts: VCS_F_OPTS=
$(TARGET)/rtl.v_11.vts: VCS_F_OPTS=
$(TARGET)/rtl.v_28.vts: VCS_F_OPTS=
$(TARGET)/rtl.v_35.vts: VCS_F_OPTS=
$(TARGET)/rtl.v_34.vts: VCS_F_OPTS=
$(TARGET)/rtl.v_32.vts: VCS_F_OPTS=
$(TARGET)/rtl.v.vts: VCS_F_OPTS=
$(TARGET)/rtl.v_36.vts: VCS_F_OPTS=
$(TARGET)/rtl.v_29.vts: VCS_F_OPTS=
$(TARGET)/rtl.v_27.vts: VCS_F_OPTS=
$(TARGET)/rtl.v_12.vts: VCS_F_OPTS=
$(TARGET)/rtl.v_38.vts: VCS_F_OPTS=
$(TARGET)/rtl.v_33.vts: VCS_F_OPTS=
$(TARGET)/rtl.v_30.vts: VCS_F_OPTS=
$(TARGET)/rtl.v_16.vts: VCS_F_OPTS=
$(TARGET)/rtl.v_10.vts: VCS_F_OPTS=
$(TARGET)/ccs_in_v1.v.vts: VCS_F_OPTS=
$(TARGET)/rtl.v_6.vts: VCS_F_OPTS=
$(TARGET)/rtl.v_9.vts: VCS_F_OPTS=
$(TARGET)/ccs_ram_sync_1R1W.v.vts: VCS_F_OPTS=
$(TARGET)/rtl.v_20.vts: VCS_F_OPTS=
$(TARGET)/mgc_out_dreg_v2.v.vts: VCS_F_OPTS=
$(TARGET)/rtl.v_22.vts: VCS_F_OPTS=
$(TARGET)/rtl.v_8.vts: VCS_F_OPTS=
$(TARGET)/rtl.v_24.vts: VCS_F_OPTS=
$(TARGET)/rtl.v_26.vts: VCS_F_OPTS=
$(TARGET)/rtl.v_25.vts: VCS_F_OPTS=
$(TARGET)/rtl.v_23.vts: VCS_F_OPTS=
$(TARGET)/rtl.v_7.vts: VCS_F_OPTS=
$(TARGET)/rtl.v_18.vts: VCS_F_OPTS=
$(TARGET)/rtl.v_31.vts: VCS_F_OPTS=
$(TARGET)/rtl.v_21.vts: VCS_F_OPTS=
$(TARGET)/rtl.v_19.vts: VCS_F_OPTS=
$(TARGET)/rtl.v_15.vts: VCS_F_OPTS=
$(TARGET)/rtl.v_13.vts: VCS_F_OPTS=
$(TARGET)/ccs_in_wait_v1.v.vts: VCS_F_OPTS=
$(TARGET)/rtl.v_5.vts: VCS_F_OPTS=
# 
# Specify top design unit for HDL source
$(TARGET)/rtl.v_17.vts: DUT_E=Fifo_ODTYPE_3
$(TARGET)/rtl.v_11.vts: DUT_E=Fifo_ODTYPE_9
$(TARGET)/rtl.v_14.vts: DUT_E=Fifo_ODTYPE_6
$(TARGET)/rtl.v_28.vts: DUT_E=Fifo_IDTYPE_7
$(TARGET)/rtl.v_35.vts: DUT_E=Fifo_ODTYPE_1
$(TARGET)/rtl.v_34.vts: DUT_E=ProcessingElement_IDTYPE_WDTYPE_ODTYPE
$(TARGET)/rtl.v_32.vts: DUT_E=Fifo_IDTYPE_3
$(TARGET)/rtl.v.vts: DUT_E=Fifo_ODTYPE_16
$(TARGET)/rtl.v_36.vts: DUT_E=Fifo_IDTYPE_1
$(TARGET)/rtl.v_29.vts: DUT_E=Fifo_IDTYPE_6
$(TARGET)/rtl.v_27.vts: DUT_E=Fifo_IDTYPE_8
$(TARGET)/rtl.v_12.vts: DUT_E=Fifo_ODTYPE_8
$(TARGET)/rtl.v_38.vts: DUT_E=SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16
$(TARGET)/rtl.v_33.vts: DUT_E=Fifo_IDTYPE_2
$(TARGET)/rtl.v_30.vts: DUT_E=Fifo_IDTYPE_5
$(TARGET)/rtl.v_16.vts: DUT_E=Fifo_ODTYPE_4
$(TARGET)/rtl.v_10.vts: DUT_E=Fifo_ODTYPE_10
$(TARGET)/rtl.v_6.vts: DUT_E=Fifo_ODTYPE_14
$(TARGET)/rtl.v_9.vts: DUT_E=Fifo_ODTYPE_11
$(TARGET)/rtl.v_20.vts: DUT_E=Fifo_IDTYPE_15
$(TARGET)/rtl.v_22.vts: DUT_E=Fifo_IDTYPE_13
$(TARGET)/rtl.v_8.vts: DUT_E=Fifo_ODTYPE_12
$(TARGET)/rtl.v_24.vts: DUT_E=Fifo_IDTYPE_11
$(TARGET)/rtl.v_26.vts: DUT_E=Fifo_IDTYPE_9
$(TARGET)/rtl.v_25.vts: DUT_E=Fifo_IDTYPE_10
$(TARGET)/rtl.v_23.vts: DUT_E=Fifo_IDTYPE_12
$(TARGET)/rtl.v_7.vts: DUT_E=Fifo_ODTYPE_13
$(TARGET)/rtl.v_18.vts: DUT_E=Fifo_ODTYPE_2
$(TARGET)/rtl.v_31.vts: DUT_E=Fifo_IDTYPE_4
$(TARGET)/rtl.v_21.vts: DUT_E=Fifo_IDTYPE_14
$(TARGET)/rtl.v_19.vts: DUT_E=Fifo_IDTYPE_16
$(TARGET)/rtl.v_13.vts: DUT_E=Fifo_ODTYPE_7
$(TARGET)/rtl.v_15.vts: DUT_E=Fifo_ODTYPE_5
$(TARGET)/rtl.v_5.vts: DUT_E=Fifo_ODTYPE_15

# Specify top design unit
$(TARGET)/rtl.v_38.vts: VLOG_TOP=1

ifneq "$(RTLTOOL)" ""
# ===================================================
# Include makefile for RTL synthesis
include $(MGC_HOME)/shared/include/mkfiles/ccs_$(RTLTOOL).mk
else
# ===================================================
# Include makefile for simulator
include $(MGC_HOME)/shared/include/mkfiles/ccs_$(SIMTOOL).mk
endif

