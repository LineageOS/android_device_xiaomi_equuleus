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

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# NFC
TARGET_USES_NQ_NFC := true

# Inherit from the proprietary version
-include vendor/xiaomi/equuleus/BoardConfigVendor.mk

# Sepolicy
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private
