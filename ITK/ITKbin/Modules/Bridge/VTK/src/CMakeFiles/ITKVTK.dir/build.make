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
include Modules/Bridge/VTK/src/CMakeFiles/ITKVTK.dir/depend.make

# Include the progress variables for this target.
include Modules/Bridge/VTK/src/CMakeFiles/ITKVTK.dir/progress.make

# Include the compile flags for this target's objects.
include Modules/Bridge/VTK/src/CMakeFiles/ITKVTK.dir/flags.make

Modules/Bridge/VTK/src/CMakeFiles/ITKVTK.dir/itkVTKImageExportBase.cxx.o: Modules/Bridge/VTK/src/CMakeFiles/ITKVTK.dir/flags.make
Modules/Bridge/VTK/src/CMakeFiles/ITKVTK.dir/itkVTKImageExportBase.cxx.o: /Users/kit/Documents/ITK/InsightToolKit/Modules/Bridge/VTK/src/itkVTKImageExportBase.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/kit/Documents/ITK/ITKbin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Modules/Bridge/VTK/src/CMakeFiles/ITKVTK.dir/itkVTKImageExportBase.cxx.o"
	cd /Users/kit/Documents/ITK/ITKbin/Modules/Bridge/VTK/src && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ITKVTK.dir/itkVTKImageExportBase.cxx.o -c /Users/kit/Documents/ITK/InsightToolKit/Modules/Bridge/VTK/src/itkVTKImageExportBase.cxx

Modules/Bridge/VTK/src/CMakeFiles/ITKVTK.dir/itkVTKImageExportBase.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ITKVTK.dir/itkVTKImageExportBase.cxx.i"
	cd /Users/kit/Documents/ITK/ITKbin/Modules/Bridge/VTK/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/kit/Documents/ITK/InsightToolKit/Modules/Bridge/VTK/src/itkVTKImageExportBase.cxx > CMakeFiles/ITKVTK.dir/itkVTKImageExportBase.cxx.i

Modules/Bridge/VTK/src/CMakeFiles/ITKVTK.dir/itkVTKImageExportBase.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ITKVTK.dir/itkVTKImageExportBase.cxx.s"
	cd /Users/kit/Documents/ITK/ITKbin/Modules/Bridge/VTK/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/kit/Documents/ITK/InsightToolKit/Modules/Bridge/VTK/src/itkVTKImageExportBase.cxx -o CMakeFiles/ITKVTK.dir/itkVTKImageExportBase.cxx.s

# Object files for target ITKVTK
ITKVTK_OBJECTS = \
"CMakeFiles/ITKVTK.dir/itkVTKImageExportBase.cxx.o"

# External object files for target ITKVTK
ITKVTK_EXTERNAL_OBJECTS =

lib/libITKVTK-4.13.a: Modules/Bridge/VTK/src/CMakeFiles/ITKVTK.dir/itkVTKImageExportBase.cxx.o
lib/libITKVTK-4.13.a: Modules/Bridge/VTK/src/CMakeFiles/ITKVTK.dir/build.make
lib/libITKVTK-4.13.a: Modules/Bridge/VTK/src/CMakeFiles/ITKVTK.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/kit/Documents/ITK/ITKbin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../../../lib/libITKVTK-4.13.a"
	cd /Users/kit/Documents/ITK/ITKbin/Modules/Bridge/VTK/src && $(CMAKE_COMMAND) -P CMakeFiles/ITKVTK.dir/cmake_clean_target.cmake
	cd /Users/kit/Documents/ITK/ITKbin/Modules/Bridge/VTK/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ITKVTK.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Modules/Bridge/VTK/src/CMakeFiles/ITKVTK.dir/build: lib/libITKVTK-4.13.a

.PHONY : Modules/Bridge/VTK/src/CMakeFiles/ITKVTK.dir/build

Modules/Bridge/VTK/src/CMakeFiles/ITKVTK.dir/clean:
	cd /Users/kit/Documents/ITK/ITKbin/Modules/Bridge/VTK/src && $(CMAKE_COMMAND) -P CMakeFiles/ITKVTK.dir/cmake_clean.cmake
.PHONY : Modules/Bridge/VTK/src/CMakeFiles/ITKVTK.dir/clean

Modules/Bridge/VTK/src/CMakeFiles/ITKVTK.dir/depend:
	cd /Users/kit/Documents/ITK/ITKbin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/kit/Documents/ITK/InsightToolKit /Users/kit/Documents/ITK/InsightToolKit/Modules/Bridge/VTK/src /Users/kit/Documents/ITK/ITKbin /Users/kit/Documents/ITK/ITKbin/Modules/Bridge/VTK/src /Users/kit/Documents/ITK/ITKbin/Modules/Bridge/VTK/src/CMakeFiles/ITKVTK.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Modules/Bridge/VTK/src/CMakeFiles/ITKVTK.dir/depend

