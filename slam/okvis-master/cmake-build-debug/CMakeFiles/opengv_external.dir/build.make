# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/liamkelly/vandyhacks/slam/okvis-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug

# Utility rule file for opengv_external.

# Include the progress variables for this target.
include CMakeFiles/opengv_external.dir/progress.make

CMakeFiles/opengv_external: CMakeFiles/opengv_external-complete


CMakeFiles/opengv_external-complete: opengv/src/opengv_external-stamp/opengv_external-install
CMakeFiles/opengv_external-complete: opengv/src/opengv_external-stamp/opengv_external-mkdir
CMakeFiles/opengv_external-complete: opengv/src/opengv_external-stamp/opengv_external-download
CMakeFiles/opengv_external-complete: opengv/src/opengv_external-stamp/opengv_external-update
CMakeFiles/opengv_external-complete: opengv/src/opengv_external-stamp/opengv_external-patch
CMakeFiles/opengv_external-complete: opengv/src/opengv_external-stamp/opengv_external-configure
CMakeFiles/opengv_external-complete: opengv/src/opengv_external-stamp/opengv_external-build
CMakeFiles/opengv_external-complete: opengv/src/opengv_external-stamp/opengv_external-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'opengv_external'"
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E make_directory /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/CMakeFiles
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E touch /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/CMakeFiles/opengv_external-complete
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E touch /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/opengv/src/opengv_external-stamp/opengv_external-done

opengv/src/opengv_external-stamp/opengv_external-install: opengv/src/opengv_external-stamp/opengv_external-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Performing install step for 'opengv_external'"
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/opengv/src/opengv_external-build && make install
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/opengv/src/opengv_external-build && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E touch /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/opengv/src/opengv_external-stamp/opengv_external-install

opengv/src/opengv_external-stamp/opengv_external-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'opengv_external'"
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E make_directory /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/opengv/src/opengv
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E make_directory /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/opengv/src/opengv_external-build
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E make_directory /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E make_directory /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/opengv/tmp
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E make_directory /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/opengv/src/opengv_external-stamp
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E make_directory /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/opengv/src
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E touch /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/opengv/src/opengv_external-stamp/opengv_external-mkdir

opengv/src/opengv_external-stamp/opengv_external-download: opengv/src/opengv_external-stamp/opengv_external-gitinfo.txt
opengv/src/opengv_external-stamp/opengv_external-download: opengv/src/opengv_external-stamp/opengv_external-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (git clone) for 'opengv_external'"
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/opengv/src && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -P /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/opengv/tmp/opengv_external-gitclone.cmake
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/opengv/src && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E touch /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/opengv/src/opengv_external-stamp/opengv_external-download

opengv/src/opengv_external-stamp/opengv_external-update: opengv/src/opengv_external-stamp/opengv_external-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No update step for 'opengv_external'"
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/opengv/src/opengv && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E echo_append
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/opengv/src/opengv && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E touch /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/opengv/src/opengv_external-stamp/opengv_external-update

opengv/src/opengv_external-stamp/opengv_external-patch: opengv/src/opengv_external-stamp/opengv_external-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Forcing our own CMakeLists.txt to build OpenGV (static library support)."
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/opengv/src/opengv && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E copy /Users/liamkelly/vandyhacks/slam/okvis-master/cmake/opengv/CMakeLists.txt /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/opengv/src/opengv/CMakeLists.txt
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/opengv/src/opengv && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E copy /Users/liamkelly/vandyhacks/slam/okvis-master/cmake/opengv/opengvConfig.cmake.in /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/opengv/src/opengv/opengvConfig.cmake.in
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/opengv/src/opengv && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E touch /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/opengv/src/opengv_external-stamp/opengv_external-patch

opengv/src/opengv_external-stamp/opengv_external-configure: opengv/tmp/opengv_external-cfgcmd.txt
opengv/src/opengv_external-stamp/opengv_external-configure: opengv/src/opengv_external-stamp/opengv_external-update
opengv/src/opengv_external-stamp/opengv_external-configure: opengv/src/opengv_external-stamp/opengv_external-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Performing configure step for 'opengv_external'"
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/opengv/src/opengv_external-build && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -DCMAKE_INSTALL_PREFIX:PATH=/Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug -DCMAKE_BUILD_TYPE:STRING=Debug "-DCMAKE_CXX_FLAGS= -march=native -Wall -std=c++11 -fPIC -mssse3 -Wno-unused-parameter -Wno-maybe-uninitialized -Wno-sign-compare -Wno-unused-but-set-variable -Wno-unused-variable -Wno-pedantic" "-GCodeBlocks - Unix Makefiles" /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/opengv/src/opengv
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/opengv/src/opengv_external-build && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E touch /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/opengv/src/opengv_external-stamp/opengv_external-configure

opengv/src/opengv_external-stamp/opengv_external-build: opengv/src/opengv_external-stamp/opengv_external-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Performing build step for 'opengv_external'"
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/opengv/src/opengv_external-build && make -j3
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/opengv/src/opengv_external-build && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E touch /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/opengv/src/opengv_external-stamp/opengv_external-build

opengv_external: CMakeFiles/opengv_external
opengv_external: CMakeFiles/opengv_external-complete
opengv_external: opengv/src/opengv_external-stamp/opengv_external-install
opengv_external: opengv/src/opengv_external-stamp/opengv_external-mkdir
opengv_external: opengv/src/opengv_external-stamp/opengv_external-download
opengv_external: opengv/src/opengv_external-stamp/opengv_external-update
opengv_external: opengv/src/opengv_external-stamp/opengv_external-patch
opengv_external: opengv/src/opengv_external-stamp/opengv_external-configure
opengv_external: opengv/src/opengv_external-stamp/opengv_external-build
opengv_external: CMakeFiles/opengv_external.dir/build.make

.PHONY : opengv_external

# Rule to build all files generated by this target.
CMakeFiles/opengv_external.dir/build: opengv_external

.PHONY : CMakeFiles/opengv_external.dir/build

CMakeFiles/opengv_external.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/opengv_external.dir/cmake_clean.cmake
.PHONY : CMakeFiles/opengv_external.dir/clean

CMakeFiles/opengv_external.dir/depend:
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/liamkelly/vandyhacks/slam/okvis-master /Users/liamkelly/vandyhacks/slam/okvis-master /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/CMakeFiles/opengv_external.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/opengv_external.dir/depend

