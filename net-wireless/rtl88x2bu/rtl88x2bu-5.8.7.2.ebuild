# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit linux-mod

COMMIT="2ed61f841b52393e8a975b5c180bdaec2222c748"

DESCRIPTION="Realtek 88x2bu module for Linux kernel"
HOMEPAGE="https://github.com/RinCat/RTL88x2BU-Linux-Driver"
SRC_URI="https://github.com/RinCat/RTL88x2BU-Linux-Driver/archive/${COMMIT}.tar.gz -> rtl88x2bu-${PV}.tar.gz"

LICENSE="GPL-2"
KEYWORDS="~amd64 ~x86"

DEPEND="virtual/linux-sources"

S="${WORKDIR}/RTL88x2BU-Linux-Driver-${COMMIT}"

MODULE_NAMES="88x2bu(net/wireless)"
BUILD_TARGETS="all"

src_prepare() {
	default
	sed -i 's%$(shell uname -r)%$(shell basename -a `readlink -f /usr/src/linux` | sed s/linux-//)%g' Makefile
}
