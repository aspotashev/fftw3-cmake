add_subdirectory(nonportable)


########### next target ###############

SET(simd_STAT_SRCS
   altivec.c
   sse.c
   sse2.c
   simd-altivec.h
   simd-sse.h
   simd-sse2.h
   simd.h
   taint.c
   x86-cpuid.h
   mips_ps.c
   mips_ps.h
   simd-mips_ps.h
)

add_library(simd STATIC ${simd_STAT_SRCS})


########### install files ###############




#original Makefile.am contents follow:

#SUBDIRS=nonportable
#AM_CPPFLAGS = -I$(top_srcdir)/kernel
#noinst_LTLIBRARIES = libsimd.la
#
#libsimd_la_SOURCES = altivec.c sse.c sse2.c simd-altivec.h simd-sse.h	\
#simd-sse2.h simd.h taint.c x86-cpuid.h mips_ps.c mips_ps.h simd-mips_ps.h
