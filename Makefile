.DEFAULT_GOAL=all

IMG_URL?=https://serverop.de/crux/crux-3.5/iso/crux-3.5.iso
IMG_FILENAME?=crux-3.5.iso
CRUX_VERSION?=3.5

# aarch64)
#   IMG_URL="http://resources.crux-arm.nu/releases/${VERSION}/crux-arm-rootfs-${VERSION}-aarch64.tar.xz"
#   IMG_FILENAME="crux-arm-rootfs-${VERSION}-aarch64.tar.xz"

x86_64.build:
	IMG_FILENAME=$(IMG_FILENAME) IMG_URL=$(IMG_URL) ./release build $(CRUX_VERSION)

x86_64.commit: x86_64.build
	./release commit $(CRUX_VERSION)

x86_64.test: x86_64.commit
	./release test $(CRUX_VERSION)

x86_64.push: x86_64.test
	./release push $(CRUX_VERSION)

x86_64: x86_64.test

all: x86_64
