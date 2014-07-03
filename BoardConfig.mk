-include vendor/lge/p500/BoardConfigVendor.mk
-include device/lge/msm7x27-common/BoardConfigCommon.mk

BOARD_KERNEL_CMDLINE := mem=471M console=ttyMSM2,115200n8 androidboot.hardware=p500 no_console_suspend
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000

# Don't include charger detection in recovery mode
ifneq (eng,$(TARGET_BUILD_VARIANT))
TARGET_KERNEL_CONFIG := cyanogenmod_p500_defconfig
BOARD_CHARGING_CMDLINE_NAME := "lge.reboot"
BOARD_CHARGING_CMDLINE_VALUE := "pwroff"
else
TARGET_KERNEL_CONFIG := cyanogenmod_p500_recovery_defconfig
MINIGZIP := $(shell which lzma)
endif

TARGET_BOOTLOADER_BOARD_NAME := p500
TARGET_OTA_ASSERT_DEVICE := thunderg,p500
TARGET_RECOVERY_FSTAB := device/lge/p500/fstab.p500

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/p500/bluetooth

