
# Loop constraints
directive set /Fifo<IDTYPE,11>/run/run:rlp CSTEPS_FROM {{. == 0}}
directive set /Fifo<IDTYPE,11>/run/run:rlp/main CSTEPS_FROM {{. == 2} {.. == 0}}

# IO operation constraints
directive set /Fifo<IDTYPE,11>/run/run:rlp/main/input:io_read(input:rsc.@) CSTEPS_FROM {{.. == 1}}
directive set /Fifo<IDTYPE,11>/run/run:rlp/main/input_fifo_10:io_read(ccs_ccore_start:rsc.@) CSTEPS_FROM {{.. == 1}}
directive set /Fifo<IDTYPE,11>/run/run:rlp/main/SHIFT:io_write(output:rsc.@) CSTEPS_FROM {{.. == 1}}

# Sync operation constraints

# Real operation constraints
directive set /Fifo<IDTYPE,11>/run/run:rlp/main/input_fifo_10:mux#1 CSTEPS_FROM {{.. == 1}}
directive set /Fifo<IDTYPE,11>/run/run:rlp/main/input_fifo_10:mux#2 CSTEPS_FROM {{.. == 1}}
directive set /Fifo<IDTYPE,11>/run/run:rlp/main/input_fifo_10:mux#3 CSTEPS_FROM {{.. == 1}}
directive set /Fifo<IDTYPE,11>/run/run:rlp/main/input_fifo_10:mux#4 CSTEPS_FROM {{.. == 1}}
directive set /Fifo<IDTYPE,11>/run/run:rlp/main/input_fifo_10:mux#5 CSTEPS_FROM {{.. == 1}}
directive set /Fifo<IDTYPE,11>/run/run:rlp/main/input_fifo_10:mux#6 CSTEPS_FROM {{.. == 1}}
directive set /Fifo<IDTYPE,11>/run/run:rlp/main/input_fifo_10:mux#7 CSTEPS_FROM {{.. == 1}}
directive set /Fifo<IDTYPE,11>/run/run:rlp/main/input_fifo_10:mux#8 CSTEPS_FROM {{.. == 1}}
directive set /Fifo<IDTYPE,11>/run/run:rlp/main/input_fifo_10:mux#9 CSTEPS_FROM {{.. == 1}}
directive set /Fifo<IDTYPE,11>/run/run:rlp/main/input_fifo_10:mux CSTEPS_FROM {{.. == 1}}

# Probe constraints
