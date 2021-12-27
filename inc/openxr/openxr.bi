#ifndef OPENXR_BI_
#define OPENXR_BI_ 1

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


#include once "openxr/openxr_platform_defines.bi"


#ifdef __FB_WIN32__
	extern "Windows"
#else
	extern "C"
#endif


#define XR_VERSION_1_0 1


#define XR_MAKE_VERSION(major, minor, patch) (((((major) and &hffffull) shl 48) or (((minor) and &hffffull) shl 32)) or ((patch) and &hffffffffull))
#define XR_CURRENT_API_VERSION XR_MAKE_VERSION(1, 0, 20)
#define XR_VERSION_MAJOR(version) cushort((culngint(version) shr 48) and &hffffull)
#define XR_VERSION_MINOR(version) cushort((culngint(version) shr 32) and &hffffull)
#define XR_VERSION_PATCH(version) culng(culngint(version) and &hffffffffull)

#define XR_NULL_HANDLE 0
#define XR_NULL_SYSTEM_ID 0
#define XR_NULL_PATH 0

#define XR_SUCCEEDED(result) ((result) >= 0)
#define XR_FAILED(result) ((result) < 0)
#define XR_UNQUALIFIED_SUCCESS(result) ((result) = 0)

#define XR_NO_DURATION = 0
#define XR_INFINITE_DURATION = &h7fffffffffffffffll
#define XR_MIN_HAPTIC_DURATION = -1
#define XR_FREQUENCY_UNSPECIFIED = 0
#define XR_MAX_EVENT_DATA_SIZE sizeof(XrEventDataBuffer)


type XrVersion as ulongint
type XrFlags64 as ulongint
type XrSystemId as ulongint
type XrBool32 as ulong
type XrPath as ulongint
type XrTime as longint
type XrDuration as longint

#if defined(__FB_64BIT__) and (defined(__FB_WIN32__) or defined(__FB_UNIX__))
	type XrInstance as XrInstance_T ptr
	type XrSession as XrSession_T ptr
	type XrSpace as XrSpace_T ptr
	type XrAction as XrAction_T ptr
	type XrSwapchain as XrSwapchain_T ptr
	type XrActionSet as XrActionSet_T ptr
#else
	type XrInstance as ulongint
	type XrSession as ulongint
	type XrSpace as ulongint
	type XrAction as ulongint
	type XrSwapchain as ulongint
	type XrActionSet as ulongint
#endif

#define XR_TRUE 1
#define XR_FALSE 0
#define XR_MAX_EXTENSION_NAME_SIZE 128
#define XR_MAX_API_LAYER_NAME_SIZE 256
#define XR_MAX_API_LAYER_DESCRIPTION_SIZE 256
#define XR_MAX_SYSTEM_NAME_SIZE 256
#define XR_MAX_APPLICATION_NAME_SIZE 128
#define XR_MAX_ENGINE_NAME_SIZE 128
#define XR_MAX_RUNTIME_NAME_SIZE 128
#define XR_MAX_PATH_LENGTH 256
#define XR_MAX_STRUCTURE_NAME_SIZE 64
#define XR_MAX_RESULT_STRING_SIZE 64
#define XR_MIN_COMPOSITION_LAYERS_SUPPORTED 16
#define XR_MAX_ACTION_SET_NAME_SIZE 64
#define XR_MAX_LOCALIZED_ACTION_SET_NAME_SIZE 128
#define XR_MAX_ACTION_NAME_SIZE 64
#define XR_MAX_LOCALIZED_ACTION_NAME_SIZE 128

type XrResult as long
enum
	XR_SUCCESS = 0
	XR_TIMEOUT_EXPIRED = 1
	XR_SESSION_LOSS_PENDING = 3
	XR_EVENT_UNAVAILABLE = 4
	XR_SPACE_BOUNDS_UNAVAILABLE = 7
	XR_SESSION_NOT_FOCUSED = 8
	XR_FRAME_DISCARDED = 9
	XR_ERROR_VALIDATION_FAILURE = -1
	XR_ERROR_RUNTIME_FAILURE = -2
	XR_ERROR_OUT_OF_MEMORY = -3
	XR_ERROR_API_VERSION_UNSUPPORTED = -4
	XR_ERROR_INITIALIZATION_FAILED = -6
	XR_ERROR_FUNCTION_UNSUPPORTED = -7
	XR_ERROR_FEATURE_UNSUPPORTED = -8
	XR_ERROR_EXTENSION_NOT_PRESENT = -9
	XR_ERROR_LIMIT_REACHED = -10
	XR_ERROR_SIZE_INSUFFICIENT = -11
	XR_ERROR_HANDLE_INVALID = -12
	XR_ERROR_INSTANCE_LOST = -13
	XR_ERROR_SESSION_RUNNING = -14
	XR_ERROR_SESSION_NOT_RUNNING = -16
	XR_ERROR_SESSION_LOST = -17
	XR_ERROR_SYSTEM_INVALID = -18
	XR_ERROR_PATH_INVALID = -19
	XR_ERROR_PATH_COUNT_EXCEEDED = -20
	XR_ERROR_PATH_FORMAT_INVALID = -21
	XR_ERROR_PATH_UNSUPPORTED = -22
	XR_ERROR_LAYER_INVALID = -23
	XR_ERROR_LAYER_LIMIT_EXCEEDED = -24
	XR_ERROR_SWAPCHAIN_RECT_INVALID = -25
	XR_ERROR_SWAPCHAIN_FORMAT_UNSUPPORTED = -26
	XR_ERROR_ACTION_TYPE_MISMATCH = -27
	XR_ERROR_SESSION_NOT_READY = -28
	XR_ERROR_SESSION_NOT_STOPPING = -29
	XR_ERROR_TIME_INVALID = -30
	XR_ERROR_REFERENCE_SPACE_UNSUPPORTED = -31
	XR_ERROR_FILE_ACCESS_ERROR = -32
	XR_ERROR_FILE_CONTENTS_INVALID = -33
	XR_ERROR_FORM_FACTOR_UNSUPPORTED = -34
	XR_ERROR_FORM_FACTOR_UNAVAILABLE = -35
	XR_ERROR_API_LAYER_NOT_PRESENT = -36
	XR_ERROR_CALL_ORDER_INVALID = -37
	XR_ERROR_GRAPHICS_DEVICE_INVALID = -38
	XR_ERROR_POSE_INVALID = -39
	XR_ERROR_INDEX_OUT_OF_RANGE = -40
	XR_ERROR_VIEW_CONFIGURATION_TYPE_UNSUPPORTED = -41
	XR_ERROR_ENVIRONMENT_BLEND_MODE_UNSUPPORTED = -42
	XR_ERROR_NAME_DUPLICATED = -44
	XR_ERROR_NAME_INVALID = -45
	XR_ERROR_ACTIONSET_NOT_ATTACHED = -46
	XR_ERROR_ACTIONSETS_ALREADY_ATTACHED = -47
	XR_ERROR_LOCALIZED_NAME_DUPLICATED = -48
	XR_ERROR_LOCALIZED_NAME_INVALID = -49
	XR_ERROR_GRAPHICS_REQUIREMENTS_CALL_MISSING = -50
	XR_ERROR_RUNTIME_UNAVAILABLE = -51
	XR_ERROR_ANDROID_THREAD_SETTINGS_ID_INVALID_KHR = -1000003000
	XR_ERROR_ANDROID_THREAD_SETTINGS_FAILURE_KHR = -1000003001
	XR_ERROR_CREATE_SPATIAL_ANCHOR_FAILED_MSFT = -1000039001
	XR_ERROR_SECONDARY_VIEW_CONFIGURATION_TYPE_NOT_ENABLED_MSFT = -1000053000
	XR_ERROR_CONTROLLER_MODEL_KEY_INVALID_MSFT = -1000055000
	XR_ERROR_REPROJECTION_MODE_UNSUPPORTED_MSFT = -1000066000
	XR_ERROR_COMPUTE_NEW_SCENE_NOT_COMPLETED_MSFT = -1000097000
	XR_ERROR_SCENE_COMPONENT_ID_INVALID_MSFT = -1000097001
	XR_ERROR_SCENE_COMPONENT_TYPE_MISMATCH_MSFT = -1000097002
	XR_ERROR_SCENE_MESH_BUFFER_ID_INVALID_MSFT = -1000097003
	XR_ERROR_SCENE_COMPUTE_FEATURE_INCOMPATIBLE_MSFT = -1000097004
	XR_ERROR_SCENE_COMPUTE_CONSISTENCY_MISMATCH_MSFT = -1000097005
	XR_ERROR_DISPLAY_REFRESH_RATE_UNSUPPORTED_FB = -1000101000
	XR_ERROR_COLOR_SPACE_UNSUPPORTED_FB = -1000108000
	XR_ERROR_UNEXPECTED_STATE_PASSTHROUGH_FB = -1000118000
	XR_ERROR_FEATURE_ALREADY_CREATED_PASSTHROUGH_FB = -1000118001
	XR_ERROR_FEATURE_REQUIRED_PASSTHROUGH_FB = -1000118002
	XR_ERROR_NOT_PERMITTED_PASSTHROUGH_FB = -1000118003
	XR_ERROR_INSUFFICIENT_RESOURCES_PASSTHROUGH_FB = -1000118004
	XR_ERROR_UNKNOWN_PASSTHROUGH_FB = -1000118050
	XR_ERROR_MARKER_NOT_TRACKED_VARJO = -1000124000
	XR_ERROR_MARKER_ID_INVALID_VARJO = -1000124001
	XR_ERROR_SPATIAL_ANCHOR_NAME_NOT_FOUND_MSFT = -1000142001
	XR_ERROR_SPATIAL_ANCHOR_NAME_INVALID_MSFT = -1000142002
	XR_RESULT_MAX_ENUM = &h7FFFFFFF
end enum

type XrStructureType as long
enum
	XR_TYPE_UNKNOWN = 0
	XR_TYPE_API_LAYER_PROPERTIES = 1
	XR_TYPE_EXTENSION_PROPERTIES = 2
	XR_TYPE_INSTANCE_CREATE_INFO = 3
	XR_TYPE_SYSTEM_GET_INFO = 4
	XR_TYPE_SYSTEM_PROPERTIES = 5
	XR_TYPE_VIEW_LOCATE_INFO = 6
	XR_TYPE_VIEW = 7
	XR_TYPE_SESSION_CREATE_INFO = 8
	XR_TYPE_SWAPCHAIN_CREATE_INFO = 9
	XR_TYPE_SESSION_BEGIN_INFO = 10
	XR_TYPE_VIEW_STATE = 11
	XR_TYPE_FRAME_END_INFO = 12
	XR_TYPE_HAPTIC_VIBRATION = 13
	XR_TYPE_EVENT_DATA_BUFFER = 16
	XR_TYPE_EVENT_DATA_INSTANCE_LOSS_PENDING = 17
	XR_TYPE_EVENT_DATA_SESSION_STATE_CHANGED = 18
	XR_TYPE_ACTION_STATE_BOOLEAN = 23
	XR_TYPE_ACTION_STATE_FLOAT = 24
	XR_TYPE_ACTION_STATE_VECTOR2F = 25
	XR_TYPE_ACTION_STATE_POSE = 27
	XR_TYPE_ACTION_SET_CREATE_INFO = 28
	XR_TYPE_ACTION_CREATE_INFO = 29
	XR_TYPE_INSTANCE_PROPERTIES = 32
	XR_TYPE_FRAME_WAIT_INFO = 33
	XR_TYPE_COMPOSITION_LAYER_PROJECTION = 35
	XR_TYPE_COMPOSITION_LAYER_QUAD = 36
	XR_TYPE_REFERENCE_SPACE_CREATE_INFO = 37
	XR_TYPE_ACTION_SPACE_CREATE_INFO = 38
	XR_TYPE_EVENT_DATA_REFERENCE_SPACE_CHANGE_PENDING = 40
	XR_TYPE_VIEW_CONFIGURATION_VIEW = 41
	XR_TYPE_SPACE_LOCATION = 42
	XR_TYPE_SPACE_VELOCITY = 43
	XR_TYPE_FRAME_STATE = 44
	XR_TYPE_VIEW_CONFIGURATION_PROPERTIES = 45
	XR_TYPE_FRAME_BEGIN_INFO = 46
	XR_TYPE_COMPOSITION_LAYER_PROJECTION_VIEW = 48
	XR_TYPE_EVENT_DATA_EVENTS_LOST = 49
	XR_TYPE_INTERACTION_PROFILE_SUGGESTED_BINDING = 51
	XR_TYPE_EVENT_DATA_INTERACTION_PROFILE_CHANGED = 52
	XR_TYPE_INTERACTION_PROFILE_STATE = 53
	XR_TYPE_SWAPCHAIN_IMAGE_ACQUIRE_INFO = 55
	XR_TYPE_SWAPCHAIN_IMAGE_WAIT_INFO = 56
	XR_TYPE_SWAPCHAIN_IMAGE_RELEASE_INFO = 57
	XR_TYPE_ACTION_STATE_GET_INFO = 58
	XR_TYPE_HAPTIC_ACTION_INFO = 59
	XR_TYPE_SESSION_ACTION_SETS_ATTACH_INFO = 60
	XR_TYPE_ACTIONS_SYNC_INFO = 61
	XR_TYPE_BOUND_SOURCES_FOR_ACTION_ENUMERATE_INFO = 62
	XR_TYPE_INPUT_SOURCE_LOCALIZED_NAME_GET_INFO = 63
	XR_TYPE_COMPOSITION_LAYER_CUBE_KHR = 1000006000
	XR_TYPE_INSTANCE_CREATE_INFO_ANDROID_KHR = 1000008000
	XR_TYPE_COMPOSITION_LAYER_DEPTH_INFO_KHR = 1000010000
	XR_TYPE_VULKAN_SWAPCHAIN_FORMAT_LIST_CREATE_INFO_KHR = 1000014000
	XR_TYPE_EVENT_DATA_PERF_SETTINGS_EXT = 1000015000
	XR_TYPE_COMPOSITION_LAYER_CYLINDER_KHR = 1000017000
	XR_TYPE_COMPOSITION_LAYER_EQUIRECT_KHR = 1000018000
	XR_TYPE_DEBUG_UTILS_OBJECT_NAME_INFO_EXT = 1000019000
	XR_TYPE_DEBUG_UTILS_MESSENGER_CALLBACK_DATA_EXT = 1000019001
	XR_TYPE_DEBUG_UTILS_MESSENGER_CREATE_INFO_EXT = 1000019002
	XR_TYPE_DEBUG_UTILS_LABEL_EXT = 1000019003
	XR_TYPE_GRAPHICS_BINDING_OPENGL_WIN32_KHR = 1000023000
	XR_TYPE_GRAPHICS_BINDING_OPENGL_XLIB_KHR = 1000023001
	XR_TYPE_GRAPHICS_BINDING_OPENGL_XCB_KHR = 1000023002
	XR_TYPE_GRAPHICS_BINDING_OPENGL_WAYLAND_KHR = 1000023003
	XR_TYPE_SWAPCHAIN_IMAGE_OPENGL_KHR = 1000023004
	XR_TYPE_GRAPHICS_REQUIREMENTS_OPENGL_KHR = 1000023005
	XR_TYPE_GRAPHICS_BINDING_OPENGL_ES_ANDROID_KHR = 1000024001
	XR_TYPE_SWAPCHAIN_IMAGE_OPENGL_ES_KHR = 1000024002
	XR_TYPE_GRAPHICS_REQUIREMENTS_OPENGL_ES_KHR = 1000024003
	XR_TYPE_GRAPHICS_BINDING_VULKAN_KHR = 1000025000
	XR_TYPE_SWAPCHAIN_IMAGE_VULKAN_KHR = 1000025001
	XR_TYPE_GRAPHICS_REQUIREMENTS_VULKAN_KHR = 1000025002
	XR_TYPE_GRAPHICS_BINDING_D3D11_KHR = 1000027000
	XR_TYPE_SWAPCHAIN_IMAGE_D3D11_KHR = 1000027001
	XR_TYPE_GRAPHICS_REQUIREMENTS_D3D11_KHR = 1000027002
	XR_TYPE_GRAPHICS_BINDING_D3D12_KHR = 1000028000
	XR_TYPE_SWAPCHAIN_IMAGE_D3D12_KHR = 1000028001
	XR_TYPE_GRAPHICS_REQUIREMENTS_D3D12_KHR = 1000028002
	XR_TYPE_SYSTEM_EYE_GAZE_INTERACTION_PROPERTIES_EXT = 1000030000
	XR_TYPE_EYE_GAZE_SAMPLE_TIME_EXT = 1000030001
	XR_TYPE_VISIBILITY_MASK_KHR = 1000031000
	XR_TYPE_EVENT_DATA_VISIBILITY_MASK_CHANGED_KHR = 1000031001
	XR_TYPE_SESSION_CREATE_INFO_OVERLAY_EXTX = 1000033000
	XR_TYPE_EVENT_DATA_MAIN_SESSION_VISIBILITY_CHANGED_EXTX = 1000033003
	XR_TYPE_COMPOSITION_LAYER_COLOR_SCALE_BIAS_KHR = 1000034000
	XR_TYPE_SPATIAL_ANCHOR_CREATE_INFO_MSFT = 1000039000
	XR_TYPE_SPATIAL_ANCHOR_SPACE_CREATE_INFO_MSFT = 1000039001
	XR_TYPE_COMPOSITION_LAYER_IMAGE_LAYOUT_FB = 1000040000
	XR_TYPE_COMPOSITION_LAYER_ALPHA_BLEND_FB = 1000041001
	XR_TYPE_VIEW_CONFIGURATION_DEPTH_RANGE_EXT = 1000046000
	XR_TYPE_GRAPHICS_BINDING_EGL_MNDX = 1000048004
	XR_TYPE_SPATIAL_GRAPH_NODE_SPACE_CREATE_INFO_MSFT = 1000049000
	XR_TYPE_SYSTEM_HAND_TRACKING_PROPERTIES_EXT = 1000051000
	XR_TYPE_HAND_TRACKER_CREATE_INFO_EXT = 1000051001
	XR_TYPE_HAND_JOINTS_LOCATE_INFO_EXT = 1000051002
	XR_TYPE_HAND_JOINT_LOCATIONS_EXT = 1000051003
	XR_TYPE_HAND_JOINT_VELOCITIES_EXT = 1000051004
	XR_TYPE_SYSTEM_HAND_TRACKING_MESH_PROPERTIES_MSFT = 1000052000
	XR_TYPE_HAND_MESH_SPACE_CREATE_INFO_MSFT = 1000052001
	XR_TYPE_HAND_MESH_UPDATE_INFO_MSFT = 1000052002
	XR_TYPE_HAND_MESH_MSFT = 1000052003
	XR_TYPE_HAND_POSE_TYPE_INFO_MSFT = 1000052004
	XR_TYPE_SECONDARY_VIEW_CONFIGURATION_SESSION_BEGIN_INFO_MSFT = 1000053000
	XR_TYPE_SECONDARY_VIEW_CONFIGURATION_STATE_MSFT = 1000053001
	XR_TYPE_SECONDARY_VIEW_CONFIGURATION_FRAME_STATE_MSFT = 1000053002
	XR_TYPE_SECONDARY_VIEW_CONFIGURATION_FRAME_END_INFO_MSFT = 1000053003
	XR_TYPE_SECONDARY_VIEW_CONFIGURATION_LAYER_INFO_MSFT = 1000053004
	XR_TYPE_SECONDARY_VIEW_CONFIGURATION_SWAPCHAIN_CREATE_INFO_MSFT = 1000053005
	XR_TYPE_CONTROLLER_MODEL_KEY_STATE_MSFT = 1000055000
	XR_TYPE_CONTROLLER_MODEL_NODE_PROPERTIES_MSFT = 1000055001
	XR_TYPE_CONTROLLER_MODEL_PROPERTIES_MSFT = 1000055002
	XR_TYPE_CONTROLLER_MODEL_NODE_STATE_MSFT = 1000055003
	XR_TYPE_CONTROLLER_MODEL_STATE_MSFT = 1000055004
	XR_TYPE_VIEW_CONFIGURATION_VIEW_FOV_EPIC = 1000059000
	XR_TYPE_HOLOGRAPHIC_WINDOW_ATTACHMENT_MSFT = 1000063000
	XR_TYPE_COMPOSITION_LAYER_REPROJECTION_INFO_MSFT = 1000066000
	XR_TYPE_COMPOSITION_LAYER_REPROJECTION_PLANE_OVERRIDE_MSFT = 1000066001
	XR_TYPE_ANDROID_SURFACE_SWAPCHAIN_CREATE_INFO_FB = 1000070000
	XR_TYPE_COMPOSITION_LAYER_SECURE_CONTENT_FB = 1000072000
	XR_TYPE_INTERACTION_PROFILE_ANALOG_THRESHOLD_VALVE = 1000079000
	XR_TYPE_HAND_JOINTS_MOTION_RANGE_INFO_EXT = 1000080000
	XR_TYPE_LOADER_INIT_INFO_ANDROID_KHR = 1000089000
	XR_TYPE_VULKAN_INSTANCE_CREATE_INFO_KHR = 1000090000
	XR_TYPE_VULKAN_DEVICE_CREATE_INFO_KHR = 1000090001
	XR_TYPE_VULKAN_GRAPHICS_DEVICE_GET_INFO_KHR = 1000090003
	XR_TYPE_COMPOSITION_LAYER_EQUIRECT2_KHR = 1000091000
	XR_TYPE_SCENE_OBSERVER_CREATE_INFO_MSFT = 1000097000
	XR_TYPE_SCENE_CREATE_INFO_MSFT = 1000097001
	XR_TYPE_NEW_SCENE_COMPUTE_INFO_MSFT = 1000097002
	XR_TYPE_VISUAL_MESH_COMPUTE_LOD_INFO_MSFT = 1000097003
	XR_TYPE_SCENE_COMPONENTS_MSFT = 1000097004
	XR_TYPE_SCENE_COMPONENTS_GET_INFO_MSFT = 1000097005
	XR_TYPE_SCENE_COMPONENT_LOCATIONS_MSFT = 1000097006
	XR_TYPE_SCENE_COMPONENTS_LOCATE_INFO_MSFT = 1000097007
	XR_TYPE_SCENE_OBJECTS_MSFT = 1000097008
	XR_TYPE_SCENE_COMPONENT_PARENT_FILTER_INFO_MSFT = 1000097009
	XR_TYPE_SCENE_OBJECT_TYPES_FILTER_INFO_MSFT = 1000097010
	XR_TYPE_SCENE_PLANES_MSFT = 1000097011
	XR_TYPE_SCENE_PLANE_ALIGNMENT_FILTER_INFO_MSFT = 1000097012
	XR_TYPE_SCENE_MESHES_MSFT = 1000097013
	XR_TYPE_SCENE_MESH_BUFFERS_GET_INFO_MSFT = 1000097014
	XR_TYPE_SCENE_MESH_BUFFERS_MSFT = 1000097015
	XR_TYPE_SCENE_MESH_VERTEX_BUFFER_MSFT = 1000097016
	XR_TYPE_SCENE_MESH_INDICES_UINT32_MSFT = 1000097017
	XR_TYPE_SCENE_MESH_INDICES_UINT16_MSFT = 1000097018
	XR_TYPE_SERIALIZED_SCENE_FRAGMENT_DATA_GET_INFO_MSFT = 1000098000
	XR_TYPE_SCENE_DESERIALIZE_INFO_MSFT = 1000098001
	XR_TYPE_EVENT_DATA_DISPLAY_REFRESH_RATE_CHANGED_FB = 1000101000
	XR_TYPE_VIVE_TRACKER_PATHS_HTCX = 1000103000
	XR_TYPE_EVENT_DATA_VIVE_TRACKER_CONNECTED_HTCX = 1000103001
	XR_TYPE_SYSTEM_COLOR_SPACE_PROPERTIES_FB = 1000108000
	XR_TYPE_HAND_TRACKING_MESH_FB = 1000110001
	XR_TYPE_HAND_TRACKING_SCALE_FB = 1000110003
	XR_TYPE_HAND_TRACKING_AIM_STATE_FB = 1000111001
	XR_TYPE_HAND_TRACKING_CAPSULES_STATE_FB = 1000112000
	XR_TYPE_FOVEATION_PROFILE_CREATE_INFO_FB = 1000114000
	XR_TYPE_SWAPCHAIN_CREATE_INFO_FOVEATION_FB = 1000114001
	XR_TYPE_SWAPCHAIN_STATE_FOVEATION_FB = 1000114002
	XR_TYPE_FOVEATION_LEVEL_PROFILE_CREATE_INFO_FB = 1000115000
	XR_TYPE_TRIANGLE_MESH_CREATE_INFO_FB = 1000117001
	XR_TYPE_SYSTEM_PASSTHROUGH_PROPERTIES_FB = 1000118000
	XR_TYPE_PASSTHROUGH_CREATE_INFO_FB = 1000118001
	XR_TYPE_PASSTHROUGH_LAYER_CREATE_INFO_FB = 1000118002
	XR_TYPE_COMPOSITION_LAYER_PASSTHROUGH_FB = 1000118003
	XR_TYPE_GEOMETRY_INSTANCE_CREATE_INFO_FB = 1000118004
	XR_TYPE_GEOMETRY_INSTANCE_TRANSFORM_FB = 1000118005
	XR_TYPE_PASSTHROUGH_STYLE_FB = 1000118020
	XR_TYPE_PASSTHROUGH_COLOR_MAP_MONO_TO_RGBA_FB = 1000118021
	XR_TYPE_PASSTHROUGH_COLOR_MAP_MONO_TO_MONO_FB = 1000118022
	XR_TYPE_EVENT_DATA_PASSTHROUGH_STATE_CHANGED_FB = 1000118030
	XR_TYPE_BINDING_MODIFICATIONS_KHR = 1000120000
	XR_TYPE_VIEW_LOCATE_FOVEATED_RENDERING_VARJO = 1000121000
	XR_TYPE_FOVEATED_VIEW_CONFIGURATION_VIEW_VARJO = 1000121001
	XR_TYPE_SYSTEM_FOVEATED_RENDERING_PROPERTIES_VARJO = 1000121002
	XR_TYPE_COMPOSITION_LAYER_DEPTH_TEST_VARJO = 1000122000
	XR_TYPE_SYSTEM_MARKER_TRACKING_PROPERTIES_VARJO = 1000124000
	XR_TYPE_EVENT_DATA_MARKER_TRACKING_UPDATE_VARJO = 1000124001
	XR_TYPE_MARKER_SPACE_CREATE_INFO_VARJO = 1000124002
	XR_TYPE_SPATIAL_ANCHOR_PERSISTENCE_INFO_MSFT = 1000142000
	XR_TYPE_SPATIAL_ANCHOR_FROM_PERSISTED_ANCHOR_CREATE_INFO_MSFT = 1000142001
	XR_TYPE_SWAPCHAIN_IMAGE_FOVEATION_VULKAN_FB = 1000160000
	XR_TYPE_SWAPCHAIN_STATE_ANDROID_SURFACE_DIMENSIONS_FB = 1000161000
	XR_TYPE_SWAPCHAIN_STATE_SAMPLER_OPENGL_ES_FB = 1000162000
	XR_TYPE_SWAPCHAIN_STATE_SAMPLER_VULKAN_FB = 1000163000
	XR_TYPE_COMPOSITION_LAYER_SPACE_WARP_INFO_FB = 1000171000
	XR_TYPE_SYSTEM_SPACE_WARP_PROPERTIES_FB = 1000171001
	XR_TYPE_GRAPHICS_BINDING_VULKAN2_KHR = XR_TYPE_GRAPHICS_BINDING_VULKAN_KHR
	XR_TYPE_SWAPCHAIN_IMAGE_VULKAN2_KHR = XR_TYPE_SWAPCHAIN_IMAGE_VULKAN_KHR
	XR_TYPE_GRAPHICS_REQUIREMENTS_VULKAN2_KHR = XR_TYPE_GRAPHICS_REQUIREMENTS_VULKAN_KHR
	XR_STRUCTURE_TYPE_MAX_ENUM = &h7FFFFFFF
end enum

type XrFormFactor as long
enum
	XR_FORM_FACTOR_HEAD_MOUNTED_DISPLAY = 1
	XR_FORM_FACTOR_HANDHELD_DISPLAY = 2
	XR_FORM_FACTOR_MAX_ENUM = &h7FFFFFFF
end enum

type XrViewConfigurationType as long
enum
	XR_VIEW_CONFIGURATION_TYPE_PRIMARY_MONO = 1
	XR_VIEW_CONFIGURATION_TYPE_PRIMARY_STEREO = 2
	XR_VIEW_CONFIGURATION_TYPE_PRIMARY_QUAD_VARJO = 1000037000
	XR_VIEW_CONFIGURATION_TYPE_SECONDARY_MONO_FIRST_PERSON_OBSERVER_MSFT = 1000054000
	XR_VIEW_CONFIGURATION_TYPE_MAX_ENUM = &h7FFFFFFF
end enum

type XrEnvironmentBlendMode as long
enum
	XR_ENVIRONMENT_BLEND_MODE_OPAQUE = 1
	XR_ENVIRONMENT_BLEND_MODE_ADDITIVE = 2
	XR_ENVIRONMENT_BLEND_MODE_ALPHA_BLEND = 3
	XR_ENVIRONMENT_BLEND_MODE_MAX_ENUM = &h7FFFFFFF
end enum

type XrReferenceSpaceType as long
enum
	XR_REFERENCE_SPACE_TYPE_VIEW = 1
	XR_REFERENCE_SPACE_TYPE_LOCAL = 2
	XR_REFERENCE_SPACE_TYPE_STAGE = 3
	XR_REFERENCE_SPACE_TYPE_UNBOUNDED_MSFT = 1000038000
	XR_REFERENCE_SPACE_TYPE_COMBINED_EYE_VARJO = 1000121000
	XR_REFERENCE_SPACE_TYPE_MAX_ENUM = &h7FFFFFFF
end enum

type XrActionType as long
enum
	XR_ACTION_TYPE_BOOLEAN_INPUT = 1
	XR_ACTION_TYPE_FLOAT_INPUT = 2
	XR_ACTION_TYPE_VECTOR2F_INPUT = 3
	XR_ACTION_TYPE_POSE_INPUT = 4
	XR_ACTION_TYPE_VIBRATION_OUTPUT = 100
	XR_ACTION_TYPE_MAX_ENUM = &h7FFFFFFF
end enum

type XrEyeVisibility as long
enum
	XR_EYE_VISIBILITY_BOTH = 0
	XR_EYE_VISIBILITY_LEFT = 1
	XR_EYE_VISIBILITY_RIGHT = 2
	XR_EYE_VISIBILITY_MAX_ENUM = &h7FFFFFFF
end enum

type XrSessionState as long
enum
	XR_SESSION_STATE_UNKNOWN = 0
	XR_SESSION_STATE_IDLE = 1
	XR_SESSION_STATE_READY = 2
	XR_SESSION_STATE_SYNCHRONIZED = 3
	XR_SESSION_STATE_VISIBLE = 4
	XR_SESSION_STATE_FOCUSED = 5
	XR_SESSION_STATE_STOPPING = 6
	XR_SESSION_STATE_LOSS_PENDING = 7
	XR_SESSION_STATE_EXITING = 8
	XR_SESSION_STATE_MAX_ENUM = &h7FFFFFFF
end enum

type XrObjectType as long
enum
	XR_OBJECT_TYPE_UNKNOWN = 0
	XR_OBJECT_TYPE_INSTANCE = 1
	XR_OBJECT_TYPE_SESSION = 2
	XR_OBJECT_TYPE_SWAPCHAIN = 3
	XR_OBJECT_TYPE_SPACE = 4
	XR_OBJECT_TYPE_ACTION_SET = 5
	XR_OBJECT_TYPE_ACTION = 6
	XR_OBJECT_TYPE_DEBUG_UTILS_MESSENGER_EXT = 1000019000
	XR_OBJECT_TYPE_SPATIAL_ANCHOR_MSFT = 1000039000
	XR_OBJECT_TYPE_HAND_TRACKER_EXT = 1000051000
	XR_OBJECT_TYPE_SCENE_OBSERVER_MSFT = 1000097000
	XR_OBJECT_TYPE_SCENE_MSFT = 1000097001
	XR_OBJECT_TYPE_FOVEATION_PROFILE_FB = 1000114000
	XR_OBJECT_TYPE_TRIANGLE_MESH_FB = 1000117000
	XR_OBJECT_TYPE_PASSTHROUGH_FB = 1000118000
	XR_OBJECT_TYPE_PASSTHROUGH_LAYER_FB = 1000118002
	XR_OBJECT_TYPE_GEOMETRY_INSTANCE_FB = 1000118004
	XR_OBJECT_TYPE_SPATIAL_ANCHOR_STORE_CONNECTION_MSFT = 1000142000
	XR_OBJECT_TYPE_MAX_ENUM = &h7FFFFFFF
end enum

type XrInstanceCreateFlags as XrFlags64
type XrSessionCreateFlags as XrFlags64
type XrSpaceVelocityFlags as XrFlags64
dim shared XR_SPACE_VELOCITY_LINEAR_VALID_BIT as const XrSpaceVelocityFlags = &h00000001
dim shared XR_SPACE_VELOCITY_ANGULAR_VALID_BIT as const XrSpaceVelocityFlags = &h00000002
type XrSpaceLocationFlags as XrFlags64

dim shared XR_SPACE_LOCATION_ORIENTATION_VALID_BIT as const XrSpaceLocationFlags = &h00000001
dim shared XR_SPACE_LOCATION_POSITION_VALID_BIT as const XrSpaceLocationFlags = &h00000002
dim shared XR_SPACE_LOCATION_ORIENTATION_TRACKED_BIT as const XrSpaceLocationFlags = &h00000004
dim shared XR_SPACE_LOCATION_POSITION_TRACKED_BIT as const XrSpaceLocationFlags = &h00000008
type XrSwapchainCreateFlags as XrFlags64
dim shared XR_SWAPCHAIN_CREATE_PROTECTED_CONTENT_BIT as const XrSwapchainCreateFlags = &h00000001
dim shared XR_SWAPCHAIN_CREATE_STATIC_IMAGE_BIT as const XrSwapchainCreateFlags = &h00000002
type XrSwapchainUsageFlags as XrFlags64
dim shared XR_SWAPCHAIN_USAGE_COLOR_ATTACHMENT_BIT as const XrSwapchainUsageFlags = &h00000001
dim shared XR_SWAPCHAIN_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT as const XrSwapchainUsageFlags = &h00000002
dim shared XR_SWAPCHAIN_USAGE_UNORDERED_ACCESS_BIT as const XrSwapchainUsageFlags = &h00000004
dim shared XR_SWAPCHAIN_USAGE_TRANSFER_SRC_BIT as const XrSwapchainUsageFlags = &h00000008
dim shared XR_SWAPCHAIN_USAGE_TRANSFER_DST_BIT as const XrSwapchainUsageFlags = &h00000010
dim shared XR_SWAPCHAIN_USAGE_SAMPLED_BIT as const XrSwapchainUsageFlags = &h00000020
dim shared XR_SWAPCHAIN_USAGE_MUTABLE_FORMAT_BIT as const XrSwapchainUsageFlags = &h00000040
dim shared XR_SWAPCHAIN_USAGE_INPUT_ATTACHMENT_BIT_MND as const XrSwapchainUsageFlags = &h00000080
dim shared XR_SWAPCHAIN_USAGE_INPUT_ATTACHMENT_BIT_KHR as const XrSwapchainUsageFlags = &h00000080
type XrCompositionLayerFlags as XrFlags64
dim shared XR_COMPOSITION_LAYER_CORRECT_CHROMATIC_ABERRATION_BIT as const XrCompositionLayerFlags = &h00000001
dim shared XR_COMPOSITION_LAYER_BLEND_TEXTURE_SOURCE_ALPHA_BIT as const XrCompositionLayerFlags = &h00000002
dim shared XR_COMPOSITION_LAYER_UNPREMULTIPLIED_ALPHA_BIT as const XrCompositionLayerFlags = &h00000004
type XrViewStateFlags as XrFlags64
dim shared XR_VIEW_STATE_ORIENTATION_VALID_BIT as const XrViewStateFlags = &h00000001
dim shared XR_VIEW_STATE_POSITION_VALID_BIT as const XrViewStateFlags = &h00000002
dim shared XR_VIEW_STATE_ORIENTATION_TRACKED_BIT as const XrViewStateFlags = &h00000004
dim shared XR_VIEW_STATE_POSITION_TRACKED_BIT as const XrViewStateFlags = &h00000008
type XrInputSourceLocalizedNameFlags as XrFlags64
dim shared XR_INPUT_SOURCE_LOCALIZED_NAME_USER_PATH_BIT as const XrInputSourceLocalizedNameFlags = &h00000001
dim shared XR_INPUT_SOURCE_LOCALIZED_NAME_INTERACTION_PROFILE_BIT as const XrInputSourceLocalizedNameFlags = &h00000002
dim shared XR_INPUT_SOURCE_LOCALIZED_NAME_COMPONENT_BIT as const XrInputSourceLocalizedNameFlags = &h00000004
type PFN_xrVoidFunction as sub()

type XrApiLayerProperties
	as XrStructureType _type
	_next as any ptr
	layerName as zstring * 256
	specVersion as XrVersion
	layerVersion as ulong
	description as zstring * 256
end type

type XrExtensionProperties
	as XrStructureType _type
	_next as any ptr
	extensionName as zstring * 128
	extensionVersion as ulong
end type

type XrApplicationInfo
	applicationName as zstring * 128
	applicationVersion as ulong
	engineName as zstring * 128
	engineVersion as ulong
	apiVersion as XrVersion
end type

type XrInstanceCreateInfo
	as XrStructureType _type
	next as const any ptr
	createFlags as XrInstanceCreateFlags
	applicationInfo as XrApplicationInfo
	enabledApiLayerCount as ulong
	enabledApiLayerNames as const zstring const ptr ptr
	enabledExtensionCount as ulong
	enabledExtensionNames as const zstring const ptr ptr
end type

type XrInstanceProperties
	as XrStructureType _type
	_next as any ptr
	runtimeVersion as XrVersion
	runtimeName as zstring * 128
end type

type XrEventDataBuffer
	as XrStructureType _type
	next as const any ptr
	varying(0 to 3999) as ubyte
end type

type XrSystemGetInfo
	as XrStructureType _type
	next as const any ptr
	formFactor as XrFormFactor
end type

type XrSystemGraphicsProperties
	maxSwapchainImageHeight as ulong
	maxSwapchainImageWidth as ulong
	maxLayerCount as ulong
end type

type XrSystemTrackingProperties
	orientationTracking as XrBool32
	positionTracking as XrBool32
end type

type XrSystemProperties
	as XrStructureType _type
	_next as any ptr
	systemId as XrSystemId
	vendorId as ulong
	systemName as zstring * 256
	graphicsProperties as XrSystemGraphicsProperties
	trackingProperties as XrSystemTrackingProperties
end type

type XrSessionCreateInfo
	as XrStructureType _type
	next as const any ptr
	createFlags as XrSessionCreateFlags
	systemId as XrSystemId
end type

type XrVector3f
	x as single
	y as single
	z as single
end type

type XrSpaceVelocity
	as XrStructureType _type
	_next as any ptr
	velocityFlags as XrSpaceVelocityFlags
	linearVelocity as XrVector3f
	angularVelocity as XrVector3f
end type

type XrQuaternionf
	x as single
	y as single
	z as single
	w as single
end type

type XrPosef
	orientation as XrQuaternionf
	position as XrVector3f
end type

type XrReferenceSpaceCreateInfo
	as XrStructureType _type
	next as const any ptr
	referenceSpaceType as XrReferenceSpaceType
	poseInReferenceSpace as XrPosef
end type

type XrExtent2Df
	width as single
	height as single
end type

type XrActionSpaceCreateInfo
	as XrStructureType _type
	next as const any ptr
	action as XrAction
	subactionPath as XrPath
	poseInActionSpace as XrPosef
end type

type XrSpaceLocation
	as XrStructureType _type
	_next as any ptr
	locationFlags as XrSpaceLocationFlags
	pose as XrPosef
end type

type XrViewConfigurationProperties
	as XrStructureType _type
	_next as any ptr
	viewConfigurationType as XrViewConfigurationType
	fovMutable as XrBool32
end type

type XrViewConfigurationView
	as XrStructureType _type
	_next as any ptr
	recommendedImageRectWidth as ulong
	maxImageRectWidth as ulong
	recommendedImageRectHeight as ulong
	maxImageRectHeight as ulong
	recommendedSwapchainSampleCount as ulong
	maxSwapchainSampleCount as ulong
end type

type XrSwapchainCreateInfo
	as XrStructureType _type
	next as const any ptr
	createFlags as XrSwapchainCreateFlags
	usageFlags as XrSwapchainUsageFlags
	format as longint
	sampleCount as ulong
	width as ulong
	height as ulong
	faceCount as ulong
	arraySize as ulong
	mipCount as ulong
end type

type XrSwapchainImageBaseHeader
	as XrStructureType _type
	_next as any ptr
end type

type XrSwapchainImageAcquireInfo
	as XrStructureType _type
	next as const any ptr
end type

type XrSwapchainImageWaitInfo
	as XrStructureType _type
	next as const any ptr
	timeout as XrDuration
end type

type XrSwapchainImageReleaseInfo
	as XrStructureType _type
	next as const any ptr
end type

type XrSessionBeginInfo
	as XrStructureType _type
	next as const any ptr
	primaryViewConfigurationType as XrViewConfigurationType
end type

type XrFrameWaitInfo
	as XrStructureType _type
	next as const any ptr
end type

type XrFrameState
	as XrStructureType _type
	_next as any ptr
	predictedDisplayTime as XrTime
	predictedDisplayPeriod as XrDuration
	shouldRender as XrBool32
end type

type XrFrameBeginInfo
	as XrStructureType _type
	next as const any ptr
end type

type XrCompositionLayerBaseHeader
	as XrStructureType _type
	next as const any ptr
	layerFlags as XrCompositionLayerFlags
	space as XrSpace
end type

type XrFrameEndInfo
	as XrStructureType _type
	next as const any ptr
	displayTime as XrTime
	environmentBlendMode as XrEnvironmentBlendMode
	layerCount as ulong
	layers as const XrCompositionLayerBaseHeader const ptr ptr
end type

type XrViewLocateInfo
	as XrStructureType _type
	next as const any ptr
	viewConfigurationType as XrViewConfigurationType
	displayTime as XrTime
	space as XrSpace
end type

type XrViewState
	as XrStructureType _type
	_next as any ptr
	viewStateFlags as XrViewStateFlags
end type

type XrFovf
	angleLeft as single
	angleRight as single
	angleUp as single
	angleDown as single
end type

type XrView
	as XrStructureType _type
	_next as any ptr
	pose as XrPosef
	fov as XrFovf
end type

type XrActionSetCreateInfo
	as XrStructureType _type
	next as const any ptr
	actionSetName as zstring * 64
	localizedActionSetName as zstring * 128
	priority as ulong
end type

type XrActionCreateInfo
	as XrStructureType _type
	next as const any ptr
	actionName as zstring * 64
	actionType as XrActionType
	countSubactionPaths as ulong
	subactionPaths as const XrPath ptr
	localizedActionName as zstring * 128
end type

type XrActionSuggestedBinding
	action as XrAction
	binding as XrPath
end type

type XrInteractionProfileSuggestedBinding
	as XrStructureType _type
	next as const any ptr
	interactionProfile as XrPath
	countSuggestedBindings as ulong
	suggestedBindings as const XrActionSuggestedBinding ptr
end type

type XrSessionActionSetsAttachInfo
	as XrStructureType _type
	next as const any ptr
	countActionSets as ulong
	actionSets as const XrActionSet ptr
end type

type XrInteractionProfileState
	as XrStructureType _type
	_next as any ptr
	interactionProfile as XrPath
end type

type XrActionStateGetInfo
	as XrStructureType _type
	next as const any ptr
	action as XrAction
	subactionPath as XrPath
end type

type XrActionStateBoolean
	as XrStructureType _type
	_next as any ptr
	currentState as XrBool32
	changedSinceLastSync as XrBool32
	lastChangeTime as XrTime
	isActive as XrBool32
end type

type XrActionStateFloat
	as XrStructureType _type
	_next as any ptr
	currentState as single
	changedSinceLastSync as XrBool32
	lastChangeTime as XrTime
	isActive as XrBool32
end type

type XrVector2f
	x as single
	y as single
end type

type XrActionStateVector2f
	as XrStructureType _type
	_next as any ptr
	currentState as XrVector2f
	changedSinceLastSync as XrBool32
	lastChangeTime as XrTime
	isActive as XrBool32
end type

type XrActionStatePose
	as XrStructureType _type
	_next as any ptr
	isActive as XrBool32
end type

type XrActiveActionSet
	actionSet as XrActionSet
	subactionPath as XrPath
end type

type XrActionsSyncInfo
	as XrStructureType _type
	next as const any ptr
	countActiveActionSets as ulong
	activeActionSets as const XrActiveActionSet ptr
end type

type XrBoundSourcesForActionEnumerateInfo
	as XrStructureType _type
	next as const any ptr
	action as XrAction
end type

type XrInputSourceLocalizedNameGetInfo
	as XrStructureType _type
	next as const any ptr
	sourcePath as XrPath
	whichComponents as XrInputSourceLocalizedNameFlags
end type

type XrHapticActionInfo
	as XrStructureType _type
	next as const any ptr
	action as XrAction
	subactionPath as XrPath
end type

type XrHapticBaseHeader
	as XrStructureType _type
	next as const any ptr
end type

type XrBaseInStructure
	as XrStructureType _type
	next as const XrBaseInStructure ptr
end type

type XrBaseOutStructure
	as XrStructureType _type
	next as XrBaseOutStructure ptr
end type

type XrOffset2Di
	x as long
	y as long
end type

type XrExtent2Di
	width as long
	height as long
end type

type XrRect2Di
	offset as XrOffset2Di
	extent as XrExtent2Di
end type

type XrSwapchainSubImage
	swapchain as XrSwapchain
	imageRect as XrRect2Di
	imageArrayIndex as ulong
end type

type XrCompositionLayerProjectionView
	as XrStructureType _type
	next as const any ptr
	pose as XrPosef
	fov as XrFovf
	subImage as XrSwapchainSubImage
end type

type XrCompositionLayerProjection
	as XrStructureType _type
	next as const any ptr
	layerFlags as XrCompositionLayerFlags
	space as XrSpace
	viewCount as ulong
	views as const XrCompositionLayerProjectionView ptr
end type

type XrCompositionLayerQuad
	as XrStructureType _type
	next as const any ptr
	layerFlags as XrCompositionLayerFlags
	space as XrSpace
	eyeVisibility as XrEyeVisibility
	subImage as XrSwapchainSubImage
	pose as XrPosef
	size as XrExtent2Df
end type

type XrEventDataBaseHeader
	as XrStructureType _type
	next as const any ptr
end type

type XrEventDataEventsLost
	as XrStructureType _type
	next as const any ptr
	lostEventCount as ulong
end type

type XrEventDataInstanceLossPending
	as XrStructureType _type
	next as const any ptr
	lossTime as XrTime
end type

type XrEventDataSessionStateChanged
	as XrStructureType _type
	next as const any ptr
	session as XrSession
	state as XrSessionState
	time as XrTime
end type

type XrEventDataReferenceSpaceChangePending
	as XrStructureType _type
	next as const any ptr
	session as XrSession
	referenceSpaceType as XrReferenceSpaceType
	changeTime as XrTime
	poseValid as XrBool32
	poseInPreviousSpace as XrPosef
end type

type XrEventDataInteractionProfileChanged
	as XrStructureType _type
	next as const any ptr
	session as XrSession
end type

type XrHapticVibration
	as XrStructureType _type
	next as const any ptr
	duration as XrDuration
	frequency as single
	amplitude as single
end type

type XrOffset2Df
	x as single
	y as single
end type

type XrRect2Df
	offset as XrOffset2Df
	extent as XrExtent2Df
end type

type XrVector4f
	x as single
	y as single
	z as single
	w as single
end type

type XrColor4f
	r as single
	g as single
	b as single
	a as single
end type

type PFN_xrGetInstanceProcAddr as function(byval instance as XrInstance, byval name as const zstring ptr, byval function as PFN_xrVoidFunction ptr) as XrResult
type PFN_xrEnumerateApiLayerProperties as function(byval propertyCapacityInput as ulong, byval propertyCountOutput as ulong ptr, byval properties as XrApiLayerProperties ptr) as XrResult
type PFN_xrEnumerateInstanceExtensionProperties as function(byval layerName as const zstring ptr, byval propertyCapacityInput as ulong, byval propertyCountOutput as ulong ptr, byval properties as XrExtensionProperties ptr) as XrResult
type PFN_xrCreateInstance as function(byval createInfo as const XrInstanceCreateInfo ptr, byval instance as XrInstance ptr) as XrResult
type PFN_xrDestroyInstance as function(byval instance as XrInstance) as XrResult
type PFN_xrGetInstanceProperties as function(byval instance as XrInstance, byval instanceProperties as XrInstanceProperties ptr) as XrResult
type PFN_xrPollEvent as function(byval instance as XrInstance, byval eventData as XrEventDataBuffer ptr) as XrResult
type PFN_xrResultToString as function(byval instance as XrInstance, byval value as XrResult, byval buffer as zstring ptr) as XrResult
type PFN_xrStructureTypeToString as function(byval instance as XrInstance, byval value as XrStructureType, byval buffer as zstring ptr) as XrResult
type PFN_xrGetSystem as function(byval instance as XrInstance, byval getInfo as const XrSystemGetInfo ptr, byval systemId as XrSystemId ptr) as XrResult
type PFN_xrGetSystemProperties as function(byval instance as XrInstance, byval systemId as XrSystemId, byval properties as XrSystemProperties ptr) as XrResult
type PFN_xrEnumerateEnvironmentBlendModes as function(byval instance as XrInstance, byval systemId as XrSystemId, byval viewConfigurationType as XrViewConfigurationType, byval environmentBlendModeCapacityInput as ulong, byval environmentBlendModeCountOutput as ulong ptr, byval environmentBlendModes as XrEnvironmentBlendMode ptr) as XrResult
type PFN_xrCreateSession as function(byval instance as XrInstance, byval createInfo as const XrSessionCreateInfo ptr, byval session as XrSession ptr) as XrResult
type PFN_xrDestroySession as function(byval session as XrSession) as XrResult
type PFN_xrEnumerateReferenceSpaces as function(byval session as XrSession, byval spaceCapacityInput as ulong, byval spaceCountOutput as ulong ptr, byval spaces as XrReferenceSpaceType ptr) as XrResult
type PFN_xrCreateReferenceSpace as function(byval session as XrSession, byval createInfo as const XrReferenceSpaceCreateInfo ptr, byval space as XrSpace ptr) as XrResult
type PFN_xrGetReferenceSpaceBoundsRect as function(byval session as XrSession, byval referenceSpaceType as XrReferenceSpaceType, byval bounds as XrExtent2Df ptr) as XrResult
type PFN_xrCreateActionSpace as function(byval session as XrSession, byval createInfo as const XrActionSpaceCreateInfo ptr, byval space as XrSpace ptr) as XrResult
type PFN_xrLocateSpace as function(byval space as XrSpace, byval baseSpace as XrSpace, byval time as XrTime, byval location as XrSpaceLocation ptr) as XrResult
type PFN_xrDestroySpace as function(byval space as XrSpace) as XrResult
type PFN_xrEnumerateViewConfigurations as function(byval instance as XrInstance, byval systemId as XrSystemId, byval viewConfigurationTypeCapacityInput as ulong, byval viewConfigurationTypeCountOutput as ulong ptr, byval viewConfigurationTypes as XrViewConfigurationType ptr) as XrResult
type PFN_xrGetViewConfigurationProperties as function(byval instance as XrInstance, byval systemId as XrSystemId, byval viewConfigurationType as XrViewConfigurationType, byval configurationProperties as XrViewConfigurationProperties ptr) as XrResult
type PFN_xrEnumerateViewConfigurationViews as function(byval instance as XrInstance, byval systemId as XrSystemId, byval viewConfigurationType as XrViewConfigurationType, byval viewCapacityInput as ulong, byval viewCountOutput as ulong ptr, byval views as XrViewConfigurationView ptr) as XrResult
type PFN_xrEnumerateSwapchainFormats as function(byval session as XrSession, byval formatCapacityInput as ulong, byval formatCountOutput as ulong ptr, byval formats as longint ptr) as XrResult
type PFN_xrCreateSwapchain as function(byval session as XrSession, byval createInfo as const XrSwapchainCreateInfo ptr, byval swapchain as XrSwapchain ptr) as XrResult
type PFN_xrDestroySwapchain as function(byval swapchain as XrSwapchain) as XrResult
type PFN_xrEnumerateSwapchainImages as function(byval swapchain as XrSwapchain, byval imageCapacityInput as ulong, byval imageCountOutput as ulong ptr, byval images as XrSwapchainImageBaseHeader ptr) as XrResult
type PFN_xrAcquireSwapchainImage as function(byval swapchain as XrSwapchain, byval acquireInfo as const XrSwapchainImageAcquireInfo ptr, byval index as ulong ptr) as XrResult
type PFN_xrWaitSwapchainImage as function(byval swapchain as XrSwapchain, byval waitInfo as const XrSwapchainImageWaitInfo ptr) as XrResult
type PFN_xrReleaseSwapchainImage as function(byval swapchain as XrSwapchain, byval releaseInfo as const XrSwapchainImageReleaseInfo ptr) as XrResult
type PFN_xrBeginSession as function(byval session as XrSession, byval beginInfo as const XrSessionBeginInfo ptr) as XrResult
type PFN_xrEndSession as function(byval session as XrSession) as XrResult
type PFN_xrRequestExitSession as function(byval session as XrSession) as XrResult
type PFN_xrWaitFrame as function(byval session as XrSession, byval frameWaitInfo as const XrFrameWaitInfo ptr, byval frameState as XrFrameState ptr) as XrResult
type PFN_xrBeginFrame as function(byval session as XrSession, byval frameBeginInfo as const XrFrameBeginInfo ptr) as XrResult
type PFN_xrEndFrame as function(byval session as XrSession, byval frameEndInfo as const XrFrameEndInfo ptr) as XrResult
type PFN_xrLocateViews as function(byval session as XrSession, byval viewLocateInfo as const XrViewLocateInfo ptr, byval viewState as XrViewState ptr, byval viewCapacityInput as ulong, byval viewCountOutput as ulong ptr, byval views as XrView ptr) as XrResult
type PFN_xrStringToPath as function(byval instance as XrInstance, byval pathString as const zstring ptr, byval path as XrPath ptr) as XrResult
type PFN_xrPathToString as function(byval instance as XrInstance, byval path as XrPath, byval bufferCapacityInput as ulong, byval bufferCountOutput as ulong ptr, byval buffer as zstring ptr) as XrResult
type PFN_xrCreateActionSet as function(byval instance as XrInstance, byval createInfo as const XrActionSetCreateInfo ptr, byval actionSet as XrActionSet ptr) as XrResult
type PFN_xrDestroyActionSet as function(byval actionSet as XrActionSet) as XrResult
type PFN_xrCreateAction as function(byval actionSet as XrActionSet, byval createInfo as const XrActionCreateInfo ptr, byval action as XrAction ptr) as XrResult
type PFN_xrDestroyAction as function(byval action as XrAction) as XrResult
type PFN_xrSuggestInteractionProfileBindings as function(byval instance as XrInstance, byval suggestedBindings as const XrInteractionProfileSuggestedBinding ptr) as XrResult
type PFN_xrAttachSessionActionSets as function(byval session as XrSession, byval attachInfo as const XrSessionActionSetsAttachInfo ptr) as XrResult
type PFN_xrGetCurrentInteractionProfile as function(byval session as XrSession, byval topLevelUserPath as XrPath, byval interactionProfile as XrInteractionProfileState ptr) as XrResult
type PFN_xrGetActionStateBoolean as function(byval session as XrSession, byval getInfo as const XrActionStateGetInfo ptr, byval state as XrActionStateBoolean ptr) as XrResult
type PFN_xrGetActionStateFloat as function(byval session as XrSession, byval getInfo as const XrActionStateGetInfo ptr, byval state as XrActionStateFloat ptr) as XrResult
type PFN_xrGetActionStateVector2f as function(byval session as XrSession, byval getInfo as const XrActionStateGetInfo ptr, byval state as XrActionStateVector2f ptr) as XrResult
type PFN_xrGetActionStatePose as function(byval session as XrSession, byval getInfo as const XrActionStateGetInfo ptr, byval state as XrActionStatePose ptr) as XrResult
type PFN_xrSyncActions as function(byval session as XrSession, byval syncInfo as const XrActionsSyncInfo ptr) as XrResult
type PFN_xrEnumerateBoundSourcesForAction as function(byval session as XrSession, byval enumerateInfo as const XrBoundSourcesForActionEnumerateInfo ptr, byval sourceCapacityInput as ulong, byval sourceCountOutput as ulong ptr, byval sources as XrPath ptr) as XrResult
type PFN_xrGetInputSourceLocalizedName as function(byval session as XrSession, byval getInfo as const XrInputSourceLocalizedNameGetInfo ptr, byval bufferCapacityInput as ulong, byval bufferCountOutput as ulong ptr, byval buffer as zstring ptr) as XrResult
type PFN_xrApplyHapticFeedback as function(byval session as XrSession, byval hapticActionInfo as const XrHapticActionInfo ptr, byval hapticFeedback as const XrHapticBaseHeader ptr) as XrResult
type PFN_xrStopHapticFeedback as function(byval session as XrSession, byval hapticActionInfo as const XrHapticActionInfo ptr) as XrResult

declare function xrGetInstanceProcAddr(byval instance as XrInstance, byval name as const zstring ptr, byval function as PFN_xrVoidFunction ptr) as XrResult
declare function xrEnumerateApiLayerProperties(byval propertyCapacityInput as ulong, byval propertyCountOutput as ulong ptr, byval properties as XrApiLayerProperties ptr) as XrResult
declare function xrEnumerateInstanceExtensionProperties(byval layerName as const zstring ptr, byval propertyCapacityInput as ulong, byval propertyCountOutput as ulong ptr, byval properties as XrExtensionProperties ptr) as XrResult
declare function xrCreateInstance(byval createInfo as const XrInstanceCreateInfo ptr, byval instance as XrInstance ptr) as XrResult
declare function xrDestroyInstance(byval instance as XrInstance) as XrResult
declare function xrGetInstanceProperties(byval instance as XrInstance, byval instanceProperties as XrInstanceProperties ptr) as XrResult
declare function xrPollEvent(byval instance as XrInstance, byval eventData as XrEventDataBuffer ptr) as XrResult
declare function xrResultToString(byval instance as XrInstance, byval value as XrResult, byval buffer as zstring ptr) as XrResult
declare function xrStructureTypeToString(byval instance as XrInstance, byval value as XrStructureType, byval buffer as zstring ptr) as XrResult
declare function xrGetSystem(byval instance as XrInstance, byval getInfo as const XrSystemGetInfo ptr, byval systemId as XrSystemId ptr) as XrResult
declare function xrGetSystemProperties(byval instance as XrInstance, byval systemId as XrSystemId, byval properties as XrSystemProperties ptr) as XrResult
declare function xrEnumerateEnvironmentBlendModes(byval instance as XrInstance, byval systemId as XrSystemId, byval viewConfigurationType as XrViewConfigurationType, byval environmentBlendModeCapacityInput as ulong, byval environmentBlendModeCountOutput as ulong ptr, byval environmentBlendModes as XrEnvironmentBlendMode ptr) as XrResult
declare function xrCreateSession(byval instance as XrInstance, byval createInfo as const XrSessionCreateInfo ptr, byval session as XrSession ptr) as XrResult
declare function xrDestroySession(byval session as XrSession) as XrResult
declare function xrEnumerateReferenceSpaces(byval session as XrSession, byval spaceCapacityInput as ulong, byval spaceCountOutput as ulong ptr, byval spaces as XrReferenceSpaceType ptr) as XrResult
declare function xrCreateReferenceSpace(byval session as XrSession, byval createInfo as const XrReferenceSpaceCreateInfo ptr, byval space as XrSpace ptr) as XrResult
declare function xrGetReferenceSpaceBoundsRect(byval session as XrSession, byval referenceSpaceType as XrReferenceSpaceType, byval bounds as XrExtent2Df ptr) as XrResult
declare function xrCreateActionSpace(byval session as XrSession, byval createInfo as const XrActionSpaceCreateInfo ptr, byval space as XrSpace ptr) as XrResult
declare function xrLocateSpace(byval space as XrSpace, byval baseSpace as XrSpace, byval time as XrTime, byval location as XrSpaceLocation ptr) as XrResult
declare function xrDestroySpace(byval space as XrSpace) as XrResult
declare function xrEnumerateViewConfigurations(byval instance as XrInstance, byval systemId as XrSystemId, byval viewConfigurationTypeCapacityInput as ulong, byval viewConfigurationTypeCountOutput as ulong ptr, byval viewConfigurationTypes as XrViewConfigurationType ptr) as XrResult
declare function xrGetViewConfigurationProperties(byval instance as XrInstance, byval systemId as XrSystemId, byval viewConfigurationType as XrViewConfigurationType, byval configurationProperties as XrViewConfigurationProperties ptr) as XrResult
declare function xrEnumerateViewConfigurationViews(byval instance as XrInstance, byval systemId as XrSystemId, byval viewConfigurationType as XrViewConfigurationType, byval viewCapacityInput as ulong, byval viewCountOutput as ulong ptr, byval views as XrViewConfigurationView ptr) as XrResult
declare function xrEnumerateSwapchainFormats(byval session as XrSession, byval formatCapacityInput as ulong, byval formatCountOutput as ulong ptr, byval formats as longint ptr) as XrResult
declare function xrCreateSwapchain(byval session as XrSession, byval createInfo as const XrSwapchainCreateInfo ptr, byval swapchain as XrSwapchain ptr) as XrResult
declare function xrDestroySwapchain(byval swapchain as XrSwapchain) as XrResult
declare function xrEnumerateSwapchainImages(byval swapchain as XrSwapchain, byval imageCapacityInput as ulong, byval imageCountOutput as ulong ptr, byval images as XrSwapchainImageBaseHeader ptr) as XrResult
declare function xrAcquireSwapchainImage(byval swapchain as XrSwapchain, byval acquireInfo as const XrSwapchainImageAcquireInfo ptr, byval index as ulong ptr) as XrResult
declare function xrWaitSwapchainImage(byval swapchain as XrSwapchain, byval waitInfo as const XrSwapchainImageWaitInfo ptr) as XrResult
declare function xrReleaseSwapchainImage(byval swapchain as XrSwapchain, byval releaseInfo as const XrSwapchainImageReleaseInfo ptr) as XrResult
declare function xrBeginSession(byval session as XrSession, byval beginInfo as const XrSessionBeginInfo ptr) as XrResult
declare function xrEndSession(byval session as XrSession) as XrResult
declare function xrRequestExitSession(byval session as XrSession) as XrResult
declare function xrWaitFrame(byval session as XrSession, byval frameWaitInfo as const XrFrameWaitInfo ptr, byval frameState as XrFrameState ptr) as XrResult
declare function xrBeginFrame(byval session as XrSession, byval frameBeginInfo as const XrFrameBeginInfo ptr) as XrResult
declare function xrEndFrame(byval session as XrSession, byval frameEndInfo as const XrFrameEndInfo ptr) as XrResult
declare function xrLocateViews(byval session as XrSession, byval viewLocateInfo as const XrViewLocateInfo ptr, byval viewState as XrViewState ptr, byval viewCapacityInput as ulong, byval viewCountOutput as ulong ptr, byval views as XrView ptr) as XrResult
declare function xrStringToPath(byval instance as XrInstance, byval pathString as const zstring ptr, byval path as XrPath ptr) as XrResult
declare function xrPathToString(byval instance as XrInstance, byval path as XrPath, byval bufferCapacityInput as ulong, byval bufferCountOutput as ulong ptr, byval buffer as zstring ptr) as XrResult
declare function xrCreateActionSet(byval instance as XrInstance, byval createInfo as const XrActionSetCreateInfo ptr, byval actionSet as XrActionSet ptr) as XrResult
declare function xrDestroyActionSet(byval actionSet as XrActionSet) as XrResult
declare function xrCreateAction(byval actionSet as XrActionSet, byval createInfo as const XrActionCreateInfo ptr, byval action as XrAction ptr) as XrResult
declare function xrDestroyAction(byval action as XrAction) as XrResult
declare function xrSuggestInteractionProfileBindings(byval instance as XrInstance, byval suggestedBindings as const XrInteractionProfileSuggestedBinding ptr) as XrResult
declare function xrAttachSessionActionSets(byval session as XrSession, byval attachInfo as const XrSessionActionSetsAttachInfo ptr) as XrResult
declare function xrGetCurrentInteractionProfile(byval session as XrSession, byval topLevelUserPath as XrPath, byval interactionProfile as XrInteractionProfileState ptr) as XrResult
declare function xrGetActionStateBoolean(byval session as XrSession, byval getInfo as const XrActionStateGetInfo ptr, byval state as XrActionStateBoolean ptr) as XrResult
declare function xrGetActionStateFloat(byval session as XrSession, byval getInfo as const XrActionStateGetInfo ptr, byval state as XrActionStateFloat ptr) as XrResult
declare function xrGetActionStateVector2f(byval session as XrSession, byval getInfo as const XrActionStateGetInfo ptr, byval state as XrActionStateVector2f ptr) as XrResult
declare function xrGetActionStatePose(byval session as XrSession, byval getInfo as const XrActionStateGetInfo ptr, byval state as XrActionStatePose ptr) as XrResult
declare function xrSyncActions(byval session as XrSession, byval syncInfo as const XrActionsSyncInfo ptr) as XrResult
declare function xrEnumerateBoundSourcesForAction(byval session as XrSession, byval enumerateInfo as const XrBoundSourcesForActionEnumerateInfo ptr, byval sourceCapacityInput as ulong, byval sourceCountOutput as ulong ptr, byval sources as XrPath ptr) as XrResult
declare function xrGetInputSourceLocalizedName(byval session as XrSession, byval getInfo as const XrInputSourceLocalizedNameGetInfo ptr, byval bufferCapacityInput as ulong, byval bufferCountOutput as ulong ptr, byval buffer as zstring ptr) as XrResult
declare function xrApplyHapticFeedback(byval session as XrSession, byval hapticActionInfo as const XrHapticActionInfo ptr, byval hapticFeedback as const XrHapticBaseHeader ptr) as XrResult
declare function xrStopHapticFeedback(byval session as XrSession, byval hapticActionInfo as const XrHapticActionInfo ptr) as XrResult

const XR_KHR_composition_layer_cube = 1
const XR_KHR_composition_layer_cube_SPEC_VERSION = 8
#define XR_KHR_COMPOSITION_LAYER_CUBE_EXTENSION_NAME "XR_KHR_composition_layer_cube"

type XrCompositionLayerCubeKHR
	as XrStructureType _type
	next as const any ptr
	layerFlags as XrCompositionLayerFlags
	space as XrSpace
	eyeVisibility as XrEyeVisibility
	swapchain as XrSwapchain
	imageArrayIndex as ulong
	orientation as XrQuaternionf
end type

const XR_KHR_composition_layer_depth = 1
const XR_KHR_composition_layer_depth_SPEC_VERSION = 5
#define XR_KHR_COMPOSITION_LAYER_DEPTH_EXTENSION_NAME "XR_KHR_composition_layer_depth"

type XrCompositionLayerDepthInfoKHR
	as XrStructureType _type
	next as const any ptr
	subImage as XrSwapchainSubImage
	minDepth as single
	maxDepth as single
	nearZ as single
	farZ as single
end type

const XR_KHR_composition_layer_cylinder = 1
const XR_KHR_composition_layer_cylinder_SPEC_VERSION = 4
#define XR_KHR_COMPOSITION_LAYER_CYLINDER_EXTENSION_NAME "XR_KHR_composition_layer_cylinder"

type XrCompositionLayerCylinderKHR
	as XrStructureType _type
	next as const any ptr
	layerFlags as XrCompositionLayerFlags
	space as XrSpace
	eyeVisibility as XrEyeVisibility
	subImage as XrSwapchainSubImage
	pose as XrPosef
	radius as single
	centralAngle as single
	aspectRatio as single
end type

const XR_KHR_composition_layer_equirect = 1
const XR_KHR_composition_layer_equirect_SPEC_VERSION = 3
#define XR_KHR_COMPOSITION_LAYER_EQUIRECT_EXTENSION_NAME "XR_KHR_composition_layer_equirect"

type XrCompositionLayerEquirectKHR
	as XrStructureType _type
	next as const any ptr
	layerFlags as XrCompositionLayerFlags
	space as XrSpace
	eyeVisibility as XrEyeVisibility
	subImage as XrSwapchainSubImage
	pose as XrPosef
	radius as single
	scale as XrVector2f
	bias as XrVector2f
end type

const XR_KHR_visibility_mask = 1
const XR_KHR_visibility_mask_SPEC_VERSION = 2
#define XR_KHR_VISIBILITY_MASK_EXTENSION_NAME "XR_KHR_visibility_mask"

type XrVisibilityMaskTypeKHR as long
enum
	XR_VISIBILITY_MASK_TYPE_HIDDEN_TRIANGLE_MESH_KHR = 1
	XR_VISIBILITY_MASK_TYPE_VISIBLE_TRIANGLE_MESH_KHR = 2
	XR_VISIBILITY_MASK_TYPE_LINE_LOOP_KHR = 3
	XR_VISIBILITY_MASK_TYPE_MAX_ENUM_KHR = &h7FFFFFFF
end enum

type XrVisibilityMaskKHR
	as XrStructureType _type
	_next as any ptr
	vertexCapacityInput as ulong
	vertexCountOutput as ulong
	vertices as XrVector2f ptr
	indexCapacityInput as ulong
	indexCountOutput as ulong
	indices as ulong ptr
end type

type XrEventDataVisibilityMaskChangedKHR
	as XrStructureType _type
	next as const any ptr
	session as XrSession
	viewConfigurationType as XrViewConfigurationType
	viewIndex as ulong
end type

type PFN_xrGetVisibilityMaskKHR as function(byval session as XrSession, byval viewConfigurationType as XrViewConfigurationType, byval viewIndex as ulong, byval visibilityMaskType as XrVisibilityMaskTypeKHR, byval visibilityMask as XrVisibilityMaskKHR ptr) as XrResult
const XR_KHR_composition_layer_color_scale_bias = 1
const XR_KHR_composition_layer_color_scale_bias_SPEC_VERSION = 5
#define XR_KHR_COMPOSITION_LAYER_COLOR_SCALE_BIAS_EXTENSION_NAME "XR_KHR_composition_layer_color_scale_bias"

type XrCompositionLayerColorScaleBiasKHR
	as XrStructureType _type
	next as const any ptr
	colorScale as XrColor4f
	colorBias as XrColor4f
end type

const XR_KHR_loader_init = 1
const XR_KHR_loader_init_SPEC_VERSION = 1
#define XR_KHR_LOADER_INIT_EXTENSION_NAME "XR_KHR_loader_init"

type XrLoaderInitInfoBaseHeaderKHR
	as XrStructureType _type
	next as const any ptr
end type

type PFN_xrInitializeLoaderKHR as function(byval loaderInitInfo as const XrLoaderInitInfoBaseHeaderKHR ptr) as XrResult
const XR_KHR_composition_layer_equirect2 = 1
const XR_KHR_composition_layer_equirect2_SPEC_VERSION = 1
#define XR_KHR_COMPOSITION_LAYER_EQUIRECT2_EXTENSION_NAME "XR_KHR_composition_layer_equirect2"

type XrCompositionLayerEquirect2KHR
	as XrStructureType _type
	next as const any ptr
	layerFlags as XrCompositionLayerFlags
	space as XrSpace
	eyeVisibility as XrEyeVisibility
	subImage as XrSwapchainSubImage
	pose as XrPosef
	radius as single
	centralHorizontalAngle as single
	upperVerticalAngle as single
	lowerVerticalAngle as single
end type

const XR_KHR_binding_modification = 1
const XR_KHR_binding_modification_SPEC_VERSION = 1
#define XR_KHR_BINDING_MODIFICATION_EXTENSION_NAME "XR_KHR_binding_modification"

type XrBindingModificationBaseHeaderKHR
	as XrStructureType _type
	next as const any ptr
end type

type XrBindingModificationsKHR
	as XrStructureType _type
	next as const any ptr
	bindingModificationCount as ulong
	bindingModifications as const XrBindingModificationBaseHeaderKHR const ptr ptr
end type

const XR_KHR_swapchain_usage_input_attachment_bit = 1
const XR_KHR_swapchain_usage_input_attachment_bit_SPEC_VERSION = 3
#define XR_KHR_SWAPCHAIN_USAGE_INPUT_ATTACHMENT_BIT_EXTENSION_NAME "XR_KHR_swapchain_usage_input_attachment_bit"
const XR_EXT_performance_settings = 1
const XR_EXT_performance_settings_SPEC_VERSION = 3
#define XR_EXT_PERFORMANCE_SETTINGS_EXTENSION_NAME "XR_EXT_performance_settings"

type XrPerfSettingsDomainEXT as long
enum
	XR_PERF_SETTINGS_DOMAIN_CPU_EXT = 1
	XR_PERF_SETTINGS_DOMAIN_GPU_EXT = 2
	XR_PERF_SETTINGS_DOMAIN_MAX_ENUM_EXT = &h7FFFFFFF
end enum

type XrPerfSettingsSubDomainEXT as long
enum
	XR_PERF_SETTINGS_SUB_DOMAIN_COMPOSITING_EXT = 1
	XR_PERF_SETTINGS_SUB_DOMAIN_RENDERING_EXT = 2
	XR_PERF_SETTINGS_SUB_DOMAIN_THERMAL_EXT = 3
	XR_PERF_SETTINGS_SUB_DOMAIN_MAX_ENUM_EXT = &h7FFFFFFF
end enum

type XrPerfSettingsLevelEXT as long
enum
	XR_PERF_SETTINGS_LEVEL_POWER_SAVINGS_EXT = 0
	XR_PERF_SETTINGS_LEVEL_SUSTAINED_LOW_EXT = 25
	XR_PERF_SETTINGS_LEVEL_SUSTAINED_HIGH_EXT = 50
	XR_PERF_SETTINGS_LEVEL_BOOST_EXT = 75
	XR_PERF_SETTINGS_LEVEL_MAX_ENUM_EXT = &h7FFFFFFF
end enum

type XrPerfSettingsNotificationLevelEXT as long
enum
	XR_PERF_SETTINGS_NOTIF_LEVEL_NORMAL_EXT = 0
	XR_PERF_SETTINGS_NOTIF_LEVEL_WARNING_EXT = 25
	XR_PERF_SETTINGS_NOTIF_LEVEL_IMPAIRED_EXT = 75
	XR_PERF_SETTINGS_NOTIFICATION_LEVEL_MAX_ENUM_EXT = &h7FFFFFFF
end enum

type XrEventDataPerfSettingsEXT
	as XrStructureType _type
	next as const any ptr
	domain as XrPerfSettingsDomainEXT
	subDomain as XrPerfSettingsSubDomainEXT
	fromLevel as XrPerfSettingsNotificationLevelEXT
	toLevel as XrPerfSettingsNotificationLevelEXT
end type

type PFN_xrPerfSettingsSetPerformanceLevelEXT as function(byval session as XrSession, byval domain as XrPerfSettingsDomainEXT, byval level as XrPerfSettingsLevelEXT) as XrResult
const XR_EXT_thermal_query = 1
const XR_EXT_thermal_query_SPEC_VERSION = 2
#define XR_EXT_THERMAL_QUERY_EXTENSION_NAME "XR_EXT_thermal_query"
type PFN_xrThermalGetTemperatureTrendEXT as function(byval session as XrSession, byval domain as XrPerfSettingsDomainEXT, byval notificationLevel as XrPerfSettingsNotificationLevelEXT ptr, byval tempHeadroom as single ptr, byval tempSlope as single ptr) as XrResult
const XR_EXT_debug_utils = 1

#if defined(__FB_64BIT__) and (defined(__FB_WIN32__) or defined(__FB_UNIX__))
	type XrDebugUtilsMessengerEXT as XrDebugUtilsMessengerEXT_T ptr
#else
	type XrDebugUtilsMessengerEXT as ulongint
#endif

const XR_EXT_debug_utils_SPEC_VERSION = 4
#define XR_EXT_DEBUG_UTILS_EXTENSION_NAME "XR_EXT_debug_utils"
type XrDebugUtilsMessageSeverityFlagsEXT as XrFlags64
dim shared XR_DEBUG_UTILS_MESSAGE_SEVERITY_VERBOSE_BIT_EXT as const XrDebugUtilsMessageSeverityFlagsEXT = &h00000001
dim shared XR_DEBUG_UTILS_MESSAGE_SEVERITY_INFO_BIT_EXT as const XrDebugUtilsMessageSeverityFlagsEXT = &h00000010
dim shared XR_DEBUG_UTILS_MESSAGE_SEVERITY_WARNING_BIT_EXT as const XrDebugUtilsMessageSeverityFlagsEXT = &h00000100
dim shared XR_DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT as const XrDebugUtilsMessageSeverityFlagsEXT = &h00001000
type XrDebugUtilsMessageTypeFlagsEXT as XrFlags64
dim shared XR_DEBUG_UTILS_MESSAGE_TYPE_GENERAL_BIT_EXT as const XrDebugUtilsMessageTypeFlagsEXT = &h00000001
dim shared XR_DEBUG_UTILS_MESSAGE_TYPE_VALIDATION_BIT_EXT as const XrDebugUtilsMessageTypeFlagsEXT = &h00000002
dim shared XR_DEBUG_UTILS_MESSAGE_TYPE_PERFORMANCE_BIT_EXT as const XrDebugUtilsMessageTypeFlagsEXT = &h00000004
dim shared XR_DEBUG_UTILS_MESSAGE_TYPE_CONFORMANCE_BIT_EXT as const XrDebugUtilsMessageTypeFlagsEXT = &h00000008

type XrDebugUtilsObjectNameInfoEXT
	as XrStructureType _type
	next as const any ptr
	objectType as XrObjectType
	objectHandle as ulongint
	objectName as const zstring ptr
end type

type XrDebugUtilsLabelEXT
	as XrStructureType _type
	next as const any ptr
	labelName as const zstring ptr
end type

type XrDebugUtilsMessengerCallbackDataEXT
	as XrStructureType _type
	next as const any ptr
	messageId as const zstring ptr
	functionName as const zstring ptr
	message as const zstring ptr
	objectCount as ulong
	objects as XrDebugUtilsObjectNameInfoEXT ptr
	sessionLabelCount as ulong
	sessionLabels as XrDebugUtilsLabelEXT ptr
end type

type PFN_xrDebugUtilsMessengerCallbackEXT as function(byval messageSeverity as XrDebugUtilsMessageSeverityFlagsEXT, byval messageTypes as XrDebugUtilsMessageTypeFlagsEXT, byval callbackData as const XrDebugUtilsMessengerCallbackDataEXT ptr, byval userData as any ptr) as XrBool32

type XrDebugUtilsMessengerCreateInfoEXT
	as XrStructureType _type
	next as const any ptr
	messageSeverities as XrDebugUtilsMessageSeverityFlagsEXT
	messageTypes as XrDebugUtilsMessageTypeFlagsEXT
	userCallback as PFN_xrDebugUtilsMessengerCallbackEXT
	userData as any ptr
end type

type PFN_xrSetDebugUtilsObjectNameEXT as function(byval instance as XrInstance, byval nameInfo as const XrDebugUtilsObjectNameInfoEXT ptr) as XrResult
type PFN_xrCreateDebugUtilsMessengerEXT as function(byval instance as XrInstance, byval createInfo as const XrDebugUtilsMessengerCreateInfoEXT ptr, byval messenger as XrDebugUtilsMessengerEXT ptr) as XrResult
type PFN_xrDestroyDebugUtilsMessengerEXT as function(byval messenger as XrDebugUtilsMessengerEXT) as XrResult
type PFN_xrSubmitDebugUtilsMessageEXT as function(byval instance as XrInstance, byval messageSeverity as XrDebugUtilsMessageSeverityFlagsEXT, byval messageTypes as XrDebugUtilsMessageTypeFlagsEXT, byval callbackData as const XrDebugUtilsMessengerCallbackDataEXT ptr) as XrResult
type PFN_xrSessionBeginDebugUtilsLabelRegionEXT as function(byval session as XrSession, byval labelInfo as const XrDebugUtilsLabelEXT ptr) as XrResult
type PFN_xrSessionEndDebugUtilsLabelRegionEXT as function(byval session as XrSession) as XrResult
type PFN_xrSessionInsertDebugUtilsLabelEXT as function(byval session as XrSession, byval labelInfo as const XrDebugUtilsLabelEXT ptr) as XrResult

const XR_EXT_eye_gaze_interaction = 1
const XR_EXT_eye_gaze_interaction_SPEC_VERSION = 1
#define XR_EXT_EYE_GAZE_INTERACTION_EXTENSION_NAME "XR_EXT_eye_gaze_interaction"

type XrSystemEyeGazeInteractionPropertiesEXT
	as XrStructureType _type
	_next as any ptr
	supportsEyeGazeInteraction as XrBool32
end type

type XrEyeGazeSampleTimeEXT
	as XrStructureType _type
	_next as any ptr
	time as XrTime
end type

const XR_EXTX_overlay = 1
const XR_EXTX_overlay_SPEC_VERSION = 5
#define XR_EXTX_OVERLAY_EXTENSION_NAME "XR_EXTX_overlay"
type XrOverlaySessionCreateFlagsEXTX as XrFlags64
type XrOverlayMainSessionFlagsEXTX as XrFlags64
dim shared XR_OVERLAY_MAIN_SESSION_ENABLED_COMPOSITION_LAYER_INFO_DEPTH_BIT_EXTX as const XrOverlayMainSessionFlagsEXTX = &h00000001

type XrSessionCreateInfoOverlayEXTX
	as XrStructureType _type
	next as const any ptr
	createFlags as XrOverlaySessionCreateFlagsEXTX
	sessionLayersPlacement as ulong
end type

type XrEventDataMainSessionVisibilityChangedEXTX
	as XrStructureType _type
	next as const any ptr
	visible as XrBool32
	flags as XrOverlayMainSessionFlagsEXTX
end type

const XR_VARJO_quad_views = 1
const XR_VARJO_quad_views_SPEC_VERSION = 1
#define XR_VARJO_QUAD_VIEWS_EXTENSION_NAME "XR_VARJO_quad_views"
const XR_MSFT_unbounded_reference_space = 1
const XR_MSFT_unbounded_reference_space_SPEC_VERSION = 1
#define XR_MSFT_UNBOUNDED_REFERENCE_SPACE_EXTENSION_NAME "XR_MSFT_unbounded_reference_space"
const XR_MSFT_spatial_anchor = 1

#if defined(__FB_64BIT__) and (defined(__FB_WIN32__) or defined(__FB_UNIX__))
	type XrSpatialAnchorMSFT as XrSpatialAnchorMSFT_T ptr
#else
	type XrSpatialAnchorMSFT as ulongint
#endif

const XR_MSFT_spatial_anchor_SPEC_VERSION = 2
#define XR_MSFT_SPATIAL_ANCHOR_EXTENSION_NAME "XR_MSFT_spatial_anchor"

type XrSpatialAnchorCreateInfoMSFT
	as XrStructureType _type
	next as const any ptr
	space as XrSpace
	pose as XrPosef
	time as XrTime
end type

type XrSpatialAnchorSpaceCreateInfoMSFT
	as XrStructureType _type
	next as const any ptr
	anchor as XrSpatialAnchorMSFT
	poseInAnchorSpace as XrPosef
end type

type PFN_xrCreateSpatialAnchorMSFT as function(byval session as XrSession, byval createInfo as const XrSpatialAnchorCreateInfoMSFT ptr, byval anchor as XrSpatialAnchorMSFT ptr) as XrResult
type PFN_xrCreateSpatialAnchorSpaceMSFT as function(byval session as XrSession, byval createInfo as const XrSpatialAnchorSpaceCreateInfoMSFT ptr, byval space as XrSpace ptr) as XrResult
type PFN_xrDestroySpatialAnchorMSFT as function(byval anchor as XrSpatialAnchorMSFT) as XrResult

const XR_FB_composition_layer_image_layout = 1
const XR_FB_composition_layer_image_layout_SPEC_VERSION = 1
#define XR_FB_COMPOSITION_LAYER_IMAGE_LAYOUT_EXTENSION_NAME "XR_FB_composition_layer_image_layout"
type XrCompositionLayerImageLayoutFlagsFB as XrFlags64
dim shared XR_COMPOSITION_LAYER_IMAGE_LAYOUT_VERTICAL_FLIP_BIT_FB as const XrCompositionLayerImageLayoutFlagsFB = &h00000001

type XrCompositionLayerImageLayoutFB
	as XrStructureType _type
	_next as any ptr
	flags as XrCompositionLayerImageLayoutFlagsFB
end type

const XR_FB_composition_layer_alpha_blend = 1
const XR_FB_composition_layer_alpha_blend_SPEC_VERSION = 2
#define XR_FB_COMPOSITION_LAYER_ALPHA_BLEND_EXTENSION_NAME "XR_FB_composition_layer_alpha_blend"

type XrBlendFactorFB as long
enum
	XR_BLEND_FACTOR_ZERO_FB = 0
	XR_BLEND_FACTOR_ONE_FB = 1
	XR_BLEND_FACTOR_SRC_ALPHA_FB = 2
	XR_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA_FB = 3
	XR_BLEND_FACTOR_DST_ALPHA_FB = 4
	XR_BLEND_FACTOR_ONE_MINUS_DST_ALPHA_FB = 5
	XR_BLEND_FACTOR_MAX_ENUM_FB = &h7FFFFFFF
end enum

type XrCompositionLayerAlphaBlendFB
	as XrStructureType _type
	_next as any ptr
	srcFactorColor as XrBlendFactorFB
	dstFactorColor as XrBlendFactorFB
	srcFactorAlpha as XrBlendFactorFB
	dstFactorAlpha as XrBlendFactorFB
end type

const XR_MND_headless = 1
const XR_MND_headless_SPEC_VERSION = 2
#define XR_MND_HEADLESS_EXTENSION_NAME "XR_MND_headless"
const XR_OCULUS_android_session_state_enable = 1
const XR_OCULUS_android_session_state_enable_SPEC_VERSION = 1
#define XR_OCULUS_ANDROID_SESSION_STATE_ENABLE_EXTENSION_NAME "XR_OCULUS_android_session_state_enable"
const XR_EXT_view_configuration_depth_range = 1
const XR_EXT_view_configuration_depth_range_SPEC_VERSION = 1
#define XR_EXT_VIEW_CONFIGURATION_DEPTH_RANGE_EXTENSION_NAME "XR_EXT_view_configuration_depth_range"

type XrViewConfigurationDepthRangeEXT
	as XrStructureType _type
	_next as any ptr
	recommendedNearZ as single
	minNearZ as single
	recommendedFarZ as single
	maxFarZ as single
end type

const XR_EXT_conformance_automation = 1
const XR_EXT_conformance_automation_SPEC_VERSION = 3
#define XR_EXT_CONFORMANCE_AUTOMATION_EXTENSION_NAME "XR_EXT_conformance_automation"

type PFN_xrSetInputDeviceActiveEXT as function(byval session as XrSession, byval interactionProfile as XrPath, byval topLevelPath as XrPath, byval isActive as XrBool32) as XrResult
type PFN_xrSetInputDeviceStateBoolEXT as function(byval session as XrSession, byval topLevelPath as XrPath, byval inputSourcePath as XrPath, byval state as XrBool32) as XrResult
type PFN_xrSetInputDeviceStateFloatEXT as function(byval session as XrSession, byval topLevelPath as XrPath, byval inputSourcePath as XrPath, byval state as single) as XrResult
type PFN_xrSetInputDeviceStateVector2fEXT as function(byval session as XrSession, byval topLevelPath as XrPath, byval inputSourcePath as XrPath, byval state as XrVector2f) as XrResult
type PFN_xrSetInputDeviceLocationEXT as function(byval session as XrSession, byval topLevelPath as XrPath, byval inputSourcePath as XrPath, byval space as XrSpace, byval pose as XrPosef) as XrResult

const XR_MSFT_spatial_graph_bridge = 1
const XR_MSFT_spatial_graph_bridge_SPEC_VERSION = 1
#define XR_MSFT_SPATIAL_GRAPH_BRIDGE_EXTENSION_NAME "XR_MSFT_spatial_graph_bridge"

type XrSpatialGraphNodeTypeMSFT as long
enum
	XR_SPATIAL_GRAPH_NODE_TYPE_STATIC_MSFT = 1
	XR_SPATIAL_GRAPH_NODE_TYPE_DYNAMIC_MSFT = 2
	XR_SPATIAL_GRAPH_NODE_TYPE_MAX_ENUM_MSFT = &h7FFFFFFF
end enum

type XrSpatialGraphNodeSpaceCreateInfoMSFT
	as XrStructureType _type
	next as const any ptr
	nodeType as XrSpatialGraphNodeTypeMSFT
	nodeId(0 to 15) as ubyte
	pose as XrPosef
end type

type PFN_xrCreateSpatialGraphNodeSpaceMSFT as function(byval session as XrSession, byval createInfo as const XrSpatialGraphNodeSpaceCreateInfoMSFT ptr, byval space as XrSpace ptr) as XrResult
const XR_MSFT_hand_interaction = 1
const XR_MSFT_hand_interaction_SPEC_VERSION = 1
#define XR_MSFT_HAND_INTERACTION_EXTENSION_NAME "XR_MSFT_hand_interaction"
const XR_EXT_hand_tracking = 1
const XR_HAND_JOINT_COUNT_EXT = 26

#if defined(__FB_64BIT__) and (defined(__FB_WIN32__) or defined(__FB_UNIX__))
	type XrHandTrackerEXT as XrHandTrackerEXT_T ptr
#else
	type XrHandTrackerEXT as ulongint
#endif

const XR_EXT_hand_tracking_SPEC_VERSION = 4
#define XR_EXT_HAND_TRACKING_EXTENSION_NAME "XR_EXT_hand_tracking"

type XrHandEXT as long
enum
	XR_HAND_LEFT_EXT = 1
	XR_HAND_RIGHT_EXT = 2
	XR_HAND_MAX_ENUM_EXT = &h7FFFFFFF
end enum

type XrHandJointEXT as long
enum
	XR_HAND_JOINT_PALM_EXT = 0
	XR_HAND_JOINT_WRIST_EXT = 1
	XR_HAND_JOINT_THUMB_METACARPAL_EXT = 2
	XR_HAND_JOINT_THUMB_PROXIMAL_EXT = 3
	XR_HAND_JOINT_THUMB_DISTAL_EXT = 4
	XR_HAND_JOINT_THUMB_TIP_EXT = 5
	XR_HAND_JOINT_INDEX_METACARPAL_EXT = 6
	XR_HAND_JOINT_INDEX_PROXIMAL_EXT = 7
	XR_HAND_JOINT_INDEX_INTERMEDIATE_EXT = 8
	XR_HAND_JOINT_INDEX_DISTAL_EXT = 9
	XR_HAND_JOINT_INDEX_TIP_EXT = 10
	XR_HAND_JOINT_MIDDLE_METACARPAL_EXT = 11
	XR_HAND_JOINT_MIDDLE_PROXIMAL_EXT = 12
	XR_HAND_JOINT_MIDDLE_INTERMEDIATE_EXT = 13
	XR_HAND_JOINT_MIDDLE_DISTAL_EXT = 14
	XR_HAND_JOINT_MIDDLE_TIP_EXT = 15
	XR_HAND_JOINT_RING_METACARPAL_EXT = 16
	XR_HAND_JOINT_RING_PROXIMAL_EXT = 17
	XR_HAND_JOINT_RING_INTERMEDIATE_EXT = 18
	XR_HAND_JOINT_RING_DISTAL_EXT = 19
	XR_HAND_JOINT_RING_TIP_EXT = 20
	XR_HAND_JOINT_LITTLE_METACARPAL_EXT = 21
	XR_HAND_JOINT_LITTLE_PROXIMAL_EXT = 22
	XR_HAND_JOINT_LITTLE_INTERMEDIATE_EXT = 23
	XR_HAND_JOINT_LITTLE_DISTAL_EXT = 24
	XR_HAND_JOINT_LITTLE_TIP_EXT = 25
	XR_HAND_JOINT_MAX_ENUM_EXT = &h7FFFFFFF
end enum

type XrHandJointSetEXT as long
enum
	XR_HAND_JOINT_SET_DEFAULT_EXT = 0
	XR_HAND_JOINT_SET_MAX_ENUM_EXT = &h7FFFFFFF
end enum

type XrSystemHandTrackingPropertiesEXT
	as XrStructureType _type
	_next as any ptr
	supportsHandTracking as XrBool32
end type

type XrHandTrackerCreateInfoEXT
	as XrStructureType _type
	next as const any ptr
	hand as XrHandEXT
	handJointSet as XrHandJointSetEXT
end type

type XrHandJointsLocateInfoEXT
	as XrStructureType _type
	next as const any ptr
	baseSpace as XrSpace
	time as XrTime
end type

type XrHandJointLocationEXT
	locationFlags as XrSpaceLocationFlags
	pose as XrPosef
	radius as single
end type

type XrHandJointVelocityEXT
	velocityFlags as XrSpaceVelocityFlags
	linearVelocity as XrVector3f
	angularVelocity as XrVector3f
end type

type XrHandJointLocationsEXT
	as XrStructureType _type
	_next as any ptr
	isActive as XrBool32
	jointCount as ulong
	jointLocations as XrHandJointLocationEXT ptr
end type

type XrHandJointVelocitiesEXT
	as XrStructureType _type
	_next as any ptr
	jointCount as ulong
	jointVelocities as XrHandJointVelocityEXT ptr
end type

type PFN_xrCreateHandTrackerEXT as function(byval session as XrSession, byval createInfo as const XrHandTrackerCreateInfoEXT ptr, byval handTracker as XrHandTrackerEXT ptr) as XrResult
type PFN_xrDestroyHandTrackerEXT as function(byval handTracker as XrHandTrackerEXT) as XrResult
type PFN_xrLocateHandJointsEXT as function(byval handTracker as XrHandTrackerEXT, byval locateInfo as const XrHandJointsLocateInfoEXT ptr, byval locations as XrHandJointLocationsEXT ptr) as XrResult

const XR_MSFT_hand_tracking_mesh = 1
const XR_MSFT_hand_tracking_mesh_SPEC_VERSION = 3
#define XR_MSFT_HAND_TRACKING_MESH_EXTENSION_NAME "XR_MSFT_hand_tracking_mesh"

type XrHandPoseTypeMSFT as long
enum
	XR_HAND_POSE_TYPE_TRACKED_MSFT = 0
	XR_HAND_POSE_TYPE_REFERENCE_OPEN_PALM_MSFT = 1
	XR_HAND_POSE_TYPE_MAX_ENUM_MSFT = &h7FFFFFFF
end enum

type XrSystemHandTrackingMeshPropertiesMSFT
	as XrStructureType _type
	_next as any ptr
	supportsHandTrackingMesh as XrBool32
	maxHandMeshIndexCount as ulong
	maxHandMeshVertexCount as ulong
end type

type XrHandMeshSpaceCreateInfoMSFT
	as XrStructureType _type
	next as const any ptr
	handPoseType as XrHandPoseTypeMSFT
	poseInHandMeshSpace as XrPosef
end type

type XrHandMeshUpdateInfoMSFT
	as XrStructureType _type
	next as const any ptr
	time as XrTime
	handPoseType as XrHandPoseTypeMSFT
end type

type XrHandMeshIndexBufferMSFT
	indexBufferKey as ulong
	indexCapacityInput as ulong
	indexCountOutput as ulong
	indices as ulong ptr
end type

type XrHandMeshVertexMSFT
	position as XrVector3f
	normal as XrVector3f
end type

type XrHandMeshVertexBufferMSFT
	vertexUpdateTime as XrTime
	vertexCapacityInput as ulong
	vertexCountOutput as ulong
	vertices as XrHandMeshVertexMSFT ptr
end type

type XrHandMeshMSFT
	as XrStructureType _type
	_next as any ptr
	isActive as XrBool32
	indexBufferChanged as XrBool32
	vertexBufferChanged as XrBool32
	indexBuffer as XrHandMeshIndexBufferMSFT
	vertexBuffer as XrHandMeshVertexBufferMSFT
end type

type XrHandPoseTypeInfoMSFT
	as XrStructureType _type
	next as const any ptr
	handPoseType as XrHandPoseTypeMSFT
end type

type PFN_xrCreateHandMeshSpaceMSFT as function(byval handTracker as XrHandTrackerEXT, byval createInfo as const XrHandMeshSpaceCreateInfoMSFT ptr, byval space as XrSpace ptr) as XrResult
type PFN_xrUpdateHandMeshMSFT as function(byval handTracker as XrHandTrackerEXT, byval updateInfo as const XrHandMeshUpdateInfoMSFT ptr, byval handMesh as XrHandMeshMSFT ptr) as XrResult
const XR_MSFT_secondary_view_configuration = 1
const XR_MSFT_secondary_view_configuration_SPEC_VERSION = 1
#define XR_MSFT_SECONDARY_VIEW_CONFIGURATION_EXTENSION_NAME "XR_MSFT_secondary_view_configuration"

type XrSecondaryViewConfigurationSessionBeginInfoMSFT
	as XrStructureType _type
	next as const any ptr
	viewConfigurationCount as ulong
	enabledViewConfigurationTypes as const XrViewConfigurationType ptr
end type

type XrSecondaryViewConfigurationStateMSFT
	as XrStructureType _type
	_next as any ptr
	viewConfigurationType as XrViewConfigurationType
	active as XrBool32
end type

type XrSecondaryViewConfigurationFrameStateMSFT
	as XrStructureType _type
	_next as any ptr
	viewConfigurationCount as ulong
	viewConfigurationStates as XrSecondaryViewConfigurationStateMSFT ptr
end type

type XrSecondaryViewConfigurationLayerInfoMSFT
	as XrStructureType _type
	next as const any ptr
	viewConfigurationType as XrViewConfigurationType
	environmentBlendMode as XrEnvironmentBlendMode
	layerCount as ulong
	layers as const XrCompositionLayerBaseHeader const ptr ptr
end type

type XrSecondaryViewConfigurationFrameEndInfoMSFT
	as XrStructureType _type
	next as const any ptr
	viewConfigurationCount as ulong
	viewConfigurationLayersInfo as const XrSecondaryViewConfigurationLayerInfoMSFT ptr
end type

type XrSecondaryViewConfigurationSwapchainCreateInfoMSFT
	as XrStructureType _type
	next as const any ptr
	viewConfigurationType as XrViewConfigurationType
end type

const XR_MSFT_first_person_observer = 1
const XR_MSFT_first_person_observer_SPEC_VERSION = 1
#define XR_MSFT_FIRST_PERSON_OBSERVER_EXTENSION_NAME "XR_MSFT_first_person_observer"
const XR_MSFT_controller_model = 1
const XR_NULL_CONTROLLER_MODEL_KEY_MSFT = 0
type XrControllerModelKeyMSFT as ulongint
const XR_MSFT_controller_model_SPEC_VERSION = 2
#define XR_MSFT_CONTROLLER_MODEL_EXTENSION_NAME "XR_MSFT_controller_model"
const XR_MAX_CONTROLLER_MODEL_NODE_NAME_SIZE_MSFT = 64

type XrControllerModelKeyStateMSFT
	as XrStructureType _type
	_next as any ptr
	modelKey as XrControllerModelKeyMSFT
end type

type XrControllerModelNodePropertiesMSFT
	as XrStructureType _type
	_next as any ptr
	parentNodeName as zstring * 64
	nodeName as zstring * 64
end type

type XrControllerModelPropertiesMSFT
	as XrStructureType _type
	_next as any ptr
	nodeCapacityInput as ulong
	nodeCountOutput as ulong
	nodeProperties as XrControllerModelNodePropertiesMSFT ptr
end type

type XrControllerModelNodeStateMSFT
	as XrStructureType _type
	_next as any ptr
	nodePose as XrPosef
end type

type XrControllerModelStateMSFT
	as XrStructureType _type
	_next as any ptr
	nodeCapacityInput as ulong
	nodeCountOutput as ulong
	nodeStates as XrControllerModelNodeStateMSFT ptr
end type

type PFN_xrGetControllerModelKeyMSFT as function(byval session as XrSession, byval topLevelUserPath as XrPath, byval controllerModelKeyState as XrControllerModelKeyStateMSFT ptr) as XrResult
type PFN_xrLoadControllerModelMSFT as function(byval session as XrSession, byval modelKey as XrControllerModelKeyMSFT, byval bufferCapacityInput as ulong, byval bufferCountOutput as ulong ptr, byval buffer as ubyte ptr) as XrResult
type PFN_xrGetControllerModelPropertiesMSFT as function(byval session as XrSession, byval modelKey as XrControllerModelKeyMSFT, byval properties as XrControllerModelPropertiesMSFT ptr) as XrResult
type PFN_xrGetControllerModelStateMSFT as function(byval session as XrSession, byval modelKey as XrControllerModelKeyMSFT, byval state as XrControllerModelStateMSFT ptr) as XrResult

const XR_EXT_win32_appcontainer_compatible = 1
const XR_EXT_win32_appcontainer_compatible_SPEC_VERSION = 1
#define XR_EXT_WIN32_APPCONTAINER_COMPATIBLE_EXTENSION_NAME "XR_EXT_win32_appcontainer_compatible"
const XR_EPIC_view_configuration_fov = 1
const XR_EPIC_view_configuration_fov_SPEC_VERSION = 2
#define XR_EPIC_VIEW_CONFIGURATION_FOV_EXTENSION_NAME "XR_EPIC_view_configuration_fov"

type XrViewConfigurationViewFovEPIC
	as XrStructureType _type
	next as const any ptr
	recommendedFov as XrFovf
	maxMutableFov as XrFovf
end type

const XR_MSFT_composition_layer_reprojection = 1
const XR_MSFT_composition_layer_reprojection_SPEC_VERSION = 1
#define XR_MSFT_COMPOSITION_LAYER_REPROJECTION_EXTENSION_NAME "XR_MSFT_composition_layer_reprojection"

type XrReprojectionModeMSFT as long
enum
	XR_REPROJECTION_MODE_DEPTH_MSFT = 1
	XR_REPROJECTION_MODE_PLANAR_FROM_DEPTH_MSFT = 2
	XR_REPROJECTION_MODE_PLANAR_MANUAL_MSFT = 3
	XR_REPROJECTION_MODE_ORIENTATION_ONLY_MSFT = 4
	XR_REPROJECTION_MODE_MAX_ENUM_MSFT = &h7FFFFFFF
end enum

type XrCompositionLayerReprojectionInfoMSFT
	as XrStructureType _type
	next as const any ptr
	reprojectionMode as XrReprojectionModeMSFT
end type

type XrCompositionLayerReprojectionPlaneOverrideMSFT
	as XrStructureType _type
	next as const any ptr
	position as XrVector3f
	normal as XrVector3f
	velocity as XrVector3f
end type

type PFN_xrEnumerateReprojectionModesMSFT as function(byval instance as XrInstance, byval systemId as XrSystemId, byval viewConfigurationType as XrViewConfigurationType, byval modeCapacityInput as ulong, byval modeCountOutput as ulong ptr, byval modes as XrReprojectionModeMSFT ptr) as XrResult
const XR_HUAWEI_controller_interaction = 1
const XR_HUAWEI_controller_interaction_SPEC_VERSION = 1
#define XR_HUAWEI_CONTROLLER_INTERACTION_EXTENSION_NAME "XR_HUAWEI_controller_interaction"
const XR_FB_swapchain_update_state = 1
const XR_FB_swapchain_update_state_SPEC_VERSION = 3
#define XR_FB_SWAPCHAIN_UPDATE_STATE_EXTENSION_NAME "XR_FB_swapchain_update_state"

type XrSwapchainStateBaseHeaderFB
	as XrStructureType _type
	_next as any ptr
end type

type PFN_xrUpdateSwapchainFB as function(byval swapchain as XrSwapchain, byval state as const XrSwapchainStateBaseHeaderFB ptr) as XrResult
type PFN_xrGetSwapchainStateFB as function(byval swapchain as XrSwapchain, byval state as XrSwapchainStateBaseHeaderFB ptr) as XrResult
const XR_FB_composition_layer_secure_content = 1
const XR_FB_composition_layer_secure_content_SPEC_VERSION = 1
#define XR_FB_COMPOSITION_LAYER_SECURE_CONTENT_EXTENSION_NAME "XR_FB_composition_layer_secure_content"
type XrCompositionLayerSecureContentFlagsFB as XrFlags64
dim shared XR_COMPOSITION_LAYER_SECURE_CONTENT_EXCLUDE_LAYER_BIT_FB as const XrCompositionLayerSecureContentFlagsFB = &h00000001
dim shared XR_COMPOSITION_LAYER_SECURE_CONTENT_REPLACE_LAYER_BIT_FB as const XrCompositionLayerSecureContentFlagsFB = &h00000002

type XrCompositionLayerSecureContentFB
	as XrStructureType _type
	next as const any ptr
	flags as XrCompositionLayerSecureContentFlagsFB
end type

const XR_VALVE_analog_threshold = 1
const XR_VALVE_analog_threshold_SPEC_VERSION = 2
#define XR_VALVE_ANALOG_THRESHOLD_EXTENSION_NAME "XR_VALVE_analog_threshold"

type XrInteractionProfileAnalogThresholdVALVE
	as XrStructureType _type
	next as const any ptr
	action as XrAction
	binding as XrPath
	onThreshold as single
	offThreshold as single
	onHaptic as const XrHapticBaseHeader ptr
	offHaptic as const XrHapticBaseHeader ptr
end type

const XR_EXT_hand_joints_motion_range = 1
const XR_EXT_hand_joints_motion_range_SPEC_VERSION = 1
#define XR_EXT_HAND_JOINTS_MOTION_RANGE_EXTENSION_NAME "XR_EXT_hand_joints_motion_range"

type XrHandJointsMotionRangeEXT as long
enum
	XR_HAND_JOINTS_MOTION_RANGE_UNOBSTRUCTED_EXT = 1
	XR_HAND_JOINTS_MOTION_RANGE_CONFORMING_TO_CONTROLLER_EXT = 2
	XR_HAND_JOINTS_MOTION_RANGE_MAX_ENUM_EXT = &h7FFFFFFF
end enum

type XrHandJointsMotionRangeInfoEXT
	as XrStructureType _type
	next as const any ptr
	handJointsMotionRange as XrHandJointsMotionRangeEXT
end type

const XR_EXT_samsung_odyssey_controller = 1
const XR_EXT_samsung_odyssey_controller_SPEC_VERSION = 1
#define XR_EXT_SAMSUNG_ODYSSEY_CONTROLLER_EXTENSION_NAME "XR_EXT_samsung_odyssey_controller"
const XR_EXT_hp_mixed_reality_controller = 1
const XR_EXT_hp_mixed_reality_controller_SPEC_VERSION = 1
#define XR_EXT_HP_MIXED_REALITY_CONTROLLER_EXTENSION_NAME "XR_EXT_hp_mixed_reality_controller"
const XR_MND_swapchain_usage_input_attachment_bit = 1
const XR_MND_swapchain_usage_input_attachment_bit_SPEC_VERSION = 2
#define XR_MND_SWAPCHAIN_USAGE_INPUT_ATTACHMENT_BIT_EXTENSION_NAME "XR_MND_swapchain_usage_input_attachment_bit"
const XR_MSFT_scene_understanding = 1

#if defined(__FB_64BIT__) and (defined(__FB_WIN32__) or defined(__FB_UNIX__))
	type XrSceneObserverMSFT as XrSceneObserverMSFT_T ptr
	type XrSceneMSFT as XrSceneMSFT_T ptr
#else
	type XrSceneObserverMSFT as ulongint
	type XrSceneMSFT as ulongint
#endif

const XR_MSFT_scene_understanding_SPEC_VERSION = 1
#define XR_MSFT_SCENE_UNDERSTANDING_EXTENSION_NAME "XR_MSFT_scene_understanding"

type XrSceneComputeFeatureMSFT as long
enum
	XR_SCENE_COMPUTE_FEATURE_PLANE_MSFT = 1
	XR_SCENE_COMPUTE_FEATURE_PLANE_MESH_MSFT = 2
	XR_SCENE_COMPUTE_FEATURE_VISUAL_MESH_MSFT = 3
	XR_SCENE_COMPUTE_FEATURE_COLLIDER_MESH_MSFT = 4
	XR_SCENE_COMPUTE_FEATURE_SERIALIZE_SCENE_MSFT = 1000098000
	XR_SCENE_COMPUTE_FEATURE_MAX_ENUM_MSFT = &h7FFFFFFF
end enum

type XrSceneComputeConsistencyMSFT as long
enum
	XR_SCENE_COMPUTE_CONSISTENCY_SNAPSHOT_COMPLETE_MSFT = 1
	XR_SCENE_COMPUTE_CONSISTENCY_SNAPSHOT_INCOMPLETE_FAST_MSFT = 2
	XR_SCENE_COMPUTE_CONSISTENCY_OCCLUSION_OPTIMIZED_MSFT = 3
	XR_SCENE_COMPUTE_CONSISTENCY_MAX_ENUM_MSFT = &h7FFFFFFF
end enum

type XrMeshComputeLodMSFT as long
enum
	XR_MESH_COMPUTE_LOD_COARSE_MSFT = 1
	XR_MESH_COMPUTE_LOD_MEDIUM_MSFT = 2
	XR_MESH_COMPUTE_LOD_FINE_MSFT = 3
	XR_MESH_COMPUTE_LOD_UNLIMITED_MSFT = 4
	XR_MESH_COMPUTE_LOD_MAX_ENUM_MSFT = &h7FFFFFFF
end enum

type XrSceneComponentTypeMSFT as long
enum
	XR_SCENE_COMPONENT_TYPE_INVALID_MSFT = -1
	XR_SCENE_COMPONENT_TYPE_OBJECT_MSFT = 1
	XR_SCENE_COMPONENT_TYPE_PLANE_MSFT = 2
	XR_SCENE_COMPONENT_TYPE_VISUAL_MESH_MSFT = 3
	XR_SCENE_COMPONENT_TYPE_COLLIDER_MESH_MSFT = 4
	XR_SCENE_COMPONENT_TYPE_SERIALIZED_SCENE_FRAGMENT_MSFT = 1000098000
	XR_SCENE_COMPONENT_TYPE_MAX_ENUM_MSFT = &h7FFFFFFF
end enum

type XrSceneObjectTypeMSFT as long
enum
	XR_SCENE_OBJECT_TYPE_UNCATEGORIZED_MSFT = -1
	XR_SCENE_OBJECT_TYPE_BACKGROUND_MSFT = 1
	XR_SCENE_OBJECT_TYPE_WALL_MSFT = 2
	XR_SCENE_OBJECT_TYPE_FLOOR_MSFT = 3
	XR_SCENE_OBJECT_TYPE_CEILING_MSFT = 4
	XR_SCENE_OBJECT_TYPE_PLATFORM_MSFT = 5
	XR_SCENE_OBJECT_TYPE_INFERRED_MSFT = 6
	XR_SCENE_OBJECT_TYPE_MAX_ENUM_MSFT = &h7FFFFFFF
end enum

type XrScenePlaneAlignmentTypeMSFT as long
enum
	XR_SCENE_PLANE_ALIGNMENT_TYPE_NON_ORTHOGONAL_MSFT = 0
	XR_SCENE_PLANE_ALIGNMENT_TYPE_HORIZONTAL_MSFT = 1
	XR_SCENE_PLANE_ALIGNMENT_TYPE_VERTICAL_MSFT = 2
	XR_SCENE_PLANE_ALIGNMENT_TYPE_MAX_ENUM_MSFT = &h7FFFFFFF
end enum

type XrSceneComputeStateMSFT as long
enum
	XR_SCENE_COMPUTE_STATE_NONE_MSFT = 0
	XR_SCENE_COMPUTE_STATE_UPDATING_MSFT = 1
	XR_SCENE_COMPUTE_STATE_COMPLETED_MSFT = 2
	XR_SCENE_COMPUTE_STATE_COMPLETED_WITH_ERROR_MSFT = 3
	XR_SCENE_COMPUTE_STATE_MAX_ENUM_MSFT = &h7FFFFFFF
end enum

type XrUuidMSFT
	bytes(0 to 15) as ubyte
end type

type XrSceneObserverCreateInfoMSFT
	as XrStructureType _type
	next as const any ptr
end type

type XrSceneCreateInfoMSFT
	as XrStructureType _type
	next as const any ptr
end type

type XrSceneSphereBoundMSFT
	center as XrVector3f
	radius as single
end type

type XrSceneOrientedBoxBoundMSFT
	pose as XrPosef
	extents as XrVector3f
end type

type XrSceneFrustumBoundMSFT
	pose as XrPosef
	fov as XrFovf
	farDistance as single
end type

type XrSceneBoundsMSFT
	space as XrSpace
	time as XrTime
	sphereCount as ulong
	spheres as const XrSceneSphereBoundMSFT ptr
	boxCount as ulong
	boxes as const XrSceneOrientedBoxBoundMSFT ptr
	frustumCount as ulong
	frustums as const XrSceneFrustumBoundMSFT ptr
end type

type XrNewSceneComputeInfoMSFT
	as XrStructureType _type
	next as const any ptr
	requestedFeatureCount as ulong
	requestedFeatures as const XrSceneComputeFeatureMSFT ptr
	consistency as XrSceneComputeConsistencyMSFT
	bounds as XrSceneBoundsMSFT
end type

type XrVisualMeshComputeLodInfoMSFT
	as XrStructureType _type
	next as const any ptr
	lod as XrMeshComputeLodMSFT
end type

type XrSceneComponentMSFT
	componentType as XrSceneComponentTypeMSFT
	id as XrUuidMSFT
	parentId as XrUuidMSFT
	updateTime as XrTime
end type

type XrSceneComponentsMSFT
	as XrStructureType _type
	_next as any ptr
	componentCapacityInput as ulong
	componentCountOutput as ulong
	components as XrSceneComponentMSFT ptr
end type

type XrSceneComponentsGetInfoMSFT
	as XrStructureType _type
	next as const any ptr
	componentType as XrSceneComponentTypeMSFT
end type

type XrSceneComponentLocationMSFT
	flags as XrSpaceLocationFlags
	pose as XrPosef
end type

type XrSceneComponentLocationsMSFT
	as XrStructureType _type
	_next as any ptr
	locationCount as ulong
	locations as XrSceneComponentLocationMSFT ptr
end type

type XrSceneComponentsLocateInfoMSFT
	as XrStructureType _type
	next as const any ptr
	baseSpace as XrSpace
	time as XrTime
	componentIdCount as ulong
	componentIds as const XrUuidMSFT ptr
end type

type XrSceneObjectMSFT
	objectType as XrSceneObjectTypeMSFT
end type

type XrSceneObjectsMSFT
	as XrStructureType _type
	_next as any ptr
	sceneObjectCount as ulong
	sceneObjects as XrSceneObjectMSFT ptr
end type

type XrSceneComponentParentFilterInfoMSFT
	as XrStructureType _type
	next as const any ptr
	parentId as XrUuidMSFT
end type

type XrSceneObjectTypesFilterInfoMSFT
	as XrStructureType _type
	next as const any ptr
	objectTypeCount as ulong
	objectTypes as const XrSceneObjectTypeMSFT ptr
end type

type XrScenePlaneMSFT
	alignment as XrScenePlaneAlignmentTypeMSFT
	size as XrExtent2Df
	meshBufferId as ulongint
	supportsIndicesUint16 as XrBool32
end type

type XrScenePlanesMSFT
	as XrStructureType _type
	_next as any ptr
	scenePlaneCount as ulong
	scenePlanes as XrScenePlaneMSFT ptr
end type

type XrScenePlaneAlignmentFilterInfoMSFT
	as XrStructureType _type
	next as const any ptr
	alignmentCount as ulong
	alignments as const XrScenePlaneAlignmentTypeMSFT ptr
end type

type XrSceneMeshMSFT
	meshBufferId as ulongint
	supportsIndicesUint16 as XrBool32
end type

type XrSceneMeshesMSFT
	as XrStructureType _type
	_next as any ptr
	sceneMeshCount as ulong
	sceneMeshes as XrSceneMeshMSFT ptr
end type

type XrSceneMeshBuffersGetInfoMSFT
	as XrStructureType _type
	next as const any ptr
	meshBufferId as ulongint
end type

type XrSceneMeshBuffersMSFT
	as XrStructureType _type
	_next as any ptr
end type

type XrSceneMeshVertexBufferMSFT
	as XrStructureType _type
	_next as any ptr
	vertexCapacityInput as ulong
	vertexCountOutput as ulong
	vertices as XrVector3f ptr
end type

type XrSceneMeshIndicesUint32MSFT
	as XrStructureType _type
	_next as any ptr
	indexCapacityInput as ulong
	indexCountOutput as ulong
	indices as ulong ptr
end type

type XrSceneMeshIndicesUint16MSFT
	as XrStructureType _type
	_next as any ptr
	indexCapacityInput as ulong
	indexCountOutput as ulong
	indices as ushort ptr
end type

type PFN_xrEnumerateSceneComputeFeaturesMSFT as function(byval instance as XrInstance, byval systemId as XrSystemId, byval featureCapacityInput as ulong, byval featureCountOutput as ulong ptr, byval features as XrSceneComputeFeatureMSFT ptr) as XrResult
type PFN_xrCreateSceneObserverMSFT as function(byval session as XrSession, byval createInfo as const XrSceneObserverCreateInfoMSFT ptr, byval sceneObserver as XrSceneObserverMSFT ptr) as XrResult
type PFN_xrDestroySceneObserverMSFT as function(byval sceneObserver as XrSceneObserverMSFT) as XrResult
type PFN_xrCreateSceneMSFT as function(byval sceneObserver as XrSceneObserverMSFT, byval createInfo as const XrSceneCreateInfoMSFT ptr, byval scene as XrSceneMSFT ptr) as XrResult
type PFN_xrDestroySceneMSFT as function(byval scene as XrSceneMSFT) as XrResult
type PFN_xrComputeNewSceneMSFT as function(byval sceneObserver as XrSceneObserverMSFT, byval computeInfo as const XrNewSceneComputeInfoMSFT ptr) as XrResult
type PFN_xrGetSceneComputeStateMSFT as function(byval sceneObserver as XrSceneObserverMSFT, byval state as XrSceneComputeStateMSFT ptr) as XrResult
type PFN_xrGetSceneComponentsMSFT as function(byval scene as XrSceneMSFT, byval getInfo as const XrSceneComponentsGetInfoMSFT ptr, byval components as XrSceneComponentsMSFT ptr) as XrResult
type PFN_xrLocateSceneComponentsMSFT as function(byval scene as XrSceneMSFT, byval locateInfo as const XrSceneComponentsLocateInfoMSFT ptr, byval locations as XrSceneComponentLocationsMSFT ptr) as XrResult
type PFN_xrGetSceneMeshBuffersMSFT as function(byval scene as XrSceneMSFT, byval getInfo as const XrSceneMeshBuffersGetInfoMSFT ptr, byval buffers as XrSceneMeshBuffersMSFT ptr) as XrResult

const XR_MSFT_scene_understanding_serialization = 1
const XR_MSFT_scene_understanding_serialization_SPEC_VERSION = 1
#define XR_MSFT_SCENE_UNDERSTANDING_SERIALIZATION_EXTENSION_NAME "XR_MSFT_scene_understanding_serialization"

type XrSerializedSceneFragmentDataGetInfoMSFT
	as XrStructureType _type
	next as const any ptr
	sceneFragmentId as XrUuidMSFT
end type

type XrDeserializeSceneFragmentMSFT
	bufferSize as ulong
	buffer as const ubyte ptr
end type

type XrSceneDeserializeInfoMSFT
	as XrStructureType _type
	next as const any ptr
	fragmentCount as ulong
	fragments as const XrDeserializeSceneFragmentMSFT ptr
end type

type PFN_xrDeserializeSceneMSFT as function(byval sceneObserver as XrSceneObserverMSFT, byval deserializeInfo as const XrSceneDeserializeInfoMSFT ptr) as XrResult
type PFN_xrGetSerializedSceneFragmentDataMSFT as function(byval scene as XrSceneMSFT, byval getInfo as const XrSerializedSceneFragmentDataGetInfoMSFT ptr, byval countInput as ulong, byval readOutput as ulong ptr, byval buffer as ubyte ptr) as XrResult
const XR_FB_display_refresh_rate = 1
const XR_FB_display_refresh_rate_SPEC_VERSION = 1
#define XR_FB_DISPLAY_REFRESH_RATE_EXTENSION_NAME "XR_FB_display_refresh_rate"

type XrEventDataDisplayRefreshRateChangedFB
	as XrStructureType _type
	next as const any ptr
	fromDisplayRefreshRate as single
	toDisplayRefreshRate as single
end type

type PFN_xrEnumerateDisplayRefreshRatesFB as function(byval session as XrSession, byval displayRefreshRateCapacityInput as ulong, byval displayRefreshRateCountOutput as ulong ptr, byval displayRefreshRates as single ptr) as XrResult
type PFN_xrGetDisplayRefreshRateFB as function(byval session as XrSession, byval displayRefreshRate as single ptr) as XrResult
type PFN_xrRequestDisplayRefreshRateFB as function(byval session as XrSession, byval displayRefreshRate as single) as XrResult

const XR_HTC_vive_cosmos_controller_interaction = 1
const XR_HTC_vive_cosmos_controller_interaction_SPEC_VERSION = 1
#define XR_HTC_VIVE_COSMOS_CONTROLLER_INTERACTION_EXTENSION_NAME "XR_HTC_vive_cosmos_controller_interaction"
const XR_HTCX_vive_tracker_interaction = 1
const XR_HTCX_vive_tracker_interaction_SPEC_VERSION = 1
#define XR_HTCX_VIVE_TRACKER_INTERACTION_EXTENSION_NAME "XR_HTCX_vive_tracker_interaction"

type XrViveTrackerPathsHTCX
	as XrStructureType _type
	_next as any ptr
	persistentPath as XrPath
	rolePath as XrPath
end type

type XrEventDataViveTrackerConnectedHTCX
	as XrStructureType _type
	next as const any ptr
	paths as XrViveTrackerPathsHTCX ptr
end type

type PFN_xrEnumerateViveTrackerPathsHTCX as function(byval instance as XrInstance, byval pathCapacityInput as ulong, byval pathCountOutput as ulong ptr, byval paths as XrViveTrackerPathsHTCX ptr) as XrResult
const XR_FB_color_space = 1
const XR_FB_color_space_SPEC_VERSION = 2
#define XR_FB_COLOR_SPACE_EXTENSION_NAME "XR_FB_color_space"

type XrColorSpaceFB as long
enum
	XR_COLOR_SPACE_UNMANAGED_FB = 0
	XR_COLOR_SPACE_REC2020_FB = 1
	XR_COLOR_SPACE_REC709_FB = 2
	XR_COLOR_SPACE_RIFT_CV1_FB = 3
	XR_COLOR_SPACE_RIFT_S_FB = 4
	XR_COLOR_SPACE_QUEST_FB = 5
	XR_COLOR_SPACE_P3_FB = 6
	XR_COLOR_SPACE_ADOBE_RGB_FB = 7
	XR_COLOR_SPACE_MAX_ENUM_FB = &h7FFFFFFF
end enum

type XrSystemColorSpacePropertiesFB
	as XrStructureType _type
	_next as any ptr
	colorSpace as XrColorSpaceFB
end type

type PFN_xrEnumerateColorSpacesFB as function(byval session as XrSession, byval colorSpaceCapacityInput as ulong, byval colorSpaceCountOutput as ulong ptr, byval colorSpaces as XrColorSpaceFB ptr) as XrResult
type PFN_xrSetColorSpaceFB as function(byval session as XrSession, byval colorspace as const XrColorSpaceFB) as XrResult
const XR_FB_hand_tracking_mesh = 1
const XR_FB_hand_tracking_mesh_SPEC_VERSION = 1
#define XR_FB_HAND_TRACKING_MESH_EXTENSION_NAME "XR_FB_hand_tracking_mesh"

type XrVector4sFB
	x as short
	y as short
	z as short
	w as short
end type

type XrHandTrackingMeshFB
	as XrStructureType _type
	_next as any ptr
	jointCapacityInput as ulong
	jointCountOutput as ulong
	jointBindPoses as XrPosef ptr
	jointRadii as single ptr
	jointParents as XrHandJointEXT ptr
	vertexCapacityInput as ulong
	vertexCountOutput as ulong
	vertexPositions as XrVector3f ptr
	vertexNormals as XrVector3f ptr
	vertexUVs as XrVector2f ptr
	vertexBlendIndices as XrVector4sFB ptr
	vertexBlendWeights as XrVector4f ptr
	indexCapacityInput as ulong
	indexCountOutput as ulong
	indices as short ptr
end type

type XrHandTrackingScaleFB
	as XrStructureType _type
	_next as any ptr
	sensorOutput as single
	currentOutput as single
	overrideHandScale as XrBool32
	overrideValueInput as single
end type

type PFN_xrGetHandMeshFB as function(byval handTracker as XrHandTrackerEXT, byval mesh as XrHandTrackingMeshFB ptr) as XrResult
const XR_FB_hand_tracking_aim = 1
const XR_FB_hand_tracking_aim_SPEC_VERSION = 1
#define XR_FB_HAND_TRACKING_AIM_EXTENSION_NAME "XR_FB_hand_tracking_aim"
type XrHandTrackingAimFlagsFB as XrFlags64

dim shared XR_HAND_TRACKING_AIM_COMPUTED_BIT_FB as const XrHandTrackingAimFlagsFB = &h00000001
dim shared XR_HAND_TRACKING_AIM_VALID_BIT_FB as const XrHandTrackingAimFlagsFB = &h00000002
dim shared XR_HAND_TRACKING_AIM_INDEX_PINCHING_BIT_FB as const XrHandTrackingAimFlagsFB = &h00000004
dim shared XR_HAND_TRACKING_AIM_MIDDLE_PINCHING_BIT_FB as const XrHandTrackingAimFlagsFB = &h00000008
dim shared XR_HAND_TRACKING_AIM_RING_PINCHING_BIT_FB as const XrHandTrackingAimFlagsFB = &h00000010
dim shared XR_HAND_TRACKING_AIM_LITTLE_PINCHING_BIT_FB as const XrHandTrackingAimFlagsFB = &h00000020
dim shared XR_HAND_TRACKING_AIM_SYSTEM_GESTURE_BIT_FB as const XrHandTrackingAimFlagsFB = &h00000040
dim shared XR_HAND_TRACKING_AIM_DOMINANT_HAND_BIT_FB as const XrHandTrackingAimFlagsFB = &h00000080
dim shared XR_HAND_TRACKING_AIM_MENU_PRESSED_BIT_FB as const XrHandTrackingAimFlagsFB = &h00000100

type XrHandTrackingAimStateFB
	as XrStructureType _type
	_next as any ptr
	status as XrHandTrackingAimFlagsFB
	aimPose as XrPosef
	pinchStrengthIndex as single
	pinchStrengthMiddle as single
	pinchStrengthRing as single
	pinchStrengthLittle as single
end type

const XR_FB_hand_tracking_capsules = 1
const XR_FB_HAND_TRACKING_CAPSULE_POINT_COUNT = 2
const XR_FB_HAND_TRACKING_CAPSULE_COUNT = 19
const XR_FB_hand_tracking_capsules_SPEC_VERSION = 1
#define XR_FB_HAND_TRACKING_CAPSULES_EXTENSION_NAME "XR_FB_hand_tracking_capsules"

type XrHandCapsuleFB
	points(0 to 1) as XrVector3f
	radius as single
	joint as XrHandJointEXT
end type

type XrHandTrackingCapsulesStateFB
	as XrStructureType _type
	_next as any ptr
	capsules(0 to 18) as XrHandCapsuleFB
end type

const XR_FB_foveation = 1

#if defined(__FB_64BIT__) and (defined(__FB_WIN32__) or defined(__FB_UNIX__))
	type XrFoveationProfileFB as XrFoveationProfileFB_T ptr
#else
	type XrFoveationProfileFB as ulongint
#endif

const XR_FB_foveation_SPEC_VERSION = 1
#define XR_FB_FOVEATION_EXTENSION_NAME "XR_FB_foveation"
type XrSwapchainCreateFoveationFlagsFB as XrFlags64
dim shared XR_SWAPCHAIN_CREATE_FOVEATION_SCALED_BIN_BIT_FB as const XrSwapchainCreateFoveationFlagsFB = &h00000001
dim shared XR_SWAPCHAIN_CREATE_FOVEATION_FRAGMENT_DENSITY_MAP_BIT_FB as const XrSwapchainCreateFoveationFlagsFB = &h00000002
type XrSwapchainStateFoveationFlagsFB as XrFlags64

type XrFoveationProfileCreateInfoFB
	as XrStructureType _type
	_next as any ptr
end type

type XrSwapchainCreateInfoFoveationFB
	as XrStructureType _type
	_next as any ptr
	flags as XrSwapchainCreateFoveationFlagsFB
end type

type XrSwapchainStateFoveationFB
	as XrStructureType _type
	_next as any ptr
	flags as XrSwapchainStateFoveationFlagsFB
	profile as XrFoveationProfileFB
end type

type PFN_xrCreateFoveationProfileFB as function(byval session as XrSession, byval createInfo as const XrFoveationProfileCreateInfoFB ptr, byval profile as XrFoveationProfileFB ptr) as XrResult
type PFN_xrDestroyFoveationProfileFB as function(byval profile as XrFoveationProfileFB) as XrResult
const XR_FB_foveation_configuration = 1
const XR_FB_foveation_configuration_SPEC_VERSION = 1
#define XR_FB_FOVEATION_CONFIGURATION_EXTENSION_NAME "XR_FB_foveation_configuration"

type XrFoveationLevelFB as long
enum
	XR_FOVEATION_LEVEL_NONE_FB = 0
	XR_FOVEATION_LEVEL_LOW_FB = 1
	XR_FOVEATION_LEVEL_MEDIUM_FB = 2
	XR_FOVEATION_LEVEL_HIGH_FB = 3
	XR_FOVEATION_LEVEL_MAX_ENUM_FB = &h7FFFFFFF
end enum

type XrFoveationDynamicFB as long
enum
	XR_FOVEATION_DYNAMIC_DISABLED_FB = 0
	XR_FOVEATION_DYNAMIC_LEVEL_ENABLED_FB = 1
	XR_FOVEATION_DYNAMIC_MAX_ENUM_FB = &h7FFFFFFF
end enum

type XrFoveationLevelProfileCreateInfoFB
	as XrStructureType _type
	_next as any ptr
	level as XrFoveationLevelFB
	verticalOffset as single
	dynamic as XrFoveationDynamicFB
end type

const XR_FB_triangle_mesh = 1

#if defined(__FB_64BIT__) and (defined(__FB_WIN32__) or defined(__FB_UNIX__))
	type XrTriangleMeshFB as XrTriangleMeshFB_T ptr
#else
	type XrTriangleMeshFB as ulongint
#endif

const XR_FB_triangle_mesh_SPEC_VERSION = 1
#define XR_FB_TRIANGLE_MESH_EXTENSION_NAME "XR_FB_triangle_mesh"

type XrWindingOrderFB as long
enum
	XR_WINDING_ORDER_UNKNOWN_FB = 0
	XR_WINDING_ORDER_CW_FB = 1
	XR_WINDING_ORDER_CCW_FB = 2
	XR_WINDING_ORDER_MAX_ENUM_FB = &h7FFFFFFF
end enum

type XrTriangleMeshFlagsFB as XrFlags64
dim shared XR_TRIANGLE_MESH_MUTABLE_BIT_FB as const XrTriangleMeshFlagsFB = &h00000001

type XrTriangleMeshCreateInfoFB
	as XrStructureType _type
	next as const any ptr
	flags as XrTriangleMeshFlagsFB
	windingOrder as XrWindingOrderFB
	vertexCount as ulong
	vertexBuffer as const XrVector3f ptr
	triangleCount as ulong
	indexBuffer as const ulong ptr
end type

type PFN_xrCreateTriangleMeshFB as function(byval session as XrSession, byval createInfo as const XrTriangleMeshCreateInfoFB ptr, byval outTriangleMesh as XrTriangleMeshFB ptr) as XrResult
type PFN_xrDestroyTriangleMeshFB as function(byval mesh as XrTriangleMeshFB) as XrResult
type PFN_xrTriangleMeshGetVertexBufferFB as function(byval mesh as XrTriangleMeshFB, byval outVertexBuffer as XrVector3f ptr ptr) as XrResult
type PFN_xrTriangleMeshGetIndexBufferFB as function(byval mesh as XrTriangleMeshFB, byval outIndexBuffer as ulong ptr ptr) as XrResult
type PFN_xrTriangleMeshBeginUpdateFB as function(byval mesh as XrTriangleMeshFB) as XrResult
type PFN_xrTriangleMeshEndUpdateFB as function(byval mesh as XrTriangleMeshFB, byval vertexCount as ulong, byval triangleCount as ulong) as XrResult
type PFN_xrTriangleMeshBeginVertexBufferUpdateFB as function(byval mesh as XrTriangleMeshFB, byval outVertexCount as ulong ptr) as XrResult
type PFN_xrTriangleMeshEndVertexBufferUpdateFB as function(byval mesh as XrTriangleMeshFB) as XrResult
const XR_FB_passthrough = 1

#if defined(__FB_64BIT__) and (defined(__FB_WIN32__) or defined(__FB_UNIX__))
	type XrPassthroughFB as XrPassthroughFB_T ptr
	type XrPassthroughLayerFB as XrPassthroughLayerFB_T ptr
	type XrGeometryInstanceFB as XrGeometryInstanceFB_T ptr
#else
	type XrPassthroughFB as ulongint
	type XrPassthroughLayerFB as ulongint
	type XrGeometryInstanceFB as ulongint
#endif

const XR_FB_passthrough_SPEC_VERSION = 1
#define XR_FB_PASSTHROUGH_EXTENSION_NAME "XR_FB_passthrough"
const XR_PASSTHROUGH_COLOR_MAP_MONO_SIZE_FB = 256

type XrPassthroughLayerPurposeFB as long
enum
	XR_PASSTHROUGH_LAYER_PURPOSE_RECONSTRUCTION_FB = 0
	XR_PASSTHROUGH_LAYER_PURPOSE_PROJECTED_FB = 1
	XR_PASSTHROUGH_LAYER_PURPOSE_MAX_ENUM_FB = &h7FFFFFFF
end enum

type XrPassthroughFlagsFB as XrFlags64
dim shared XR_PASSTHROUGH_IS_RUNNING_AT_CREATION_BIT_FB as const XrPassthroughFlagsFB = &h00000001
type XrPassthroughStateChangedFlagsFB as XrFlags64
dim shared XR_PASSTHROUGH_STATE_CHANGED_REINIT_REQUIRED_BIT_FB as const XrPassthroughStateChangedFlagsFB = &h00000001
dim shared XR_PASSTHROUGH_STATE_CHANGED_NON_RECOVERABLE_ERROR_BIT_FB as const XrPassthroughStateChangedFlagsFB = &h00000002
dim shared XR_PASSTHROUGH_STATE_CHANGED_RECOVERABLE_ERROR_BIT_FB as const XrPassthroughStateChangedFlagsFB = &h00000004
dim shared XR_PASSTHROUGH_STATE_CHANGED_RESTORED_ERROR_BIT_FB as const XrPassthroughStateChangedFlagsFB = &h00000008

type XrSystemPassthroughPropertiesFB
	as XrStructureType _type
	next as const any ptr
	supportsPassthrough as XrBool32
end type

type XrPassthroughCreateInfoFB
	as XrStructureType _type
	next as const any ptr
	flags as XrPassthroughFlagsFB
end type

type XrPassthroughLayerCreateInfoFB
	as XrStructureType _type
	next as const any ptr
	passthrough as XrPassthroughFB
	flags as XrPassthroughFlagsFB
	purpose as XrPassthroughLayerPurposeFB
end type

type XrCompositionLayerPassthroughFB
	as XrStructureType _type
	next as const any ptr
	flags as XrCompositionLayerFlags
	space as XrSpace
	layerHandle as XrPassthroughLayerFB
end type

type XrGeometryInstanceCreateInfoFB
	as XrStructureType _type
	next as const any ptr
	layer as XrPassthroughLayerFB
	mesh as XrTriangleMeshFB
	baseSpace as XrSpace
	pose as XrPosef
	scale as XrVector3f
end type

type XrGeometryInstanceTransformFB
	as XrStructureType _type
	next as const any ptr
	baseSpace as XrSpace
	time as XrTime
	pose as XrPosef
	scale as XrVector3f
end type

type XrPassthroughStyleFB
	as XrStructureType _type
	next as const any ptr
	textureOpacityFactor as single
	edgeColor as XrColor4f
end type

type XrPassthroughColorMapMonoToRgbaFB
	as XrStructureType _type
	next as const any ptr
	textureColorMap(0 to 255) as XrColor4f
end type

type XrPassthroughColorMapMonoToMonoFB
	as XrStructureType _type
	next as const any ptr
	textureColorMap(0 to 255) as ubyte
end type

type XrEventDataPassthroughStateChangedFB
	as XrStructureType _type
	next as const any ptr
	flags as XrPassthroughStateChangedFlagsFB
end type

type PFN_xrCreatePassthroughFB as function(byval session as XrSession, byval createInfo as const XrPassthroughCreateInfoFB ptr, byval outPassthrough as XrPassthroughFB ptr) as XrResult
type PFN_xrDestroyPassthroughFB as function(byval passthrough as XrPassthroughFB) as XrResult
type PFN_xrPassthroughStartFB as function(byval passthrough as XrPassthroughFB) as XrResult
type PFN_xrPassthroughPauseFB as function(byval passthrough as XrPassthroughFB) as XrResult
type PFN_xrCreatePassthroughLayerFB as function(byval session as XrSession, byval createInfo as const XrPassthroughLayerCreateInfoFB ptr, byval outLayer as XrPassthroughLayerFB ptr) as XrResult
type PFN_xrDestroyPassthroughLayerFB as function(byval layer as XrPassthroughLayerFB) as XrResult
type PFN_xrPassthroughLayerPauseFB as function(byval layer as XrPassthroughLayerFB) as XrResult
type PFN_xrPassthroughLayerResumeFB as function(byval layer as XrPassthroughLayerFB) as XrResult
type PFN_xrPassthroughLayerSetStyleFB as function(byval layer as XrPassthroughLayerFB, byval style as const XrPassthroughStyleFB ptr) as XrResult
type PFN_xrCreateGeometryInstanceFB as function(byval session as XrSession, byval createInfo as const XrGeometryInstanceCreateInfoFB ptr, byval outGeometryInstance as XrGeometryInstanceFB ptr) as XrResult
type PFN_xrDestroyGeometryInstanceFB as function(byval instance as XrGeometryInstanceFB) as XrResult
type PFN_xrGeometryInstanceSetTransformFB as function(byval instance as XrGeometryInstanceFB, byval transformation as const XrGeometryInstanceTransformFB ptr) as XrResult

const XR_VARJO_foveated_rendering = 1
const XR_VARJO_foveated_rendering_SPEC_VERSION = 2
#define XR_VARJO_FOVEATED_RENDERING_EXTENSION_NAME "XR_VARJO_foveated_rendering"

type XrViewLocateFoveatedRenderingVARJO
	as XrStructureType _type
	next as const any ptr
	foveatedRenderingActive as XrBool32
end type

type XrFoveatedViewConfigurationViewVARJO
	as XrStructureType _type
	_next as any ptr
	foveatedRenderingActive as XrBool32
end type

type XrSystemFoveatedRenderingPropertiesVARJO
	as XrStructureType _type
	_next as any ptr
	supportsFoveatedRendering as XrBool32
end type

const XR_VARJO_composition_layer_depth_test = 1
const XR_VARJO_composition_layer_depth_test_SPEC_VERSION = 2
#define XR_VARJO_COMPOSITION_LAYER_DEPTH_TEST_EXTENSION_NAME "XR_VARJO_composition_layer_depth_test"

type XrCompositionLayerDepthTestVARJO
	as XrStructureType _type
	next as const any ptr
	depthTestRangeNearZ as single
	depthTestRangeFarZ as single
end type

const XR_VARJO_environment_depth_estimation = 1
const XR_VARJO_environment_depth_estimation_SPEC_VERSION = 1
#define XR_VARJO_ENVIRONMENT_DEPTH_ESTIMATION_EXTENSION_NAME "XR_VARJO_environment_depth_estimation"
type PFN_xrSetEnvironmentDepthEstimationVARJO as function(byval session as XrSession, byval enabled as XrBool32) as XrResult
const XR_VARJO_marker_tracking = 1
const XR_VARJO_marker_tracking_SPEC_VERSION = 1
#define XR_VARJO_MARKER_TRACKING_EXTENSION_NAME "XR_VARJO_marker_tracking"

type XrSystemMarkerTrackingPropertiesVARJO
	as XrStructureType _type
	_next as any ptr
	supportsMarkerTracking as XrBool32
end type

type XrEventDataMarkerTrackingUpdateVARJO
	as XrStructureType _type
	next as const any ptr
	markerId as ulongint
	isActive as XrBool32
	isPredicted as XrBool32
	time as XrTime
end type

type XrMarkerSpaceCreateInfoVARJO
	as XrStructureType _type
	next as const any ptr
	markerId as ulongint
	poseInMarkerSpace as XrPosef
end type

type PFN_xrSetMarkerTrackingVARJO as function(byval session as XrSession, byval enabled as XrBool32) as XrResult
type PFN_xrSetMarkerTrackingTimeoutVARJO as function(byval session as XrSession, byval markerId as ulongint, byval timeout as XrDuration) as XrResult
type PFN_xrSetMarkerTrackingPredictionVARJO as function(byval session as XrSession, byval markerId as ulongint, byval enabled as XrBool32) as XrResult
type PFN_xrGetMarkerSizeVARJO as function(byval session as XrSession, byval markerId as ulongint, byval size as XrExtent2Df ptr) as XrResult
type PFN_xrCreateMarkerSpaceVARJO as function(byval session as XrSession, byval createInfo as const XrMarkerSpaceCreateInfoVARJO ptr, byval space as XrSpace ptr) as XrResult
const XR_MSFT_spatial_anchor_persistence = 1

#if defined(__FB_64BIT__) and (defined(__FB_WIN32__) or defined(__FB_UNIX__))
	type XrSpatialAnchorStoreConnectionMSFT as XrSpatialAnchorStoreConnectionMSFT_T ptr
#else
	type XrSpatialAnchorStoreConnectionMSFT as ulongint
#endif

const XR_MAX_SPATIAL_ANCHOR_NAME_SIZE_MSFT = 256
const XR_MSFT_spatial_anchor_persistence_SPEC_VERSION = 2
#define XR_MSFT_SPATIAL_ANCHOR_PERSISTENCE_EXTENSION_NAME "XR_MSFT_spatial_anchor_persistence"

type XrSpatialAnchorPersistenceNameMSFT
	name as zstring * 256
end type

type XrSpatialAnchorPersistenceInfoMSFT
	as XrStructureType _type
	next as const any ptr
	spatialAnchorPersistenceName as XrSpatialAnchorPersistenceNameMSFT
	spatialAnchor as XrSpatialAnchorMSFT
end type

type XrSpatialAnchorFromPersistedAnchorCreateInfoMSFT
	as XrStructureType _type
	next as const any ptr
	spatialAnchorStore as XrSpatialAnchorStoreConnectionMSFT
	spatialAnchorPersistenceName as XrSpatialAnchorPersistenceNameMSFT
end type

type PFN_xrCreateSpatialAnchorStoreConnectionMSFT as function(byval session as XrSession, byval spatialAnchorStore as XrSpatialAnchorStoreConnectionMSFT ptr) as XrResult
type PFN_xrDestroySpatialAnchorStoreConnectionMSFT as function(byval spatialAnchorStore as XrSpatialAnchorStoreConnectionMSFT) as XrResult
type PFN_xrPersistSpatialAnchorMSFT as function(byval spatialAnchorStore as XrSpatialAnchorStoreConnectionMSFT, byval spatialAnchorPersistenceInfo as const XrSpatialAnchorPersistenceInfoMSFT ptr) as XrResult
type PFN_xrEnumeratePersistedSpatialAnchorNamesMSFT as function(byval spatialAnchorStore as XrSpatialAnchorStoreConnectionMSFT, byval spatialAnchorNamesCapacityInput as ulong, byval spatialAnchorNamesCountOutput as ulong ptr, byval persistedAnchorNames as XrSpatialAnchorPersistenceNameMSFT ptr) as XrResult
type PFN_xrCreateSpatialAnchorFromPersistedNameMSFT as function(byval session as XrSession, byval spatialAnchorCreateInfo as const XrSpatialAnchorFromPersistedAnchorCreateInfoMSFT ptr, byval spatialAnchor as XrSpatialAnchorMSFT ptr) as XrResult
type PFN_xrUnpersistSpatialAnchorMSFT as function(byval spatialAnchorStore as XrSpatialAnchorStoreConnectionMSFT, byval spatialAnchorPersistenceName as const XrSpatialAnchorPersistenceNameMSFT ptr) as XrResult
type PFN_xrClearSpatialAnchorStoreMSFT as function(byval spatialAnchorStore as XrSpatialAnchorStoreConnectionMSFT) as XrResult

const XR_FB_space_warp = 1
const XR_FB_space_warp_SPEC_VERSION = 1
#define XR_FB_SPACE_WARP_EXTENSION_NAME "XR_FB_space_warp"
type XrCompositionLayerSpaceWarpInfoFlagsFB as XrFlags64

type XrCompositionLayerSpaceWarpInfoFB
	as XrStructureType _type
	next as const any ptr
	layerFlags as XrCompositionLayerSpaceWarpInfoFlagsFB
	motionVectorSubImage as XrSwapchainSubImage
	appSpaceDeltaPose as XrPosef
	depthSubImage as XrSwapchainSubImage
	minDepth as single
	maxDepth as single
	nearZ as single
	farZ as single
end type

type XrSystemSpaceWarpPropertiesFB
	as XrStructureType _type
	_next as any ptr
	recommendedMotionVectorImageRectWidth as ulong
	recommendedMotionVectorImageRectHeight as ulong
end type

end extern
