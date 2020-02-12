
#ifndef ITKKLMRegionGrowing_EXPORT_H
#define ITKKLMRegionGrowing_EXPORT_H

#ifdef ITK_STATIC
#  define ITKKLMRegionGrowing_EXPORT
#  define ITKKLMRegionGrowing_HIDDEN
#else
#  ifndef ITKKLMRegionGrowing_EXPORT
#    ifdef ITKKLMRegionGrowing_EXPORTS
        /* We are building this library */
#      define ITKKLMRegionGrowing_EXPORT 
#    else
        /* We are using this library */
#      define ITKKLMRegionGrowing_EXPORT 
#    endif
#  endif

#  ifndef ITKKLMRegionGrowing_HIDDEN
#    define ITKKLMRegionGrowing_HIDDEN 
#  endif
#endif

#ifndef ITKKLMREGIONGROWING_DEPRECATED
#  define ITKKLMREGIONGROWING_DEPRECATED __attribute__ ((__deprecated__))
#endif

#ifndef ITKKLMREGIONGROWING_DEPRECATED_EXPORT
#  define ITKKLMREGIONGROWING_DEPRECATED_EXPORT ITKKLMRegionGrowing_EXPORT ITKKLMREGIONGROWING_DEPRECATED
#endif

#ifndef ITKKLMREGIONGROWING_DEPRECATED_NO_EXPORT
#  define ITKKLMREGIONGROWING_DEPRECATED_NO_EXPORT ITKKLMRegionGrowing_HIDDEN ITKKLMREGIONGROWING_DEPRECATED
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define ITKKLMREGIONGROWING_NO_DEPRECATED
#endif

#endif
