inherit balena-bootloader

DEPENDS += "rsync-native"

BALENA_DEFCONFIG_NAME = "iot-gate-imx8plus_defconfig"

SRC_URI:append = " \
    file://arm64-kexec_file-use-more-system-keyrings-to-verify-.patch \
    file://kexec-KEYS-make-the-code-in-bzImage64_verify_sig-gen.patch \
"

PACKAGESPLITFUNCS:remove = "split_kernel_module_packages"

# Fixes issue where cryptodev module is installed
# along with the kernel image in the initramfs
KERNEL_PACKAGE_NAME="kernel"

KERNEL_CONFIG:remove:iot-gate-imx8plus-d1d8 = "iot-gate-imx8plus-d1d8_defconfig"
KERNEL_CONFIG:prepend:iot-gate-imx8plus-d1d8 = "iot-gate-imx8plus_defconfig "

BALENA_CONFIGS:append = " imx-sdma "
BALENA_CONFIGS[imx-sdma] = " \
	CONFIG_IMX_SDMA=m \
"

# Ensure this module isn't built-in
BALENA_CONFIGS:append = " cf80211 "
BALENA_CONFIGS[cf80211] = " \
	CONFIG_CFG80211=m \
"

# Fixes module loading
SCMVERSION="n"

# The merge config performed by the BSP
# overrides the balena OS config elements,
# let's remove it and reinstate it before
# meta-balena injects balena config elements
do_merge_config () {
    echo "Override BSP merge defconfig"
}

# This function was named do_merge_config
# in the BSP kernel recipe. We moved it here
# to ensure it executes before balena configs
# are injected and not after.
do_merge_config_before_resin_inject () {
    configs=arch/arm64/configs
    cp ${S}/${configs}/${MACHINE}_defconfig ${S}/${configs}/compulab_defconfig
    echo "# CONFIG_MACHINE_STUB is not set " > ${WORKDIR}/CONFIG_MACHINE_STUB.cfg
    ${S}/scripts/kconfig/merge_config.sh  -O ${S}/${configs}/ -m ${S}/${configs}/${MACHINE}_defconfig ${WORKDIR}/*.cfg
    mv ${S}/${configs}/.config ${S}/${configs}/${MACHINE}_defconfig
    oe_runmake ${MACHINE}_defconfig
    mv ${S}/${configs}/compulab_defconfig ${S}/${configs}/${MACHINE}_defconfig
    cp ${S}/${configs}/${MACHINE}_defconfig ${}
}

addtask do_merge_config_before_resin_inject after do_configure before kernel_resin_injectconfig

BALENA_CONFIGS_DEPS[secureboot] += " \
    CONFIG_MODULE_SIG_FORMAT=y \
    CONFIG_PKCS7_MESSAGE_PARSER=y \
    CONFIG_SYSTEM_DATA_VERIFICATION=y \
    CONFIG_SIGNED_PE_FILE_VERIFICATION=y \
"

BALENA_CONFIGS[secureboot] += " \
    CONFIG_KEXEC_IMAGE_VERIFY_SIG=y \
"

BALENA_CONFIGS[misc] += " \
    CONFIG_NLS_ISO8859_1=y \
"

BALENA_CONFIGS[i2c] += " \
    CONFIG_FSL_QIXIS=n \
"

do_install:append() {
    # Module support is needed as a dependency for kexec image authentication
    # specifically CONFIG_SYSTEM_DATA_VERIFICATION
    # But we remove modules here
    rm -rf ${D}/etc ${D}/lib ${D}/usr
}

do_deploy:append () {
    BOOTENV_FILE="${DEPLOYDIR}/${KERNEL_PACKAGE_NAME}/bootenv"
    grub-editenv "${BOOTENV_FILE}" create
    grub-editenv "${BOOTENV_FILE}" set "resin_root_part=A"
    grub-editenv "${BOOTENV_FILE}" set "bootcount=0"
    grub-editenv "${BOOTENV_FILE}" set "upgrade_available=0"
}

do_deploy[depends] += " grub-native:do_populate_sysroot"

INITRAMFS_IMAGE = "balena-image-bootloader-initramfs"

KERNEL_PACKAGE_NAME = "balena-bootloader"

PROVIDES = "virtual/balena-bootloader"

# shrink size by removing unneeded functionality in balena-bootloader so we have enough space in the boot partition
BALENA_CONFIGS:append = "shrink_size"
BALENA_CONFIGS[shrink_size] = " \
	CONFIG_CHROME_PLATFORMS=n \
	CONFIG_MFD_CORE=n \
	CONFIG_NEW_LEDS=n \
	CONFIG_PPS=n \
	CONFIG_VFIO=n \
"
