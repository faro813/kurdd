ARCHS = arm64 arm64e
TARGET = iphone:clang:latest:14.5
# ئەم دێڕەی خوارەوە زیاد بکە
export codesign_flags = -S/dev/null

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = KurdApp
KurdApp_FILES = Tweak.x
KurdApp_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
