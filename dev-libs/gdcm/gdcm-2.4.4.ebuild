# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit cmake-utils

DESCRIPTION="The GDCM Toolkit"
HOMEPAGE="http://gdcm.sourceforge.net/"
SRC_URI="http://downloads.sourceforge.net/project/gdcm/gdcm%202.x/GDCM%202.4.4/gdcm-2.4.4.tar.bz2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="debug"

src_configure() {
	local mycmakeargs=(
	      -DCMAKE_BUILD_TYPE=Debug
	)
        cmake-utils_src_configure
}

src_install() {
    cmake-utils_src_install
}
