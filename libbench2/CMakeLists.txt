
########### next target ###############

SET(bench2_STAT_SRCS
   after-ccopy-from.c
   after-ccopy-to.c
   after-hccopy-from.c
   after-hccopy-to.c
   after-rcopy-from.c
   after-rcopy-to.c
   allocate.c
   aset.c
   bench-cost-postprocess.c
   bench-exit.c
   bench-main.c
   can-do.c
   caset.c
   dotens2.c
   info.c
   main.c
   mflops.c
   mp.c
   ovtpvt.c
   pow2.c
   problem.c
   report.c
   speed.c
   tensor.c
   timer.c
   useropt.c
   util.c
   verify-dft.c
   verify-lib.c
   verify-r2r.c
   verify-rdft2.c
   verify.c
   zero.c
   bench-user.h
   bench.h
   verify.h
   my-getopt.c
   my-getopt.h
)

include_directories(
    ${CMAKE_BINARY_DIR}
    ${CMAKE_SOURCE_DIR}/kernel
)

add_library(bench2 STATIC ${bench2_STAT_SRCS})


########### install files ###############




#original Makefile.am contents follow:

#noinst_LIBRARIES=libbench2.a
#
#libbench2_a_SOURCES=after-ccopy-from.c after-ccopy-to.c			\
#after-hccopy-from.c after-hccopy-to.c after-rcopy-from.c		\
#after-rcopy-to.c allocate.c aset.c bench-cost-postprocess.c		\
#bench-exit.c bench-main.c can-do.c caset.c dotens2.c info.c main.c	\
#mflops.c mp.c ovtpvt.c pow2.c problem.c report.c speed.c tensor.c	\
#timer.c useropt.c util.c verify-dft.c verify-lib.c verify-r2r.c		\
#verify-rdft2.c verify.c zero.c bench-user.h bench.h verify.h		\
#my-getopt.c my-getopt.h
#
#benchmark: all
#	@echo "nothing to benchmark"
#
#accuracy: all
#	@echo "nothing to benchmark"
#
