#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from KJ7 device
$(call inherit-product, device/tecno/KJ7/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_DEVICE := KJ7
PRODUCT_NAME := lineage_KJ7
PRODUCT_BRAND := TECNO
PRODUCT_MANUFACTURER := TECNO
PRODUCT_MODEL := TECNO KJ7

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_SYSTEM_DEVICE := TECNO-KJ7
PRODUCT_SYSTEM_NAME := KJ7-OP

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sys_tssi_64_armv82_tecno-user 14 UP1A.231005.007 720975 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := TECNO/KJ7-OP/TECNO-KJ7:14/UP1A.231005.007/241015V2025:user/release-keys
