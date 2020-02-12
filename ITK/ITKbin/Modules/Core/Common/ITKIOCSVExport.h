
#ifndef ITKIOCSV_EXPORT_H
#define ITKIOCSV_EXPORT_H

#ifdef ITK_STATIC
#  define ITKIOCSV_EXPORT
#  define ITKIOCSV_HIDDEN
#else
#  ifndef ITKIOCSV_EXPORT
#    ifdef ITKIOCSV_EXPORTS
        /* We are building this library */
#      define ITKIOCSV_EXPORT 
#    else
        /* We are using this library */
#      define ITKIOCSV_EXPORT 
#    endif
#  endif

#  ifndef ITKIOCSV_HIDDEN
#    define ITKIOCSV_HIDDEN 
#  endif
#endif

#ifndef ITKIOCSV_DEPRECATED
#  define ITKIOCSV_DEPRECATED __attribute__ ((__deprecated__))
#endif

#ifndef ITKIOCSV_DEPRECATED_EXPORT
#  define ITKIOCSV_DEPRECATED_EXPORT ITKIOCSV_EXPORT ITKIOCSV_DEPRECATED
#endif

#ifndef ITKIOCSV_DEPRECATED_NO_EXPORT
#  define ITKIOCSV_DEPRECATED_NO_EXPORT ITKIOCSV_HIDDEN ITKIOCSV_DEPRECATED
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define ITKIOCSV_NO_DEPRECATED
#endif

#endif
