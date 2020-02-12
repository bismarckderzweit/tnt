# Install script for directory: /Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/GDCM/src/gdcm/Utilities/gdcmjpeg/12

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDebugDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/kit/Documents/ITK/ITKbin/lib/libitkgdcmjpeg12-4.13.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libitkgdcmjpeg12-4.13.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libitkgdcmjpeg12-4.13.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libitkgdcmjpeg12-4.13.a")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDebugDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.13/gdcmjpeg/12" TYPE FILE FILES
    "/Users/kit/Documents/ITK/ITKbin/Modules/ThirdParty/GDCM/src/gdcm/Utilities/gdcmjpeg/12/jconfig.h"
    "/Users/kit/Documents/ITK/ITKbin/Modules/ThirdParty/GDCM/src/gdcm/Utilities/gdcmjpeg/12/jerror.h"
    "/Users/kit/Documents/ITK/ITKbin/Modules/ThirdParty/GDCM/src/gdcm/Utilities/gdcmjpeg/12/jinclude.h"
    "/Users/kit/Documents/ITK/ITKbin/Modules/ThirdParty/GDCM/src/gdcm/Utilities/gdcmjpeg/12/jmorecfg.h"
    "/Users/kit/Documents/ITK/ITKbin/Modules/ThirdParty/GDCM/src/gdcm/Utilities/gdcmjpeg/12/jpegcmake.h"
    "/Users/kit/Documents/ITK/ITKbin/Modules/ThirdParty/GDCM/src/gdcm/Utilities/gdcmjpeg/12/jpeglib.h"
    "/Users/kit/Documents/ITK/ITKbin/Modules/ThirdParty/GDCM/src/gdcm/Utilities/gdcmjpeg/12/mangle_jpeg12bits.h"
    )
endif()

