FILESEXTRAPATHS:prepend := "${THISDIR}/patches:${THISDIR}/imx8mp:"

UBOOT_KCONFIG_SUPPORT = "1"
inherit resin-u-boot
DEPENDS = "bison-native"

SRC_URI:remove = "file://resin-specific-env-integration-kconfig.patch"
SRC_URI:append = " \
	file://0001-Revert-remove-include-config_defaults.h.patch \
	file://0002-rework-Integrate-machine-independent-resin-environme.patch \
	file://0003-integrate-with-balenaOS.patch \
	file://0004-skip-running-bootcmd-mfg.patch \
	file://0005-configs-Boot-balena-directly.patch \
        file://d2d4.cfg \
"

# Ensure the correct dram conf is applied everywhere
DRAM_CONF="d2d4"
dram_conf="d2d4"

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

do_configure[nostamp] = "1"
do_compile[nostamp] = "1"
