# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
SLOT="5"

inherit versionator

MY_PN="qt5"
MY_PV="$(get_version_component_range 1)$(get_version_component_range 2)"
MY_PV_MICRO="1"

SRC_URI="http://download.qt.io/online/qtsdkrepository/linux_x64/desktop/${MY_PN}_${MY_PV}_src_doc_examples/qt.${MY_PV}.doc/${PV}-${MY_PV_MICRO}${MY_PN}_docs.7z"
KEYWORDS="~x86 ~amd64"

S="${WORKDIR}/Docs/Qt-$(get_version_component_range 1-2)"

src_install() {
        dodir /usr/share/doc/qt-${PV}
        docompress -x /usr/share/doc
        rm -fr global || die "removing global docs failed"
        cp -R -t "${D}/usr/share/doc/qt-${PV}" * || die "copying docs failed"
}
