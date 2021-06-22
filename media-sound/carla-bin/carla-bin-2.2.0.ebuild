# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Fully-featured audio plugin host, supports many audio drivers and plugin formats (binary version)"
HOMEPAGE="http://kxstudio.linuxaudio.org/Applications:Carla"
SRC_URI="https://github.com/falkTX/Carla/releases/download/v2.2.0/Carla_2.2.0-linux64.tar.xz"

LICENSE="GPL2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	dev-qt/qtcore:5
"
RDEPEND="${DEPEND}"

S="${WORKDIR}/Carla_2.2.0-linux64"

src_install() {
	insinto /opt/carla-bin
	doins -r *

        fperms 0775 /opt/carla-bin/Carla
        fperms 0775 /opt/carla-bin/carla.lv2/carla-bridge-lv2-gtk2
        fperms 0775 /opt/carla-bin/carla.lv2/carla-bridge-lv2-gtk3
        fperms 0775 /opt/carla-bin/carla.lv2/carla-bridge-lv2-qt4
        fperms 0775 /opt/carla-bin/carla.lv2/carla-bridge-lv2-qt5
        fperms 0775 /opt/carla-bin/carla.lv2/carla-bridge-lv2-x11
        fperms 0775 /opt/carla-bin/carla.lv2/carla-bridge-lv2.so
        fperms 0775 /opt/carla-bin/carla.lv2/carla-bridge-native
        fperms 0775 /opt/carla-bin/carla.lv2/carla-bridge-posix32
        fperms 0775 /opt/carla-bin/carla.lv2/carla-bridge-win32.exe
        fperms 0775 /opt/carla-bin/carla.lv2/carla-bridge-win64.exe
        fperms 0775 /opt/carla-bin/carla.lv2/carla-discovery-native
        fperms 0775 /opt/carla-bin/carla.lv2/carla-discovery-posix32
        fperms 0775 /opt/carla-bin/carla.lv2/carla-discovery-win32.exe
        fperms 0775 /opt/carla-bin/carla.lv2/carla-discovery-win64.exe
        fperms 0775 /opt/carla-bin/carla.lv2/jack/libjack.so.0
        fperms 0775 /opt/carla-bin/carla.lv2/jackbridge-wine32.dll
        fperms 0775 /opt/carla-bin/carla.lv2/jackbridge-wine64.dll
        fperms 0775 /opt/carla-bin/carla.lv2/resources/bigmeter-ui
        fperms 0775 /opt/carla-bin/carla.lv2/resources/carla-plugin
        fperms 0775 /opt/carla-bin/carla.lv2/resources/lib/_codecs_cn.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.lv2/resources/lib/binascii.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.lv2/resources/lib/grp.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.lv2/resources/lib/math.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.lv2/resources/lib/pyexpat.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.lv2/resources/lib/PyQt5/Qt.so
        fperms 0775 /opt/carla-bin/carla.lv2/resources/lib/PyQt5/QtCore.so
        fperms 0775 /opt/carla-bin/carla.lv2/resources/lib/PyQt5/QtGui.so
        fperms 0775 /opt/carla-bin/carla.lv2/resources/lib/PyQt5/QtOpenGL.so
        fperms 0775 /opt/carla-bin/carla.lv2/resources/lib/PyQt5/QtSvg.so
        fperms 0775 /opt/carla-bin/carla.lv2/resources/lib/PyQt5/QtWidgets.so
        fperms 0775 /opt/carla-bin/carla.lv2/resources/lib/PyQt5/sip.so
        fperms 0775 /opt/carla-bin/carla.lv2/resources/lib/PyQt5/_QOpenGLFunctions_2_0.so
        fperms 0775 /opt/carla-bin/carla.lv2/resources/lib/PyQt5/_QOpenGLFunctions_2_1.so
        fperms 0775 /opt/carla-bin/carla.lv2/resources/lib/PyQt5/_QOpenGLFunctions_4_1_Core.so
        fperms 0775 /opt/carla-bin/carla.lv2/resources/lib/select.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.lv2/resources/lib/termios.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.lv2/resources/lib/unicodedata.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.lv2/resources/lib/zlib.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.lv2/resources/lib/_bisect.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.lv2/resources/lib/_blake2.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.lv2/resources/lib/_codecs_hk.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.lv2/resources/lib/_codecs_iso2022.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.lv2/resources/lib/_codecs_jp.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.lv2/resources/lib/_codecs_kr.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.lv2/resources/lib/_codecs_tw.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.lv2/resources/lib/_ctypes.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.lv2/resources/lib/_datetime.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.lv2/resources/lib/_heapq.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.lv2/resources/lib/_json.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.lv2/resources/lib/_md5.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.lv2/resources/lib/_multibytecodec.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.lv2/resources/lib/_opcode.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.lv2/resources/lib/_pickle.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.lv2/resources/lib/_posixsubprocess.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.lv2/resources/lib/_random.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.lv2/resources/lib/_sha1.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.lv2/resources/lib/_sha256.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.lv2/resources/lib/_sha3.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.lv2/resources/lib/_sha512.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.lv2/resources/lib/_socket.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.lv2/resources/lib/_struct.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.lv2/resources/midipattern-ui
        fperms 0775 /opt/carla-bin/carla.lv2/resources/notes-ui
        fperms 0775 /opt/carla-bin/carla.lv2/resources/xycontroller-ui
        fperms 0775 /opt/carla-bin/carla.vst/carla-bridge-lv2-gtk2
        fperms 0775 /opt/carla-bin/carla.vst/carla-bridge-lv2-gtk3
        fperms 0775 /opt/carla-bin/carla.vst/carla-bridge-lv2-qt4
        fperms 0775 /opt/carla-bin/carla.vst/carla-bridge-lv2-qt5
        fperms 0775 /opt/carla-bin/carla.vst/carla-bridge-lv2-x11
        fperms 0775 /opt/carla-bin/carla.vst/carla-bridge-lv2.so
        fperms 0775 /opt/carla-bin/carla.vst/carla-bridge-native
        fperms 0775 /opt/carla-bin/carla.vst/carla-bridge-posix32
        fperms 0775 /opt/carla-bin/carla.vst/carla-bridge-win32.exe
        fperms 0775 /opt/carla-bin/carla.vst/carla-bridge-win64.exe
        fperms 0775 /opt/carla-bin/carla.vst/carla-discovery-native
        fperms 0775 /opt/carla-bin/carla.vst/carla-discovery-posix32
        fperms 0775 /opt/carla-bin/carla.vst/carla-discovery-win32.exe
        fperms 0775 /opt/carla-bin/carla.vst/carla-discovery-win64.exe
        fperms 0775 /opt/carla-bin/carla.vst/jack/libjack.so.0
        fperms 0775 /opt/carla-bin/carla.vst/jackbridge-wine32.dll
        fperms 0775 /opt/carla-bin/carla.vst/jackbridge-wine64.dll
        fperms 0775 /opt/carla-bin/carla.vst/resources/bigmeter-ui
        fperms 0775 /opt/carla-bin/carla.vst/resources/carla-plugin
        fperms 0775 /opt/carla-bin/carla.vst/resources/lib/_codecs_cn.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.vst/resources/lib/binascii.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.vst/resources/lib/grp.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.vst/resources/lib/math.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.vst/resources/lib/pyexpat.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.vst/resources/lib/PyQt5/Qt.so
        fperms 0775 /opt/carla-bin/carla.vst/resources/lib/PyQt5/QtCore.so
        fperms 0775 /opt/carla-bin/carla.vst/resources/lib/PyQt5/QtGui.so
        fperms 0775 /opt/carla-bin/carla.vst/resources/lib/PyQt5/QtOpenGL.so
        fperms 0775 /opt/carla-bin/carla.vst/resources/lib/PyQt5/QtSvg.so
        fperms 0775 /opt/carla-bin/carla.vst/resources/lib/PyQt5/QtWidgets.so
        fperms 0775 /opt/carla-bin/carla.vst/resources/lib/PyQt5/sip.so
        fperms 0775 /opt/carla-bin/carla.vst/resources/lib/PyQt5/_QOpenGLFunctions_2_0.so
        fperms 0775 /opt/carla-bin/carla.vst/resources/lib/PyQt5/_QOpenGLFunctions_2_1.so
        fperms 0775 /opt/carla-bin/carla.vst/resources/lib/PyQt5/_QOpenGLFunctions_4_1_Core.so
        fperms 0775 /opt/carla-bin/carla.vst/resources/lib/select.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.vst/resources/lib/termios.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.vst/resources/lib/unicodedata.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.vst/resources/lib/zlib.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.vst/resources/lib/_bisect.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.vst/resources/lib/_blake2.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.vst/resources/lib/_codecs_hk.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.vst/resources/lib/_codecs_iso2022.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.vst/resources/lib/_codecs_jp.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.vst/resources/lib/_codecs_kr.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.vst/resources/lib/_codecs_tw.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.vst/resources/lib/_ctypes.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.vst/resources/lib/_datetime.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.vst/resources/lib/_heapq.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.vst/resources/lib/_json.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.vst/resources/lib/_md5.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.vst/resources/lib/_multibytecodec.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.vst/resources/lib/_opcode.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.vst/resources/lib/_pickle.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.vst/resources/lib/_posixsubprocess.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.vst/resources/lib/_random.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.vst/resources/lib/_sha1.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.vst/resources/lib/_sha256.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.vst/resources/lib/_sha3.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.vst/resources/lib/_sha512.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.vst/resources/lib/_socket.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.vst/resources/lib/_struct.cpython-37m-x86_64-linux-gnu.so
        fperms 0775 /opt/carla-bin/carla.vst/resources/midipattern-ui
        fperms 0775 /opt/carla-bin/carla.vst/resources/notes-ui
        fperms 0775 /opt/carla-bin/carla.vst/resources/xycontroller-ui
        fperms 0775 /opt/carla-bin/CarlaControl

	dosym /opt/carla-bin/Carla /usr/bin/Carla
	dosym /opt/carla-bin/CarlaControl /usr/bin/CarlaControl
}
