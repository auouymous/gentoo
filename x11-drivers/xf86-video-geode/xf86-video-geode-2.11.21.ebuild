# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit xorg-3

DESCRIPTION="AMD Geode GX2 and LX video driver"
KEYWORDS="x86"
IUSE="ztv"

RDEPEND=""
DEPEND="${RDEPEND}
	ztv? (
		sys-kernel/linux-headers
	)"

src_configure() {
	local XORG_CONFIGURE_OPTIONS=(
		$(use_enable ztv)
	)
	xorg-3_src_configure
}
