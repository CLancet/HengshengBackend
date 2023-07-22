package com.tongji.demo.api;

import com.hundsun.jrescloud.rpc.annotation.CloudFunction;
import com.hundsun.jrescloud.rpc.annotation.CloudService;
import com.tongji.demo.api.pojo.UserDTO;

@CloudService(validationNull = true, validation = true)
public interface UserService {

    @CloudFunction("333000")
    String createUser(UserDTO user);

    @CloudFunction("333001")
    UserDTO getUser(String userId);
}