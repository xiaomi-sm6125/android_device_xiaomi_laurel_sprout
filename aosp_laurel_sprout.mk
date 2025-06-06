#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit from laurel_sprout device
$(call inherit-product, device/xiaomi/laurel_sprout/device.mk)

# Andriod-One Flags
TARGET_SUPPORT_MINIMAL_GAPPS := true
TARGET_HAS_GEMENI_BOOTANIMATION := false
TARGET_BOOT_ANIMATION_RES := 720
TARGET_SUPPORT_LIVE_WALLPAPER := false
GMS_VOICE_MODEL_INCLUDED := false

PRODUCT_NAME := aosp_laurel_sprout
PRODUCT_DEVICE := laurel_sprout
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi A3

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Xiaomi/laurel_sprout/laurel_sprout:11/RKQ1.200903.002/V12.0.26.0.RFQMIXM:user/release-keys
