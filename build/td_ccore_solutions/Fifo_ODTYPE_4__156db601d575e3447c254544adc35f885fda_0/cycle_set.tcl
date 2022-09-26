
# Loop constraints
directive set /Fifo<ODTYPE,4>/run/run:rlp CSTEPS_FROM {{. == 0}}
directive set /Fifo<ODTYPE,4>/run/run:rlp/main CSTEPS_FROM {{. == 2} {.. == 0}}

# IO operation constraints
directive set /Fifo<ODTYPE,4>/run/run:rlp/main/input:io_read(input:rsc.@) CSTEPS_FROM {{.. == 1}}
directive set /Fifo<ODTYPE,4>/run/run:rlp/main/accum_fifo_3:io_read(ccs_ccore_start:rsc.@) CSTEPS_FROM {{.. == 1}}
directive set /Fifo<ODTYPE,4>/run/run:rlp/main/SHIFT:io_write(output:rsc.@) CSTEPS_FROM {{.. == 1}}

# Sync operation constraints

# Real operation constraints
directive set /Fifo<ODTYPE,4>/run/run:rlp/main/accum_fifo_3:mux#1 CSTEPS_FROM {{.. == 1}}
directive set /Fifo<ODTYPE,4>/run/run:rlp/main/accum_fifo_3:mux#2 CSTEPS_FROM {{.. == 1}}
directive set /Fifo<ODTYPE,4>/run/run:rlp/main/accum_fifo_3:mux CSTEPS_FROM {{.. == 1}}

# Probe constraints
