
#ifndef ITKOptimizersv4_EXPORT_H
#define ITKOptimizersv4_EXPORT_H

#ifdef ITK_STATIC
#  define ITKOptimizersv4_EXPORT
#  define ITKOptimizersv4_HIDDEN
#else
#  ifndef ITKOptimizersv4_EXPORT
#    ifdef ITKOptimizersv4_EXPORTS
        /* We are building this library */
#      define ITKOptimizersv4_EXPORT 
#    else
        /* We are using this library */
#      define ITKOptimizersv4_EXPORT 
#    endif
#  endif

#  ifndef ITKOptimizersv4_HIDDEN
#    define ITKOptimizersv4_HIDDEN 
#  endif
#endif

#ifndef ITKOPTIMIZERSV4_DEPRECATED
#  define ITKOPTIMIZERSV4_DEPRECATED __attribute__ ((__deprecated__))
#endif

#ifndef ITKOPTIMIZERSV4_DEPRECATED_EXPORT
#  define ITKOPTIMIZERSV4_DEPRECATED_EXPORT ITKOptimizersv4_EXPORT ITKOPTIMIZERSV4_DEPRECATED
#endif

#ifndef ITKOPTIMIZERSV4_DEPRECATED_NO_EXPORT
#  define ITKOPTIMIZERSV4_DEPRECATED_NO_EXPORT ITKOptimizersv4_HIDDEN ITKOPTIMIZERSV4_DEPRECATED
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define ITKOPTIMIZERSV4_NO_DEPRECATED
#endif

#endif
