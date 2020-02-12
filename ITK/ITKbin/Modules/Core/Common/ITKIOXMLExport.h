
#ifndef ITKIOXML_EXPORT_H
#define ITKIOXML_EXPORT_H

#ifdef ITK_STATIC
#  define ITKIOXML_EXPORT
#  define ITKIOXML_HIDDEN
#else
#  ifndef ITKIOXML_EXPORT
#    ifdef ITKIOXML_EXPORTS
        /* We are building this library */
#      define ITKIOXML_EXPORT 
#    else
        /* We are using this library */
#      define ITKIOXML_EXPORT 
#    endif
#  endif

#  ifndef ITKIOXML_HIDDEN
#    define ITKIOXML_HIDDEN 
#  endif
#endif

#ifndef ITKIOXML_DEPRECATED
#  define ITKIOXML_DEPRECATED __attribute__ ((__deprecated__))
#endif

#ifndef ITKIOXML_DEPRECATED_EXPORT
#  define ITKIOXML_DEPRECATED_EXPORT ITKIOXML_EXPORT ITKIOXML_DEPRECATED
#endif

#ifndef ITKIOXML_DEPRECATED_NO_EXPORT
#  define ITKIOXML_DEPRECATED_NO_EXPORT ITKIOXML_HIDDEN ITKIOXML_DEPRECATED
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define ITKIOXML_NO_DEPRECATED
#endif

#endif
