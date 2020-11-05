package com.zcah.service;

import java.util.List;

import com.zcah.pojo.EasyUIDatagrid;
import com.zcah.pojo.Menu;
import com.zcah.pojo.Role;

public interface RoleServicce {
	EasyUIDatagrid showRole(int pageSize , int pageNumber);	
	int update(Role role);
	List<Menu> showPrivilege(int roleid);
}
