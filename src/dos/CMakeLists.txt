set(ALLEG_DOS_SRC
    adlib.c
    awedata.c
    dfile.c
    dgfxdrv.c
    djirq.c
    djirqs.s
    djoydrv.c
    dkeybd.c
    dma.c
    dmouse.c
    dpmi.c
    dsnddrv.c
    dsystem.c
    dtimer.c
    emu8k.c
    emu8k.h
    emu8kmid.c
    essaudio.c
    gpro.c
    grip.c
    gripfnc.s
    grip.h
    gripjoy.c
    ifsega2f.c
    ifsega2p.c
    ifsega.c
    joystd.c
    mpu.c
    multijoy.c
    n64pad.c
    pic.c
    psxpad.c
    sb.c
    sndscape.c
    snespad.c
    sw.c
    swpp.c
    swpps.s
    vesa.c
    vesas.s
    #wat.c # for watcom
    wss.c
    ww.c
)

add_library(alleg_dos OBJECT ${ALLEG_DOS_SRC})
target_include_directories(alleg_dos PRIVATE ${CMAKE_SOURCE_DIR} ${CMAKE_SOURCE_DIR}/include)