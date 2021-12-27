/'
** Copyright (c) 2017-2021, The Khronos Group Inc.
** Translated for FreeBASIC by Ebben Feagan
**
** SPDX-License-Identifier: Apache-2.0 OR MIT
'/

#ifndef OPENXR_PLATFORM_DEFINES_BI_
#define OPENXR_PLATFORM_DEFINES_BI_ 1

/' Platform-specific calling convention macros.
 *
 * Platforms should define these so that OpenXR clients call OpenXR functions
 * with the same calling conventions that the OpenXR implementation expects.
 *
 * XRAPI_ATTR - Placed before the return type in function declarations.
 *              Useful for C++11 and GCC/Clang-style function attribute syntax.
 * XRAPI_CALL - Placed after the return type in function declarations.
 *              Useful for MSVC-style calling convention syntax.
 * XRAPI_PTR  - Placed between the '(' and '*' in function pointer types.
 *
 * Function declaration:  XRAPI_ATTR void XRAPI_CALL xrFunction(void);
 * Function pointer type: typedef void (XRAPI_PTR *PFN_xrFunction)(void);
 '/
#ifdef __FB_WIN32__
    #define XRAPI_ATTR
    '' On Windows, functions use the stdcall convention
    #define XRAPI_CALL stdcall
    #define XRAPI_PTR XRAPI_CALL
#else
    '' On other platforms, use the default calling convention
    #define XRAPI_ATTR
    #define XRAPI_CALL
    #define XRAPI_PTR
#endif

#include "crt/stddef.bi"
#include "crt/stdint.bi"

'' XR_PTR_SIZE (in bytes)
#ifdef __FB_64BIT__
    #define XR_PTR_SIZE 8
#else
    #define XR_PTR_SIZE 4
#endif

#endif
