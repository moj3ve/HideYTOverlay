include $(THEOS)/makefiles/common.mk

TWEAK_NAME = HideYTOverlay
HideYTOverlay_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 YouTube"
