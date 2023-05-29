#获取当前目录的相对路径，也就是当前文件的父路径
LOCAL_PATH := $(call my-dir)
#清除当前的所有变量值
include $(CLEAR_VARS)

#本模块需要调用到的接口，也就是.h 文件
#LOCAL_C_INCLUDES := XXX

#本模块需要编译到的 c 文件
LOCAL_SRC_FILES := helloworld_android.c

#加入第三方库log库，NDK 自带的
LOCAL_LDLIBS := -llog

#生成库的名字。最终生成 libhelloworld
LOCAL_MODULE    := helloworld

#生成的是动态库.so
include $(BUILD_SHARED_LIBRARY)


#生成的是动态库.a
#include $(BUILD_STATIC_LIBRARY)