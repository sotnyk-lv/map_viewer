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

# Include any dependencies generated for this target.
include 3rdPartyLibs/curlpp/CMakeFiles/curlpp.dir/depend.make

# Include the progress variables for this target.
include 3rdPartyLibs/curlpp/CMakeFiles/curlpp.dir/progress.make

# Include the compile flags for this target's objects.
include 3rdPartyLibs/curlpp/CMakeFiles/curlpp.dir/flags.make

# Object files for target curlpp
curlpp_OBJECTS =

# External object files for target curlpp
curlpp_EXTERNAL_OBJECTS =

3rdPartyLibs/curlpp/libcurlpp.a: 3rdPartyLibs/curlpp/CMakeFiles/curlpp.dir/build.make
3rdPartyLibs/curlpp/libcurlpp.a: 3rdPartyLibs/curlpp/CMakeFiles/curlpp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\sotnyk\SoftServe\task\map_viewer\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Linking CXX static library libcurlpp.a"
	cd /d E:\sotnyk\SoftServe\task\map_viewer\cmake-build-debug\3rdPartyLibs\curlpp && $(CMAKE_COMMAND) -P CMakeFiles\curlpp.dir\cmake_clean_target.cmake
	cd /d E:\sotnyk\SoftServe\task\map_viewer\cmake-build-debug\3rdPartyLibs\curlpp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\curlpp.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
3rdPartyLibs/curlpp/CMakeFiles/curlpp.dir/build: 3rdPartyLibs/curlpp/libcurlpp.a

.PHONY : 3rdPartyLibs/curlpp/CMakeFiles/curlpp.dir/build

3rdPartyLibs/curlpp/CMakeFiles/curlpp.dir/clean:
	cd /d E:\sotnyk\SoftServe\task\map_viewer\cmake-build-debug\3rdPartyLibs\curlpp && $(CMAKE_COMMAND) -P CMakeFiles\curlpp.dir\cmake_clean.cmake
.PHONY : 3rdPartyLibs/curlpp/CMakeFiles/curlpp.dir/clean

3rdPartyLibs/curlpp/CMakeFiles/curlpp.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\sotnyk\SoftServe\task\map_viewer E:\sotnyk\SoftServe\task\map_viewer\3rdPartyLibs\curlpp E:\sotnyk\SoftServe\task\map_viewer\cmake-build-debug E:\sotnyk\SoftServe\task\map_viewer\cmake-build-debug\3rdPartyLibs\curlpp E:\sotnyk\SoftServe\task\map_viewer\cmake-build-debug\3rdPartyLibs\curlpp\CMakeFiles\curlpp.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : 3rdPartyLibs/curlpp/CMakeFiles/curlpp.dir/depend
