package com.kiki.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kiki.bean.TbItem;
import com.kiki.mapper.TbItemMapper;
import com.kiki.service.TbItemService;
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
	public List<TbItem> findTbItems() {
		List<TbItem> tbItems= tbItemMapper.findTbItems();
		for (TbItem tbItem : tbItems) {
			
		}
		return tbItems;
	}

}
