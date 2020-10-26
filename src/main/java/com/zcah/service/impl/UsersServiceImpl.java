package com.zcah.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zcah.mapper.UserMapper;
import com.zcah.pojo.Users;
import com.zcah.service.UsersService;

@Service
public class UsersServiceImpl implements UsersService {
	@Resource
	private UserMapper userMapper;
	
	@Override
	public Users login(Users users) {
		return userMapper.login(users);
	}
}
