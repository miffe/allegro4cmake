set(ALLEG_I386_SRC
    iblit16.s
    iblit24.s
    iblit32.s
    iblit8.s
    icpu.c
    icpus.s
    icsprite.c
    igfx15.s
    igfx16.s
    igfx24.s
    igfx32.s
    igfx8.s
    imisc.s
    iscanmmx.s
    iscan.s
    ispr15.s
    ispr16.s
    ispr24.s
    ispr32.s
    ispr8.s
    istretch.c
    izbuf.s
    opcodes.h
)

add_library(alleg_i386 OBJECT ${ALLEG_I386_SRC})
set_property(TARGET alleg_i386 PROPERTY INTERPROCEDURAL_OPTIMIZATION ${LTO_SUPPORTED})
target_include_directories(alleg_i386 PRIVATE ${PROJECT_SOURCE_DIR} ${PROJECT_SOURCE_DIR}/include)