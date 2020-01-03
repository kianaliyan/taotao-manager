package com.kiki.mapper;

import java.util.List;

import com.kiki.bean.TbItem;

public interface TbItemMapper {
	/**
	 * 查询数据库中tbItem表,根据商品id查询商品信息
	 * @param tbItemId
	 * @return
	 */
	TbItem findTbItemById(Long tbItemId);

	

	List<TbItem> findTbItems(Integer page, Integer limit);



	int getCount();

}
