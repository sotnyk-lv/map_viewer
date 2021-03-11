message("-- building glfw")

cmake_minimum_required(VERSION 3.17)

project(GLFW)

add_library(GLFW STATIC
        install/lib/libglfw3.a
        install/lib/pkgconfig/glfw3.pc)

set_target_properties(GLFW PROPERTIES LINKER_LANGUAGE CXX)

install(TARGETS GLFW DESTINATION lib)
install(FILES install/include/GLFW/glfw3native.h install/include/GLFW/glfw3.h DESTINATION include)