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
include Modules/ThirdParty/TIFF/src/itktiff/CMakeFiles/itkmkg3states.dir/depend.make

# Include the progress variables for this target.
include Modules/ThirdParty/TIFF/src/itktiff/CMakeFiles/itkmkg3states.dir/progress.make

# Include the compile flags for this target's objects.
include Modules/ThirdParty/TIFF/src/itktiff/CMakeFiles/itkmkg3states.dir/flags.make

Modules/ThirdParty/TIFF/src/itktiff/CMakeFiles/itkmkg3states.dir/mkg3states.c.o: Modules/ThirdParty/TIFF/src/itktiff/CMakeFiles/itkmkg3states.dir/flags.make
Modules/ThirdParty/TIFF/src/itktiff/CMakeFiles/itkmkg3states.dir/mkg3states.c.o: /Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/TIFF/src/itktiff/mkg3states.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/kit/Documents/ITK/ITKbin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object Modules/ThirdParty/TIFF/src/itktiff/CMakeFiles/itkmkg3states.dir/mkg3states.c.o"
	cd /Users/kit/Documents/ITK/ITKbin/Modules/ThirdParty/TIFF/src/itktiff && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/itkmkg3states.dir/mkg3states.c.o   -c /Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/TIFF/src/itktiff/mkg3states.c

Modules/ThirdParty/TIFF/src/itktiff/CMakeFiles/itkmkg3states.dir/mkg3states.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/itkmkg3states.dir/mkg3states.c.i"
	cd /Users/kit/Documents/ITK/ITKbin/Modules/ThirdParty/TIFF/src/itktiff && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/TIFF/src/itktiff/mkg3states.c > CMakeFiles/itkmkg3states.dir/mkg3states.c.i

Modules/ThirdParty/TIFF/src/itktiff/CMakeFiles/itkmkg3states.dir/mkg3states.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/itkmkg3states.dir/mkg3states.c.s"
	cd /Users/kit/Documents/ITK/ITKbin/Modules/ThirdParty/TIFF/src/itktiff && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/TIFF/src/itktiff/mkg3states.c -o CMakeFiles/itkmkg3states.dir/mkg3states.c.s

# Object files for target itkmkg3states
itkmkg3states_OBJECTS = \
"CMakeFiles/itkmkg3states.dir/mkg3states.c.o"

# External object files for target itkmkg3states
itkmkg3states_EXTERNAL_OBJECTS =

Modules/ThirdParty/TIFF/src/itktiff/itkmkg3states: Modules/ThirdParty/TIFF/src/itktiff/CMakeFiles/itkmkg3states.dir/mkg3states.c.o
Modules/ThirdParty/TIFF/src/itktiff/itkmkg3states: Modules/ThirdParty/TIFF/src/itktiff/CMakeFiles/itkmkg3states.dir/build.make
Modules/ThirdParty/TIFF/src/itktiff/itkmkg3states: Modules/ThirdParty/TIFF/src/itktiff/CMakeFiles/itkmkg3states.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/kit/Documents/ITK/ITKbin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable itkmkg3states"
	cd /Users/kit/Documents/ITK/ITKbin/Modules/ThirdParty/TIFF/src/itktiff && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/itkmkg3states.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Modules/ThirdParty/TIFF/src/itktiff/CMakeFiles/itkmkg3states.dir/build: Modules/ThirdParty/TIFF/src/itktiff/itkmkg3states

.PHONY : Modules/ThirdParty/TIFF/src/itktiff/CMakeFiles/itkmkg3states.dir/build

Modules/ThirdParty/TIFF/src/itktiff/CMakeFiles/itkmkg3states.dir/clean:
	cd /Users/kit/Documents/ITK/ITKbin/Modules/ThirdParty/TIFF/src/itktiff && $(CMAKE_COMMAND) -P CMakeFiles/itkmkg3states.dir/cmake_clean.cmake
.PHONY : Modules/ThirdParty/TIFF/src/itktiff/CMakeFiles/itkmkg3states.dir/clean

Modules/ThirdParty/TIFF/src/itktiff/CMakeFiles/itkmkg3states.dir/depend:
	cd /Users/kit/Documents/ITK/ITKbin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/kit/Documents/ITK/InsightToolKit /Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/TIFF/src/itktiff /Users/kit/Documents/ITK/ITKbin /Users/kit/Documents/ITK/ITKbin/Modules/ThirdParty/TIFF/src/itktiff /Users/kit/Documents/ITK/ITKbin/Modules/ThirdParty/TIFF/src/itktiff/CMakeFiles/itkmkg3states.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Modules/ThirdParty/TIFF/src/itktiff/CMakeFiles/itkmkg3states.dir/depend

