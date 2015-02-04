
########### next target ###############

SET(rdft_sse2_codelets_STAT_SRCS
   $(BUILT_SOURCES)
)

add_library(rdft_sse2_codelets STATIC ${rdft_sse2_codelets_STAT_SRCS})


########### install files ###############




#original Makefile.am contents follow:

#AM_CFLAGS = $(SSE2_CFLAGS)
#SIMD_HEADER=simd-sse2.h
#
#include $(top_srcdir)/rdft/simd/codlist.mk
#include $(top_srcdir)/rdft/simd/simd.mk
#
#if HAVE_SSE2
#
#BUILT_SOURCES = $(EXTRA_DIST)
#noinst_LTLIBRARIES = librdft_sse2_codelets.la
#librdft_sse2_codelets_la_SOURCES = $(BUILT_SOURCES)
#
#endif
#
#
