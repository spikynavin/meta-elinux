require linux-raptor.inc

LINUX_VERSION ?= "5.15.92"
LINUX_RPI_BRANCH ?= "raptor-5.15-y"

SRC_URI = "git://github.com/spikynavin/linux.git;branch=${LINUX_RPI_BRANCH};protocol=https"

SRCREV = "63f53738487e9f8ae9030068b706048db7be9f30"
