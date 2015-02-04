
########### next target ###############

SET(dft_altivec_codelets_STAT_SRCS
   $(BUILT_SOURCES)
)

add_library(dft_altivec_codelets STATIC ${dft_altivec_codelets_STAT_SRCS})


########### install files ###############




#original Makefile.am contents follow:

#AM_CFLAGS = $(ALTIVEC_CFLAGS)
#SIMD_HEADER=simd-altivec.h
#
#include $(top_srcdir)/dft/simd/codlist.mk
#include $(top_srcdir)/dft/simd/simd.mk
#
#if HAVE_ALTIVEC
#
#BUILT_SOURCES = $(EXTRA_DIST)
#noinst_LTLIBRARIES = libdft_altivec_codelets.la
#libdft_altivec_codelets_la_SOURCES = $(BUILT_SOURCES)
#
#endif
