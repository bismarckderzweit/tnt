
#ifndef ITKIOMINC_EXPORT_H
#define ITKIOMINC_EXPORT_H

#ifdef ITK_STATIC
#  define ITKIOMINC_EXPORT
#  define ITKIOMINC_HIDDEN
#else
#  ifndef ITKIOMINC_EXPORT
#    ifdef ITKIOMINC_EXPORTS
        /* We are building this library */
#      define ITKIOMINC_EXPORT 
#    else
        /* We are using this library */
#      define ITKIOMINC_EXPORT 
#    endif
#  endif

#  ifndef ITKIOMINC_HIDDEN
#    define ITKIOMINC_HIDDEN 
#  endif
#endif

#ifndef ITKIOMINC_DEPRECATED
#  define ITKIOMINC_DEPRECATED __attribute__ ((__deprecated__))
#endif

#ifndef ITKIOMINC_DEPRECATED_EXPORT
#  define ITKIOMINC_DEPRECATED_EXPORT ITKIOMINC_EXPORT ITKIOMINC_DEPRECATED
#endif

#ifndef ITKIOMINC_DEPRECATED_NO_EXPORT
#  define ITKIOMINC_DEPRECATED_NO_EXPORT ITKIOMINC_HIDDEN ITKIOMINC_DEPRECATED
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define ITKIOMINC_NO_DEPRECATED
#endif

#endif
