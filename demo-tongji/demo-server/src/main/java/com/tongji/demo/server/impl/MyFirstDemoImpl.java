package com.tongji.demo.server.impl;

import com.hundsun.jrescloud.rpc.annotation.CloudComponent;
import com.tongji.demo.api.MyFirstDemo;

@CloudComponent
public class MyFirstDemoImpl implements MyFirstDemo{

    public String sayHello() {
        return "Hello Hundsun";
    }

}