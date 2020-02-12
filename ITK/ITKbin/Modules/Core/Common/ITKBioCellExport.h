
#ifndef ITKBioCell_EXPORT_H
#define ITKBioCell_EXPORT_H

#ifdef ITK_STATIC
#  define ITKBioCell_EXPORT
#  define ITKBioCell_HIDDEN
#else
#  ifndef ITKBioCell_EXPORT
#    ifdef ITKBioCell_EXPORTS
        /* We are building this library */
#      define ITKBioCell_EXPORT 
#    else
        /* We are using this library */
#      define ITKBioCell_EXPORT 
#    endif
#  endif

#  ifndef ITKBioCell_HIDDEN
#    define ITKBioCell_HIDDEN 
#  endif
#endif

#ifndef ITKBIOCELL_DEPRECATED
#  define ITKBIOCELL_DEPRECATED __attribute__ ((__deprecated__))
#endif

#ifndef ITKBIOCELL_DEPRECATED_EXPORT
#  define ITKBIOCELL_DEPRECATED_EXPORT ITKBioCell_EXPORT ITKBIOCELL_DEPRECATED
#endif

#ifndef ITKBIOCELL_DEPRECATED_NO_EXPORT
#  define ITKBIOCELL_DEPRECATED_NO_EXPORT ITKBioCell_HIDDEN ITKBIOCELL_DEPRECATED
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define ITKBIOCELL_NO_DEPRECATED
#endif

#endif
