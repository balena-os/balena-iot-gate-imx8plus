FILESEXTRAPATHS:prepend := "${THISDIR}/linux-compulab:"
inherit kernel-resin

DEPENDS += "rsync-native"

SRC_URI:append = "file://0001-linux-compulab-Don-t-switch-overlayfs-as-module-from.patch"

# Fixes issue where cryptodev module is installed
# along with the kernel image in the initramfs
KERNEL_PACKAGE_NAME="kernel"

BALENA_CONFIGS:append = " imx-sdma "
BALENA_CONFIGS[imx-sdma] = " \
	CONFIG_IMX_SDMA=m \
	CONFIG_EFI_STUB=n \
	CONFIG_EFI=n \
"

# Ensure this module isn't built-in
BALENA_CONFIGS:append = " cf80211 "
BALENA_CONFIGS[cf80211] = " \
	CONFIG_CFG80211=m \
"

# We don't load grub with u-boot, instead
# balenaOS u-boot loads the kernel directly
BALENA_CONFIGS:append = " noefi "
BALENA_CONFIGS[noefi] = " \
	CONFIG_EFI_STUB=n \
	CONFIG_EFI=n \
"
