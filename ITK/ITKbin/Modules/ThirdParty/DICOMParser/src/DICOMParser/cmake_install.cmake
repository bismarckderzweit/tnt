# Install script for directory: /Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/DICOMParser/src/DICOMParser

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/kit/Documents/ITK/ITKbin/lib/libITKDICOMParser-4.13.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libITKDICOMParser-4.13.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libITKDICOMParser-4.13.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libITKDICOMParser-4.13.a")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.13" TYPE FILE FILES
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/DICOMParser/src/DICOMParser/DICOMAppHelper.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/DICOMParser/src/DICOMParser/DICOMBuffer.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/DICOMParser/src/DICOMParser/DICOMCallback.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/DICOMParser/src/DICOMParser/DICOMConfig.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/DICOMParser/src/DICOMParser/DICOMFile.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/DICOMParser/src/DICOMParser/DICOMParser.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/DICOMParser/src/DICOMParser/DICOMParserMap.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/DICOMParser/src/DICOMParser/DICOMSource.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/DICOMParser/src/DICOMParser/DICOMTypes.h"
    "/Users/kit/Documents/ITK/ITKbin/Modules/ThirdParty/DICOMParser/src/DICOMParser/DICOMCMakeConfig.h"
    )
endif()
