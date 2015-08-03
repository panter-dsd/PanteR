# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit cmake-utils

DESCRIPTION="The DICOM Toolkit"
HOMEPAGE="http://dicom.offis.de/dcmtk.php.en"
SRC_URI="http://dicom.offis.de/download/dcmtk/snapshot/old/dcmtk-3.6.1_20120222.tar.gz"
S="${WORKDIR}/dcmtk-3.6.1_20120222"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="debug"

#PATCHES=(
#        "${FILESDIR}"/${P}.patch
#)

src_configure() {
	local mycmakeargs=(
	      -DCMAKE_C_FLAGS="-fPIC"
	      -DCMAKE_CXX_FLAGS="-fPIC"
	      -DCMAKE_BUILD_TYPE=Debug
	      -DBUILD_SHARED_LIBS=ON
	)
        cmake-utils_src_configure
}

src_install() {
    cmake-utils_src_install
}
