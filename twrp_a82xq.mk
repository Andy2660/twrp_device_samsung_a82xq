#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit some common Twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from a82xq device
$(call inherit-product, device/samsung/a82xq/device.mk)

PRODUCT_DEVICE := a82xq
PRODUCT_NAME := twrp_a82xq
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A826S
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a82xqskt-user 11 RP1A.200720.012 A826SKSU4EWE3 release-keys"

BUILD_FINGERPRINT := samsung/a82xqskt/a82xq:11/RP1A.200720.012/A826SKSU4EWE3:user/release-keys
