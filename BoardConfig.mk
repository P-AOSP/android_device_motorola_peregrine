#
# Copyright (C) 2014 The CyanogenMod Project
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

# inherit from common msm8226-common
-include device/motorola/msm8226-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/peregrine

# Vendor Unification Init
TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_msm
TARGET_LIBINIT_DEFINES_FILE := $(DEVICE_PATH)/init/init_peregrine.cpp

# Board
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Kernel
TARGET_KERNEL_CONFIG := peregrine_defconfig

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1157627904
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5930598400

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# inherit from the proprietary version
-include vendor/motorola/peregrine/BoardConfigVendor.mk
