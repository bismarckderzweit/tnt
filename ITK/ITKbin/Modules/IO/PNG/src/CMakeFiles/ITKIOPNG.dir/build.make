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

# Include any dependencies generated for this target.
include Modules/IO/PNG/src/CMakeFiles/ITKIOPNG.dir/depend.make

# Include the progress variables for this target.
include Modules/IO/PNG/src/CMakeFiles/ITKIOPNG.dir/progress.make

# Include the compile flags for this target's objects.
include Modules/IO/PNG/src/CMakeFiles/ITKIOPNG.dir/flags.make

Modules/IO/PNG/src/CMakeFiles/ITKIOPNG.dir/itkPNGImageIOFactory.cxx.o: Modules/IO/PNG/src/CMakeFiles/ITKIOPNG.dir/flags.make
Modules/IO/PNG/src/CMakeFiles/ITKIOPNG.dir/itkPNGImageIOFactory.cxx.o: /Users/kit/Documents/ITK/InsightToolKit/Modules/IO/PNG/src/itkPNGImageIOFactory.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/kit/Documents/ITK/ITKbin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Modules/IO/PNG/src/CMakeFiles/ITKIOPNG.dir/itkPNGImageIOFactory.cxx.o"
	cd /Users/kit/Documents/ITK/ITKbin/Modules/IO/PNG/src && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ITKIOPNG.dir/itkPNGImageIOFactory.cxx.o -c /Users/kit/Documents/ITK/InsightToolKit/Modules/IO/PNG/src/itkPNGImageIOFactory.cxx

Modules/IO/PNG/src/CMakeFiles/ITKIOPNG.dir/itkPNGImageIOFactory.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ITKIOPNG.dir/itkPNGImageIOFactory.cxx.i"
	cd /Users/kit/Documents/ITK/ITKbin/Modules/IO/PNG/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/kit/Documents/ITK/InsightToolKit/Modules/IO/PNG/src/itkPNGImageIOFactory.cxx > CMakeFiles/ITKIOPNG.dir/itkPNGImageIOFactory.cxx.i

Modules/IO/PNG/src/CMakeFiles/ITKIOPNG.dir/itkPNGImageIOFactory.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ITKIOPNG.dir/itkPNGImageIOFactory.cxx.s"
	cd /Users/kit/Documents/ITK/ITKbin/Modules/IO/PNG/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/kit/Documents/ITK/InsightToolKit/Modules/IO/PNG/src/itkPNGImageIOFactory.cxx -o CMakeFiles/ITKIOPNG.dir/itkPNGImageIOFactory.cxx.s

Modules/IO/PNG/src/CMakeFiles/ITKIOPNG.dir/itkPNGImageIO.cxx.o: Modules/IO/PNG/src/CMakeFiles/ITKIOPNG.dir/flags.make
Modules/IO/PNG/src/CMakeFiles/ITKIOPNG.dir/itkPNGImageIO.cxx.o: /Users/kit/Documents/ITK/InsightToolKit/Modules/IO/PNG/src/itkPNGImageIO.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/kit/Documents/ITK/ITKbin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object Modules/IO/PNG/src/CMakeFiles/ITKIOPNG.dir/itkPNGImageIO.cxx.o"
	cd /Users/kit/Documents/ITK/ITKbin/Modules/IO/PNG/src && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ITKIOPNG.dir/itkPNGImageIO.cxx.o -c /Users/kit/Documents/ITK/InsightToolKit/Modules/IO/PNG/src/itkPNGImageIO.cxx

Modules/IO/PNG/src/CMakeFiles/ITKIOPNG.dir/itkPNGImageIO.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ITKIOPNG.dir/itkPNGImageIO.cxx.i"
	cd /Users/kit/Documents/ITK/ITKbin/Modules/IO/PNG/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/kit/Documents/ITK/InsightToolKit/Modules/IO/PNG/src/itkPNGImageIO.cxx > CMakeFiles/ITKIOPNG.dir/itkPNGImageIO.cxx.i

Modules/IO/PNG/src/CMakeFiles/ITKIOPNG.dir/itkPNGImageIO.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ITKIOPNG.dir/itkPNGImageIO.cxx.s"
	cd /Users/kit/Documents/ITK/ITKbin/Modules/IO/PNG/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/kit/Documents/ITK/InsightToolKit/Modules/IO/PNG/src/itkPNGImageIO.cxx -o CMakeFiles/ITKIOPNG.dir/itkPNGImageIO.cxx.s

# Object files for target ITKIOPNG
ITKIOPNG_OBJECTS = \
"CMakeFiles/ITKIOPNG.dir/itkPNGImageIOFactory.cxx.o" \
"CMakeFiles/ITKIOPNG.dir/itkPNGImageIO.cxx.o"

# External object files for target ITKIOPNG
ITKIOPNG_EXTERNAL_OBJECTS =

lib/libITKIOPNG-4.13.a: Modules/IO/PNG/src/CMakeFiles/ITKIOPNG.dir/itkPNGImageIOFactory.cxx.o
lib/libITKIOPNG-4.13.a: Modules/IO/PNG/src/CMakeFiles/ITKIOPNG.dir/itkPNGImageIO.cxx.o
lib/libITKIOPNG-4.13.a: Modules/IO/PNG/src/CMakeFiles/ITKIOPNG.dir/build.make
lib/libITKIOPNG-4.13.a: Modules/IO/PNG/src/CMakeFiles/ITKIOPNG.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/kit/Documents/ITK/ITKbin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library ../../../../lib/libITKIOPNG-4.13.a"
	cd /Users/kit/Documents/ITK/ITKbin/Modules/IO/PNG/src && $(CMAKE_COMMAND) -P CMakeFiles/ITKIOPNG.dir/cmake_clean_target.cmake
	cd /Users/kit/Documents/ITK/ITKbin/Modules/IO/PNG/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ITKIOPNG.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Modules/IO/PNG/src/CMakeFiles/ITKIOPNG.dir/build: lib/libITKIOPNG-4.13.a

.PHONY : Modules/IO/PNG/src/CMakeFiles/ITKIOPNG.dir/build

Modules/IO/PNG/src/CMakeFiles/ITKIOPNG.dir/clean:
	cd /Users/kit/Documents/ITK/ITKbin/Modules/IO/PNG/src && $(CMAKE_COMMAND) -P CMakeFiles/ITKIOPNG.dir/cmake_clean.cmake
.PHONY : Modules/IO/PNG/src/CMakeFiles/ITKIOPNG.dir/clean

Modules/IO/PNG/src/CMakeFiles/ITKIOPNG.dir/depend:
	cd /Users/kit/Documents/ITK/ITKbin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/kit/Documents/ITK/InsightToolKit /Users/kit/Documents/ITK/InsightToolKit/Modules/IO/PNG/src /Users/kit/Documents/ITK/ITKbin /Users/kit/Documents/ITK/ITKbin/Modules/IO/PNG/src /Users/kit/Documents/ITK/ITKbin/Modules/IO/PNG/src/CMakeFiles/ITKIOPNG.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Modules/IO/PNG/src/CMakeFiles/ITKIOPNG.dir/depend

