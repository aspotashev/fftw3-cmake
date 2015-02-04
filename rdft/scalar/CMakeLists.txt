add_subdirectory(r2cf)
add_subdirectory(r2cb)
add_subdirectory(r2r)


########### next target ###############

SET(rdft_scalar_STAT_SRCS
   hb.h
   r2cb.h
   r2cbIII.h
   hf.h
   hfb.c
   r2c.c
   r2cf.h
   r2cfII.h
   r2r.c
   r2r.h
   hc2c.c
   hc2cf.h
   hc2cb.h
)

add_library(rdft_scalar STATIC ${rdft_scalar_STAT_SRCS})


########### install files ###############




#original Makefile.am contents follow:

#AM_CPPFLAGS = -I$(top_srcdir)/kernel -I$(top_srcdir)/rdft
#SUBDIRS = r2cf r2cb r2r
#noinst_LTLIBRARIES = librdft_scalar.la
#
#librdft_scalar_la_SOURCES = hb.h r2cb.h r2cbIII.h hf.h hfb.c r2c.c	\
#r2cf.h r2cfII.h r2r.c r2r.h hc2c.c hc2cf.h hc2cb.h
#
