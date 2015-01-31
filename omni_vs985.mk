#
# Copyright 2015 The Android Open Source Project
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
#

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/cdma.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
    charger_res_images \
    charger

PRODUCT_COPY_FILES += \
    device/lge/vs985/kernel:kernel \
    device/lge/vs985/img_info:img_info \
    device/lge/vs985/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh \
    device/lge/vs985/sign:recovery/root/res/sign

PRODUCT_COPY_FILES += device/lge/vs985/twrp.fstab:recovery/root/fstab.g3
PRODUCT_COPY_FILES += device/lge/vs985/twrp.fstab:recovery/root/etc/twrp.fstab

PRODUCT_DEVICE := vs985
PRODUCT_NAME := omni_vs985
PRODUCT_BRAND := LG
PRODUCT_MODEL := LG-VS985
PRODUCT_MANUFACTURER := LG
