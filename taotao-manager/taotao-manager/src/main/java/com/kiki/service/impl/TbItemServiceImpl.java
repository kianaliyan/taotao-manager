package com.kiki.service.impl;

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
	@Override
	public void deleteItems(Integer[] ids) {
		tbItemMapper.deleteItems(ids);
		
		
	}
	@Override
	public void deleteItem(String id) {
		tbItemMapper.deleteItem(id);
		
	}
	
	
}
