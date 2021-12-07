# Set the operating system and processor architecture.
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)
set(CMAKE_SYSTEM_VERSION 1)

# Setup CMake's rules for using the CMAKE_FIND_ROOT_PATH for cross-compilation.
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

set(COMPILER_DIR "C:/ti/ccs1031/ccs/tools/compiler/ti-cgt-arm_20.2.4.LTS")
list(APPEND CMAKE_SYSTEM_PREFIX_PATH ${COMPILER_DIR})
set(CMAKE_SYSROOT ${COMPILER_DIR})

# Set target environment
set(CMAKE_FIND_ROOT_PATH ${COMPILER_DIR})

# set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -llibc.a")

# toolchain paths
find_program(TI_GCC       NAMES   armcl       PATHS  ${COMPILER_DIR}/bin    NO_DEFAULT_PATH)
find_program(TI_CXX       NAMES   armcl       PATHS  ${COMPILER_DIR}/bin    NO_DEFAULT_PATH)
find_program(TI_AS        NAMES   armasm      PATHS  ${COMPILER_DIR}/bin    NO_DEFAULT_PATH)
find_program(TI_AR        NAMES   armar       PATHS  ${COMPILER_DIR}/bin    NO_DEFAULT_PATH)
find_program(TI_OBJCOPY   NAMES   armobjcopy  PATHS  ${COMPILER_DIR}/bin    NO_DEFAULT_PATH)
find_program(TI_OBJDUMP   NAMES   armobjdump  PATHS  ${COMPILER_DIR}/bin    NO_DEFAULT_PATH)
find_program(TI_SIZE      NAMES   armsize     PATHS  ${COMPILER_DIR}/bin    NO_DEFAULT_PATH)
find_program(TI_LD        NAMES   armlnk      PATHS  ${COMPILER_DIR}/bin    NO_DEFAULT_PATH)

# set executables settings
set(CMAKE_C_COMPILER    ${TI_GCC})
set(CMAKE_CXX_COMPILER  ${TI_CXX})
set(AS                  ${TI_AS})
set(AR                  ${TI_AR})
set(OBJCOPY             ${TI_OBJCOPY})
set(OBJDUMP             ${TI_OBJDUMP})
set(SIZE                ${TI_SIZE})
set(LD                  ${TI_LD})

set(CMAKE_C_COMPILER_WORKS 1)
set(CMAKE_CXX_COMPILER_WORKS 1)

message(STATUS "Using toolchain file: ${CMAKE_TOOLCHAIN_FILE}")