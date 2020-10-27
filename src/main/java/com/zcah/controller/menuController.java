package com.zcah.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zcah.pojo.Menu;
import com.zcah.service.menuService;

@Controller
public class menuController {
	@Resource
	private menuService menuServiceImpl;
	@RequestMapping("/menu")
	@ResponseBody
	public List<Menu> selMenu() {

		System.out.println("xi1xi");


		return menuServiceImpl.selAll() ;
	}
}
