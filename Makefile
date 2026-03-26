ARCHS = arm64 arm64e
# لێرەدا پێی دەڵێین کە نیشانە بۆ ئایفۆن بکات بێ ئەوەی وابەستەی وەشانی دیاریکراو بێت
TARGET = iphone:clang:latest

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = KurdApp
KurdApp_FILES = Tweak.x
KurdApp_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
