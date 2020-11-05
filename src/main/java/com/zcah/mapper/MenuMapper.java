package com.zcah.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.zcah.pojo.Menu;


public interface MenuMapper {
	@Select("select * from menu where pid=0")
	List<Menu> selAll();
	
	@Select("select * from menu where pid =#{0}")
	List<Menu> selById(int pid);
	
	@Select("select * from menu where pid=#{0} and id in(select mid from role_menu where rid=#{1})")
	List<Menu> seLByPidRid(int pid ,int rid);

}
