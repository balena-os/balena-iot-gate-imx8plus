deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

IOT_GATE_IMX8PLUS_UNPACK = 'Unpack the downloaded balenaOS image and extract the file imx-boot-iot-gate-imx8plus-sd.bin-flash_evk from the resin-boot partition.'
IOT_GATE_IMX8PLUS_IMXBOOT = 'Download <a href="https://github.com/balena-os/balena-iot-gate-imx8plus/raw/master/imx-boot_4g">imx-boot_4g</a> from the <a href="https://github.com/balena-os/balena-iot-gate-imx8plus">balena-iot-gate-imx8plus<a/> repository.'
IOT_GATE_IMX8PLUS_UUU = 'Connect the debug UART and PROG ports to your PC. Use <a href="https://github.com/nxp-imx/mfgtools">uuu</a> to load imx-boot_4g on your device and then interrupt u-boot in cmdline. You can skip using uuu if your device already runs an u-boot that has console access and the ums command enabled.'
IOT_GATE_IMX8PLUS_FLASH_UBOOT = 'Mount the device\'s boot partition using \'ums 0 mmc 2.1\' and write imx-boot-iot-gate-imx8plus-sd.bin-flash_evk extracted at step 2 to this partition. The binary should be written at offset 0.'
IOT_GATE_IMX8PLUS_FLASH_IMAGE = 'Mount the device\'s eMMC from u-boot using \'ums 0 mmc 2\' and write the downloaded balenaOS image to it.'
IOT_GATE_IMX8PLUS_ETCHER = 'We recommend using <a href=http://www.etcher.io/>Etcher</a> for flashing the bootloader and the operating system image to the device. If other flashing tools are used, ensure that the drives are properly synced after the images have been flashed.'
postProvisioningInstructions = [
        instructions.BOARD_REPOWER
]
 
module.exports =
        version: 1
        slug: 'iot-gate-imx8plus'
        name: 'Compulab IOT-GATE-iMX8PLUS 4GB'
        arch: 'aarch64'
        state: 'released'
 
        stateInstructions:
                postProvisioning: postProvisioningInstructions
 
        instructions: [
                IOT_GATE_IMX8PLUS_UNPACK
                IOT_GATE_IMX8PLUS_IMXBOOT
                IOT_GATE_IMX8PLUS_UUU
                IOT_GATE_IMX8PLUS_FLASH_UBOOT
                IOT_GATE_IMX8PLUS_FLASH_IMAGE
                IOT_GATE_IMX8PLUS_ETCHER
        ].concat(postProvisioningInstructions)

        gettingStartedLink:
                windows: 'http://docs.balena.io/iot-gate-imx8plus/nodejs/getting-started/#adding-your-first-device'
                osx: 'http://docs.balena.io/iot-gate-imx8plus/getting-started/#adding-your-first-device'
                linux: 'http://docs.balena.io/iot-gate-imx8plus/getting-started/#adding-your-first-device'

        supportsBlink: false

        yocto:
                machine: 'iot-gate-imx8plus'
                image: 'balena-image'
                fstype: 'balenaos-img'
                version: 'yocto-kirkstone'
                deployArtifact: 'balena-image-iot-gate-imx8plus.balenaos-img'
                compressed: true

        options: [ networkOptions.group ]

        configuration:
                config:
                        partition:
                                primary: 1
                        path: '/config.json'

        initialization: commonImg.initialization
