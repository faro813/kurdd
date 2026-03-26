ARCHS = arm64 arm64e
TARGET = iphone:clang:latest:13.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = KurdApp
KurdApp_FILES = Tweak.x
KurdApp_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
