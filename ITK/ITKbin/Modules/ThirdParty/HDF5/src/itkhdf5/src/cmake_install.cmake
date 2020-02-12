# Install script for directory: /Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.13/itkhdf5" TYPE FILE FILES
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/hdf5.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5api_adpt.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5public.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5version.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5overflow.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/itk_hdf5_mangle.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Apkg.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Apublic.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5ACpkg.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5ACpublic.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5B2pkg.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5B2public.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Bpkg.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Bpublic.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Dpkg.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Dpublic.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Edefin.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Einit.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Epkg.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Epubgen.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Epublic.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Eterm.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Fpkg.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Fpublic.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FDcore.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FDdirect.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FDfamily.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FDlog.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FDmpi.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FDmpio.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FDmulti.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FDpkg.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FDpublic.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FDsec2.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FDstdio.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FSpkg.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FSpublic.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Gpkg.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Gpublic.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5HFpkg.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5HFpublic.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5HGpkg.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5HGpublic.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5HLpkg.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5HLpublic.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5MPpkg.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Opkg.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Opublic.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Oshared.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Ppkg.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Ppublic.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5PLextern.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5PLpublic.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Rpkg.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Rpublic.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Spkg.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Spublic.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5SMpkg.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Tpkg.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Tpublic.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Zpkg.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Zpublic.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Cpkg.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Cpublic.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Ipkg.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Ipublic.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Lpkg.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Lpublic.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5MMpublic.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Rpkg.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Rpublic.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/itk_hdf5_mangle.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5private.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Aprivate.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5ACprivate.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5B2private.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Bprivate.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5CSprivate.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Dprivate.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Eprivate.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FDprivate.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Fprivate.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FLprivate.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FOprivate.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5MFprivate.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5MMprivate.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Cprivate.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FSprivate.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Gprivate.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5HFprivate.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5HGprivate.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5HLprivate.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5HPprivate.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Iprivate.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Lprivate.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5MPprivate.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Oprivate.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Pprivate.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5PLprivate.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5RCprivate.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Rprivate.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5RSprivate.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5SLprivate.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5SMprivate.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Sprivate.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5STprivate.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Tprivate.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5TSprivate.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5VMprivate.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5WBprivate.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Zprivate.h"
    "/Users/kit/Documents/ITK/InsightToolKit/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5win32defs.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/kit/Documents/ITK/ITKbin/lib/libitkhdf5.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libitkhdf5.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libitkhdf5.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libitkhdf5.a")
  endif()
endif()

