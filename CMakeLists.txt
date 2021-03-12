cmake_minimum_required(VERSION 3.17)
project(map_viewer)

set(CMAKE_CXX_STANDARD 20)

set(glfw3_DIR "3rdPartyLibs/glfw/lib/cmake/glfw3")
#set(CMAKE_PREFIX_PATH "3rdPartyLibs/curlpp")
#set(curlpp_DIR "3rdPartyLibs/curlpp/lib/pkgconfig")
#set(ENV{PKG_CONFIG_PATH} "${CMAKE_SOURCE_DIR}/3rdPartyLibs/curlpp/lib/pkgconfig")

include_directories(include)

add_subdirectory(3rdPartyLibs/glad)
add_subdirectory(3rdPartyLibs/curlpp)

find_package(OpenGL REQUIRED)
find_package(glfw3 REQUIRED)
find_package(-lcurl REQUIRED)
#find_package(PkgConfig REQUIRED)
#pkg_search_module(PKG_curlpp REQUIRED curlpp)
#find_package(curlpp REQUIRED)

include_directories(${OPENGL_INCLUDE_DIR})
include_directories(${glad_INCLUDE_DIR})
include_directories(${curlpp_INCLUDE_DIR})
#include_directories(3rdPartyLibs/curlpp/include)

add_executable(${CMAKE_PROJECT_NAME} main.cpp
        src/Window.cpp
        src/TileLoader.cpp)

target_link_libraries(${CMAKE_PROJECT_NAME}
        ${OPENGL_gl_LIBRARY}
        glfw
        glad
        curlpp
        )