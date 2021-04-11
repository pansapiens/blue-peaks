# $peaks, a fully-functional low-cost reversion of [Mutable instrument's Peaks](https://mutable-instruments.net/modules/peaks/)

![Photo of the finished build](photo.jpg)




## Motivation
Where I am from it is sometimes very difficult to source components for digital Eurorack modules, but I had my eyes on Peaks for a long time and I wanted to do something cheap with the same functionality. The basic premise was to use a bluepill (stm32f103c8t6 development board) and omit the DAC IC, relying on a technic called dual PWM as it is described in [openmusiclabs blog](http://www.openmusiclabs.com/learning/digital/pwm-dac/dual-pwm-circuits/index.html) and used, for example, in the popular [Mozzi Library](https://github.com/sensorium/Mozzi) for Arduino.

## Description
The project uses a single sided home-etched PCB with a couple of jumper wires, the potentiometers are regular 16mm ones mounted at the side, also helping with the mechanical stability of the build. <br>
You will need a bluepill capable of 128kb of flash, I bought mine advertised as only having 64kb, but it ended up not being the case, so it's worth the try

## Firmwares
There's the option to flash one of two firmwares that where ported. The original Mutable Instruments one is in the `firmware/peaks` directory. The [Mutated Mutables Dead Man's Catch](https://github.com/timchurches/Mutated-Mutables/tree/master/peaks) is in the `firmware/peaks2`. The later adds a lot of functionality to the module, although the UI becomes a bit confusing. <br>

By default the "Number Station" Easter egg in the original firmware is disable to allow it to fit on a Blue Pill with 64k of flash. If you have 128k of flash it can be enabled in the `makefile` (see below). The "Dead Man's Catch" firmware currently only fits on a 128k flash Blue Pill.

Compiled binaries and HEX files are provided for both under `firmware/build`.

## Changes
* Added a driver for the PWM DAC running at **14 bit depth, 48Khz sampling rate.** (File in firmware/peaks/drivers/pwm_dac.h)
* Activated the clock for the TIM4 in firmware/peaks/drivers/system.cc
* **Bypassed the bootloader:** This was done as to simplify the code, it does not interfere with the calibration functionality of the module.
* Redesigned the output portion of the hardware to accommodate to the PWM levels.

## Further changes
* Modified board layout to be 'skiff friendly' (PCB is 50mm deep, 110 mm high)
* Disabled the "Number Station" Easter egg by default, to fit in 64k flash.
* Tweaked to use more default KiCad footprints, less vertically mounted resistors 9mm horizontal Alpha-style pots (eg RD901F)
* Tweaked tracks to work better for my own PCB production method (pen plotter + etching)


## Flashing and development
Build with:
```
cd firmware
make -f peaks/makefile
make -f peaks/makefile bin
```

You'll need Python 2.x and numpy, as well as a typical Linux build environment for ARM cross-compilation 
(eg On Ubuntu 20.04, do `sudo apt install gcc-arm* build-essential` and set `TOOLCHAIN_PATH = /usr/` in `firmware/peaks/makefile`).

If you happen to have a Blue Pill with 128k of flash, you can enable the "Number Station" Easter egg by uncommenting the `NUMBER_STATION` variable in `firmware/peaks/makefile`.

To make it easier there are pre-compiled binaries and .HEX files in `firmware/build`, this can be flashed directly to the bluepill using [STM32CubeProgrammer](https://www.st.com/en/development-tools/stm32cubeprog.html).

Another option is to install the [mutable-dev-environment](https://github.com/pichenettes/mutable-dev-environment) and replace the peaks folder with the one inside /firmware, then executing

    make -f peaks/makefile upload_serial

We use this command because the bootloader is bypassed.

## Thanks
I want to thank Emilie Gillet for open-sourcing her work which is a constant inspiration for many musicians and makers, and encourage everyone interested in this project to checkout the [Mutable instrument's Forum](https://forum.mutable-instruments.net/) in which Emilie is a very active member.


## TODO, IDEAS

- Resolve issues with flipped components / which side to solder / front vs. back traces.
  - To get correct connections I needed to solder the Blue Pill pin header sockets on the 'wrong' side of the PCB 
    (the opposite side to other components - quite awkward on a single sided PCB),
    and rotate the TL074, transistors and voltage regulator 180 degrees to allow them to be correctly soldered to 
    the 'right' side of the board. Be paranoid about how you orient polar components or anything with more than two pins ! 
    Visually check that the pins you are soldering make sense with the tracks they connect to (eg wide ground trace).

- Change some GPIOs in the firmware to make PCB layout easier/cleaner.
- Use a 3.3V supply to power the Blue Pill (eg via LD1117AV33 / LM1117-3.3) rather than 5V - apparently the 5V to 3.3V regulator on Blue Pill boards can't handle more the 100mA, so it's safer to supply 3.3V directly.
- For matching R14/R16 to the Zener reference voltage, 21k and 14k resistors are tricky to find. Either use a 20+1k / 13+1k, or even better, use a resistor + 1k or 2k trimpot to allow manual calibration ?
- Create a two PCB design with pots/jacks/switches soldered on front board. The single board version is a mess of wires.