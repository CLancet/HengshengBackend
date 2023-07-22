package com.tongji.demo.client.controller;

import com.hundsun.jrescloud.rpc.annotation.CloudReference;
import com.tongji.demo.api.MyFirstDemo;
import com.tongji.demo.api.UserService;
import com.tongji.demo.api.pojo.UserDTO;
import org.springframework.web.bind.annotation.*;

@RestController
public class MyClientController {
    @CloudReference
    private MyFirstDemo myFirstDemo;

    @CloudReference
    private UserService userService;

    @RequestMapping(value = "/sayHello", method = RequestMethod.GET)
    public String sayHello(){
        return myFirstDemo.sayHello();
    }
//
//    @RequestMapping(value = "/createUser", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
//    public String createUser(@RequestBody UserDTO user){
//        return userService.createUser(user);
//    }

    @RequestMapping(value = "/createUser", method = RequestMethod.GET)
    public String createUser(@RequestParam(value = "user_id", required = false) String userId,
                             @RequestParam(value = "user_name") String userName,
                             @RequestParam(value = "address", required = false) String address){
        UserDTO user = new UserDTO();
        user.setUserId(userId);
        user.setUserName(userName);
        user.setAddress(address);
        return userService.createUser(user);
    }

    @RequestMapping(path = "/getUser", method = RequestMethod.GET)
    public UserDTO getUser(@RequestParam(value = "user_id") String userId){
        return userService.getUser(userId);
    }

}