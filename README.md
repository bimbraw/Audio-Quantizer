# Audio_Quantizer

An audio quantizer that takes in audio input, the bit depth for quantization and returns the quantized signal as output.

The quantizer is implemented with clipping, i.e. signal levels above 1 (and below '-1') get mapped to the correct quantization step.
