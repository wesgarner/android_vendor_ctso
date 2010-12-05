# Inherit cyanogenmod configurations
$(call inherit-product, vendor/cyanogen/products/cyanogen_passion.mk)

PRODUCT_NAME := mau5_passion

## common stuff ##
PRODUCT_PACKAGE_OVERLAYS := vendor/ctso/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/common

# Set Default Ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=SometimesThingsGet.ogg

PRODUCT_COPY_FILES += \
    vendor/ctso/prebuilt/common/fonts/DroidSans.ttf:system/fonts/DroidSans.ttf \
    vendor/ctso/prebuilt/common/fonts/DroidSans-Bold.ttf:system/fonts/DroidSans-Bold.ttf \
    vendor/ctso/prebuilt/common/bin/setdefcols.sh:system/bin/setdefcols.sh \
    vendor/ctso/prebuilt/common/sounds/SometimesThingsGet.ogg:system/media/audio/ringtones/SometimesThingsGet.ogg

PRODUCT_PACKAGES += Mau5Wallpapers
PRODUCT_PACKAGES += ThemeDefaults

## passion stuff ##

PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/lib/librilswitch.so \
    rilswitch.vendorlibpath=/system/lib/libhtc_ril.so \
    rilswitch.ganlibpath=/system/lib/libganril.so

PRODUCT_COPY_FILES += \
    vendor/ctso/prebuilt/passion/lib/libganril.so:system/lib/libganril.so \
    vendor/ctso/prebuilt/passion/lib/libhtc_ril.so:system/lib/libhtc_ril.so \
    vendor/ctso/prebuilt/passion/lib/libkineto.so:system/lib/libkineto.so \
    vendor/ctso/prebuilt/passion/lib/librilswitch.so:system/lib/librilswitch.so \
