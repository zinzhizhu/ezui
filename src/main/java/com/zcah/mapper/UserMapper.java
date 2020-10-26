package com.zcah.mapper;

import org.apache.ibatis.annotations.Select;

import com.zcah.pojo.Users;

public interface UserMapper {

	@Select("select * from users where username=#{username} and password = #{password}")
	Users login(Users users);
}
