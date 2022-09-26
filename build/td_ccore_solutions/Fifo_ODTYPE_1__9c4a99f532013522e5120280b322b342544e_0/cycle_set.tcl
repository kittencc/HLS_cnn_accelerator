
# Loop constraints
directive set /Fifo<ODTYPE,1>/run/run:rlp CSTEPS_FROM {{. == 0}}
directive set /Fifo<ODTYPE,1>/run/run:rlp/main CSTEPS_FROM {{. == 2} {.. == 0}}

# IO operation constraints
directive set /Fifo<ODTYPE,1>/run/run:rlp/main/input:io_read(input:rsc.@) CSTEPS_FROM {{.. == 1}}
directive set /Fifo<ODTYPE,1>/run/run:rlp/main/accum_fifo_0:io_read(ccs_ccore_start:rsc.@) CSTEPS_FROM {{.. == 1}}
directive set /Fifo<ODTYPE,1>/run/run:rlp/main/SHIFT:io_write(output:rsc.@) CSTEPS_FROM {{.. == 1}}

# Sync operation constraints

# Real operation constraints

# Probe constraints
