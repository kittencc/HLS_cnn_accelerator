#ifndef INPUT_DOUBLE_BUFFER_H
#define INPUT_DOUBLE_BUFFER_H

template <int size, int IC0, int OC0>
class InputDoubleBufferWriter{
public:
    InputDoubleBufferWriter(){}

    #pragma hls_design interface
    void CCS_BLOCK(run)(ac_channel<Params> &paramsIn,
                        ac_channel<IDTYPE> &din,
                        ac_channel<chanStruct<PackedInt<INPUT_PRECISION,IC0>,size> > &dout)
    {
        // -------------------------------
        // Your code starts here
        // -------------------------------

        // -------------------------------
        // Your code ends here
        // -------------------------------
    }
};

template <int size, int IC0, int OC0>
class InputDoubleBufferReader{
public:
    InputDoubleBufferReader(){}

    #pragma hls_design interface
    void CCS_BLOCK(run)(ac_channel<Params> &paramsIn,
                        ac_channel<chanStruct<PackedInt<INPUT_PRECISION, IC0>,size> > &din,
                        ac_channel<PackedInt<INPUT_PRECISION, IC0> > &dout)
    {
        // -------------------------------
        // Your code starts here
        // -------------------------------

        // -------------------------------
        // Your code ends here
        // -------------------------------
    }
};

template <int size, int IC0, int OC0>
class InputDoubleBuffer{
public:

  // constructor
  InputDoubleBuffer(){}

  #pragma hls_design interface
  void CCS_BLOCK(run)(ac_channel<IDTYPE> &inputs_in,
                      ac_channel<PackedInt<INPUT_PRECISION, IC0> > &inputs_out,
                      ac_channel<Params> &paramsIn)
    {
        // read the cnn parameters
        Params params = paramsIn.read();

        // derive the remaining cnn parameters
        uint_16 IX0 = params.STRIDE*(params.OX0-1) + params.FX;
        uint_16 IY0 = params.STRIDE*(params.OY0-1) + params.FY;

        #ifndef __SYNTHESIS__
        // each ifmap block saves IC1*IY0*IX0 date entries
        ac_int<ac::log2_ceil<size>::val, false> block_size = params.IC1 * IX0 * IY0;
        // The memory size must be big enough for 1 block to fit
        assert(block_size <= size);
        #endif

        inputDoubleBufferReaderParams.write(params);
        inputDoubleBufferWriterParams.write(params);
        
        // "mem" is the double buffer shared between the reader and the
        // writer.
        inputDoubleBufferWriter.run(inputDoubleBufferWriterParams, inputs_in, mem);
        inputDoubleBufferReader.run(inputDoubleBufferReaderParams, mem, inputs_out);
    }

private:
    ac_channel<chanStruct< PackedInt<INPUT_PRECISION, IC0>, size> > mem;
    // each entry in "mem" is an array data[size], where each data is the
    // chained (by IC0) version of ifmap.
    // The item passed by the ac_channel is the entire ifmap bank

    InputDoubleBufferWriter<size, IC0, OC0> inputDoubleBufferWriter;
    ac_channel<Params> inputDoubleBufferWriterParams;

    InputDoubleBufferReader<size, IC0, OC0> inputDoubleBufferReader;
    ac_channel<Params> inputDoubleBufferReaderParams;
};

#endif
