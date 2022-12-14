// ccs_block_macros.h
#include "ccs_testbench.h"

#ifndef EXCLUDE_CCS_BLOCK_INTERCEPT
#ifndef INCLUDE_CCS_BLOCK_INTERCEPT
#define INCLUDE_CCS_BLOCK_INTERCEPT
#ifdef  CCS_DESIGN_FUNC_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run
extern void mc_testbench_capture_IN( ac_channel<PackedInt<8UL, 16UL > > &input,  ac_channel<PackedInt<8UL, 16UL > > &weight,  ac_channel<PackedInt<16UL, 16UL > > &output,  ac_channel<Params > &paramsIn,  ac_channel<LoopIndices > &loopIndicesIn);
extern void mc_testbench_capture_OUT( ac_channel<PackedInt<8UL, 16UL > > &input,  ac_channel<PackedInt<8UL, 16UL > > &weight,  ac_channel<PackedInt<16UL, 16UL > > &output,  ac_channel<Params > &paramsIn,  ac_channel<LoopIndices > &loopIndicesIn);
extern void mc_testbench_wait_for_idle_sync();

//Capture DUT class template specialization
template < typename IDTYPE, typename WDTYPE, typename ODTYPE, int OC0, int IC0 >
struct ccs_class_spec {
  static void* get( void* _this ) { return NULL; }
};
template<>
struct ccs_class_spec<IDTYPE,WDTYPE,ODTYPE,16,16> {
  static void* get( void* _this ) { return _this; }
};

//Generic template class and DUT specialization
template < typename IDTYPE, typename WDTYPE, typename ODTYPE, int OC0, int IC0 >
class ccs_intercept
{
  public:
  void capture_THIS( void* _this ) {}
  void capture_IN( ac_channel<PackedInt<8UL, 16UL > > &input,ac_channel<PackedInt<8UL, 16UL > > &weight,ac_channel<PackedInt<16UL, 16UL > > &output,ac_channel<Params > &paramsIn,ac_channel<LoopIndices > &loopIndicesIn ) {}
  void capture_OUT( ac_channel<PackedInt<8UL, 16UL > > &input,ac_channel<PackedInt<8UL, 16UL > > &weight,ac_channel<PackedInt<16UL, 16UL > > &output,ac_channel<Params > &paramsIn,ac_channel<LoopIndices > &loopIndicesIn ) {}
  void wait_for_idle_sync() {}
  ccs_intercept() {}
};

template<>
class ccs_intercept<IDTYPE,WDTYPE,ODTYPE,16,16>
{
  public:
  void capture_THIS( void* _this ) {
    if ( dut == NULL ) dut = _this;
    cur_inst = _this;
    if ( capture_msg && dut != NULL && dut == cur_inst ) {
      std::cout << "SCVerify intercepting C++ function 'SystolicArrayCore<IDTYPE, WDTYPE, ODTYPE, 16, 16>::run' for RTL block 'SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16'" << std::endl;
      capture_msg = false;
    }
  }
  void capture_IN(  ac_channel<PackedInt<8UL, 16UL > > &input,  ac_channel<PackedInt<8UL, 16UL > > &weight,  ac_channel<PackedInt<16UL, 16UL > > &output,  ac_channel<Params > &paramsIn,  ac_channel<LoopIndices > &loopIndicesIn ) {
    if ( dut != NULL && dut == cur_inst )
      mc_testbench_capture_IN(input,weight,output,paramsIn,loopIndicesIn);
  }
  void capture_OUT(  ac_channel<PackedInt<8UL, 16UL > > &input,  ac_channel<PackedInt<8UL, 16UL > > &weight,  ac_channel<PackedInt<16UL, 16UL > > &output,  ac_channel<Params > &paramsIn,  ac_channel<LoopIndices > &loopIndicesIn ) {
    if ( dut != NULL && dut == cur_inst )
      mc_testbench_capture_OUT(input,weight,output,paramsIn,loopIndicesIn);
  }
  void wait_for_idle_sync() {
    if ( dut != NULL && dut == cur_inst )
      mc_testbench_wait_for_idle_sync();
  }
  ccs_intercept(): dut(NULL), cur_inst(NULL), capture_msg(true){}
  private:
  void *dut, *cur_inst;
  bool capture_msg;
};

#define ccs_intercept_run_41 \
  run(ac_channel<PackedInt<8UL, 16UL > > &input,ac_channel<PackedInt<8UL, 16UL > > &weight,ac_channel<PackedInt<16UL, 16UL > > &output,ac_channel<Params > &paramsIn,ac_channel<LoopIndices > &loopIndicesIn) {\
    static ccs_intercept<IDTYPE,WDTYPE,ODTYPE,OC0,IC0> ccs_intercept_inst;\
    void* ccs_intercept_this = this;\
    ccs_intercept_this = ccs_class_spec<IDTYPE,WDTYPE,ODTYPE,OC0,IC0>::get(ccs_intercept_this);\
    ccs_intercept_inst.capture_THIS(ccs_intercept_this);\
    ccs_intercept_inst.capture_IN(input,weight,output,paramsIn,loopIndicesIn);\
    ccs_real_run(input,weight,output,paramsIn,loopIndicesIn);\
    ccs_intercept_inst.capture_OUT(input,weight,output,paramsIn,loopIndicesIn);\
  }\
  void ccs_real_run
#else
#define ccs_intercept_run_41 run
#endif //CCS_DESIGN_FUNC_SystolicArrayCore_IDTYPE_WDTYPE_ODTYPE_16_16_run
#endif //INCLUDE_CCS_BLOCK_INTERCEPT
#endif //EXCLUDE_CCS_BLOCK_INTERCEPT

// Non-top function is passthru
#define ccs_intercept_run_19 run
// Non-top function is passthru
#define ccs_intercept_run_13 run
// iv 1336 INLINE
#define ccs_intercept_iv_1336 iv
// const 1500 INLINE
#define ccs_intercept_const_1500 const
// const 1501 INLINE
#define ccs_intercept_const_1501 const
// set_slc 1510 INLINE
#define ccs_intercept_set_slc_1510 set_slc
// const 1380 INLINE
#define ccs_intercept_const_1380 const
// iv 1325 INLINE
#define ccs_intercept_iv_1325 iv
// const 1458 INLINE
#define ccs_intercept_const_1458 const
// const 1388 INLINE
#define ccs_intercept_const_1388 const
// const 1384 INLINE
#define ccs_intercept_const_1384 const
// const 1450 INLINE
#define ccs_intercept_const_1450 const
// iv 1333 INLINE
#define ccs_intercept_iv_1333 iv
// const 1503 INLINE
#define ccs_intercept_const_1503 const
// const 1506 INLINE
#define ccs_intercept_const_1506 const
// set_slc 1513 INLINE
#define ccs_intercept_set_slc_1513 set_slc
// set_slc 1519 INLINE
#define ccs_intercept_set_slc_1519 set_slc
// const 1454 INLINE
#define ccs_intercept_const_1454 const
// mgc_floor 162 INLINE
#define ccs_intercept_mgc_floor_162 mgc_floor
// ac_assert 166 INLINE
#define ccs_intercept_ac_assert_166 ac_assert
// ldexpr32 215 INLINE
#define ccs_intercept_ldexpr32_215 ldexpr32
// ldexpr32 216 INLINE
#define ccs_intercept_ldexpr32_216 ldexpr32
// ldexpr32 217 INLINE
#define ccs_intercept_ldexpr32_217 ldexpr32
// ldexpr32 218 INLINE
#define ccs_intercept_ldexpr32_218 ldexpr32
// ldexpr32 219 INLINE
#define ccs_intercept_ldexpr32_219 ldexpr32
// iv_copy 231 INLINE
#define ccs_intercept_iv_copy_231 iv_copy
// iv_copy 234 INLINE
#define ccs_intercept_iv_copy_234 iv_copy
// iv_equal_zero 246 INLINE
#define ccs_intercept_iv_equal_zero_246 iv_equal_zero
// iv_equal_zero 247 INLINE
#define ccs_intercept_iv_equal_zero_247 iv_equal_zero
// iv_equal_zero 250 INLINE
#define ccs_intercept_iv_equal_zero_250 iv_equal_zero
// iv_equal_ones 261 INLINE
#define ccs_intercept_iv_equal_ones_261 iv_equal_ones
// iv_equal_ones 262 INLINE
#define ccs_intercept_iv_equal_ones_262 iv_equal_ones
// iv_equal_ones 265 INLINE
#define ccs_intercept_iv_equal_ones_265 iv_equal_ones
// iv_equal 284 INLINE
#define ccs_intercept_iv_equal_284 iv_equal
// iv_equal_ones_from 294 INLINE
#define ccs_intercept_iv_equal_ones_from_294 iv_equal_ones_from
// iv_equal_ones_from 297 INLINE
#define ccs_intercept_iv_equal_ones_from_297 iv_equal_ones_from
// iv_equal_zeros_from 307 INLINE
#define ccs_intercept_iv_equal_zeros_from_307 iv_equal_zeros_from
// iv_equal_zeros_from 310 INLINE
#define ccs_intercept_iv_equal_zeros_from_310 iv_equal_zeros_from
// iv_equal_ones_to 320 INLINE
#define ccs_intercept_iv_equal_ones_to_320 iv_equal_ones_to
// iv_equal_ones_to 323 INLINE
#define ccs_intercept_iv_equal_ones_to_323 iv_equal_ones_to
// iv_equal_zeros_to 333 INLINE
#define ccs_intercept_iv_equal_zeros_to_333 iv_equal_zeros_to
// iv_equal_zeros_to 336 INLINE
#define ccs_intercept_iv_equal_zeros_to_336 iv_equal_zeros_to
// iv_compare 361 INLINE
#define ccs_intercept_iv_compare_361 iv_compare
// iv_compare 364 INLINE
#define ccs_intercept_iv_compare_364 iv_compare
// iv_extend 373 INLINE
#define ccs_intercept_iv_extend_373 iv_extend
// iv_extend 374 INLINE
#define ccs_intercept_iv_extend_374 iv_extend
// iv_extend 375 INLINE
#define ccs_intercept_iv_extend_375 iv_extend
// iv_extend 376 INLINE
#define ccs_intercept_iv_extend_376 iv_extend
// iv_extend 379 INLINE
#define ccs_intercept_iv_extend_379 iv_extend
// iv_assign_int64 392 INLINE
#define ccs_intercept_iv_assign_int64_392 iv_assign_int64
// iv_assign_int64 395 INLINE
#define ccs_intercept_iv_assign_int64_395 iv_assign_int64
// iv_assign_uint64 408 INLINE
#define ccs_intercept_iv_assign_uint64_408 iv_assign_uint64
// iv_assign_uint64 411 INLINE
#define ccs_intercept_iv_assign_uint64_411 iv_assign_uint64
// mult_u_u 416 INLINE
#define ccs_intercept_mult_u_u_416 mult_u_u
// mult_u_s 419 INLINE
#define ccs_intercept_mult_u_s_419 mult_u_s
// mult_s_u 422 INLINE
#define ccs_intercept_mult_s_u_422 mult_s_u
// mult_s_s 425 INLINE
#define ccs_intercept_mult_s_s_425 mult_s_s
// accumulate 428 INLINE
#define ccs_intercept_accumulate_428 accumulate
// accumulate 432 INLINE
#define ccs_intercept_accumulate_432 accumulate
// iv_mult 492 INLINE
#define ccs_intercept_iv_mult_492 iv_mult
// iv_mult 495 INLINE
#define ccs_intercept_iv_mult_495 iv_mult
// iv_uadd_carry 509 INLINE
#define ccs_intercept_iv_uadd_carry_509 iv_uadd_carry
// iv_uadd_carry 510 INLINE
#define ccs_intercept_iv_uadd_carry_510 iv_uadd_carry
// iv_add_int_carry 537 INLINE
#define ccs_intercept_iv_add_int_carry_537 iv_add_int_carry
// iv_add_int_carry 538 INLINE
#define ccs_intercept_iv_add_int_carry_538 iv_add_int_carry
// iv_uadd_n 554 INLINE
#define ccs_intercept_iv_uadd_n_554 iv_uadd_n
// iv_uadd_n 555 INLINE
#define ccs_intercept_iv_uadd_n_555 iv_uadd_n
// iv_uadd_n 560 INLINE
#define ccs_intercept_iv_uadd_n_560 iv_uadd_n
// iv_add 586 INLINE
#define ccs_intercept_iv_add_586 iv_add
// iv_add 589 INLINE
#define ccs_intercept_iv_add_589 iv_add
// iv_sub_int_borrow 612 INLINE
#define ccs_intercept_iv_sub_int_borrow_612 iv_sub_int_borrow
// iv_sub_int_borrow 613 INLINE
#define ccs_intercept_iv_sub_int_borrow_613 iv_sub_int_borrow
// iv_sub_int_borrow 638 INLINE
#define ccs_intercept_iv_sub_int_borrow_638 iv_sub_int_borrow
// iv_sub_int_borrow 639 INLINE
#define ccs_intercept_iv_sub_int_borrow_639 iv_sub_int_borrow
// iv_usub_n 655 INLINE
#define ccs_intercept_iv_usub_n_655 iv_usub_n
// iv_usub_n 660 INLINE
#define ccs_intercept_iv_usub_n_660 iv_usub_n
// iv_sub 686 INLINE
#define ccs_intercept_iv_sub_686 iv_sub
// iv_sub 689 INLINE
#define ccs_intercept_iv_sub_689 iv_sub
// iv_all_bits_same 701 INLINE
#define ccs_intercept_iv_all_bits_same_701 iv_all_bits_same
// iv_all_bits_same 702 INLINE
#define ccs_intercept_iv_all_bits_same_702 iv_all_bits_same
// iv_bitwise_complement_n 914 INLINE
#define ccs_intercept_iv_bitwise_complement_n_914 iv_bitwise_complement_n
// iv_bitwise_complement_n 917 INLINE
#define ccs_intercept_iv_bitwise_complement_n_917 iv_bitwise_complement_n
// iv_bitwise_and_n 934 INLINE
#define ccs_intercept_iv_bitwise_and_n_934 iv_bitwise_and_n
// iv_bitwise_and_n 937 INLINE
#define ccs_intercept_iv_bitwise_and_n_937 iv_bitwise_and_n
// iv_bitwise_or_n 962 INLINE
#define ccs_intercept_iv_bitwise_or_n_962 iv_bitwise_or_n
// iv_bitwise_or_n 965 INLINE
#define ccs_intercept_iv_bitwise_or_n_965 iv_bitwise_or_n
// iv_bitwise_xor_n 990 INLINE
#define ccs_intercept_iv_bitwise_xor_n_990 iv_bitwise_xor_n
// iv_bitwise_xor_n 993 INLINE
#define ccs_intercept_iv_bitwise_xor_n_993 iv_bitwise_xor_n
// iv_shift_l2 1057 INLINE
#define ccs_intercept_iv_shift_l2_1057 iv_shift_l2
// iv_shift_l2 1060 INLINE
#define ccs_intercept_iv_shift_l2_1060 iv_shift_l2
// iv_shift_r2 1074 INLINE
#define ccs_intercept_iv_shift_r2_1074 iv_shift_r2
// iv_shift_r2 1077 INLINE
#define ccs_intercept_iv_shift_r2_1077 iv_shift_r2
// iv_const_shift_l 1114 INLINE
#define ccs_intercept_iv_const_shift_l_1114 iv_const_shift_l
// iv_const_shift_l 1117 INLINE
#define ccs_intercept_iv_const_shift_l_1117 iv_const_shift_l
// iv_const_shift_r 1145 INLINE
#define ccs_intercept_iv_const_shift_r_1145 iv_const_shift_r
// iv_const_shift_r 1148 INLINE
#define ccs_intercept_iv_const_shift_r_1148 iv_const_shift_r
// to_str 1199 INLINE
#define ccs_intercept_to_str_1199 to_str
// to_string 1253 INLINE
#define ccs_intercept_to_string_1253 to_string
// to_str 1176 INLINE
#define ccs_intercept_to_str_1176 to_str
// iv_leading_bits 1286 INLINE
#define ccs_intercept_iv_leading_bits_1286 iv_leading_bits
// iv_mult 438 INLINE
#define ccs_intercept_iv_mult_438 iv_mult
// iv_add 570 INLINE
#define ccs_intercept_iv_add_570 iv_add
// iv_add_int_carry 517 INLINE
#define ccs_intercept_iv_add_int_carry_517 iv_add_int_carry
// iv_compare 341 INLINE
#define ccs_intercept_iv_compare_341 iv_compare
// iv_sub_int_borrow 594 INLINE
#define ccs_intercept_iv_sub_int_borrow_594 iv_sub_int_borrow
// iv_assign_int64 385 INLINE
#define ccs_intercept_iv_assign_int64_385 iv_assign_int64
// iv_equal 270 INLINE
#define ccs_intercept_iv_equal_270 iv_equal
// value 2969 INLINE
#define ccs_intercept_value_2969 value
// value 2970 INLINE
#define ccs_intercept_value_2970 value
// value 2971 INLINE
#define ccs_intercept_value_2971 value
// value 2972 INLINE
#define ccs_intercept_value_2972 value
// value 2973 INLINE
#define ccs_intercept_value_2973 value
// value 2974 INLINE
#define ccs_intercept_value_2974 value
// value 2975 INLINE
#define ccs_intercept_value_2975 value
// value 2976 INLINE
#define ccs_intercept_value_2976 value
// value 2977 INLINE
#define ccs_intercept_value_2977 value
// value 2978 INLINE
#define ccs_intercept_value_2978 value
// value 2979 INLINE
#define ccs_intercept_value_2979 value
// value 2980 INLINE
#define ccs_intercept_value_2980 value
// ac_exception 74 INLINE
#define ccs_intercept_ac_exception_74 ac_exception
// msg 89 INLINE
#define ccs_intercept_msg_89 msg
// Serializer 12 MODULE
#define ccs_intercept_Serializer_12 Serializer
// run 20 MODULE
#define ccs_intercept_run_20 run
// ParamsDeserializer 34 MODULE
#define ccs_intercept_ParamsDeserializer_34 ParamsDeserializer
// run 39 MODULE
#define ccs_intercept_run_39 run
// InputDoubleBufferWriter 12 MODULE
#define ccs_intercept_InputDoubleBufferWriter_12 InputDoubleBufferWriter
// run 17 MODULE
#define ccs_intercept_run_17 run
// InputDoubleBufferReader 93 MODULE
#define ccs_intercept_InputDoubleBufferReader_93 InputDoubleBufferReader
// run 98 MODULE
#define ccs_intercept_run_98 run
// InputDoubleBuffer 176 MODULE
#define ccs_intercept_InputDoubleBuffer_176 InputDoubleBuffer
// run 183 MODULE
#define ccs_intercept_run_183 run
// WeightDoubleBufferWriter 13 MODULE
#define ccs_intercept_WeightDoubleBufferWriter_13 WeightDoubleBufferWriter
// run 18 MODULE
#define ccs_intercept_run_18 run
// WeightDoubleBufferReader 88 MODULE
#define ccs_intercept_WeightDoubleBufferReader_88 WeightDoubleBufferReader
// run 93 MODULE
#define ccs_intercept_run_93 run
// WeightDoubleBuffer 157 MODULE
#define ccs_intercept_WeightDoubleBuffer_157 WeightDoubleBuffer
// run 162 MODULE
#define ccs_intercept_run_162 run
// ProcessingElement 14 MODULE
#define ccs_intercept_ProcessingElement_14 ProcessingElement
// Fifo 8 MODULE
#define ccs_intercept_Fifo_8 Fifo
// SystolicArrayCore 34 MODULE
#define ccs_intercept_SystolicArrayCore_34 SystolicArrayCore
// SystolicArrayLooper 12 MODULE
#define ccs_intercept_SystolicArrayLooper_12 SystolicArrayLooper
// SystolicArrayWrapper 60 MODULE
#define ccs_intercept_SystolicArrayWrapper_60 SystolicArrayWrapper
// run 67 MODULE
#define ccs_intercept_run_67 run
// Conv 28 MODULE
#define ccs_intercept_Conv_28 Conv
// run 35 MODULE
#define ccs_intercept_run_35 run
