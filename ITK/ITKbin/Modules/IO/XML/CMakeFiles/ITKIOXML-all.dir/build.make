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

# Utility rule file for ITKIOXML-all.

# Include the progress variables for this target.
include Modules/IO/XML/CMakeFiles/ITKIOXML-all.dir/progress.make

ITKIOXML-all: Modules/IO/XML/CMakeFiles/ITKIOXML-all.dir/build.make

.PHONY : ITKIOXML-all

# Rule to build all files generated by this target.
Modules/IO/XML/CMakeFiles/ITKIOXML-all.dir/build: ITKIOXML-all

.PHONY : Modules/IO/XML/CMakeFiles/ITKIOXML-all.dir/build

Modules/IO/XML/CMakeFiles/ITKIOXML-all.dir/clean:
	cd /Users/kit/Documents/ITK/ITKbin/Modules/IO/XML && $(CMAKE_COMMAND) -P CMakeFiles/ITKIOXML-all.dir/cmake_clean.cmake
.PHONY : Modules/IO/XML/CMakeFiles/ITKIOXML-all.dir/clean

Modules/IO/XML/CMakeFiles/ITKIOXML-all.dir/depend:
	cd /Users/kit/Documents/ITK/ITKbin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/kit/Documents/ITK/InsightToolKit /Users/kit/Documents/ITK/InsightToolKit/Modules/IO/XML /Users/kit/Documents/ITK/ITKbin /Users/kit/Documents/ITK/ITKbin/Modules/IO/XML /Users/kit/Documents/ITK/ITKbin/Modules/IO/XML/CMakeFiles/ITKIOXML-all.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Modules/IO/XML/CMakeFiles/ITKIOXML-all.dir/depend

