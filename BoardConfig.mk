#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm845-common
-include device/xiaomi/sdm845-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/equuleus

# Assert
TARGET_OTA_ASSERT_DEVICE := equuleus

# Kernel
TARGET_KERNEL_CONFIG := equuleus_defconfig

# Inherit from the proprietary version
-include vendor/xiaomi/equuleus/BoardConfigVendor.mk
