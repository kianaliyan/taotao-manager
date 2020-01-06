package com.kiki.service;

import java.util.List;

import com.kiki.bean.TbItem;


public interface TbItemService {
	/**
	 * 根据商品id查询商品
	 * @param tbItemId 商品ID
	 * @return
	 */
	TbItem findTbItemById(Long tbItemId);
	/**
	 * 查询所有商品
	 * @return
	 */
	
	List<TbItem> findTbItems(Integer page, Integer limit);
	/**
	 * 得到总记录条数
	 * @return
	 */
	int getCount();
	/**
	 * 批量删除
	 * @param ids
	 */
	void deleteItems(Integer[] ids);
	/**
	 * 单行删除
	 * @param id
	 */
	void deleteItem(String id);
	 
}
