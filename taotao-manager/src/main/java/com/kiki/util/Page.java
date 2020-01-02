package com.kiki.util;


import java.io.Serializable;
import java.util.List;

public class Page implements Serializable{
	 //总记录数
    private int totalCount;
    //每页记录数
    private int pageSize;
    //总页数
    private int totalPage;
    //当前页数
    private int currPage;
    //列表数据
    private List<?> list;
	public Page(int totalCount, int pageSize, int totalPage, int currPage, List<?> list) {
		super();
		this.totalCount = totalCount;
		this.pageSize = pageSize;
		this.totalPage = totalPage;
		this.currPage = currPage;
		this.list = list;
	}
	
    
}
