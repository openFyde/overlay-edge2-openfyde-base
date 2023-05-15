# Copyright (c) 2018 The Fyde OS Authors. All rights reserved.
# Distributed under the terms of the BSD

EAPI="5"

inherit udev user

DESCRIPTION="empty project"
HOMEPAGE="http://fydeos.com"

LICENSE="BSD-Fyde"
SLOT="0"
KEYWORDS="*"
IUSE=""

RDEPEND="
    chromeos-base/edge2-firmware
    sys-boot/edge2-loaders
    chromeos-base/os_install_service
"

#    app-misc/fan-control-rock5b

DEPEND="${RDEPEND}"

S="${WORKDIR}"

src_install() {
    default
    insinto "/etc/init"
    doins ${FILESDIR}/*.conf
}