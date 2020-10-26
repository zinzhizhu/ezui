package com.zcah.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.zcah.pojo.Menu;


public interface MenuMapper {
	@Select("select * from menu where pid=0")
	List<Menu> selAll();
	
	@Select("select * from menu where pid =#{0}")
	List<Menu> selById(int pid);

}
