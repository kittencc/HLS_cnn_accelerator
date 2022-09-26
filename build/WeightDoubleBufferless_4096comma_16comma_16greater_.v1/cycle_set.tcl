
# Loop constraints
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp CSTEPS_FROM {{. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp/main CSTEPS_FROM {{. == 4} {.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp/main/while CSTEPS_FROM {{. == 2} {.. == 4}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp/main/while/while:while CSTEPS_FROM {{. == 4} {.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for CSTEPS_FROM {{. == 4} {.. == 3}}

# IO operation constraints
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp/main/io_read(paramsIn) CSTEPS_FROM {{.. == 0}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:io_write(dout) CSTEPS_FROM {{.. == 3}}

# Sync operation constraints

# Real operation constraints
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp/main/block_size:mul CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp/main/weight_read_bank_num:mul#2 CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp/main/weight_read_bank_num:mul#1 CSTEPS_FROM {{.. == 2}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp/main/weight_read_bank_num:mul CSTEPS_FROM {{.. == 3}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp/main/operator><32,false>:acc#1 CSTEPS_FROM {{.. == 4}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp/main/while/while:while/operator><32,false>#1:acc CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp/main/while/while:while/operator+<16,false>:acc CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp/main/while/while:while/while:while:aif:mul CSTEPS_FROM {{.. == 2}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp/main/while/while:while/operator<=<45,true>:acc CSTEPS_FROM {{.. == 3}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:while:while:for:and CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#1 CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:mux#2 CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:while:while:for:for:and#1 CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:idx:mul CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:idx:acc#3 CSTEPS_FROM {{.. == 2}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:mul#1 CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:idx:acc CSTEPS_FROM {{.. == 2}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:read_mem(din:rsc.@) CSTEPS_FROM {{.. == 2}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#13 CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#14 CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:mux#9 CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#16 CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#18 CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#19 CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#20 CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#12 CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#21 CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp/main/while/while:while/while:while:acc#1 CSTEPS_FROM {{.. == 4}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp/main/while/while:while/while:while:acc CSTEPS_FROM {{.. == 4}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferReader<4096,16,16>/run/run:rlp/main/while/operator><32,false>:acc CSTEPS_FROM {{.. == 2}}

# Probe constraints

# Loop constraints
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferWriter<4096,16,16>/run/run:rlp CSTEPS_FROM {{. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferWriter<4096,16,16>/run/run:rlp/main CSTEPS_FROM {{. == 3} {.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferWriter<4096,16,16>/run/run:rlp/main/while CSTEPS_FROM {{. == 2} {.. == 3}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferWriter<4096,16,16>/run/run:rlp/main/while/while:while CSTEPS_FROM {{. == 3} {.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferWriter<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for CSTEPS_FROM {{. == 2} {.. == 2}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferWriter<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for CSTEPS_FROM {{. == 1} {.. == 0}}

# IO operation constraints
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferWriter<4096,16,16>/run/run:rlp/main/io_read(paramsIn) CSTEPS_FROM {{.. == 0}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferWriter<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for/while:while:for:for:io_read(din) CSTEPS_FROM {{.. == 0}}

# Sync operation constraints

# Real operation constraints
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferWriter<4096,16,16>/run/run:rlp/main/block_size:mul CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferWriter<4096,16,16>/run/run:rlp/main/weight_write_bank_num:mul#2 CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferWriter<4096,16,16>/run/run:rlp/main/weight_write_bank_num:mul#1 CSTEPS_FROM {{.. == 2}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferWriter<4096,16,16>/run/run:rlp/main/weight_write_bank_num:mul CSTEPS_FROM {{.. == 3}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferWriter<4096,16,16>/run/run:rlp/main/operator><32,false>:acc#1 CSTEPS_FROM {{.. == 3}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferWriter<4096,16,16>/run/run:rlp/main/while/while:while/operator><32,false>#1:acc CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferWriter<4096,16,16>/run/run:rlp/main/while/while:while/operator+<16,false>:acc CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferWriter<4096,16,16>/run/run:rlp/main/while/while:while/while:while:aif:mul CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferWriter<4096,16,16>/run/run:rlp/main/while/while:while/operator<=<45,true>:acc CSTEPS_FROM {{.. == 2}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferWriter<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for:acc#4 CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferWriter<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for/while:while:for:for:mux CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferWriter<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for/while:while:for:for:mux#1 CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferWriter<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for/while:while:for:for:mux#2 CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferWriter<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for/while:while:for:for:mux#3 CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferWriter<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for/while:while:for:for:mux#4 CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferWriter<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for/while:while:for:for:mux#5 CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferWriter<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for/while:while:for:for:mux#6 CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferWriter<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for/while:while:for:for:mux#7 CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferWriter<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for/while:while:for:for:mux#8 CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferWriter<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for/while:while:for:for:mux#9 CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferWriter<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for/while:while:for:for:mux#10 CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferWriter<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for/while:while:for:for:mux#11 CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferWriter<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for/while:while:for:for:mux#12 CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferWriter<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for/while:while:for:for:mux#13 CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferWriter<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for/while:while:for:for:mux#14 CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferWriter<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for/while:while:for:for:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferWriter<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:mul CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferWriter<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferWriter<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:write_mem(dout:rsc.@) CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferWriter<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferWriter<4096,16,16>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:acc#5 CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferWriter<4096,16,16>/run/run:rlp/main/while/while:while/while:while:acc#1 CSTEPS_FROM {{.. == 3}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferWriter<4096,16,16>/run/run:rlp/main/while/while:while/while:while:acc CSTEPS_FROM {{.. == 3}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBufferWriter<4096,16,16>/run/run:rlp/main/while/operator><32,false>:acc CSTEPS_FROM {{.. == 2}}

# Probe constraints

# Loop constraints
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBuffer<4096,16,16>:run/run/run:rlp CSTEPS_FROM {{. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBuffer<4096,16,16>:run/run/run:rlp/main CSTEPS_FROM {{. == 2} {.. == 1}}

# IO operation constraints
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBuffer<4096,16,16>:run/run/run:rlp/main/io_read(paramsIn) CSTEPS_FROM {{.. == 0}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBuffer<4096,16,16>:run/run/run:rlp/main/io_write(weightDoubleBufferReaderParams) CSTEPS_FROM {{.. == 1}}
directive set /WeightDoubleBuffer<4096,16,16>/WeightDoubleBuffer<4096,16,16>:run/run/run:rlp/main/io_write(weightDoubleBufferWriterParams) CSTEPS_FROM {{.. == 1}}

# Sync operation constraints

# Real operation constraints

# Probe constraints
