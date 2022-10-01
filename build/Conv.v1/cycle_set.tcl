
# Loop constraints
directive set /Conv/SystolicArrayLooper/run/run:rlp CSTEPS_FROM {{. == 1}}
directive set /Conv/SystolicArrayLooper/run/run:rlp/main CSTEPS_FROM {{. == 2} {.. == 1}}
directive set /Conv/SystolicArrayLooper/run/run:rlp/main/OY1_OX1_OC1 CSTEPS_FROM {{. == 2} {.. == 2}}
directive set /Conv/SystolicArrayLooper/run/run:rlp/main/OY1_OX1_OC1/IC1 CSTEPS_FROM {{. == 2} {.. == 1}}
directive set /Conv/SystolicArrayLooper/run/run:rlp/main/OY1_OX1_OC1/IC1/FY CSTEPS_FROM {{. == 2} {.. == 1}}
directive set /Conv/SystolicArrayLooper/run/run:rlp/main/OY1_OX1_OC1/IC1/FY/FX CSTEPS_FROM {{. == 1} {.. == 1}}

# IO operation constraints
directive set /Conv/SystolicArrayLooper/run/run:rlp/main/io_read(paramsIn) CSTEPS_FROM {{.. == 0}}
directive set /Conv/SystolicArrayLooper/run/run:rlp/main/OY1_OX1_OC1/IC1/FY/FX/FX:io_write(paramsOut) CSTEPS_FROM {{.. == 0}}
directive set /Conv/SystolicArrayLooper/run/run:rlp/main/OY1_OX1_OC1/IC1/FY/FX/FX:io_write(loopIndicesOut) CSTEPS_FROM {{.. == 0}}

# Sync operation constraints

# Real operation constraints
directive set /Conv/SystolicArrayLooper/run/run:rlp/main/ofmap_bank_num:mul#1 CSTEPS_FROM {{.. == 1}}
directive set /Conv/SystolicArrayLooper/run/run:rlp/main/ofmap_bank_num:mul CSTEPS_FROM {{.. == 2}}
directive set /Conv/SystolicArrayLooper/run/run:rlp/main/OY1_OX1_OC1:acc#2 CSTEPS_FROM {{.. == 2}}
directive set /Conv/SystolicArrayLooper/run/run:rlp/main/OY1_OX1_OC1/IC1:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /Conv/SystolicArrayLooper/run/run:rlp/main/OY1_OX1_OC1/IC1/FY:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /Conv/SystolicArrayLooper/run/run:rlp/main/OY1_OX1_OC1/IC1/FY/FX:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /Conv/SystolicArrayLooper/run/run:rlp/main/OY1_OX1_OC1/IC1/FY/FX/FX:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /Conv/SystolicArrayLooper/run/run:rlp/main/OY1_OX1_OC1/IC1/FY/FX/FX:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /Conv/SystolicArrayLooper/run/run:rlp/main/OY1_OX1_OC1/IC1/FY/FY:acc#1 CSTEPS_FROM {{.. == 2}}
directive set /Conv/SystolicArrayLooper/run/run:rlp/main/OY1_OX1_OC1/IC1/FY/FY:acc#3 CSTEPS_FROM {{.. == 2}}
directive set /Conv/SystolicArrayLooper/run/run:rlp/main/OY1_OX1_OC1/IC1/IC1:acc#1 CSTEPS_FROM {{.. == 2}}
directive set /Conv/SystolicArrayLooper/run/run:rlp/main/OY1_OX1_OC1/IC1/IC1:acc#3 CSTEPS_FROM {{.. == 2}}
directive set /Conv/SystolicArrayLooper/run/run:rlp/main/OY1_OX1_OC1/OY1_OX1_OC1:acc#1 CSTEPS_FROM {{.. == 2}}
directive set /Conv/SystolicArrayLooper/run/run:rlp/main/OY1_OX1_OC1/OY1_OX1_OC1:acc#3 CSTEPS_FROM {{.. == 2}}

# Probe constraints

# Loop constraints
directive set /Conv/Serializer<PackedInt<16UL,16UL>,ODTYPE,16>/run/run:rlp CSTEPS_FROM {{. == 1}}
directive set /Conv/Serializer<PackedInt<16UL,16UL>,ODTYPE,16>/run/run:rlp/main CSTEPS_FROM {{. == 2} {.. == 1}}

# IO operation constraints
directive set /Conv/Serializer<PackedInt<16UL,16UL>,ODTYPE,16>/run/run:rlp/main/io_read(inputChannel) CSTEPS_FROM {{.. == 0}}
directive set /Conv/Serializer<PackedInt<16UL,16UL>,ODTYPE,16>/run/run:rlp/main/for:io_write(serialOutChannel) CSTEPS_FROM {{.. == 1}}

# Sync operation constraints

# Real operation constraints
directive set /Conv/Serializer<PackedInt<16UL,16UL>,ODTYPE,16>/run/run:rlp/main/for:mux CSTEPS_FROM {{.. == 1}}
directive set /Conv/Serializer<PackedInt<16UL,16UL>,ODTYPE,16>/run/run:rlp/main/for:for:and CSTEPS_FROM {{.. == 1}}
directive set /Conv/Serializer<PackedInt<16UL,16UL>,ODTYPE,16>/run/run:rlp/main/for:mux#3 CSTEPS_FROM {{.. == 1}}
directive set /Conv/Serializer<PackedInt<16UL,16UL>,ODTYPE,16>/run/run:rlp/main/for:acc#1 CSTEPS_FROM {{.. == 1}}

# Probe constraints

# Loop constraints
directive set /Conv/ParamsDeserializer/run/run:rlp CSTEPS_FROM {{. == 1}}
directive set /Conv/ParamsDeserializer/run/run:rlp/main CSTEPS_FROM {{. == 10} {.. == 1}}

# IO operation constraints
directive set /Conv/ParamsDeserializer/run/run:rlp/main/io_read(inputChannel) CSTEPS_FROM {{.. == 0}}
directive set /Conv/ParamsDeserializer/run/run:rlp/main/io_read(inputChannel)#1 CSTEPS_FROM {{.. == 1}}
directive set /Conv/ParamsDeserializer/run/run:rlp/main/io_read(inputChannel)#2 CSTEPS_FROM {{.. == 2}}
directive set /Conv/ParamsDeserializer/run/run:rlp/main/io_read(inputChannel)#3 CSTEPS_FROM {{.. == 3}}
directive set /Conv/ParamsDeserializer/run/run:rlp/main/io_read(inputChannel)#4 CSTEPS_FROM {{.. == 4}}
directive set /Conv/ParamsDeserializer/run/run:rlp/main/io_read(inputChannel)#5 CSTEPS_FROM {{.. == 5}}
directive set /Conv/ParamsDeserializer/run/run:rlp/main/io_read(inputChannel)#6 CSTEPS_FROM {{.. == 6}}
directive set /Conv/ParamsDeserializer/run/run:rlp/main/io_read(inputChannel)#7 CSTEPS_FROM {{.. == 7}}
directive set /Conv/ParamsDeserializer/run/run:rlp/main/io_read(inputChannel)#8 CSTEPS_FROM {{.. == 8}}
directive set /Conv/ParamsDeserializer/run/run:rlp/main/io_write(outputChannel1) CSTEPS_FROM {{.. == 9}}
directive set /Conv/ParamsDeserializer/run/run:rlp/main/io_write(outputChannel2) CSTEPS_FROM {{.. == 9}}
directive set /Conv/ParamsDeserializer/run/run:rlp/main/io_write(outputChannel3) CSTEPS_FROM {{.. == 9}}

# Sync operation constraints

# Real operation constraints

# Probe constraints
