# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit ROM configuration
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/omni/config/branding.mk)
$(call inherit-product, device/google/marlin/device-extra.mk)

# Inherit device configuration
$(call inherit-product, device/google/marlin/aosp_marlin.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_marlin
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel XL
TARGET_MANUFACTURER := HTC
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=marlin \
    PRIVATE_BUILD_DESC="marlin-user 10 QP1A.191005.007.A1 5908163 release-keys"

BUILD_FINGERPRINT := google/marlin/marlin:10/QP1A.191005.007.A1/5908163:user/release-keys

$(call inherit-product-if-exists, vendor/google/marlin/marlin-vendor.mk)
