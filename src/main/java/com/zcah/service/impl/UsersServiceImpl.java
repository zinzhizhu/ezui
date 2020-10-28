package com.zcah.service.impl;

import java.util.Random;

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
	public static void main(String[] args) {
		Random random =new Random();
		
		for (int i = 0; i <50; i++) {
			System.out.println(random.nextInt(2)+1);
		}
	}
}
