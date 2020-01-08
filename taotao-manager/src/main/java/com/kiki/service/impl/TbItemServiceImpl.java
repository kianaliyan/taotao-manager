package com.kiki.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kiki.bean.TbItem;
import com.kiki.mapper.TbItemMapper;
import com.kiki.service.TbItemService;
import com.kiki.utils.ItemResult;
@Service
public class TbItemServiceImpl implements TbItemService {
	@Autowired
	private TbItemMapper tbItemMapper;
	@Override
	public TbItem findTbItemById(Long tbItemId) {
		TbItem tbItem=tbItemMapper.findTbItemById(tbItemId);
		return tbItem;
	}
	@Override
	public List<TbItem> findTbItems(Integer page, Integer limit) {
		List<TbItem> tbItems=tbItemMapper.findTbItems(page,limit);
		return tbItems;
	}
	@Override
	public int getCount() {
		int count=tbItemMapper.getCount();
		return count;
	}
//	@Override
//	public ItemResult deleteItems(List<TbItem> tbItems) {
//		List<Long> ids=new ArrayList<Long>();
//		for (TbItem tbItem : tbItems) {
//			ids.add(tbItem.getId());
//		}
//		int count = tbItemMapper.deleteItems(ids);
//		if(count>0){
//			ItemResult.ok();
//		}
//		return ItemResult.build(500, "删除失败",null);
//	}
	
	@Override
	public void deleteItem(String id) {
		tbItemMapper.deleteItem(id);
		
	}
	
	@Override
	public ItemResult updateItems(List<TbItem> tbItems, Integer type) {
		List<Long> ids = new ArrayList<Long>();
		for (TbItem tbItem : tbItems) {
			ids.add(tbItem.getId());
		}
		int count = tbItemMapper.updateItemByIds(ids, type);
		if(count>0&&type==0){
			return ItemResult.build(200, "商品下架成功");
		}else if(count>0&&type==1){
			return ItemResult.build(200, "商品上架成功");
		}else if(count>0&&type==2){
			return ItemResult.build(200, "商品删除成功");
		}
		return ItemResult.build(500, "操作有误");
	}
	@Override
	public List<TbItem> findItemBysearch(String title, String sellPoint) {
		List<TbItem> tbItems=tbItemMapper.findItemBysearch(title,sellPoint);
		return tbItems;
	}
	
	
	
	
}
