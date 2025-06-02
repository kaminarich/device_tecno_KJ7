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

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=KJ7 \
    RisingMaintainer="kaminarich"
    RisingChipset="Helio G99 Ultimate" \
    BuildDesc="sys_tssi_64_armv82_tecno-user 14 UP1A.231005.007 720975 release-keys" \
    BuildFingerprint=TECNO/KJ7-OP/TECNO-KJ7:14/UP1A.231005.007/241015V2025:user/release-keys \
    SystemDevice=TECNO-KJ7 \
    SystemName=KJ7-OP


RISING_MAINTAINER := kaminarich
TARGET_ENABLE_BLUR := true
PRODUCT_NO_CAMERA := false
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := false
TARGET_SUPPORT_QUICK_TAP := true
TARGET_HAS_UDFPS := false
TARGET_USE_GOOGLE_TELEPHONY := true
