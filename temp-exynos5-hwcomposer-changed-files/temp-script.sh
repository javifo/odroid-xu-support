ROOT=/var/tmp/portage/sys-apps/exynos5-hwcomposer-27112013/work/exynos5-hwcomposer-27112013/

ebuild exynos5-hwcomposer-27112013.ebuild clean && ebuild exynos5-hwcomposer-27112013.ebuild unpack &&

cp ~/log.h $ROOT/tools/hardkernel/exynos5-hwcomposer/include/log.h
cp ~/exynos5-hwcomposer.cpp $ROOT/tools/hardkernel/exynos5-hwcomposer/tools/exynos5-hwcomposer.cpp
cp ~/exynos_subdev.c $ROOT/tools/hardkernel/exynos5-hwcomposer/src/hardware/samsung_slsi/exynos/libv4l2/exynos_subdev.c
cp ~/exynos_v4l2.c $ROOT/tools/hardkernel/exynos5-hwcomposer/src/hardware/samsung_slsi/exynos/libv4l2/exynos_v4l2.c
cp ~/sync.c $ROOT/tools/hardkernel/exynos5-hwcomposer/src/system/core/libsync/sync.c

ebuild exynos5-hwcomposer-27112013.ebuild compile && ebuild exynos5-hwcomposer-27112013.ebuild install && ebuild exynos5-hwcomposer-27112013.ebuild qmerge

