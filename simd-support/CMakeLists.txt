
########### next target ###############

SET(simd_support_STAT_SRCS
   taint.c
   simd-common.h
   simd-sse2.h
   sse2.c
   x86-cpuid.h
   amd64-cpuid.h
   avx.c
   simd-avx.h
   altivec.c
   simd-altivec.h
   neon.c
   simd-neon.h
)

add_library(simd_support STATIC ${simd_support_STAT_SRCS})


########### next target ###############

SET(simd_sse2_nonportable_STAT_SRCS
   sse2-nonportable.c
)

add_library(simd_sse2_nonportable STATIC ${simd_sse2_nonportable_STAT_SRCS})


########### install files ###############




#original Makefile.am contents follow:

#AM_CPPFLAGS = -I$(top_srcdir)/kernel
#noinst_LTLIBRARIES = libsimd_support.la libsimd_sse2_nonportable.la
#
#libsimd_support_la_SOURCES = taint.c simd-common.h simd-sse2.h sse2.c	\
#x86-cpuid.h amd64-cpuid.h avx.c simd-avx.h altivec.c simd-altivec.h	\
#neon.c simd-neon.h
#
## sse2-nonportable.c needs SSE2_CFLAGS, but Automake does not support
## per-object CFLAGS.  Thus we build a separate library.
#libsimd_sse2_nonportable_la_CFLAGS = $(SSE2_CFLAGS)
#libsimd_sse2_nonportable_la_SOURCES = sse2-nonportable.c 
#
