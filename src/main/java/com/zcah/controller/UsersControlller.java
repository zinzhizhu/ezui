package com.zcah.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zcah.pojo.Users;
import com.zcah.service.UsersService;

@Controller
public class UsersControlller {
	@Resource
	private UsersService UsersServiceImpl;

	@RequestMapping("/login")
	@ResponseBody
	public String Login(Users users ,HttpSession session) {
	
		Users user = UsersServiceImpl.login(users);
		System.out.println(user);
		if (user == null) {
			
			return "0";
			
		} else {
			session.setAttribute("user", user);
			return "1";
		}
	}
}
