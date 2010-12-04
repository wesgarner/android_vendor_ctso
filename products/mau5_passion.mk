# Inherit cyanogenmod configurations
$(call inherit-product, vendor/cyanogen/products/cyanogen_passion.mk)

PRODUCT_NAME := mau5_passion

# Reorder Product Overlays to properly include theme specific stuff before
# anything else
PRODUCT_PACKAGE_OVERLAYS := vendor/ctso/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/passion

#PRODUCT_COPY_FILES +=  \
#    vendor/ctso/prebuilt/common/libganril.so:system/lib/libganril.so \
#    vendor/ctso/prebuilt/common/libhtc_ril.so:system/lib/libhtc_ril.so \
#    vendor/ctso/prebuilt/common/libkineto.so:system/lib/libkineto.so \
#    vendor/ctso/prebuilt/common/librilswitch.so:system/lib/librilswitch.so \
#    vendor/ctso/prebuilt/common/MS-HTCVISION-KNT20-02.apk:system/app/MS-HTCVISION-KNT20-02.apk

#PRODUCT_PROPERTY_OVERRIDES += \
#    rild.libpath=/system/lib/librilswitch.so \
#    rilswitch.vendorlibpath=/system/lib/libhtc_ril.so \
#    rilswitch.ganlibpath=/system/lib/libganril.so

PRODUCT_COPY_FILES += \
    vendor/ctso/prebuilt/common/fonts/DroidSans.ttf:system/fonts/DroidSans.ttf \
    vendor/ctso/prebuilt/common/fonts/DroidSans-Bold.ttf:system/fonts/DroidSans-Bold.ttf
