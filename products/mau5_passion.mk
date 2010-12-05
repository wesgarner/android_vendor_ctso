# Inherit cyanogenmod configurations
$(call inherit-product, vendor/cyanogen/products/cyanogen_passion.mk)
$(call inherit-product, vendor/ctso/products/mau5_common.mk)

PRODUCT_NAME := mau5_passion

PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/lib/librilswitch.so \
    rilswitch.vendorlibpath=/system/lib/libhtc_ril.so \
    rilswitch.ganlibpath=/system/lib/libganril.so

PRODUCT_COPY_FILES += \
    vendor/ctso/prebuilt/passion/lib/libganril.so:system/lib/libganril.so \
    vendor/ctso/prebuilt/passion/lib/libhtc_ril.so:system/lib/libhtc_ril.so \
    vendor/ctso/prebuilt/passion/lib/libkineto.so:system/lib/libkineto.so \
    vendor/ctso/prebuilt/passion/lib/librilswitch.so:system/lib/librilswitch.so \
