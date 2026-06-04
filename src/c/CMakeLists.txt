set(ALLEG_C_SRC
    cblit16.c
    cblit24.c
    cblit32.c
    cblit8.c
    cblit.h
    ccpu.c
    ccsprite.c
    cdefs15.h
    cdefs16.h
    cdefs24.h
    cdefs32.h
    cdefs8.h
    cgfx15.c
    cgfx16.c
    cgfx24.c
    cgfx32.c
    cgfx8.c
    cgfx.h
    cmisc.c
    #cmiscs.s # Implemented in imisc.s, not sure which is best
    cscan15.c
    cscan16.c
    cscan24.c
    cscan32.c
    cscan8.c
    cscan.h
    cspr15.c
    cspr16.c
    cspr24.c
    cspr32.c
    cspr8.c
    cspr.h
    cstretch.c
    czscan15.c
    czscan16.c
    czscan24.c
    czscan32.c
    czscan8.c
    czscan.h
)

add_library(alleg_c OBJECT ${ALLEG_C_SRC})
set_property(TARGET alleg_c PROPERTY INTERPROCEDURAL_OPTIMIZATION ${LTO_SUPPORTED})
target_include_directories(alleg_c PRIVATE ${PROJECT_SOURCE_DIR} ${PROJECT_SOURCE_DIR}/include)
