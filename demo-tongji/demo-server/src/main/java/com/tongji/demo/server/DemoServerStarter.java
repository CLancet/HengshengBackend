package com.tongji.demo.server;

import com.hundsun.jrescloud.common.boot.CloudApplication;
import com.hundsun.jrescloud.common.boot.CloudBootstrap;
import com.hundsun.jrescloud.db.core.configuration.EnableCloudDataSource;

@EnableCloudDataSource
@CloudApplication
public class DemoServerStarter {
    public static void main(String[] args){
        CloudBootstrap.run(DemoServerStarter.class, args);
    }
}
