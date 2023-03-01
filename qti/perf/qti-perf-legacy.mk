# Copyright (C) 2022 Paranoid Android
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

TARGET_BOARD_PLATFORM := msmnile

DEVICE_PATH := device/oneplus/guacamole/qti

PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)/perf

# Configs
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(DEVICE_PATH)/perf/configs/,$(TARGET_COPY_OUT_VENDOR)/etc)
    
# Packages
PRODUCT_PACKAGES += \
    vendor.qti.hardware.perf@2.2.vendor
    android.hardware.power.stats@1.0-service.mock \
    android.hardware.thermal@2.0.vendor \
    init.aospa.perf.rc \
    libavservices_minijail.vendor \
    libpsi.vendor \
    libtflite \
    vendor.qti.hardware.servicetracker@1.2.vendor \
    android.hardware.thermal@2.0 \
    libavservices_minijail

# Boot Jars
PRODUCT_BOOT_JARS += \
    QPerformance \
    UxPerformance
    
# Properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.perf-hal.ver=2.2 \
    ro.vendor.extension_library=libqti-perfd-client.so \
    ro.vendor.perf.scroll_opt=true \
    ro.vendor.qspm.enable=true \
    vendor.power.pasr.enabled=true \
    vendor.pasr.activemode.enabled=true

# Power Hals
$(call inherit-product, vendor/qcom/opensource/power/power-vendor-product.mk)
