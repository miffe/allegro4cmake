cmake_minimum_required(VERSION 3.31)

project(allegro)

enable_language(C CXX ASM)

# TODO: Generate the obj/djgpp/asmcapa.h file
add_custom_command(
    OUTPUT ${CMAKE_SOURCE_DIR}/obj/djgpp/asmcapa.h
    COMMAND ${CMAKE_COMMAND} -E echo "#define ALLEGRO_GENERATED_BY_MAKEFILE_TST" > ${CMAKE_SOURCE_DIR}/obj/djgpp/asmcapa.h
    COMMAND ${CMAKE_COMMAND} -E echo "#define ALLEGRO_MMX" >> ${CMAKE_SOURCE_DIR}/obj/djgpp/asmcapa.h
    COMMAND ${CMAKE_COMMAND} -E echo "#define ALLEGRO_SSE" >> ${CMAKE_SOURCE_DIR}/obj/djgpp/asmcapa.h
    COMMAND ${CMAKE_COMMAND} -E false
    VERBATIM
)

# TODO: Run i386-pc-msdosdjgpp-gcc -o asmdef.s -S asmdef.c -I ../../include -I ../../
#       Then sh misc/asmdef.sh src/i386/asmdef.s obj/djgpp/asmdef.inc
add_custom_command(
    OUTPUT ${CMAKE_SOURCE_DIR}/obj/djgpp/asmdef.inc
    COMMAND ${CMAKE_COMMAND} -E false
    VERBATIM
)

# TODO: Figure out a better way to do this
add_compile_options($<$<COMPILE_LANGUAGE:ASM>:-x$<SEMICOLON>assembler-with-cpp>)

add_subdirectory(src)

if (CMAKE_SOURCE_DIR STREQUAL PROJECT_SOURCE_DIR)
    add_executable(testlink testlink.c)
    target_link_libraries(testlink PRIVATE allegro4::alleg)
endif()