# Our Cyclone apps
PRODUCT_PACKAGES += \
    Email \
    Etar \
    QPGallery \
    MiXplorerPrebuilt \
    WallpaperPicker2 \
    MarkupGugel \
    GugelClock \
    ShishuWalls \
    Jelly \
    LatinIME \
    OmniStyle \
    OmniJaws \
    ShishufiedHeaders \
    Phonograph \
    ThemePicker

# Launcher Selection just in case
# Please, prepare for reports
ifeq ($(CYCLONE_SITDOWN),true)
    PRODUCT_PACKAGES += \
        Lawnchair

PRODUCT_COPY_FILES += \
    vendor/cyclone/prebuilt/lawnchair/etc/permissions/privapp-permissions-lawnchair.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-lawnchair.xml \
    vendor/cyclone/prebuilt/lawnchair/etc/sysconfig/lawnchair-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/lawnchair-hiddenapi-package-whitelist.xml

    DEVICE_PACKAGE_OVERLAYS += \
        vendor/cyclone/overlay/lawnchair
else
    PRODUCT_PACKAGES += \
        Launcher3QuickStep
endif

# Long Screenshot
#PRODUCT_PACKAGES += \
#    StitchImage

# DU-Fonts
#PRODUCT_PACKAGES += \
#    CustomFonts

# Cutout control overlay
#PRODUCT_PACKAGES += \
#    NoCutoutOverlay

# Call the overlays folder to build all the rest
include packages/overlays/Shishufied/shishu.mk

# Include Potato volume panels
#include packages/modules/PotatoPlugins/plugins.mk

### COMMENTED WASTELAND - MOVED TEMPORALLY HERE DUE TO WIP ###
#
#
# Some Extra packages required to be built from here
#PRODUCT_PACKAGES += \
#    org.dirtyunicorns.utils \
#    OmniStyle \
#    OmniJaws
#
# DU Utils library
#PRODUCT_BOOT_JARS += \
#    org.dirtyunicorns.utils
#
