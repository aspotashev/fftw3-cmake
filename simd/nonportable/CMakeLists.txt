
########### next target ###############

SET(simd_nonportable_STAT_SRCS
   sse.c
   sse2.c
)

add_library(simd_nonportable STATIC ${simd_nonportable_STAT_SRCS})


########### install files ###############




#original Makefile.am contents follow:

## this directory contains files that can only be compiled with
## SIMD_CFLAGS
#
#AM_CPPFLAGS = -I$(top_srcdir)/kernel -I$(top_srcdir)/simd
#AM_CFLAGS = $(SIMD_CFLAGS)
#noinst_LTLIBRARIES = libsimd_nonportable.la
#
#libsimd_nonportable_la_SOURCES = sse.c sse2.c
