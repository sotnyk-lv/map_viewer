cmake_minimum_required(VERSION 3.17)
project(map_viewer)

set(CMAKE_CXX_STANDARD 20)

include_directories(include)

add_executable(map_viewer
        main.cpp
        src/Window.cpp
        src/TileLoader.cpp
        src/Shader.cpp
        )

add_subdirectory(libs/glad)
include_directories(${glad_INCLUDE_DIR})
target_link_libraries(map_viewer glad)

find_package(OpenGL REQUIRED)
include_directories(${OPENGL_INCLUDE_DIR})
target_link_libraries(map_viewer ${OPENGL_gl_LIBRARY})

#set(glfw3_DIR "libs/glfw/lib/cmake/glfw3")
#find_package(glfw3 REQUIRED)
#include_directories(${glfw_INCLUDE_DIR})
#target_link_libraries(${CMAKE_PROJECT_NAME} glfw)

add_subdirectory(libs/glfw/glfw)
include_directories(${glfw_INCLUDE_DIR})
target_link_libraries(map_viewer glfw)

add_subdirectory(libs/curlpp)
include_directories(${curlpp_INCLUDE_DIR})
include_directories(libs/curlpp/include)
target_link_libraries(map_viewer curlpp)

target_link_libraries(map_viewer ${CMAKE_DL_LIBS})

include_directories(libs/glm-0.9.9.8)

