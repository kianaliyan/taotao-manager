package com.kiki.domain;

import java.io.Serializable;
import java.util.List;

public class EchartsResult implements Serializable{
	private String name;
	private String type;
	private String radius;
	private List<CategoryStatistics> data;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getRadius() {
		return radius;
	}
	public void setRadius(String radius) {
		this.radius = radius;
	}
	public List<CategoryStatistics> getData() {
		return data;
	}
	public void setData(List<CategoryStatistics> data) {
		this.data = data;
	}
	@Override
	public String toString() {
		return "EchartsResult [name=" + name + ", type=" + type + ", radius=" + radius + ", data=" + data + "]";
	}
	
}
