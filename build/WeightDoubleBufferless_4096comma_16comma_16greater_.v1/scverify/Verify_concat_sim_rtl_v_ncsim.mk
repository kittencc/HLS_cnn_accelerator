# ----------------------------------------------------------------------------
# Concat RTL Verilog output 'concat_sim_rtl.v' vs Untimed C++
#
#    HLS version: 10.4b/841621 Production Release
#       HLS date: Thu Oct 24 17:20:07 PDT 2019
#  Flow Packages: HDL_Tcl 8.0a, SCVerify 10.4
#
#   Generated by: ctorng@caddy01
# Generated date: Sun Sep 25 20:34:15 PDT 2022
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
#   SOLUTION_DIR  /home/users/ctorng/work/cc/ee272-hw4/build/WeightDoubleBufferless_4096comma_16comma_16greater_.v1
#   WORKING_DIR   /home/users/ctorng/work/cc/ee272-hw4/build/WeightDoubleBufferless_4096comma_16comma_16greater_.v1/.

# ===================================================
# VARIABLES
# 
MGC_HOME          = /cad/mentor/2019.11/Catapult_Synthesis_10.4b-841621/Mgc_home
export MGC_HOME

WORK_DIR  = $(CURDIR)
WORK2PROJ = ../..
WORK2SOLN = .
PROJ2WORK = ./build/WeightDoubleBufferless_4096comma_16comma_16greater_.v1
PROJ2SOLN = ./build/WeightDoubleBufferless_4096comma_16comma_16greater_.v1
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
NETLIST_LEAF                = concat_sim_rtl
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
RTL_NETLIST_FNAME           = /home/users/ctorng/work/cc/ee272-hw4/build/WeightDoubleBufferless_4096comma_16comma_16greater_.v1/concat_sim_rtl.v
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
TOP_HDL_ENTITY           := WeightDoubleBuffer_4096_16_16
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
HDL_LIB_NAMES = work
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
GATE_VLOG_DEP = ./concat_sim_rtl.v/concat_sim_rtl.v.vts
endif
endif
VHDL_SRC +=  $(GATE_VHDL_DEP)
VLOG_SRC +=  $(GATE_VLOG_DEP)
else
VHDL_SRC += 
VLOG_SRC += ./concat_sim_rtl.v/concat_sim_rtl.v.vts
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
CXXFLAGS += -DCCS_SCVERIFY -DSC_INCLUDE_DYNAMIC_PROCESSES -DSC_USE_STD_STRING -DTOP_HDL_ENTITY=$(TOP_HDL_ENTITY) -DCCS_DESIGN_FUNC_WeightDoubleBuffer_4096_16_16_run -DCCS_DESIGN_TOP_$(TOP_HDL_ENTITY) -DCCS_MISMATCHED_OUTPUTS_ONLY $(F_WRAP_OPT)
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
$(TARGET)/concat_sim_rtl.v.vts: ./concat_sim_rtl.v
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
$(TARGET)/concat_sim_rtl.v.vts: HDL_LIB=work
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
$(TARGET)/concat_sim_rtl.v.vts: VLOG_F_OPTS=
$(TARGET)/concat_sim_rtl.v.vts: NCVLOG_F_OPTS=
$(TARGET)/concat_sim_rtl.v.vts: VCS_F_OPTS=
# 
# Specify top design unit for HDL source
$(TARGET)/concat_sim_rtl.v.vts: DUT_E=WeightDoubleBuffer_4096_16_16

# Specify top design unit
$(TARGET)/concat_sim_rtl.v.vts: VLOG_TOP=1

ifneq "$(RTLTOOL)" ""
# ===================================================
# Include makefile for RTL synthesis
include $(MGC_HOME)/shared/include/mkfiles/ccs_$(RTLTOOL).mk
else
# ===================================================
# Include makefile for simulator
include $(MGC_HOME)/shared/include/mkfiles/ccs_$(SIMTOOL).mk
endif

