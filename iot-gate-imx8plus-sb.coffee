deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

IOT_GATE_IMX8PLUS_UNPACK="Please check the readme or the image download modal in balena-cloud for flashing instructions"

postProvisioningInstructions = [
        instructions.BOARD_REPOWER
]
 
module.exports =
        version: 1
        slug: 'iot-gate-imx8plus-sb'
        name: 'Compulab IOT-GATE-iMX8PLUS 2G-4G DRAM secure boot variant'
        arch: 'aarch64'
        state: 'released'
 
        stateInstructions:
                postProvisioning: postProvisioningInstructions
 
        instructions: [
                IOT_GATE_IMX8PLUS_UNPACK
        ].concat(postProvisioningInstructions)

        gettingStartedLink:
                windows: 'http://docs.balena.io/iot-gate-imx8plus-sb/nodejs/getting-started/#adding-your-first-device'
                osx: 'http://docs.balena.io/iot-gate-imx8plus-sb/getting-started/#adding-your-first-device'
                linux: 'http://docs.balena.io/iot-gate-imx8plus-sb/getting-started/#adding-your-first-device'

        supportsBlink: false

        yocto:
                machine: 'iot-gate-imx8plus'
                image: 'balena-image-flasher'
                fstype: 'balenaos-img'
                version: 'yocto-kirkstone'
                deployArtifact: 'balena-image-flasher-iot-gate-imx8plus.balenaos-img'
                compressed: true

        options: [ networkOptions.group ]

        configuration:
                config:
                        partition:
                                primary: 1
                        path: '/config.json'

        initialization: commonImg.initialization
