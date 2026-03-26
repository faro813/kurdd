TWEAK_NAME = KurdApp
KurdApp_FILES = Tweak.x
KurdApp_CFLAGS = -fobjc-arc

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk
