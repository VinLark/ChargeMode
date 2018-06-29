include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ChargeMode-V
ChargeMode-V_FILES = ChargeModeWindow.m ChargeMode.xm
ChargeMode-V_FRAMEWORKS = UIKit Foundation CydiaSubstrate
ChargeMode-V_CFLAGS = -fobjc-arc -std=c++11
ChargeMode-V_LDFLAGS = -Wl,-segalign,4000 -Wl,-undefined,dynamic_lookup
export ARCHS = armv7 arm64
ChargeMode-V_ARCHS = armv7 arm64
include $(THEOS)/makefiles/tweak.mk

#all::
#	@echo "[+] Copying Files..."
#	@cp -rf ./obj/ChargeMode.dylib //Library/MobileSubstrate/DynamicLibraries/ChargeMode.dylib
#	@/usr/bin/ldid -S //Library/MobileSubstrate/DynamicLibraries/ChargeMode.dylib
#	@cp ./ChargeMode.plist //Library/MobileSubstrate/DynamicLibraries/ChargeMode.plist
#	@echo "DONE"
#	@killall SpringBoard

	