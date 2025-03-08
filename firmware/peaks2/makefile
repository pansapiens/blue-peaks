# Copyright 2013 Emilie Gillet.
# 
# Author: Emilie Gillet (emilie.o.gillet@gmail.com)
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
# 
# See http://creativecommons.org/licenses/MIT/ for more information.

# System specifications
F_CRYSTAL      = 8000000L
F_CPU          = 72000000L
SYSCLOCK       = SYSCLK_FREQ_72MHz
FAMILY         = f10x
DENSITY        = md
MEMORY_MODE    = flash
# USB            = enabled

#APPLICATION    = TRUE
BOOTLOADER     = peaks_bootloader

# Preferred upload command
UPLOAD_COMMAND  = upload_combo_jtag

# Uncomment this to include the Number Station Easter egg - only on 128k flash Blue Pills
#NUMBER_STATION = 1

# Uncomment to reverse the direction of the pots (eg, if they were mounted with the pins flipped)
REVERSE_POTS = 1

# Uncomment if pots are wired in the reverse order (reverse the order of the ADCs)
REVERSE_POT_ORDER = 1

# For Ubuntu 20.04 with: sudo apt install gcc-arm*
# TOOLCHAIN_PATH = /usr/

PROJECT_CONFIGURATION =

ifdef NUMBER_STATION
PROJECT_CONFIGURATION += -DNUMBER_STATION=1
endif

ifdef REVERSE_POTS
PROJECT_CONFIGURATION += -DREVERSE_POTS=1
endif

ifdef REVERSE_POT_ORDER
PROJECT_CONFIGURATION += -DREVERSE_POT_ORDER=1
endif

# Packages to build
TARGET         = peaks2
PACKAGES       = peaks2 \
		peaks2/drivers \
		peaks2/drums \
		peaks2/modulations \
		peaks2/pulse_processor \
		peaks2/bytebeats \
		stmlib/utils \
		stmlib/system

ifdef NUMBER_STATION
PACKAGES += peaks/number_station 
endif

RESOURCES      = peaks2/resources

TOOLCHAIN_PATH ?= /usr/local/arm-4.8.3/

include stmlib/makefile.inc

# Rule for building the firmware update file
wav:  $(TARGET_BIN)
	python2 stm_audio_bootloader/fsk/encoder.py \
		-s 48000 -b 16 -n 8 -z 4 -p 256 \
		$(TARGET_BIN)
