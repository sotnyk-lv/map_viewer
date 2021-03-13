message("-- Building glad")

cmake_minimum_required(VERSION 3.17)

project(glad)

add_library(glad STATIC src/glad.c)

include_directories(include)
target_include_directories(glad PUBLIC include)

#set_target_properties(glad PROPERTIES LINKER_LANGUAGE CXX)