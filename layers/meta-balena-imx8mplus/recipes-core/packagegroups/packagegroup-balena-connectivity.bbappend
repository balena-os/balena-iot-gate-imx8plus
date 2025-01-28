CONNECTIVITY_FIRMWARES:append = " \
    linux-firmware-ibt-20 \
    linux-firmware-iwlwifi-ty-a0 \
    linux-firmware-ibt-41-41 \
"

# Fixes: nothing provides linux-firmware-bcm43143 needed by packagegroup-balena-connectivity-1.0-r0.all
CONNECTIVITY_FIRMWARES:remove = " \
    linux-firmware-bcm43143 \
"
