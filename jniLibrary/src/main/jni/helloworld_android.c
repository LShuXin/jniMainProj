#include <jni.h>
#include <stdio.h>
#include <stdlib.h>

//public native String nativeGetString();

JNIEXPORT jstring JNICALL Java_com_lsx_jnilibrary_HelloWorld_nativeGetString(JNIEnv *env, jobject obj) {

    char *foo = malloc(sizeof(char) * 64); //申请内存
    //  char *foo = "helloworld";
    snprintf(foo, 21, "%s", "hello world from jni");
    jstring jname = (*env)->NewStringUTF(env, foo);
    free(foo); //释放指针
    foo = NULL;
    return jname;  //返回字符串
    //return helloworld;
}