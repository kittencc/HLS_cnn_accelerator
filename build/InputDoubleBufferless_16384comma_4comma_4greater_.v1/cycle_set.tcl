
# Loop constraints
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp CSTEPS_FROM {{. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main CSTEPS_FROM {{. == 3} {.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while CSTEPS_FROM {{. == 2} {.. == 3}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while CSTEPS_FROM {{. == 3} {.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for CSTEPS_FROM {{. == 5} {.. == 2}}

# IO operation constraints
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/io_read(paramsIn) CSTEPS_FROM {{.. == 0}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:for:for:for:io_write(dout) CSTEPS_FROM {{.. == 4}}

# Sync operation constraints

# Real operation constraints
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/operator-<16,false>:acc CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/IX0:mul CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/IX0:acc CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/operator-<16,false>#1:acc CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/IY0:mul CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/IY0:acc CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/block_size:mul#1 CSTEPS_FROM {{.. == 2}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/block_size:mul CSTEPS_FROM {{.. == 2}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/ifmap_read_bank_num:mul CSTEPS_FROM {{.. == 2}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/operator><32,false>:acc#1 CSTEPS_FROM {{.. == 3}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/operator><32,false>#1:acc CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/operator+<16,false>:acc CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:aif:mul CSTEPS_FROM {{.. == 2}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/operator<=<47,true>:acc CSTEPS_FROM {{.. == 2}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:while:while:for:and CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#1 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:mux#2 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:while:while:for:for:and#1 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:for:mux#2 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:while:while:for:for:for:and#2 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:for:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:for:for:mux#2 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:for:while:while:for:for:for:for:and#2 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:for:for:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:for:for:for:mux#2 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:for:for:while:while:for:for:for:for:for:and#2 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:for:for:for:acc#5 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:for:for:acc#1 CSTEPS_FROM {{.. == 2}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:for:for:for:ix0:mul CSTEPS_FROM {{.. == 2}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:for:for:for:idx:acc#2 CSTEPS_FROM {{.. == 2}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:for:for:for:mul#1 CSTEPS_FROM {{.. == 2}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:for:for:for:idx:acc#4 CSTEPS_FROM {{.. == 2}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:for:for:for:idx:mul#1 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:for:for:for:idx:mul CSTEPS_FROM {{.. == 2}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:for:for:for:iy0:mul CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:for:for:for:iy0:acc CSTEPS_FROM {{.. == 2}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:for:for:for:idx:mul#2 CSTEPS_FROM {{.. == 2}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:for:for:for:idx:acc#3 CSTEPS_FROM {{.. == 2}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:for:for:for:idx:acc CSTEPS_FROM {{.. == 3}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:for:for:for:read_mem(din:rsc.@) CSTEPS_FROM {{.. == 3}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:for:for:for:mux CSTEPS_FROM {{.. == 4}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:for:for:for:acc#3 CSTEPS_FROM {{.. == 2}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:for:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#39 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:while:while:for:for:mux1h CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:while:while:for:for:mux1h#3 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:while:while:for:for:mux1h#4 CSTEPS_FROM {{.. == 2}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:while:while:for:for:mux1h#5 CSTEPS_FROM {{.. == 2}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:for:for:for:mux#9 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:for:mux#15 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:mux#18 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#17 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#50 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:mux#19 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#18 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#51 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:for:mux#17 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:mux#20 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#19 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#52 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:for:mux#18 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:mux#21 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#20 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#53 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:for:mux#19 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:mux#22 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#21 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#54 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:for:for:mux#14 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:mux#24 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#23 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#56 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#24 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#57 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:mux#26 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#25 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#58 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:mux#27 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#26 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#59 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:mux#28 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#27 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#60 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:for:mux#25 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#28 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#61 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#62 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#30 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#63 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#31 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#64 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#32 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#65 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:for:mux#35 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#66 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#68 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#69 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#70 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#38 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for:mux#71 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:acc#1 CSTEPS_FROM {{.. == 3}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/while:while/while:while:acc CSTEPS_FROM {{.. == 3}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferReader<16384,4,4>/run/run:rlp/main/while/operator><32,false>:acc CSTEPS_FROM {{.. == 2}}

# Probe constraints

# Loop constraints
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp CSTEPS_FROM {{. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main CSTEPS_FROM {{. == 3} {.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/while CSTEPS_FROM {{. == 2} {.. == 3}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/while/while:while CSTEPS_FROM {{. == 3} {.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for CSTEPS_FROM {{. == 3} {.. == 2}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for CSTEPS_FROM {{. == 1} {.. == 0}}

# IO operation constraints
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/io_read(paramsIn) CSTEPS_FROM {{.. == 0}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for/while:while:for:for:io_read(din) CSTEPS_FROM {{.. == 0}}

# Sync operation constraints

# Real operation constraints
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/operator-<16,false>:acc CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/IX0:mul CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/IX0:acc CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/block_size:mul#1 CSTEPS_FROM {{.. == 3}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/operator-<16,false>#1:acc CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/IY0:mul CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/IY0:acc CSTEPS_FROM {{.. == 2}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/block_size:mul CSTEPS_FROM {{.. == 3}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/ifmap_write_bank_num:mul CSTEPS_FROM {{.. == 2}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/operator><32,false>:acc#1 CSTEPS_FROM {{.. == 3}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/while/while:while/operator><32,false>#1:acc CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/while/while:while/operator+<16,false>:acc CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/while/while:while/while:while:aif:mul CSTEPS_FROM {{.. == 2}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/while/while:while/operator<=<47,true>:acc CSTEPS_FROM {{.. == 2}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for:acc#5 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for/while:while:for:for:mux CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for/while:while:for:for:mux#1 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for/while:while:for:for:mux#2 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:for/while:while:for:for:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:mul CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:read_mem(dout:rsc.@) CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:while:while:for:mux CSTEPS_FROM {{.. == 2}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:while:while:for:mux#1 CSTEPS_FROM {{.. == 2}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:while:while:for:mux#2 CSTEPS_FROM {{.. == 2}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:while:while:for:mux#3 CSTEPS_FROM {{.. == 2}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:while:while:for:mux#4 CSTEPS_FROM {{.. == 2}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:while:while:for:mux#5 CSTEPS_FROM {{.. == 2}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:while:while:for:mux#6 CSTEPS_FROM {{.. == 2}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:while:while:for:mux#7 CSTEPS_FROM {{.. == 2}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:while:while:for:mux#8 CSTEPS_FROM {{.. == 2}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:while:while:for:mux#9 CSTEPS_FROM {{.. == 2}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:while:while:for:mux#10 CSTEPS_FROM {{.. == 2}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:while:while:for:mux#11 CSTEPS_FROM {{.. == 2}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:while:while:for:mux#12 CSTEPS_FROM {{.. == 2}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:while:while:for:mux#13 CSTEPS_FROM {{.. == 2}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:while:while:for:mux#14 CSTEPS_FROM {{.. == 2}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:while:while:for:mux#15 CSTEPS_FROM {{.. == 2}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:write_mem(dout:rsc.@) CSTEPS_FROM {{.. == 2}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/while/while:while/while:while:for/while:while:for:acc#6 CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/while/while:while/while:while:acc#1 CSTEPS_FROM {{.. == 3}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/while/while:while/while:while:acc CSTEPS_FROM {{.. == 3}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBufferWriter<16384,4,4>/run/run:rlp/main/while/operator><32,false>:acc CSTEPS_FROM {{.. == 2}}

# Probe constraints

# Loop constraints
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBuffer<16384,4,4>:run/run/run:rlp CSTEPS_FROM {{. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBuffer<16384,4,4>:run/run/run:rlp/main CSTEPS_FROM {{. == 2} {.. == 1}}

# IO operation constraints
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBuffer<16384,4,4>:run/run/run:rlp/main/io_read(paramsIn) CSTEPS_FROM {{.. == 0}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBuffer<16384,4,4>:run/run/run:rlp/main/io_write(inputDoubleBufferReaderParams) CSTEPS_FROM {{.. == 1}}
directive set /InputDoubleBuffer<16384,4,4>/InputDoubleBuffer<16384,4,4>:run/run/run:rlp/main/io_write(inputDoubleBufferWriterParams) CSTEPS_FROM {{.. == 1}}

# Sync operation constraints

# Real operation constraints

# Probe constraints
