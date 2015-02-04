
########### next target ###############

SET(dft_avx_codelets_STAT_SRCS
   $(BUILT_SOURCES)
)

add_library(dft_avx_codelets STATIC ${dft_avx_codelets_STAT_SRCS})


########### install files ###############




#original Makefile.am contents follow:

#AM_CFLAGS = $(AVX_CFLAGS)
#SIMD_HEADER=simd-avx.h
#
#include $(top_srcdir)/dft/simd/codlist.mk
#include $(top_srcdir)/dft/simd/simd.mk
#
#if HAVE_AVX
#
#BUILT_SOURCES = $(EXTRA_DIST)
#noinst_LTLIBRARIES = libdft_avx_codelets.la
#libdft_avx_codelets_la_SOURCES = $(BUILT_SOURCES)
#
#endif
