package com.kiki.domain;

import java.io.Serializable;
import java.util.List;

public class EchartsResult implements Serializable{
	private String name;
	private Integer value;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getValue() {
		return value;
	}
	public void setValue(Integer value) {
		this.value = value;
	}
	@Override
	public String toString() {
		return "EchartsResult [name=" + name + ", value=" + value + "]";
	}
	
	
}
