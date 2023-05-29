package com.lsx.jnilibrary;

public class HelloWorld {

    static {
        try {
            System.loadLibrary("helloworld");
        } catch (Exception e) {
        }
    }
    private volatile static HelloWorld instance;
    private HelloWorld() {
    }
    public static HelloWorld getInstance() {
        if(instance == null) {
            synchronized (HelloWorld.class) {
                if(instance == null) {
                    instance = new HelloWorld();
                }
            }
        }
        return  instance;
    }


    public native String nativeGetString();

}
