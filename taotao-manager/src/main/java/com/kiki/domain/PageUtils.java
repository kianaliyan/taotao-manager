package com.kiki.domain;

import java.io.Serializable;
import java.util.List;

import com.kiki.bean.TbItem;

public class PageUtils  implements Serializable {
	private int code;
	private String msg;
	private int count;
	private List<TbItem> data;
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public List<TbItem> getData() {
		return data;
	}
	public void setData(List<TbItem> data) {
		this.data = data;
	}
	@Override
	public String toString() {
		return "PageUtils [code=" + code + ", msg=" + msg + ", count=" + count + ", data=" + data + "]";
	}
	
	



}
