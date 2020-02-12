
#ifndef ITKLabelMap_EXPORT_H
#define ITKLabelMap_EXPORT_H

#ifdef ITK_STATIC
#  define ITKLabelMap_EXPORT
#  define ITKLabelMap_HIDDEN
#else
#  ifndef ITKLabelMap_EXPORT
#    ifdef ITKLabelMap_EXPORTS
        /* We are building this library */
#      define ITKLabelMap_EXPORT 
#    else
        /* We are using this library */
#      define ITKLabelMap_EXPORT 
#    endif
#  endif

#  ifndef ITKLabelMap_HIDDEN
#    define ITKLabelMap_HIDDEN 
#  endif
#endif

#ifndef ITKLABELMAP_DEPRECATED
#  define ITKLABELMAP_DEPRECATED __attribute__ ((__deprecated__))
#endif

#ifndef ITKLABELMAP_DEPRECATED_EXPORT
#  define ITKLABELMAP_DEPRECATED_EXPORT ITKLabelMap_EXPORT ITKLABELMAP_DEPRECATED
#endif

#ifndef ITKLABELMAP_DEPRECATED_NO_EXPORT
#  define ITKLABELMAP_DEPRECATED_NO_EXPORT ITKLabelMap_HIDDEN ITKLABELMAP_DEPRECATED
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define ITKLABELMAP_NO_DEPRECATED
#endif

#endif
