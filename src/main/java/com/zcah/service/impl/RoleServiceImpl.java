package com.zcah.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zcah.mapper.RoleMapper;
import com.zcah.pojo.EasyUIDatagrid;
import com.zcah.service.RoleServicce;
@Service
public class RoleServiceImpl implements RoleServicce{

	@Resource
	private RoleMapper reloMapper;
	@Override
	public EasyUIDatagrid showRole(int pageSize, int pageNumber) {
		// TODO Auto-generated method stub
		EasyUIDatagrid dg =new EasyUIDatagrid();
		dg.setRows(reloMapper.selByPage(pageSize*(pageNumber-1), pageSize));
		dg.setTotal(reloMapper.selCount());
		return dg;
	}

}
