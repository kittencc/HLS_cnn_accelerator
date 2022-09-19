# Author: Cheryl (Yingqiu) Cao
# Updated on: 2022-09-18


set blockname [file rootname [file tail [info script] ]]

source scripts/common.tcl

directive set -DESIGN_HIERARCHY {
    {WeightDoubleBuffer<16384, 4, 4>}
}
    # remember to change these parameter values to match the actual size
    # of the MAC array
#  NOTE: <16384, 4, 4> the spaces between 4,and 4 cannot be ommitted.
#  Otherwise it will lead to error.


go compile

source scripts/set_libraries.tcl

go libraries
directive set -CLOCKS $clocks

go assembly

# -------------------------------
# Your code starts here
# Set the correct word widths and the stage replication
# -------------------------------
# mem is the internal double buffer
# when changing the word width for the double buffer, it automatically
# changes the word with for din and dout of reader/writer() that uses the
# mem.
directive set /WeightDoubleBuffer<16384,4,4>/WeightDoubleBufferReader<16384,4,4>/din -WORD_WIDTH 128
directive set /WeightDoubleBuffer<16384,4,4>/WeightDoubleBufferWriter<16384,4,4>/dout -WORD_WIDTH 128
directive set /WeightDoubleBuffer<16384,4,4>/mem -WORD_WIDTH 128

directive set /WeightDoubleBuffer<16384,4,4>/mem:cns -STAGE_REPLICATION 2 

#current buffer for the reader()
directive set /WeightDoubleBuffer<16384,4,4>/WeightDoubleBufferReader<16384,4,4>/run/while:current_buffer.data.value -WORD_WIDTH 128

#current buffer for the writer()
directive set /WeightDoubleBuffer<16384,4,4>/WeightDoubleBufferWriter<16384,4,4>/run/while:current_buffer.data.value -WORD_WIDTH 128

#return -code error "Remove this once implemented."
# -------------------------------
# Your code ends here
# -------------------------------

go architect

go allocate
go extract
