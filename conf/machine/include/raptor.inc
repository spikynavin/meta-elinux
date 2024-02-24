#Custom configure for machine raptor based on rasberry pi 3b+ board

TARGET_ARCH = "aarch64"

TOOLCHAIN = "gcc"
TCLIBC = "glibc"

TMPDIR = "${TOPDIR}/tmp-glibc"
TOOLCHAIN_OPTIONS = " --sysroot=${RECIPE_SYSROOT}"
TOOLCHAIN_OUTPUTNAME ?= "${SDK_NAME}-toolchain-${SDK_VERSION}"

ENABLE_UART = "1"

DISTRO_FEATURES:append = " systemd bluez5 bluetooth wifi virtualization"
DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit"
VIRTUAL-RUNTIME_init_manager = "systemd"
VIRTUAL-RUNTIME_initscripts = ""

PREFERRED_VERSION_linux-raptor = "5.15.%"
PREFERRED_PROVIDER_virtual/kernel = "linux-raptor"

IMAGE_FSTYPES = "rpi-sdimg tar.bz2"

#KERNEL_DANGLING_FEATURES_WARN_ONLY = "1"
KERNEL_FEATURES:remove = "cfg/fs/vfat.scc"
