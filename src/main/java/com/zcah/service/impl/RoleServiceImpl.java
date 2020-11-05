package com.zcah.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zcah.mapper.MenuMapper;
import com.zcah.mapper.RoleMapper;
import com.zcah.pojo.EasyUIDatagrid;
import com.zcah.pojo.Menu;
import com.zcah.pojo.Role;
import com.zcah.service.RoleServicce;
@Service
public class RoleServiceImpl implements RoleServicce{

	@Resource
	private RoleMapper reloMapper;
	@Resource
	private MenuMapper menuMapper;
	@Override
	public EasyUIDatagrid showRole(int pageSize, int pageNumber) {
		// TODO Auto-generated method stub
		EasyUIDatagrid dg =new EasyUIDatagrid();
		dg.setRows(reloMapper.selByPage(pageSize*(pageNumber-1), pageSize));
		dg.setTotal(reloMapper.selCount());
		return dg;
	}
	@Override
	public int update(Role role) {
		// TODO Auto-generated method stub
		return reloMapper.updRole(role);
	}
	@Override
	public List<Menu> showPrivilege(int roleid) {
		System.out.println("roleId"+roleid);
		
		List<Menu> ListParent = menuMapper.seLByPidRid(0, roleid);
		System.out.println(ListParent);
		List<Menu> ListRole =new ArrayList<Menu>();
		for (Menu menu : ListParent) {
			System.out.println(ListRole);
			ListRole.addAll(menuMapper.seLByPidRid(menu.getId(), roleid));
			
		}
		List<Menu> ListAll = menuMapper.selAll();
		for (Menu menu : ListAll) {

			List<Menu> listChildren =menuMapper.selById(menu.getId());
			for (Menu menu1 : listChildren) {
				for (Menu menu2 : ListRole) {
					if (menu2.getId()==menu1.getId()) {
						menu1.setChecked(true);
					}
				}
			}
			menu.setChildren(listChildren);
		}
		
		return ListAll;
	}

}
