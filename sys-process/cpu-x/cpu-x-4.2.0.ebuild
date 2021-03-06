# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

MY_PN="CPU-X"

inherit gnome2-utils cmake xdg

DESCRIPTION="A Free software that gathers information on CPU, motherboard and more"
HOMEPAGE="https://x0rg.github.io/CPU-X/"
SRC_URI="https://github.com/X0rg/${MY_PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="-* ~amd64"
IUSE="+bandwidth +dmidecode force-libstatgrab +gtk +libcpuid +libglfw +libpci +ncurses +nls test"
RESTRICT="primaryuri !test? ( test )"

COMMON_DEPEND="
	dev-libs/glib:2
	x11-libs/cairo
	x11-libs/gdk-pixbuf:2
	x11-libs/pango
	force-libstatgrab? ( sys-libs/libstatgrab )
	!force-libstatgrab? ( sys-process/procps:= )
	gtk? ( >=x11-libs/gtk+-3.12:3 )
	libcpuid? ( >=sys-libs/libcpuid-0.3.0:= )
	libglfw? ( >=media-libs/glfw-3.3 )
	libpci? ( sys-apps/pciutils )
	ncurses? ( sys-libs/ncurses:=[tinfo,unicode] )
"

DEPEND="
	test? (
		sys-apps/mawk
		sys-apps/nawk
	)

	${COMMON_DEPEND}
"

BDEPEND="
	dev-lang/nasm
	nls? ( sys-devel/gettext )
"

RDEPEND="${COMMON_DEPEND}"

S="${WORKDIR}/${MY_PN}-${PV}"

src_prepare() {
	cmake_src_prepare
}

src_configure() {
	local mycmakeargs=(
		-DFORCE_LIBSTATGRAB=$(usex force-libstatgrab)
		-DGSETTINGS_COMPILE=OFF
		-DWITH_BANDWIDTH=$(usex bandwidth)
		-DWITH_DMIDECODE=$(usex dmidecode)
		-DWITH_GETTEXT=$(usex nls)
		-DWITH_GTK=$(usex gtk)
		-DWITH_LIBCPUID=$(usex libcpuid)
		-DWITH_LIBGLFW=$(usex libglfw)
		-DWITH_LIBPCI=$(usex libpci)
		-DWITH_LIBSTATGRAB=OFF
		-DWITH_NCURSES=$(usex ncurses)
	)

	cmake_src_configure
}

pkg_preinst() {
	xdg_pkg_preinst
	gnome2_schemas_update
}

pkg_postinst() {
	xdg_pkg_postinst
	gnome2_schemas_update
}
