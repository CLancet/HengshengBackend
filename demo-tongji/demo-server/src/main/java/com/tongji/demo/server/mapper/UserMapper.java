package com.tongji.demo.server.mapper;

import com.tongji.demo.api.pojo.UserDTO;
import org.apache.ibatis.annotations.*;

@Mapper
public interface UserMapper {
    @Select("SELECT user_id as userId, user_name as userName, address FROM test_user WHERE user_id=#{id}")
    UserDTO getUser(@Param("id")String id);

    int updateUser(@Param("user") UserDTO user);

    @Insert("insert into test_user(user_id, user_name, address) values (#{user.userId}, #{user.userName}, #{user.address})")
    int createUser(@Param("user") UserDTO user);
}