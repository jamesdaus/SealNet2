# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /data/hieu_workspace/dlib-19.22/dlib/cmake_utils/test_for_libpng

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /data/hieu_workspace/SealNet2/build/dlib_build/test_for_libpng_build

# Include any dependencies generated for this target.
include CMakeFiles/libpng_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/libpng_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/libpng_test.dir/flags.make

CMakeFiles/libpng_test.dir/libpng_test.cpp.o: CMakeFiles/libpng_test.dir/flags.make
CMakeFiles/libpng_test.dir/libpng_test.cpp.o: /data/hieu_workspace/dlib-19.22/dlib/cmake_utils/test_for_libpng/libpng_test.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /data/hieu_workspace/SealNet2/build/dlib_build/test_for_libpng_build/CMakeFiles $(CMAKE_PROGRESS_1)
	@echo "Building CXX object CMakeFiles/libpng_test.dir/libpng_test.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/libpng_test.dir/libpng_test.cpp.o -c /data/hieu_workspace/dlib-19.22/dlib/cmake_utils/test_for_libpng/libpng_test.cpp

CMakeFiles/libpng_test.dir/libpng_test.cpp.i: cmake_force
	@echo "Preprocessing CXX source to CMakeFiles/libpng_test.dir/libpng_test.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /data/hieu_workspace/dlib-19.22/dlib/cmake_utils/test_for_libpng/libpng_test.cpp > CMakeFiles/libpng_test.dir/libpng_test.cpp.i

CMakeFiles/libpng_test.dir/libpng_test.cpp.s: cmake_force
	@echo "Compiling CXX source to assembly CMakeFiles/libpng_test.dir/libpng_test.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /data/hieu_workspace/dlib-19.22/dlib/cmake_utils/test_for_libpng/libpng_test.cpp -o CMakeFiles/libpng_test.dir/libpng_test.cpp.s

CMakeFiles/libpng_test.dir/libpng_test.cpp.o.requires:
.PHONY : CMakeFiles/libpng_test.dir/libpng_test.cpp.o.requires

CMakeFiles/libpng_test.dir/libpng_test.cpp.o.provides: CMakeFiles/libpng_test.dir/libpng_test.cpp.o.requires
	$(MAKE) -f CMakeFiles/libpng_test.dir/build.make CMakeFiles/libpng_test.dir/libpng_test.cpp.o.provides.build
.PHONY : CMakeFiles/libpng_test.dir/libpng_test.cpp.o.provides

CMakeFiles/libpng_test.dir/libpng_test.cpp.o.provides.build: CMakeFiles/libpng_test.dir/libpng_test.cpp.o

# Object files for target libpng_test
libpng_test_OBJECTS = \
"CMakeFiles/libpng_test.dir/libpng_test.cpp.o"

# External object files for target libpng_test
libpng_test_EXTERNAL_OBJECTS =

libpng_test: CMakeFiles/libpng_test.dir/libpng_test.cpp.o
libpng_test: CMakeFiles/libpng_test.dir/build.make
libpng_test: /usr/local/lib/libpng.so
libpng_test: /usr/lib64/libz.so
libpng_test: CMakeFiles/libpng_test.dir/link.txt
	@echo "Linking CXX executable libpng_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libpng_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/libpng_test.dir/build: libpng_test
.PHONY : CMakeFiles/libpng_test.dir/build

CMakeFiles/libpng_test.dir/requires: CMakeFiles/libpng_test.dir/libpng_test.cpp.o.requires
.PHONY : CMakeFiles/libpng_test.dir/requires

CMakeFiles/libpng_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/libpng_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/libpng_test.dir/clean

CMakeFiles/libpng_test.dir/depend:
	cd /data/hieu_workspace/SealNet2/build/dlib_build/test_for_libpng_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /data/hieu_workspace/dlib-19.22/dlib/cmake_utils/test_for_libpng /data/hieu_workspace/dlib-19.22/dlib/cmake_utils/test_for_libpng /data/hieu_workspace/SealNet2/build/dlib_build/test_for_libpng_build /data/hieu_workspace/SealNet2/build/dlib_build/test_for_libpng_build /data/hieu_workspace/SealNet2/build/dlib_build/test_for_libpng_build/CMakeFiles/libpng_test.dir/DependInfo.cmake
.PHONY : CMakeFiles/libpng_test.dir/depend

