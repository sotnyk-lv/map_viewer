# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /snap/clion/139/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/139/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sotnyk/sotnyk/SoftServe/task/map_viewer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sotnyk/sotnyk/SoftServe/task/map_viewer/cmake-build-debug

# Include any dependencies generated for this target.
include 3rdPartyLibs/glfw/CMakeFiles/GLFW.dir/depend.make

# Include the progress variables for this target.
include 3rdPartyLibs/glfw/CMakeFiles/GLFW.dir/progress.make

# Include the compile flags for this target's objects.
include 3rdPartyLibs/glfw/CMakeFiles/GLFW.dir/flags.make

# Object files for target GLFW
GLFW_OBJECTS =

# External object files for target GLFW
GLFW_EXTERNAL_OBJECTS =

3rdPartyLibs/glfw/libGLFW.a: 3rdPartyLibs/glfw/CMakeFiles/GLFW.dir/build.make
3rdPartyLibs/glfw/libGLFW.a: 3rdPartyLibs/glfw/CMakeFiles/GLFW.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sotnyk/sotnyk/SoftServe/task/map_viewer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Linking CXX static library libGLFW.a"
	cd /home/sotnyk/sotnyk/SoftServe/task/map_viewer/cmake-build-debug/3rdPartyLibs/glfw && $(CMAKE_COMMAND) -P CMakeFiles/GLFW.dir/cmake_clean_target.cmake
	cd /home/sotnyk/sotnyk/SoftServe/task/map_viewer/cmake-build-debug/3rdPartyLibs/glfw && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/GLFW.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
3rdPartyLibs/glfw/CMakeFiles/GLFW.dir/build: 3rdPartyLibs/glfw/libGLFW.a

.PHONY : 3rdPartyLibs/glfw/CMakeFiles/GLFW.dir/build

3rdPartyLibs/glfw/CMakeFiles/GLFW.dir/clean:
	cd /home/sotnyk/sotnyk/SoftServe/task/map_viewer/cmake-build-debug/3rdPartyLibs/glfw && $(CMAKE_COMMAND) -P CMakeFiles/GLFW.dir/cmake_clean.cmake
.PHONY : 3rdPartyLibs/glfw/CMakeFiles/GLFW.dir/clean

3rdPartyLibs/glfw/CMakeFiles/GLFW.dir/depend:
	cd /home/sotnyk/sotnyk/SoftServe/task/map_viewer/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sotnyk/sotnyk/SoftServe/task/map_viewer /home/sotnyk/sotnyk/SoftServe/task/map_viewer/3rdPartyLibs/glfw /home/sotnyk/sotnyk/SoftServe/task/map_viewer/cmake-build-debug /home/sotnyk/sotnyk/SoftServe/task/map_viewer/cmake-build-debug/3rdPartyLibs/glfw /home/sotnyk/sotnyk/SoftServe/task/map_viewer/cmake-build-debug/3rdPartyLibs/glfw/CMakeFiles/GLFW.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : 3rdPartyLibs/glfw/CMakeFiles/GLFW.dir/depend

