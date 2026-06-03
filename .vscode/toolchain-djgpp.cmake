set(CMAKE_SYSTEM_NAME DOS)
set(CMAKE_SYSTEM_PROCESSOR x86)

# specify the cross compiler
set (CMAKE_C_COMPILER i386-pc-msdosdjgpp-gcc)
set (CMAKE_CXX_COMPILER i386-pc-msdosdjgpp-g++)

# where is the target environment
set (CMAKE_FIND_ROOT_PATH /usr/i386-pc-msdosdjgpp)

# search for programs in the build host directories
set (CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# for libraries and headers in the target directories
set (CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set (CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set (CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
