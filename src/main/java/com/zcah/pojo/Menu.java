package com.zcah.pojo;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Menu {

		private int id;
		@JsonProperty("text")
		private String name;
		private int pid;
		private List<Menu> children;
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
		public int getpid() {
			return pid;
		}
		public void setpid(int pid) {
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
