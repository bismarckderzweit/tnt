
#ifndef ITKStatistics_EXPORT_H
#define ITKStatistics_EXPORT_H

#ifdef ITK_STATIC
#  define ITKStatistics_EXPORT
#  define ITKStatistics_HIDDEN
#else
#  ifndef ITKStatistics_EXPORT
#    ifdef ITKStatistics_EXPORTS
        /* We are building this library */
#      define ITKStatistics_EXPORT 
#    else
        /* We are using this library */
#      define ITKStatistics_EXPORT 
#    endif
#  endif

#  ifndef ITKStatistics_HIDDEN
#    define ITKStatistics_HIDDEN 
#  endif
#endif

#ifndef ITKSTATISTICS_DEPRECATED
#  define ITKSTATISTICS_DEPRECATED __attribute__ ((__deprecated__))
#endif

#ifndef ITKSTATISTICS_DEPRECATED_EXPORT
#  define ITKSTATISTICS_DEPRECATED_EXPORT ITKStatistics_EXPORT ITKSTATISTICS_DEPRECATED
#endif

#ifndef ITKSTATISTICS_DEPRECATED_NO_EXPORT
#  define ITKSTATISTICS_DEPRECATED_NO_EXPORT ITKStatistics_HIDDEN ITKSTATISTICS_DEPRECATED
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define ITKSTATISTICS_NO_DEPRECATED
#endif

#endif
