#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from oplus6893 device
$(call inherit-product, device/alps/oplus6893/device.mk)

PRODUCT_DEVICE := oplus6893
PRODUCT_NAME := twrp_oplus6893
PRODUCT_BRAND := alps
PRODUCT_MODEL := oplus6893
PRODUCT_MANUFACTURER := alps

PRODUCT_GMS_CLIENTID_BASE := android-alps

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_oplus6893-user 11 RP1A.200720.011 1647312187421 release-keys"

BUILD_FINGERPRINT := alps/vnd_oplus6893/oplus6893:11/RP1A.200720.011/1647312187421:user/release-keys
