# Install script for directory: /Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MINC/src/libminc

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/kit/Documents/ITK/ITKbin/lib/libitkminc2-4.13.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libitkminc2-4.13.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libitkminc2-4.13.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libitkminc2-4.13.a")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.13/itkminc2" TYPE FILE FILES
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MINC/src/libminc/libsrc2/minc2.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MINC/src/libminc/libsrc2/minc2_defs.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MINC/src/libminc/libsrc2/minc2_structs.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MINC/src/libminc/libsrc2/minc2_api.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MINC/src/libminc/libcommon/minc2_error.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MINC/src/libminc/libcommon/minc_config.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MINC/src/libminc/libcommon/minc_error.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MINC/src/libminc/libcommon/ParseArgv.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MINC/src/libminc/libcommon/read_file_names.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MINC/src/libminc/libcommon/restructure.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MINC/src/libminc/libcommon/time_stamp.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MINC/src/libminc/libcommon/minc_common_defs.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MINC/src/libminc/volume_io/Include/volume_io.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.13/itkminc2/volume_io" TYPE FILE FILES
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MINC/src/libminc/volume_io/Include/volume_io/alloc.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MINC/src/libminc/volume_io/Include/volume_io/arrays.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MINC/src/libminc/volume_io/Include/volume_io/basic.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MINC/src/libminc/volume_io/Include/volume_io/def_math.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MINC/src/libminc/volume_io/Include/volume_io/files.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MINC/src/libminc/volume_io/Include/volume_io/geom_structs.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MINC/src/libminc/volume_io/Include/volume_io/geometry.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MINC/src/libminc/volume_io/Include/volume_io/multidim.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MINC/src/libminc/volume_io/Include/volume_io/progress.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MINC/src/libminc/volume_io/Include/volume_io/string_funcs.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MINC/src/libminc/volume_io/Include/volume_io/system_dependent.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MINC/src/libminc/volume_io/Include/volume_io/transforms.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MINC/src/libminc/volume_io/Include/volume_io/vol_io_prototypes.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MINC/src/libminc/volume_io/Include/volume_io/volume.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MINC/src/libminc/volume_io/Include/volume_io/volume_cache.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES
    "/Users/kit/Documents/ITK/ITKbin/Modules/ThirdParty/MINC/src/libminc/CMakeFiles/UseitkLIBMINC.cmake"
    "/Users/kit/Documents/ITK/ITKbin/Modules/ThirdParty/MINC/src/libminc/CMakeFiles/itkLIBMINCConfig.cmake"
    )
endif()

