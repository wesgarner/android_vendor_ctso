# Inherit cyanogenmod configurations
$(call inherit-product, vendor/cyanogen/products/cyanogen_vision.mk)
$(call inherit-product, vendor/ctso/products/mau5.mk)

PRODUCT_NAME := mau5_passion

# Reorder Product Overlays to properly include theme specific stuff before
# anything else
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/vision
