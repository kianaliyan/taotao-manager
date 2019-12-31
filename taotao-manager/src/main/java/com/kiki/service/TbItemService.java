package com.kiki.service;

import com.kiki.bean.TbItem;

public interface TbItemService {
	/**
	 * 根据商品id查询商品
	 * @param tbItemId 商品ID
	 * @return
	 */
	TbItem findTbItemById(Long tbItemId); 
}
