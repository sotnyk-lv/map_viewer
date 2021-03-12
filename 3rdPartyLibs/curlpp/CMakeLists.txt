message("-- Building curlpp")

cmake_minimum_required(VERSION 3.17)

project(curlpp)

add_library(curlpp bin/libcurlpp.dll)
#add_library(curlpp STATIC lib/libcurlpp.a lib/libcurlpp.dll.a)

include_directories(include)
target_include_directories(curlpp PUBLIC include)

set_target_properties(curlpp PROPERTIES LINKER_LANGUAGE CXX)