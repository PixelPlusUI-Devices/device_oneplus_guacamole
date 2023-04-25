#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from guacamole device
$(call inherit-product, device/oneplus/guacamole/device.mk)

# Inherit some common PixelExperience stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Call Oneplus firmware
$(call inherit-product, vendor/oneplus/firmware/Android.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_guacamole
PRODUCT_DEVICE := guacamole
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_MODEL := GM1913
PRODUCT_BRAND := OnePlus
CUSTOM_DEVICE := OnePlus7Pro

PRODUCT_SYSTEM_NAME := OnePlus7Pro
PRODUCT_SYSTEM_DEVICE := OnePlus7Pro
PRODUCT_GMS_CLIENTID_BASE := android-oneplus

# PixelPlusUI Official Props
CUSTOM_BUILD_TYPE := OFFICIAL
IS_PHONE := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
PPUI_MAINTAINER := Master
TARGET_SUPPORTS_QUICK_TAP  := true
TARGET_BUILD_APERTURE_CAM  := true
TARGET_USES_AOSP_RECOVERY := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true

# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440
TARGET_BOOT_ANIMATION_RES := 1440

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)
