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
	List<TbItem> findTbItems(); 
}
