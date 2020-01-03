package com.kiki.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kiki.bean.TbItem;
import com.kiki.domain.PageUtils;
import com.kiki.service.TbItemService;

@Controller
@RequestMapping("/item")
public class TbItemController {
	@Autowired
	private TbItemService tbItemService;
	/**
	 * 根据id查询商品信息
	 * @param itemId
	 * @return
	 */
	@RequestMapping("/{itemId}")
	@ResponseBody
	public TbItem findTbItemById(@PathVariable Long itemId) {
		System.out.println(itemId);
		TbItem tbItem=tbItemService.findTbItemById(itemId);
		return tbItem;
		
	}
	/**
	 * 查询所有商品
	 * @return
	 */
	@RequestMapping("/showItem")
	@ResponseBody
	public PageUtils showItem(Integer page,Integer limit){
		List<TbItem> tbItems =tbItemService.findTbItems(page,limit);
		PageUtils pageUtils=new PageUtils();
		page=(page-1)*limit;
		int count=tbItemService.getCount();
		pageUtils.setCode(0);
		pageUtils.setMsg("");
		pageUtils.setCount(count);
		pageUtils.setData(tbItems);
		return pageUtils;
	}
}
