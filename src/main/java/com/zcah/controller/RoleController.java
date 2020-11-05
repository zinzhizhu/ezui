package com.zcah.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zcah.pojo.EasyUIDatagrid;
import com.zcah.pojo.Menu;
import com.zcah.pojo.Role;
import com.zcah.service.RoleServicce;

@Controller
@RequestMapping("page")
public class RoleController {
	@Resource
	private RoleServicce roleServiceImpl;

	@RequestMapping("showRole")
	@ResponseBody
	public EasyUIDatagrid showRole(@RequestParam(defaultValue = "2") int rows,
			@RequestParam(defaultValue = "1") int page) {
		return roleServiceImpl.showRole(rows, page);
	}
	
	@RequestMapping("updataRole")
	@ResponseBody
	public int 	update(Role role) {
		System.out.println(role);
		return roleServiceImpl.update(role);
	}
	@RequestMapping("showPrivilege")
	@ResponseBody
	public List<Menu> showPrivilege(int id){
		return roleServiceImpl.showPrivilege(id);
	}
}
