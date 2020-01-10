# outputs
COPIED_FILES_U=module.modulemap Seeed_RGB_LED_Matrix.h
COPIED_FILES_S=unsafeSeeed_RGB_LED_Matrix.swift
MODULE_NAME=Seeed_RGB_LED_Matrix

# program location and settings
# reasonable defaults, change to suit your build
AVR_BINUTILS_DIR=/usr/local/bin
AVR_GCC_BIN_DIR=/usr/local/bin
# this relies on the current S4A Community folder
# structure so it could very easily break in future
UNSAFE_MODULES_INSTALL_DIR=../../contributed\ libraries/unsafe_modules
SAFE_FILES_INSTALL_DIR=../../contributed\ libraries
CATALOG_FILE=../../contributed\ libraries/catalogNew.txt
LEGACY_CATALOG_FILE=../../contributed\ libraries/catalog.txt


# source files and settings
CPP_FILES=grove_two_rgb_led_matrix.cpp Seeed_RGB_LED_Matrix.cpp
MCU=atmega328p
C_OPTS=-std=c99 -O3
CPP_OPTS=-std=c++11 -O3
AR_OPTS=rcs


# derived variables
CPP_OBJS=$(CPP_FILES:.cpp=.o)
C_OBJS=$(C_FILES:.c=.o)
GCC_OPTS=-mmcu=$(MCU) $(C_OPTS) -B"$(AVR_BINUTILS_DIR)"
GCC_PLUS_OPTS=-mmcu=$(MCU) $(CPP_OPTS) -B"$(AVR_BINUTILS_DIR)"
AR="$(AVR_BINUTILS_DIR)/avr-ar" $(AR_OPTS)
GCC="$(AVR_GCC_BIN_DIR)/avr-gcc" $(GCC_OPTS)
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

$(BUILT_PRODUCT): $(CPP_OBJS) $(C_OBJS)
	$(AR) -o $@ $^

$(CPP_OBJS): $(CPP_FILES)
	$(GCC_PLUS) -I . -DF_CPU=16000000UL -c -o $@ $(@:.o=.cpp)

$(C_OBJS): $(C_FILES)
	$(GCC) -I . -DF_CPU=16000000UL -c -o $@ $(@:.o=.c)

clean:
	rm -rf *.o *.a

# install section

$(CATALOG_FILE):
	if [ ! -e "$@" ]; then cp $(LEGACY_CATALOG_FILE) "$@";fi

$(MODULE_NAME_DIR):
	if [ ! -d "$@" ]; then mkdir -p "$@";fi

$(BUILT_PRODUCT_INSTALL): $(BUILT_PRODUCT) $(MODULE_NAME_DIR) $(CATALOG_FILE)
	cp -a $(@:-install=) $(UNSAFE_MODULES_INSTALL_DIR)/$(MODULE_NAME)/
	$(call includeFileReference,unsafe_modules/$(MODULE_NAME)/$(@:-install=),$(CATALOG_FILE))

$(COPIED_FILES_U_INSTALL): $(COPIED_FILES_U) $(MODULE_NAME_DIR) $(CATALOG_FILE)
	cp -a $(@:-install=) $(UNSAFE_MODULES_INSTALL_DIR)/$(MODULE_NAME)/
	$(call includeFileReference,unsafe_modules/$(MODULE_NAME)/$(@:-install=),$(CATALOG_FILE))

$(COPIED_FILES_S_INSTALL): $(COPIED_FILES_S) $(CATALOG_FILE)
	cp -a $(@:-install=) $(SAFE_FILES_INSTALL_DIR)/
	$(call includeFileReference,$(@:-install=),$(CATALOG_FILE))

install: $(BUILT_PRODUCT_INSTALL) $(COPIED_FILES_U_INSTALL) $(COPIED_FILES_S_INSTALL)
