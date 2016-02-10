LIBRARY_NAME = libitrace

libitrace_FILES = main.m utils.m crc32.m
libitrace_LIBRARIES = substrate xml2

SDK=`xcrun --sdk iphoneos --show-sdk-path`

export TARGET = iphone:clang
export ARCHS = armv7s
export TARGET_IPHONEOS_DEPLOYMENT_VERSION = 3.0
export TARGET_IPHONEOS_DEPLOYMENT_VERSION_armv7s = 6.0
export TARGET_IPHONEOS_DEPLOYMENT_VERSION_arm64 = 7.0
export ADDITIONAL_CFLAGS = -D_GNU_SOURCE -DSUPER_SECURE -DIS_MAC=1 -I$(SDK)/usr/include/libxml2
export GO_EASY_ON_ME = 1

include theos/makefiles/common.mk
include $(THEOS_MAKE_PATH)/library.mk

internal-stage::
	$(ECHO_NOTHING)etc="$(THEOS_STAGING_DIR)/etc";
