# Inherit cyanogenmod configurations
$(call inherit-product, vendor/cyanogen/products/cyanogen_vision.mk)

PRODUCT_NAME := mau5_vision

# Reorder Product Overlays to properly include theme specific stuff before
# anything else
PRODUCT_PACKAGE_OVERLAYS := vendor/ctso/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/common

# Set Default Ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=SometimesThingsGet.ogg

PRODUCT_COPY_FILES += \
    vendor/ctso/prebuilt/common/fonts/DroidSans.ttf:system/fonts/DroidSans.ttf \
    vendor/ctso/prebuilt/common/fonts/DroidSans-Bold.ttf:system/fonts/DroidSans-Bold.ttf \
    vendor/ctso/prebuilt/common/bin/setdefcols.sh:system/bin/setdefcols.sh \
    vendor/ctso/prebuilt/common/app/ThemeDefaults.apk:system/app/ThemeDefaults.apk \
    vendor/ctso/prebuilt/common/sounds/SometimesThingsGet.ogg:system/media/audio/ringtones/SometimesThingsGet.ogg

PRODUCT_PACKAGES += Mau5Wallpapers
