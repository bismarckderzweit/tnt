
#ifndef ITKIOTransformMatlab_EXPORT_H
#define ITKIOTransformMatlab_EXPORT_H

#ifdef ITK_STATIC
#  define ITKIOTransformMatlab_EXPORT
#  define ITKIOTransformMatlab_HIDDEN
#else
#  ifndef ITKIOTransformMatlab_EXPORT
#    ifdef ITKIOTransformMatlab_EXPORTS
        /* We are building this library */
#      define ITKIOTransformMatlab_EXPORT 
#    else
        /* We are using this library */
#      define ITKIOTransformMatlab_EXPORT 
#    endif
#  endif

#  ifndef ITKIOTransformMatlab_HIDDEN
#    define ITKIOTransformMatlab_HIDDEN 
#  endif
#endif

#ifndef ITKIOTRANSFORMMATLAB_DEPRECATED
#  define ITKIOTRANSFORMMATLAB_DEPRECATED __attribute__ ((__deprecated__))
#endif

#ifndef ITKIOTRANSFORMMATLAB_DEPRECATED_EXPORT
#  define ITKIOTRANSFORMMATLAB_DEPRECATED_EXPORT ITKIOTransformMatlab_EXPORT ITKIOTRANSFORMMATLAB_DEPRECATED
#endif

#ifndef ITKIOTRANSFORMMATLAB_DEPRECATED_NO_EXPORT
#  define ITKIOTRANSFORMMATLAB_DEPRECATED_NO_EXPORT ITKIOTransformMatlab_HIDDEN ITKIOTRANSFORMMATLAB_DEPRECATED
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define ITKIOTRANSFORMMATLAB_NO_DEPRECATED
#endif

#endif
