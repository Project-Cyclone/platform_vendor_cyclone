# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_BUILD_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# Bootleggers System Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.cyclone.version_number=$(CYCLONE_VERSION_NUMBER) \
    ro.cyclone.releasetype=$(CYCLONE_BUILD_TYPE) \
    ro.cyclone.version=$(CYCLONE_VERSION) \
    ro.cyclone.buildshort=$(CYCLONE_MOD_SHORT) \
    ro.cyclone.songcodename=$(PRODUCT_VERSION_MINOR) \
    ro.cyclone.songcodeurl=$(CYCLONE_SONGCODEURL) \
    ro.cyclone.display.version=$(CYCLONE_VERSION) \
    ro.cyclone.build.date=$(CYCLONE_EPOCH)
