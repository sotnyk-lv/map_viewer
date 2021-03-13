cmake_minimum_required(VERSION 3.17)
project(map_viewer)

set(CMAKE_CXX_STANDARD 20)

include_directories(include)

add_executable(${CMAKE_PROJECT_NAME}
        main.cpp
        src/Window.cpp
        src/TileLoader.cpp
        )

add_subdirectory(libs/glad)
include_directories(${glad_INCLUDE_DIR})
target_link_libraries(${CMAKE_PROJECT_NAME} glad)

find_package(OpenGL REQUIRED)
include_directories(${OPENGL_INCLUDE_DIR})
target_link_libraries(${CMAKE_PROJECT_NAME} ${OPENGL_gl_LIBRARY})

#set(glfw3_DIR "libs/glfw/lib/cmake/glfw3")
#find_package(glfw3 REQUIRED)
#include_directories(${glfw_INCLUDE_DIR})
#target_link_libraries(${CMAKE_PROJECT_NAME} glfw)

add_subdirectory(libs/glfw/glfw)
include_directories(${glfw_INCLUDE_DIR})
target_link_libraries(${CMAKE_PROJECT_NAME} glfw)

add_subdirectory(libs/curlpp)
include_directories(${curlpp_INCLUDE_DIR})
include_directories(libs/curlpp/include)
target_link_libraries(${CMAKE_PROJECT_NAME} curlpp)

#include_directories(include)
#
#add_executable(get_img
#        get_img.cpp
#        src/TileLoader.cpp
#        )
#
#add_subdirectory(libs/curlpp)
#include_directories(${curlpp_INCLUDE_DIR})
#include_directories(libs/curlpp/include)
#target_link_libraries(get_img curlpp)