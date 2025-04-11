FILESEXTRAPATHS:prepend := "${THISDIR}/linux-compulab:"
inherit kernel-resin

DEPENDS += "rsync-native"

SRC_URI:append = " \
    file://0001-fix-kernel-build.patch \
    file://soc-imx8m-Enable-OCOTP-clock-before-reading-the-regi.patch \
    file://soc-imx8m-Fix-incorrect-check-for-of_clk_get_by_name.patch \
    file://soc-imx8m-Enable-OCOTP-clock-for-imx8mm-before-readi.patch \
    file://0055-compulab-iot-gate-imx8plus-add-support-for-TPM.patch  \
"

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

# meta-bsp-imx8mp explicitly packages for /lib so let's also append the path set by nonarch_base_libdir for future use of usrmerge
FILES:${KERNEL_PACKAGE_NAME}-modules += "${nonarch_base_libdir}/modules/"
