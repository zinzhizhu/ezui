package com.zcah.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zcah.mapper.MenuMapper;
import com.zcah.pojo.Menu;
import com.zcah.service.menuService;
@Service
public class menuServiceImpl implements menuService {
	@Resource
	private MenuMapper menuMapper;
	@Override
	public List<Menu> selAll() {
		List<Menu> list = menuMapper.selAll();
		for (Menu menu : list) {
			menu.setChildren(menuMapper.selById(menu.getId()));
		}
		return list;
	}
}
