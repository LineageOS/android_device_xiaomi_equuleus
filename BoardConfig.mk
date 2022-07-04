#
# Copyright (C) 2019-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm845-common
include device/xiaomi/sdm845-common/BoardConfigCommon.mk

BUILD_BROKEN_DUP_RULES := true

DEVICE_PATH := device/xiaomi/equuleus

# Assert
TARGET_OTA_ASSERT_DEVICE := equuleus

# Display
TARGET_SCREEN_DENSITY := 440

# Kernel
TARGET_KERNEL_CONFIG += vendor/xiaomi/equuleus.config

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# Fingerprint
TARGET_SURFACEFLINGER_UDFPS_LIB := //hardware/xiaomi:libudfps_extension.xiaomi
TARGET_USES_FOD_ZPOS := true

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Inherit from the proprietary version
include vendor/xiaomi/equuleus/BoardConfigVendor.mk
