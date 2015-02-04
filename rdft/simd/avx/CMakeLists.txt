
########### next target ###############

SET(rdft_avx_codelets_STAT_SRCS
   $(BUILT_SOURCES)
)

add_library(rdft_avx_codelets STATIC ${rdft_avx_codelets_STAT_SRCS})


########### install files ###############




#original Makefile.am contents follow:

#AM_CFLAGS = $(AVX_CFLAGS)
#SIMD_HEADER=simd-avx.h
#
#include $(top_srcdir)/rdft/simd/codlist.mk
#include $(top_srcdir)/rdft/simd/simd.mk
#
#if HAVE_AVX
#
#noinst_LTLIBRARIES = librdft_avx_codelets.la
#BUILT_SOURCES = $(EXTRA_DIST)
#librdft_avx_codelets_la_SOURCES = $(BUILT_SOURCES)
#
#endif
#
#
