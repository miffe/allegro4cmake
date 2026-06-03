set(ALLEG_SRC
    allegro.c
    blit.c
    bmp.c
    clip3d.c
    clip3df.c
    colblend.c
    color.c
    config.c
    datafile.c
    dataregi.c
    digmid.c
    dispsw.c
    dither.c
    drvlist.c
    file.c
    fli.c
    flood.c
    fontbios.c
    fontbmp.c
    font.c
    fontdat.c
    fontgrx.c
    fonttxt.c
    fsel.c
    gfx.c
    glyph.c
    graphics.c
    gsprite.c
    gui.c
    guiproc.c
    inline.c
    joystick.c
    keyboard.c
    lbm.c
    libc.c
    lzss.c
    math3d.c
    math.c
    midi.c
    mixer.c
    modesel.c
    mouse.c
    pcx.c
    poly3d.c
    polygon.c
    quantize.c
    quat.c
    readbmp.c
    readfont.c
    readsmp.c
    rle.c
    rotate.c
    scene3d.c
    sound.c
    spline.c
    stream.c
    text.c
    tga.c
    timer.c
    unicode.c
    vtable15.c
    vtable16.c
    vtable24.c
    vtable32.c
    vtable8.c
    vtable.c
)

add_subdirectory(c)
add_subdirectory(dos)
add_subdirectory(i386)
add_subdirectory(misc)

add_library(alleg STATIC ${ALLEG_SRC} $<TARGET_OBJECTS:alleg_c> $<TARGET_OBJECTS:alleg_dos> $<TARGET_OBJECTS:alleg_i386> $<TARGET_OBJECTS:alleg_misc>)
target_include_directories(alleg PUBLIC "${PROJECT_SOURCE_DIR}/include" PRIVATE "${PROJECT_SOURCE_DIR}")
export(TARGETS alleg NAMESPACE allegro4::)
add_library(allegro4::alleg ALIAS alleg)

add_executable(testlink testlink.c)
target_link_libraries(testlink PRIVATE allegro4::alleg)