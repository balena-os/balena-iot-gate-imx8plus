DESCRIPTION = "remoteproc-runtime hostapp extension for BalenaOS"
LICENSE = "MIT"

inherit balena-hostapp-extension

IMAGE_INSTALL = "containerd-shim-remoteproc"

PREFERRED_RPROVIDER_virtual-containerd = "balena"

HOSTAPP_EXTENSION_LABEL_CLASS = "overlay"
# Set priority so BalenaOS mounts this overlay in the correct order
HOSTAPP_EXTENSION_LABEL_OVERRIDE = "10"
HOSTAPP_EXTENSION_LABEL_REQUIRES_REBOOT = "1"

# 1. Prevent BitBake from installing kernel images, DTBs, or kernel modules
RDEPENDS:${PN}:remove = "kernel-image kernel-devicetree"
RRECOMMENDS:${PN}:remove = "kernel-base kernel-modules"
IMAGE_INSTALL:remove = "kernel-image kernel-devicetree"

# Strip down standard OS overhead
IMAGE_LINGUAS = ""
VIRTUAL-RUNTIME_init_manager = ""
INITRAMFS_IMAGE = ""
IMAGE_FSTYPES = "tar.gz"

# Wrap BOTH the shim and runtime so any entrypoint gets the RAM-disk environment
setup_extension_binaries() {
    # 1. Wrap the containerd shim (This is what balena-engine actually invokes first!)
    if [ -f "${IMAGE_ROOTFS}/usr/bin/containerd-shim-remoteproc-v1" ] && [ ! -f "${IMAGE_ROOTFS}/usr/bin/containerd-shim-remoteproc-v1.bin" ]; then
        mv ${IMAGE_ROOTFS}/usr/bin/containerd-shim-remoteproc-v1 ${IMAGE_ROOTFS}/usr/bin/containerd-shim-remoteproc-v1.bin
        
        cat << 'EOF' > ${IMAGE_ROOTFS}/usr/bin/containerd-shim-remoteproc-v1
#!/bin/sh
export HOME=/tmp
export XDG_RUNTIME_DIR=/run
export XDG_DATA_HOME=/tmp
exec /usr/bin/containerd-shim-remoteproc-v1.bin "$@"
EOF
        chmod 0755 ${IMAGE_ROOTFS}/usr/bin/containerd-shim-remoteproc-v1
    fi

    # 2. Point balena- auto-discovery symlink to our new wrapper
    ln -sf containerd-shim-remoteproc-v1 ${IMAGE_ROOTFS}/usr/bin/balena-containerd-shim-remoteproc-v1

    # 3. Wrap remoteproc-runtime just in case
    if [ -f "${IMAGE_ROOTFS}/usr/bin/remoteproc-runtime" ] && [ ! -f "${IMAGE_ROOTFS}/usr/bin/remoteproc-runtime.bin" ]; then
        mv ${IMAGE_ROOTFS}/usr/bin/remoteproc-runtime ${IMAGE_ROOTFS}/usr/bin/remoteproc-runtime.bin
        
        cat << 'EOF' > ${IMAGE_ROOTFS}/usr/bin/remoteproc-runtime
#!/bin/sh
export HOME=/tmp
export XDG_RUNTIME_DIR=/run
export XDG_DATA_HOME=/tmp
exec /usr/bin/remoteproc-runtime.bin "$@"
EOF
        chmod 0755 ${IMAGE_ROOTFS}/usr/bin/remoteproc-runtime
    fi
}

ROOTFS_POSTPROCESS_COMMAND += "setup_extension_binaries; "

# 3. Clean up standard Yocto clutter before docker import runs
cleanup_extension_rootfs() {
    # Remove top-level rootfs noise, keeping ONLY /usr
    rm -rf ${IMAGE_ROOTFS}/etc \
           ${IMAGE_ROOTFS}/var \
           ${IMAGE_ROOTFS}/tmp \
           ${IMAGE_ROOTFS}/dev \
           ${IMAGE_ROOTFS}/boot \
           ${IMAGE_ROOTFS}/home \
           ${IMAGE_ROOTFS}/media \
           ${IMAGE_ROOTFS}/mnt \
           ${IMAGE_ROOTFS}/proc \
           ${IMAGE_ROOTFS}/run \
           ${IMAGE_ROOTFS}/srv \
           ${IMAGE_ROOTFS}/sys \
           ${IMAGE_ROOTFS}/lib/modules

    # 2. Remove all non-essential /usr subdirectories
    rm -rf ${IMAGE_ROOTFS}/usr/lib \
           ${IMAGE_ROOTFS}/usr/libexec \
           ${IMAGE_ROOTFS}/usr/include \
           ${IMAGE_ROOTFS}/usr/share \
           ${IMAGE_ROOTFS}/usr/src
}

IMAGE_PREPROCESS_COMMAND += "cleanup_extension_rootfs;"
# 2. Append (with space) to force execution AFTER all default balenaOS/Yocto postprocess functions
#ROOTFS_POSTPROCESS_COMMAND:append = " cleanup_extension_rootfs; "


# Prevent NXP BSP classes from pulling in OP-TEE
MACHINE_FEATURES:remove = "optee"
COMBINED_FEATURES:remove = "optee"
