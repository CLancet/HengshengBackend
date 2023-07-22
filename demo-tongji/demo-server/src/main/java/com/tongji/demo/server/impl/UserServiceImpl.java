package com.tongji.demo.server.impl;

import com.hundsun.jrescloud.rpc.annotation.CloudComponent;
import com.tongji.demo.api.UserService;
import com.tongji.demo.api.pojo.UserDTO;
import com.tongji.demo.server.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.Assert;

import java.util.UUID;

@CloudComponent
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    public String createUser(UserDTO user) {
        if(null == user.getUserId()){
            user.setUserId(UUID.randomUUID().toString());
            userMapper.createUser(user);
            return user.getUserId();
        }
        UserDTO existUser = userMapper.getUser(user.getUserId());
        if(null == existUser){
            userMapper.createUser(user);
            return user.getUserId();
        }
        userMapper.updateUser(user);
        return user.getUserId();
    }

    public UserDTO getUser(String userId){
        Assert.hasLength(userId, "缺少查询的用户id");
        return userMapper.getUser(userId);
    }

}