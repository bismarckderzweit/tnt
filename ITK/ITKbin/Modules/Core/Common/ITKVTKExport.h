
#ifndef ITKVTK_EXPORT_H
#define ITKVTK_EXPORT_H

#ifdef ITK_STATIC
#  define ITKVTK_EXPORT
#  define ITKVTK_HIDDEN
#else
#  ifndef ITKVTK_EXPORT
#    ifdef ITKVTK_EXPORTS
        /* We are building this library */
#      define ITKVTK_EXPORT 
#    else
        /* We are using this library */
#      define ITKVTK_EXPORT 
#    endif
#  endif

#  ifndef ITKVTK_HIDDEN
#    define ITKVTK_HIDDEN 
#  endif
#endif

#ifndef ITKVTK_DEPRECATED
#  define ITKVTK_DEPRECATED __attribute__ ((__deprecated__))
#endif

#ifndef ITKVTK_DEPRECATED_EXPORT
#  define ITKVTK_DEPRECATED_EXPORT ITKVTK_EXPORT ITKVTK_DEPRECATED
#endif

#ifndef ITKVTK_DEPRECATED_NO_EXPORT
#  define ITKVTK_DEPRECATED_NO_EXPORT ITKVTK_HIDDEN ITKVTK_DEPRECATED
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define ITKVTK_NO_DEPRECATED
#endif

#endif
