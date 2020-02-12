
#ifndef ITKIOBruker_EXPORT_H
#define ITKIOBruker_EXPORT_H

#ifdef ITK_STATIC
#  define ITKIOBruker_EXPORT
#  define ITKIOBruker_HIDDEN
#else
#  ifndef ITKIOBruker_EXPORT
#    ifdef ITKIOBruker_EXPORTS
        /* We are building this library */
#      define ITKIOBruker_EXPORT 
#    else
        /* We are using this library */
#      define ITKIOBruker_EXPORT 
#    endif
#  endif

#  ifndef ITKIOBruker_HIDDEN
#    define ITKIOBruker_HIDDEN 
#  endif
#endif

#ifndef ITKIOBRUKER_DEPRECATED
#  define ITKIOBRUKER_DEPRECATED __attribute__ ((__deprecated__))
#endif

#ifndef ITKIOBRUKER_DEPRECATED_EXPORT
#  define ITKIOBRUKER_DEPRECATED_EXPORT ITKIOBruker_EXPORT ITKIOBRUKER_DEPRECATED
#endif

#ifndef ITKIOBRUKER_DEPRECATED_NO_EXPORT
#  define ITKIOBRUKER_DEPRECATED_NO_EXPORT ITKIOBruker_HIDDEN ITKIOBRUKER_DEPRECATED
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define ITKIOBRUKER_NO_DEPRECATED
#endif

#endif
