#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from tonga device
$(call inherit-product, device/motorola/tonga/device.mk)

PRODUCT_DEVICE := tonga
PRODUCT_NAME := omni_tonga
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g power (2022)
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="tonga_g-user 11 RRQS31.Q3-68-140-2 911d6 release-keys"

BUILD_FINGERPRINT := motorola/tonga_g/tonga:11/RRQS31.Q3-68-140-2/911d6:user/release-keys
