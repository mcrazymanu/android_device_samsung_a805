#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Inherit from r1q device
$(call inherit-product, device/samsung/r1q/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_r1q
PRODUCT_DEVICE := r1q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A805
PRODUCT_MANUFACTURER := samsung

BUILD_FINGERPRINT := "samsung/r1qxx/a80:11/RP1A.200720.012/A805FXXU6DVF1:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="r1qxx-user 11 RP1A.200720.012 A805FXXU6DVF1 release-keys" \
    PRODUCT_NAME="a80" \
    TARGET_DEVICE="r1q"

PRODUCT_GMS_CLIENTID_BASE := android-samsung
