# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/kit/Documents/ITK/InsightToolKit

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/kit/Documents/ITK/ITKbin

# Utility rule file for ITKOptimizers-all.

# Include the progress variables for this target.
include Modules/Numerics/Optimizers/CMakeFiles/ITKOptimizers-all.dir/progress.make

ITKOptimizers-all: Modules/Numerics/Optimizers/CMakeFiles/ITKOptimizers-all.dir/build.make

.PHONY : ITKOptimizers-all

# Rule to build all files generated by this target.
Modules/Numerics/Optimizers/CMakeFiles/ITKOptimizers-all.dir/build: ITKOptimizers-all

.PHONY : Modules/Numerics/Optimizers/CMakeFiles/ITKOptimizers-all.dir/build

Modules/Numerics/Optimizers/CMakeFiles/ITKOptimizers-all.dir/clean:
	cd /Users/kit/Documents/ITK/ITKbin/Modules/Numerics/Optimizers && $(CMAKE_COMMAND) -P CMakeFiles/ITKOptimizers-all.dir/cmake_clean.cmake
.PHONY : Modules/Numerics/Optimizers/CMakeFiles/ITKOptimizers-all.dir/clean

Modules/Numerics/Optimizers/CMakeFiles/ITKOptimizers-all.dir/depend:
	cd /Users/kit/Documents/ITK/ITKbin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/kit/Documents/ITK/InsightToolKit /Users/kit/Documents/ITK/InsightToolKit/Modules/Numerics/Optimizers /Users/kit/Documents/ITK/ITKbin /Users/kit/Documents/ITK/ITKbin/Modules/Numerics/Optimizers /Users/kit/Documents/ITK/ITKbin/Modules/Numerics/Optimizers/CMakeFiles/ITKOptimizers-all.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Modules/Numerics/Optimizers/CMakeFiles/ITKOptimizers-all.dir/depend

