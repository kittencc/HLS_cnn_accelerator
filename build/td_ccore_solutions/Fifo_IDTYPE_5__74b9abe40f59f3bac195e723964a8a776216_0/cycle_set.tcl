
# Loop constraints
directive set /Fifo<IDTYPE,5>/run/run:rlp CSTEPS_FROM {{. == 0}}
directive set /Fifo<IDTYPE,5>/run/run:rlp/main CSTEPS_FROM {{. == 2} {.. == 0}}

# IO operation constraints
directive set /Fifo<IDTYPE,5>/run/run:rlp/main/input:io_read(input:rsc.@) CSTEPS_FROM {{.. == 1}}
directive set /Fifo<IDTYPE,5>/run/run:rlp/main/input_fifo_4:io_read(ccs_ccore_start:rsc.@) CSTEPS_FROM {{.. == 1}}
directive set /Fifo<IDTYPE,5>/run/run:rlp/main/SHIFT:io_write(output:rsc.@) CSTEPS_FROM {{.. == 1}}

# Sync operation constraints

# Real operation constraints
directive set /Fifo<IDTYPE,5>/run/run:rlp/main/input_fifo_4:mux#1 CSTEPS_FROM {{.. == 1}}
directive set /Fifo<IDTYPE,5>/run/run:rlp/main/input_fifo_4:mux#2 CSTEPS_FROM {{.. == 1}}
directive set /Fifo<IDTYPE,5>/run/run:rlp/main/input_fifo_4:mux#3 CSTEPS_FROM {{.. == 1}}
directive set /Fifo<IDTYPE,5>/run/run:rlp/main/input_fifo_4:mux CSTEPS_FROM {{.. == 1}}

# Probe constraints
