#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from onclite device.
$(call inherit-product, device/xiaomi/onclite/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

TARGET_BOOT_ANIMATION_RES := 720

# Inherit some common CarbonROM stuff.
$(call inherit-product, vendor/carbon/config/common.mk)
$(call inherit-product, vendor/carbon/config/gsm.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := carbon_onclite
PRODUCT_DEVICE := onclite
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 7
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "xiaomi/onclite/onclite:9/PKQ1.181021.001/V10.3.4.0.PFLCNXM:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="onclite-user 9 PKQ1.181021.001 V10.3.4.0.PFLEUXM release-keys" \
    PRODUCT_NAME="onclite" \
    TARGET_DEVICE="onclite"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
