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
include CMakeFiles/get_img.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/get_img.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/get_img.dir/flags.make

CMakeFiles/get_img.dir/get_img.cpp.obj: CMakeFiles/get_img.dir/flags.make
CMakeFiles/get_img.dir/get_img.cpp.obj: CMakeFiles/get_img.dir/includes_CXX.rsp
CMakeFiles/get_img.dir/get_img.cpp.obj: ../get_img.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\sotnyk\SoftServe\task\map_viewer\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/get_img.dir/get_img.cpp.obj"
	C:\msys64\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\get_img.dir\get_img.cpp.obj -c E:\sotnyk\SoftServe\task\map_viewer\get_img.cpp

CMakeFiles/get_img.dir/get_img.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/get_img.dir/get_img.cpp.i"
	C:\msys64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\sotnyk\SoftServe\task\map_viewer\get_img.cpp > CMakeFiles\get_img.dir\get_img.cpp.i

CMakeFiles/get_img.dir/get_img.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/get_img.dir/get_img.cpp.s"
	C:\msys64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\sotnyk\SoftServe\task\map_viewer\get_img.cpp -o CMakeFiles\get_img.dir\get_img.cpp.s

CMakeFiles/get_img.dir/src/TileLoader.cpp.obj: CMakeFiles/get_img.dir/flags.make
CMakeFiles/get_img.dir/src/TileLoader.cpp.obj: CMakeFiles/get_img.dir/includes_CXX.rsp
CMakeFiles/get_img.dir/src/TileLoader.cpp.obj: ../src/TileLoader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\sotnyk\SoftServe\task\map_viewer\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/get_img.dir/src/TileLoader.cpp.obj"
	C:\msys64\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\get_img.dir\src\TileLoader.cpp.obj -c E:\sotnyk\SoftServe\task\map_viewer\src\TileLoader.cpp

CMakeFiles/get_img.dir/src/TileLoader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/get_img.dir/src/TileLoader.cpp.i"
	C:\msys64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\sotnyk\SoftServe\task\map_viewer\src\TileLoader.cpp > CMakeFiles\get_img.dir\src\TileLoader.cpp.i

CMakeFiles/get_img.dir/src/TileLoader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/get_img.dir/src/TileLoader.cpp.s"
	C:\msys64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\sotnyk\SoftServe\task\map_viewer\src\TileLoader.cpp -o CMakeFiles\get_img.dir\src\TileLoader.cpp.s

# Object files for target get_img
get_img_OBJECTS = \
"CMakeFiles/get_img.dir/get_img.cpp.obj" \
"CMakeFiles/get_img.dir/src/TileLoader.cpp.obj"

# External object files for target get_img
get_img_EXTERNAL_OBJECTS =

get_img.exe: CMakeFiles/get_img.dir/get_img.cpp.obj
get_img.exe: CMakeFiles/get_img.dir/src/TileLoader.cpp.obj
get_img.exe: CMakeFiles/get_img.dir/build.make
get_img.exe: libs/curlpp/libcurlpp.dll.a
get_img.exe: C:/msys64/mingw64/lib/libcurl.dll.a
get_img.exe: CMakeFiles/get_img.dir/linklibs.rsp
get_img.exe: CMakeFiles/get_img.dir/objects1.rsp
get_img.exe: CMakeFiles/get_img.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\sotnyk\SoftServe\task\map_viewer\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable get_img.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\get_img.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/get_img.dir/build: get_img.exe

.PHONY : CMakeFiles/get_img.dir/build

CMakeFiles/get_img.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\get_img.dir\cmake_clean.cmake
.PHONY : CMakeFiles/get_img.dir/clean

CMakeFiles/get_img.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\sotnyk\SoftServe\task\map_viewer E:\sotnyk\SoftServe\task\map_viewer E:\sotnyk\SoftServe\task\map_viewer\cmake-build-debug E:\sotnyk\SoftServe\task\map_viewer\cmake-build-debug E:\sotnyk\SoftServe\task\map_viewer\cmake-build-debug\CMakeFiles\get_img.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/get_img.dir/depend

