# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python3_{4,5,6} )

inherit distutils-r1

DESCRIPTION="Clean up old distfiles in Gentoo"
HOMEPAGE="https://gitlab.com/panter_dsd/distfilescleaner"
#SRC_URI="https://pypi.python.org/packages/1f/c4/8e484107c7c96597b233b54280f6104eddc71464d8974bf3a591b42fb0ee/dfclean-{PN}.tar.gz"
SRC_URI="mirror://pypi/${P:0:1}/${PN}/${P}.tar.gz"

LICENSE="GPLv3"
SLOT="0"
KEYWORDS="~amd64 ~mips ~x86 ~x86-fbsd"
IUSE=""

RDEPEND="
        dev-python/humanize
        "
