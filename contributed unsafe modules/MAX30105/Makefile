# outputs
MODULE_NAME=MAX30105
COPIED_FILES_U=module.modulemap MAX30105_.h
COPIED_FILES_S=unsafeMAX30105.swift




# source files and settings
CPP_FILES=MAX30105.cpp spo2_algorithm.cpp heartRate.cpp MAX30105_.cpp

# program location and settings
# reasonable defaults, change to suit your machine
AVR_BINUTILS_DIR=/usr/local/bin
AVR_GCC_BIN_DIR=/usr/local/bin

# this relies on the current S4A Community folder
# structure so it could very easily break in future
# they are only needed to run the install target
UNSAFE_MODULES_INSTALL_DIR=../../contributed\ libraries/unsafe_modules
SAFE_FILES_INSTALL_DIR=../../contributed\ libraries
CATALOG_FILE=../../contributed\ libraries/catalog.txt


# these are variables you're unlikely to need to change
MCU=atmega328p
# note, for this bluetooth library, it is too bulky, probably partly because it
# uses an unnecessarily large amount of underlying Arduino furniture like Stream
# and Print, as a result we have to compile with -Os or it won't fit
CPP_OPTS=-std=c++11 -ffunction-sections -Os
AR_OPTS=rcs
EXTRA_CPP_FLAGS=-DF_CPU=16000000UL


# derived variables
CPP_OBJS=$(CPP_FILES:.cpp=.o)
GCC_PLUS_OPTS=-mmcu=$(MCU) $(CPP_OPTS) -B"$(AVR_BINUTILS_DIR)" -isystem arduinoReplacementClasses
AR="$(AVR_BINUTILS_DIR)/avr-ar" $(AR_OPTS)
GCC_PLUS="$(AVR_GCC_BIN_DIR)/avr-gcc" $(GCC_PLUS_OPTS)
BUILT_PRODUCT=lib$(MODULE_NAME).a
MODULE_NAME_DIR=$(UNSAFE_MODULES_INSTALL_DIR)/$(MODULE_NAME)

BUILT_PRODUCT_INSTALL=$(BUILT_PRODUCT:=-install)
COPIED_FILES_U_INSTALL=$(COPIED_FILES_U:=-install)
COPIED_FILES_S_INSTALL=$(COPIED_FILES_S:=-install)

# subroutine

define includeFileReference
		if ! grep -s $(1) $(2); then \
		  echo "\n$(1)\c" >> $(2); \
		fi
endef


#targets

.PHONY: all clean install $(BUILT_PRODUCT_INSTALL) $(COPIED_FILES_U_INSTALL) $(COPIED_FILES_S_INSTALL)

all: $(BUILT_PRODUCT)

$(BUILT_PRODUCT): $(CPP_OBJS)
	$(AR) -o $@ $^

%.o: %.cpp
	$(GCC_PLUS) -I . $(EXTRA_CPP_FLAGS) -c -o $@ $(@:.o=.cpp)

clean:
	rm -rf *.o *.a

# install section

$(MODULE_NAME_DIR):
	if [ ! -d "$@" ]; then mkdir -p "$@";fi

$(BUILT_PRODUCT_INSTALL): $(BUILT_PRODUCT) $(MODULE_NAME_DIR)
	cp -a $(@:-install=) $(UNSAFE_MODULES_INSTALL_DIR)/$(MODULE_NAME)/
	$(call includeFileReference,unsafe_modules/$(MODULE_NAME)/$(@:-install=),$(CATALOG_FILE))

$(COPIED_FILES_U_INSTALL): $(COPIED_FILES_U) $(MODULE_NAME_DIR)
	cp -a $(@:-install=) $(UNSAFE_MODULES_INSTALL_DIR)/$(MODULE_NAME)/
	$(call includeFileReference,unsafe_modules/$(MODULE_NAME)/$(@:-install=),$(CATALOG_FILE))

$(COPIED_FILES_S_INSTALL): $(COPIED_FILES_S)
	cp -a $(@:-install=) $(SAFE_FILES_INSTALL_DIR)/
	$(call includeFileReference,$(@:-install=),$(CATALOG_FILE))

install: $(BUILT_PRODUCT_INSTALL) $(COPIED_FILES_U_INSTALL) $(COPIED_FILES_S_INSTALL)
