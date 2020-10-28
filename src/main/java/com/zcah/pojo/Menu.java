package com.zcah.pojo;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Menu {

	private int id;
	@JsonProperty("text")
	private String name;
	@JsonProperty("attributes")
	private String filename;
	private int pid;
	private List<Menu> children;

	
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public List<Menu> getChildren() {
		return children;
	}

	public void setChildren(List<Menu> children) {
		this.children = children;
	}

	@Override
	public String toString() {
		return "Menu [id=" + id + ", name=" + name + ", pid=" + pid + ", children=" + children + "]";
	}

}
