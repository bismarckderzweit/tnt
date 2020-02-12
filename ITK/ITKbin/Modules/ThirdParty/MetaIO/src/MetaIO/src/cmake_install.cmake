# Install script for directory: /Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MetaIO/src/MetaIO/src

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/kit/Documents/ITK/ITKbin/lib/libITKMetaIO-4.13.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libITKMetaIO-4.13.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libITKMetaIO-4.13.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libITKMetaIO-4.13.a")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.13" TYPE FILE FILES
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MetaIO/src/MetaIO/src/localMetaConfiguration.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MetaIO/src/MetaIO/src/metaArray.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MetaIO/src/MetaIO/src/metaArrow.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MetaIO/src/MetaIO/src/metaBlob.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MetaIO/src/MetaIO/src/metaCommand.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MetaIO/src/MetaIO/src/metaContour.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MetaIO/src/MetaIO/src/metaDTITube.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MetaIO/src/MetaIO/src/metaEllipse.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MetaIO/src/MetaIO/src/metaEvent.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MetaIO/src/MetaIO/src/metaFEMObject.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MetaIO/src/MetaIO/src/metaForm.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MetaIO/src/MetaIO/src/metaGaussian.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MetaIO/src/MetaIO/src/metaGroup.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MetaIO/src/MetaIO/src/metaITKUtils.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MetaIO/src/MetaIO/src/metaImage.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MetaIO/src/MetaIO/src/metaImageTypes.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MetaIO/src/MetaIO/src/metaImageUtils.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MetaIO/src/MetaIO/src/metaLandmark.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MetaIO/src/MetaIO/src/metaLine.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MetaIO/src/MetaIO/src/metaMesh.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MetaIO/src/MetaIO/src/metaObject.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MetaIO/src/MetaIO/src/metaOutput.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MetaIO/src/MetaIO/src/metaScene.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MetaIO/src/MetaIO/src/metaSurface.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MetaIO/src/MetaIO/src/metaTransform.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MetaIO/src/MetaIO/src/metaTube.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MetaIO/src/MetaIO/src/metaTubeGraph.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MetaIO/src/MetaIO/src/metaTypes.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MetaIO/src/MetaIO/src/metaUtils.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/MetaIO/src/MetaIO/src/metaVesselTube.h"
    "/Users/kit/Documents/ITK/ITKbin/Modules/ThirdParty/MetaIO/src/MetaIO/src/metaIOConfig.h"
    )
endif()

