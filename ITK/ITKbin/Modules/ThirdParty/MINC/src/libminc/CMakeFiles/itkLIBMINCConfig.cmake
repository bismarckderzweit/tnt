# LIBMINC CMake configuration file

get_filename_component(LIBMINC_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH )
get_filename_component(LIBMINC_INSTALL_PREFIX "${LIBMINC_CMAKE_DIR}" PATH)

set(HAVE_MINC2    1)
set(HAVE_EZMINC   OFF)
set(HAVE_MINC1    OFF)

set(LIBMINC_NIFTI_SUPPORT OFF)

set(NETCDF_INCLUDE_DIR "")
set(HDF5_INCLUDE_DIR   "")
set(NIFTI_INCLUDE_DIR  "")

set(NETCDF_LIBRARY     "")
set(HDF5_LIBRARY       "")
set(ZLIB_LIBRARY       "itkzlib")
set(ZLIB_LIBRARIES     "itkzlib")
set(NIFTI_LIBRARIES    "")

set(LIBMINC_INCLUDE_DIRS "/usr/local/include/ITK-4.13/itkminc2")
set(LIBMINC_LIBRARY_DIRS "/usr/local/lib")
set(LIBMINC_USE_FILE     "/usr/local/lib/UseitkLIBMINC.cmake")
set(LIBMINC_LIBRARIES    "itkminc2;hdf5_cpp-static;hdf5-static;itkzlib;m;dl")

set(EZMINC_LIBRARIES    "minc_io;itkminc2;hdf5_cpp-static;hdf5-static;itkzlib;m;dl")
set(VOLUME_IO_LIBRARIES "itkminc2")

set(LIBMINC_STATIC_LIBRARIES    "")
set(VOLUME_IO_STATIC_LIBRARIES  "")

set( LIBMINC_FOUND 1 )

# VF: disable for now  
#if( NOT LIBMINC_TARGETS_IMPORTED AND NOT LIBMINC_BINARY_DIR )
#  set( LIBMINC_TARGETS_IMPORTED 1 )
#  include( "${LIBMINC_CMAKE_DIR}/ITKTargets.cmake" )
#endif()  
