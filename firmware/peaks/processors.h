// Copyright 2013 Emilie Gillet.
//
// Author: Emilie Gillet (emilie.o.gillet@gmail.com)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
// 
// See http://creativecommons.org/licenses/MIT/ for more information.
//
// -----------------------------------------------------------------------------
//
// This is the common entry points for all types of modulation sources!

#ifndef PEAKS_PROCESSORS_H_
#define PEAKS_PROCESSORS_H_

#include "stmlib/stmlib.h"

#include <algorithm>

#include "peaks/drums/bass_drum.h"
#include "peaks/drums/fm_drum.h"
#include "peaks/drums/snare_drum.h"
#include "peaks/drums/high_hat.h"
#include "peaks/modulations/bouncing_ball.h"
#include "peaks/modulations/lfo.h"
#include "peaks/modulations/mini_sequencer.h"
#include "peaks/modulations/multistage_envelope.h"
#ifdef NUMBER_STATION
#include "peaks/number_station/number_station.h"
#endif
#include "peaks/pulse_processor/pulse_shaper.h"
#include "peaks/pulse_processor/pulse_randomizer.h"

#include "peaks/gate_processor.h"

namespace peaks {

enum ProcessorFunction {
  PROCESSOR_FUNCTION_ENVELOPE,
  PROCESSOR_FUNCTION_LFO,
  PROCESSOR_FUNCTION_TAP_LFO,
  PROCESSOR_FUNCTION_BASS_DRUM,
  PROCESSOR_FUNCTION_SNARE_DRUM,
  PROCESSOR_FUNCTION_HIGH_HAT,
  PROCESSOR_FUNCTION_FM_DRUM,
  PROCESSOR_FUNCTION_PULSE_SHAPER,
  PROCESSOR_FUNCTION_PULSE_RANDOMIZER,
  PROCESSOR_FUNCTION_BOUNCING_BALL,
  PROCESSOR_FUNCTION_MINI_SEQUENCER,
  #ifdef NUMBER_STATION
  PROCESSOR_FUNCTION_NUMBER_STATION,
  #endif
  PROCESSOR_FUNCTION_LAST
};

#define DECLARE_PROCESSOR(ClassName, variable) \
  void ClassName ## Init() { \
    variable.Init(); \
  } \
  void ClassName ## Process(const GateFlags* gate_flags, int16_t* out, size_t size) { \
    variable.Process(gate_flags, out, size); \
  } \
  void ClassName ## Configure(uint16_t* p, ControlMode control_mode) { \
    variable.Configure(p, control_mode); \
  } \
  ClassName variable;

class Processors {
 public:
  Processors() { }
  ~Processors() { }
  
  void Init(uint8_t index);
  
  typedef void (Processors::*InitFn)(); 
  typedef void (Processors::*ProcessFn)(const GateFlags*, int16_t*, size_t); 
  typedef void (Processors::*ConfigureFn)(uint16_t*, ControlMode);
  
  struct ProcessorCallbacks {
    InitFn init_fn;
    ProcessFn process_fn;
    ConfigureFn configure_fn;
  };
  
  inline void set_control_mode(ControlMode control_mode) {
    control_mode_ = control_mode;
    Configure();
  }
  
  inline void set_parameter(uint8_t index, uint16_t parameter) {
    parameter_[index] = parameter;
    Configure();
  }
  
  inline void CopyParameters(uint16_t* parameters, uint16_t size) {
    std::copy(&parameters[0], &parameters[size], &parameter_[0]);
  }
  
  inline void set_function(ProcessorFunction function) {
    function_ = function;
    lfo_.set_sync(function == PROCESSOR_FUNCTION_TAP_LFO);
    callbacks_ = callbacks_table_[function];
    if (function != PROCESSOR_FUNCTION_TAP_LFO) {
      (this->*callbacks_.init_fn)();
    }
    Configure();
  }
  
  inline ProcessorFunction function() const { return function_; }

  inline void Process(const GateFlags* gate_flags, int16_t* output, size_t size) {
    (this->*callbacks_.process_fn)(gate_flags, output, size);
  }
  
  #ifdef NUMBER_STATION
  inline const NumberStation& number_station() const { return number_station_; }
  #endif
  
 private:
  void Configure() {
    if (function_ == PROCESSOR_FUNCTION_SNARE_DRUM ||
        function_ == PROCESSOR_FUNCTION_HIGH_HAT) {
      uint16_t tone_parameter = control_mode_ == CONTROL_MODE_FULL
          ? parameter_[1] : parameter_[0];
      uint16_t snappy_parameter = control_mode_ == CONTROL_MODE_FULL
          ? parameter_[2] : parameter_[1];
      if (tone_parameter >= 65000 && snappy_parameter >= 65000) {
        if (function_ != PROCESSOR_FUNCTION_HIGH_HAT) {
          set_function(PROCESSOR_FUNCTION_HIGH_HAT);
        }
      } else if (tone_parameter <= 64500 || snappy_parameter <= 64500) {
        if (function_ != PROCESSOR_FUNCTION_SNARE_DRUM) {
          set_function(PROCESSOR_FUNCTION_SNARE_DRUM);
        }
      }
    }
    (this->*callbacks_.configure_fn)(&parameter_[0], control_mode_);
  }
  
  ControlMode control_mode_;
  ProcessorFunction function_;
  uint16_t parameter_[4];
  
  ProcessorCallbacks callbacks_;
  static const ProcessorCallbacks callbacks_table_[PROCESSOR_FUNCTION_LAST];
  
  DECLARE_PROCESSOR(MultistageEnvelope, envelope_);
  DECLARE_PROCESSOR(Lfo, lfo_);
  DECLARE_PROCESSOR(BassDrum, bass_drum_);
  DECLARE_PROCESSOR(SnareDrum, snare_drum_);
  DECLARE_PROCESSOR(HighHat, high_hat_);
  DECLARE_PROCESSOR(FmDrum, fm_drum_);
  DECLARE_PROCESSOR(PulseShaper, pulse_shaper_);
  DECLARE_PROCESSOR(PulseRandomizer, pulse_randomizer_);
  DECLARE_PROCESSOR(BouncingBall, bouncing_ball_);
  DECLARE_PROCESSOR(MiniSequencer, mini_sequencer_);
  #ifdef NUMBER_STATION
  DECLARE_PROCESSOR(NumberStation, number_station_);
  #endif
  
  DISALLOW_COPY_AND_ASSIGN(Processors);
};

extern Processors processors[2];

}  // namespace peaks

#endif  // PEAKS_PROCESSORS_H_
