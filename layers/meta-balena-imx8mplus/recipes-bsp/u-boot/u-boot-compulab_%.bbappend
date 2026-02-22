FILESEXTRAPATHS:prepend := "${THISDIR}/patches:${THISDIR}/imx8mp:"

UBOOT_KCONFIG_SUPPORT = "1"
inherit resin-u-boot
DEPENDS = "bison-native"

BALENA_DEVICE_FDT_ADDR_VAR ?= "fdt_addr_r"

BALENA_STAGE2 = "balena_stage2"
UBOOT_VARS += "BALENA_STAGE2"

SRC_URI:remove = "git://source.codeaurora.org/external/imx/uboot-imx.git;protocol=https;branch=${SRCBRANCH}"
SRC_URI:append = "git://github.com/nxp-imx/uboot-imx.git;protocol=https;branch=${SRCBRANCH}"
SRC_URI:append = " \
	file://0001-board-compulab-imx8mp-Update-the-supported-dram-list.patch \
	file://0001-Revert-remove-include-config_defaults.h.patch \
	file://0001-iot-gate-imx8plus-Increase-default-ENV-size.patch \
  file://0003-integrate-with-balenaOS.patch \
	file://0004-board-compulab-im8mp-ddr-Expand-Samsung-support-with.patch \
	file://0005-board-compulab-im8mp-ddr-Add-Kingston-0xff070010-for.patch \
"

SRC_URI:remove:iot-gate-imx8plus-d1d8 = "file://d2d4.cfg"
SRC_URI:append:iot-gate-imx8plus-d1d8 = "file://d1d8.cfg"

# meta-bsp-imx8mp uses ${MACHINE}_defconfig, but because
# we use a separate machine for the seconday DRAM configuration
# and no defconfig exists for it, we have to replace ${MACHINE} with the
# base machine in our layer
do_merge_config () {
    cd ${S}
    cp ${S}/configs/iot-gate-imx8plus_defconfig ${S}/configs/compulab_defconfig
    ${S}/scripts/kconfig/merge_config.sh  -O ${S}/configs/ -m ${S}/configs/iot-gate-imx8plus_defconfig ${WORKDIR}/*.cfg
    mv ${S}/configs/.config ${S}/configs/iot-gate-imx8plus_defconfig
    cd -
    oe_runmake iot-gate-imx8plus_defconfig
    mv ${S}/configs/compulab_defconfig ${S}/configs/iot-gate-imx8plus_defconfig
}

# Bring in configure step from poky
# to make sure the merge_config script is called
# appropriately, otherwise the build will fail
do_configure () {
    cp ${S}/scripts/kconfig/merge_config.sh ${B}/
    if [ -n "${UBOOT_CONFIG}" ]; then
        unset i j
        for config in ${UBOOT_MACHINE}; do
            i=$(expr $i + 1);
            for type in ${UBOOT_CONFIG}; do
                j=$(expr $j + 1);
                if [ $j -eq $i ]; then
                    oe_runmake -C ${S} O=${B}/${config} ${config}
                    if [ -n "${@' '.join(find_cfgs(d))}" ]; then
                        ./merge_config.sh -m -O ${B}/${config} ${B}/${config}/.config ${@" ".join(find_cfgs(d))}
                        oe_runmake -C ${S} O=${B}/${config} oldconfig
                    fi
                fi
            done
            unset j
        done
        unset i
        DEVTOOL_DISABLE_MENUCONFIG=true
    else
        if [ -n "${UBOOT_MACHINE}" ]; then
            oe_runmake -C ${S} O=${B} ${UBOOT_MACHINE}
        else
            oe_runmake -C ${S} O=${B} oldconfig
        fi
        merge_config.sh -m .config ${@" ".join(find_cfgs(d))}
        cml1_do_configure
    fi
}

do_unpack[nostamp]="1"
do_patch[nostamp]="1"
do_configure[nostamp] = "1"
do_compile[nostamp] = "1"
