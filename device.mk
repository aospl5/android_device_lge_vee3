#
# Copyright (C) 2015 The CyanogenMod Project
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

# This file includes all definitions that apply to ALL L3 II devices.
#
# Everything in this directory will become public

LOCAL_PATH := device/lge/vee3

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product, vendor/lge/vee3/vee3-vendor.mk)

$(call inherit-product, vendor/lge/msm7x27a-common/msm7x27a-common-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

PRODUCT_AAPT_CONFIG := normal ldpi mdpi nodpi
PRODUCT_AAPT_PREF_CONFIG := ldpi

ifeq ($(RECOVERY_VARIANT),omni)
	PRODUCTY_COPY_FILES += $(LOCAL_PATH)/recovery/twrp.fstab:recovery/root/etc/twrp.fstab
endif

# Stock Charger
PRODUCT_PACKAGES += \
    chargerlogo \
    battery_charging_01.png \
    battery_charging_02.png \
    battery_charging_03.png \
    battery_charging_04.png \
    battery_charging_05.png \
    battery_charging_06.png \
    battery_charging_07.png \
    battery_charging_08.png \
    battery_charging_bg.png \
    battery_charging_complete.png \
    battery_charging_warning.png \
    battery_charging_warning_eng_1.png \
    battery_charging_warning_eng_2.png \
    battery_trickle_ani_01.png \
    battery_trickle_ani_02.png \
    battery_wait_ani_01.png \
    battery_wait_ani_01.png \

# Rootdir
PRODUCT_PACKAGES += \
    fstab.vee3 \
    init.vee3.rc \
    ueventd.vee3.rc \
    init.qcom.usb.rc \
    init.qcom.usb.sh \
    init.qcom.class_main.sh \
    init.qcom.sh \

# Configs
PRODUCT_PACKAGES += \
    7k_handset.kl \
    touch_mcs8000.kl \
    vee3_keypad.kl \

# Audio Files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/AudioFilter.csv:system/etc/AudioFilter.csv \
    $(LOCAL_PATH)/configs/audio/audio_policy.conf:system/etc/audio_policy.conf \

# Media Files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_profiles.xml:system/etc/media_profiles.xml \

# SoftAP files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/hostapd/hostapd.accept:system/etc/hostapd/hostapd.accept \
    $(LOCAL_PATH)/configs/hostapd/hostapd.deny:system/etc/hostapd/hostapd.deny \
    $(LOCAL_PATH)/configs/hostapd/hostapd_default.conf::system/etc/hostapd/hostapd_default.conf \

# Permission files
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \

# Display HALS
PRODUCT_PACKAGES += \
    copybit.msm7x27a \
    gralloc.msm7x27a \
    hwcomposer.msm7x27a \
    memtrack.msm7x27a \
    libc2dcolorconvert \
    liboverlay \
    libmemalloc \
    libtilerenderer \
    libgenlock \
    libqdutils \
    libqdMetaData \

# Video
PRODUCT_PACKAGES += \
    libI420colorconvert \
    libstagefrighthw \
    libmm-omxcore \
    libOmxCore \
    libdashplayer \
    libOmxVdec \
    libOmxVenc \
    qcmediaplayer \

# Off-mode Charging
PRODUCT_PACKAGES += \
    charger \
    charger_res_images \

# Gps
PRODUCT_PACKAGES += \
    gps.msm7x27a \

# Power Hal
PRODUCT_PACKAGES += \
    power.msm7x27a \

# BT
PRODUCT_PACKAGES += \
    libbt-vendor \

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    setup_fs \

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \

# Audio
PRODUCT_PACKAGES += \
    libaudioutils \
    audio.a2dp.default \
    audio.usb.default \
    audio.primary.msm7x27a \
    audio_policy.msm7x27a \
    libaudio-resampler \

# Light HAL
PRODUCT_PACKAGES += \
    lights.msm7x27a \

# Camera Hal
PRODUCT_PACKAGES += \
    camera.msm7x27a \

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    libQWiFiSoftApCfg \
    libqcomvoiceprocessing \

# Build Sim ToolKit
PRODUCT_PACKAGES += \
    Stk \
