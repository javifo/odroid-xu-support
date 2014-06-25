# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="HW compositor for the exynos boards (tested with Hardkernel 5410)"
HOMEPAGE="https://github.com/hardkernel/linux http://www.hardkernel.com"
EGIT_REPO_URI="https://github.com/hardkernel/linux.git"
EGIT_BRANCH="odroidxu-3.4.y"

inherit git-2

#LICENSE=""
SLOT="0"
KEYWORDS="~arm"
IUSE=""

#DEPEND=""
#RDEPEND="${DEPEND}"

src_prepare() {
    local exynoshw_src_path="${WORKDIR}"/${P}/tools/hardkernel/exynos5-hwcomposer
	
	S="${exynoshw_src_path}"

    if [[ ! -f "${S}"/configure ]] ; then
        # Sources don't exist!
        eerror "The exynos5 HW compositor sources were NOT found at ${S}!"
    fi
}

src_configure() {
    local myconf

	econf
}

src_compile() {
    # The following allows emake to be used
    emake -j1 -C src auto/osdef.h objects

    emake
}

