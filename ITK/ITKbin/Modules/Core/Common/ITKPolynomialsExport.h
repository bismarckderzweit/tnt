
#ifndef ITKPolynomials_EXPORT_H
#define ITKPolynomials_EXPORT_H

#ifdef ITK_STATIC
#  define ITKPolynomials_EXPORT
#  define ITKPolynomials_HIDDEN
#else
#  ifndef ITKPolynomials_EXPORT
#    ifdef ITKPolynomials_EXPORTS
        /* We are building this library */
#      define ITKPolynomials_EXPORT 
#    else
        /* We are using this library */
#      define ITKPolynomials_EXPORT 
#    endif
#  endif

#  ifndef ITKPolynomials_HIDDEN
#    define ITKPolynomials_HIDDEN 
#  endif
#endif

#ifndef ITKPOLYNOMIALS_DEPRECATED
#  define ITKPOLYNOMIALS_DEPRECATED __attribute__ ((__deprecated__))
#endif

#ifndef ITKPOLYNOMIALS_DEPRECATED_EXPORT
#  define ITKPOLYNOMIALS_DEPRECATED_EXPORT ITKPolynomials_EXPORT ITKPOLYNOMIALS_DEPRECATED
#endif

#ifndef ITKPOLYNOMIALS_DEPRECATED_NO_EXPORT
#  define ITKPOLYNOMIALS_DEPRECATED_NO_EXPORT ITKPolynomials_HIDDEN ITKPOLYNOMIALS_DEPRECATED
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define ITKPOLYNOMIALS_NO_DEPRECATED
#endif

#endif
