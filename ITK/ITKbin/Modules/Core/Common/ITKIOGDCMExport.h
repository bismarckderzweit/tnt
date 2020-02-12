
#ifndef ITKIOGDCM_EXPORT_H
#define ITKIOGDCM_EXPORT_H

#ifdef ITK_STATIC
#  define ITKIOGDCM_EXPORT
#  define ITKIOGDCM_HIDDEN
#else
#  ifndef ITKIOGDCM_EXPORT
#    ifdef ITKIOGDCM_EXPORTS
        /* We are building this library */
#      define ITKIOGDCM_EXPORT 
#    else
        /* We are using this library */
#      define ITKIOGDCM_EXPORT 
#    endif
#  endif

#  ifndef ITKIOGDCM_HIDDEN
#    define ITKIOGDCM_HIDDEN 
#  endif
#endif

#ifndef ITKIOGDCM_DEPRECATED
#  define ITKIOGDCM_DEPRECATED __attribute__ ((__deprecated__))
#endif

#ifndef ITKIOGDCM_DEPRECATED_EXPORT
#  define ITKIOGDCM_DEPRECATED_EXPORT ITKIOGDCM_EXPORT ITKIOGDCM_DEPRECATED
#endif

#ifndef ITKIOGDCM_DEPRECATED_NO_EXPORT
#  define ITKIOGDCM_DEPRECATED_NO_EXPORT ITKIOGDCM_HIDDEN ITKIOGDCM_DEPRECATED
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define ITKIOGDCM_NO_DEPRECATED
#endif

#endif
