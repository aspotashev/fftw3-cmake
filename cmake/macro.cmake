
macro(GENERATE_CODLIST SOLVTAB_NAME)

    set(CODELET_NAME codelet_)
    set(XRENAME "X")

    set(CODE_EXTERN_FUNCTION_PROTOTYPES "")
    foreach(CODELET ${ALL_CODELETS})
        set(CODE_EXTERN_FUNCTION_PROTOTYPES "${CODE_EXTERN_FUNCTION_PROTOTYPES}
    extern void ${XRENAME}(${CODELET_NAME}${CODELET})(planner *);")
    endforeach()

    # @CODE_EXTERN_FUNCTION_PROTOTYPES@
    #     for i in $(ALL_CODELETS) NIL; do                    \
    #        if test "$$i" != NIL; then                       \
    #          j=`basename $$i | sed -e 's/[.][cS]$$//g'`;            \
    #              echo "extern void $(XRENAME)($(CODELET_NAME)$$j)(planner *);"; \
    #            fi                                   \
    #     done;                                   \

    # @CODE_SOLVTAB_LIST@
    #     for i in $(ALL_CODELETS) NIL; do                    \
    #        if test "$$i" != NIL; then                       \
    #          j=`basename $$i | sed -e 's/[.][cS]$$//g'`;            \
    #          echo "   SOLVTAB($(XRENAME)($(CODELET_NAME)$$j)),";        \
    #        fi                                   \
    #     done;                                   \

    configure_file(${CMAKE_SOURCE_DIR}/support/codlist.c.in codlist.c)

endmacro()
