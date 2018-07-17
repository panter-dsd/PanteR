# Copyright 2016 Jan Chren (rindeal)
# Distributed under the terms of the GNU General Public License v2

EAPI=6

JBIJ_PN_PRETTY='GoLand'
JBIJ_URI="go/goland-182.3569.26"

inherit jetbrains-intellij

DESCRIPTION="GoLand is a commercial, cross-platform IDE for PHP"

JBIJ_DESKTOP_CATEGORIES=( 'WebDevelopment' )
JBIJ_DESKTOP_EXTRAS=(
	"MimeType=text/x-php;text/html;" # MUST end with semicolon
)
