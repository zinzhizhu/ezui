package com.zcah.service;

import com.zcah.pojo.EasyUIDatagrid;
import com.zcah.pojo.Role;

public interface RoleServicce {
	EasyUIDatagrid showRole(int pageSize , int pageNumber);	
	int update(Role role);
}
