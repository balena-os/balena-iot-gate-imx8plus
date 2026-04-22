CONNECTIVITY_FIRMWARES:append = " \
    linux-firmware-iwlwifi-ty-a0 \
"

# Fixes: nothing provides linux-firmware-bcm43143 needed by packagegroup-balena-connectivity-1.0-r0.all
CONNECTIVITY_FIRMWARES:remove = " \
    linux-firmware-bcm43143 \
"
