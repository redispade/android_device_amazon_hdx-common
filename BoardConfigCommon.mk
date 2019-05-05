BOARD_VENDOR := amazon

# headers
TARGET_SPECIFIC_HEADER_PATH := device/amazon/hdx-common/include

# Platform
TARGET_BOARD_PLATFORM := msm8974
TARGET_BOARD_PLATFORM_GPU := qcom-adreno330
TARGET_BOOTLOADER_BOARD_NAME := MSM8974

# Bootloader
TARGET_NO_BOOTLOADER := true

# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait
ARCH_ARM_HAVE_TLS_REGISTER := true

# Amazon KitKat libraries have text relocations, don't error out when
# using them.  TODO: Look through each lib which generates this error
# and see if there are possible replacements using other device binaries
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true

# Kernel
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --tags_offset 0x01e00000
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_IMAGE_NAME := zImage

# Kernel config
TARGET_KERNEL_SOURCE := kernel/amazon/hdx-common
ifeq ($(TARGET_BUILD_VARIANT),eng)
TARGET_KERNEL_CONFIG ?= msm8974-hdx_defconfig
else
TARGET_KERNEL_CONFIG ?= msm8974-hdx-perf_defconfig
endif
TARGET_KERNEL_SELINUX_CONFIG := selinux_defconfig
TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-linux-androideabi-

# Flags
BOARD_NO_SECURE_DISCARD := true

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true
TARGET_USES_QCOM_BSP := true
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

TARGET_LD_SHIM_LIBS := /system/lib/libbinder.so|libshim_libbinder.so:/system/lib/liblog.so|libshim_liblog.so:/system/lib/libcutils.so|libshim_liblog.so:/system/vendor/lib/libwvm.so|libshim_libwvm.so:/system/bin/mpdecision|libshim_atomic.so

# Audio
BOARD_USES_ALSA_AUDIO := true
BOARD_USES_LEGACY_ALSA_AUDIO := false
# test
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
#AUDIO_FEATURE_ENABLED_INCALL_MUSIC := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
BOARD_USES_SEPERATED_AUDIO_INPUT := true
BOARD_USES_SEPERATED_VOICE_SPEAKER := true
AUDIO_FEATURE_ENABLED_FLUENCE := true
BOARD_USES_FLUENCE_INCALL := true
TARGET_USES_QCOM_COMPRESSED_AUDIO := true
BOARD_HAVE_LOW_LATENCY_AUDIO := true
TARGET_USES_QCOM_MM_AUDIO := true
AUDIO_FEATURE_ENABLED_SPKR_PROTECTION := true
#DOLBY_DDP := true
#AUDIO_FEATURE_ENABLED_SSR := true
# test

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BOARD_HAS_QCA_BT_AR3002 := true
QCOM_BT_USE_SMD_TTY := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/amazon/hdx-common/bluetooth

# chargers
BOARD_CHARGER_RES := device/amazon/hdx-common/charger

# Graphics
USE_OPENGL_RENDERER := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_OVERLAY := true
TARGET_USES_ION := true
TARGET_USES_NEW_ION_API := true
TARGET_DISPLAY_USE_RETIRE_FENCE := true
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

# camera HAL1
TARGET_HAS_LEGACY_CAMERA_HAL1 := true

# Surfaceflinger optimization for VD surfaces
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# Power
TARGET_HAS_LEGACY_POWER_STATS := true
TARGET_HAS_NO_WIFI_STATS := true
TARGET_USES_INTERACTION_BOOST := true

# Time services
BOARD_USES_QC_TIME_SERVICES := true

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# Charging mode
BOARD_CHARGING_MODE_BOOTING_LPM := 
BOARD_BATTERY_DEVICE_NAME := "bq27x41"

# Filesystem
TARGET_FS_CONFIG_GEN := device/amazon/hdx-common/config.fs
TARGET_HW_DISK_ENCRYPTION := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0xA00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0xA00000
TARGET_NOT_USE_GZIP_RECOVERY_RAMDISK := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1308622848
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12549323776
BOARD_CACHEIMAGE_PARTITION_SIZE := 1073741824
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072


# ATH6KL WLAN
BOARD_HAS_QCOM_WLAN                 := true
BOARD_HAS_ATH_WLAN_AR6004           := true
BOARD_CONFIG_ATH6KL_USB             := true
BOARD_HAS_CFG80211_KERNEL3_4        := true
BOARD_WLAN_DEVICE                   := qcwcn
WPA_SUPPLICANT_VERSION              := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER         := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB    := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER                := NL80211
BOARD_HOSTAPD_PRIVATE_LIB           := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
PRODUCT_VENDOR_MOVE_ENABLED         := true
WIFI_DRIVER_FW_PATH_STA             := "sta"
WIFI_DRIVER_FW_PATH_AP              := "ap"
WIFI_DRIVER_FW_PATH_P2P             := "p2p"
WIFI_DRIVER_FW_PATH_PARAM           := "/sys/module/wlan/parameters/fwpath"
WIFI_DRIVER_MODULE_PATH		        := "/system/vendor/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME             := "wlan"

# NFC
BOARD_HAVE_NFC := false

# Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 32
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/msm_dwc3/f9200000.dwc3/gadget/lun%d/file

# The backlight is controlled through the lights interface
# so this needs to stay commented out
#TARGET_PROVIDES_LIBLIGHT := true

# Temporary
USE_CAMERA_STUB := true

# CWM Recovery
TARGET_RECOVERY_FSTAB := device/amazon/hdx-common/rootdir/etc/fstab.qcom
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_USES_MMCUTILS := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true

# TWRP Recovery
RECOVERY_FSTAB_VERSION := 2
TARGET_RECOVERY_QCOM_RTC_FIX := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
RECOVERY_SDCARD_ON_DATA := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_CUSTOM_BATTERY_PATH := /sys/class/power_supply/bq27x41
TW_USE_TOOLBOX := true
TW_USE_TOYBOX := true
TW_EXCLUDE_SUPERSU := true
ifneq (,$(strip $(wildcard bootable/recovery-twrp/twrp.cpp)))
RECOVERY_VARIANT := twrp
endif

# hdx old bootloader dtb compatibility fix + bootloader signature exploit patch
BOARD_CUSTOM_BOOTIMG_MK := device/amazon/hdx-common/mkboot.mk

# SELinux policies
# qcom sepolicy
include device/qcom/sepolicy/sepolicy.mk
include device/qcom/sepolicy/legacy-sepolicy.mk

#BOARD_SEPOLICY_DIRS += \
#        device/amazon/hdx-common/sepolicy

MALLOC_SVELTE := true
