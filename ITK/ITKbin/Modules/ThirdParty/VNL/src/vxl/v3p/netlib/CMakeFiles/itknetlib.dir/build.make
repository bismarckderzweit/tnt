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
include Modules/ThirdParty/VNL/src/vxl/v3p/netlib/CMakeFiles/itknetlib.dir/depend.make

# Include the progress variables for this target.
include Modules/ThirdParty/VNL/src/vxl/v3p/netlib/CMakeFiles/itknetlib.dir/progress.make

# Include the compile flags for this target's objects.
include Modules/ThirdParty/VNL/src/vxl/v3p/netlib/CMakeFiles/itknetlib.dir/flags.make

Modules/ThirdParty/VNL/src/vxl/v3p/netlib/CMakeFiles/itknetlib.dir/triangle.c.o: Modules/ThirdParty/VNL/src/vxl/v3p/netlib/CMakeFiles/itknetlib.dir/flags.make
Modules/ThirdParty/VNL/src/vxl/v3p/netlib/CMakeFiles/itknetlib.dir/triangle.c.o: /Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/VNL/src/vxl/v3p/netlib/triangle.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/kit/Documents/ITK/ITKbin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object Modules/ThirdParty/VNL/src/vxl/v3p/netlib/CMakeFiles/itknetlib.dir/triangle.c.o"
	cd /Users/kit/Documents/ITK/ITKbin/Modules/ThirdParty/VNL/src/vxl/v3p/netlib && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/itknetlib.dir/triangle.c.o   -c /Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/VNL/src/vxl/v3p/netlib/triangle.c

Modules/ThirdParty/VNL/src/vxl/v3p/netlib/CMakeFiles/itknetlib.dir/triangle.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/itknetlib.dir/triangle.c.i"
	cd /Users/kit/Documents/ITK/ITKbin/Modules/ThirdParty/VNL/src/vxl/v3p/netlib && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/VNL/src/vxl/v3p/netlib/triangle.c > CMakeFiles/itknetlib.dir/triangle.c.i

Modules/ThirdParty/VNL/src/vxl/v3p/netlib/CMakeFiles/itknetlib.dir/triangle.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/itknetlib.dir/triangle.c.s"
	cd /Users/kit/Documents/ITK/ITKbin/Modules/ThirdParty/VNL/src/vxl/v3p/netlib && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/VNL/src/vxl/v3p/netlib/triangle.c -o CMakeFiles/itknetlib.dir/triangle.c.s

# Object files for target itknetlib
itknetlib_OBJECTS = \
"CMakeFiles/itknetlib.dir/triangle.c.o"

# External object files for target itknetlib
itknetlib_EXTERNAL_OBJECTS =

lib/libitknetlib-4.13.a: Modules/ThirdParty/VNL/src/vxl/v3p/netlib/CMakeFiles/itknetlib.dir/triangle.c.o
lib/libitknetlib-4.13.a: Modules/ThirdParty/VNL/src/vxl/v3p/netlib/CMakeFiles/itknetlib.dir/build.make
lib/libitknetlib-4.13.a: Modules/ThirdParty/VNL/src/vxl/v3p/netlib/CMakeFiles/itknetlib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/kit/Documents/ITK/ITKbin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library ../../../../../../../lib/libitknetlib-4.13.a"
	cd /Users/kit/Documents/ITK/ITKbin/Modules/ThirdParty/VNL/src/vxl/v3p/netlib && $(CMAKE_COMMAND) -P CMakeFiles/itknetlib.dir/cmake_clean_target.cmake
	cd /Users/kit/Documents/ITK/ITKbin/Modules/ThirdParty/VNL/src/vxl/v3p/netlib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/itknetlib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Modules/ThirdParty/VNL/src/vxl/v3p/netlib/CMakeFiles/itknetlib.dir/build: lib/libitknetlib-4.13.a

.PHONY : Modules/ThirdParty/VNL/src/vxl/v3p/netlib/CMakeFiles/itknetlib.dir/build

Modules/ThirdParty/VNL/src/vxl/v3p/netlib/CMakeFiles/itknetlib.dir/clean:
	cd /Users/kit/Documents/ITK/ITKbin/Modules/ThirdParty/VNL/src/vxl/v3p/netlib && $(CMAKE_COMMAND) -P CMakeFiles/itknetlib.dir/cmake_clean.cmake
.PHONY : Modules/ThirdParty/VNL/src/vxl/v3p/netlib/CMakeFiles/itknetlib.dir/clean

Modules/ThirdParty/VNL/src/vxl/v3p/netlib/CMakeFiles/itknetlib.dir/depend:
	cd /Users/kit/Documents/ITK/ITKbin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/kit/Documents/ITK/InsightToolKit /Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/VNL/src/vxl/v3p/netlib /Users/kit/Documents/ITK/ITKbin /Users/kit/Documents/ITK/ITKbin/Modules/ThirdParty/VNL/src/vxl/v3p/netlib /Users/kit/Documents/ITK/ITKbin/Modules/ThirdParty/VNL/src/vxl/v3p/netlib/CMakeFiles/itknetlib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Modules/ThirdParty/VNL/src/vxl/v3p/netlib/CMakeFiles/itknetlib.dir/depend

