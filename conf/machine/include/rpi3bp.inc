#Custom configure for rasberry pi 3b+

TARGET_ARCH = "arm"

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

IMAGE_FSTYPES = "rpi-sdimg tar.bz2"
