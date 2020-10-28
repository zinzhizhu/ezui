package com.zcah.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zcah.pojo.EasyUIDatagrid;
import com.zcah.service.RoleServicce;

@Controller
public class RoleController {
	@Resource
	private RoleServicce roleServiceImpl;

	@RequestMapping("page/showRole")
	@ResponseBody
	public EasyUIDatagrid showRole(@RequestParam(defaultValue = "10") int pageSize,
			@RequestParam(defaultValue = "1") int pageNumber) {
		return roleServiceImpl.showRole(pageSize, pageNumber);
	}
}