add_subdirectory(scalar)
#add_subdirectory(simd)


########### next target ###############

SET(dft_STAT_SRCS
   bluestein.c
   buffered.c
   conf.c
   ct.c
   dftw-direct.c
   dftw-directsq.c
   dftw-generic.c
   dftw-genericbuf.c
   direct.c
   generic.c
   indirect.c
   indirect-transpose.c
   kdft-dif.c
   kdft-difsq.c
   kdft-dit.c
   kdft.c
   nop.c
   plan.c
   problem.c
   rader.c
   rank-geq2.c
   solve.c
   vrank-geq1.c
   zero.c
   codelet-dft.h
   ct.h
   dft.h
)

include_directories(
    ${CMAKE_BINARY_DIR}
    ${CMAKE_SOURCE_DIR}/kernel
)

add_library(dft STATIC ${dft_STAT_SRCS})


########### install files ###############




#original Makefile.am contents follow:

#AM_CPPFLAGS = -I$(top_srcdir)/kernel
#SUBDIRS = scalar simd
#
#noinst_LTLIBRARIES = libdft.la
#
## pkgincludedir = $(includedir)/fftw3@PREC_SUFFIX@
## pkginclude_HEADERS = codelet-dft.h dft.h
#
#libdft_la_SOURCES = bluestein.c buffered.c conf.c ct.c dftw-direct.c	\
#dftw-directsq.c dftw-generic.c dftw-genericbuf.c direct.c generic.c	\
#indirect.c indirect-transpose.c kdft-dif.c kdft-difsq.c kdft-dit.c	\
#kdft.c nop.c plan.c problem.c rader.c rank-geq2.c solve.c vrank-geq1.c	\
#zero.c codelet-dft.h ct.h dft.h
