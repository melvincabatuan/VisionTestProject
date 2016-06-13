LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

OPENCV_CAMERA_MODULES:=on
OPENCV_INSTALL_MODULES:=on

include /home/cobalt/Android/OpenCV-android-sdk/sdk/native/jni/OpenCV.mk

LOCAL_MODULE    := mhealth_vision
LOCAL_SRC_FILES := $(wildcard $(LOCAL_PATH)/*.cpp)
LOCAL_LDLIBS    += -lm -llog -landroid -lstdc++ -ldl -lz
APP_STL := gnustl_static

include $(BUILD_SHARED_LIBRARY)
