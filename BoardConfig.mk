# Copyright (C) 2007 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

include device/samsung/msm7x27-common/BoardConfigCommon.mk

## Graphics
TARGET_DISABLE_TRIPLE_BUFFERING := true

## Kernel, bootloader
BOARD_KERNEL_BASE := 0x13600000
TARGET_BOOTLOADER_BOARD_NAME := callisto
TARGET_KERNEL_CONFIG := callisto_defconfig
TARGET_OTA_ASSERT_DEVICE := callisto,GT-I5510

## Camera FC hack
CAMERA_FC_HACK := true

## Recovery
BOARD_BML_BOOT := /dev/block/bml9
BOARD_BML_RECOVERY := /dev/block/bml10
BOARD_LDPI_RECOVERY := true
BOARD_USE_CUSTOM_RECOVERY_FONT := "<font_7x16.h>"
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/callisto/recovery/recovery_ui.c
BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/callisto/recovery/graphics.c
TARGET_RECOVERY_INITRC := device/samsung/callisto/recovery/recovery.rc
TARGET_RECOVERY_FSTAB := device/samsung/callisto/recovery/recovery.fstab

SMALLER_FONT_FOOTPRINT := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/callisto/bluetooth

