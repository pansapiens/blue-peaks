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
// LFO.

#include "peaks/processors.h"

#include <algorithm>

namespace peaks {

using namespace stmlib;
using namespace std;

#define REGISTER_PROCESSOR(ClassName) \
  { &Processors::ClassName ## Init, \
    &Processors::ClassName ## Process, \
    &Processors::ClassName ## Configure },

/* static */
const Processors::ProcessorCallbacks 
Processors::callbacks_table_[PROCESSOR_FUNCTION_LAST] = {
  REGISTER_PROCESSOR(MultistageEnvelope)
  REGISTER_PROCESSOR(Lfo)
  REGISTER_PROCESSOR(Lfo)
  REGISTER_PROCESSOR(BassDrum)
  REGISTER_PROCESSOR(SnareDrum)
  REGISTER_PROCESSOR(HighHat)
  REGISTER_PROCESSOR(FmDrum)
  REGISTER_PROCESSOR(PulseShaper)
  REGISTER_PROCESSOR(PulseRandomizer)
  REGISTER_PROCESSOR(BouncingBall)
  REGISTER_PROCESSOR(MiniSequencer)
  #ifdef NUMBER_STATION
  REGISTER_PROCESSOR(NumberStation)
  #endif
};

void Processors::Init(uint8_t index) {
  for (uint16_t i = 0; i < PROCESSOR_FUNCTION_LAST; ++i) {
    (this->*callbacks_table_[i].init_fn)();
  }
  
  bass_drum_.Init();
  snare_drum_.Init();
  fm_drum_.Init();
  fm_drum_.set_sd_range(index == 1);
  high_hat_.Init();
  bouncing_ball_.Init();
  lfo_.Init();
  envelope_.Init();
  pulse_shaper_.Init();
  pulse_randomizer_.Init();
  mini_sequencer_.Init();
  #ifdef NUMBER_STATION
  number_station_.Init();
  number_station_.set_voice(index == 1);
  #endif
  
  control_mode_ = CONTROL_MODE_FULL;
  set_function(PROCESSOR_FUNCTION_ENVELOPE);
  std::fill(&parameter_[0], &parameter_[4], 32768);
}

/* extern */
Processors processors[2];

}  // namespace peaks
