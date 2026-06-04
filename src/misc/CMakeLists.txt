set(ALLEG_MISC_SRC
    asmcapa.s
    icolconv.s
    modexgfx.s
    vbeafs.s
    ccolconv.c
    colconv.c
    modex.c
    modexsms.c
    pckeys.c
    runner.c
    runnergw.c
    vbeaf.c
    vbeafex.c
    vga.c
    vgaregs.c
)

add_library(alleg_misc OBJECT ${ALLEG_MISC_SRC})
set_property(TARGET alleg_misc PROPERTY INTERPROCEDURAL_OPTIMIZATION ${LTO_SUPPORTED})
target_include_directories(alleg_misc PRIVATE ${PROJECT_SOURCE_DIR} ${PROJECT_SOURCE_DIR}/include)