LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	inject.c \
	shellcode.S
	
LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_MODULE:= inject

LOCAL_LDLIBS := -ldl -llog 

LOCAL_STATIC_LIBRARIES := libc

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE_TAGS := debug

include $(BUILD_EXECUTABLE)