
# Loop constraints
directive set /ProcessingElement<IDTYPE,WDTYPE,ODTYPE>/run/run:rlp CSTEPS_FROM {{. == 0}}
directive set /ProcessingElement<IDTYPE,WDTYPE,ODTYPE>/run/run:rlp/main CSTEPS_FROM {{. == 2} {.. == 0}}

# IO operation constraints
directive set /ProcessingElement<IDTYPE,WDTYPE,ODTYPE>/run/run:rlp/main/weight:io_read(weight:rsc.@) CSTEPS_FROM {{.. == 1}}
directive set /ProcessingElement<IDTYPE,WDTYPE,ODTYPE>/run/run:rlp/main/psum_in:io_read(psum_in:rsc.@) CSTEPS_FROM {{.. == 1}}
directive set /ProcessingElement<IDTYPE,WDTYPE,ODTYPE>/run/run:rlp/main/input_in:io_read(input_in:rsc.@) CSTEPS_FROM {{.. == 1}}
directive set /ProcessingElement<IDTYPE,WDTYPE,ODTYPE>/run/run:rlp/main/io_read(ccs_ccore_start:rsc.@) CSTEPS_FROM {{.. == 1}}
directive set /ProcessingElement<IDTYPE,WDTYPE,ODTYPE>/run/run:rlp/main/io_write(input_out:rsc.@) CSTEPS_FROM {{.. == 1}}
directive set /ProcessingElement<IDTYPE,WDTYPE,ODTYPE>/run/run:rlp/main/io_write(psum_out:rsc.@) CSTEPS_FROM {{.. == 1}}

# Sync operation constraints

# Real operation constraints
directive set /ProcessingElement<IDTYPE,WDTYPE,ODTYPE>/run/run:rlp/main/mul CSTEPS_FROM {{.. == 1}}
directive set /ProcessingElement<IDTYPE,WDTYPE,ODTYPE>/run/run:rlp/main/acc CSTEPS_FROM {{.. == 1}}

# Probe constraints
