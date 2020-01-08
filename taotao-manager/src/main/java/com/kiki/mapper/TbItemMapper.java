package com.kiki.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.kiki.bean.TbItem;
import com.kiki.domain.CategoryStatistics;

public interface TbItemMapper {
	/**
	 * 查询数据库中tbItem表,根据商品id查询商品信息
	 * @param tbItemId
	 * @return
	 */
	TbItem findTbItemById(Long tbItemId);

	

	List<TbItem> findTbItems(Integer page, Integer limit);



	int getCount();


	
	int deleteItems(@Param("ids")List<Long> ids);
	
	
	
	void deleteItem(String id);



	int updateItemByIds(List<Long> ids, Integer type);



	List<TbItem> findItemBysearch(String title, String sellPoint);



	List<CategoryStatistics> findTbItemCat();



	



	

}
