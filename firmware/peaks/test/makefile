# Uncomment this to include the Number Station Easter egg - only on 128k flash Blue Pills
#NUMBER_STATION = 1

PACKAGES       = peaks/test stmlib/utils peaks peaks/drums peaks/pulse_processor peaks/modulations peaks/number_station

VPATH          = $(PACKAGES)

TARGET         = peaks_test
BUILD_ROOT     = build/
BUILD_DIR      = $(BUILD_ROOT)$(TARGET)/
CC_FILES       = bass_drum.cc \
		fm_drum.cc \
		high_hat.cc \
		lfo.cc \
		multistage_envelope.cc \
		peaks_test.cc \
		processors.cc \
		pulse_shaper.cc \
		pulse_randomizer.cc \
		random.cc \
		resources.cc \
		snare_drum.cc

ifdef $(NUMBER_STATION)
CC_FILES       += number_station.cc
endif

OBJ_FILES      = $(CC_FILES:.cc=.o)
OBJS           = $(patsubst %,$(BUILD_DIR)%,$(OBJ_FILES)) $(STARTUP_OBJ)
DEPS           = $(OBJS:.o=.d)
DEP_FILE       = $(BUILD_DIR)depends.mk

all:  peaks_test

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

$(BUILD_DIR)%.o: %.cc
	g++ -c -DTEST -g -Wall -Werror -I. $< -o $@

$(BUILD_DIR)%.d: %.cc
	g++ -MM -DTEST -I. $< -MF $@ -MT $(@:.d=.o)

peaks_test:  $(OBJS)
	g++ -o $(TARGET) $(OBJS)

depends:  $(DEPS)
	cat $(DEPS) > $(DEP_FILE)

$(DEP_FILE):  $(BUILD_DIR) $(DEPS)
	cat $(DEPS) > $(DEP_FILE)

include $(DEP_FILE)
