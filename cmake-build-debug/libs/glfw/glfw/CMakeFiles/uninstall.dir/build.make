# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\msys64\mingw64\bin\cmake.exe

# The command to remove a file.
RM = C:\msys64\mingw64\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = E:\sotnyk\SoftServe\task\map_viewer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = E:\sotnyk\SoftServe\task\map_viewer\cmake-build-debug

# Utility rule file for uninstall.

# Include the progress variables for this target.
include libs/glfw/glfw/CMakeFiles/uninstall.dir/progress.make

libs/glfw/glfw/CMakeFiles/uninstall:
	cd /d E:\sotnyk\SoftServe\task\map_viewer\cmake-build-debug\libs\glfw\glfw && C:\msys64\mingw64\bin\cmake.exe -P E:/sotnyk/SoftServe/task/map_viewer/cmake-build-debug/libs/glfw/glfw/cmake_uninstall.cmake

uninstall: libs/glfw/glfw/CMakeFiles/uninstall
uninstall: libs/glfw/glfw/CMakeFiles/uninstall.dir/build.make

.PHONY : uninstall

# Rule to build all files generated by this target.
libs/glfw/glfw/CMakeFiles/uninstall.dir/build: uninstall

.PHONY : libs/glfw/glfw/CMakeFiles/uninstall.dir/build

libs/glfw/glfw/CMakeFiles/uninstall.dir/clean:
	cd /d E:\sotnyk\SoftServe\task\map_viewer\cmake-build-debug\libs\glfw\glfw && $(CMAKE_COMMAND) -P CMakeFiles\uninstall.dir\cmake_clean.cmake
.PHONY : libs/glfw/glfw/CMakeFiles/uninstall.dir/clean

libs/glfw/glfw/CMakeFiles/uninstall.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\sotnyk\SoftServe\task\map_viewer E:\sotnyk\SoftServe\task\map_viewer\libs\glfw\glfw E:\sotnyk\SoftServe\task\map_viewer\cmake-build-debug E:\sotnyk\SoftServe\task\map_viewer\cmake-build-debug\libs\glfw\glfw E:\sotnyk\SoftServe\task\map_viewer\cmake-build-debug\libs\glfw\glfw\CMakeFiles\uninstall.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : libs/glfw/glfw/CMakeFiles/uninstall.dir/depend

