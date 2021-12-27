#ifndef OPENXR_PLATFORM_BI_
#define OPENXR_PLATFORM_BI_ 1

/'
** Copyright (c) 2017-2021, The Khronos Group Inc.
** Translated for FreeBASIC by Ebben Feagan
**
** SPDX-License-Identifier: Apache-2.0 OR MIT
'/

/'
** This header is generated from the Khronos OpenXR XML API Registry.
**
'/

#include once "openxr/openxr.bi"

#if __FB_WIN32__
    extern "windows"
#else
    extern "c"
#endif

    #ifdef XR_USE_GRAPHICS_API_OPENGL

        #define XR_KHR_opengl_enable 1
        #define XR_KHR_opengl_enable_SPEC_VERSION 10
        #define XR_KHR_OPENGL_ENABLE_EXTENSION_NAME "XR_KHR_opengl_enable"
        #ifdef XR_USE_PLATFORM_WIN32
            '' XrGraphicsBindingOpenGLWin32KHR extends XrSessionCreateInfo
            type XrGraphicsBindingOpenGLWin32KHR
                _type as XrStructureType
                _next as const any ptr
                _hdc as HDC
                _hglrc as HGLRC
            end type
        #endif '' XR_USE_PLATFORM_WIN32

        #ifdef XR_USE_PLATFORM_XLIB
            '' XrGraphicsBindingOpenGLXlibKHR extends XrSessionCreateInfo
            type XrGraphicsBindingOpenGLXlibKHR 
                _type as XrStructureType             
                _next as const any ptr
                _xDisplay as Display ptr                    
                visualid as uint32_t                    
                _glxFBConfig as GLXFBConfig                 
                _glxDrawable as GLXDrawable                 
                _glxContext as GLXContext                  
            end type
        #endif '' XR_USE_PLATFORM_XLIB

        #ifdef XR_USE_PLATFORM_XCB
            '' XrGraphicsBindingOpenGLXcbKHR extends XrSessionCreateInfo
            type XrGraphicsBindingOpenGLXcbKHR 
                _type as XrStructureType             
                _next as const any ptr
                connection as xcb_connection_t*          
                screenNumber as uint32_t                    
                fbconfigid as xcb_glx_fbconfig_t          
                visualid as xcb_visualid_t              
                _glxDrawable as xcb_glx_drawable_t          
                _glxContext as xcb_glx_context_t           
            end type
        #endif '' XR_USE_PLATFORM_XCB

        #ifdef XR_USE_PLATFORM_WAYLAND
            '' XrGraphicsBindingOpenGLWaylandKHR extends XrSessionCreateInfo
            type XrGraphicsBindingOpenGLWaylandKHR 
                _type as XrStructureType             
                _next as const any ptr
                _display as wl_display ptr
            end type
        #endif '' XR_USE_PLATFORM_WAYLAND

        type XrSwapchainImageOpenGLKHR 
            _type as XrStructureType       
            _next as any ptr 
            image as uint32_t              
        end type

        type XrGraphicsRequirementsOpenGLKHR 
            _type as XrStructureType       
            _next as any ptr
            minApiVersionSupported as XrVersion             
            maxApiVersionSupported as XrVersion             
        end type

        #ifndef XR_NO_PROTOTYPES
            #ifdef XR_EXTENSION_PROTOTYPES

            declare function xrGetOpenGLGraphicsRequirementsKHR XRAPI_CALL ( byval instance as XrInstance, byval systemId as XrSystemId, byval graphicsRequirements as XrGraphicsRequirementsOpenGLKHR ptr) as XrResult

            #endif /' XR_EXTENSION_PROTOTYPES '/
        #endif /' !XR_NO_PROTOTYPES '/
    #endif

    #ifdef XR_USE_PLATFORM_WIN32

        #define XR_KHR_win32_convert_performance_counter_time 1
        #define XR_KHR_win32_convert_performance_counter_time_SPEC_VERSION 1
        #define XR_KHR_WIN32_CONVERT_PERFORMANCE_COUNTER_TIME_EXTENSION_NAME "XR_KHR_win32_convert_performance_counter_time"

        #define XR_MSFT_perception_anchor_interop 1
        #define XR_MSFT_perception_anchor_interop_SPEC_VERSION 1
        #define XR_MSFT_PERCEPTION_ANCHOR_INTEROP_EXTENSION_NAME "XR_MSFT_perception_anchor_interop"

        #define XR_MSFT_holographic_window_attachment 1
        #define XR_MSFT_holographic_window_attachment_SPEC_VERSION 1
        #define XR_MSFT_HOLOGRAPHIC_WINDOW_ATTACHMENT_EXTENSION_NAME "XR_MSFT_holographic_window_attachment"

        type XrHolographicWindowAttachmentMSFT
            _type as XrStructureType
            _next as const any ptr
            holographicSpace as iUnknown ptr
            coreWindow as iUnknown ptr
        end type

        #define XR_OCULUS_audio_device_guid 1
        #define XR_OCULUS_audio_device_guid_SPEC_VERSION 1
        #define XR_OCULUS_AUDIO_DEVICE_GUID_EXTENSION_NAME "XR_OCULUS_audio_device_guid"
        #define XR_MAX_AUDIO_DEVICE_STR_SIZE_OCULUS 128

        #ifndef XR_NO_PROTOTYPES
            #ifdef XR_EXTENSION_PROTOTYPES

            declare function xrConvertWin32PerformanceCounterToTimeKHR XRAPI_CALL (byval instance as XrInstance, byval performanceCounter as const LARGE_INTEGER ptr, byval _time as XrTime ptr) as XrResult
            declare function xrConvertTimeToWin32PerformanceCounterKHR XRAPI_CALL ( byval instance as XrInstance, byval _type as XrTime, byval performanceCounter as LARGE_INTEGER ptr) as XrResult

            declare function xrCreateSpatialAnchorFromPerceptionAnchorMSFT XRAPI_CALL (byval session as XrSession, byval perceptionAnchor as iUnknown ptr, byval anchor as XrSpatialAnchorMSFT ptr) as XrResult
            declare function xrTryGetPerceptionAnchorFromSpatialAnchorMSFT XRAPI_CALL (byval session as XrSession, byval anchor as XrSpatialAnchorMSFT, perceptionAnchor as IUnknown ptr ptr ) as XrResult

            declare function xrGetAudioOutputDeviceGuidOculus XRAPI_CALL (byval instance as XrInstance, byval buffer as wstring ptr) as XrResult
            declare function xrGetAudioInputDeviceGuidOculus XRAPI_CALL (byval instance as XrInstance, byval buffer as wstring ptr) as XrResult
    

            #endif /' XR_EXTENSION_PROTOTYPES '/
        #endif /' !XR_NO_PROTOTYPES '/
    #endif /' XR_USE_PLATFORM_WIN32 '/


    #ifdef XR_USE_TIMESPEC

        #define XR_KHR_convert_timespec_time 1
        #define XR_KHR_convert_timespec_time_SPEC_VERSION 1
        #define XR_KHR_CONVERT_TIMESPEC_TIME_EXTENSION_NAME "XR_KHR_convert_timespec_time"

        #ifndef XR_NO_PROTOTYPES
            #ifdef XR_EXTENSION_PROTOTYPES

            declare function xrConvertTimespecTimeToTimeKHR XRAPI_CALL (byval instance as XrInstance, byval timespecTime as const timespec ptr, byval _time as XrTime ptr) as XrResult
            
            declare function xrConvertTimeToTimespecTimeKHR XRAPI_CALL (byval instance as XrInstance, byval _time as XrTime, byval timespecTime as timespec ptr) as XrResult

            #endif /' XR_EXTENSION_PROTOTYPES '/
        #endif /' !XR_NO_PROTOTYPES '/
    #endif /' XR_USE_TIMESPEC '/

end extern

#endif