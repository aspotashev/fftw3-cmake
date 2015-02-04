
########### next target ###############

SET(dft_sse2_codelets_STAT_SRCS
   $(BUILT_SOURCES)
)

add_library(dft_sse2_codelets STATIC ${dft_sse2_codelets_STAT_SRCS})


########### install files ###############




#original Makefile.am contents follow:

#AM_CFLAGS = $(SSE2_CFLAGS)
#SIMD_HEADER=simd-sse2.h
#
#include $(top_srcdir)/dft/simd/codlist.mk
#include $(top_srcdir)/dft/simd/simd.mk
#
#if HAVE_SSE2
#
#BUILT_SOURCES = $(EXTRA_DIST)
#noinst_LTLIBRARIES = libdft_sse2_codelets.la
#libdft_sse2_codelets_la_SOURCES = $(BUILT_SOURCES)
#
#endif
