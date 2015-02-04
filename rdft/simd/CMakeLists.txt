add_subdirectory(common)
add_subdirectory(sse2)
add_subdirectory(avx)
add_subdirectory(altivec)
add_subdirectory(neon)


########### install files ###############




#original Makefile.am contents follow:

#SUBDIRS = common sse2 avx altivec neon
#EXTRA_DIST = hc2cbv.h hc2cfv.h codlist.mk simd.mk
