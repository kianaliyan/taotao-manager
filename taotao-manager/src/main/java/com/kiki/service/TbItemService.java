package com.kiki.service;

import java.util.List;

import com.kiki.bean.TbItem;
import com.kiki.domain.ItemResult;


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
	 * @param i 
	 * @param ids
	 */
	//ItemResult deleteItems(List<TbItem> tbItems);
	/**
	 * 单行删除
	 * @param id
	 */
	void deleteItem(String id);
	/**
	 * 修改商品状态
	 * @param tbItems
	 * @param i
	 * @return
	 */
	ItemResult updateItems(List<TbItem> tbItems, Integer type);
	List<TbItem> findItemBysearch(String title, String sellPoint);
	 
}
