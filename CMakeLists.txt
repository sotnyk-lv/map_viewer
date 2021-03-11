cmake_minimum_required(VERSION 3.17)
project(map_viewer)

set(CMAKE_CXX_STANDARD 20)

set(glfw3_DIR "3rdPartyLibs/glfw/lib/cmake/glfw3")

include_directories(3rdPartyLibs/glad/include)
include_directories(include)

find_package(OpenGL REQUIRED)
find_package(glfw3 REQUIRED)

include_directories(${OPENGL_INCLUDE_DIR})

add_executable(${CMAKE_PROJECT_NAME} main.cpp
        3rdPartyLibs/glad/src/glad.c
        3rdPartyLibs/glad/include/glad/glad.h
        3rdPartyLibs/glad/include/KHR/khrplatform.h)

target_link_libraries(${CMAKE_PROJECT_NAME} ${OPENGL_gl_LIBRARY} glfw)