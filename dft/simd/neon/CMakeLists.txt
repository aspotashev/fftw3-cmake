
########### next target ###############

SET(dft_neon_codelets_STAT_SRCS
   $(BUILT_SOURCES)
)

add_library(dft_neon_codelets STATIC ${dft_neon_codelets_STAT_SRCS})


########### install files ###############




#original Makefile.am contents follow:

#AM_CFLAGS = $(NEON_CFLAGS)
#SIMD_HEADER=simd-neon.h
#
#include $(top_srcdir)/dft/simd/codlist.mk
#include $(top_srcdir)/dft/simd/simd.mk
#
#if HAVE_NEON
#
#BUILT_SOURCES = $(EXTRA_DIST)
#noinst_LTLIBRARIES = libdft_neon_codelets.la
#libdft_neon_codelets_la_SOURCES = $(BUILT_SOURCES)
#
#endif
