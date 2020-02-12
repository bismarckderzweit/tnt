
#ifndef VNL_EXPORT_H
#define VNL_EXPORT_H

#ifdef VNL_STATIC_DEFINE
#  define VNL_EXPORT
#  define VNL_TEMPLATE_EXPORT
#  define VNL_NO_EXPORT
#else
#  ifndef VNL_EXPORT
#    ifdef itkvnl_EXPORTS
        /* We are building this library */
#      define VNL_EXPORT 
#    else
        /* We are using this library */
#      define VNL_EXPORT 
#    endif
#  endif

#  ifndef VNL_TEMPLATE_EXPORT
#    ifdef itkvnl_EXPORTS
        /* We are building this library */
#      define VNL_TEMPLATE_EXPORT 
#    else
        /* We are using this library */
#      define VNL_TEMPLATE_EXPORT 
#    endif
#  endif

#  ifndef VNL_NO_EXPORT
#    define VNL_NO_EXPORT 
#  endif
#endif

#ifndef VNL_DEPRECATED
#  define VNL_DEPRECATED __attribute__ ((__deprecated__))
#endif

#ifndef VNL_DEPRECATED_EXPORT
#  define VNL_DEPRECATED_EXPORT VNL_EXPORT VNL_DEPRECATED
#endif

#ifndef VNL_DEPRECATED_NO_EXPORT
#  define VNL_DEPRECATED_NO_EXPORT VNL_NO_EXPORT VNL_DEPRECATED
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define VNL_NO_DEPRECATED
#endif

#endif
