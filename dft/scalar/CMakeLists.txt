add_subdirectory(codelets)


########### next target ###############

SET(dft_scalar_STAT_SRCS
   n.c
   t.c
   f.h
   n.h
   q.h
   t.h
)

include_directories(
    ${CMAKE_BINARY_DIR}
    ${CMAKE_SOURCE_DIR}/kernel
    ${CMAKE_SOURCE_DIR}/dft
)

add_library(dft_scalar STATIC ${dft_scalar_STAT_SRCS})


########### install files ###############




#original Makefile.am contents follow:

#AM_CPPFLAGS = -I$(top_srcdir)/kernel -I$(top_srcdir)/dft
#SUBDIRS=codelets
#noinst_LTLIBRARIES = libdft_scalar.la
#
#libdft_scalar_la_SOURCES = n.c t.c f.h n.h q.h t.h
#
