
#ifndef ITKQuadEdgeMesh_EXPORT_H
#define ITKQuadEdgeMesh_EXPORT_H

#ifdef ITK_STATIC
#  define ITKQuadEdgeMesh_EXPORT
#  define ITKQuadEdgeMesh_HIDDEN
#else
#  ifndef ITKQuadEdgeMesh_EXPORT
#    ifdef ITKQuadEdgeMesh_EXPORTS
        /* We are building this library */
#      define ITKQuadEdgeMesh_EXPORT 
#    else
        /* We are using this library */
#      define ITKQuadEdgeMesh_EXPORT 
#    endif
#  endif

#  ifndef ITKQuadEdgeMesh_HIDDEN
#    define ITKQuadEdgeMesh_HIDDEN 
#  endif
#endif

#ifndef ITKQUADEDGEMESH_DEPRECATED
#  define ITKQUADEDGEMESH_DEPRECATED __attribute__ ((__deprecated__))
#endif

#ifndef ITKQUADEDGEMESH_DEPRECATED_EXPORT
#  define ITKQUADEDGEMESH_DEPRECATED_EXPORT ITKQuadEdgeMesh_EXPORT ITKQUADEDGEMESH_DEPRECATED
#endif

#ifndef ITKQUADEDGEMESH_DEPRECATED_NO_EXPORT
#  define ITKQUADEDGEMESH_DEPRECATED_NO_EXPORT ITKQuadEdgeMesh_HIDDEN ITKQUADEDGEMESH_DEPRECATED
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define ITKQUADEDGEMESH_NO_DEPRECATED
#endif

#endif
