PRODUCT_BRAND ?= Cyclone

# Versioning System
# Cyclone  version over here.
PRODUCT_VERSION_MAJOR = Rimbon
PRODUCT_VERSION_MINOR = niceparse.L
CYCLONE_VERSION_NUMBER := 5.7-Alpha
CYCLONE_SONGCODEURL = https://cutt.ly/UfgBmik
CYCLONE_EPOCH := $(shell date +%s)
CYCLONE_POSTFIX := -$(shell date -d @$(CYCLONE_EPOCH) +"%Y%m%d-%H%M%S")

ifndef CYCLONE_BUILD_TYPE
    CYCLONE_BUILD_TYPE := Testing
endif

ifdef CYCLONE_BUILD_EXTRA
    CYCLONE_POSTFIX := -$(CYCLONE_BUILD_EXTRA)
    CYCLONE_MOD_SHORT := CycloneROM-$(PRODUCT_VERSION_MAJOR)4$(CYCLONE_BUILD)-$(CYCLONE_BUILD_TYPE)$(CYCLONE_POSTFIX)
else
    CYCLONE_MOD_SHORT := CycloneROM-$(PRODUCT_VERSION_MAJOR)4$(CYCLONE_BUILD)-$(CYCLONE_BUILD_TYPE)
endif

CYCLONE_VERSION := CycloneROM-$(PRODUCT_VERSION_MAJOR)4$(CYCLONE_BUILD).$(CYCLONE_VERSION_NUMBER)-$(CYCLONE_BUILD_TYPE)$(CYCLONE_POSTFIX)

PRODUCT_PACKAGES += \
    bootanimation.zip

#ifneq ($(TARGET_USE_SINGLE_BOOTANIMATION),true)
#    PRODUCT_PACKAGES += \
#        bootanimation2.zip \
#        bootanimation3.zip
#endif

# Wallpaper overlay selection for widescreen devices.
ifeq ($(CYCLONE_NOTCHED),true)
    DEVICE_PACKAGE_OVERLAYS += \
        vendor/cyclone/overlay/wallpaper/widebois
else
    DEVICE_PACKAGE_OVERLAYS += \
        vendor/cyclone/overlay/wallpaper/common
endif
