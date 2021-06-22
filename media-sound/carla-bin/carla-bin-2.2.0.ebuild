# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{7,8,9} )
inherit python-single-r1 xdg-utils

DESCRIPTION="Fully-featured audio plugin host, supports many audio drivers and plugin formats (binary version)"
HOMEPAGE="http://kxstudio.linuxaudio.org/Applications:Carla"
SRC_URI="https://github.com/falkTX/Carla/releases/download/v2.2.0/Carla_2.2.0-linux64.tar.xz"

LICENSE="GPL-2 LGPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE="alsa -gtk -gtk2 -osc opengl -pulseaudio qt5 -rdf -sf2 -sndfile X"

DEPEND="
	$(python_gen_cond_dep 'dev-python/PyQt5[gui,opengl?,svg,widgets,${PYTHON_MULTI_USEDEP}]')
	alsa? ( media-libs/alsa-lib )
	app-arch/bzip2
	app-arch/lz4
	app-arch/zstd
	dev-libs/icu
	gtk? ( x11-libs/gtk+:3 )
	gtk2? ( x11-libs/gtk+:2 )
	qt5? (
		dev-qt/qtgui:5
		dev-qt/qtwidgets:5
	)
	media-gfx/graphite2
	media-libs/freetype
	media-libs/libpng
	media-libs/mesa
	osc? (
		media-libs/liblo
		media-libs/pyliblo
	)
	pulseaudio? ( media-sound/pulseaudio )
	rdf? ( dev-python/rdflib )
	sf2? ( media-sound/fluidsynth )
	sndfile? ( media-libs/libsndfile )
	sys-apps/systemd
	virtual/jack
	virtual/wine
	X? ( x11-base/xorg-server )
"
RDEPEND="${DEPEND}"

S="${WORKDIR}/Carla_2.2.0-linux64"

src_install() {
#	cd "${S}"
	EXECUTABLES="$(find . -type f -executable | sed 's%^\.%/opt/carla-bin%'g)"

	insinto /opt/carla-bin
	doins -r *

	for i in $EXECUTABLES; do
		fperms 0775 $i
	done
}
