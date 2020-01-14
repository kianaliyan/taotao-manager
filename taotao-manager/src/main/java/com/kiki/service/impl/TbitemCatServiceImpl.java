package com.kiki.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.kiki.bean.TbItemCat;
import com.kiki.domain.EchartsResult;
import com.kiki.domain.ZTreeNodeResult;
import com.kiki.mapper.TbItemCatMapper;
import com.kiki.mapper.TbItemMapper;
import com.kiki.service.TbItemCatService;

public class TbitemCatServiceImpl implements TbItemCatService {
	private String name;
	@Autowired
	private TbItemCatMapper tbItemCatMapper;
	@Autowired
	private TbItemMapper tbItemMapper;
	
	@Override
	public List<ZTreeNodeResult> findTbItemCatById(Long parentId) {
		List<TbItemCat> tbItemCats = tbItemCatMapper.findTbItemCatById(parentId);
		List<ZTreeNodeResult> result = new ArrayList<ZTreeNodeResult>();
		for (TbItemCat tbItemCat : tbItemCats) {
			ZTreeNodeResult node = new ZTreeNodeResult();
			node.setId(tbItemCat.getId());
			node.setName(tbItemCat.getName());
			node.setIsParent(tbItemCat.getIsParent());
			result.add(node);
		}
		
		
		return result;
	}

	@Override
	public List<EchartsResult> statisticsItem() {
		// TODO Auto-generated method stub
		return null;
	}

}
