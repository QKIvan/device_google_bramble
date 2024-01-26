# Inherit some common stuff.
$(call inherit-product, vendor/hentai/build/product/hentai_product.mk)

# Inherit some common hentaiOS stuff.
$(call inherit-product, vendor/hentai/config/common_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/google/bramble/device-calyx.mk)
$(call inherit-product, device/google/redbull/device-calyx.mk)
$(call inherit-product, device/google/bramble/aosp_bramble.mk)

## Device identifier. This must come after all inclusions
DISABLE_ARTIFACT_PATH_REQUIREMENTS := true
PRODUCT_NAME := hentai_bramble
PRODUCT_MODEL := Pixel 4a (5G)
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=bramble \
    PRIVATE_BUILD_DESC="bramble-user 14 UP1A.231105.001 10817346 release-keys"

BUILD_FINGERPRINT := google/bramble/bramble:14/UP1A.231105.001/10817346:user/release-keys

PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product, vendor/google/bramble/bramble-vendor.mk)
