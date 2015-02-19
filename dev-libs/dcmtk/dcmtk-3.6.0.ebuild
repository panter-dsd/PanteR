# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit cmake-utils

DESCRIPTION="Dcmtk"
HOMEPAGE="http://dcmtk.org/"
SRC_URI="http://dicom.offis.de/download/dcmtk/dcmtk360/dcmtk-3.6.0.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~mips ~sparc ~x86 ~amd64"
IUSE="debug"

PATCHES=(                                                                    
        "${FILESDIR}"/${P}.patch                               
)

src_configure() {
	local mycmakeargs=(
	      -DCMAKE_C_FLAGS="-fPIC"
	      -DCMAKE_CXX_FLAGS="-fPIC"
	      -DCMAKE_BUILD_TYPE=Debug
	)
        cmake-utils_src_configure
}

src_install() {
    cmake-utils_src_install
}
