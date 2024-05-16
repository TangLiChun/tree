# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk) # vab加载到vendor boot里使用

# Inherit from TWRP product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Device specific configs
$(call inherit-product, device/xiaomi/peridot/device.mk)

PRODUCT_DEVICE := peridot
PRODUCT_NAME := twrp_peridot
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 24069RA21C
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="peridot-user 14 UKQ1.240116.001 V816.0.11.0.UNPCNXM release-keys"

BUILD_FINGERPRINT := Redmi/peridot/peridot:14/UKQ1.240116.001/V816.0.11.0.UNPCNXM:user/release-keys
