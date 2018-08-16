cmake_minimum_required (VERSION 3.1)

project(gfx2pce C)

set(gfx2pce_major_version 1)
set(gfx2pce_minor_version 0)
set(gfx2pce_path_version 0)
set(gfx2pce_version "${gfx2pce_major_version}.${gfx2pce_minor_version}.${gfx2pce_path_version}")

if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE "Debug")
endif()

set(EXECUTABLE_OUTPUT_PATH "${CMAKE_BINARY_DIR}/${CMAKE_BUILD_TYPE}")

set(CMAKE_C_STANDARDS 11)

configure_file(config.h.in config.h)

set(gfx2pce_sources
    gfx2pce.c
    lodepng.c
)

set(gfx2pce_headers
    gfx2pce.h
    lodepng.h
    config.h
)

add_executable(gfx2pce ${gfx2pce_sources} ${gfx2pce_headers})
target_compile_options(gfx2pce PRIVATE -Wall -Wshadow -Wextra)
target_include_directories(gfx2pce PRIVATE ${CMAKE_BINARY_DIR})

install(TARGETS gfx2pce RUNTIME DESTINATION bin)
