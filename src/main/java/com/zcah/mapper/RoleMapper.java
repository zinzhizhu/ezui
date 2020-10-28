package com.zcah.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.zcah.pojo.Role;

public interface RoleMapper {
	@Select("select * from role limit #{0},#{1}")
	List<Role> selByPage(int pageStart,int pageSize);

	@Select("select count(*) from role")
	int selCount();
}
